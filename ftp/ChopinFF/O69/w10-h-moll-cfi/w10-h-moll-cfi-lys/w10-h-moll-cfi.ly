\version "2.2.6"

\header{
  filename      =       "w10-h-moll-cfi.ly"
  title         =       "\\ \\vspace{-5mm}Walzer Nr. 10 h-moll"
  composer      =       "Frédéric Chopin (1810 - 1849)"
  opus          =       "\\small Opus 69 Nr. 2 (posth.)"
  arranger      =       "\\ \\vspace{2mm}"

 mutopiatitle = "Walzer h-moll"
 mutopiacomposer = "ChopinFF"
 mutopiaopus = "O 69"
 mutopiainstrument = "Piano"
 date = "1829-1835"
 source = "Peters, Herrmann Scholtz, 1900a"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Roland Goretzki"
 maintainerEmail = "roland@roland-goretzki.de"
 lastupdated = "2004/December/15"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/12/15-511"
}

\include "deutsch.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %

%%%   Für den Pedalwechsel des normalen Pedals:
PH = \sustainUp
PR = \sustainDown

rf = #(make-dynamic-script "rf")

ivFK = \markup { \bold\italic\fontsize #-1 4 }
vFK = \markup { \bold\italic\fontsize #-1 5 }

%%%   Kürzel für Dynamikanweisungen:
MF = \markup { \dynamic mf }
FORTE = \markup { \dynamic f }
SF = \markup { \dynamic sf }
FZ = \markup { \dynamic fz }
PIANO = \markup { \dynamic p }
PP = \markup { \dynamic pp }

cresc = \markup { \italic cresc. }
dimin = \markup { \italic dimin. }
dim = \markup { \italic dim. }
ritard = \markup { \italic ritard. }
rit = \markup { \italic rit. }
nuto = \markup { \italic ritenuto }
appa = \markup { \italic appassionato }
atempo = \markup { \italic { a tempo } }
conanima = \markup { \italic { con anima } }
smorzando = \markup { \italic smorzando }

OKTAVA = \markup { \finger\bold\fontsize #2.8 \italic "8" }

VollRatio = \once\override Slur #'ratio = #'1

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
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Text dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'TextScript 'extra-offset (cons dx dy) once)))
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
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Bogen dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  BogenKurve  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (BogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'height-limit dy once)))
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
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Dynamik dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'DynamicText 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Artikel dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Script 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

global = \notes {
  \key h \minor
  \time 3/4
  \partial 4
  s4 s2.*32
    \repeat volta 2 { s2.*31 }
     \alternative { { s2. } { s2. } }
  \bar "||"
  \key h \major
  s2.*32
  \key h \minor
  \bar "||"
  s2.*48
  \bar "|."
}

ArtikelFinger = { #(Artikel 0 1 #t) #(Finger 0 .7 #t) }
offenesDecrescendo = \markup {
    "\\embeddedps{ 0.1 setlinewidth 0 0 moveto 5 -0.3 lineto stroke
                   0 -1.2 moveto 5 -0.9 lineto stroke}" }

rechts =  \context Staff \notes\relative c'{
  \context Voice=rechts
  \override GrandStaff.InstrumentName #'extra-offset = #'(-1.7 . -.6)
  \override GrandStaff.InstrumentName #'font-size = #'3
  \set GrandStaff.instrument = \markup { \number { 10 \hspace #-1 . } }
  \context Voice = rechts
  \once\override Score.RehearsalMark #'extra-offset = #'(.5 . 3.5)
  \override Score.RehearsalMark #'self-alignment-X = #-1
    \mark \markup { \bold\fontsize #2 { Moderato. \hspace #-.8
    \fontsize #1.4 \raise #.1 { ( \tiny { \hspace #-1.2 \raise #.4 \note #"4" #.8 \raise #.1 =
    } \number\raise #-.1 \fontsize #-3.2 152. \hspace #-1.2 ) } } }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \override Score.TextScript #'font-size = #'1.1
  \override Score.TextSpanner #'font-size = #'1.1
  \override Score.TextScript #'font-series = #'bold
  \override Score.TextScript #'font-shape = #'italic
  #(Dynamik 0 -1 #f)
  #(BogenKurve 3 #f)
  \override PhrasingSlur #'height-limit = #'3
  \override Hairpin #'height = #.6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \ArtikelFinger fis'4->
-4 %FINGER
  ( ~
%_______________________________________________________________ Auftakt __ >
  fis8 \p g fis cis d #(Finger 0 .5 #t) h
-1 %FINGER
%_______________________________________________________________ Takt  1 __ >
  ais2
-2 %FINGER
  )
  \ArtikelFinger fis'4->
-4 %FINGER
  ( ~
%_______________________________________________________________ Takt  2 __ >
  fis8 g fis cis e d
%_______________________________________________________________ Takt  3 __ >
  h2 ) \ArtikelFinger #(BogenKurve 2 #t)
  \once\override Slur #'attachment-offset = #'((0 . 0) 2.5 . -.5)
  fis'4->
-2 %FINGER
  ( ~
%_______________________________________________________________ Takt  4 __ >
  #(Keil 0 -.6 #t) fis8 \< g eis fis h d \! )
%_______________________________________________________________ Takt  5 __ >
  \once\override Slur #'attachment-offset = #'((-4.7 . -.8) -5.5 . 2.5)
  #(BogenKurve 1 #t)
  #(Artikel .2 .2 #t) #(Dynamik 0 -.5 #t) d4-. ( \rf
  #(Bogen -.1 -.3 #t) eis, ) ( #(Artikel 0 1 #t) d'->) ~
%_______________________________________________________________ Takt  6 __ >
  d e,! ( \ArtikelFinger cis'->
-4 %FINGER
  ~
%_______________________________________________________________ Takt  7 __ >
  #(Keil 0 -.7 #t) cis8 \> h ais #(Finger 0 -.1 #t) g
-1 %FINGER
  #(Finger .2 .3 #t) fis
-4 %FINGER
  ) #(Finger 0 .2 #t) cis
-2 %FINGER
  \!
  (
%_______________________________________________________________ Takt  8 __ >
  #(Finger 0 1.35 #t) d
-1 %FINGER
  \p #(Finger 0 .7 #t) g
-5 %FINGER
  fis #(Finger 0 1.6 #t) cis
-2 %FINGER
  d #(Finger 0 .9 #t) h
-1 %FINGER
%_______________________________________________________________ Takt  9 __ >
  ais2
-2 %FINGER
  )
  \once\override Slur #'attachment-offset = #'((0 . 0) 2.2 . .7)
  \ArtikelFinger fis'4
-4 %FINGER
  -> ( ~
%_______________________________________________________________ Takt 10 __ >
  fis8 g fis cis e d )
%_______________________________________________________________ Takt 11 __ >
  \once\override Slur #'attachment-offset = #'((-4.7 . 3.2) -8.4 . -.7)
  #(BogenKurve 2 #t)
  h2 (
  \once\override Slur #'attachment-offset = #'((.1 . .6) .2 . -.2)
  #(BogenKurve 4.6 #t) \VollRatio
  fis'4
-1 %FINGER
  -> ) ( ~
%_______________________________________________________________ Takt 12 __ >
  #(Text 0 -2 #t) fis8-\cresc fis' cis
-3 %FINGER
  #(Finger .1 -.15 #t) d
-4 %FINGER
  #(Finger .1 -.7 #t) ais
-2 %FINGER
  #(Text .2 1 #t) #(Finger .2 .4 #t) h
-1 %FINGER
  )
%_______________________________________________________________ Takt 13 __ >
  #(BogenKurve 3 #t) a!
-4 %FINGER
  ( g
    \setTextCresc
    \once\override TextSpanner #'extra-offset = #'(2 . 12.4)
    \once\set crescendoText = \markup { \hspace #-4 "" \raise #-.4 {
      \italic\bold { poco rit. } \hspace #2 } }
    \once\override TextSpanner #'dash-period = #'6
    \once\override TextSpanner #'dash-fraction = #'0.12
  h,
-1 %FINGER
  \< cis d #(Finger .1 .4 #t) e
-1 %FINGER
  )
%_______________________________________________________________ Takt 14 __ >
  #(Finger -.1 .5 #t) g
-5 %FINGER
  ( fis #(Text -.3 -.9 #t) h,
-1 %FINGER
  -\dim
  d
-4 %FINGER
  cis fis,
%_______________________________________________________________ Takt 15 __ >
  h
  ) \!
-4 %FINGER
  #(Keil .3 10.2 #t)
  eis,
-1 %FINGER
  ( \>
  fis ais
-4 %FINGER
  h
-1 %FINGER
  cis ) \!
%_______________________________________________________________ Takt 16 __ >
  #(Text -1.7 10.1 #t) #(Dynamik 0 -1.5 #t)
  \once\override Slur #'attachment-offset = #'((0 . 0) 2.2 . 1.8)
  d-\atempo \p ( g fis cis
-2 %FINGER
  d #(Finger 0 -.2 #t) h )
-1 %FINGER
%_______________________________________________________________ Takt 17 __ >
  \once\override Slur #'attachment-offset = #'((-5.2 . 3.6) -7.6 . -.8)
  #(BogenKurve 2 #t)
  ais2 (
-2 %FINGER
  \ArtikelFinger fis'4
-4 %FINGER
  -> ) ( ~
%_______________________________________________________________ Takt 18 __ >
  fis8 g fis cis e d
%_______________________________________________________________ Takt 19 __ >
  h2 ) \ArtikelFinger
  \once\override Slur #'attachment-offset = #'((0 . 0) -.2 . 0)
  fis'4
-2 %FINGER
  -> ( ~
%_______________________________________________________________ Takt 20 __ >
  #(Keil 0 -1.1 #t) fis8 \< g eis fis h d \!
%_______________________________________________________________ Takt 21 __ >
  #(Artikel .2 .2 #t) #(Dynamik 0 -.4 #t) d4-. \rf )
  #(Bogen -.2 -.4 #t) eis, ( #(Artikel 0 1 #t) d'-> ) ~
%_______________________________________________________________ Takt 22 __ >
  d e,! ( \ArtikelFinger cis'
-4 %FINGER
  -> ~
%_______________________________________________________________ Takt 23 __ >
  #(Keil 0 -.7 #t) #(Text -.7 -1.3 #t) cis8 \> h
  ais #(Finger 0 -.2 #t) g
-1 %FINGER
  #(Finger .3 .2 #t)
  \once\override Slur #'attachment-offset = #'((2.1 . -1.6) 2.5 . 1.2)
  #(BogenKurve 1 #t)
  fis
-4 %FINGER
  ) ( #(Finger 0 .5 #t) cis
-2 %FINGER
  \! )
%_______________________________________________________________ Takt 24 __ >
  \once\override Slur #'attachment-offset = #'((-4.5 . 2.4) 0 . 1.6)
  d ( \p
-1 %FINGER
  g
-5 %FINGER
  fis cis
-2 %FINGER
  d h
-1 %FINGER
 
%_______________________________________________________________ Takt 25 __ >
  ais2 )
-2 %FINGER
  \ArtikelFinger fis'4
-4 %FINGER
  -> ( ~
%_______________________________________________________________ Takt 26 __ >
  fis8 g fis cis e d
%_______________________________________________________________ Takt 27 __ >
  h2 )
  #(Text .7 -1 #t) #(BogenKurve 3.4 #t) \VollRatio
  \once\override Slur #'attachment-offset = #'((.2 . .6) 0 . -.2)
  fis'4->-\cresc
-1 %FINGER
  (
%_______________________________________________________________ Takt 28 __ >
  #(Finger 0 .7 #t) fis'8
-5 %FINGER
  cis
-2 %FINGER
  d #(Finger 0 -.6 #t) ais
-1 %FINGER
  #(Finger 0 1.3 #t) h
-5 %FINGER
   #(Finger .1 .4 #t) fis
-2 %FINGER
   )
%_______________________________________________________________ Takt 29 __ >
  a!
-4 %FINGER
  ( g #(Text 0 3.5 #t) h,^\markup { poco rit. }
  cis e #(Finger .1 .5 #t) g
-5 %FINGER
   )
%_______________________________________________________________ Takt 30 __ >
    \setTextCresc
    \once\override TextSpanner #'extra-offset = #'(-3.5 . 11)
    \once\set crescendoText = \markup { \hspace #-7 "" \raise #-.4 {
      { "" } \hspace #.4 } }
    \once\override TextSpanner #'dash-period = #'5.6
    \once\override TextSpanner #'dash-fraction = #'0.12
  \once\override Slur #'attachment-offset = #'((.3 . -.3) 0 . 0)
  g
-4 %FINGER
  ( \<
  fis #(Text -.3 -.9 #t) h,-\dim
-1 %FINGER
  #(Finger 0 -.4 #t) d
-4 %FINGER
  cis fis,
%_______________________________________________________________ Takt 31 __ >
  h4. )
-3 %FINGER
  #(BogenKurve 2 #t) #(Text -1.5 8.6 #t) fis8-\atempo \! ( [
  #(Finger 0 -.8 #t) h
_4 %FINGER
   b
_3 %FINGER
   ) ]
%_______________________________________________________________ Takt 32 __ >
  #(Text -.3 .7 #t) b4._2^\conanima^^ (
  #(Keil 0 -.6 #t) a8 [ \< cis e \! ] )
%_______________________________________________________________ Takt 33 __ > % (65)
  #(Keil 0 -1.4 #t) #(Finger -.2 .4 #t) g4.
-5 %FINGER
  \> ( fis8 [ #(Finger 0 -.3 #t) cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%_______________________________________________________________ Takt 34 __ > % (66)
  #(Finger -.2 .4 #t) fis4.
-4 %FINGER
   ( e8 [ h cis ] )
%_______________________________________________________________ Takt 35 __ > % (67)
  #(Finger -.2 .4 #t) e4.
-4 %FINGER
  ( d8 [ cis
  h
-1 %FINGER
  ] )
%_______________________________________________________________ Takt 36 __ > % (68)
  h4.
-2 %FINGER
  ( #(Keil .3 .5 #t) a8 [ \< cis e ] ) \!
%_______________________________________________________________ Takt 37 __ > % (69)
  #(Finger -.2 .4 #t) #(Keil 0 -.3 #t) g4.
-5 %FINGER
  \> ( fis8 [
  #(Finger 0 -.3 #t) cis
-2 %FINGER
  d
-1 %FINGER
  ] ) \!
%_______________________________________________________________ Takt 38 __ > % (70)
  #(Finger -.2 .4 #t) fis4.
-4 %FINGER
  ( e8 [
  #(Finger 0 1.1 #t) h
-1 %FINGER
  cis
-3 %FINGER
  ] )
%_______________________________________________________________ Takt 39 __ > % (71)
  <<
  {
  \override Stem #'direction = #1
  \once\override Slur #'direction = #-1
  #(Bogen 0 -.5 #t) #(BogenKurve 6 #t)
\once\override Staff.Slur #'control-points =
% Linker Fixpunkt
                     % Linker Ziehpunkt
 #'((.6 . -1)
                         (2 . -4)
                         (12.8 . -5.3)
    (13.4 . -.1))
                     % Rechter Ziehpunkt
% Rechter Fixpunkt
  #(Text 3.5 0 #t) ais4.
^2 %FINGER
  ^\rit
  (
  cis8
^4 %FINGER
  [
  g
^1 %FINGER
  cis
^5 %FINGER
  ] )
  \revert Stem #'direction
  } \\ {
  \override Stem #'direction = #-1
  s4 s
  g
  \revert Stem #'direction
  } >>
%_______________________________________________________________ Takt 40 __ > % (72)
  \once\override Slur #'attachment-offset = #'((.2 . 2.3) -.4 . .3)
  #(Text 0 .4 #t) fis4.
-2 %FINGER
  ^\atempo (
  #(Finger 0 -.2 #t) #(Keil 0 .3 #t) ais8
-3 %FINGER
   \< [ #(Finger 0 -.2 #t) cis
-4 %FINGER
   e
-1 %FINGER
   \! ] )
%_______________________________________________________________ Takt 41 __ > % (73)
  #(Keil 0 -.6 #t) #(Finger -.2 .4 #t) g4.
-5 %FINGER
  \> ( fis8 [ #(Finger 0 -.3 #t) cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%_______________________________________________________________ Takt 42 __ > % (74)
  #(Finger -.2 .4 #t) fis4.
-4 %FINGER
   ( e8 [ h cis ] )
%_______________________________________________________________ Takt 43 __ > % (75)
  #(Finger -.2 .4 #t) e4.
-4 %FINGER
  ( d8 [ cis
  h
-1 %FINGER
  ] )
%_______________________________________________________________ Takt 44 __ > % (76)
  h4.
-2 %FINGER
  ( #(Keil .3 .5 #t) a8 [ \< cis e \! ] )
%_______________________________________________________________ Takt 45 __ > % (77)
  #(Keil 0 -.3 #t) #(Finger -.2 .4 #t) g4.
-5 %FINGER
  \> ( fis8 [ #(Finger 0 -.3 #t) cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%_______________________________________________________________ Takt 46 __ > % (78)
  \once\override Slur #'attachment-offset = #'((.5 . -.5) 2.2 . -1.5)
  fis4.
-3 %FINGER
  -^ ( e8 [ #(Finger 0 .5 #t) fis'
-5 %FINGER
   \f e ]
%_______________________________________________________________ Takt 47 __ > % (79)
  d cis #(Finger 0 -.8 #t) c
-1 %FINGER
  h
-3 %FINGER
  ais-\offenesDecrescendo a )
%_______________________________________________________________ Takt 48 __ > % (80)
  \once\override Slur #'attachment-offset = #'((-4.5 . 1) 0 . 1.6)
  #(Finger .2 -.9 #t) #(Keil -3 0 #t) gis ( \>
-2 %FINGER
  g fis
-4 %FINGER
  cis
-2 %FINGER
  d h
-1 %FINGER
%_______________________________________________________________ Takt 49 __ > % (81)
  ais4 \!
-2 %FINGER
  ) r #(Dynamik 0 0 #t) #(BogenKurve 3.5 #t) a'!
-5 %FINGER
  \sf (
%_______________________________________________________________ Takt 50 __ > % (82)
  #(Finger 0 -.9 #t) gis8
-4 %FINGER
  #(Finger 0 -1 #t) g
-5 %FINGER
  fis
-4 %FINGER
  cis
-2 %FINGER
  e d
%_______________________________________________________________ Takt 51 __ > % (83)
  h4 ) r #(Dynamik 0 0 #t)
  \once\override Slur #'attachment-offset = #'((.2 . -.3) -.2 . .2)
  #(BogenKurve 3.5 #t) a'
-5 %FINGER
  \sf (
%_______________________________________________________________ Takt 52 __ > % (84)
  #(Keil 0 -1 #t) #(Finger 0 -.8 #t) gis8
-4 %FINGER
  \< #(Finger 0 -.8 #t) g
-3 %FINGER
  #(Finger 0 -.4 #t) eis
-1 %FINGER
  fis h #(Finger 0 -.2 #t) d
-5 %FINGER
%_______________________________________________________________ Takt 53 __ > % (85)
  #(Artikel .2 .2 #t) d4-. \! )
  #(Bogen -.1 -.3 #t) eis, ( #(Artikel 0 1 #t) d'-> ) ~
%_______________________________________________________________ Takt 54 __ > % (86)
  d #(Bogen -.1 -.3 #t)
  \once\override PhrasingSlur #'attachment-offset = #'((-.4 . 1.5) 0 . .2)
  \once\override PhrasingSlur #'ratio = #'1
  \once\override PhrasingSlur #'height-limit = #'8
  e,! \( (
  #(Artikel 0 .8 #t) #(Finger 0 1.3 #t) #(BogenKurve 2 #t) cis'->
-4 %FINGER
  ) (
%_______________________________________________________________ Takt 55 __ > % (87)
  c8 )
-5 %FINGER
  h ais
  a
-1 %FINGER
  \> gis
-4 %FINGER
  g
%_______________________________________________________________ Takt 56 __ > % (88)
  fis f e
-4 %FINGER
  d cis h
-1 %FINGER
  \!
%_______________________________________________________________ Takt 57 __ > % (89)
  ais2
-2 %FINGER
  \) \ArtikelFinger g'4
-5 %FINGER
  -> (
%_______________________________________________________________ Takt 58 __ > % (90)
  fis8 g fis cis
-2 %FINGER
  e d
%_______________________________________________________________ Takt 59 __ > % (91)
  \once\override Slur #'attachment-offset = #'((9.2 . 1.9) 4 . .7)
  #(BogenKurve 1 #t)
  h2 ) ( \ArtikelFinger fis'4
-1 %FINGER
  -> )
%_______________________________________________________________ Takt 60 __ > % (92)
  \once\override Slur #'attachment-offset = #'((-4.7 . -2.2) .3 . 1.2)
  #(BogenKurve 5 #t)
  #(Finger 0 .4 #t) fis'8
-5 %FINGER
  ( \f cis
-2 %FINGER
  #(Finger 0 -.2 #t) d
-3 %FINGER
  #(Finger 0 -.7 #t) ais
-1 %FINGER
  #(Finger 0 -.2 #t) h
-5 %FINGER
  #(Finger .2 -.2 #t) fis
-2 %FINGER
  )
%_______________________________________________________________ Takt 61 __ > % (93)
  #(BogenKurve 1.5 #t) #(Bogen 0 -.3 #t) #(Finger 0 -.4 #t) a!
-4 %FINGER
  ( g
    \setTextCresc
    \once\override TextSpanner #'extra-offset = #'(.2 . 11.8)
    \once\set crescendoText = \markup { \hspace #-2 "" \raise #-.4 {
      \italic\bold { poco rit. } \hspace #3 } }
    \once\override TextSpanner #'dash-period = #'5.3
    \once\override TextSpanner #'dash-fraction = #'0.11
   h, \< cis e #(Finger .2 .2 #t) g
-5 %FINGER
   )
%_______________________________________________________________ Takt 62 __ > % (94)
  #(Text 1.3 -1.3 #t) #(Finger -.2 .4 #t) g
-4 %FINGER
  -\dim ( fis h,
-1 %FINGER
  d
-4 %FINGER
  cis fis, \!
%_______________________________________________________________ Takt 63 __ > % (95)
  h4.
-3 %FINGER
  ) #(Text -1 1.8 #t) fis8^\atempo ( [ #(Finger 0 -.2 #t) h
-4 %FINGER
  \once\override Slur #'attachment-offset = #'((3.2 . 1.4) .1 . 0)
  #(BogenKurve .5 #t)
  b ) ] (
%_______________________________________________________________ Takt 64 __ > % (96)
\set Score.currentBarNumber = #64
\once\override Staff.Accidental #'transparent = ##t
  h4 )
-3 %FINGER
  \once\override Slur #'direction = #1
  \once\override Slur #'attachment-offset = #'((6.3 . 0) 12.5 . 3.8)
  r ( #(Text -.6 2 #t)
  fis^\atempo )
%_______________________________________________________________ Takt 64 __ > % (96) % alternativ
\set Score.printKeyCancellation = ##f
  \once\override Slur #'attachment-offset = #'((-7.9 . 2.2) -.1 . -.1)
  #(Dynamik -1 -.7 #t) dis'8 (
-3 %FINGER
  \mf #(Text 0 -1 #t) e-\markup { \italic\bold dolce }
  dis cis dis #(Finger .2 .1 #t) e
-1 %FINGER
  )
%_______________________________________________________________ Takt 65 __ > % (97)
  #(Finger -.2 0 #t) #(Bogen .2 0 #t) #(Keil 0 -1 #t) gis2
-3 %FINGER
  ( \> fis4) \!
%_______________________________________________________________ Takt 66 __ > % (98)
  dis8
-1 %FINGER
  ( #(Finger .2 .2 #t) #(Finger 0 1.4 #t) e
-4 %FINGER
  dis cis dis #(Finger .2 .2 #t) e
-1 %FINGER
  )
%_______________________________________________________________ Takt 67 __ > % (99)
  #(Bogen -.3 0 #t) #(Keil 0 -1 #t) gis2 ( \> fis4
-2 %FINGER
  ) \!
%_______________________________________________________________ Takt 68 __ > % (100)
  \once\override Slur #'attachment-offset = #'((0 . 1.5) -.3 . 0)
  #(BogenKurve 2 #t)
  fis
-1 %FINGER
  ( dis'8.-.
-5 %FINGER
  ) dis16-.
-4 %FINGER
  dis4->
-5 %FINGER
%_______________________________________________________________ Takt 69 __ > % (101)
  \once\override Slur #'attachment-offset = #'((.3 . -.3) 0 . 1.9)
  #(BogenKurve 2 #t)
  cis
-4 %FINGER
  ( e,8.-.
-1 %FINGER
  ) e16-.
-2 %FINGER
  e4->
-3 %FINGER
%_______________________________________________________________ Takt 70 __ > % (102)
  \once\override Slur #'attachment-offset = #'((0 . 2) -.3 . 0)
  #(BogenKurve 2 #t)
  dis
-2 %FINGER
  ( h'8.-.
-5 %FINGER
  ) h16-.
-4 %FINGER
  h4->
-5 %FINGER
%_______________________________________________________________ Takt 71 __ > % (103)
  \once\override Slur #'attachment-offset = #'((.3 . -.3) 0 . 2.3)
  #(BogenKurve 2 #t)
  #(Finger -.1 .2 #t) ais
-4 %FINGER
  ( cis,8.-.
-1 %FINGER
  ) cis16-.
-2 %FINGER
  e4->
-4 %FINGER
%_______________________________________________________________ Takt 72 __ > % (104)
  dis8
-3 %FINGER
  ( e dis cis dis #(Finger .2 .2 #t) e
-1 %FINGER
  )
%%_______________________________________________________________ Takt 73 __ > % (105)
  #(Finger -.2 0 #t) #(Bogen .2 0 #t) #(Keil 0 -1 #t) gis2
-3 %FINGER
  ( \> fis4) \!
%%_______________________________________________________________ Takt 74 __ > % (106)
  dis8
-1 %FINGER
  ( #(Finger .2 .2 #t) #(Finger 0 1.2 #t) e
-4 %FINGER
  dis cis dis #(Finger .2 .2 #t) e
-1 %FINGER
  )
%%_______________________________________________________________ Takt 75 __ > % (107)
  #(Finger -.2 0 #t) #(Bogen .2 0 #t) #(Keil 0 -1 #t) gis2
-3 %FINGER
  ( \> fis4) \!
%%_______________________________________________________________ Takt 76 __ > % (108)
  \once\override Slur #'attachment-offset = #'((0 . 1.8) -.3 . 0)
  #(BogenKurve 2 #t)
  #(Text 0 -.8 #t) dis
-1 %FINGER
  -\markup { poco cresc. }
  ( h'8.-.
-5 %FINGER
  ) h16-.
-4 %FINGER
  h4
-5 %FINGER
  ->
%_______________________________________________________________ Takt 77 __ > % (109)
  \once\override Slur #'attachment-offset = #'((.3 . -.3) 0 . 2.3)
  #(BogenKurve 2 #t)
  ais
-4 %FINGER
  ( cis,8.-.
-1 %FINGER
  ) cis16-.
-3 %FINGER
  cis4->
-2 %FINGER
%_______________________________________________________________ Takt 78 __ > % (110)
  \once\override Slur #'attachment-offset = #'((0 . 2.8) -.3 . 0)
  #(BogenKurve 2 #t)
  h
-1 %FINGER
  (
  gis'8.-.
-5 %FINGER
  )
  gis16-.
-4 %FINGER
  gis4
-5 %FINGER
  ->
%_______________________________________________________________ Takt 79 __ > % (111)
  \once\override Slur #'attachment-offset = #'((.3 . -.3) 0 . 1)
  #(BogenKurve 2 #t)
  #(Text 0 -.6 #t) fis
-4 %FINGER
  -\dim
  (
  ais,8.-.
-1 %FINGER
  )
  ais16-.
-2 %FINGER
  e'4
-5 %FINGER
  ->
%_______________________________________________________________ Takt 80 __ > % (112)
  #(Dynamik 0 0 #t) <h dis>8
-2-4 %FINGER
  \mf ( <cis e> <h dis>
  <fis cis'> <h dis> <cis e> )
%_______________________________________________________________ Takt 81 __ > % (113)
  #(Finger -.2 .2 #t) <ais gis'>2
-5 %FINGER
  ( \> #(Finger .2 .2 #t) <ais fis'>4
-4 %FINGER
  \! )
%_______________________________________________________________ Takt 82 __ > % (114)
  <h dis >8
-2-4 %FINGER
  ( <cis e> <h dis>
  <fis cis'> <h dis> <cis e> )
%_______________________________________________________________ Takt 83 __ > % (115)
  #(Finger -.2 .2 #t) <ais gis'>2
-5 %FINGER
  ( \> #(Finger .2 .2 #t) <ais fis'>4
-4 %FINGER
  \! )
%_______________________________________________________________ Takt 84 __ > % (116)
  \once\override Slur #'attachment-offset = #'((0 . .4) -.5 . -.7)
  #(BogenKurve 2 #t) #(Finger -.2 0 #t)
  <dis fis>
-1-3 %FINGER
  (
  <fis dis'>8.-.
-2-5 %FINGER
  )
  <fis dis'>16-.
-1-5 %FINGER
  <fis dis'>4->
-2-5 %FINGER
%_______________________________________________________________ Takt 85 __ > % (117)
  \once\override Slur #'attachment-offset = #'((.6 . -.7) -.1 . .3)
  #(BogenKurve 2 #t)
  <e cis'>
-1-4 %FINGER
  (
  #(Finger .2 0 #t) <cis e>8.-.
-2-4 %FINGER
  )
  <cis e>16-.
-1-3 %FINGER
  <cis e>4->
-2-4 %FINGER
%_______________________________________________________________ Takt 86 __ > % (118)
  \once\override Slur #'attachment-offset = #'((0 . 0) -.6 . -.9)
  #(BogenKurve 2 #t) #(Finger -.1 0 #t)
  <h dis>
-1-3 %FINGER
  (
  <dis h'>8.-.
-2-5 %FINGER
  )
  <dis h'>16-.
-1-5 %FINGER
  <dis h'>4->
-2-5 %FINGER
%_______________________________________________________________ Takt 87 __ > % (119)
  \once\override Slur #'attachment-offset = #'((.6 . -.7) .1 . .4)
  #(BogenKurve 2 #t)
  <cis ais'>
-1-4 %FINGER
  (
  #(Finger .2 0 #t) <ais cis>8.-.
-2-3 %FINGER
  )
  <ais cis>16-.
-2-4 %FINGER
  <cis e>4->
-3-5 %FINGER
%_______________________________________________________________ Takt 88 __ > % (120)
  \setTextCresc
  \once\override TextSpanner #'extra-offset = #'(.7 . -.8)
  \once\set crescendoText = \markup { \hspace #-2 "" \raise #-.4 {
    \italic\bold { cresc. } \hspace #3 } }
  \once\override TextSpanner #'dash-period = #'8.2
  \once\override TextSpanner #'dash-fraction = #'0.11
  <h d>8
-2-4 %FINGER
  \< ( <cis e> <h d> <fis cis'> <h d> <cis e> )
%_______________________________________________________________ Takt 89 __ > % (121)
  \ArtikelFinger <ais g'>2->
-5 %FINGER
  ( <ais fis'>4 )
%_______________________________________________________________ Takt 90 __ > % (122)
  <h d>8
-2-4 %FINGER
  ( <cis e> <h d>
  <fis cis'> <h d> <cis e> )
%_______________________________________________________________ Takt 91 __ > % (123)
  \ArtikelFinger <ais g'>2->
-5 %FINGER
  ( <ais fis'>4 ) \!
%_______________________________________________________________ Takt 92 __ > % (124)
  \setTextCresc
  \once\override TextSpanner #'extra-offset = #'(-.3 . .2)
  \once\set crescendoText = \markup { \hspace #-2 "" \raise #-.4 {
    \italic\bold { dimin. } \hspace #2.7 } }
  \once\override TextSpanner #'dash-period = #'6.4
  \once\override TextSpanner #'dash-fraction = #'0.11
  \override Fingering #'extra-offset = #'(0 . .5)
  <d fis>
-3-5 %FINGER
  \< ( <fis, e'>8
-1-4 %FINGER
  ) [ r16 <fis e'>
-1-5 %FINGER
  ] ( <h d>4
-2-4 %FINGER
  )
  \revert Fingering #'extra-offset
%_______________________________________________________________ Takt 93 __ > % (125)
  <h d>
-3-5 %FINGER
  ( <eis, cis'>8
-1-4 %FINGER
  ) [ r16
  \once\override Slur #'direction = #1
  <eis cis'>
-1-5 %FINGER
  ] ~ ( <eis h'>4
-1-4 %FINGER
  ) \!
%_______________________________________________________________ Takt 94 __ > % (126)
  \context Staff <<
    { \voiceOne #(Dynamik 0 -2 #t) #(Finger -.2 -.7 #t) ais4
-2-3 %FINGER
      \p #(Dynamik -.5 7.7 #t) #(Finger 0 1.2 #t)
  \once\override Slur #'attachment-offset = #'((.3 . -.1) .2 . .3)
  #(BogenKurve 3.2 #t)
      cis2
-5 %FINGER
      ( \sf ~ cis4 fis,4
-1 %FINGER
      ) }
     \\
    { \voiceTwo fis2. ~ fis4 s }
  >>
%_______________________________________________________________ Takt 95 __ > % (127)
  \ArtikelFinger
  #(BogenKurve 5 #t)
\override Staff.Tie #'control-points =
% Li-x       Li-y    Streckung-x  Streckung-y
 #'((1   .   2.7)         (3.1     .     5)
    (11.4   .   5)     (13.5  .  2.7))
%  Länge     Höhe    Re-x   Re-y
  fis'->
-4 %FINGER
  ~ (
%_______________________________________________________________ Takt 96 __ > % (128)
\set Score.printKeyCancellation = ##t
  fis8 \f g fis cis d #(Finger .1 1 #t) h
-1 %FINGER
%_______________________________________________________________ Takt 97 __ > % (129)
  #(Finger -.2 -.8 #t) ais2
-2 %FINGER
  )
\revert Staff.Tie #'control-points
  \ArtikelFinger fis'4
-4 %FINGER
  -> ( ~
%_______________________________________________________________ Takt 18 __ > !! Takt 98 __ > % (130)
  fis8 g fis cis e d
%_______________________________________________________________ Takt 19 __ > !! Takt 99 __ > % (131)
  \once\override Slur #'attachment-offset = #'((9 . 2.5) 4.2 . 1.3)
  #(BogenKurve 1 #t)
  h2 ) (
  fis'4
-2 %FINGER
  -> ) ~
%_______________________________________________________________ Takt 20 __ > !! Takt 100 __ > % (132)
  \once\override Slur #'attachment-offset = #'((-4.7 . 2) -.2 . .2)
  #(Keil 0 -1 #t) fis8 ( \< g #(Finger .1 -.7 #t) eis
-1 %FINGER
  fis h #(Finger 0 -.2 #t) d
-5 %FINGER
%_______________________________________________________________ Takt 21 __ > !! Takt 101 __ > % (133)
  #(Artikel .2 .2 #t) d4-. \! )
  #(Bogen -.1 -.3 #t) eis, ( #(Artikel .2 .8 #t) d'-> ) ~
%_______________________________________________________________ Takt 22 __ > !! Takt 102 __ > % (134)
  d #(Bogen -.1 -.3 #t)
  \once\override PhrasingSlur #'attachment-offset = #'((-.4 . 1.5) -.2 . .5)
  \once\override PhrasingSlur #'ratio = #'1
  \once\override PhrasingSlur #'height-limit = #'4.5
  e,! \( (
  #(Artikel .3 .7 #t) #(Finger .1 1.2 #t) #(BogenKurve 2 #t) cis'->
-4 %FINGER
  ) ~
%_______________________________________________________________ Takt 23 __ > !! Takt 103 __ > % (135)
  #(Text -.7 -1.3 #t) #(Keil 0 -1 #t) cis8 \> h ais g
-1 %FINGER
  fis
-4 %FINGER
  \) cis
-2 %FINGER
  \! (
%_______________________________________________________________ Takt 24 __ > !! Takt 104 __ > % (136)
  #(Finger 0 1.3 #t) #(Dynamik 0 -.7 #t) d \p
-1 %FINGER
  #(Finger 0 .7 #t) g
-5 %FINGER
  fis #(Finger 0 1.6 #t) cis
-2 %FINGER
  d #(Finger 0 .8 #t) h
-1 %FINGER
%_______________________________________________________________ Takt 25 __ > !! Takt 105 __ > % (137)
  \once\override Slur #'attachment-offset = #'((8.7 . 3.1) 4.2 . 1.3)
  #(BogenKurve 1 #t)
  #(Finger -.2 -.8 #t) ais2 ) (
-2 %FINGER
  fis'4 )
-4 %FINGER
  -> ~
%_______________________________________________________________ Takt 26 __ > !! Takt 106 __ > % (138)
  \once\override Slur #'attachment-offset = #'((-4.7 . 1.4) -.2 . .2)
  fis8 ( g fis cis e d
%_______________________________________________________________ Takt 27 __ > !! Takt 107 __ > % (139)
  h2 )
  \once\override Slur #'attachment-offset = #'((.1 . .6) .2 . -.2)
  #(BogenKurve 4.6 #t) \VollRatio
  fis'4-1-> ( ~
%_______________________________________________________________ Takt 28 __ > !! Takt 108 __ > % (140)
  #(Text 0 -2 #t) fis8-\cresc fis' cis
-3 %FINGER
  d
-4 %FINGER
  #(Finger .1 -.7 #t) ais
-2 %FINGER
  #(Text .2 1 #t) #(Finger .2 .4 #t) h
-1 %FINGER
  )
%_______________________________________________________________ Takt 29 __ > !! Takt 109 __ > % (141)
  #(BogenKurve 2 #t)
  a!
-4 %FINGER
  ( g
    \setTextCresc
    \once\override TextSpanner #'extra-offset = #'(-1.5 . 12)
    \once\set crescendoText = \markup { \hspace #-.2 "" \raise #-.4 {
      \italic\bold { poco rit. } \hspace #2 } }
    \once\override TextSpanner #'dash-period = #'5.3
    \once\override TextSpanner #'dash-fraction = #'0.12
   h, \< cis d #(Finger .1 .5 #t) e
-4 %FINGER
   )
%_______________________________________________________________ Takt 30 __ > !! Takt 110 __ > % (142)
  \once\override Slur #'attachment-offset = #'((.3 . -.3) 0 . 0)
  g
-5 %FINGER
   ( #(Text .2 -.8 #t) fis-\dim h,
-1 %FINGER
  #(Finger 0 -.4 #t) d
-4 %FINGER
   cis fis,
%_______________________________________________________________ Takt 31 __ > !! Takt 111 __ > % (143)
  h4. )
-3 %FINGER
  #(BogenKurve 2 #t) #(Text -1 9.7 #t) fis8-\atempo \! ( [
  #(Finger 0 -.8 #t) h
_4 %FINGER
   b
_3 %FINGER
   ) ]
%%_______________________________________________________________ Takt 32 __ > !! Takt 112 __ > % (144)
  #(Text -.3 .7 #t) b4._2^\conanima^^ (
  #(Keil 0 0 #t) a8 [ \< cis e \! ] )
%%_______________________________________________________________ Takt 33 __ > !! Takt 113 __ > % (145)
  #(Keil 0 -.8 #t) #(Finger -.2 .4 #t) g4.
-5 %FINGER
  \> ( fis8 [ #(Finger 0 -.3 #t) cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%%_______________________________________________________________ Takt 34 __ > !! Takt 114 __ > % (146)
  #(Finger -.2 .4 #t) fis4.
-4 %FINGER
   ( e8 [ h cis ] )
%%_______________________________________________________________ Takt 35 __ > !! Takt 115 __ > % (147)
  #(Finger -.2 .4 #t) e4.
-4 %FINGER
  ( d8 [ cis
  h
-1 %FINGER
  ] )
%%_______________________________________________________________ Takt 36 __ > !! Takt 116 __ > % (148)
  h4.
-2 %FINGER
  ( #(Keil .4 .4 #t) a8 [ \< cis e ] ) \!
%%_______________________________________________________________ Takt 37 __ > !! Takt 117 __ > % (149)
  #(Finger -.2 .4 #t) #(Keil 0 -.3 #t) g4.
-5 %FINGER
  \> ( fis8 [
  #(Finger 0 -.3 #t) cis
-2 %FINGER
  d
-1 %FINGER
  ] ) \!
%%_______________________________________________________________ Takt 38 __ > !! Takt 118 __ > % (150)
  #(Finger -.2 .4 #t) fis4.
-4 %FINGER
  ( e8 [
  #(Finger 0 1.1 #t) h
-1 %FINGER
  cis
-3 %FINGER
  ] )
%%_______________________________________________________________ Takt 39 __ > !! Takt 119 __ > % (151)
  <<
  {
  \override Stem #'direction = #1
  \once\override Slur #'direction = #-1
  #(Bogen 0 -.5 #t) #(BogenKurve 6 #t)
\once\override Staff.Slur #'control-points =
% Linker Fixpunkt
                     % Linker Ziehpunkt
 #'((.6 . -1)
                         (2 . -4)
                         (12.8 . -5.3)
    (13.4 . -.1))
                     % Rechter Ziehpunkt
% Rechter Fixpunkt
  #(Text 3.5 0 #t) ais4.
^2 %FINGER
  ^\rit
  (
  cis8
^4 %FINGER
  [
  g
^1 %FINGER
  cis
^5 %FINGER
  ] )
  \revert Stem #'direction
  } \\ {
  \override Stem #'direction = #-1
  s4 s
  g
  \revert Stem #'direction
  } >>
%%_______________________________________________________________ Takt 40 __ > !! Takt 120 __ > % (152)
  \once\override Slur #'attachment-offset = #'((.2 . 2.3) -.4 . .3)
  #(Text 0 .5 #t) fis4.
-2 %FINGER
  ^\atempo (
  #(Finger 0 -.2 #t) #(Keil .3 .1 #t) ais8
-3 %FINGER
   \< [ #(Finger 0 -.2 #t) cis
-4 %FINGER
   #(Finger .1 0 #t) e
-1 %FINGER
   \! ] )
%%_______________________________________________________________ Takt 41 __ > !! Takt 121 __ > % (153)
  #(Keil 0 -.6 #t) #(Finger -.2 .4 #t) g4.
-5 %FINGER
  \> ( fis8 [ #(Finger 0 -.3 #t) cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%%_______________________________________________________________ Takt 42 __ > !! Takt 122 __ > % (154)
  #(Finger -.2 .4 #t) fis4.
-4 %FINGER
  \> ( e8 [ h cis \! ] )
%_______________________________________________________________ Takt 43 __ > !! Takt 123 __ > % (155)
  #(Finger -.2 .4 #t) e4.
-4 %FINGER
  \> ( d8 [ cis h
-1 %FINGER
  \! ] )
%_______________________________________________________________ Takt 44 __ > !! Takt 124 __ > % (156)
  h4.
-2 %FINGER
  ( a8 [ \< cis e \! ] )
%_______________________________________________________________ Takt 45 __ > !! Takt 125 __ > % (157)
  #(Keil 0 -.8 #t) #(Finger -.2 .4 #t) g4.
-5 %FINGER
  \> ( fis8 [ #(Finger 0 -.3 #t) cis
-2 %FINGER
  d
-1 %FINGER
  \! ] )
%_______________________________________________________________ Takt 46 __ > !! Takt 126 __ > % (158)
  \once\override Slur #'attachment-offset = #'((.5 . -.5) 0 . .2)
  #(BogenKurve 4 #t)
  fis4.
-3 %FINGER
  -^ ( e8 [ #(Finger 0 .5 #t) #(Dynamik 0 -1.2 #t) fis'
-5 %FINGER
   \f e ]
%_______________________________________________________________ Takt 47 __ > !! Takt 127 __ > % (159)
  d cis! #(Finger .1 -.9 #t) c
-1 %FINGER
  h
-3 %FINGER
  #(Keil 0 -.7 #t) ais \> a
%_______________________________________________________________ Takt 48 __ > !! Takt 128 __ > % (160)
  #(Finger .1 -.9 #t) gis
-2 %FINGER
  g fis
-4 %FINGER
  cis
-2 %FINGER
  d h
-1 %FINGER
  \!
%_______________________________________________________________ Takt 49 __ > !! Takt 129 __ > % (161)
  ais4
-2 %FINGER
  )
  \once\override Slur #'attachment-offset = #'((5 . 2.5) 3.7 . 1)
  #(BogenKurve 1 #t)
  r ( #(Dynamik 0 -.4 #t) #(BogenKurve 3.5 #t) a'!
-5 %FINGER
  ) \sf
%%_______________________________________________________________ Takt 50 __ > !! Takt 130 __ > % (162)
  \once\override Slur #'attachment-offset = #'((-4.7 . .5) 0 . 0)
  #(BogenKurve 5 #t)
  #(Finger 0 -.9 #t) gis8 (
-4 %FINGER
  #(Finger 0 -1 #t) g
-5 %FINGER
  fis
-4 %FINGER
  cis
-2 %FINGER
  e d
%%_______________________________________________________________ Takt 51 __ > !! Takt 131 __ > % (163)
  h4 ) r #(Dynamik 0 -.4 #t)
  \once\override Slur #'attachment-offset = #'((.2 . -.3) -.2 . .2)
  #(BogenKurve 3.5 #t) a'
-5 %FINGER
  \sf (
%%_______________________________________________________________ Takt 52 __ > !! Takt 132 __ > % (164)
  #(Keil 0 -1.3 #t) #(Finger 0 -.8 #t) gis8
-4 %FINGER
  \< #(Finger 0 -.8 #t) g
-3 %FINGER
  #(Finger 0 -.4 #t) eis
-1 %FINGER
  fis h #(Finger 0 -.2 #t) d
-5 %FINGER
%%_______________________________________________________________ Takt 53 __ > !! Takt 133 __ > % (165)
  #(Artikel .2 .2 #t) d4-. \! )
  #(Bogen -.2 -.6 #t) eis, ( #(Artikel 0 .5 #t) d'-> ) ~
%%_______________________________________________________________ Takt 54 __ > !! Takt 134 __ > % (166)
  d #(Bogen -.1 -.3 #t)
  \once\override PhrasingSlur #'attachment-offset = #'((-.4 . 2) 2.2 . 1.2)
  \once\override PhrasingSlur #'ratio = #'1
  \once\override PhrasingSlur #'height-limit = #'6
  e,! \( (
  #(Artikel 0 .8 #t) #(Finger 0 1.2 #t) #(BogenKurve 2 #t) cis'->
-4 %FINGER
  ) (
%_______________________________________________________________ Takt 55 __ > !! Takt 135 __ > % (167)
  c8 )
-5 %FINGER
  h #(Text 0 -1.2 #t) ais-\rit
  a
-1 %FINGER
  #(Keil 0 -.3 #t) gis
-4 %FINGER
  \> g
%_______________________________________________________________ Takt 56 __ > !! Takt 136 __ > % (168)
  fis f e
-4 %FINGER
  d cis h \! \)
%_______________________________________________________________ Takt 57 __ > !! Takt 137 __ > % (169)
  \once\override Slur #'attachment-offset = #'((-5.2 . 4.2) -7.3 . -1.3)
  #(BogenKurve 2 #t)
  ais2 (
-2 %FINGER
  \ArtikelFinger g'4
-5 %FINGER
  -> ) (
%_______________________________________________________________ Takt 58 __ > !! Takt 138 __ > % (170)
  fis8 g fis #(Finger 0 -.2 #t) cis
-2 %FINGER
  e d
%_______________________________________________________________ Takt 59 __ > !! Takt 139 __ > % (171)
  h2 )
  #(Text .7 -1 #t) #(BogenKurve 3.4 #t) \VollRatio
  \once\override Slur #'attachment-offset = #'((.2 . .6) 0 . -.2)
  fis'4
-1 %FINGER
  -> (
%_______________________________________________________________ Takt 60 __ > !! Takt 140 __ > % (172)
  #(Finger 0 .5 #t) #(Dynamik 0 -1.4 #t) fis'8
-5 %FINGER
  \f cis
-2 %FINGER
  #(Finger 0 -.2 #t) d
-3 %FINGER
  #(Finger 0 -.7 #t) ais
-1 %FINGER
  #(Finger 0 1.3 #t) h
-5 %FINGER
  #(Finger .1 .4 #t) fis
-2 %FINGER
  )
%_______________________________________________________________ Takt 61 __ > !! Takt 141 __ > % (173)
  #(Text -.9 -.9 #t) #(Finger -.1 -.5 #t) a!
-4 %FINGER
  -\markup { calando \hspace #2.5 e \hspace #3 dimin. }
  ( g h, cis e #(Finger .2 .5 #t) g
-5 %FINGER
   )
%_______________________________________________________________ Takt 62 __ > !! Takt 142 __ > % (174)
  #(Finger -.2 .5 #t) g
-4 %FINGER
  ( fis h,
-1 %FINGER
  d
-4 %FINGER
  cis fis,
  h4 ) r r
%_______________________________________________________________ Takt 144 __ > % (176)
}

KPeins = \once\override Staff.PianoPedalBracket #'shorten-pair = #'(0 . 1.5)
KPeinsacht = \once\override Staff.PianoPedalBracket #'shorten-pair = #'(0 . 1.8)
KPzwei = \once\override Staff.PianoPedalBracket #'shorten-pair = #'(0 . 2.5)
KPzweiacht = \once\override Staff.PianoPedalBracket #'shorten-pair = #'(0 . 2.8)
KPdrei = \once\override Staff.PianoPedalBracket #'shorten-pair = #'(0 . 3.5)
KPdreiacht = \once\override Staff.PianoPedalBracket #'shorten-pair = #'(0 . 3.8)

links =  \context Staff \notes\relative c{
  \context Voice=links
  r4
  %\pp
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  h <fis' h d> <fis h d>                                % Takt  1
  cis <fis cis' e> <fis cis' e>                         % Takt  2
  ais, <fis' cis' e> <fis ais e'>                       % Takt  3
  h, <fis' h d> <fis h d>                               % Takt  4
  h, <fis' h d> <fis h d>                               % Takt  5
  h, <gis' h d> <gis h d>                               % Takt  6
  h, <g'! h e> <g h e>                                  % Takt  7
  h, <fis' cis' e> <fis ais e'>                         % Takt  8
  h, <fis' h d> <fis h d>                               % Takt  9
  cis <fis cis' e> <fis cis' e>                         % Takt 10
  fis, <fis' ais e'> <fis cis' e>                       % Takt 11
  h, <fis' h d> <fis h d>                               % Takt 12
  d <fis h d> <fis h d>                                 % Takt 13
  e <h' cis g'> r                                       % Takt 14
  << { r4 <h d> <ais e'> } \\ { fis2. } >>              % Takt 15
  <h d>4 h, r                                           % Takt 16
  h <fis' h d> <fis h d>                                % Takt 17
  cis <fis cis' e> <fis cis' e>                         % Takt 18
  ais, <fis' cis' e> <fis ais e'>                       % Takt 19
  h, <fis' h d> <fis h d>                               % Takt 20
  h, <fis' h d> <fis h d>                               % Takt 21
  h, <gis' h d> <gis h d>                               % Takt 22
  h, <g'! h e> <g h e>                                  % Takt 23
  h, <fis' cis' e> <fis ais e'>                         % Takt 24
  h, <fis' h d> <fis h d>                               % Takt 25
  cis <fis cis' e> <fis cis' e>                         % Takt 26
  fis, <fis' ais e'> <fis cis' e>                       % Takt 27
  h, <fis' h d> <fis h d>                               % Takt 28
  d <fis h d> <fis h d>                                 % Takt 29
  e <g cis> r                                           % Takt 30
  << { r4 <h d> <ais e'> } \\ { fis2. } >>              % Takt 30
  h,4-. <fis' d'>-. d_4 (                               % Takt 32
  cis-. ) <g' a e'> <g a e'>                            % Takt 33 (65)
  d <fis a d> <fis a d>                                 % Takt 34 (66)
  a, <a' cis g'> <a e' g>                               % Takt 35 (67)
  d, <a' d fis> <a d fis>                               % Takt 36 (68)
  cis, <a' e' g> <a e' g>                               % Takt 37 (69)
  d, <a' d fis> <a d fis>                               % Takt 38 (70)
  g, <g' h e> <g h e>                                   % Takt 39 (71)
  <fis, fis'> <fis' cis' e> <fis h e>                   % Takt 40 (72)
  <fis, fis'> <fis' cis' e> <fis ais e'>                % Takt 41 (73)
  h, <fis' h d> <fis h d>                               % Takt 42 (74)
  a, <a' cis g'> <a e' g>                               % Takt 43 (75)
  d, <a' d fis> <a d fis>                               % Takt 44 (76)
  cis, <a' e' g> <a e' g>                               % Takt 45 (77)
  d, <a' d fis> <a d fis>                               % Takt 46 (78)
  g, <g' e'> r                                          % Takt 47 (79)
  fis, <fis' e'> ais,                                   % Takt 48 (80)
  h <fis' d'> <fis d'>                                  % Takt 49 (81)
  cis <fis cis' e> <fis cis' e>                         % Takt 50 (82)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 51 (83)
  h, <fis' h d> <fis h d>                               % Takt 52 (84)
  h, <fis' h d> <fis h d>                               % Takt 53 (85)
  h, <gis' h d> <gis h d>                               % Takt 54 (86)
  h, <g'! h e> <g h e>                                  % Takt 55 (87)
  h, <fis' ais e'> <fis ais e'>                         % Takt 56 (88)
  h, <fis' h d> <fis h d>                               % Takt 57 (89)
  cis <fis cis' e> <fis cis' e>                         % Takt 58 (90)
  ais, <fis' ais e'> <fis cis' e>                       % Takt 59 (91)
  h, <fis' h d> <fis h d>                               % Takt 60 (92)
  d <fis h d> <fis h d>                                 % Takt 61 (93)
  e <g cis> r                                           % Takt 62 (94)
  << { r4 <h d> <ais e'> } \\ { fis2. } >>              % Takt 63 (95)
  h,4 <fis' d'>
  \once\override Slur #'attachment-offset = #'((0 . 0) -3.8 . -2.2)
  #(BogenKurve 1.7 #t)
  d_4 (                                                 % Takt 64 (96)
  <h' d>4 ) h, r                                        % Takt 64 (96) % alternativ
  h <fis' h dis> <fis h dis>                            % Takt 65 (97)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 66 (98)
  h, <fis' h dis> <fis h dis>                           % Takt 67 (99)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 68 (100)
  h, <fis' h dis> <fis h dis>                           % Takt 69 (101)
  fis, <fis' ais e'> <fis ais e'>                       % Takt 70 (102)
  h, <fis' h dis> <fis h dis>                           % Takt 71 (103)
  fis, <fis' ais e'> <fis ais e'>                       % Takt 72 (104)
  h, <fis' h dis> <fis h dis>                           % Takt 73 (105)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 74 (106)
  h, <fis' h dis> <fis h dis>                           % Takt 75 (107)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 76 (108)
  h, <fis' h dis> <gis h dis>                           % Takt 77 (109)
  cis, <ais' cis fis> <ais cis fis>                     % Takt 78 (110)
  cis, <gis' cis eis> <gis cis eis>                     % Takt 79 (111)
  fis, <fis' cis' e!> <fis cis' e>                      % Takt 80 (112)
  h, <fis' h dis> <fis h dis>                           % Takt 81 (113)
  fis, <fis' cis' e> <fis cis' e>                       % Takt 82 (114)
  h, <fis' h dis> <fis h dis>                           % Takt 83 (115)
  fis, <fis' cis' e> <fis cis' e>                       % Takt 84 (116)
  h, <fis' h dis> <fis h dis>                           % Takt 85 (117)
  fis, <fis' ais e'> <fis ais e'>                       % Takt 86 (118)
  h, <fis' h dis> <fis h dis>                           % Takt 87 (119)
  fis, <fis' cis' e> <fis cis' e>                       % Takt 88 (120)
  h, <fis' h d> <fis h d>                               % Takt 89 (121)
  fis, <fis' cis' e> <fis cis' e>                       % Takt 90 (122)
  h, <fis' h d> <fis h d>                               % Takt 91 (123)
  fis, <fis' cis' e> <fis cis' e>                       % Takt 92 (124)
  h, <fis' h d> h,                                      % Takt 93 (125)
  g <cis eis h'> <cis eis h'>                           % Takt 94 (126)
  fis, <cis' fis ais> <cis fis ais>                     % Takt 95 (127)
  fis, <fis' ais e'!> <fis ais e'>                      % Takt 96 (128)
  h,, <fis'' h d> <fis h d>                             % Takt 97 (129)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%  Die Einfügung vom Anfang:  %%%%%%%%%%%%%%%%%%%%%%%%
  cis <fis cis' e> <fis cis' e>                         % Takt 18 % Takt 98 (130)
  ais, <fis' cis' e> <fis ais e'>                       % Takt 19 % Takt 99 (131)
  h, <fis' h d> <fis h d>                               % Takt 20 % Takt 100 (132)
  h, <fis' h d> <fis h d>                               % Takt 21 % Takt 101 (133)
  h, <gis' h d> <gis h d>                               % Takt 22 % Takt 102 (134)
  h, <g'! h e> <g h e>                                  % Takt 23 % Takt 103 (135)
  h, <fis' cis' e> <fis ais e'>                         % Takt 24 % Takt 104 (136)
  h, <fis' h d> <fis h d>                               % Takt 25 % Takt 105 (137)
  cis <fis cis' e> <fis cis' e>                         % Takt 26 % Takt 106 (138)
  fis, <fis' ais e'> <fis cis' e>                       % Takt 27 % Takt 107 (139)
  h, <fis' h d> <fis h d>                               % Takt 28 % Takt 108 (140)
  d <fis h d> <fis h d>                                 % Takt 29 % Takt 109 (141)
  e <h' cis g'> r                                       % Takt 30 % Takt 110 (142)
  << { r4 <h d> <ais e'> } \\ { fis2. } >>              % Takt 30 % Takt 111 (143)
  h,4-.
  \once\override Slur #'attachment-offset = #'((5.2 . -3.3) 6 . 1.5)
    <fis' d'>-. ( d )                                   % Takt 32 % Takt 112 (144)
  \once\override Slur #'attachment-offset = #'((-5.4 . 2.7) -5.2 . -3)
  cis-. ( <g' a e'> ) <g a e'>                          % Takt 33 (65) % Takt 113 (145)
  d <fis a d> <fis a d>                                 % Takt 34 (66) % Takt 114 (146)
  a, <a' cis g'> <a e' g>                               % Takt 35 (67) % Takt 115 (147)
  d, <a' d fis> <a d fis>                               % Takt 36 (68) % Takt 116 (148)
  cis, <a' e' g> <a e' g>                               % Takt 37 (69) % Takt 117 (149)
  d, <a' d fis> <a d fis>                               % Takt 38 (70) % Takt 118 (150)
  g, <g' h e> <g h e>                                   % Takt 39 (71) % Takt 119 (151)
  <fis, fis'> <fis' cis' e> <fis h e>                   % Takt 40 (72) % Takt 120 (152)
  <fis, fis'> <fis' cis' e> <fis ais e'>                % Takt 41 (73) % Takt 121 (153)
  h, <fis' h d> <fis h d>                               % Takt 42 (74) % Takt 122 (154)
  a, <a' cis g'> <a e' g>                               % Takt 43 (75) % Takt 123 (155)
  d, <a' d fis> <a d fis>                               % Takt 44 (76) % Takt 124 (156)
  cis, <a' e' g> <a e' g>                               % Takt 45 (77) % Takt 125 (157)
  d, <a' d fis> <a d fis>                               % Takt 46 (78) % Takt 126 (158)
  g, <g' e'> r                                          % Takt 47 (79) % Takt 127 (159)
  fis, <fis' e'> ais,                                   % Takt 48 (80) % Takt 128 (160)
  h <fis' d'> <fis d'>                                  % Takt 49 (81) % Takt 129 (161)
  cis <fis cis' e> <fis cis' e>                         % Takt 50 (82) % Takt 130 (162)
  ais, <fis' cis' e> <fis cis' e>                       % Takt 51 (83) % Takt 131 (163)
  h, <fis' h d> <fis h d>                               % Takt 52 (84) % Takt 132 (164)
  h, <fis' h d> <fis h d>                               % Takt 53 (85) % Takt 133 (165)
  h, <gis' h d> <gis h d>                               % Takt 54 (86) % Takt 134 (166)
  h, <g'! h e> <g h e>                                  % Takt 55 (87) % Takt 135 (167)
  h, <fis' ais e'> <fis ais e'>                         % Takt 56 (88) % Takt 136 (168)
  h, <fis' h d> <fis h d>                               % Takt 57 (89) % Takt 137 (169)
  cis <fis cis' e> <fis cis' e>                         % Takt 58 (90) % Takt 138 (170)
  ais, <fis' ais e'> <fis cis' e>                       % Takt 59 (91) % Takt 139 (171)
  h, <fis' h d> <fis h d>                               % Takt 60 (92) % Takt 140 (172)
  d <fis h d> <fis h d>                                 % Takt 61 (93) % Takt 141 (173)
  e <g cis> r                                           % Takt 62 (94) % Takt 142 (174)
  << { r4 <h d> <ais e'> } \\ { fis2. } >>              % Takt 63 (95) % Takt 143 (175)
  <h d>4 h, r                                           % Takt 144 (176)
}

pedal =  \context Staff \notes\relative c,{
  \context Voice=pedal
  \set Staff.pedalSustainStyle = #'bracket
  \override Staff.PianoPedalBracket #'extra-offset = #'(.5 . 1.5)
  \override Staff.SustainPedal #'self-alignment-X = #'-.5
  \stemDown
  \override Voice.NoteHead #'transparent = ##t
  s4                    % Auftakt
  \once\override Staff.PianoPedalBracket #'edge-height = #'(0 . 1)
  \once\override Staff.PianoPedalBracket #'shorten-pair = #'(3 . 0)
  #(Text -1.3 1.6 #t)
  d1*1/4_\markup { \musicglyph #"pedal-Ped" }
    \PR s s \PH         % Takt  1
  d \PR s s \PH         % Takt  2
  \KPdreiacht d \PR s s \PH            % Takt  3
  d \PR s s \PH         % Takt  4
  d \PR s s \PH         % Takt  5
  d \PR s s \PH         % Takt  6
  d \PR s s \PH         % Takt  7
  d \PR s s \PH         % Takt  8
  d \PR s s \PH         % Takt  9
  d \PR s s \PH         % Takt 10
  d \PR s s \PH         % Takt 11
  d \PR s s \PH         % Takt 12
  \stemUp
  d \PR s s \PH         % Takt 13
  d \PR s s \PH         % Takt 14
  s s s                 % Takt 15
  s s s                 % Takt 16
  \stemDown
  d \PR s s \PH         % Takt 17
  d \PR s s \PH         % Takt 18
  \KPdreiacht d \PR s s \PH            % Takt 19
  d \PR s s \PH         % Takt 20
  d \PR s s \PH         % Takt 21
  d \PR s s \PH         % Takt 22
  d \PR s s \PH         % Takt 23
  d \PR s s \PH         % Takt 24
  d \PR s s \PH         % Takt 25
  d \PR s s \PH         % Takt 26
  d \PR s s \PH         % Takt 27
  d \PR s s \PH         % Takt 28
  \stemUp
  d \PR s s \PH         % Takt 29
  d \PR s s \PH         % Takt 30
  s s s                 % Takt 31
  s s s                 % Takt 32
  \stemDown
  d \PR s s \PH         % Takt 33
  \stemUp
  d \PR s s \PH         % Takt 34
  \stemDown
  d \PR s s \PH         % Takt 35
  \stemUp
  d \PR s s \PH         % Takt 36
  \stemDown
  d \PR s s \PH         % Takt 37
  \stemUp
  d \PR s s \PH         % Takt 38
  \stemDown
  d \PR s s \PH         % Takt 39
  \KPeins d \PR s s \PH % Takt 40
  d \PR s s \PH         % Takt 41
  d \PR s s \PH         % Takt 42
  d \PR s s \PH         % Takt 43
  \stemUp
  d \PR s s \PH         % Takt 44
  \stemDown
  d \PR s s \PH         % Takt 45
  \stemUp
  d \PR s s \PH         % Takt 46
  \stemDown
  \KPzwei d \PR s s \PH % Takt 47
  \KPzwei d \PR s s \PH % Takt 48
  d \PR s s \PH         % Takt 49
  d \PR s s \PH         % Takt 50
  d \PR s s \PH         % Takt 51
  d \PR s s \PH         % Takt 52
  d \PR s s \PH         % Takt 53
  d \PR s s \PH         % Takt 54
  d \PR s s \PH         % Takt 55
  d \PR s s \PH         % Takt 56
  d \PR s s \PH         % Takt 57
  d \PR s s \PH         % Takt 58
  \KPdreiacht d \PR s s \PH            % Takt 59
  d \PR s s \PH         % Takt 60
  \stemUp
  d \PR s s \PH         % Takt 61
  d \PR s s \PH         % Takt 62
  \stemDown
  s s s                 % Takt 63
  s s s                 % Takt 64
  s s s                 % Takt 64 % alternativ
  dis \PR s s \PH         % Takt 65
  dis \PR s s \PH         % Takt 66
  dis \PR s s \PH         % Takt 67
  dis \PR s s \PH         % Takt 68
  dis \PR s s \PH         % Takt 69
  dis \PR s s \PH         % Takt 70
  dis \PR s s \PH         % Takt 71
  dis \PR s s \PH         % Takt 72
  dis \PR s s \PH         % Takt 73
  dis \PR s s \PH         % Takt 74
  dis \PR s s \PH         % Takt 75
  dis \PR s s \PH         % Takt 76
  \KPzweiacht dis \PR s s \PH            % Takt 77
  dis \PR s s \PH         % Takt 78
  dis \PR s s \PH         % Takt 79
  dis \PR s s \PH         % Takt 80
  dis \PR s s \PH         % Takt 81
  dis \PR s s \PH         % Takt 82
  dis \PR s s \PH         % Takt 83
  dis \PR s s \PH         % Takt 84
  dis \PR s s \PH         % Takt 85
  dis \PR s s \PH         % Takt 86
  dis \PR s s \PH         % Takt 87
  dis \PR s s \PH         % Takt 88
  dis \PR s s \PH         % Takt 89
  dis \PR s s \PH         % Takt 90
  dis \PR s s \PH         % Takt 91
  dis \PR s s \PH         % Takt 92
  dis \PR s s \PH         % Takt 93
  dis \PR s s \PH         % Takt 94
  dis \PR s s \PH         % Takt 95
  dis \PR s s \PH         % Takt 96
  \once\override Staff.PianoPedalBracket #'extra-offset = #'(.5 . .5)
  s \PR s s \PH         % Takt 97
  d1*1/4 \PR s s \PH         % Takt 98
  \KPzweiacht d \PR s s \PH            % Takt 99
  d \PR s s \PH         % Takt 100
  d \PR s s \PH         % Takt 101
  d \PR s s \PH         % Takt 102
  d \PR s s \PH         % Takt 103
  d \PR s s \PH         % Takt 104
  d \PR s s \PH         % Takt 105
  d \PR s s \PH         % Takt 106
  d \PR s s \PH         % Takt 107
  d \PR s s \PH         % Takt 108
  \stemUp
  d \PR s s \PH         % Takt 109
  d \PR s s \PH         % Takt 110
  \stemDown
  s s s                 % Takt 111
  s s s                 % Takt 112
  d \PR s s \PH         % Takt 113
  \stemUp
  d \PR s s \PH         % Takt 114
  \stemDown
  d \PR s s \PH         % Takt 115
  \stemUp
  d \PR s s \PH         % Takt 116
  \stemDown
  d \PR s s \PH         % Takt 117
  \stemUp
  d \PR s s \PH         % Takt 118
  \stemDown
  d \PR s s \PH         % Takt 119
  \KPdrei d \PR s s \PH % Takt 120
  d \PR s s \PH         % Takt 121
  d \PR s s \PH         % Takt 122
  d \PR s s \PH         % Takt 123
  \stemUp
  d \PR s s \PH         % Takt 124
  \stemDown
  d \PR s s \PH         % Takt 125
  \stemUp
  d \PR s s \PH         % Takt 126
  \stemDown
  \KPeins d \PR s s \PH % Takt 127
  \KPdrei d \PR s s \PH % Takt 128
  d \PR s s \PH         % Takt 129
  d \PR s s \PH         % Takt 130
  d \PR s s \PH         % Takt 131
  d \PR s s \PH         % Takt 132
  d \PR s s \PH         % Takt 133
  d \PR s s \PH         % Takt 134
  d \PR s s \PH         % Takt 135
  d \PR s s \PH         % Takt 136
  d \PR s s \PH         % Takt 137
  d \PR s s \PH         % Takt 138
  \KPzweiacht d \PR s s \PH            % Takt 139
  d \PR s s \PH         % Takt 140
  \stemUp
  d \PR s s \PH         % Takt 141
  d \PR s s \PH         % Takt 142
  \unHideNotes
}

\score{
  \context PianoStaff
    \with { 
      verticalAlignmentChildCallback = #(futz-alignment-callback '(
        (0 . 9.5)
        (1 . 10)
        (2 . 12)
        (3 . 10)
        (4 . 10)
        (5 . 11.6)
        (15 . 12.6)
        (17 . 10)
        (18 . 11.4)
        (19 . 11)
        (20 . 11)
        (21 . 11.4)
        (22 . 11.4)
        (23 . 12)
      ))
      \override Beam #'auto-knee-gap = #'()
    }
  <<
    \context Staff = up <<
      \global
      \rechts
    >>
    \context Staff = down <<
      \global
      \clef bass
      \links
% Für eine passable midi-Ausgabe muß man das Pedal auskommentieren und zu Beginn
% der linken Hand ein pianissimo setzen.
      \pedal
    >>
  >>
  \paper{
    #(paper-set-staff-size (* 6.7 mm))
    indent = 11.0 \mm
    interscoreline = 0.0 \mm
    interscorelinefill = 1.0 \mm
    linewidth = 19.0 \cm
    lastpagefill = 1.0 \mm
%%%   ACHTUNG: Wenn das Pedal auskommentiert wurde, muß der folgende Wert
%%%   UNBEDINGT auf 1.64 stehen (ansonsten auf 1.62):
    \context { \ScoreContext \override SpacingSpanner #'spacing-increment = #1.64 }
    \context { \PianoStaffContext
      \override VerticalAlignment #'forced-distance = #10.5
    }
  }
  \midi{ \tempo 4 = 152 }
}
