\version "2.2.6"

\header {
  filename      =       "op-25-01.ly"
  title         =       "\\vspace{-14mm}13. Etüde As\/-Dur\\\\\\ \\vspace{-14mm}"
  composer      =       "Fr\\'ed\\'eric Chopin (1810 - 1849)\\\\\\ \\vspace{-4mm}"
  opus          =       "\small Opus 25, Nr. 1\\\\\\ \\vspace{-4mm}"
  enteredby     =       "Roland Goretzki"
  tagline       =       ""

 mutopiatitle = "Etüde As-Dur"
 mutopiacomposer = "ChopinFF"
 mutopiaopus = "O 25"
 mutopiainstrument = "Piano"
 date = "1828-1831"
 source = "Peters, Herrmann Scholtz, 1900b"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Roland Goretzki"
 maintainerEmail = "roland@roland-goretzki.de"
 lastupdated = "2004/October/30"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/10/30-489"
}

\include "deutsch.ly"

global =  \notes {
  \key as \major
  \partial 4
  \time 4/4
  s4
  s1*49
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %

oben = \change Staff = up
unten = \change Staff = down

%%%   Für den Pedalwechsel des normalen Pedals (PC für Pedal Change):
PH = \sustainUp
PR = \sustainDown

PIANO = \markup { \dynamic p }

cresc = \markup { \fontsize #1.1 \italic cresc. }
dimin = \markup { \fontsize #1.1 \italic dimin. }
dim = \markup { \fontsize #1.1 \italic dim. }
ritard = \markup { \fontsize #1.1 \italic ritard. }
rit = \markup { \fontsize #1.1 \italic rit. }
nuto = \markup { \fontsize #1.1 \italic ritenuto }
appa = \markup { \italic \fontsize #1.1 appassionato }
tempO = \markup { \italic \fontsize #1.1 { a tempo } }
smorzando = \markup { \italic \fontsize #1.1 { smorzando } }
oktava = \markup { \finger\bold\fontsize #1.8 \italic "8" }

CRESC = \markup { \fontsize #1.1 \italic\bold cresc. }
DIMIN = \markup { \fontsize #1.1 \italic\bold dimin. }
DIM = \markup { \fontsize #1.1 \italic\bold dim. }
RITARD = \markup { \fontsize #1.1 \italic\bold ritard. }
RIT = \markup { \fontsize #1.1 \italic\bold rit. }
NUTO = \markup { \fontsize #1.1 \italic\bold ritenuto }
APPA = \markup { \italic\bold \fontsize #1.1 appassionato }
TEMPO = \markup { \italic\bold \fontsize #1.1 { a tempo } }
SMORZANDO = \markup { \italic\bold \fontsize #1.1 { smorzando } }
OKTAVA = \markup { \finger\bold\fontsize #2.8 \italic "8" }

%%%   Zum Einfügen eines Zusatzabstandes:
LargeExtraSpace = \once\override Score.SeparationItem #'padding = #3
ExtraSpace = \once\override Score.SeparationItem #'padding = #1
HalbExtraSpace = \once\override Score.SeparationItem #'padding = #.5

iiiHohePause = \once\override Staff.Rest #'extra-offset = #'(0 . 3)
iiHohePause = \once\override Staff.Rest #'extra-offset = #'(0 . 2)
iHohePause = \once\override Staff.Rest #'extra-offset = #'(0 . 1)
NormalePause = \revert Staff.Rest #'extra-offset
iTiefePause = \once\override Staff.Rest #'extra-offset = #'(0 . -1)
iiTiefePause = \once\override Staff.Rest #'extra-offset = #'(0 . -2)
iiiTiefePause = \once\override Staff.Rest #'extra-offset = #'(0 . -3)

%%%   iiTiefesPedal (etwas nach rechts verschoben, für die Taktenden):
iiTiefesPedalR = \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -2)
%%%   StandardKorrekturPedal:
SKP = \once\override Staff.SustainPedal #'extra-offset = #'(-.3 . -1.65)
%%%   StandardKorrekturPedal (etwas nach rechts verschoben, für die Taktenden):
SKPr = \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -1.65)

%%%   StandardKorrekturPedal ab Seite 2:
iiSKP = \once\override Staff.SustainPedal #'extra-offset = #'(-.3 . -1.85)
%%%   StandardKorrekturPedal zwei (etwas nach rechts verschoben, für die Taktenden):
iiSKPr = \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -1.85)

iiiHohesPedal = \once\override Staff.SustainPedal #'extra-offset = #'(0 . 3)
iiHohesPedal = \once\override Staff.SustainPedal #'extra-offset = #'(0 . 2)
iHohesPedal = \once\override Staff.SustainPedal #'extra-offset = #'(0 . 1)
iTiefesPedal = \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1)
iiTiefesPedal = \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2)
iiiTiefesPedal = \once\override Staff.SustainPedal #'extra-offset = #'(0 . -3)

% Für dauernde Pedaleinstellung:
DiiiHohesPedal = \override Staff.SustainPedal #'extra-offset = #'(0 . 3)
DiiHohesPedal = \override Staff.SustainPedal #'extra-offset = #'(0 . 2)
DiHohesPedal = \override Staff.SustainPedal #'extra-offset = #'(0 . 1)
NormalesPedal = \revert Staff.SustainPedal #'extra-offset
DiTiefesPedal = \override Staff.SustainPedal #'extra-offset = #'(0 . -1)
DiiTiefesPedal = \override Staff.SustainPedal #'extra-offset = #'(0 . -2)
DiiiTiefesPedal = \override Staff.SustainPedal #'extra-offset = #'(0 . -3)

SehrHoherText = \override TextScript #'extra-offset = #'(0 . 1.5)
HoehererText = \override TextScript #'extra-offset = #'(0 . 1)
NormalerText = \revert TextScript #'extra-offset
HoherText = \override TextScript #'extra-offset = #'(0 . -.5)
MittlererText = \override TextScript #'extra-offset = #'(0 . -1.5)
TieferText = \override TextScript #'extra-offset = #'(0 . -3)
SehrTieferText = \override TextScript #'extra-offset = #'(0 . -4)

DreiZweiBalken = #(override-auto-beam-setting '(end * * * *) 1 32)
SechzehntelBalken = #(override-auto-beam-setting '(end * * * *) 1 16)
AchtelBalken = #(override-auto-beam-setting '(end * * * *) 1 8)
ViertelBalken = #(override-auto-beam-setting '(end * * * *) 1 4)
ViertelPunktBalken = #(override-auto-beam-setting '(end * * * *) 3 8)
HalbeBalken = #(override-auto-beam-setting '(end * * * *) 1 2)
HalbePunktBalken = #(override-auto-beam-setting '(end * * * *) 3 4)
GanzeBalken = #(override-auto-beam-setting '(end * * * *) 1 1)
GeradeBalken = \override Beam #'height = #0

einzelBalkenNullEinsEnger = \once\override Beam #'space-function = #(lambda (beam mult)
                            (* 0.9 (Beam::space_function beam mult)))
einzelBalkenNullZweiEnger = \once\override Beam #'space-function = #(lambda (beam mult)
                            (* 0.8 (Beam::space_function beam mult)))

SehrHoheDynamik = \override DynamicText #'extra-offset = #'(0 . 2)
HoheDynamik = \override DynamicText #'extra-offset = #'(0 . 1)
NormaleDynamik = \revert DynamicText #'extra-offset
MittlereDynamik = \override DynamicText #'extra-offset = #'(0 . -1)
TiefeDynamik = \override DynamicText #'extra-offset = #'(0 . -2)
SehrTiefeDynamik = \override DynamicText #'extra-offset = #'(0 . -3)

Axdefault = #(set-accidental-style 'default)
Axforget = #(set-accidental-style 'forget)
Axpiano = #(set-accidental-style 'piano)

HalsUnsichtbar = \override Stem #'transparent = ##t
HalsSichtbar = \override Stem #'transparent = ##f

BalkenUnsichtbar = \override Beam #'transparent = ##t
PunktUnsichtbar = \override Dots #'transparent = ##t
NoteUnsichtbar = { \override NoteHead #'transparent = ##t
        \override Beam #'transparent = ##t
        \override Accidental #'transparent = ##t
        \override Stem #'transparent = ##t }
NoteSichtbar = { \revert NoteHead #'transparent
    \revert Beam #'transparent
    \revert Accidental #'transparent
    \revert Stem #'transparent }

VollRatio = \once\override Slur #'ratio = #'1

TriolenZahlOben = \override TupletBracket #'direction = #1
TriolenZahlUnten = \override TupletBracket #'direction = #-1
KlammerWeg = \override TupletBracket #'bracket-visibility = ##f
TriolenZahlWeg = \override TupletBracket #'number-visibility = ##f
TriolenZahl = \override TupletBracket #'number-visibility = ##t

ViertelSpanner = \set tupletSpannerDuration = #(ly:make-moment 1 4)

HoherBogen = \override Slur #'extra-offset = #'(0 . 2)
EtwasHoherBogen = \override Slur #'extra-offset = #'(0 . .5)
WinzigHoherBogen = \override Slur #'extra-offset = #'(0 . .2)
SehrHoherBogen = \override Slur #'extra-offset = #'(0 . 5)
NormalerBogen = \revert Slur #'extra-offset
WinzigTieferBogen = \override Slur #'extra-offset = #'(0 . -.2)
EtwasTieferBogen = \override Slur #'extra-offset = #'(0 . -.5)
TieferBogen = \override Slur #'extra-offset = #'(0 . -2)

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
  "Layout property override.
 \once\override Voice.Fingering #'padding = #3
 <=>
 (mus:override 'Voice 'Fingering 'padding 3 #t)"
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (BogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'height-limit dy once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  SchoenBogen  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (SchoenBogen dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'beautiful dy once)))
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Balken verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Balken dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Beam 'positions (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Pause verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Pause dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Rest 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Für den ständigen Wechsel der Größe der Notenköpfe:

KlK = {
        \override Accidental #'font-size = #-3
        \override Rest #'font-size = #-2.9
        \override NoteHead #'font-size = #-3
        \override Fingering #'font-size = #-5.8
      }                                         % Kl ein K opf

NoK = {
        \revert NoteHead #'font-size
        \revert Rest #'font-size
        \revert Accidental #'font-size
        \override Fingering #'font-size = #-5.1
      }                                         % No rmal K opf

ScriptKlein = \once\override Script #'font-size = #-2

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

rechts =  \context Staff \notes\relative c'{
  \context Voice=rechts
  \override DynamicText #'font-size = #-.5
  \override DynamicText #'font-series = #'medium
  %\override Voice.Fingering #'extra-offset = #'(0 . -.1)
  \EtwasTieferBogen\TiefeDynamik
  #(Text -3 1 #t)
  \once\override Slur #'attachment-offset = #'((.6 . .4) -1 . 0)
  #(BogenKurve 3.6 #t) \VollRatio
    #(Finger 0 .7 #t) es'4-3^\markup { \bold\fontsize #2.3 { Allegro
    \hspace #.2 sostenuto. \hspace #-1.3 { \fontsize #1.4 \raise #.1 { ( {
    \fontsize #.1 \tiny { \raise #.4 \note #"4" #.6 =
    \fontsize #.5 104. \fontsize #1.4 ) } } } } } }( \p                 % Auftakt
  %%%%======== -------------------------------------------------------- ---------
  \stemDown \ViertelBalken \KlammerWeg \TriolenZahlWeg
    \set tupletSpannerDuration = #(ly:make-moment 1 8)
    \times 2/3 {
      #(Finger 0 1.6 #t) es16-4
      #(Text 0 -1.8 #t)
      \KlK #(Finger .3 3.6 #t)
        as,_2^\markup { \fontsize #-1.6 \italic 3 }
        #(Finger .3 4.6 #t) c_3 es,
      #(Text 0 -2 #t)
        as^\markup { \fontsize #-1.6 \italic 3 } c \<
      \NoK es \KlK as, c es, as c
      \NoK es \KlK as, c es, as c
      \NoK es \KlK as, c es, as c \!                                    % Takt  1
  %%%%======== -------------------------------------------------------- ---------
      \NoK #(Finger 0 -.4 #t)
        #(Keil -.8 0 #t) f-5 \> \KlK as, c es, as c
      \NoK #(Finger 0 -.3 #t) es-4 \KlK as, c es, as c
      \NoK es \KlK as, c es, as c)
    \once\override Slur #'attachment-offset = #'((0 . .3) 2 . 1.4)
    #(BogenKurve 2 #t) \VollRatio
      \NoK es( \KlK as, c \! es, as c) \HalbExtraSpace                  % Takt  2
  %%%%======== -------------------------------------------------------- ---------
    #(Text -3.5 2 #t)
    \once\override Slur #'attachment-offset = #'((-2.5 . .3) -1 . .5)
    #(BogenKurve 3.6 #t) \VollRatio
      \NoK #(Finger 0 1 #t) es-4( \KlK b des es, \< b' des
      \NoK es \KlK b des es, b' des \!
      \NoK #(Keil -.5 0 #t) #(Finger .2 -.1 #t)
        f-5 \> \KlK b, des es, b' des
      \NoK #(Finger .2 -.1 #t) es-4 \KlK b des es, b' des \!            % Takt  3
  %%%%======== -------------------------------------------------------- ---------
      \NoK #(Keil -1.4 0 #t) b' \> \KlK
        #(Finger 0 -.4 #t) c,-2 es-3 es, c' es
      \NoK as \KlK c, \! es es, c' es
      \NoK #(Keil .2 0 #t) as \< \KlK #(Finger 0 -.3 #t)
        c,-2 #(Finger 0 -.6 #t) e-4 e, c' e)
    \once\override Slur #'attachment-offset = #'((0 . .4) 2 . 1)
    #(BogenKurve 2 #t) \VollRatio
      \NoK as( \KlK c, e e, c' e) \! \HalbExtraSpace                    % Takt  4
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-2.5 . 1.3) -1.2 . .7)
    #(BogenKurve 3.8 #t) \VollRatio
      \NoK as-5( \KlK #(Finger 0 -.3 #t) des,-2
        #(Finger 0 .2 #t) f-4 as, des f-3
      \NoK #(Finger .2 -.1 #t) as-4 \KlK
        #(Keil -3.4 -.1 #t) des, \< f as, des f
      \NoK as \KlK des, f as, des f
      \NoK #(Finger .2 -.1 #t) b-5 \KlK
        #(Finger 0 -.3 #t) des,-2 f g, des' f                           % Takt  5
  %%%%======== -------------------------------------------------------- ---------
      \NoK #(Finger .1 -.3 #t) c'-5 \! \KlK #(Finger .2 -.3 #t)
        c,-2 #(Finger 0 .2 #t) f-4 g, c #(Keil -12.4 .2 #t) f \>
      \NoK #(Finger 0 -.2 #t) b-5 \KlK #(Finger .1 -.3 #t)
        c,-2 #(Finger .2 -.3 #t) e-3 g, c e
      \NoK #(Finger 0 -.3 #t) as-5 \KlK c, f-4 as, c f)
    \once\override Slur #'attachment-offset = #'((.6 . 1.1) 2 . .9)
    #(BogenKurve 2.6 #t) \VollRatio
      \NoK #(Finger 0 .5 #t) f-5( \KlK #(Finger .2 -.3 #t)
        ces-2 \! #(Finger -.2 -.3 #t) es-3
        f, ces' es) \HalbExtraSpace                                     % Takt  6
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-3.3 . 1.2) .5 . 1.2)
    #(BogenKurve 4.5 #t) \VollRatio
      \NoK #(Finger 0 .4 #t) f-5( \KlK #(Finger 0 -1.45 #t) b,-2
    \override Hairpin #'height = #1
        #(Finger 0 -.1 #t) es-4 f, #(Keil -1.6 .2 #t) b \< es-3
      \NoK g \KlK b, es f, b es
      \NoK #(Finger 0 -.3 #t) as-5 \KlK #(Finger .1 -1.45 #t) b,-2
        #(Finger .2 0 #t) d-3 f, as b)
    \once\override Slur #'attachment-offset = #'((1.2 . .8) -.2 . .8)
    #(BogenKurve 3.2 #t) \VollRatio
    \once\override Beam #'positions = #'(3 . 2)
      \stemBoth\slurUp \NoK b-4( \KlK f as b, f' as                     % Takt  7
  %%%%======== -------------------------------------------------------- ---------
    \once\override Beam #'positions = #'(3 . 2)
      \NoK \NormaleDynamik #(Finger .1 -.2 #t)
        #(Dynamik -.2 .3 #t) b-4 \f \! \KlK es, as b, es as
    \once\override Beam #'positions = #'(3.5 . 2)
      \NoK #(Finger .4 -.1 #t) c-5 \KlK
        es, as b, es #(Keil 1.4 1 #t) as \>
    \once\override Beam #'positions = #'(4 . 2.5)
      \NoK des! \KlK es, g b, des_2 es_3)
    \once\override Slur #'attachment-offset = #'((.2 . 1.7) 2 . 2.9)
    #(BogenKurve 2.6 #t) \VollRatio
    #(Balken 1 0 #t)
      \NoK es_4( \KlK b des es, b' des) \! \HalbExtraSpace              % Takt  8
  %%%%======== -------------------------------------------------------- ---------
    \revert Hairpin #'height
    \once\override Slur #'attachment-offset = #'((-3.5 . 1.3) -1 . .5)
    #(BogenKurve 3.6 #t) \VollRatio
      \stemDown
      \NoK #(Finger -.2 -.1 #t) es'16-5( \p \KlK
        #(Finger 0 -2.2 #t) as,-2 #(Finger .1 -.3 #t) c-4
        es, as #(Finger .1 -.2 #t) c-3
      \NoK #(Finger .3 -.2 #t) es-4 \< \KlK as, c es, as c
      \NoK es \KlK as, c es, as c
      \NoK es \KlK as, c es, as c \!                                    % Takt  9
  %%%%======== -------------------------------------------------------- ---------
      \NoK #(Finger .2 -.4 #t) #(Keil -.8 0 #t) f-5 \> \KlK
        as, c es, as c
      \NoK #(Finger 0 -.2 #t) es-4 \KlK as, c es, as c
      \NoK es \KlK as, c es, as c)
    \once\override Slur #'attachment-offset = #'((0 . .3) 2 . 1.4)
    #(BogenKurve 2 #t) \VollRatio
      \NoK es( \KlK as, c es, as \! c) \HalbExtraSpace                  % Takt 10
  %%%%======== -------------------------------------------------------- ---------
    #(Text -3.5 2 #t)
    \once\override Slur #'attachment-offset = #'((-2.9 . 1.1) -1 . 0)
    #(BogenKurve 4.8 #t) \VollRatio
      \NoK #(Finger .3 0 #t) #(Keil -.4 0 #t) es-4( \< \KlK
        b des es, b' #(Finger 0 .1 #t) des-3
      \NoK #(Finger .2 -.3 #t) b'-5 \KlK #(Finger 0 -1.4 #t)
        b,-2 #(Finger .3 .3 #t) des-3 es, b' des
      \NoK c' \! \KlK b, des es, #(Keil -8.2 0 #t) b' \> des
      \NoK g \KlK b, des es, b' des                                     % Takt 11
  %%%%======== -------------------------------------------------------- ---------
      \NoK b' \! \KlK #(Finger 0 -.4 #t) #(Keil -3.1 0 #t)
        c,-2 \> #(Finger 0 .3 #t) es-3 es, c' es
      \NoK as \KlK c, es es, c' es
      \NoK as \! \KlK #(Finger 0 -.4 #t) c,-2
        #(Finger 0 -.6 #t) e-4 e, c' e)
    \once\override Slur #'attachment-offset = #'((0 . .4) 2 . 1)
    #(BogenKurve 2 #t) \VollRatio
      \NoK as( \KlK c, e e, c' e) \HalbExtraSpace                       % Takt 12
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((.4 . .3) -.4 . .1)
    #(BogenKurve 3.8 #t) \VollRatio
      \NoK #(Finger .3 .7 #t) as-5( \KlK #(Finger 0 -.3 #t)
        #(Keil .3 0 #t) des,-2 \< f-4 as, des f-3
      \NoK #(Finger .2 -.3 #t) as-4 \KlK des, f as, des f
      \NoK as \KlK des, f as, des f
      \NoK #(Finger .3 1.8 #t) b-5 \KlK
        #(Finger 0 -.3 #t) des,-2 f g, des' f \!                        % Takt 13
  %%%%======== -------------------------------------------------------- ---------
      \NoK #(Finger .3 1.1 #t) #(Keil -1 0 #t) c'-5 \> \KlK
        #(Finger .1 -.3 #t) c,-2 f-4 g, c f
      \NoK g \KlK c, f g, c f
      \NoK g \KlK c, #(Finger -.1 -.7 #t) e-4 g, c e)
    \once\override Slur #'attachment-offset = #'((.6 . .4) 2.4 . 1)
    #(BogenKurve 2 #t) \VollRatio
      \NoK g( \KlK c, #(Artikel 0 .2 #t)
        \ScriptKlein e-- \! g, c e) \HalbExtraSpace                     % Takt 14
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-2.5 . .3) -1 . 1.1)
    #(BogenKurve 4.3 #t) \VollRatio
      \NoK g( \KlK #(Keil .2 -.2 #t) h, \<
        \ScriptKlein #(Artikel 0 .1 #t) e---4 f, h e
      \NoK g \KlK
        h, \ScriptKlein #(Artikel 0 .1 #t) d---3 f, h d
      \NoK g \KlK
        h, \ScriptKlein #(Finger 0 -.13 #t) f'---4 f, h f' \!
      \NoK g \KlK
        \once\override Hairpin #'height = #.56
        #(Keil -3.15 1.28 #t) h, \>
        \ScriptKlein #(Artikel 0 .1 #t) e---4 f, h e                    % Takt 15
  %%%%======== -------------------------------------------------------- ---------
      \NoK #(Finger 0 -.4 #t) d->-5 \! \KlK
        \ScriptKlein #(Finger .1 -2.6 #t) f,---2 g c, f g
      \NoK c \KlK \ScriptKlein e,-- g c, e g
      \NoK c \KlK \ScriptKlein d,-- g c, d g)
    \once\override Slur #'attachment-offset = #'((.3 . .9) 2.4 . 3)
    #(BogenKurve 2.6 #t) \VollRatio
      \NoK #(Dynamik 0 -.4 #t) c( \p \KlK
        \ScriptKlein e,-- g c, e g) \HalbExtraSpace                     % Takt 16
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-2.5 . 2) -.6 . 1.1)
    #(BogenKurve 4.8 #t) \VollRatio
      \NoK #(Finger .2 -.6 #t) c-5( \KlK g b! c,
        #(Finger .2 -1.4 #t) g'-2 #(Finger 0 -.9 #t) b-3
      \override Hairpin #'height = #.5
      \NoK #(Finger -.4 0 #t)
        #(Keil -.2 10.15 #t) c-4 \< \KlK g b c, g' b
      \NoK #(Finger .4 -.8 #t) des!-5 \!
        \KlK g, #(Keil -3.8 10.17 #t) b \>
        c, g' #(Finger 0 1.3 #t) b-3
      \NoK #(Finger 0 1.15 #t) c-4 \KlK g b c, g' \! b                  % Takt 17
  %%%%======== -------------------------------------------------------- ---------
      \revert Hairpin #'height
      \NoK #(Finger .2 -.2 #t) c-4 \KlK f,
        #(Keil 1.8 10.7 #t) b \< c, f b
      \NoK #(Finger 0 1 #t) d-5 #(Finger .2 -2.4 #t) \KlK
        f,-2 #(Finger .1 -1.4 #t) as-3 c, f as
      \NoK e' \KlK #(Finger .2 -2.4 #t) g,-2
        #(Finger .1 -1.2 #t) c-4 c, g' c \!
      \NoK f \KlK #(Finger .2 -2.4 #t) as,-2
        #(Finger 0 -.3 #t) c-4 c, as' c) \HalbExtraSpace                % Takt 18
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((.5 . 1.1) -.4 . .9)
    #(BogenKurve 5.3 #t) \VollRatio
      \override Hairpin #'height = #.6
      \NoK #(Finger -.1 -.7 #t) es!-5( \KlK b des!
        #(Keil -1 9.8 #t) es, \< #(Finger .2 -1.5 #t) b'-2
        #(Finger 0 -.3 #t) des-3
      \NoK #(Finger 0 1.7 #t) es-4 \KlK b des es, b' des
      \NoK #(Finger .1 .2 #t) f-5 \! \KlK
        #(Keil -1.4 9.8 #t) b, \> des es, b' #(Finger 0 -.5 #t)
        des-3
      \NoK #(Finger 0 1.7 #t) es-4 \KlK b des es, \! b' des             % Takt 19
  %%%%======== -------------------------------------------------------- ---------
      \revert Hairpin #'height
      \NoK es \KlK as, #(Finger .3 -.1 #t) des-3
        #(Keil -.1 10 #t) es, \< as des
      \NoK #(Finger .2 1.2 #t) f-5 \KlK as,
        #(Finger .1 -.94 #t) c-3 es, as c
      \NoK g' \KlK #(Finger 0 -1.4 #t) as,-2
        #(Finger 0 -.94 #t) c-3 es, as c \!
      \NoK as' \KlK #(Finger .2 -1.4 #t) as,-2
        #(Finger 0 -.94 #t) c-3 es, as c) \HalbExtraSpace               % Takt 20
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((.7 . .5) -.4 . .4)
    #(BogenKurve 4.8 #t) \VollRatio
      \NoK #(Finger -.2 .3 #t) g'-5( \KlK c,
        \once\override Hairpin #'height = #.8
        #(Keil -.2 -.4 #t) es-4 \< g, c es
      \NoK g \KlK c, es g, c es \!
      \NoK #(Keil -.5 -.4 #t) as \> \KlK c,
        #(Finger .3 0 #t) d-3 as c d
      \NoK #(Finger .2 0 #t) f-5 \KlK h, #(Finger .2 -.2 #t)
        d-3 f, h \! #(Finger 0 -.2 #t) #(Keil 8.2 0 #t) d-4 \<          % Takt 21
  %%%%======== -------------------------------------------------------- ---------
      \NoK #(Finger .2 -.6 #t) e-5-\PIANO \KlK
        #(Finger .2 -1.4 #t) g,-2 c-4 e, g c
      \NoK #(Finger 0 -.8 #t) d-5 \KlK #(Finger 0 -1.4 #t) as!-2
        #(Finger 0 -.8 #t) h-3 \! d, as' h
      \once\override Beam #'positions = #'(-4.1 . -4.1)
      \NoK #(Keil .4 -.3 #t) f' \> \KlK as, h f as h
      \NoK e! \KlK as,! h! e,! as \! h) \HalbExtraSpace                 % Takt 22
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((.9 . .5) 3 . 1.2)
    #(BogenKurve 3.8 #t) \VollRatio
      \NoK e( \KlK g, #(Keil .7 0 #t)c \< e, g
        #(Finger 0 -.2 #t) c-4
      \NoK d \KlK #(Finger 0 -1.4 #t) gis,
        #(Finger 0 -.9 #t) h-3 d, gis h \!
      \once\override Beam #'positions = #'(-4.3 . -4.3)
      \NoK #(Keil -.9 -.3 #t) f' \> \KlK gis, h f gis h
      \NoK e \KlK gis, h e, \! gis h                                    % Takt 23
  %%%%======== -------------------------------------------------------- ---------
      \NoK e \KlK a, #(Finger 0 -1.4 #t) #(Text -.2 -1 #t)
    \setTextCresc
    \once\set crescendoText = \markup { "" \raise #1.3 { \fontsize #1.1
    \italic "ritenuto" \hspace #.1 } }
    \once\override TextSpanner #'dash-period = #'7.8
    \once\override TextSpanner #'dash-fraction = #'.1
    \once\override TextSpanner #'extra-offset = #'(-.6 . 10.1) 
        cis-4 \< e, a cis
      \NoK d \KlK a #(Finger 0 -1.4 #t) h-3 d, a' h
      \once\override Beam #'positions = #'(-4.2 . -4.2)
      \NoK fis' \KlK a, h fis a h
      \NoK e \KlK #(Finger .2 -2.4 #t) gis,-2
        #(Finger 0 -.2 #t) d'-4 e, gis d') \HalbExtraSpace              % Takt 24
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-6.5 . 1.9) -.3 . .5)
    #(BogenKurve 3.5 #t) \VollRatio
      \NoK #(Finger .3 -.7 #t) e-5( \KlK a,
        #(Finger 0 -.4 #t) cis-3 e, a cis)
    \once\override Slur #'attachment-offset = #'((.9 . .3) -.3 . .9)
    #(BogenKurve 5.8 #t) \VollRatio
      \NoK #(Finger 0 -1 #t) a'-5( \KlK
        #(Finger 0 -.6 #t) cis,-2 e a, cis e
      \NoK h' \KlK #(Finger 0 -.5 #t) \Axpiano dis,-2 \Axdefault
        #(Finger 0 -.5 #t) #(Text 0 -1.59 #t) fis-3-\cresc a, dis fis
      \NoK c'! \KlK es, ges as, es' ges \!                              % Takt 25
  %%%%======== -------------------------------------------------------- ---------
      \NoK c \f \KlK #(Finger 0 -.4 #t) des,!-2
        #(Finger -.1 -.5 #t) f!-4 f, #(Finger .1 -.2 #t) des'-2
        #(Finger -.1 .5 #t) #(Keil 2.4 -.5 #t) f-3 \<
      \NoK b! \KlK des, f f, des' \! f
      \NoK #(Keil -.7 -.5 #t) des' \> \KlK #(Finger 0 -1.3 #t) b,-2
        #(Finger 0 -.3 #t) des-3 f, b des)
    \once\override Slur #'attachment-offset = #'((.6 . .4) 2.2 . 1.5)
    #(BogenKurve 2 #t) \VollRatio
      \NoK f( \KlK b, des \! f, b des) \HalbExtraSpace                  % Takt 26
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-3 . .8) -.1 . 1.3)
    #(BogenKurve 4.5 #t) \VollRatio
      \NoK b'16( \KlK #(Finger .1 -.5 #t) c,-2
        #(Finger -.1 .1 #t) es-3 es, c' es
      \NoK #(Keil -.3 -.6 #t) as \< \KlK c, es es, c' es \!
      \NoK #(Keil -.5 -.6 #t) c' \> \KlK #(Finger 0 -1.6 #t)
        as,-2 #(Finger 0 -.2 #t) c-4 es, as c)
    \once\override Slur #'attachment-offset = #'((.4 . .5) 2.5 . 1.3)
    #(BogenKurve 4.5 #t) \VollRatio
      \NoK es( \KlK as, \! c es, as c                                   % Takt 27
  %%%%======== -------------------------------------------------------- ---------
      \NoK es \KlK #(Finger .1 -2.4 #t) g,-2
        #(Finger 0 -1 #t) b-3 des, g b
      \once\override Hairpin #'height = #.6
      \NoK #(Keil .4 9.9 #t) e \< \KlK g, b des, g b \!
      \NoK #(Keil .4 10 #t) f' \> \KlK g, b des, g b \!
      \NoK es \KlK g, b des, g b) \HalbExtraSpace                       % Takt 28
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-3 . .8) -.2 . .4)
    #(BogenKurve 3.5 #t) \VollRatio
      \NoK #(Keil -.4 0 #t) des( \> \KlK f, as des, f as
      \NoK c \KlK f, as c, f as
      \NoK c \KlK es, f c es f) \!
    \once\override Slur #'attachment-offset = #'((.4 . .2) .1 . .7)
    #(BogenKurve 4.5 #t) \VollRatio
    \once\override Script #'extra-offset = #'(.2 . .7)
      \NoK c''->( \KlK #(Finger 0 -.1 #t) es,-2
        #(Finger 0 .2 #t) f-3 c es f                                    % Takt 29
  %%%%======== -------------------------------------------------------- ---------
      \NoK c' \KlK #(Finger 0 -.1 #t) des,-2
        #(Finger 0 .3 #t) #(Keil .4 -.46 #t)
        f-4 \< f, des' #(Finger 0 .3 #t) f-3
      \NoK b \KlK des, f f, des' f \!
      \NoK #(Keil -.2 -.2 #t)
      \once\override Hairpin #'height = #.84
        des' \> \KlK #(Finger 0 -1.4 #t) b,-2
        #(Finger 0 -.1 #t) des-3 fes, b des)
    \once\override Slur #'attachment-offset = #'((-.2 . .2) 2.8 . 1.5)
    #(BogenKurve 2 #t) \VollRatio
      \NoK fes( \KlK b, des \! fes, b des) \HalbExtraSpace              % Takt 30
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-3 . .6) 0 . .8)
    #(BogenKurve 4 #t) \VollRatio
      \NoK b'16( \KlK #(Finger 0 -.4 #t) c,-2 #(Keil .6 -.6 #t)
      es-3 \< es, c' es \NoK as \KlK c, es es, c' es \!
      \NoK #(Keil -.5 -.6 #t) c' \> \KlK #(Finger 0 -1.4 #t)
        as,-2 #(Finger 0 -.1 #t) c-4 es, as c)
    \once\override Slur #'attachment-offset = #'((1.3 . .8) 0 . 0)
    #(BogenKurve 5.7 #t) \VollRatio
      \NoK es( \KlK as, c es, \! as c                                   % Takt 31
  %%%%======== -------------------------------------------------------- ---------
    \MittlereDynamik
      \NoK #(Finger .2 .2 #t) es-5 \p \KlK
        #(Finger 0 -1.3 #t) a,-2 c-3 es, a c
      \setTextCresc
    \once\override TextSpanner #'extra-offset = #'(-2.3 . .2) 
    \once\set crescendoText = \markup { " " \raise #-.5 { \fontsize #1.1
    \italic "cre" \hspace #4 } }
    \once\override TextSpanner #'dash-period = #'10
    \once\override TextSpanner #'dash-fraction = #'.08
      \NoK f \< \KlK a, c es, a c
      \NoK ges' \KlK a, c es, a c
      \NoK f \KlK a, c es, a c) \! \HalbExtraSpace                      % Takt 32
  %%%%======== -------------------------------------------------------- ---------
      \setTextCresc
    \once\override TextSpanner #'extra-offset = #'(-2.3 . .9) 
    \once\set crescendoText = \markup { " " \raise #-1.1 { \fontsize #1.1
    \italic "scen" \hspace #3 } }
    \once\override TextSpanner #'dash-period = #'10
    \once\override TextSpanner #'dash-fraction = #'.08
    \once\override Slur #'attachment-offset = #'((.5 . .4) -.2 . .3)
    #(BogenKurve 4.5 #t) \VollRatio
      \NoK f( \< \KlK #(Finger .1 -.3 #t) b,-2 des-3 des, b' des
      \NoK g! \KlK b, des f, b des
      \NoK as' \KlK #(Finger .1 -1.4 #t) h,-2
        #(Finger .1 -.2 #t) d-3 f, h d
      \NoK g \KlK h, d f, h d                                           % Takt 33
  %%%%======== -------------------------------------------------------- ---------
      \NoK g \KlK #(Finger .1 0 #t) c,-2
        #(Finger 0 .3 #t) es-3 es, c' es
      \NoK as \KlK c, es as, c es
      \NoK a \KlK c, es a,
      #(Text 0 -1.2 #t)
        c-\markup { \fontsize #1.1 \italic do } es) \!
    \once\override Slur #'attachment-offset = #'((1.1 . -.2) 2.5 . .5)
    #(BogenKurve 1.7 #t) %\VollRatio
    \TiefeDynamik
      \NoK #(Text 0 .1 #t) ges'^\appa( \f \KlK
        #(Finger 0 -.7 #t) a,!-2 c-3 es, a c) \HalbExtraSpace           % Takt 34
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-4.5 . -1) .4 . .6)
    #(BogenKurve 6.6 #t) \VollRatio
      \NoK f( \KlK #(Finger 0 .5 #t) f,-2
        #(Finger 0 -.2 #t) as!-3 b, f' as
      \NoK #(Finger .3 0 #t) b-4 \KlK f as b,
        f' #(Text 0 -1.2 #t) as-\rit
      \NoK des! \KlK fes, as-3 b, fes' #(Finger 0 .2 #t) as-4
      \NoK #(Finger .2 -.7 #t) g!-5 \KlK des es g, des' es              % Takt 35
  %%%%======== -------------------------------------------------------- ---------
    #(Balken -4 -4 #t)
      \NoK #(Text -.6 .3 #t) #(Dynamik -.3 .4 #t)
        #(Finger .1 -.1 #t) as-5^\tempO
        \fz \KlK #(Finger 0 -1.4 #t)
        #(Dynamik .4 -.5 #t) as,-2 \p c-3 es, as c)
    \once\override Slur #'attachment-offset = #'((1.3 . .8) 2.5 . 2)
    #(BogenKurve 3.5 #t) \VollRatio
    #(Balken -4 -4 #t)
      \NoK #(Finger .1 .4 #t) #(Keil 5.4 -.3 #t) es-4(
        \< \KlK as, c es, as c
    #(Balken -4 -4 #t)
      \NoK es \KlK as, c es, as c
    \once\override Slur #'attachment-offset = #'((-.2 . .2) 3.2 . 1.5)
    #(BogenKurve 2.6 #t) \VollRatio
    #(Balken -4 -4 #t)
      \NoK es \KlK as, c es, \! as c) \HalbExtraSpace                   % Takt 36
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((.6 . .4) .4 . .3)
    #(BogenKurve 5.2 #t) \VollRatio
      \NoK f( \KlK #(Finger .1 -.4 #t) #(Keil -3.1 -.3 #t)
        b,-2 \> #(Finger -.1 0 #t) des-3 es, b' des
      \NoK #(Finger .1 .2 #t) es-4 \KlK b des es, b' des
      \NoK c' \! #(Finger .1 -.3 #t) \KlK
        b,-2 #(Finger -.1 0 #t) des-3 es, b' des
      \NoK g \KlK b, des es, b' des                                     % Takt 37
  %%%%======== -------------------------------------------------------- ---------
      \NoK as' \KlK #(Finger .3 -1.4 #t) as,-2
        #(Finger .1 -.2 #t) c-4 es, as c-3)
    \once\override Slur #'attachment-offset = #'((1.1 . .7) 2 . 1)
    #(BogenKurve 3 #t) \VollRatio
      \NoK #(Finger .2 .4 #t) es-4( \KlK
        as, c es, as #(Keil 5 -.3 #t) c \<
      \NoK es \KlK as, c es, as c
      \NoK es \KlK as, c es, \! as c)                                   % Takt 38
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-3.8 . .6) -.6 . .4)
    #(BogenKurve 6.3 #t) \VollRatio
      \NoK #(Keil -.5 -.1 #t) f( \> \KlK b, des es, b' des
      \NoK #(Finger .15 .2 #t) es-4 \KlK b des es, b' des \!
      \NoK #(Dynamik .9 -.3 #t) f' \pp \KlK #(Finger .1 -1.4 #t)
        b,,-2 #(Finger -.1 0 #t) des-3 es, b' des
      \NoK g \KlK b, des es, b' des                                     % Takt 39
  %%%%======== -------------------------------------------------------- ---------
      \NoK as' \KlK #(Finger .1 -1.44 #t) as,-2
        #(Finger .1 -.3 #t) c-3 #(Keil 0 -.3 #t) es, \< as c)
    \once\override Slur #'attachment-offset = #'((.7 . .7) 1.7 . 1.6)
    #(BogenKurve 3.9 #t) \VollRatio
      \NoK #(Finger .1 .5 #t) es-4( \KlK as, c es, as c \!
      \NoK #(Keil -1 -.3 #t) f \> \KlK as, c es, as c
      \NoK es-4 \KlK #(Finger .2 -1.44 #t) as,-2
        #(Finger 0 -.3 #t) c-3 es, as
        #(Finger 0 -.4 #t) c-4) \!                                      % Takt 40
  %%%%======== -------------------------------------------------------- ---------
    \stemBoth\slurUp
    \once\override Slur #'attachment-offset = #'((-3.6 . -.1) 2.3 . .8)
    #(BogenKurve 6 #t) \VollRatio
      \setTextCresc
    \once\set crescendoText = \markup { " " \raise #1.3 { \fontsize #1.1
    \italic "dimin." \hspace #2 } }
    \once\override TextSpanner #'dash-period = #'8.6
    \once\override TextSpanner #'dash-fraction = #'.08
    \once\override TextSpanner #'extra-offset = #'(.2 . .3)
    #(Balken 4.3 2.5 #t)
      \NoK #(Finger .6 1.1 #t) des^5( \< \KlK #(Finger .5 -.2 #t)
        es,^2 #(Finger .7 -.1 #t) as^3 \NoK des, \KlK es as
    #(Balken 3.8 2.5 #t)
      \NoK #(Finger .5 0 #t) c^5 \KlK #(Finger .5 -.1 #t)
        es,^2 as \NoK c, \KlK es as
    #(Balken 4.3 2.5 #t)
      \NoK des \KlK es, as \NoK des, \KlK es as
    #(Balken 3.8 2.5 #t)
      \NoK c \KlK es, as \NoK c, \KlK es as                             % Takt 41
  %%%%======== -------------------------------------------------------- ---------
    #(Balken 3.3 1.1 #t)
      \NoK #(Finger .4 .2 #t) b^5 \KlK #(Finger .6 -.2 #t)
      c,^2 #(Finger .7 -.1 #t) es^3 \NoK b \KlK c es
    #(Balken 2.8 1.1 #t)
      \NoK as \KlK c, es \NoK as, \KlK c es
    #(Balken 3.3 1.1 #t)
      \NoK b' \KlK c, es \NoK b \KlK c es
    #(Balken 2.8 1.1 #t)
      \NoK #(Text 0 -2.8 #t) as-\smorzando \!
        \KlK c, es \NoK as, \KlK c es)                                  % Takt 42
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-3.4 . -.6) -.2 . .8)
    #(BogenKurve 4.8 #t) \VollRatio
      \setTextCresc
    \once\override TextSpanner #'extra-offset = #'(0 . -1.2) 
    \once\set crescendoText = \markup { "" }
    \once\override TextSpanner #'dash-period = #'9.7
    \once\override TextSpanner #'dash-fraction = #'.08
    #(Balken 3.3 1.1 #t)
      \NoK b'( \< \KlK c, es \NoK b \KlK c es
    #(Balken 2.8 1.1 #t)
      \NoK as \KlK c, es \NoK as, \KlK c es
    #(Balken 3.3 1.1 #t)
      \NoK b' \KlK c, es \NoK b \KlK c es
    #(Balken 2.8 1.1 #t)
      \NoK as \KlK c, es \NoK as, \KlK c es) \!                         % Takt 43
  %%%%======== -------------------------------------------------------- ---------
    \stemUp
      #(Pause .3 -12.02 #t) #(Dynamik .5 -3.4 #t) r \pp \unten
    #(Balken -1.4 .8 #t)
    \once\override Beam #'concaveness-gap = #3.2
    \once\override Stem #'beamed-lengths = #'(6)
    \once\override Stem #'beamed-extreme-minimum-free-lengths = #'(1)
    \once\override Stem #'beamed-minimum-free-lengths = #'(2)
      #(Finger -.2 6 #t) #(Text 0 3 #t)
    \once\override Slur #'attachment-offset = #'((0 . 1) 1.2 . 2.5)
    #(BogenKurve 8 #t) \VollRatio
        c,_1^\markup { \italic \fontsize #1.1 leggierissimo }(
        #(Finger -.3 7 #t) es_2 #(Finger -.3 8 #t) as_4
        \oben #(Finger .2 .2 #t) c_1 es
      \stemDown as #(Finger 0 -1.2 #t) c-1 es
        #(set-octavation 1)
        \set Staff.ottavation = #""
      \once\override Staff.OttavaBracket #'extra-offset = #'(0 . .9)
        \override Staff.OttavaBracket #'shorten-pair = #'(1.1 . -1.6)
        \override Staff.OttavaBracket #'edge-height = #'(0 . 0)
        \override Staff.OttavaBracket #'dash-fraction = #.01
        \override Staff.OttavaBracket #'dash-period = #.7
        \override Staff.OttavaBracket #'font-size = #2.5
        \override Staff.OttavaBracket #'font-series = #'bold
        #(Text -.6 .8 #t) as^\OKTAVA #(Finger .2 -1 #t)c-1 es
      \NoK #(Finger .1 1.5 #t) as-4 \KlK es c
        #(Finger .2 -1.5 #t) as-4 es #(Finger .2 -3.3 #t) c-1
      \NoK #(Finger 0 -4.4 #t) as-2 \KlK #(Finger 0 -4.1 #t)
        c-1 es as #(Finger 0 -1.2 #t) c-1 es) \HalbExtraSpace           % Takt 44
  %%%%======== -------------------------------------------------------- ---------
        #(set-octavation 0)
    \once\override Slur #'attachment-offset = #'((-4 . 1.5) 2.3 . 2.8)
    #(BogenKurve 4.2 #t) \VollRatio
        #(set-octavation 1)
        \set Staff.ottavation = #" "
      \once\override Staff.OttavaBracket #'extra-offset = #'(0 . .7)
        \override Staff.OttavaBracket #'shorten-pair = #'(-.35 . -.6)
        \override Staff.OttavaBracket #'edge-height = #'(-.1 . 3)
      \NoK #(Finger .1 2.9 #t) #(Text -1.2 -2.05 #t) as-4^\OKTAVA(
        \KlK es c #(Finger .2 -1.5 #t) as-4 es c
      \NoK #(Finger 0 -4.4 #t) as-2 \KlK #(Finger 0 -4.1 #t)
        c-1 es as #(Finger 0 -1.2 #t) c-1 es
      \NoK #(Finger .1 -.2 #t) as-4 \KlK es c
        #(Finger .2 -1.4 #t) as-4 es c
      \NoK #(Finger 0 -4.4 #t) as-2 \KlK #(Finger 0 -4.1 #t)
        c-1 es as #(Finger 0 -1.2 #t) c-1 es                            % Takt 45
  %%%%======== -------------------------------------------------------- ---------
      \NoK #(Finger .1 -.2 #t) as-4 \KlK es c
        #(Finger .2 -1.4 #t) as-4 es
      \once\override Hairpin #'height = #.8
        #(Keil 1.5 2.2 #t) c \<
        #(set-octavation 0)
      #(Finger 0 -2.1 #t) as-2 #(Finger 0 -1.1 #t)
        c-1 as'-3 c-5 as #(Finger 0 -1.1 #t) c,-1
      #(Finger 0 -1.5 #t) as-2
        #(Finger 0 -.4 #t) c-1 as' c as c,
      #(Finger 0 -1.5 #t) as-2
        #(Finger 0 -1.1 #t) c-1 as' c as c,) \!                         % Takt 46
  %%%%======== -------------------------------------------------------- ---------
    \once\override Slur #'attachment-offset = #'((-3.4 . 3.7) .2 . 2.5)
    #(BogenKurve 4.7 #t) \VollRatio
      \once\override Hairpin #'height = #1.1
      #(Finger 0 -1.5 #t) #(Keil -.4 -.8 #t) as-2( \>
        #(Finger 0 -.4 #t) c-1 as' c as c,
      as c as' c as c,
      as c as' c as c,
      as c as' c as c, \!
    }                                                                   % Takt 47
  %%%%======== -------------------------------------------------------- ---------
    \stemBoth\stemBoth
    \set fingeringOrientations = #'(left)
    #(Dynamik 1.3 -2 #t) \NoK as4-.) \ppp
      <as' as'>-. r
      %#(Bogen .2 .3 #t)
    \once\override Slur #'attachment-offset = #'((.2 . .7) 0 . .65)
    #(BogenKurve 1.8 #t) \VollRatio
      <es,-2 c'-5>(                                                     % Takt 48
  %%%%======== -------------------------------------------------------- ---------
  \once\override Score.SeparationItem #'padding = #.8
   #(Finger -1.1 0 #t)  <c-1 as'-4>1\arpeggio)                          % Takt 49
  %%%%======== -------------------------------------------------------- ---------
}

ZusatzStimme =  \context Staff \notes\relative c'{
  \context Voice=ZusatzStimme
    s4                                                  % Auftakt
  %%%%======== ---------------------------------------- --------------
    s1*16                                               % Takt  1 - 16
  %%%%======== ---------------------------------------- --------------
    \KlammerWeg\TriolenZahlWeg\stemUp
    \times 2/3 {
    s16 s s s s s s s s s s s
    s s s s s s s s s s s #(Keil 9.3 -4 #t) s \>
    \NoteUnsichtbar
    \KlK g''16 g g g g g g g g g g g
    g g g g g g \!  g g g g g g                         % Takt 17 - 18
  %%%%======== ---------------------------------------- --------------
    s s s s s s s s s s s s
    s s s s s s s s s s s #(Keil 10 -2.9 #t) s \>
    g g g g g g f g g g g g
    g g g g g g \!  as g g g g g                        % Takt 19 - 20
  %%%%======== ---------------------------------------- --------------
    }
    s1*3                                                % Takt 21 - 23
  %%%%======== ---------------------------------------- --------------
    \times 2/3 {
      \NoK g16 \KlK g #(Keil .9 -3 #t) g \< g g g
      \NoK g \KlK g g g g g \!
      \NoK #(Keil .8 -3 #t) as \> \KlK g g g g g
      \NoK g \KlK g g g \! g g                          % Takt 24
  %%%%======== ---------------------------------------- --------------
      \NoK c \KlK
        \once\override Hairpin #'height = #1.2
        #(Keil -3.5 -1.7 #t) c \< c c c c
      \NoK c \KlK c c c c c
      \NoK h \KlK c c c c c
      \NoK c \KlK c c c c c                             % Takt 25
  %%%%======== ---------------------------------------- --------------
      \NoK c \! \KlK c c c c c
    } s2.                                               % Takt 26
  %%%%======== ---------------------------------------- --------------
}

links =  \context Staff \notes\relative c{
  \context Voice=links
  \override Voice.Fingering #'extra-offset = #'(0 . -.1)
  %% -- %% Die linke Hand hat 113 Fingersätze!
  %% -- %% Davon sind 52 gesteuert und 61 Standard.
  \stemDown
  \override Staff.SustainPedal #'self-alignment-X = #'-.7
    r4                                                                  % Auftakt
  %%%%======== -------------------------------------------------------- ---------
  \ViertelBalken \KlammerWeg \TriolenZahlWeg
    \set tupletSpannerDuration = #(ly:make-moment 1 8)
    \times 2/3 {
      \once\override Beam #'positions = #'(-1.2 . -1.2)
      \stemUp as,16 \PR \KlK \stemDown
      #(Finger 0 .15 #t) es''_3^\markup { \fontsize #-1.6 \italic 3 }
      as c
      as^\markup { \fontsize #-1.6 \italic 3 } es
      \NoK as,16 \KlK es' as c as es
      as,16 es' as c as es
      as,16 es' as c as es                                              % Takt  1
  %%%%======== -------------------------------------------------------- ---------
      as,16 es' as c as \SKP es \PH
      as,16 \PR es' as c as es
      as,16 es' as c as es
      as,16 es' as c as
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . 0)
        es \PH                                                          % Takt  2
  %%%%======== -------------------------------------------------------- ---------
  \break
      as,16 \PR es'-3 g des' g, es
      as,16 es' g des' g, es
      as,16 es' g des' g, es
      as,16 es' g des' g, \SKPr es \PH                                  % Takt  3
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PR es'-3 as c as es
      as,16 es' as c as \SKP es \PH
      as,16 \PR e'-3 as c as e
      as,16 e' as c as \SKPr e \PH                                      % Takt  4
  %%%%======== -------------------------------------------------------- ---------
  \break
      \once\override Beam #'positions = #'(-.15 . -.15)
      \NoK \stemUp des, \PR \KlK \stemDown
      #(Finger -.1 .1 #t) as''-3 des f des as
      \NoK des, \KlK as' des f des as
      des, as' des f des \SKP as \PH
      \NoK des, \PR \KlK g-4 des' f des \SKPr g, \PH                    % Takt  5
  %%%%======== -------------------------------------------------------- ---------
      \NoK c, \PR \KlK g'-3 c f c
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.5)
        g \PH
      c, \PR g'-3 c e c
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.5)
        g-4 \PH
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.1)
      f \PR as c f c
      \once\override Staff.SustainPedal #'extra-offset = #'(.3 . -1.5)
        as \PH
      \NoK
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -.1)
        ces,-> \PR \KlK #(Finger 0 -.2 #t) f-3 as es' as,
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -.6)
        f \PH                                                           % Takt  6
  %%%%======== -------------------------------------------------------- ---------
  \break
      \NoK b, \PR \KlK f' as es' as, f
      b, f' as es' as,
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.2)
        f \PH
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . .3)
      b,
        \PR f' as d as f
      b, f' as d as
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.2)
        f \PH                                                           % Takt  7
  %%%%======== -------------------------------------------------------- ---------
      \NoK es, \PR \KlK #(Finger 0 -2 #t) b'-3
        #(Finger 0 -.5 #t) es-2 des'! es, \SKP b \PH
      es, \PR #(Finger 0 -2 #t) b'-3
        #(Finger 0 -.5 #t) es-2 as es \SKP b \PH
      es, \PR b' es g es b
      es, b' es g es \SKPr b \PH                                        % Takt  8
  %%%%======== -------------------------------------------------------- ---------
  \break
      \once\override Beam #'positions = #'(-1.2 . -1.2)
      \stemUp \NoK as,16 \PR \KlK \stemDown #(Finger 0 .3 #t) es''_3 as c as es
      \NoK as,16 \KlK es' as c as es
      as,16 es' as c as es
      as,16 es' as c as es                                              % Takt  9
  %%%%======== -------------------------------------------------------- ---------
      as,16 es' as c as \SKP es \PH
      as,16 \PR es' as c as es
      as,16 es' as c as es
      as,16 es' as c as \SKPr es \PH                                    % Takt 10
  %%%%======== -------------------------------------------------------- ---------
  \break
      as,16 \PR #(Finger 0 -.1 #t) es'-3 g des' g, es
      as,16 es' g des' g, \SKP es \PH
      as,16 \PR es' g des' g, es
      as,16 es' g des' g, \SKPr es \PH                                  % Takt 11
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PR es' as c as es
      as,16 es' as c as \SKP es \PH
      as,16 \PR #(Finger 0 -.1 #t) e'-3 as c as e
      as,16 e' as c as \SKPr e \PH                                      % Takt 12
  %%%%======== -------------------------------------------------------- ---------
  \break
      \once\override Beam #'positions = #'(-.15 . -.15)
      \NoK \stemUp des, \PR \KlK \stemDown as''-3 des f des as
      des, as' des f des as
      des, as' des f des \SKP as \PH
      des, \PR g-4 des' f des \SKPr g, \PH                              % Takt 13
  %%%%======== -------------------------------------------------------- ---------
      \NoK c, \PR \KlK g'-3 c f c g
      c, g' c f c \SKP g \PH
      c, \PR g'-3 c e c g
      c, g' c e c \SKPr g \PH                                           % Takt 14
  %%%%======== -------------------------------------------------------- ---------
  \break
      \NoK g, \PR \KlK
        #(Finger 0 -1.1 #t) d'-3 g h g \SKP d \PH
      g, \PR d' g h g d
      g, d' g d' g, \SKP d \PH
      g, \PR d' g d' g,
        #(Finger 0 -1 #t) \SKPr d-3 \PH                               % Takt 15
  %%%%======== -------------------------------------------------------- ---------
      \NoK c, \PR \KlK #(Finger 0 -2.9 #t) g'-3
        #(Finger 0 -2.2 #t) c-2 g' c, \SKP g \PH
      c, \PR g' c g' c, \SKP g \PH
      c, \PR g' c g' c, \SKP g \PH
      c, \PR g' c
    }
      g'
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -2.3)
      c, \PH                                                            % Takt 16
  %%%%======== -------------------------------------------------------- ---------
  \break
      \NoK e, \PR #(Finger 0 -1.7 #t) \KlK c'-2 \NoK b' \KlK c,
      e, c' \NoK b' \KlK \iiSKP c, \PH
      e, \PR c' \NoK b' \KlK \iiSKP c, \PH
      e, \PR c' \NoK b' \KlK \iiSKPr c, \PH                             % Takt 17
  %%%%======== -------------------------------------------------------- ---------
  \noBreak
      \NoK f, \PR \KlK c' \NoK b' \KlK \SKP c, \PH
      f, \PR c' \NoK #(Finger 0 .1 #t) as'_1 \KlK \SKP c, \PH
      f, \PR c' \NoK #(Finger 0 .1 #t) g'_1 \KlK \SKP c, \PH
      f, \PR c' \NoK #(Finger 0 .1 #t) f_1 \KlK \SKPr c \PH             % Takt 18
  %%%%======== -------------------------------------------------------- ---------
  \break
      \NoK g \PR \KlK #(Finger 0 -.4 #t) es'!-2 \NoK des'! \KlK es,
      g, es' \NoK des' \KlK \iiTiefesPedal es, \PH
      g, \PR es' \NoK des' \KlK \iiTiefesPedal es, \PH
      g, \PR es' \NoK des' \KlK \iiTiefesPedalR es, \PH                 % Takt 19
  %%%%======== -------------------------------------------------------- ---------
  \noBreak
      \NoK as, \PR \KlK es' \NoK des' \KlK \SKP es, \PH
      as, \PR es' \NoK #(Finger 0 .1 #t) c'_1 \KlK \SKP es, \PH
      as, \PR es' \NoK #(Finger 0 .1 #t) b'_1 \KlK \SKP es, \PH
      as, \PR es' \NoK #(Finger 0 .1 #t) as_1 \KlK \SKP es \PH          % Takt 20
  %%%%======== -------------------------------------------------------- ---------
  \break
      \NoK es, \PR \KlK g'-2 c g
      c, g' c \iiiTiefesPedal g \PH
      \NoK f, \PR \KlK #(Finger 0 -.4 #t) d'-4 c' \iiTiefesPedal d, \PH
      \NoK g, \PR \KlK #(Finger 0 -.4 #t) d'-4
    \times 2/3 {
      h' g
        \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -.4)
      d \PH                                                             % Takt 21
  %%%%======== -------------------------------------------------------- ---------
      \NoK c \PR \KlK #(Finger 0 -.95 #t) e-3 g c g
        #(Finger 0 -.3 #t)
        \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.2)
          e-4 \PH
      c \PR #(Finger 0 -.3 #t) f-3 as! h as f
      c f as d as
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.5)
        f \PH
      c \PR
        #(Finger 0 -.2 #t) e!-4 as! d! as
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -1.2)
        e \PH                                                           % Takt 22
  %%%%======== -------------------------------------------------------- ---------
  \break
      \NoK #(Balken -3.8 -2.3 #t) c \PR \KlK
        #(Finger 0 -1.1 #t) e-3 g c g \SKP e \PH
      \NoK #(Balken -3.9 -2.3 #t) h \PR \KlK f' gis h gis f
      h, f' gis d' gis,
      \once\override Staff.SustainPedal #'extra-offset = #'(-.2 . -1.2)
        f \PH
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . .3)
      h, \PR
      #(Finger 0 -.95 #t) e-3 gis d' gis,
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -1.2)
        e \PH                                                           % Takt 23
  %%%%======== -------------------------------------------------------- ---------
      \NoK #(Balken -4.3 -2.8 #t)
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . .5)
        a, \PR
        \KlK #(Finger 0 -.95 #t) e'-3 a cis a
        \once\override Staff.SustainPedal #'extra-offset = #'(-.2 . -1.2)
          e \PH
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . .5)
      a, \PR #(Finger 0 -.4 #t) fis'-3 a h a fis
      a, fis' a d a
      \once\override Staff.SustainPedal #'extra-offset = #'(-.2 . -1.2)
        fis \PH
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . .5)
      a, \PR
        #(Finger 0 -.4 #t) e'-3 gis d' gis,
        \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -.4)
          e \PH                                                         % Takt 24
  %%%%======== -------------------------------------------------------- ---------
  \break
      \NoK a, \PR \KlK e'-3 a cis a e
      a, e' a cis a \iTiefesPedal \SKP e \PH
      a, \PR
        #(set-accidental-style 'piano)
          #(Finger 0 -1 #t) dis-3 fis c'
        #(set-accidental-style 'default)
          fis, \iTiefesPedal \SKPr dis \PH
      \NoK as \PR \KlK es' ges c ges \SKPr es \PH                       % Takt 25
  %%%%======== -------------------------------------------------------- ---------
      \stemUp \NoK des,! \PR \KlK \stemDown
        #(Finger 0 -.9 #t) as''!-3 b! des b
        \iiTiefesPedal as \PH
      des, \PR as' b des b as
      \stemUp \NoK des,, \KlK \stemDown as''-3 b des b as
      des, as' b des b
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -1)
        as \PH                                                          % Takt 26
  %%%%======== -------------------------------------------------------- ---------
  \break
      \NoK es, \PR \KlK \DiiTiefesPedal
        #(Finger 0 -1 #t) es'-3 as c as es-4 \PH
      #(Finger 0 -1.9 #t)
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2.2)
      c-5 \PR es as c as es
      \NoK es, \KlK #(Finger 0 -1 #t) es'-3 as c as es-4
      #(Finger 0 -1.9 #t) c-5 es as c as
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -3.8)
        es \PH                                                          % Takt 27
  %%%%======== -------------------------------------------------------- ---------
      \NoK \NormalesPedal es, \PR \KlK
        #(Finger 0 -1 #t) es'-3 g es' g,
        \iiTiefesPedal es \PH
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.3)
      b \PR es g es' g,
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2.7)
        es \PH
      \NoK
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . .2)
        es, \PR \KlK es' g es' g,
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2.1)
        es \PH
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.2)
      b \PR es g es' g,
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -2.8)
        es \PH                                                          % Takt 28
  %%%%======== -------------------------------------------------------- ---------
  \break
    }
      \NoK f, \PR \KlK f'-2 as-1
        \DiiTiefesPedal f \PH
      #(Finger 0 -1.3 #t) c-4 \PR f
        \times 2/3 { as f c \PH }
      \NormalesPedal \NoK f, \PR \KlK f'-2
        #(Finger 0 -.7 #t) a-1 f
      #(Finger 0 -1.3 #t) c-4 f
        \times 2/3 { a f \iiTiefesPedalR c \PH }                        % Takt 29
  %%%%======== -------------------------------------------------------- ---------
    \times 2/3 {
      \stemUp \NoK b,! \PR \KlK \stemDown
        f''-3 b des b \iiiTiefesPedal f \PH
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.2)
      b, \PR f' b des b \iiiTiefesPedal f \PH
      \stemUp \NoK b,, \PR \KlK \stemDown
        #(Finger 0 -.4 #t) fes''-3 as des as fes
      b, fes' as des as
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -3)
        fes \PH                                                         % Takt 30
  %%%%======== -------------------------------------------------------- ---------
  \break
      \NoK es, \PR \KlK \DiiTiefesPedal
        es'-3 as c as es-4 \PH
      #(Finger 0 -1.9 #t)
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2.4)
      c-5 \PR es as c as es
      \NoK es, \KlK es'-3 as c as es-4
      #(Finger 0 -.9 #t) c-5 es as c as
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -3.8)
        es \PH                                                          % Takt 31
  %%%%======== -------------------------------------------------------- ---------
    }
      \NormalesPedal \NoK
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . .3)
        es, \PR \KlK
        #(Finger 0 -.5 #t) a'-2 c a
      #(Finger 0 -.2 #t) es-4 a \times 2/3 { c a
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -4)
        es \PH }
      \NoK
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -.1)
        es, \PR \KlK a'-2 c
        \iTiefesPedal a-3 \PH
      #(Finger 0 -.2 #t) \DiiTiefesPedal es-5 \PR a
        \times 2/3 { f' a, \iiTiefesPedalR es \PH }                     % Takt 32
  %%%%======== -------------------------------------------------------- ---------
  \break
      \NormalesPedal \stemUp \NoK es, \PR \KlK
        \stemDown b''-2 f' b,
      #(Finger 0 -.2 #t) es,-5 b'
        \times 2/3 { des b
      \once\override Staff.SustainPedal #'extra-offset = #'(-.3 . -1.8)
        es, \PH }
      \stemUp \NoK es, \PR \KlK
        \stemDown #(Finger 0 -.5 #t) h''-2 d h
      #(Finger 0 -.2 #t) es,-5 h'
        \times 2/3 { g' h,
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -1.9)
        es, \PH }                                                       % Takt 33
  %%%%======== -------------------------------------------------------- ---------
      \stemUp \NoK es, \PR \KlK
        \stemDown c''-2 g'
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.9)
        c, \PH \SKP
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.5)
        es, \PR c'
    \times 2/3 {
      es c
      \once\override Staff.SustainPedal #'extra-offset = #'(-.3 . -1.9)
      es, \PH }
      \NormalesPedal \stemUp \NoK es,
        \PR \KlK \stemDown c''-2
        #(Finger 0 -.9 #t) ges'-1 c,
      \times 2/3 { es, c'-3 es a es
        \iiTiefesPedalR c \PH }                                         % Takt 34
  %%%%======== -------------------------------------------------------- ---------
  \break
    \times 2/3 {
      \NoK es, \PR \KlK b'-3 d as'! d, b
      es, b' d as' d,
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -.2)
        b \PH
      es, \PR b' des as' des,
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -.2)
        b \PH
      es, \PR b' des es des
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -.2)
        b \PH                                                           % Takt 35
  %%%%======== -------------------------------------------------------- ---------
      \NoK as,16 \PR \KlK
        #(Finger 0 -.2 #t) es'-3 as c as
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.6)
        es \PH
      as,16 \PR es' as c as es
      as,16 es' as c as es
      as,16 es' as c as
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -1.6)
        es \PH                                                          % Takt 36
  %%%%======== -------------------------------------------------------- ---------
  \break
      as,16 \PR #(Finger 0 -1.1 #t) es'-3 g des' g,
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.5)
        es \PH
      as,16 \PR es' g des' g, es
      as,16 es' g des' g, es
      as,16 es' g des' g,
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -1.5)
        es \PH                                                          % Takt 37
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PR #(Finger 0 -1.1 #t) es'-3 as c as
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.5)
        es \PH
      as,16 \PR es' as c as es
      as,16 es' as c as es
      as,16 es' as c as
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -1.5)
        es \PH                                                          % Takt 38
  %%%%======== -------------------------------------------------------- ---------
  \break
      as,16 \PR #(Finger 0 -1.1 #t) es'-3 g des' g,
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.5)
        es \PH
      as,16 \PR es' g des' g, es
      as,16 es' g des' g, es
      as,16 es' g des' g,
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -1.5)
        es \PH                                                          % Takt 39
  %%%%======== -------------------------------------------------------- ---------
      as,16 \PR #(Finger 0 -1.1 #t) es'-3 as c as es
      as,16 es' as c as
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.5)
        es \PH
      as,16 \PR es' as c as
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1.5)
        es \PH
      as,16 \PR es' as c as
      \once\override Staff.SustainPedal #'extra-offset = #'(.5 . -1.5)
        es \PH                                                          % Takt 40
  %%%%======== -------------------------------------------------------- ---------
  \break
      \stemBoth
      \NoK es,16 \PR \KlK as_4 #(Finger 0 2.2 #t)
                es'_2 as es \SKP as, \PH
      es16 \PR as es' as es \SKP as, \PH
      es16 \PR as es' as es \SKP as, \PH
      es16 \PR as es' as es \SKPr as, \PH                               % Takt 41
  %%%%======== -------------------------------------------------------- ---------
    #(Balken 3 3)
      \NoK as,16 \PR \KlK es'_3 as es' as, es
      as,16 es' as es' as, es
      as,16 es' as es' as, es
      as,16 es' as es' as, es                                           % Takt 42
  %%%%======== -------------------------------------------------------- ---------
  \break
    \revert Beam #'positions
      as,16 es'_3 as es' as, es
      as,16 es' as es' as, es
      as,16 es' as es' as, es
      as,16 es' as es' as, \iiiTiefePause \SKPr es \PH                  % Takt 43
  %%%%======== -------------------------------------------------------- ---------
      \stemDown \NoK
      \once\override Staff.SustainPedal #'extra-offset = #'(0 . .5)
        #(Finger -1.5 1.4 #t) as,16_5 \PR \KlK es'_3 as_2 c_1 es_3 as
    \once\override Staff.Clef #'extra-offset = #'(-.5 . 0)
      \clef violin c es_3 as c es_3 as
      \NoK c \KlK as es c_1 as es_3
      \NoK as, \KlK es' as c es_3 as                                    % Takt 44
  %%%%======== -------------------------------------------------------- ---------
  \break
      \NoK c \KlK as es #(Finger 0 -.3 #t) c-1 as es
      \NoK as, \KlK es' as c #(Finger 0 .2 #t) es-3 as
      \NoK c \KlK as es #(Finger 0 -1.3 #t) c-1 as es
      \NoK as, \KlK es' as c #(Finger 0 .2 #t) es-3 as                  % Takt 45
  %%%%======== -------------------------------------------------------- ---------
      \NoK c \KlK as es #(Finger 0 -1.3 #t) c-1 as es
      \stemBoth \NoK as,_5 \KlK es'_3 #(Finger 0 1.2 #t) as_2
        #(Finger 0 3.3 #t) es'_1 as, es
      as, es' as es' as, es
      as, es' as es' as, es                                             % Takt 46
  %%%%======== -------------------------------------------------------- ---------
      as, es' as es' as, es
      as, es' as es' as, es
      as, es' as es' as, es
      as, es' as es' as, es
    }                                                                   % Takt 47
  %%%%======== -------------------------------------------------------- ---------
    \NoK as,4-. \stemDown
    \once\override Staff.Clef #'extra-offset = #'(-.4 . 0)
      \clef bass
    <as, es' c'>-.\arpeggio \stemUp r \PH
    #(Finger 0 .7 #t)
    \grace { \set fontSize = #-1.5 d,16_3[
    \once\override Score.SeparationItem #'padding = #.3
    es]
    \once\override Score.SeparationItem #'padding = #.7
    \once\override TextScript #'font-size = #-3.2
    #(Text .95 2.93 #t)
    f8*1/2-\markup { \musicglyph #"flags-ugrace" } \unset fontSize }
    \once\override Score.SeparationItem #'padding = #-7
    \override TextScript #'font-size = #-3.2
    \override TextSpanner  #'style = #'trill
    \override TextSpanner  #'edge-height = #'(0 . 0)
    \override TextSpanner  #'edge-text
  = #(cons (make-musicglyph-markup "scripts-trill")  "")
    << { es4\startTextSpan }
              { s8.
    \once\override Score.SeparationItem #'padding = #2.5
              \grace { \set fontSize = #-1.5 d16\stopTextSpan[
    \once\override Score.SeparationItem #'padding = #-4
              es] \unset fontSize } } >>                                % Takt 48
  %%%%======== -------------------------------------------------------- ---------
  \once\override Score.SeparationItem #'padding = #.8
    \set fingeringOrientations = #'(left)
    #(Finger -1.1 .25 #t)
    <as, as'-1 es'-2>1*1/4 \arpeggio \PR s s \hideNotes as \PH          % Takt 49
  %%%%======== -------------------------------------------------------- ---------
}

\score {
    \context PianoStaff
    \with {
        verticalAlignmentChildCallback = #(futz-alignment-callback '(
        (0 . 11)
        (1 . 11.2)
        (2 . 11.3)
        (3 . 11.4)
        (4 . 11.1)
        (5 . 11.1)
        (6 . 11.3)
        (7 . 11.3)
        (8 . 11.6)
        (9 . 11.4)
        (10 . 11.6)
        (11 . 11.6)
        (12 . 11.7)
        (14 . 11.8)
        (16 . 12.5)
        (21 . 11)
        (22 . 11.5)
    ))
          \override Beam #'auto-knee-gap = #'()
    }
    << <<
      \set PianoStaff.connectArpeggios = ##t
      \context Staff = up << << 
        \global 
        \clef violin
        \rechts
        \ZusatzStimme
      >> >>
      \context Staff = down << <<
        \global
        \clef bass
        \links
      >> >>
    >> >>
  \paper {
    #(paper-set-staff-size (* 6 mm))
    \context { \ScoreContext \override SpacingSpanner #'spacing-increment = #1.4 }
    indent = 1.2 \cm
    interscorelinefill = 5.0 \mm
    lastpagefill = 5.0 \mm
    interscoreline = 0.5 \mm
    \context{ \VoiceContext }
    \context {
      \PianoStaffContext
      \override VerticalAlignment #'forced-distance = #12
    }
  }
\midi {\tempo 4=50}
}
