
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Tempo markups and rehearsal marks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define *mark-top-padding* (make-parameter 2))

%% s^\markup \tempo Allegro.
#(define-markup-command (tempo paper props text) (markup?)
  (interpret-markup paper (prepend-alist-chain 'font-size 1 props)
   (markup #:italic text)))

%% \tempoMark \markup Allegro.
tempoMark = #(define-music-function (parser location label) (markup?)
  #{
  \once \override Staff . RehearsalMark #'self-alignment-X = #-1
  \once \override Staff . RehearsalMark #'no-spacing-rods = ##t
  \once \override Staff . RehearsalMark #'padding = #(*mark-top-padding*)
  \mark \markup { \null \translate #(cons -5 0) \tempo $label } #})

%% \scoreTempo \markup Allegro. 
%% <==> \tag #'up \tempoMark \markup Allegro.
scoreTempo = #(define-music-function (parser location label) (markup?)
               #{ \tag #'(up partUp partBoth) \tempoMark \markup $label #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Da Capo markups and rehearsal marks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dacapoOverrides = {
    \once \override Staff . RehearsalMark #'break-visibility = #begin-of-line-invisible
    \once \override Staff . RehearsalMark #'direction = #-1
    \once \override Staff . RehearsalMark #'no-spacing-rods = ##t
    \once \override Staff . RehearsalMark #'self-alignment-X = #1
    \once \override Staff . RehearsalMark #'padding = #2
}

%% \markup \dacapo "Da Capo."
#(define-markup-command (dacapo paper props text) (markup?)
  (interpret-markup paper props (markup #:italic text)))

#(define (make-dacapo-mark label)
  #{ \dacapoOverrides
  \mark \markup { \dacapo $label \translate #$(cons -1 2) \null } #})

fineMark = #(define-music-function (parser location) ()
             (make-dacapo-mark "(Fine.)"))

daCapoMark = #(define-music-function (parser location) ()
               (make-dacapo-mark "Da Capo."))

daCapoAndTextMark = #(define-music-function (parser location text) (markup?)
                      #{ 
                      \dacapoOverrides
                      \mark \markup \column { \right-align{ \dacapo "Da Capo." \translate #(cons -1 2) \null }
                                              \right-align \scenici $text }
                      #})

endTextMark = #(define-music-function (parser location text) (markup?)
                #{ 
                \dacapoOverrides
                \mark \markup \column { \right-align \scenici $text }
                #})

segnoUpMark = #(define-music-function (parser location) ()
#{ 
  \once \override Staff . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Staff . RehearsalMark #'direction = #1
  \once \override Staff . RehearsalMark #'self-alignment-X = #0
  \once \override Staff . RehearsalMark #'padding = #(*mark-top-padding*)
  \mark \markup \musicglyph #"scripts.segno"
#})

segnoDownMark = { 
  \once \override Staff . RehearsalMark #'break-visibility = #end-of-line-invisible
  \once \override Staff . RehearsalMark #'direction = #-1
  \once \override Staff . RehearsalMark #'self-alignment-X = #0
  \once \override Staff . RehearsalMark #'padding = #2
  \mark \markup \musicglyph #"scripts.segno"
}

segnoUpEndMark = #(define-music-function (parser location) ()
#{ 
  \once \override Staff . RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Staff . RehearsalMark #'direction = #1
  \once \override Staff . RehearsalMark #'self-alignment-X = #1
  \once \override Staff . RehearsalMark #'padding = #(*mark-top-padding*)
  \mark \markup \musicglyph #"scripts.segno"
#})

dalSegnoMark = #(define-music-function (parser location) ()
                 (make-dacapo-mark "Dal Segno."))

dalSegnoAndTextMark = #(define-music-function (parser location text) (markup?)
                      #{ 
                      \dacapoOverrides
                      \mark \markup \column { \right-align{ \dacapo "Dal Segno." \translate #(cons -1 2) \null }
                                              \right-align \scenici $text }
                      #})

customDaCapoMark = #(define-music-function (parser location text) (markup?)
                     (make-dacapo-mark text))

%%
%% Tagged Da Capo marks
%%
scoreFine = { \tag #'(down partDown partBoth) \fineMark }
scoreDaCapo = { \tag #'(down partDown partBoth) \daCapoMark }
scoreDaCapoAndText = #(define-music-function (parser location text) (markup?)
                      #{
                       \tag #'down \daCapoAndTextMark \markup $text 
                       \tag #'(partDown partBoth) \daCapoMark
                       #})
scoreCustomDaCapo = #(define-music-function (parser location text) (markup?)
                      #{
                      \tag #'down \customDaCapoMark \markup $text 
                      \tag #'(partDown partBoth) \daCapoMark
                      #})
scoreSegno = #(define-music-function (parser location) ()
#{
  \tag #'(up partUp partBoth) \segnoUpMark
  \tag #'(down partDown) \segnoDownMark
#})
scoreDalSegno = {
  \tag #'(up partUp) \segnoUpEndMark
  \tag #'(down partDown partBoth) \dalSegnoMark
}
scoreDalSegnoAndText = #(define-music-function (parser location text) (markup?)
                         #{
                         \tag #'(up partUp) \segnoUpEndMark
                         \tag #'down \dalSegnoAndTextMark \markup $text
                         \tag #'(partDown partBoth) \dalSegnoMark
                         #})
scoreEndText = #(define-music-function (parser location text) (markup?)
                 #{ \tag #'down \endTextMark \markup $text #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Various markups and titling commands
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
    (map (lambda (m) (markup #:hcenter-pad 18 #:huge m))
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

%% Character names in recitatives
#(define-markup-command (characteri paper props name) (markup?)
  (interpret-markup paper props (markup #:huge #:smallCaps name)))

#(define-markup-command (character paper props name) (markup?)
  (interpret-markup paper props (markup " " #:translate  (cons -4 2) #:characteri name)))

%% Scenic indications in recitatives
#(define-markup-command (scenici paper props text) (markup?)
  (interpret-markup paper props (markup #:override '(baseline-skip . 0)
                                        #:small #:italic text)))

#(define-markup-command (scenic paper props text) (markup?)
  (interpret-markup paper props (markup " " #:translate  (cons 0 1) #:scenici text)))

#(define-markup-command (character-scenic paper props char text) (markup? markup?)
  (interpret-markup paper props (markup " " #:translate (cons -4 2) #:line (#:characteri char #:scenici text))))

%% Scene description in titles
#(define-markup-command (medium paper props arg) (markup?)
  "Switch to bold font-series"
  (interpret-markup paper (prepend-alist-chain 'font-series 'medium props) arg))

%% for book and score titling
#(define-markup-command (when-property layout props symbol markp) (symbol? markup?)
  (if (chain-assoc-get symbol props)
      (interpret-markup layout props markp)
      (ly:make-stencil '()  '(1 . -1) '(1 . -1))))

%% vertical space skip
#(define-markup-command (vspace layout props amount) (number?)
  "This produces a invisible object taking vertical space."
  (let ((amount (* amount 3.0)))
    (if (> amount 0)
        (ly:make-stencil "" (cons -1 1) (cons 0 amount))
        (ly:make-stencil "" (cons -1 1) (cons amount amount)))))