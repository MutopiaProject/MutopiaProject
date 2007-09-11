%% -*- Mode: Scheme -*-
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Utility markups
%%%
%%% Guile does not deal with accented letter
#(use-modules (ice-9 regex))
#(define-public (string-upper-case str)
  (define (replace-char str from to)
   (regexp-substitute/global #f from str 'pre to 'post))
  (define (replace-chars str replacements)
   (if (null? replacements)
       str
       (replace-chars (replace-char str (caar replacements) (cdar replacements))
                      (cdr replacements))))
  (string-upcase (replace-chars str '(("é" . "É")
                                      ("è" . "È")
                                      ("ê" . "Ê")
                                      ("ë" . "Ë")
                                      ("ê" . "Ê")
                                      ("à" . "À")
                                      ("î" . "Î")
                                      ("ï" . "Ï")
                                      ("ô" . "Ô")
                                      ("ù" . "Ù")
                                      ("ü" . "Ü")
                                      ("ç" . "Ç")
                                      ("œ" . "Œ")))))


%%;; Poor man's caps
#(define-markup-command (smallCaps layout props text) (markup?)
  "Turn @code{text}, which should be a string, to small caps.
@example
\\markup \\small-caps \"Text between double quotes\"
@end example"
  (define (%make-small-caps-markup chars)
    (cond ((null? chars)
	   (markup))
	  ((char-whitespace? (car chars))
	   (markup #:fontsize -2 #:simple (string-upper-case (list->string (cdr chars)))))
	  (else
	   (markup #:hspace -1
		   #:fontsize -2 #:simple (string-upper-case (list->string chars))))))
  (define (%make-not-small-caps-markup chars)
    (cond ((null? chars)
	   (markup))
	  ((char-whitespace? (car chars))
	   (markup #:simple (list->string (cdr chars))))
	  (else
	   (markup #:hspace -1
		   #:simple (list->string chars)))))
  (define (%small-caps-aux done-markups current-chars rest-chars small? after-space?)
    (cond ((null? rest-chars)
	   ;; the end of the string: build the markup
	   (make-line-markup (reverse! (cons ((if small?
						  %make-small-caps-markup
						  %make-not-small-caps-markup)
					      (reverse! current-chars))
					     done-markups))))
	  ((char-whitespace? (car rest-chars))
	   ;; a space char.
	   (%small-caps-aux done-markups current-chars (cdr rest-chars) small? #t))
	  ((or (and small? (not (char-upper-case? (car rest-chars))))
	       (and (not small?) (char-upper-case? (car rest-chars))))
	   ;; same case
	   ;; add the char to the current char list
	   (%small-caps-aux done-markups
			   (cons (car rest-chars)
				 (if after-space? 
				     (cons #\space current-chars)
				     current-chars))
			   (cdr rest-chars) 
			   small?
			   #f))
	  (else
	   ;; case change
	   ;; make a markup with current chars, and start a new list with new char
	   (%small-caps-aux (cons ((if small?
				      %make-small-caps-markup
				      %make-not-small-caps-markup)
				  (reverse! current-chars))
				 done-markups)
			   (if after-space?
			       (list (car rest-chars) #\space)
			       (list (car rest-chars)))
			   (cdr rest-chars)
			   (not small?)
			   #f))))
  (interpret-markup layout props (%small-caps-aux (list) 
						 (list) 
						 (cons #\space (string->list text))
						 #f
						 #f)))

#(define-markup-command (width layout props width arg) (number? markup?)
  (interpret-markup layout props
   (markup #:pad-to-box (cons 0 width) (cons 0 0) arg)))

#(define-markup-command (line-width-ratio layout props width-ratio arg) (number? markup?)
  (interpret-markup layout props
   (markup #:override (cons 'line-width (* width-ratio (chain-assoc-get 'line-width props)))
           arg)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Instrument names
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define-markup-command (hcenter-pad layout props width arg)
  (number? markup?)
  (let* ((arg-stencil (interpret-markup layout props arg))
         (w (interval-length (ly:stencil-extent arg-stencil X)))
         (pad-stencil (ly:make-stencil "" 
                       (cons 0 (if (> w width)
                                0
                                (/ (- width w) 2.0)))
                       '(-0.1 . 0.1))))
   (stack-stencil-line 0 
    (list pad-stencil arg-stencil pad-stencil))))

#(define-markup-command (right-pad layout props pad arg)
  (number? markup?)
  (interpret-markup layout props (markup arg #:hspace pad)))

%% for more-than-one-line instrument names
#(define-markup-command (instruments layout props texts) (markup-list?)
  (interpret-markup layout props
   (make-column-markup
    (map (lambda (m) (markup #:hcenter-pad 15 #:huge m))
     texts))))

#(define-markup-command (instrument-name layout props text) (markup?)
  (interpret-markup layout props
   (markup #:right-pad 1 #:instruments (text))))

#(define-markup-command (character-name layout props text) (markup?)
  (let ((char-markup (if (string? text)
                         (markup #:smallCaps text)
                         text)))
   (interpret-markup layout props
    (markup  #:right-pad 1 #:instruments (char-markup)))))

instrumentName =
#(define-music-function (parser location name) (markup?)
  #{ 
  \set Staff . instrumentName = #(markup #:instrument-name $name)
  #})

characterName =
#(define-music-function (parser location name) (markup?)
  #{ 
  \set Staff . instrumentName = #(markup #:character-name $name)
  #})

characterMark =
#(define-music-function (parser location name) (string?)
  #{ 
  s1*0 ^\markup { \null \translate #'(-4 . 2) \huge \smallCaps $name }
  #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Markup commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Scene description in titles
#(define-markup-command (medium paper props arg) (markup?)
  "Switch to medium font-series"
  (interpret-markup paper (prepend-alist-chain 'font-series 'medium props) arg))

%% for book and score titling
#(define-markup-command (when-property layout props symbol markp) (symbol? markup?)
  (if (chain-assoc-get symbol props)
      (interpret-markup layout props markp)
      (ly:make-stencil '()  '(1 . -1) '(1 . -1))))

#(define-markup-command (custom-copyright layout props) ()
  (let* ((maintainer (chain-assoc-get 'header:maintainer props))
         (this-year (+ 1900 (tm:year (gmtime (current-time)))))
         (year (string->number (or (chain-assoc-get 'header:copyrightYear props)
                                   (number->string this-year)))))
    (interpret-markup layout props
     (markup "Copyright ©" 
             (if (= year this-year)
                 (format #f "~a" this-year)
                 (format #f "~a-~a" year this-year))
             maintainer))))

%% vertical space skip
#(define-markup-command (vspace layout props amount) (number?)
  "This produces a invisible object taking vertical space."
  (let ((amount (* amount 3.0)))
    (if (> amount 0)
        (ly:make-stencil "" (cons -1 1) (cons 0 amount))
        (ly:make-stencil "" (cons -1 1) (cons amount amount)))))

%% Centered, word wrapped lines
#(define-markup-list-command (wordwrap-center-lines layout props args)
  (markup-list?)
  (map (lambda (stencil)
        (interpret-markup layout props (markup #:fill-line (#:stencil stencil))))
   (interpret-markup-list layout props (make-wordwrap-lines-markup-list args))))

#(define-markup-command (wordwrap-center layout props args) (markup-list?)
  (interpret-markup layout props
   (make-column-markup
    (make-wordwrap-center-lines-markup-list args))))

%%%
%%% Segno, da capo
%%%

markUpBegin = {
  \once \override Score . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #UP
  \once \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score . RehearsalMark #'padding = #3
}

markDownBegin = {
  \once \override Score . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #DOWN
  \once \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score . RehearsalMark #'padding = #3
}

markDownEnd = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #DOWN
  \once \override Score . RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score . RehearsalMark #'padding = #3
}


segnoMark = { 
  \once \override Score . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #1
  \once \override Score . RehearsalMark #'self-alignment-X = #0
  \mark \markup \musicglyph #"scripts.segno"
}

fineMark = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #-1
  \once \override Score . RehearsalMark #'self-alignment-X = #1
  \once \override Score . RehearsalMark #'padding = #2
  \mark \markup \right-align \italic Fin.
}

dalSegnoMark = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #-1
  \once \override Score . RehearsalMark #'self-alignment-X = #1
  \once \override Score . RehearsalMark #'padding = #2
  \mark \markup \right-align \italic "Dal Segno."
}

dacapoMark = {
  \once \override Score . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score . RehearsalMark #'direction = #-1
  \once \override Score . RehearsalMark #'self-alignment-X = #1
  \once \override Score . RehearsalMark #'padding = #2
  \mark \markup \right-align \italic "Da Capo."
}
