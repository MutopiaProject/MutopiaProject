%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Déclaration des fonctions diverses, polyphonie,                     *
  * majuscules accentuées , ...                                         *
  *                                                                     *
  * à insérer en début des fichiers de parties ou de partitions globales*
  * pour les parties séparées                                           *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Fonction poly : assure une polyphonie de type \voiceOne \new Voice \voiceTwo \oneVoice
poly=
#(define-music-function (parser location voixun voixdeux)
   (ly:music? ly:music?)
   #{
     <<{
       \voiceOne
       $voixun
      }
       \new Voice
       {
         \voiceTwo
         $voixdeux
      }
     >>
     \oneVoice
   #}
   )

% Idem en inversant voix 1 et 2

polyInv=
#(define-music-function (parser location voixun voixdeux)
   (ly:music? ly:music?)
   #{
     <<{
       \voiceTwo
       $voixun
      }
       \new Voice
       {
         \voiceOne
         $voixdeux
      }
     >>
     \oneVoice
   #}
   )

% idem en laissant libre l'orientation des hampes et liaisons -
%	utile pour introduire une ligne indépendante de nuances

polyNeutral=
#(define-music-function (parser location voixun voixdeux)
   (ly:music? ly:music?)
   #{
     <<{
       $voixun
      }
       \new Voice
       {
         $voixdeux
      }
     >>
   #}
   )

% Fonction définissant les évènements retenus dans les citations

cueEventType =
#(define-music-function
     (parser location)
     ()
   #{
       \set Score.quotedCueEventTypes = #'(note-event rest-event tie-event tuplet-span-event beam-event slur-event
             script-event trill-span-event phrasing-slur-event arpeggio-event tremolo-event tremolo-span-event
             dynamic-event dynamic-spanner-event crescendo-event decrescendo-event laissez-vibrer-event)

   #}
   )


% Mettre un soufflet entre parenthèses (ou tout autre signe)

hairpinBetweenText =
#(define-music-function (parser location leftText rightText) (markup? markup?)
   #{
     \once \override Hairpin #'stencil =
     #(lambda (grob)
        (let* ((orig (ly:grob-original grob))
               (siblings (if (ly:grob? orig)
                             (ly:spanner-broken-into orig)
                             '()))
               (hairpin-stencil (ly:stencil-aligned-to
                                 (ly:hairpin::print grob) Y CENTER))
               (left-addition (ly:stencil-aligned-to
                               (grob-interpret-markup grob leftText) Y CENTER))
               (right-addition (ly:stencil-aligned-to
                                (grob-interpret-markup grob rightText) Y CENTER)))
          (if (or (null? siblings)
                  (eq? grob (car siblings)))
              (set! hairpin-stencil
                    (ly:stencil-combine-at-edge
                     left-addition
                     X RIGHT
                     hairpin-stencil
                     0)))
          (if (or (null? siblings)
                  (eq? grob (car (reverse siblings))))
              (set! hairpin-stencil
                    (ly:stencil-combine-at-edge
                     hairpin-stencil
                     X RIGHT
                     right-addition
                     0.6)))
          hairpin-stencil))
   #})

% utilisation :
% parenthesizedHairpin = \hairpinBetweenText \markup "(" \markup ")"
% \parenthesizedHairpin
% c16\< d e f g a b c d e f g a\!
% ne vaut que pour le soufflet suivant la note concernée

%indications de volume entre soufflet
parenthesizedHairpin = \hairpinBetweenText \markup "(" \markup ")"
% idem entre crochets
bracketedHairpin = \hairpinBetweenText \markup "[" \markup "]"

% Augmenter la longueur des \laisserVibrer


#(define factor 2)

#(define (enlarged-extent-laissez-vibrer::print grob)
   (let* ((stil (laissez-vibrer::print grob))
          (stil-ext (ly:stencil-extent stil X))
          (stil-length (interval-length stil-ext))
          (new-stil-length (* stil-length factor))
          (scale-factor (/ new-stil-length stil-length))
          (new-stil (ly:stencil-scale stil scale-factor 1))
          (new-stil-ext (ly:stencil-extent new-stil X))
          (x-corr (- (car stil-ext) (car new-stil-ext))))
   (ly:stencil-translate-axis
      new-stil
      x-corr
      X)))

#(assoc-set! (assoc-ref all-grob-descriptions 'LaissezVibrerTie)
'stencil enlarged-extent-laissez-vibrer::print)


%%% Guile does not deal with accented letters

%%% Use as \markup \smallCaps {Théâtre}

#(use-modules (ice-9 regex))
%%;; actually defined below, in a closure
#(define-public string-upper-case #f)
#(define accented-char-upper-case? #f)
#(define accented-char-lower-case? #f)

%%;; an accented character is seen as two characters by guile
#(let ((lower-case-accented-string "éèêëáàâäíìîïóòôöúùûüçœæ")
       (upper-case-accented-string "ÉÈÊËÁÀÂÄÍÌÎÏÓÒÔÖÚÙÛÜÇŒÆ"))
   (define (group-by-2 chars result)
     (if (or (null? chars) (null? (cdr chars)))
         (reverse! result)
         (group-by-2 (cddr chars)
           (cons (string (car chars) (cadr chars))
             result))))
   (let ((lower-case-accented-chars
          (group-by-2 (string->list lower-case-accented-string) (list)))
         (upper-case-accented-chars
          (group-by-2 (string->list upper-case-accented-string) (list))))
     (set! string-upper-case
           (lambda (str)
             (define (replace-chars str froms tos)
               (if (null? froms)
                   str
                   (replace-chars (regexp-substitute/global #f (car froms) str
                                    'pre (car tos) 'post)
                     (cdr froms)
                     (cdr tos))))
             (string-upcase (replace-chars str
                              lower-case-accented-chars
                              upper-case-accented-chars))))
     (set! accented-char-upper-case?
           (lambda (char1 char2)
             (member (string char1 char2) upper-case-accented-chars string=?)))
     (set! accented-char-lower-case?
           (lambda (char1 char2)
             (member (string char1 char2) lower-case-accented-chars string=?)))))

#(define-markup-command (smallCaps layout props text) (markup?)
   "Turn @code{text}, which should be a string, to small caps.
         @example
\\markup \\small-caps \"Text between double quotes\"
@end example"
(define (string-list->markup strings lower)
  (let ((final-string (string-upper-case
                       (apply string-append (reverse strings)))))
    (if lower
        (markup #:fontsize -2 final-string)
        final-string)))
(define (make-small-caps rest-chars currents current-is-lower prev-result)
  (if (null? rest-chars)
      (make-concat-markup (reverse! (cons (string-list->markup
                                           currents current-is-lower)
                                      prev-result)))
      (let* ((ch1 (car rest-chars))
             (ch2 (and (not (null? (cdr rest-chars))) (cadr rest-chars)))
             (this-char-string (string ch1))
             (is-lower (char-lower-case? ch1))
             (next-rest-chars (cdr rest-chars)))
        (cond ((and ch2 (accented-char-lower-case? ch1 ch2))
               (set! this-char-string (string ch1 ch2))
               (set! is-lower #t)
               (set! next-rest-chars (cddr rest-chars)))
          ((and ch2 (accented-char-upper-case? ch1 ch2))
           (set! this-char-string (string ch1 ch2))
           (set! is-lower #f)
           (set! next-rest-chars (cddr rest-chars))))
        (if (or (and current-is-lower is-lower)
                (and (not current-is-lower) (not is-lower)))
            (make-small-caps next-rest-chars
              (cons this-char-string currents)
              is-lower
              prev-result)
            (make-small-caps next-rest-chars
              (list this-char-string)
              is-lower
              (if (null? currents)
                  prev-result
                  (cons (string-list->markup
                         currents current-is-lower)
                    prev-result)))))))
(interpret-markup layout props
  (if (string? text)
      (make-small-caps (string->list text) (list) #f (list))
      text)))


% Append markup in the text property to the grob
#(define (append-markup grob old-stencil)
   (ly:stencil-combine-at-edge
    old-stencil X RIGHT (ly:text-interface::print grob)))

trebleToBass = {
  \clef bass
  % Fake staff clef appearance
  \once \override Staff.Clef #'glyph-name = #"clefs.G"
  \once \override Staff.Clef #'Y-offset = #-1
  % Append change clef to the time signature
  \once \override Staff.TimeSignature #'text = \markup {
    \hspace #1.2
    \raise #1
    \musicglyph #"clefs.F_change"
 }
  \once \override Staff.TimeSignature #'stencil = #(lambda (grob)
                                                     (append-markup grob (ly:time-signature::print grob)))
}

bassToTreble = {
  \clef treble
  % Fake staff clef appearance
  \once \override Staff.Clef #'glyph-name = #"clefs.F"
  \once \override Staff.Clef #'Y-offset = #1
  % Append change clef to the time signature
  \once \override Staff.TimeSignature #'text = \markup {
    \hspace #1.2
    \lower #1
    \musicglyph #"clefs.G_change"
 }
  \once \override Staff.TimeSignature #'stencil = #(lambda (grob)
                                                     (append-markup grob (ly:time-signature::print grob)))
}

% Macro \columns pour écrire un texte multi-colonnes
% Usage : remplacer \fill-line par \columns

#(define-markup-command (columns layout props args) (markup-list?)
   (let ((line-width (/ (chain-assoc-get 'line-width props
                         (ly:output-def-lookup layout 'line-width))
                        (max (length args) 1))))
     (interpret-markup layout props
       (make-line-markup (map (lambda (line)
                                (markup #:pad-to-box `(20 . ,line-width) '(0 . 0)
                                  #:override `(line-width . ,line-width)
                                  line))
                               args)))))


% Fonction elseTag à utiliser avec
%\tag #' ...
%\elesTag ...


% improbable name ...
elseTagName = #(gensym)

%% elseTag defines two symbols for property 'tags of the music
elseTag =
#(define-music-function (parser location tag arg)(symbol? ly:music?)
   (set! (ly:music-property arg 'tags)
         (cons tag (cons elseTagName (ly:music-property arg 'tags))))
   arg)

%% this redefinition of keepWithTag verifies that the music has NOT at the same
%% time the symbol "tag" and "elseTagName" (above) in its 'tags property
keepWithTag =
#(define-music-function (parser location tag music) (symbol? ly:music?)
   (music-filter
    (lambda (m)
      (let* ((tags (ly:music-property m 'tags))
             (resA (memq tag tags))
             (resB (memq elseTagName tags)))
        (or (eq? tags '())
            (and (not (equal? resA #f))
                 (equal? resB #f))
            (and (not (equal? resB #f))
                 (equal? resA #f)))))
    music))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Fonction \include-once - INUTILISÉ
% Assure qu'un fichier inclus ne sera pas inclus une seconde fois
% ce qui évite les références circulaires
% Réalisation : Nicolas Sceaux

% Ce fichier incluant la fonction ne peut évidemment PAS être appelé par \include-once,
% de même que les fichies précédant ce fichier

#(define-public (file-already-included? filename) #f)
#(define-public (register-included-filename filename) #f)

#(let ((included-filenames (make-hash-table 31)))
   (set! file-already-included?
         (lambda (filename)
           (not (not (hashq-get-handle included-filenames (string-hash filename))))))
   (set! register-included-filename
         (lambda (filename)
           (hashq-set! included-filenames (string-hash filename) #t))))

include-once =
#(define-music-function (parser location filename) (string?)
   "Include `filename' if it has not been included before by \\include-once."
   (if (not (file-already-included? filename))
       (begin
         (ly:parser-include-string
          parser
          (format #f "\\include \"~a\"" filename))
         (register-included-filename filename)))
   (make-music 'Music 'void #t)) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Fonction forcePercent - permet la numérotation des répétitions à partir de 1

forcePercent =
#(define-music-function (parser location mus) (ly:music?)
(let ((percent (make-music 'PercentEvent
'repeat-count 1
'length (ly:music-length mus))))

(make-event-chord (list percent))))

% Ne fonctionne pas correctement dans cette configuration

