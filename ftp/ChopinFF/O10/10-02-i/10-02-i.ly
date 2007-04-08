% Zum Ausgleichen des Zeilenabstandes habe ich an zwei Stellen (auf Seite 3
% zwischen der 3. und 4. sowie ebendort zwischen der 4. und 5. Zeile)
% unsichtbare Noten gesetzt, um die Zeilen ein wenig auseinanderzuschieben. Es
% wären dort sonst die Fingersätze zu eng aneinandergeraten.
%
% Diese Stellen sind leicht aufzufinden, da sie jeweils separate Zeilen
% benutzen, die am Ende mit "%% Stemmheide" bzw. mit "%% Stemmheide: Note"
% gekennzeichnet sind.

% At two places (on page 3 between the 3. and 4. stave and on the same page
% between the 4. and 5. stave) I've put some unvisible notes to enlarge the
% distances between these staves, otherwise the fingerings between these staves
% would have been to close to one onother.
%
% These places are easily to find, because they are in separate lines with
% "%% Stemmheide" and "%% Stemmheide: Note" at the end.

\version "2.4.1"

\header {
  filename      =       "10-02-i.ly"
  title         =       "Etüde a-moll"
  composer      =       "F. F. Chopin"
  opus          =       "Opus 10 Nr. 2"
  enteredby     =       "Roland Goretzki"
  arranger      =       " "
  texttranslator       =       ""

 mutopiatitle = "Etüde a-moll"
 mutopiacomposer = "ChopinFF"
 mutopiaopus = "O 10"
 mutopiainstrument = "Piano"
 date = "1828-1831"
 source = "Peters, Herrmann Scholtz, 1900b"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Roland Goretzki"
 maintainerEmail = "roland@roland-goretzki.de"
 lastupdated = "2004/November/27"

 footer = "Mutopia-2004/11/27-508"
 tagline = "\\raisebox{-2mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by Roland Goretzki and proofread by Hildegard Böhme.} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

\include "deutsch.ly"

global = {
  \key a \minor
  \time 4/4
  s1*49
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %

oben = \change Staff = up
unten = \change Staff = down

OKTAVA = \markup { \bold\fontsize #3.5 \italic "8" }

%%%   Zum Einfügen eines Zusatzabstandes:
LargeExtraSpace = \once\override Score.SeparationItem #'padding = #3
ExtraSpace = \once\override Score.SeparationItem #'padding = #1
HalbExtraSpace = \once\override Score.SeparationItem #'padding = #.5
TieExtraSpace = \once\override Score.SeparationItem #'padding = #.8

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       Ab hier die neuen Verschiebe-Definitionen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Text verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(use-modules (ice-9 optargs))
#(define*-public (mus:make-context context element #:key id (operations '()))
  "Base function for building ContextSpeccedMusic objects."
  (apply make-music (append (list 'ContextSpeccedMusic
                                  'property-operations operations
                                  'context-type context
                                  'element element)
                            (if id (list 'context-id id) '()))))
#(define*-public (mus:override context layout property val #:optional once)
  "Layout property override.
 \once\override Voice.Fingering #'padding = #3
 <=>
 (mus:override 'Voice 'Fingering 'padding 3 #t)"
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Text dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'TextScript 'extra-offset (cons dx dy) once)))
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Artikel verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(use-modules (ice-9 optargs))
#(define*-public (mus:make-context context element #:key id (operations '()))
  "Base function for building ContextSpeccedMusic objects."
  (apply make-music (append (list 'ContextSpeccedMusic
                                  'property-operations operations
                                  'context-type context
                                  'element element)
                            (if id (list 'context-id id) '()))))
#(define*-public (mus:override context layout property val #:optional once)
  "Layout property override.
 \once\override Voice.Fingering #'padding = #3
 <=>
 (mus:override 'Voice 'Fingering 'padding 3 #t)"
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Artikel dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Script 'extra-offset (cons dx dy) once)))
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Keil verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(use-modules (ice-9 optargs))
#(define*-public (mus:make-context context element #:key id (operations '()))
  "Base function for building ContextSpeccedMusic objects."
  (apply make-music (append (list 'ContextSpeccedMusic
                                  'property-operations operations
                                  'context-type context
                                  'element element)
                            (if id (list 'context-id id) '()))))
#(define*-public (mus:override context layout property val #:optional once)
  "Layout property override.
 \once\override Voice.Fingering #'padding = #3
 <=>
 (mus:override 'Voice 'Fingering 'padding 3 #t)"
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Keil dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Hairpin 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Bogen verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(use-modules (ice-9 optargs))
#(define*-public (mus:make-context context element #:key id (operations '()))
  "Base function for building ContextSpeccedMusic objects."
  (apply make-music (append (list 'ContextSpeccedMusic
                                  'property-operations operations
                                  'context-type context
                                  'element element)
                            (if id (list 'context-id id) '()))))
#(define*-public (mus:override context layout property val #:optional once)
  "Layout property override.
 \once\override Voice.Fingering #'padding = #3
 <=>
 (mus:override 'Voice 'Fingering 'padding 3 #t)"
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Bogen dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Finger verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(use-modules (ice-9 optargs))
#(define*-public (mus:make-context context element #:key id (operations '()))
  "Base function for building ContextSpeccedMusic objects."
  (apply make-music (append (list 'ContextSpeccedMusic
                                  'property-operations operations
                                  'context-type context
                                  'element element)
                            (if id (list 'context-id id) '()))))
#(define*-public (mus:override context layout property val #:optional once)
  "Layout property override.
 \once\override Voice.Fingering #'padding = #3
 <=>
 (mus:override 'Voice 'Fingering 'padding 3 #t)"
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Finger dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Fingering 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Dynamik verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(use-modules (ice-9 optargs))
#(define*-public (mus:make-context context element #:key id (operations '()))
  "Base function for building ContextSpeccedMusic objects."
  (apply make-music (append (list 'ContextSpeccedMusic
                                  'property-operations operations
                                  'context-type context
                                  'element element)
                            (if id (list 'context-id id) '()))))
#(define*-public (mus:override context layout property val #:optional once)
  "Layout property override.
 \once\override Voice.Fingering #'padding = #3
 <=>
 (mus:override 'Voice 'Fingering 'padding 3 #t)"
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Dynamik dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'DynamicText 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Balken verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(use-modules (ice-9 optargs))
#(define*-public (mus:make-context context element #:key id (operations '()))
  "Base function for building ContextSpeccedMusic objects."
  (apply make-music (append (list 'ContextSpeccedMusic
                                  'property-operations operations
                                  'context-type context
                                  'element element)
                            (if id (list 'context-id id) '()))))
#(define*-public (mus:override context layout property val #:optional once)
  "Layout property override.
 \once\override Voice.Fingering #'padding = #3
 <=>
 (mus:override 'Voice 'Fingering 'padding 3 #t)"
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Balken dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Beam 'positions (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Für unterschiedliche Systemhöhe  %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define ((futz-alignment-callback count-dists) grob axis)
  "For all COUNT/DISTANCE pairs in count-dists, check if we're the
  system number COUNT, and if yes, set fixed distance to DISTANCE;
  then call the original callback.  "
  (let*
    ((a (ly:grob-parent grob axis))
     (o (ly:grob-original a))
     (bs (if (ly:grob? o)
            (ly:spanner-broken-into o)
            #f))
    )
    (for-each
      (lambda (count-dist)
        (let ((count (car count-dist))
              (distance (cdr count-dist)))
          (if (and (list? bs)
               (< count (length bs))
               (equal? (list-ref bs count) a)
             )
             (ly:grob-set-property! a 'forced-distance distance))))
      count-dists)
    (Align_interface::fixed_distance_alignment_callback grob axis))
)

%                                                                       %
%%%%%%%%%   Ende des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rechts = \relative c'{
  #(set-global-staff-size 19)
  \override GrandStaff.InstrumentName #'extra-offset = #'(-1.7 . -.6)
  \override GrandStaff.InstrumentName #'font-size = #'3
  \set GrandStaff.instrument = \markup { \number { 2 \hspace #-1 . } }
  \context Voice = "rechts"
  \once\override Score.RehearsalMark #'extra-offset = #'(.8 . 5)
  \override Score.RehearsalMark #'self-alignment-X = #-1
    \mark \markup { \bold\fontsize #3 { Allegro. \hspace #-.8
    \fontsize #1.4 \raise #.1 { ( \tiny { \hspace #-1.2 \raise #.4 \note #"4" #.8 \raise #.1 =
    } \number\raise #-.1 \fontsize #-3.2 144. \hspace #-1.2 ) } } }
  %\override Voice.Stem #'beamed-extreme-minimum-free-lengths = #'(1.2 1.2 1.2)
  \override Score.DynamicText #'font-size = #'0
  \override Score.TextScript #'font-series = #'bold
  \override Score.TextScript #'font-size = #'1
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \stemUp
                        #(Text 0 .8 #t)% VERSCHIEBUNG
a'16-4 %FINGER
                        ^\markup { \italic { sempre legato } }% MARKUP
ais-3 h-4 c-5 cis-3 d-4 dis-3 e-4 f-5 fis-3 g-4 gis-3 a-4 ais-3 h-4 c!-5 %FINGER
    % __________________________________________________________________________________________ Takt  1 __ >
cis-3 d-4 dis-3 e-4 f-5 e-4 dis-3 d-4 cis-3 c-5 h-4 b-3 a-4 gis-3 h-5 a-4 %FINGER
    % __________________________________________________________________________________________ Takt  2 __ >
gis-3 g-5 fis-3 f-5 e-4 dis-3 f-5 e-4 dis-3 d-4 cis-3 c-4 h-3 c-4 d-5 c-4 %FINGER
    % __________________________________________________________________________________________ Takt  3 __ >
h-3 c-4
h c% KEINE finger
h-3 c-4
h c% KEINE finger
h-3 e-5 dis-4 d-5 cis-4 c-5 h-4 b-3 %FINGER
    % __________________________________________________________________________________________ Takt  4 __ >
a-4 ais-3 h-4 c-5 cis-3 d-4 dis-3 e-4 f-5 fis-3 g-4 gis-3 a-4 ais-3 h-4 c!-5 %FINGER
    % __________________________________________________________________________________________ Takt  5 __ >
cis-3 d-4 dis-3 e-4 f-5 e-4 dis-3 d-4 cis-3 c-5 h-4 b-3 a-4 gis-3 h-5 a-4 %FINGER
    % __________________________________________________________________________________________ Takt  6 __ >
g!-3 gis-4 a-5 ais-3 h-4 c-5 h-4 ais-3 a-4 gis-3 g-5 fis!-4 %FINGER
                        #(Text .15 -2.1 #t)% VERSCHIEBUNG
eis-3-5 %FINGER
                        ^\markup { \fontsize #-2 { \musicglyph #"accidentals-leftparen"
                                   \hspace #-.2 \musicglyph #"accidentals-rightparen" } }
fis-4 g!-5 %FINGER
                        #(Text .15 -1.9 #t)% VERSCHIEBUNG
fis-3-4 %FINGER
                        ^\markup { \fontsize #-2 \musicglyph #"accidentals-leftparen" }
    % __________________________________________________________________________________________ Takt  7 __ >
                        #(Text 1.25 -1.9 #t)% VERSCHIEBUNG
e!-4-3 %FINGER
                        ^\markup { \fontsize #-2 \musicglyph #"accidentals-rightparen" }
f!-5 dis-3 e-5 %FINGER
d-4 e-5 cis-3 d-5 c-4 d-5 h-3 c-5 h-4 c-5 ais-3 h-5 %FINGER
    % __________________________________________________________________________________________ Takt  8 __ >
a!16-4 ais-3 h-4 c-5 cis-3 d-4 dis-3 e-4 f-5 fis-3 g-4 gis-3 a-4 ais-3 h-4 c!-5 %FINGER
    % __________________________________________________________________________________________ Takt  9 __ >
cis-3 d-4 dis-3 e-4 f-5 e-4 dis-3 d-4 cis-3 c-5 h-4 b-3 a-4 gis-3 h-5 a-4 %FINGER
    % __________________________________________________________________________________________ Takt 10 __ >
gis-3 g-5 fis-3 f-5 e-4 dis-3 f-5 e-4 dis-3 d-4 cis-3 c-4 h-3 c-4 d-5 c-4 %FINGER
    % __________________________________________________________________________________________ Takt 11 __ >
h-3 c-4 %FINGER
h c% KEINE finger
h-3 c-4 %FINGER
h c% KEINE finger
h-3 e-5 dis-4 d-5 cis-4 c-5 h-4 b-3 %FINGER
    % __________________________________________________________________________________________ Takt 12 __ >
a-4 ais-3 h!-4 c-5 cis-3 d-4 dis-3 e-4 f-5 fis-3 g-4 gis-3 a-4 ais-3 h-4 c!-5 %FINGER
    % __________________________________________________________________________________________ Takt 13 __ >
cis-3 d-4 dis-3 e-4 f-5 e-4 dis-3 d-4 cis-3 c-5 h-4 b-3 a-4 gis-3 h-5 a-4 %FINGER
    % __________________________________________________________________________________________ Takt 14 __ >
b-3 h-4 c-5 cis-3 d-4 dis-3 e-4 f-5 e-4 f-5 fis-3 g!-4 gis-3 a-4 ais-3 h!-4 %FINGER
    % __________________________________________________________________________________________ Takt 15 __ >
a!-5 gis-4 g-5 fis-4 f-5 e-4 es-3 d-5 cis-4 c-5 h-4 b-3 a-5 gis-4 g-5 fis-4 %FINGER
    % __________________________________________________________________________________________ Takt 16 __ >
f!-5 e-4 es-3 d-4 cis-3 d-4 f-5 d-4 %FINGER
                        \once\override Beam #'positions = #'(4.2 . 4.2)
h!-3 c!-4 e!-5 c-4 %FINGER
                        \once\override Beam #'positions = #'(4.2 . 4.2)
ais-3 %FINGER
                        #(Text .15 -1.8 #t)% VERSCHIEBUNG
h-4-3 %FINGER
                        ^\markup { \fontsize #-2 \musicglyph #"accidentals-leftparen" }
e-5 %FINGER
                        #(Text 1.25 -1.8 #t)% VERSCHIEBUNG
h-4-3 %FINGER
                        ^\markup { \fontsize #-2 \musicglyph #"accidentals-rightparen" }
    % __________________________________________________________________________________________ Takt 17 __ >
a!-5 ais-3 h-4 c-5 cis-3 d-4 dis-3 e-4 a!-5 gis-4 g-5 fis-4 f-5 e-4 es-3 d-5 %FINGER
    % __________________________________________________________________________________________ Takt 18 __ >
des-4 c-5 h!-3 c-4 cis-3 d-4 dis-3 e-4 f-5 fis-3 g-4 gis-3 a-5 e-3 f-5 d-4 %FINGER
    % __________________________________________________________________________________________ Takt 19 __ >
des-3 c-4 h-3 c-4 cis-3 d-4 dis-3 e-4 f-5 fis-4 g-5 as-4 g-5 fis-4 f-5 e-4 %FINGER
    % __________________________________________________________________________________________ Takt 20 __ >
es-3 d-4 cis-3 d-4 es!-3 e-4 f-5 fis-4 g-5 gis-4 a-5 b-4 a-5 fis-3 g-5 es-4 %FINGER
    % __________________________________________________________________________________________ Takt 21 __ >
d-3 es-4 cis-2 d-4 es-3 e-4 f!-5 fis-4 g-5 gis-4 a-5 b-4 a-5 gis-4 g-5 fis!-4 %FINGER
    % __________________________________________________________________________________________ Takt 22 __ >
f!-3 e-4 dis-3 e-4 f-5 fis-3 g-4 gis-3 a-4 ais-3 h-4 c-5 h-4 b-3 a-4 gis!-3 %FINGER
    % __________________________________________________________________________________________ Takt 23 __ >
g!-4 fis-3 f-4 e-3 f-4 fis-3 g-4 gis-3 a-4 ais-3 h-4 c-5 cis-3 d-4 dis-3 e-4 %FINGER
    % __________________________________________________________________________________________ Takt 24 __ >
f!-5 e-4 es-3 d-5 cis-4 c-5 h-4 b-3 a-5 gis-4 g-5 fis-4 f-5 e!-4 dis-3 e-1 %FINGER
    % __________________________________________________________________________________________ Takt 25 __ >
                        #(Finger 0 -.2 #t)% VERSCHIEBUNG
es'-5 d-5 cis-4 c-5 h!-4 b-3 a-5 gis-4 g-5 fis-4 f-5 e!-4 es-3 d-4 cis-3 d-1 %FINGER
    % __________________________________________________________________________________________ Takt 26 __ >
d'-5 cis-4 c-5 h-4 b-3 a-5 as-4 g-5 fis-3 g-4 gis-3 a!-4 b!-3 h-4 c-5 h-3 %FINGER
    % __________________________________________________________________________________________ Takt 27 __ >
d-5 c-4 b-3 a-5 as-4 g-5 fis-4 f-5 e!-4 f-5 fis-4 g-5 gis-4 a-5 b!-4 a-3 %FINGER
    % __________________________________________________________________________________________ Takt 28 __ >
c-5 b-4 a-5 as-4 g-5 fis-4 f-5 e-4 es-3 d-5 des-4 c-5 b!-4 a-5 gis-4 g-5 %FINGER
    % __________________________________________________________________________________________ Takt 29 __ >
fis-3 g-4 gis-3 a-4 b!-5 a-4 gis-3 g-4 fis-3 g-4 gis-3 a-4 b-5 a-4 gis-3 g-4 %FINGER
    % __________________________________________________________________________________________ Takt 30 __ >
fis-3 g-4 gis-3 a-4 c!-5 h-4 b-3 a-4 gis-3 a-4 ais-3 h-4 c-5 h-4 b-3 a-4 %FINGER
    % __________________________________________________________________________________________ Takt 31 __ >
gis8-3 %FINGER
r% KEINE finger
e''16-4 f-5 d!-4 e-5 c-4 d-5 h-4 c-5 a-4 h-5 g-4 a-5 %FINGER
    % __________________________________________________________________________________________ Takt 32 __ >
f-4 g-5 e-3 f-1 d'-4 e-5 c-4 d-5 h-4 c-5 a-4 h-5 gis-4 a-5 f-4 g-5 %FINGER
    % __________________________________________________________________________________________ Takt 33 __ >
e-4 f-5 dis-3 e-1 c'-4 %FINGER
d! h% KEINE finger
c-5 a-4 %FINGER
h g!% KEINE finger
a-5 f-4 %FINGER
g e% KEINE finger
f-5 %FINGER
    % __________________________________________________________________________________________ Takt 34 __ >
d-4 %FINGER
e c% KEINE finger
d-5 h-4 %FINGER
c a% KEINE finger
h-5 gis-4 f!-3 dis-2 e-3 f-4 fis-3 g-4 gis-3 %FINGER
    % __________________________________________________________________________________________ Takt 35 __ >
a16-4 ais-3 h-4 c-5 cis-3 d-4 dis-3 e-4 f-5 fis-3 g-4 gis-3 a-4 ais-3 h-4 c!-5 %FINGER
    % __________________________________________________________________________________________ Takt 36 __ >
cis-3 d-4 dis-3 e-4 f-5 e-4 dis-3 d-4 cis-3 c-5 h-4 b-3 a-4 gis-3 h-5 a-4 %FINGER
    % __________________________________________________________________________________________ Takt 37 __ >
gis-3 g-5 fis-3 f-5 e-4 dis-3 f-5 e-4 dis-3 d-4 cis-3 c-4 h-3 %FINGER
c d c% KEINE finger
    % __________________________________________________________________________________________ Takt 38 __ >
h-3 %FINGER
c h c% KEINE finger
h-3 %FINGER
c h c h% KEINE finger
e-5 dis-4 d-5 cis-4 c-5 h-4 b-3 %FINGER
    % __________________________________________________________________________________________ Takt 39 __ >
a-4 ais-3 h-4 c-5 cis-3 d-4 dis-3 e-4 f-5 fis-3 g-4 gis-3 a-4 ais-3 h-4 c!-5 %FINGER
    % __________________________________________________________________________________________ Takt 40 __ >
cis-3 d-4 dis-3 e-4 f-5 e-4 dis-3 d-4 cis-3 c-5 h-4 b-3 a-4 gis-3 h-5 a-4 %FINGER
    % __________________________________________________________________________________________ Takt 41 __ >
b-3 h-4 c-5 cis-3 d-4 dis-3 e-4 f-5 e-4 f-5 fis-4 g!-5 gis-4 a-5 ais-4 h!-5 %FINGER
    % __________________________________________________________________________________________ Takt 42 __ >
a!-4 gis-3 g-5 fis-4 f-5 e-4 es-3 d-5 cis-4 c-5 h-4 b-3 a-5 gis-4 g-5 fis-4 %FINGER
    % __________________________________________________________________________________________ Takt 43 __ >
f!-5 e-4 es-3 d-4 cis-3 d-4 f-5 d-4 %FINGER
                        \once\override Beam #'positions = #'(4.2 . 4.2)
h!-3 c!-4 e!-5 c-4 %FINGER
                        \once\override Beam #'positions = #'(4.2 . 4.2)
ais-3 %FINGER
                        #(Text .15 -2.1 #t)% VERSCHIEBUNG
h-4-3 %FINGER
                        ^\markup { \fontsize #-2 { \musicglyph #"accidentals-leftparen"
                                   \hspace #-.2 \musicglyph #"accidentals-rightparen" } }
e-5 h-3 %FINGER
    % __________________________________________________________________________________________ Takt 44 __ >
a!-2 ais-3 h-4 c-5 cis-3 d-4 dis-3 e-4 f-5 fis-3 g-4 gis-3 a-4 ais-3 h-4 c!-5 %FINGER
    % __________________________________________________________________________________________ Takt 45 __ >
a!-4 ais-3 h-4 c-5 cis-3 d-4 dis-3 e-4 f-5 fis-3 g-4 gis-3 a-4 ais-3 h-4 c!-5 %FINGER
    % __________________________________________________________________________________________ Takt 46 __ >
a-4 gis-3 g-5 fis-4 f-5 e-4 es-3 d-5 cis-4 c-5 h-4 b-3 a-5 gis-4 g-5 fis-4 %FINGER
    % __________________________________________________________________________________________ Takt 47 __ >
f!-5 e-4 es-3 d-5 cis-4 c-5 h-4 b-3 a-5 gis-4 g-5 fis-4 f-5 e-4 es-3 d-5 %FINGER
    % __________________________________________________________________________________________ Takt 48 __ >
#(Finger 0 -4 #t) #(Artikel 0 .2 #t)% VERSCHIEBUNG
cis1-4 %FINGER
                                       -\fermata
    % __________________________________________________________________________________________ Takt 49 __ >
}

rechtsUnten = \relative c{
  \context Voice=rechtsUnten
  \override Voice.Stem #'length = #'7.5
  \override Voice.Stem #'stem-shorten = #'(0 0)
  \set fingeringOrientations = #'(right)
  %\override Fingering #'no-spacing-rods = ##t
  \stemDown
  #(Dynamik -2 2.5 #t) #(Text 1.8 4 #t) <c' e-2>16-\markup { \number\fontsize #-5 1 }
  \p s s s <e-1 a-2> s s s #(Finger 0 -.5 #t) #(Text 1 .2 #t)
  <a-1 d-2>-\markup { \italic cresc. } s s s #(Finger 0 -1.5 #t)
  #(Text 1.8 3 #t) <d f-2>-\markup { \number\fontsize #-5 1 } s s s
    % __________________________________________________________________________________________ Takt  1 __ >
  #(Keil .5 -.2 #t) <e a> \< s s s \!
  #(Keil 1 -.2 #t) <a c> \> s s s <e a> \! s s s <c! e> s s s
    % __________________________________________________________________________________________ Takt  2 __ >
  <h e> s s s <gis h> s s s <a c> s s s <e a> s s s
    % __________________________________________________________________________________________ Takt  3 __ >
  <e gis> s s s <dis a'> s s s <e gis> s s #(Keil 6.8 1.5 #t) s \> <d gis> s \! s s
    % __________________________________________________________________________________________ Takt  4 __ >
  #(Dynamik -2 2.5 #t) <c e>16 \p s s s <e a> s s s
  #(Text 1 .2 #t) <a d>-\markup { \italic cresc. }  s s s <d f> s s s
    % __________________________________________________________________________________________ Takt  5 __ >
  #(Keil .5 -.2 #t) <e a> \< s s s \!
  #(Keil 1 -.2 #t) <a c> \> s s s <e a> \! s s s <c! e> s s s
    % __________________________________________________________________________________________ Takt  6 __ >
  #(Finger 0 -.4 #t) <h-1 e-2> s s s <e g!> s s s #(Finger 0 -3.6 #t)
  #(Text 1.8 3.6 #t) <dis fis-1>-\markup { \number\fontsize #-5 2 } s s s
  #(Finger 0 -.6 #t) <a-1 dis-2> s s #(Keil 7.3 1 #t) s \>
    % __________________________________________________________________________________________ Takt  7 __ >
  <gis h> s \! s s #(Dynamik .6 1 #t) <f! a> \fz s s s <e a>
  s s s <d gis> s s s
    % __________________________________________________________________________________________ Takt  8 __ >
  #(Text 0 3.2 #t) #(Dynamik -2 2.5 #t) <c e>16^\markup { \italic
  { sempre legato } } \p s s s <e a> s s s #(Text 1 .2 #t)
  <a d>-\markup { \italic cresc. }  s s s <d f> s s s
    % __________________________________________________________________________________________ Takt  9 __ >
  <e a> s s s <a c> s s s <e a> s s s <c! e> s s s
    % __________________________________________________________________________________________ Takt 10 __ >
  <h e> s s s <gis h> s s s <a c> s s s <e a> s s s
    % __________________________________________________________________________________________ Takt 11 __ >
  <e gis> s s s <dis a'> s s s <e gis> s s \once\override Hairpin #'height = #.5
  #(Keil 6.8 1.5 #t) s \> <d gis> s \! s s
    % __________________________________________________________________________________________ Takt 12 __ >
  #(Dynamik -2 2.5 #t) <c e>16 \p s s s <e a> s s s
  <a d> s s s <d f> s s s
    % __________________________________________________________________________________________ Takt 13 __ >
  <e a> s s s <a c> s s s <e a> s s s <c! e> s s s
    % __________________________________________________________________________________________ Takt 14 __ >
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(0 . 2.2)
    \once\set crescendoText = \markup { \hspace #-1 "" \raise #-.8 {
      \fontsize #1 \italic\bold "cresc." \hspace #4 } }
    \once\override DynamicTextSpanner #'dash-period = #'9.4
    \once\override DynamicTextSpanner #'dash-fraction = #'0.09
  <d f> \< s s s \ExtraSpace
                                       #(set-octavation 1)% OKTAVE
  \set Staff.ottavation = #" "
  \once\override Staff.OttavaBracket #'extra-offset = #'(-1 . 1)
  \override Staff.OttavaBracket #'shorten-pair = #'(0 . -2.4)
  \override Staff.OttavaBracket #'edge-height = #'(0 . 3)
  \override Staff.OttavaBracket #'dash-fraction = #.4
  \override Staff.OttavaBracket #'dash-period = #1.6
  \override Staff.OttavaBracket #'font-size = #2.5
  \override Staff.OttavaBracket #'font-series = #'bold
  #(Text -1.7 4.4 #t) <f b>^\OKTAVA s s s #(Text 1.8 6.3 #t)
  <gis-1 d'>-\markup { \number\fontsize #-5 2 } s s s d' s s s \!
    % __________________________________________________________________________________________ Takt 15 __ >
  #(Dynamik 0 .4 #t) <c f> \f s s s <a c> s s s
  #(set-octavation 0) \ExtraSpace <e! a> s s s <c! e> s s s
    % __________________________________________________________________________________________ Takt 16 __ >
  #(Text 1.8 3 #t) #(Finger 0 -1.2 #t) <b d-2>-\markup { \number\fontsize #-5 1 }
  s s s <f b> #(Keil .8 -.5 #t) s \> s s \! <e! a> #(Text -.4 -2 #t)
  s-\markup { \italic dim. } s s <d gis> s s s
    % __________________________________________________________________________________________ Takt 17 __ >
  #(Keil 1.4 1.6 #t) <c e> \< s s s <e gis> s s s \!
  #(Keil .6 -.9 #t) <a! c!> \> s s s s s s s \!
    % __________________________________________________________________________________________ Takt 18 __ >
  #(Text 0 3.7 #t) #(Dynamik -2 2 #t) <e b'>^\markup { \italic
  { sempre legato } } \p s s s <e b'> s s s a s s s #(Text 2.5 -.7 #t) c!-\markup {
  \italic\fontsize #1 { poco \hspace #6.5 a \hspace #3.5 poco \hspace #5.5 cresc. } } s s s
    % __________________________________________________________________________________________ Takt 19 __ >
  #(Text -1.3 0 #t) #(Finger -1.3 -6.9 #t) b-2 s s s <e, b'> s s s <f as> s s s h! s s s
    % __________________________________________________________________________________________ Takt 20 __ >
  #(Finger 0 .5 #t)
  c_2 s s s <fis, c'!> s s s
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(0 . 2)
    \once\set crescendoText = \markup { \hspace #.1 "" \raise #-.8 { \fontsize #1
    \italic\bold { poco \hspace #4.3 a \hspace #4.3 poco \hspace #4.3 cre \hspace #3 } } }
    \once\override DynamicTextSpanner #'dash-period = #'7
    \once\override DynamicTextSpanner #'dash-fraction = #'0.1
  b \< s s s d s s s
    % __________________________________________________________________________________________ Takt 21 __ >
  #(Finger -1.3 3.2 #t)
  c_1 s s s <fis, c'!> \!
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(.3 . 1.5)
    \once\set crescendoText = \markup { \hspace #.4 "" \raise #-.8 {
      \fontsize #1 \italic\bold scen \hspace #3 } }
    \once\override DynamicTextSpanner #'dash-period = #'6.5
    \once\override DynamicTextSpanner #'dash-fraction = #'0.09
  s \< s s <g b> s s s cis \!
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(0 . -1.2)
    \once\set crescendoText = \markup { \hspace #-1.2 "" \raise #-.8 {
      \fontsize #1 \italic\bold do \hspace #2.2 } }
    \once\override DynamicTextSpanner #'dash-period = #'7.2
    \once\override DynamicTextSpanner #'dash-fraction = #'0.11
  s \< s s \!
    % __________________________________________________________________________________________ Takt 22 __ >
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(0 . .9)
    \once\set crescendoText = \markup { \hspace #-3 "" \raise #-.8 "" }
    \once\override DynamicTextSpanner #'dash-period = #'10
    \once\override DynamicTextSpanner #'dash-fraction = #'0.085
  #(Finger 0 .5 #t) d_1 \< s s s <gis, d'!> s s s c s s s e s s s \!
    % __________________________________________________________________________________________ Takt 23 __ >
  d s s s <gis, d'> #(Keil 0 .3 #t) s \< s s c s s s <e a!> s s s \!
    % __________________________________________________________________________________________ Takt 24 __ >
  #(Dynamik 0 -.5 #t) a \f s s s <f a> s s s #(Finger .1 .5 #t) <d f>_2_1 s s s
    <gis, d'> #(Keil 0 -1 #t) s \> s s \!
    % __________________________________________________________________________________________ Takt 25 __ >
  #(Bogen 0 6.4 #t) g'!_2( \hideNotes g\noBeam) \unHideNotes s s <es g> s s s
  #(Finger 0 .5 #t) <c es!>_1_2 s s s <fis, c'> s s s
    % __________________________________________________________________________________________ Takt 26 __ >
  <g' b>_2 s s s
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(0 . 1.7)
    \once\set crescendoText = \markup { \hspace #-1 "" \raise #-.8 {
      \fontsize #1 \italic\bold "cresc." \hspace #4.5 } }
    \once\override DynamicTextSpanner #'dash-period = #'9.7
    \once\override DynamicTextSpanner #'dash-fraction = #'0.09
  <cis, g'> \< s s s <a! d> s s s <c! f!> s s s
    % __________________________________________________________________________________________ Takt 27 __ >
  <f a> s s s <h,! f'> s s s <g c> s s s <b es> s s s \!
    % __________________________________________________________________________________________ Takt 28 __ >
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(0 . -1.9)
    \once\set crescendoText = \markup { \hspace #-2 "" \raise #-.8 {
      \fontsize #1 \italic\bold "" \hspace #-0 } }
    \once\override DynamicTextSpanner #'dash-period = #'8
    \once\override DynamicTextSpanner #'dash-fraction = #'0.094
  <es g!> \< s s s \! #(Keil .5 -.45 #t) #(Dynamik 0 -.2 #t)
  <b es> \> \f s s s \! <g b> s s s <cis, g'> s s s
    % __________________________________________________________________________________________ Takt 29 __ >
  #(Dynamik -.7 .2 #t) <a d> \fz #(Dynamik .5 -3.4 #t) s \p s s <cis g'!> s s s <a d>
  \hideNotes %% Stemmheide
  \unten f,,\noBeam \oben a''\noBeam %% Stemmheide: Note
  \unHideNotes %% Stemmheide
  s <cis g'!> s s s
    % __________________________________________________________________________________________ Takt 30 __ >
  <a d>
  \hideNotes %% Stemmheide
  \unten e,,\noBeam \oben a''\noBeam %% Stemmheide: Note
  \unHideNotes %% Stemmheide
  s dis #(Keil -.4 -1.8 #t) s \> s s \!  <h! e> #(Keil -.5 -1.8 #t) s
  \< s s \!  <dis! a'!> #(Keil 0 -1.8 #t) s \> s s \!
    % __________________________________________________________________________________________ Takt 31 __ >
  <h! e>8 s #(Keil 0 -1 #t) <gis'' h>16 \> s #(Text .15 6.9 #t) #(Finger .5 4.9 #t)
  s_3-\markup { \fontsize #-2 { \musicglyph #"accidentals-leftparen"
                \hspace #-.2 \musicglyph #"accidentals-rightparen" } }
  s <e a> s s s <c e> s s s \!
    % __________________________________________________________________________________________ Takt 32 __ >
  <a c> s s
  \once\override Tie #'direction = #-1 \hideNotes f' ~ \unHideNotes \ExtraSpace
  #(Keil 0 .2 #t) <f a> \> s s s <d f> s s s <h d> s s s \!
    % __________________________________________________________________________________________ Takt 33 __ >
  <gis h> s s \once\override Tie #'direction = #-1 \hideNotes e' ~ \unHideNotes
  \TieExtraSpace #(Keil 0 .5 #t) <e a> \> s s s <c e> s s s <a c> s s s \!
    % __________________________________________________________________________________________ Takt 34 __ >
  <f a> s s s <d f> s s s #(Text 0 1.7 #t) <h d>^\markup { \italic
    { sempre legato } } #(Keil .3 -2 #t) s \< s s s s s s \!
    % __________________________________________________________________________________________ Takt 35 __ >
  <c e>16 s s s <e a> s s s <a d> s s s <d f> s s s
    % __________________________________________________________________________________________ Takt 36 __ >
  <e a> s s s <a c> s s s <e a> s s s <c! e> s s s
    % __________________________________________________________________________________________ Takt 37 __ >
  <h e> s s s <gis h> s s s <a c> s s s <e a> s s s
    % __________________________________________________________________________________________ Takt 38 __ >
  <e gis> s s s <dis a'> s s s <e gis> s s s <d gis> s s s
    % __________________________________________________________________________________________ Takt 39 __ >
  <c e>16 s s s <e a> s s s <a d> s s s <d f> s s s
    % __________________________________________________________________________________________ Takt 40 __ >
  <e a> s s s <a c> s s s <e a> s s s <c! e> s s s
    % __________________________________________________________________________________________ Takt 41 __ >
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(5 . 2.1)
    \once\set crescendoText = \markup { \hspace #-6.3 "" \raise #-.8 {
      \fontsize #1 \italic\bold cre \hspace #1.5 } }
    \once\override DynamicTextSpanner #'dash-period = #'6.7
    \once\override DynamicTextSpanner #'dash-fraction = #'0.1
  <d f> \< s s s \ExtraSpace #(set-octavation 1)
  \set Staff.ottavation = #" "
  \once\override Staff.OttavaBracket #'extra-offset = #'(-.8 . 1)
  \override Staff.OttavaBracket #'shorten-pair = #'(0 . -2.4)
  \override Staff.OttavaBracket #'edge-height = #'(0 . 0)
  #(Text -1.5 4.4 #t) <f b>^\OKTAVA \! s
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(.5 . 1.6)
    \once\set crescendoText = \markup { \hspace #-.7 "" \raise #-.8 {
      \fontsize #1 \italic\bold "scen" \hspace #1.5 } }
    \once\override DynamicTextSpanner #'dash-period = #'6.7
    \once\override DynamicTextSpanner #'dash-fraction = #'0.1
  s \< s <gis d'> s s s #(Text 3 -.9 #t)
  d'-\markup { \italic do } \! s s s
    % __________________________________________________________________________________________ Takt 42 __ >
  #(set-octavation 0)
  #(set-octavation 1)
  \set Staff.ottavation = #" "
  \once\override Staff.OttavaBracket #'extra-offset = #'(-2.8 . 1)
  \override Staff.OttavaBracket #'shorten-pair = #'(0 . -3.8)
  \override Staff.OttavaBracket #'edge-height = #'(0 . 3)
  #(Text -3.5 3.9 #t) #(Dynamik 0 -.5 #t) c^\OKTAVA \f s s s <a c>
  s s s #(set-octavation 0) <e! a> s s s <c! e> s s s
    % __________________________________________________________________________________________ Takt 43 __ >
  #(Finger .1 .5 #t) <b d>_2_1 s s s <f b> \once\override Hairpin #'height = #.4
  #(Keil .7 -1.1 #t) s \> s s \! <e! a> #(Text .7 -2.5 #t)
  s-\markup { \italic dim. } s s <d gis> s s s
    % __________________________________________________________________________________________ Takt 44 __ >
  c s s s
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(1 . 2.3)
    \once\set crescendoText = \markup { \hspace #.3 "" \raise #-.8 {
      \fontsize #1 \italic\bold cre \hspace #3 } }
    \once\override DynamicTextSpanner #'dash-period = #'6.7
    \once\override DynamicTextSpanner #'dash-fraction = #'0.1
  <d a'!> \< s s s <a' d!> s s s <d e> s s s
    % __________________________________________________________________________________________ Takt 45 __ >
  <c e> \!
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(-3 . .3)
    \once\set crescendoText = \markup { \hspace #0 "" \raise #-.8 {
      \fontsize #1 \italic\bold scen \hspace #3 } }
    \once\override DynamicTextSpanner #'dash-period = #'7
    \once\override DynamicTextSpanner #'dash-fraction = #'0.1
  s \< s s <d a'!> s s s #(set-octavation 1) \ExtraSpace
  \set Staff.ottavation = #" "
  \once\override Staff.OttavaBracket #'extra-offset = #'(-1 . 1)
  \override Staff.OttavaBracket #'edge-height = #'(0 . 0)
  \override Staff.OttavaBracket #'shorten-pair = #'(0 . -3.3)
  #(Text -1.6 5 #t) <a' d!>^\OKTAVA s s s
  <d e> s #(Text .8 -2.4 #t) s-\markup { \italic do } s \! #(set-octavation 0)
  \HalbExtraSpace
    % __________________________________________________________________________________________ Takt 46 __ >
  #(set-octavation 1)
  \set Staff.ottavation = #" "
  \once\override Staff.OttavaBracket #'extra-offset = #'(-3 . 1)
  \override Staff.OttavaBracket #'edge-height = #'(0 . 3)
  \override Staff.OttavaBracket #'shorten-pair = #'(0 . -4.2)
  #(Text -3.6 4 #t) #(Dynamik 0 -.3 #t) <c e>^\OKTAVA \f s s s <a d> s s s \ExtraSpace
  #(set-octavation 0) <f a> s s s <d f> s s s
    % __________________________________________________________________________________________ Takt 47 __ >
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(.3 . 4.1)
    \once\set crescendoText = \markup { \hspace #0 "" \raise #-.8 {
      \fontsize #1 \italic\bold dimin. \hspace #3 } }
    \once\override DynamicTextSpanner #'dash-period = #'7
    \once\override DynamicTextSpanner #'dash-fraction = #'0.1
  <a d> \< s s s <f a> s s s <d f> s s s <a d> s s s \!
    % __________________________________________________________________________________________ Takt 48 __ >
  \unten\stemUp #(Artikel 0 1.4 #t) <e a>1^>
    % __________________________________________________________________________________________ Takt 49 __ >
}

links = \relative c{
  \override Tie #'x-gap = #'.1 \override Tie #'y-offset = #'.7
  \set fingeringOrientations = #'(left)
  a8_5-. r #(Finger 1 0 #t) <e'-4 a c!>-. r a,-. r <f'-4 a d>-. r
    % __________________________________________________________________________________________ Takt  1 __ >
  <a,, a'>-. r <e''-5 a c!-2>-. r <a-3 c! e-1>-. r r4
    % __________________________________________________________________________________________ Takt  2 __ >
  e,8-. r <e' h' d>_5-. r a,-. r <e'-4 a c>-. r
    % __________________________________________________________________________________________ Takt  3 __ >
  <e-3 h'>-. r #(Text -1.2 -2.7 #t)
  \once\override Slur #'direction = #-1
  <f-2 h>4^\markup { \number\fontsize #-5 1 }^>( ~ <e h'>8) r r4
    % __________________________________________________________________________________________ Takt  4 __ >
  a,8_5-. r #(Finger 1 0 #t) <e'-4 a c!>-. r a,-. r <f'-4 a d>-. r
    % __________________________________________________________________________________________ Takt  5 __ >
  <a,, a'>-. r <e''-5 a c!-2>-. r <a-3 c! e-1>-. r r4
    % __________________________________________________________________________________________ Takt  6 __ >
  h,8-. r <h' e g>_4-. r h,8-. r <h' fis' h>-. r
    % __________________________________________________________________________________________ Takt  7 __ >
  <e, e'>4 <e, e'> r <e e'>
    % __________________________________________________________________________________________ Takt  8 __ >
  a8_2-. r #(Finger 1 0 #t) <e'-4 a c!>-. r a,-. r <f'-4 a d>-. r
    % __________________________________________________________________________________________ Takt  9 __ >
  <a,, a'>-. r <e''-5 a c!-2>-. r <a-3 c! e-1>-. r r4
    % __________________________________________________________________________________________ Takt 10 __ >
  e,8-. r <e' h' d>_5-. r a,-. r #(Finger 0 -.5 #t) <e'-4 a c>-. r
    % __________________________________________________________________________________________ Takt 11 __ >
  #(Finger 0 -.5 #t) <e-3 h'>-. r #(Text -1.2 -2.7 #t)
  \once\override Slur #'direction = #-1
  <f-2 h>4^\markup { \number\fontsize #-5 1 }^>( ~ <e h'>8) r r4
    % __________________________________________________________________________________________ Takt 12 __ >
  a,8-. r #(Finger 1 0 #t) <e'-4 a c!>-. r a,-. r <f'-4 a d>-. r
    % __________________________________________________________________________________________ Takt 13 __ >
  <a,, a'>-. r <e''-5 a c!-2>-. r <a-3 c! e-1>-. r r4
    % __________________________________________________________________________________________ Takt 14 __ >
  <d,, d'>8-. r <d' f b d>-. r <e, e'>-. r <e'-5 h' d>-. r
    % __________________________________________________________________________________________ Takt 15 __ >
  <f, f'>-. r <a'-3 c f>-. r <c,,! c'!>-. r <e'-4 a e'>-. r
    % __________________________________________________________________________________________ Takt 16 __ >
  d, r <d' f b d>4( <e-4 a c-1>) <e-2>->(
    % __________________________________________________________________________________________ Takt 17 __ >
  <a, a'>) <e-3 e'>_( <a, a'>) r
    % __________________________________________________________________________________________ Takt 18 __ >
  <c c'>8-. r <c'! g' c!>-. r f,-. r <c' a' c>-. r
    % __________________________________________________________________________________________ Takt 19 __ >
  c, r <c'! g' c!>-. r des,-. r #(Finger 4.3 -1.1 #t) <des'-4 as' h!>-. r
    % __________________________________________________________________________________________ Takt 20 __ >
  \set fingeringOrientations = #'(right)
  d,!-. r <d'!-5 a'! c>-. r g,-. r <d'-4 g b>-. r
    % __________________________________________________________________________________________ Takt 21 __ >
  \set fingeringOrientations = #'(left)
  d,-. r <d'-5 a' c>-. r es,-. r #(Finger 4.3 -.6 #t) <es'-4 b' cis>-. r
    % __________________________________________________________________________________________ Takt 22 __ >
  e,!-. r <e'! h'! d>-. r a,-. r <e' a c e>-. r
    % __________________________________________________________________________________________ Takt 23 __ >
  e,-. r <e' h' d>-. r #(Finger .2 1.8 #t) <a, a'>4_3( <g! g'!>
    % __________________________________________________________________________________________ Takt 24 __ >
  <f f'>) <h h'>2-> <e e'>4
    % __________________________________________________________________________________________ Takt 25 __ >
  <es, es'> <a a'>2-> <d d'>4
    % __________________________________________________________________________________________ Takt 26 __ >
  <g, g'> #(Finger .2 .8 #t) <es' es'>_4( <d d'>8) r #(Finger .4 1.7 #t) <a a'>4_4(
    % __________________________________________________________________________________________ Takt 27 __ >
  <f f'>8) r #(Finger .2 .8 #t) <des' des'>4_4( <c c'>8) r
  <g! g'!>4_5(
    % __________________________________________________________________________________________ Takt 28 __ >
  #(Finger 0 -.8 #t) <es es'>8_4) r <es' es'>2
  \set doubleSlurs = ##t #(Finger 0 -.8 #t) <es, es'>4_4(
    % __________________________________________________________________________________________ Takt 29 __ >
  <d d'>8) r #(Text -.2 -4 #t) #(Finger 0 -.8 #t)
  <es a>4_4^>^\markup { \number\fontsize #-5 2 }( <d d'>8) r <es a>4^>(
    % __________________________________________________________________________________________ Takt 30 __ >
  <d d'>8) r #(Text -.2 -1.6 #t)
  <f! h!>4_4^\markup { \number\fontsize #-5 2 }( <e e'>8) r <f h>4(
    % __________________________________________________________________________________________ Takt 31 __ >
  <e e'>1) ~
    % __________________________________________________________________________________________ Takt 32 __ >
  <e e'> ~
    % __________________________________________________________________________________________ Takt 33 __ >
  <e e'> ~
    % __________________________________________________________________________________________ Takt 34 __ >
  <e e'>
    % __________________________________________________________________________________________ Takt 35 __ >
  a8-. r <e' a c!>_4-. r a,-. r <f'-4 a d>-. r
    % __________________________________________________________________________________________ Takt 36 __ >
  a,-. r <e'-5 a c!-2>-. r <a-3 c! e-1>-. r r4
    % __________________________________________________________________________________________ Takt 37 __ >
  e,8-. r <e'-5 h' d>-. r a,-. r <e'-4 a c>-. r
    % __________________________________________________________________________________________ Takt 38 __ >
  <e-3 h'-1>-. r #(Text -1.2 -2.7 #t) \set doubleSlurs = ##f
  \once\override Slur #'direction = #-1
  <f-2 h>4^\markup { \number\fontsize #-5 1 }^>( ~ <e h'>8) r r4
    % __________________________________________________________________________________________ Takt 39 __ >
  a,8-. r #(Finger 1 0 #t) <e'-4 a c!>-. r a,-. r <f'-4 a d>-. r
    % __________________________________________________________________________________________ Takt 40 __ >
  <a,, a'>-. r <e''-5 a c!-2>-. r <a-3 c! e-1>-. r r4
    % __________________________________________________________________________________________ Takt 41 __ >
  <d,, d'>8-. r <d' f b d>-. r <e, e'>-. r <e'-5 h' d>-. r
    % __________________________________________________________________________________________ Takt 42 __ >
  <f, f'>-. r <a'-3 c f>-. r <c,,! c'!>-. r <e'-4 a e'>-. r
    % __________________________________________________________________________________________ Takt 43 __ >
  \slurUp d, r <d' f b d>4( <e-4 a c-1>) <e-2 h'-1>->(
    % __________________________________________________________________________________________ Takt 44 __ >
  \slurDown <a, a'>8) r #(Finger -1.5 2.9 #t) <f f'>2_4->( <e e'>4)
    % __________________________________________________________________________________________ Takt 45 __ >
  <a, a'>8-. r #(Finger -1.7 3.7 #t) <f f'>2_4->( <e e'>4)
    % __________________________________________________________________________________________ Takt 46 __ >
  \stemDown <a a'>1 ~ <a a'> ~ #(Artikel 0 -.3 #t) <a a'>_\fermata
    % _____________________________________________________________________________________ Takt 47 - 49 __ >
}

\paper{
    hsize = 190.0 \mm
    leftmargin = 10.0 \mm
    %vsize = 286.0 \mm
    indent = 12.0 \mm
    topmargin = 5.0 \mm
    headsep = 1.0 \mm
    beforetitlespace = 1.0 \mm
    betweentitlespace = 1.0 \mm
    raggedlastbottom = ##f
    aftertitlespace = 1.0 \mm
    betweensystempadding = -2.0 \mm
    %betweensystemspace = 0.1 \mm
    footsep = 1.0 \mm
    %bottommargin = 1.0 \mm
}

\score{
  \context PianoStaff
    \with {
        verticalAlignmentChildCallback = #(futz-alignment-callback '(
        (1 . 11)
        (3 . 11)
        (5 . 11)
        (8 . 11)
        (11 . 11)
        (13 . 12)
        (14 . 14)
        (15 . 10.4)
        (16 . 9)
        (19 . 11)
        (21 . 11.5)
        (22 . 11)
        (23 . 10.6)
    ))
          \override Beam #'auto-knee-gap = #'()
    }
  <<
    \context Staff = "up" <<
      \global
      \clef violin
      \rechtsUnten
      \rechts
    >>
    \context Staff = "down" <<
      \global
      \clef bass
      \links
    >>
  >>
  \layout{
    \context { \Score \override SpacingSpanner #'spacing-increment = #1.7 }
    \context {
      \PianoStaff
      \override VerticalAlignment #'forced-distance = #10
    }
  }
\midi {\tempo 4=84}
}
