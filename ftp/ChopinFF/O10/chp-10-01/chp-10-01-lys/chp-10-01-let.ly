%%%   WICHTIGER Hinweis zum Editieren auf Deutsch:   %%%
%%%
% Wer dem Notentext ein anderes layout, z.B. eine andere Zeilen- und/oder
% Seitenaufteilung oder eine andere "global-staff-size" geben und dabei nicht in
% ein un�bersehbares Chaos st�rzen m�chte, sollte vorher UNBEDINGT folgende zwei
% Dinge tun:
%   1. alle Zeilen, die mit "% mit Zeilen-Korrektur" enden, auskommentieren,
%   2. alle Zeilen, die mit "% ohne Zeilen-Korrektur" enden, einkommentieren,
% da in der vorliegenden Form einige Zeilen f�r ein besseres Design vertikal
% verschoben wurden.

%%%   IMPORTANT tip for editing in English:   %%%
%%%
% For creating another layout, par example with another global-staff-size or
% more or less bars per line, or more or less lines per page, or something like
% that, and not wanting to get in trouble over this, it is HIGHLY recommanded
% to do the following two steps before:
%   1. outcomment all lines, which end with "% mit Zeilen-Korrektur",
%   2. incomment all lines, which end with "% ohne Zeilen-Korrektur",
% because of in the current form some lines are shifted vertically for a better
% design.

\version "2.10.12"
%lastupdated = #(strftime "%Y/%B/%d" (localtime (current-time)))
footer = #(strftime "Mutopia-%Y/%B/%d-xxx" (localtime (current-time)))

\header {
  filename      =       "chp-10-01-a4.ly"
  title         =       \markup \fontsize #1 { Etüde C-Dur }
  composer      =       \markup \large { "Frédéric Chopin (1810 - 1849)" }
  opus          =       \markup \center-align { \fontsize #-11 " " \normalsize "Opus 10 Nr. 1" }
  enteredby     =       "Roland Goretzki"

 mutopiatitle           =       "Etüde C-Dur"
 mutopiacomposer        =       "ChopinFF"
 mutopiaopus            =       "Opus 10, No. 1"
 mutopiainstrument      =       "Piano"
 date                   =       "1828-1831"
 source                 =       "Peters, Herrmann Scholtz, 1900b"
 style                  =       "Romantic"
 copyright              =       "Public Domain"
 maintainer             =       "Roland Goretzki"
 maintainerEmail        =       "roland@roland-goretzki.de"
 maintainerWeb          =       "http://www.roland-goretzki.de/"
 lastupdated            =       "2007/01/25"

 footer = "Mutopia-2007/01/25-914"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"
#(set-global-staff-size 20)

#(set-default-paper-size "letter")    % letter
\paper{                               % letter
  top-margin = .6\cm                  % letter
  left-margin = 1.1\cm                % letter
  page-top-space = .8\cm              % letter
  line-width = 19.49\cm               % letter
  paper-width = 8.5\in                % letter
  paper-height = 11\in                % letter
  before-title-space = 0\cm           % letter
  print-first-page-number = ##f       % letter
  print-page-number = ##t             % letter
  % fuer sichtbares midi:              % letter
  %between-system-padding = #30        % letter
  between-system-padding = #4         % letter
  ragged-bottom=##f                   % letter
  ragged-last-bottom=##f              % letter
  bottom-margin = .6\cm               % letter
  % fuer midi auskommentieren:         % letter
  system-count = #34                  % letter
}                                     % letter

global = { \key c \major \time 4/4 s1*79 \bar "|." }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                              %
oben = \change Staff = up
unten = \change Staff = down
rauf = { \stemNeutral\oben }
runter = { \unten }
%
PH = \sustainUp
PR = \sustainDown
%
OKTAVA = \markup { \bold\fontsize #3.5 \italic "8" }
%
ACHTan = #(set-octavation 1)
ACHTaus = #(set-octavation 0)
%
FF = \markup { \dynamic ff }
FORTE = \markup { \dynamic f }
SF = \markup { \dynamic sf }
FZ = \markup { \dynamic fz }
PIANO = \markup { \dynamic p }
PP = \markup { \dynamic pp }
%
appa = \markup { \italic appassionato }
atempo = \markup { \italic { a tempo } }
crescendo = \markup { \italic crescendo }
cresc = \markup { \italic cresc. }
diminuendo = \markup { \italic diminuendo }
dimin = \markup { \italic dimin. }
dim = \markup { \italic dim. }
legato = \markup { \italic legato }
ritardando = \markup { \italic ritardando }
ritard = \markup { \italic ritard. }
rit = \markup { \italic rit. }
riten = \markup { \italic riten. }
ritenuto = \markup { \italic ritenuto }
smorzando = \markup { \italic { smorzando } }
smorz= \markup { \italic { smorz. } }
%
md = \markup { \italic m.d. }
ms = \markup { \italic m.s. }
mg = \markup { \italic m.g. }
%
rot = \once\override TextScript #'color = #red
rotfinger = \override Fingering #'color = #red
gruenfinger = \override Fingering #'color = #green
%
oktava = \markup { \finger\bold\fontsize #1.8 \italic "8" }
%
Extraspace = \once\override Score.SeparationItem #'padding = #.2
ExtraSpace = \once\override Score.SeparationItem #'padding = #.4
HalbExtraSpace = \once\override Score.SeparationItem #'padding = #.5
ExtraSPace = \once\override Score.SeparationItem #'padding = #.6
ExtraSPAce = \once\override Score.SeparationItem #'padding = #.8
ExtraSPACe = \once\override Score.SeparationItem #'padding = #1
ExtraSPACE = \once\override Score.SeparationItem #'padding = #1.5
%
KopfMerge = \override Staff.NoteCollision #'merge-differently-headed = ##t
einzelKopfMerge = \once\override Staff.NoteCollision #'merge-differently-headed = ##t
PunktMerge = \override Staff.NoteCollision #'merge-differently-dotted = ##t
einzelPunktMerge = \once\override Staff.NoteCollision #'merge-differently-dotted = ##t
%
Axdefault = #(set-accidental-style 'default)
Axforget = #(set-accidental-style 'forget)
Axpiano = #(set-accidental-style 'piano)
Axmodern = #(set-accidental-style 'modern)
AxpianoVorsicht = #(set-accidental-style 'piano-cautionary)
%
VollRatio = \once\override Slur #'ratio = #'1
%
%Triole = #(override-auto-beam-setting '(end * * 2 3) 1 8)
DreiZweiBalken = \set Staff.beatLength = #(ly:make-moment 1 32)
SechzehntelBalken = \set Staff.beatLength = #(ly:make-moment 1 16)
AchtelBalken = \set Staff.beatLength = #(ly:make-moment 1 8)
ViertelBalken = { #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
  #(override-auto-beam-setting '(end * * * *) 1 2 'Staff)
  #(override-auto-beam-setting '(end * * * *) 3 4 'Staff) }
%
%ViertelBalken = \set Staff.beatLength = #(ly:make-moment 1 4)
ViertelPunktBalken = \set Staff.beatLength = #(ly:make-moment 3 8)
HalbeBalken = \set Staff.beatLength = #(ly:make-moment 1 2)
HalbePunktBalken = \set Staff.beatLength = #(ly:make-moment 3 4)
GanzeBalken = \set Staff.beatLength = #(ly:make-moment 1 1)
%
TriolenZahlOben = \override TupletBracket #'direction = #1
TriolenZahlUnten = \override TupletBracket #'direction = #-1
KlammerOben = \override TupletBracket #'direction = #1
KlammerUnten = \override TupletBracket #'direction = #-1
KlammerWeg = \override TupletBracket #'bracket-visibility = ##f
KlammerAn = \override TupletBracket #'bracket-visibility = ##t
TriolenZahlWeg = \override TupletNumber #'transparent = ##t
TriolenZahl = \override TupletNumber #'transparent = ##f
%
KlammerUndZahlWeg = { \override TupletNumber #'transparent = ##t \override
TupletBracket #'bracket-visibility = ##f }
%
KlammerUndZahlAn = { \override TupletNumber #'transparent = ##f \override
TupletBracket #'bracket-visibility = ##t }
%
HalbeSpanner = \set tupletSpannerDuration = #(ly:make-moment 1 2)
ViertelSpanner = \set tupletSpannerDuration = #(ly:make-moment 1 4)
AchtelSpanner = \set tupletSpannerDuration = #(ly:make-moment 1 8)
%
SehrBreitKeil = \override Hairpin #'height = #'.95
BreitKeil = \override Hairpin #'height = #'.8
SchmalKeil = \override Hairpin #'height = #'.5
NormalKeil = \revert Hairpin #'height
onceSehrBreitKeil = \once\override Hairpin #'height = #'.95
onceBreitKeil = \once\override Hairpin #'height = #'.8
onceSchmalKeil = \once\override Hairpin #'height = #'.5
%
NormalePause = \revert Staff.Rest #'extra-offset
NormalerText = \revert TextScript #'extra-offset
NormaleDynamik = \revert DynamicText #'extra-offset
NormalerBogen = \revert Slur #'extra-offset
%
KlammerR = \markup { \fontsize #'-2 \musicglyph #"accidentals.rightparen" }
KlammerL = \markup { \fontsize #'-2 \musicglyph #"accidentals.leftparen" }
KlammerPaar = \markup { \fontsize #'-2 {
\musicglyph #"accidentals.leftparen" \hspace #1 \musicglyph #"accidentals.rightparen" } }
%
FingerKursiv = { \once\override Fingering #'font-encoding = #'text
    \once\override Fingering #'font-series = #'bold
    \once\override Fingering #'font-size = #-1
    \once\override Fingering #'font-shape = #'italic }
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       Die Verschiebe-Definitionen:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%
% Artikel: --------------------------------------------------------------- %
#(define* (Artikel dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Script 'extra-offset (cons dx dy) once)))
%
% Balken: --------------------------------------------------------------- %
#(define* (Balken dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Beam 'positions (cons dx dy) once)))
%
% BogenKurve: --------------------------------------------------------------- %
#(define* (BogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'height-limit dy once)))
%
% Bogen: --------------------------------------------------------------- %
#(define* (Bogen dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'extra-offset (cons dx dy) once)))
%
% Dynamik: --------------------------------------------------------------- %
#(define* (Dynamik dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'DynamicText 'extra-offset (cons dx dy) once)))
%
% Finger: --------------------------------------------------------------- %
#(define* (Finger dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Fingering 'extra-offset (cons dx dy) once)))
%
% GanztaktPause: --------------------------------------------------------------- %
#(define* (GanztaktPause dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'MultiMeasureRest 'extra-offset (cons dx dy) once)))
%
% Hals: --------------------------------------------------------------- %
#(define* (Hals dy #:optional once)
  (ly:export (mus:override 'Bottom 'Stem 'length dy once)))
%
% HalteBogenKurve: --------------------------------------------------------------- %
#(define* (HalteBogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'Tie 'height-limit dy once)))
%
% Tie: --------------------------------------------------------------- %
#(define* (Tie dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Tie 'extra-offset (cons dx dy) once)))
%
% Keil: --------------------------------------------------------------- %
#(define* (Keil dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Hairpin 'extra-offset (cons dx dy) once)))
%
% KeilWinkel: --------------------------------------------------------------- %
#(define* (KeilWinkel dy #:optional once)
  (ly:export (mus:override 'Bottom 'Hairpin 'height dy once)))
%
% Oktave: --------------------------------------------------------------- %
#(define* (Oktave dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'OttavaBracket 'extra-offset (cons dx dy) once)))
%
% Pause: --------------------------------------------------------------- %
#(define* (Pause dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Rest 'extra-offset (cons dx dy) once)))
%
% pause: --------------------------------------------------------------- %
#(define* (pause dy #:optional once)
  (ly:export (mus:override 'Bottom 'Rest 'Y-offset dy once)))
%
% Pedal: --------------------------------------------------------------- %
#(define* (Pedal dx dy #:optional once)
  (ly:export (mus:override 'Staff 'SustainPedal 'extra-offset (cons dx dy) once)))
%
% PhrasierungsBogenKurve: --------------------------------------------------------------- %
#(define* (PhrasierungsBogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'PhrasingSlur 'height-limit dy once)))
%
% PhBogen: --------------------------------------------------------------- %
#(define* (PhBogen dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'PhrasingSlur 'extra-offset (cons dx dy) once)))
%
% Ratio: --------------------------------------------------------------- %
#(define* (Ratio dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'ratio dy once)))
%
% Text: --------------------------------------------------------------- %
#(define* (Text dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'TextScript 'extra-offset (cons dx dy) once)))
%
% Triole: --------------------------------------------------------------- %
#(define* (Triole dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'TupletNumber 'extra-offset (cons dx dy) once)))
%
% Klammer: --------------------------------------------------------------- %
#(define* (Klammer dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'TupletBracket 'extra-offset (cons dx dy) once)))
%
%%%%%%%%%%%%%%%%%%%%%%   Ende des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

OKTplusIpunktVIII = { \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 1.8) }

rechts = \context Staff \relative c'{
  \context Voice = "rechts"
  \override GrandStaff.InstrumentName #'extra-offset = #'(-1.7 . -.6)
  \override GrandStaff.InstrumentName #'font-size = #'3
  \set GrandStaff.instrumentName = \markup { \number { 1 \hspace #-1 . } }
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 3)
  \override Score.RehearsalMark #'self-alignment-X = #'-1
  \mark \markup { Allegro { ( \fontsize #'-3 {
    \general-align #Y #DOWN \note #"4" #.8 } \fontsize #'-2 { = 176 } ) } }
  \override Score.TextScript #'font-size = #0
  \override Score.DynamicTextSpanner #'font-size = #0
  \override Score.TextScript #'font-shape = #'italic
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% =============== % TAKT  1:
% ---- 1. Gruppe:
\unten\stemUp
#(Dynamik -.5 -1.3 #t)
r16%N
^\f
#(Text 0 5.2 #t)
c,%N
-1%F
^\legato
g'%N
-2%F
c%N
-4%F
% ---- 2. Gruppe:
\stemNeutral\oben
e->%N
-5%F
c%N
-1%F
g'%N
-2%F
c%N
-4%F
% ---- 3. Gruppe:
e->%N
-5%F
c%N
-1%F
g'%N
%-X%F
c%N
-4%F
% ---- 4. Gruppe:
\once\override Staff.OttavaBracket #'extra-offset = #'(0 . .5)
\ACHTan
e->%N
-5%F
c%N
-1%F
g'%N
%-X%F
c%N
-4%F
% =============== % TAKT  2:
% ---- 1. Gruppe:
#(Finger 0 .7 #t)
e->%N
-5%F
c%N
-4%F
g%N
-2%F
c,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e->%N
-5%F
c%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
% ---- 3. Gruppe:
\stemDown
e->%N
-5%F
c%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(9.8 . 6.8)
e->%N
-5%F
c%N
%-X%F
\runter
g%N
%-X%F
c,%N
%-X%F
% =============== % TAKT  3:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
a'%N
-2%F
c%N
-3%F
% ---- 2. Gruppe:
\rauf
f->%N
-5%F
c%N
-1%F
a'%N
-2%F
c%N
-3%F
% ---- 3. Gruppe:
f->%N
-5%F
c%N
-1%F
a'%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\override Staff.OttavaBracket #'extra-offset = #'(0 . 1)
\ACHTan
f->%N
%-X%F
c%N
-1%F
a'%N
-2%F
c%N
-3%F
% =============== % TAKT  4:
% ---- 1. Gruppe:
e%N
-5%F
c%N
-4%F
a%N
-2%F
c,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e%N
-5%F
c%N
%-X%F
a%N
%-X%F
c,%N
%-X%F
% ---- 3. Gruppe:
\stemDown
e%N
-5%F
c%N
%-X%F
a%N
%-X%F
c,%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(9.3 . 6.3)
d%N
-5%F
c%N
%-X%F
\runter
a%N
%-X%F
c,%N
%-X%F
% =============== % TAKT  5:
% ---- 1. Gruppe:
\stemUp
r%N
h%N
-1%F
g'%N
-2%F
h%N
-4%F
% ---- 2. Gruppe:
\rauf
d%N
-5%F
h%N
-1%F
g'%N
%-X%F
h%N
%-X%F
% ---- 3. Gruppe:
d%N
%-X%F
h%N
-1%F
g'%N
%-X%F
h%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
d%N
%-X%F
h%N
-1%F
g'%N
-2%F
a%N
%-X%F
% =============== % TAKT  6:
% ---- 1. Gruppe:
d%N
-5%F
a%N
-3%F
fis%N
-2%F
c%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
d%N
-5%F
a%N
-3%F
fis%N
-2%F
c%N
-1%F
% ---- 3. Gruppe:
\stemDown
d%N
-5%F
a%N
%-X%F
fis%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(9.3 . 6.3)
d%N
-5%F
\runter
a%N
%-X%F
fis%N
%-X%F
c%N
%-X%F
% =============== % TAKT  7:
% ---- 1. Gruppe:
\stemUp
r%N
\once\override Beam #'positions = #'(-4.4 . -2.4)
c%N
-1%F
f!%N
-2%F
as%N
-3%F
% ---- 2. Gruppe:
\rauf
\once\override Beam #'positions = #'(.9 . 3.4)
d%N
-5%F
c%N
-1%F
f%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
as%N
%-X%F
% ---- 3. Gruppe:
d%N
%-X%F
c%N
-1%F
f%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
as%N
%-X%F
% ---- 4. Gruppe:
\OKTplusIpunktVIII
\ACHTan
d%N
%-X%F
c%N
-1%F
f%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
as%N
-3%F
% =============== % TAKT  8:
% ---- 1. Gruppe:
d%N
-5%F
g,%N
-3%F
f%N
-2%F
h,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
d%N
-5%F
g,%N
%-X%F
f%N
%-X%F
h,%N
%-X%F
% ---- 3. Gruppe:
d%N
-5%F
g,%N
%-X%F
f%N
%-X%F
h,%N
%-X%F
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.3 . 6.3)
dis->%N
-5%F
\runter
g,%N
%-X%F
f%N
%-X%F
h,%N
%-X%F
% =============== % TAKT  9:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
g'%N
-2%F
c%N
-4%F
% ---- 2. Gruppe:
\rauf
e%N
-5%F
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
e%N
%-X%F
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
e%N
%-X%F
c%N
-1%F
g'%N
%-X%F
c%N
-4%F
% =============== % TAKT 10:
% ---- 1. Gruppe:
e%N
-5%F
c%N
-4%F
g%N
-2%F
c,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e%N
-5%F
c%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
% ---- 3. Gruppe:
\stemDown
e%N
-5%F
c%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(9.8 . 6.8)
e%N
-5%F
c%N
%-X%F
\runter
g%N
%-X%F
c,%N
%-X%F
% =============== % TAKT 11:
% ---- 1. Gruppe:
\stemUp
r%N
#(Text -.3 -1.9 #t)
c%N
-1%F
-1%F
^\KlammerL
f%N
-2%F
-2%F
c'%N
-4%F
-5%F
% ---- 2. Gruppe:
\rauf
f%N
-5%F
-3%F
c%N
-1%F
-1%F
f%N
-2%F
-2%F
c'%N
-4%F
-5%F
% ---- 3. Gruppe:
f%N
-5%F
-3%F
c%N
-1%F
-1%F
f%N
-2%F
-2%F
c'%N
-4%F
-5%F
% ---- 4. Gruppe:
\ACHTan
#(Text 1.5 -1.9 #t)
f%N
-5%F
-3%F
^\KlammerR
c%N
-1%F
f%N
%-X%F
c'%N
-4%F
% =============== % TAKT 12:
% ---- 1. Gruppe:
e%N
-5%F
c%N
-4%F
fis,%N
-2%F
c%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e%N
-5%F
c%N
%-X%F
fis,%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
\stemDown
e%N
-5%F
c%N
%-X%F
fis,%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(9.8 . 6.8)
e%N
-5%F
c%N
%-X%F
\runter
fis,%N
%-X%F
c%N
%-X%F
% =============== % TAKT 13:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
g'%N
-2%F
c%N
-4%F
% ---- 2. Gruppe:
\rauf
d%N
-5%F
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
d%N
%-X%F
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
d%N
%-X%F
c%N
-1%F
g'%N
%-X%F
c%N
-4%F
% =============== % TAKT 14:
% ---- 1. Gruppe:
d%N
-5%F
h%N
-4%F
g%N
-2%F
h,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
d%N
-5%F
h%N
%-X%F
g%N
%-X%F
h,%N
%-X%F
% ---- 3. Gruppe:
d%N
-5%F
h%N
%-X%F
g%N
%-X%F
h,%N
%-X%F
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.3 . 6.3)
d%N
-5%F
h%N
%-X%F
\runter
g%N
%-X%F
h,%N
%-X%F
% =============== % TAKT 15:
% ---- 1. Gruppe:
\stemUp
r%N
d%N
-1%F
g%N
-2%F
d'%N
-4%F
% ---- 2. Gruppe:
\rauf
e%N
-5%F
d%N
-1%F
g%N
%-X%F
d'%N
%-X%F
% ---- 3. Gruppe:
e%N
%-X%F
d%N
-1%F
g%N
%-X%F
d'%N
%-X%F
% ---- 4. Gruppe:
\OKTplusIpunktVIII
\ACHTan
e%N
%-X%F
d%N
-1%F
g%N
%-X%F
d'%N
-4%F
% =============== % TAKT 16:
% ---- 1. Gruppe:
e%N
-5%F
c%N
-4%F
g%N
-2%F
c,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e%N
-5%F
c%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
% ---- 3. Gruppe:
\stemDown
e%N
-5%F
c%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(9.8 . 6.8)
e%N
-5%F
c%N
%-X%F
\runter
g%N
%-X%F
c,%N
%-X%F
% =============== % TAKT 17:
% ---- 1. Gruppe:
\stemUp
r%N
\once\override Beam #'positions = #'(-1.2 . .8) %% Balken unten am Taktanfang mit Vorzeichen
e%N
-1%F
c'%N
-2%F
\rauf
e%N
-4%F
% ---- 2. Gruppe:
f%N
-5%F
e%N
-1%F
c'%N
%-X%F
e%N
%-X%F
% ---- 3. Gruppe:
f%N
%-X%F
e%N
-1%F
c'%N
%-X%F
e%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
f%N
%-X%F
e%N
-1%F
c'%N
%-X%F
e%N
-4%F
% =============== % TAKT 18:
% ---- 1. Gruppe:
f%N
-5%F
d%N
-4%F
h%N
-2%F
d,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
f%N
-5%F
d%N
%-X%F
h%N
%-X%F
d,%N
%-X%F
% ---- 3. Gruppe:
\stemDown
f%N
-5%F
d%N
%-X%F
h%N
%-X%F
d,%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
f%N
-5%F
d%N
%-X%F
h%N
%-X%F
\runter
d,%N
%-X%F
% =============== % TAKT 19:
% ---- 1. Gruppe:
\stemUp
r%N
d%N
-1%F
h'%N
-2%F
d%N
-4%F
% ---- 2. Gruppe:
\rauf
e%N
-5%F
d%N
-1%F
h'%N
%-X%F
d%N
%-X%F
% ---- 3. Gruppe:
e%N
%-X%F
d%N
-1%F
h'%N
%-X%F
d%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
e%N
%-X%F
d%N
-1%F
h'%N
%-X%F
d%N
-4%F
% =============== % TAKT 20:
% ---- 1. Gruppe:
e%N
-5%F
c%N
-4%F
a%N
-2%F
c,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e%N
-5%F
c%N
%-X%F
a%N
%-X%F
c,%N
%-X%F
% ---- 3. Gruppe:
\stemDown
e%N
-5%F
c%N
%-X%F
a%N
%-X%F
c,%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(9.8 . 6.8)
e%N
-5%F
c%N
%-X%F
\runter
a%N
%-X%F
c,%N
%-X%F
% =============== % TAKT 21:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
a'%N
-2%F
c%N
-4%F
% ---- 2. Gruppe:
\rauf
e%N
-5%F
c%N
-1%F
a'%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
e%N
%-X%F
c%N
-1%F
a'%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\once\override Staff.OttavaBracket #'shorten-pair = #'(0 . .1)
\ACHTan
e%N
%-X%F
c%N
-1%F
a'%N
%-X%F
c%N
-4%F
% =============== % TAKT 22:
% ---- 1. Gruppe:
dis%N
-5%F
h%N
-3%F
a%N
-2%F
h,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
dis%N
-5%F
h%N
%-X%F
a%N
%-X%F
h,%N
%-X%F
% ---- 3. Gruppe:
dis%N
-5%F
h%N
%-X%F
a%N
%-X%F
h,%N
%-X%F
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.3 . 6.3)
\stemUp
dis%N
-5%F
\runter
h%N
%-X%F
a%N
%-X%F
h,%N
%-X%F
% =============== % TAKT 23:
% ---- 1. Gruppe:
r%N
h%N
-1%F
a'%N
-2%F
h%N
-3%F
% ---- 2. Gruppe:
\rauf
e%N
-5%F
h%N
-1%F
a'%N
-2%F
h%N
-3%F
% ---- 3. Gruppe:
e%N
-5%F
h%N
-1%F
a'%N
-2%F
h%N
%-X%F
% ---- 4. Gruppe:
\OKTplusIpunktVIII
\ACHTan
e%N
%-X%F
h%N
-1%F
a'%N
-2%F
h%N
-3%F
% =============== % TAKT 24:
% ---- 1. Gruppe:
e%N
-5%F
h%N
-3%F
gis%N
-2%F
h,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e%N
-5%F
h%N
%-X%F
gis%N
%-X%F
h,%N
%-X%F
% ---- 3. Gruppe:
e%N
-5%F
h%N
%-X%F
gis%N
%-X%F
h,%N
%-X%F
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.8 . 6.8)
e%N
-5%F
h%N
%-X%F
\runter
gis%N
%-X%F
h,%N
%-X%F
% =============== % TAKT 25:
% ---- 1. Gruppe:
\stemUp
r%N
e%N
-1%F
a%N
-2%F
cis%N
-3%F
% ---- 2. Gruppe:
\rauf
\once\override Beam #'positions = #'(2.3 . 3.8)
g'!%N
-5%F
e%N
-1%F
a%N
%-X%F
cis%N
%-X%F
% ---- 3. Gruppe:
g'!%N
%-X%F
e%N
-1%F
a%N
%-X%F
cis%N
%-X%F
% ---- 4. Gruppe:
g'!%N
%-X%F
cis,%N
%-X%F
a%N
%-X%F
e%N
%-X%F
% =============== % TAKT 26:
% ---- 1. Gruppe:
g'%N
-5%F
c,!%N
-3%F
a%N
-2%F
e%N
-1%F
% ---- 2. Gruppe:
g%N
-5%F
c,%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
a%N
%-X%F
e%N
%-X%F
% ---- 3. Gruppe:
\once\override Beam #'positions = #'(2.3 . -.7)
g%N
-5%F
c,%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
\runter
a%N
%-X%F
e%N
%-X%F
% ---- 4. Gruppe:
\rauf
\once\override Beam #'positions = #'(10.3 . 7.3)
fis'%N
-5%F
c%N
%-X%F
\runter
a%N
%-X%F
d,%N
%-X%F
% =============== % TAKT 27:
% ---- 1. Gruppe:
\stemUp
r%N
d%N
-1%F
g%N
-2%F
c%N
-4%F
% ---- 2. Gruppe:
\rauf
f!%N
-5%F
d%N
-1%F
g%N
-2%F
c%N
-4%F
% ---- 3. Gruppe:
f%N
-5%F
d%N
-1%F
g%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\OKTplusIpunktVIII
\ACHTan
f%N
%-X%F
d%N
-1%F
g%N
%-X%F
c%N
-4%F
% =============== % TAKT 28:
% ---- 1. Gruppe:
f%N
-5%F
h,%N
-3%F
g%N
-2%F
d%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
f%N
-5%F
h,%N
%-X%F
g%N
%-X%F
d%N
%-X%F
% ---- 3. Gruppe:
\stemDown
f%N
-5%F
h,%N
%-X%F
g%N
%-X%F
d%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(10.3 . 7.3)
\stemUp
f%N
-5%F
\runter
h,%N
%-X%F
g%N
%-X%F
d%N
%-X%F
% =============== % TAKT 29:
% ---- 1. Gruppe:
r%N
c%N
-1%F
g'%N
-2%F
b%N
-3%F
% ---- 2. Gruppe:
\rauf
e%N
-5%F
c%N
-1%F
g'%N
-2%F
b%N
-3%F
% ---- 3. Gruppe:
e%N
-5%F
c%N
-1%F
g'%N
%-X%F
b%N
%-X%F
% ---- 4. Gruppe:
\OKTplusIpunktVIII
\ACHTan
e%N
%-X%F
c%N
-1%F
g'%N
-2%F
c%N
-4%F
% =============== % TAKT 30:
% ---- 1. Gruppe:
#(Text -.3 1.8 #t)
es%N
-5%F
_5%F2
_\KlammerL
b%N
-4%F
_3%F2
es,%N
-2%F
_1%F2
#(Text .6 -1.1 #t)
c%N
^\markup \center-align { { \finger 1 } }%F
_3%F2
% ---- 2. Gruppe:
\ACHTaus
es!%N
-5%F
_5%F2
b%N
-4%F
_2%F2
es,%N
-2%F
_1%F2
#(Text .6 -1.1 #t)
c%N
^\markup \center-align { { \finger 1 } }%F
_3%F2
% ---- 3. Gruppe:
#(Text .6 3 #t)
es%N
-5%F
-\markup \center-align { { \finger 5 } }%F2
#(Text .6 1.2 #t)
b%N
-4%F
-\markup \center-align { { \finger 2 } }%F2
es,%N
-2%F
_1%F2
c%N
-1%F
_3%F2
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.8 . 6.8)
\stemUp
es%N
-5%F
_5%F2
#(Text .6 -1.1 #t)
b%N
^\markup \center-align { { \finger 4 } }%F
_2%F2
\runter
#(Text .6 2.1 #t)
es,%N
-2%F
-\markup \center-align { { \finger 1 } }%F2
#(Text .6 1.1 #t)
c%N
-1%F
-\markup \center-align { { \finger 2 } }%F2
% =============== % TAKT 31:
% ---- 1. Gruppe:
r%N
#(Text .5 1.1 #t)
c%N
-1%F
-\markup { \finger 1 }%F2
#(Text .6 2 #t)
es%N
-2%F
-\markup \center-align { { \finger 2 } }%F2
#(Text .6 3.3 #t)
a%N
-4%F
-\markup \center-align { { \finger 5 } }%F2
% ---- 2. Gruppe:
\rauf
es'%N
-5%F
_3%F2
c%N
-1%F
_1%F2
es%N
-2%F
_2%F2
a%N
-4%F
_5%F2
% ---- 3. Gruppe:
es'%N
-5%F
_3%F2
#(Text .6 -1.1 #t)
c%N
^\markup \center-align { { \finger 1 } }%F
_1%F2
es%N
-2%F
_2%F2
a%N
-4%F
_5%F2
% ---- 4. Gruppe:
%\OKTplusIpunktVIII
\OKTplusIpunktVIII
\ACHTan
es'%N
-5%F
_3%F2
#(Text .6 -1.1 #t)
c%N
^\markup \center-align { { \finger 1 } }%F
%_X%F2
es%N
-2%F
%_X%F2
a%N
-4%F
_5%F2
% =============== % TAKT 32:
% ---- 1. Gruppe:
#(Text .6 1.8 #t)
es'%N
-5%F
-\markup \center-align { { \finger 4 } }%F2
#(Text .6 1 #t)
as,%N
-3%F
-\markup \center-align { { \finger 2 } }%F2
es%N
-2%F
_1%F2
#(Text .6 -1.1 #t)
ces%N
^\markup \center-align { { \finger 1 } }%F
_3%F2
% ---- 2. Gruppe:
\ACHTaus
#(Text .6 1.9 #t)
es!%N
-5%F
-\markup \center-align { { \finger 5 } }%F2
#(Text .6 1 #t)
as,%N
-3%F
-\markup \center-align { { \finger 2 } }%F2
es%N
-2%F
_1%F2
#(Text .6 -1.1 #t)
ces%N
^\markup \center-align { { \finger 1 } }%F
_3%F2
% ---- 3. Gruppe:
#(Text .6 3 #t)
es%N
-5%F
-\markup \center-align { { \finger 5 } }%F2
#(Text .6 1.1 #t)
as,%N
-3%F
-\markup \center-align { { \finger 2 } }%F2
es%N
-2%F
_1%F2
ces%N
-1%F
_3%F2
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.8 . 6.8)
\stemUp
es%N
-5%F
_5%F2
\runter
#(Text .6 3.5 #t)
as,%N
-3%F
-\markup \center-align { { \finger 2 } }%F2
#(Text .6 2 #t)
es%N
-2%F
_\markup \center-align { { \finger 1 } }%F2
#(Text 1.5 1.8 #t)
ces!%N
-1%F
_2%F2
_\KlammerR
% =============== % TAKT 33:
% ---- 1. Gruppe:
r%N
b%N
-1%F
f'%N
-2%F
as%N
-3%F
% ---- 2. Gruppe:
\rauf
\once\override Beam #'positions = #'(1.1 . 3)
#(Text .3 -1.2 #t)
d%N
-5%F
-\cresc
b%N
-1%F
f'%N
%-X%F
as%N
%-X%F
% ---- 3. Gruppe:
d%N
%-X%F
b%N
-1%F
f'%N
%-X%F
as%N
%-X%F
% ---- 4. Gruppe:
\OKTplusIpunktVIII
\ACHTan
d%N
%-X%F
b%N
-1%F
f'%N
%-X%F
as%N
%-X%F
% =============== % TAKT 34:
% ---- 1. Gruppe:
d%N
-5%F
gis,%N
-3%F
e!%N
-2%F
b%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
d%N
-5%F
gis,%N
%-X%F
e%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
b%N
%-X%F
% ---- 3. Gruppe:
d%N
-5%F
gis,%N
%-X%F
e%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
b%N
%-X%F
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.3 . 6.3)
\stemUp
d%N
-5%F
\runter
gis,%N
%-X%F
e%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
b!%N
%-X%F
% =============== % TAKT 35:
% ---- 1. Gruppe:
#(Dynamik .5 -.1 #t)
r%N
^\f
a%N
-1%F
%_X%F2
#(Text 3.1 3.6 #t)
e'%N
-2%F
%_X%F2
_\KlammerL
#(Text .5 3.4 #t)
a%N
-4%F
_\markup { \finger 5 }%F2
% ---- 2. Gruppe:
\rauf
cis%N
-5%F
_3%F2
a%N
-1%F
%_X%F2
e'%N
-2%F
%_X%F2
a%N
-4%F
_5%F2
% ---- 3. Gruppe:
cis%N
-5%F
_3%F2
a%N
-1%F
%_X%F2
e'%N
%-X%F
%_X%F2
a%N
-4%F
_5%F2
% ---- 4. Gruppe:
\OKTplusIpunktVIII
\ACHTan
cis%N
-5%F
_3%F2
a%N
-1%F
%_X%F2
e'%N
%-X%F
%_X%F2
a%N
-4%F
_5%F2
% =============== % TAKT 36:
% ---- 1. Gruppe:
cis%N
-5%F
_4%F2
a%N
-4%F
_2%F2
e%N
-2%F
_1%F2
a,%N
-1%F
_2%F2
% ---- 2. Gruppe:
\ACHTaus
cis%N
-5%F
_4%F2
-\dimin
a%N
%-X%F
_2%F2
e%N
%-X%F
_1%F2
a,%N
-1%F
_2%F2
% ---- 3. Gruppe:
cis%N
-5%F
_4%F2
a%N
%-X%F
%_X%F2
e%N
%-X%F
_1%F2
a,%N
-1%F
_2%F2
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(8.8 . 5.8)
\stemUp
cis%N
-5%F
_4%F2
\runter
a%N
%-X%F
%_X%F2
#(Finger 0 2 #t)
e%N
%-X%F
_1%F2
#(Text 1.5 1.8 #t)
a,%N
-1%F
_2%F2
_\KlammerR
% =============== % TAKT 37:
% ---- 1. Gruppe:
r%N
a%N
-1%F
d%N
-2%F
fis%N
-3%F
% ---- 2. Gruppe:
\rauf
c'!%N
-5%F
a%N
-1%F
d%N
%-X%F
fis%N
%-X%F
% ---- 3. Gruppe:
c'%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
a%N
-1%F
d%N
%-X%F
fis%N
%-X%F
% ---- 4. Gruppe:
c'%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
a%N
-1%F
d%N
%-X%F
fis%N
-3%F
% =============== % TAKT 38:
% ---- 1. Gruppe:
\OKTplusIpunktVIII
\ACHTan
c'%N
-5%F
f,!%N
-3%F
d%N
-2%F
g,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
c%N
-5%F
f,%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
d%N
%-X%F
g,%N
%-X%F
% ---- 3. Gruppe:
c%N
-5%F
f,%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
d%N
%-X%F
\runter
g,%N
%-X%F
% ---- 4. Gruppe:
\stemUp
#(Finger -.3 -3.1 #t)
h^>%N
-5%F
f%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
d%N
%-X%F
g,%N
%-X%F
% =============== % TAKT 39:
% ---- 1. Gruppe:
r%N
g%N
-1%F
c%N
-2%F
e%N
-3%F
% ---- 2. Gruppe:
h'%N
-5%F
g%N
-1%F
\rauf
c%N
%-X%F
e%N
%-X%F
% ---- 3. Gruppe:
h'%N
%-X%F
g%N
-1%F
c%N
%-X%F
e%N
%-X%F
% ---- 4. Gruppe:
h'%N
%-X%F
\ACHTan
g%N
-1%F
c%N
%-X%F
e%N
-3%F
% =============== % TAKT 40:
% ---- 1. Gruppe:
h'%N
-5%F
e,%N
-3%F
c%N
-2%F
f,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
h%N
-5%F
e,%N
%-X%F
c%N
%-X%F
f,%N
%-X%F
% ---- 3. Gruppe:
h%N
-5%F
e,%N
%-X%F
c%N
%-X%F
\runter
f,%N
%-X%F
% ---- 4. Gruppe:
a^>%N
-5%F
e%N
%-X%F
c%N
%-X%F
f,%N
%-X%F
% =============== % TAKT 41:
% ---- 1. Gruppe:
\stemUp
r%N
f%N
-1%F
h%N
-2%F
d%N
-3%F
% ---- 2. Gruppe:
\once\override Beam #'positions = #'(-.7 . .8)
a'%N
-5%F
f%N
-1%F
h%N
%-X%F
\rauf
d%N
%-X%F
% ---- 3. Gruppe:
\stemNeutral
a'%N
%-X%F
f%N
-1%F
h%N
%-X%F
d%N
%-X%F
% ---- 4. Gruppe:
a'%N
%-X%F
f%N
-1%F
h%N
%-X%F
d%N
-3%F
% =============== % TAKT 42:
% ---- 1. Gruppe:
g%N
-5%F
d%N
-3%F
h%N
-2%F
e,%N
-1%F
% ---- 2. Gruppe:
g%N
-5%F
d%N
%-X%F
h%N
%-X%F
e,%N
-1%F
% ---- 3. Gruppe:
a%N
-2%F
-\cresc
c%N
-3%F
g'%N
-5%F
e%N
-1%F
% ---- 4. Gruppe:
a%N
-2%F
c%N
%-X%F
g'%N
%-X%F
e%N
-4%F
% =============== % TAKT 43:
% ---- 1. Gruppe:
f%N
-5%F
c%N
-3%F
a%N
-2%F
d,%N
-1%F
% ---- 2. Gruppe:
\stemDown
f%N
-5%F
c%N
%-X%F
a%N
%-X%F
d,%N
-1%F
% ---- 3. Gruppe:
g%N
-2%F
h%N
-3%F
f'%N
-5%F
d%N
-1%F
% ---- 4. Gruppe:
g%N
%-X%F
h%N
%-X%F
f'%N
%-X%F
d%N
-4%F
% =============== % TAKT 44:
% ---- 1. Gruppe:
e%N
-5%F
h%N
-3%F
g%N
-2%F
c,%N
-1%F
% ---- 2. Gruppe:
e%N
-5%F
h%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
% ---- 3. Gruppe:
\stemNeutral
f%N
-2%F
a%N
%-X%F
e'%N
%-X%F
c%N
-1%F
% ---- 4. Gruppe:
f%N
%-X%F
a%N
%-X%F
e'%N
%-X%F
c%N
-4%F
% =============== % TAKT 45:
% ---- 1. Gruppe:
#(Dynamik 0 -.1 #t)
d%N
-5%F
\f
a%N
-3%F
f%N
-2%F
h,%N
-1%F
% ---- 2. Gruppe:
d%N
-5%F
a%N
%-X%F
f%N
%-X%F
h,%N
%-X%F
% ---- 3. Gruppe:
\once\override Beam #'positions = #'(9.3 . 6.3)
d%N
-5%F
\runter
a%N
%-X%F
f%N
%-X%F
h,%N
%-X%F
% ---- 4. Gruppe:
\stemUp r4%N
%-X%F
% =============== % TAKT 46:
% ---- 1. Gruppe:
\rauf
dis'''16%N
-5%F
a%N
-3%F
fis%N
-2%F
h,%N
-1%F
% ---- 2. Gruppe:
dis%N
-5%F
a%N
%-X%F
fis%N
%-X%F
h,%N
%-X%F
% ---- 3. Gruppe:
\once\override Beam #'positions = #'(9.3 . 6.3)
dis%N
-5%F
\runter
a%N
%-X%F
fis%N
%-X%F
h,%N
%-X%F
% ---- 4. Gruppe:
\stemUp r4%N
%-X%F
% =============== % TAKT 47:
% ---- 1. Gruppe:
\stemUp
r16%N
\ExtraSpace
#(Finger .4 0 #t)
#(Text .4 1.7 #t)
h%N
-1%F
_2%F2
_\KlammerL
#(Text .6 2 #t)
e%N
-2%F
-\markup \center-align { { \finger 1 } }%F2
#(Text .6 3 #t)
gis%N
-3%F
-\markup \center-align { { \finger 2 } }%F2
% ---- 2. Gruppe:
\rauf
e'%N
-5%F
_5%F2
h%N
-1%F
_3%F2
e%N
-2%F
_1%F2
gis%N
-3%F
_2%F2
% ---- 3. Gruppe:
e'%N
-5%F
_5%F2
#(Text .6 -1.1 #t)
h%N
^\markup \center-align { { \finger 1 } }%F
_3%F2
e%N
-2%F
_1%F2
gis%N
-3%F
_2%F2
% ---- 4. Gruppe:
\ACHTan
e'%N
-5%F
_5%F2
#(Text .6 -1.1 #t)
h%N
^\markup \center-align { { \finger 1 } }%F
_3%F2
e%N
-2%F
_1%F2
gis%N
-3%F
_2%F2
% =============== % TAKT 48:
% ---- 1. Gruppe:
e'%N
-5%F
_5%F2
gis,%N
-3%F
_2%F2
e%N
-2%F
_1%F2
#(Text .6 -1.1 #t)
h%N
^\markup \center-align { { \finger 1 } }%F
_3%F2
% ---- 2. Gruppe:
\ACHTaus
#(Text 0 -1.4 #t)
e%N
-5%F
_5%F2
-\dim
gis,%N
-3%F
_2%F2
e%N
-2%F
_1%F2
#(Text .6 -1.1 #t)
h%N
^\markup \center-align { { \finger 1 } }%F
_3%F2
% ---- 3. Gruppe:
#(Text .6 3 #t)
#(Keil -.6 5.7 #t)
e%N
-5%F
-\markup \center-align { { \finger 5 } }%F2
\>
gis,%N
-3%F
_2%F2
e%N
-2%F
_1%F2
#(Text 1.5 1.8 #t)
h%N
-1%F
_3%F2
_\KlammerR
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(12.3 . 9.3)
f'!%N
-5%F
h,%N
%-X%F
\runter
g!%N
%-X%F
d%N
%-X%F
\!
%%%%%%%%%%%%%%%%%%%%%%%%%  REPRISE  %%%%%%%%%%%%%%%%%%%%%%%%%%
% =============== % TAKT 49:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
g'%N
-2%F
c%N
-4%F
% ---- 2. Gruppe:
\rauf
e%N
-5%F
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
e%N
%-X%F
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
e%N
%-X%F
c%N
-1%F
g'%N
%-X%F
c%N
-4%F
% =============== % TAKT 50:
% ---- 1. Gruppe:
e%N
-5%F
c%N
-4%F
g%N
-2%F
c,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e%N
-5%F
c%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
% ---- 3. Gruppe:
\stemDown
e%N
-5%F
c%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(9.8 . 6.8)
e%N
-5%F
c%N
%-X%F
\runter
g%N
%-X%F
c,%N
%-X%F
% =============== % TAKT 51:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
a'%N
-2%F
c%N
-3%F
% ---- 2. Gruppe:
\rauf
f%N
-5%F
c%N
-1%F
a'%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
f%N
%-X%F
c%N
-1%F
a'%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\OKTplusIpunktVIII
\ACHTan
f%N
%-X%F
c%N
-1%F
a'%N
%-X%F
c%N
-4%F
% =============== % TAKT 52:
% ---- 1. Gruppe:
e%N
-5%F
c%N
-4%F
a%N
-2%F
c,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e%N
-5%F
c%N
%-X%F
a%N
%-X%F
c,%N
%-X%F
% ---- 3. Gruppe:
\stemDown
e%N
-5%F
c%N
%-X%F
a%N
%-X%F
c,%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(9.3 . 7.3)
d%N
-5%F
c%N
%-X%F
\runter
a%N
%-X%F
c,%N
%-X%F
% =============== % TAKT 53:
% ---- 1. Gruppe:
\stemUp
r%N
h%N
-1%F
g'%N
-2%F
h%N
-4%F
% ---- 2. Gruppe:
\rauf
d%N
-5%F
h%N
-1%F
g'%N
%-X%F
h%N
%-X%F
% ---- 3. Gruppe:
d%N
%-X%F
h%N
-1%F
g'%N
%-X%F
h%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
d%N
%-X%F
h%N
-1%F
g'%N
-2%F
a%N
-3%F
% =============== % TAKT 54:
% ---- 1. Gruppe:
d%N
-5%F
a%N
-3%F
fis%N
-2%F
c%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
d%N
-5%F
a%N
%-X%F
fis%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
\stemDown
d%N
-5%F
a%N
%-X%F
fis%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(9.3 . 6.3)
d%N
-5%F
\runter
a%N
%-X%F
fis%N
%-X%F
c%N
%-X%F
% =============== % TAKT 55:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
f!%N
-2%F
as%N
-3%F
% ---- 2. Gruppe:
\rauf
\once\override Beam #'positions = #'(1.2 . 3.1)
d%N
-5%F
c%N
-1%F
f%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
as%N
%-X%F
% ---- 3. Gruppe:
d%N
%-X%F
c%N
-1%F
f%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
as%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
d%N
%-X%F
c%N
-1%F
f%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
as%N
-3%F
% =============== % TAKT 56:
% ---- 1. Gruppe:
d%N
-5%F
g,%N
-3%F
f%N
-2%F
h,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
d%N
-5%F
g,%N
%-X%F
f%N
%-X%F
h,%N
%-X%F
% ---- 3. Gruppe:
d%N
-5%F
g,%N
%-X%F
f%N
%-X%F
h,%N
%-X%F
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.3 . 6.3)
dis->%N
-5%F
\runter
g,%N
%-X%F
f%N
%-X%F
h,%N
%-X%F
% =============== % TAKT 57:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
g'%N
-2%F
c%N
-4%F
% ---- 2. Gruppe:
\rauf
e%N
-5%F
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
e%N
%-X%F
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
e%N
%-X%F
c%N
-1%F
g'%N
%-X%F
c%N
-4%F
% =============== % TAKT 58:
% ---- 1. Gruppe:
e%N
-5%F
c%N
-4%F
g%N
-2%F
c,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e%N
-5%F
c%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
% ---- 3. Gruppe:
\stemDown
e%N
-5%F
c%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(9.8 . 6.8)
e%N
-5%F
c%N
%-X%F
\runter
g%N
%-X%F
c,%N
%-X%F
% =============== % TAKT 59:
% ---- 1. Gruppe:
\stemUp
#(Text 2.8 1.2 #t)
r%N
_\KlammerL
\ExtraSpace
#(Text .4 1.1 #t)
c%N
-1%F
_\markup { \finger 1 }%F2
#(Text .6 2.3 #t)
f%N
-2%F
_\markup \center-align { { \finger 2 } }%F2
#(Text .6 4.3 #t)
c'%N
-4%F
_\markup \center-align { { \finger 5 } }%F2
% ---- 2. Gruppe:
\rauf
f%N
-5%F
_3%F2
c%N
-1%F
_1%F2
f%N
-2%F
_2%F2
c'%N
-4%F
_5%F2
% ---- 3. Gruppe:
\stemDown
f%N
-5%F
_3%F2
c%N
-1%F
_1%F2
f%N
%-X%F
_2%F2
c'%N
%-X%F
_5%F2
% ---- 4. Gruppe:
\stemNeutral
\ACHTan
#(Text 1.5 1.8 #t)
f%N
%-X%F
_3%F2
_\KlammerR
c%N
-1%F
f%N
%-X%F
c'%N
-4%F
% =============== % TAKT 60:
% ---- 1. Gruppe:
e%N
-5%F
c%N
-4%F
fis,%N
-2%F
c%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e%N
-5%F
c%N
%-X%F
fis,%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
es%N
-5%F
c%N
%-X%F
fis,%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.8 . 6.8)
es->%N
-5%F
c%N
%-X%F
\runter
fis,%N
%-X%F
c%N
%-X%F
% =============== % TAKT 61:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
g'%N
-2%F
c%N
-4%F
% ---- 2. Gruppe:
\rauf
d%N
-5%F
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
d%N
%-X%F
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
d%N
%-X%F
c%N
-1%F
g'%N
%-X%F
c%N
-4%F
% =============== % TAKT 62:
% ---- 1. Gruppe:
d%N
-5%F
h%N
-4%F
g%N
-2%F
h,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
d%N
-5%F
h%N
%-X%F
g%N
%-X%F
h,%N
%-X%F
% ---- 3. Gruppe:
d%N
-5%F
h%N
%-X%F
g%N
%-X%F
h,%N
%-X%F
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.3 . 6.3)
d%N
-5%F
h%N
%-X%F
\runter
g%N
%-X%F
h,%N
%-X%F
% =============== % TAKT 63:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
a'%N
-2%F
c%N
-4%F
% ---- 2. Gruppe:
\rauf
d%N
-5%F
c%N
-1%F
a'%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
d%N
%-X%F
c%N
-1%F
a'%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
d%N
%-X%F
c%N
-1%F
a'%N
%-X%F
c%N
-4%F
% =============== % TAKT 64:
% ---- 1. Gruppe:
es%N
-5%F
c%N
-4%F
a%N
-2%F
c,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
es%N
-5%F
c%N
%-X%F
a%N
%-X%F
c,%N
%-X%F
% ---- 3. Gruppe:
dis->%N
-5%F
h%N
-3%F
a%N
-2%F
h,%N
-1%F
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.3 . 6.3)
dis->%N
-5%F
h%N
%-X%F
\runter
a%N
%-X%F
h,%N
%-X%F
% =============== % TAKT 65:
% ---- 1. Gruppe:
\stemUp
r%N
h%N
-1%F
gis'%N
-2%F
h%N
-3%F
% ---- 2. Gruppe:
\rauf
e%N
-5%F
h%N
-1%F
gis'%N
-2%F
h%N
-3%F
% ---- 3. Gruppe:
e%N
-5%F
h%N
-1%F
gis'%N
%-X%F
h%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
e%N
%-X%F
h%N
-1%F
gis'%N
%-X%F
h%N
%-X%F
% =============== % TAKT 66:
% ---- 1. Gruppe:
e%N
-5%F
h%N
-3%F
gis%N
-2%F
h,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
e%N
-5%F
h%N
%-X%F
gis%N
%-X%F
h,%N
%-X%F
% ---- 3. Gruppe:
e%N
-5%F
h%N
%-X%F
gis%N
%-X%F
h,%N
%-X%F
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(9.8 . 6.8)
e%N
-5%F
h%N
%-X%F
\runter
gis%N
%-X%F
h,%N
%-X%F
% =============== % TAKT 67:
% ---- 1. Gruppe:
\stemUp
r%N
d%N
-1%F
a'%N
-2%F
c%N
-3%F
% ---- 2. Gruppe:
\rauf
f%N
-5%F
d%N
-1%F
a'%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
f%N
%-X%F
d%N
-1%F
a'%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
f%N
%-X%F
d%N
-1%F
a'%N
%-X%F
c%N
-3%F
% =============== % TAKT 68:
% ---- 1. Gruppe:
f%N
-5%F
h,%N
-3%F
g%N
-2%F
d%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
f%N
-5%F
h,%N
%-X%F
g%N
%-X%F
d%N
%-X%F
% ---- 3. Gruppe:
\stemDown
f%N
-5%F
h,%N
%-X%F
g%N
%-X%F
d%N
%-X%F
% ---- 4. Gruppe:
\stemNeutral
\once\override Beam #'positions = #'(10.3 . 7.3)
f%N
-5%F
h,%N
%-X%F
\runter
g%N
%-X%F
d%N
%-X%F
% =============== % TAKT 69:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
g'%N
-2%F
c%N
-4%F
% ---- 2. Gruppe:
\rauf
#(Text 0 -1.3 #t)
e%N
-5%F
-\cresc
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
e%N
-5%F
c%N
-1%F
b'%N
-2%F
c%N
-3%F
% ---- 4. Gruppe:
g'%N
-5%F
\>
c,%N
%-X%F
b%N
%-X%F
e,%N
%-X%F
\!
% =============== % TAKT 70:
% ---- 1. Gruppe:
fis'%N
-5%F
\>
c%N
-3%F
a%N
-2%F
es%N
-1%F
\!
% ---- 2. Gruppe:
\stemUp
#(Keil -.2 0 #t)
fis%N
-5%F
\>
c%N
%-X%F
a%N
%-X%F
es%N
%-X%F
\!
% ---- 3. Gruppe:
\stemNeutral
#(Keil -.4 0 #t)
f'%N
-5%F
\>
h,%N
%-X%F
gis%N
%-X%F
d%N
%-X%F
\!
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(10.3 . 7.3)
#(Keil -.6 5.5 #t)
f!%N
-5%F
\>
h,%N
%-X%F
\runter
gis%N
%-X%F
d%N
%-X%F
\!
% =============== % TAKT 71:
% ---- 1. Gruppe:
\stemUp
r%N
c%N
-1%F
g'!%N
-2%F
c%N
-4%F
% ---- 2. Gruppe:
\rauf
#(Keil 0 .5 #t)
e%N
-5%F
\<
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 3. Gruppe:
e%N
%-X%F
c%N
-1%F
g'%N
%-X%F
c%N
%-X%F
% ---- 4. Gruppe:
e%N
%-X%F
c%N
%-X%F
g%N
%-X%F
c,%N
%-X%F
\!
% =============== % TAKT 72:
% ---- 1. Gruppe:
#(Keil 0 .5 #t)
es'%N
-5%F
\>
a,%N
-3%F
fis%N
-2%F
c%N
-1%F
% ---- 2. Gruppe:
es%N
-5%F
a,%N
%-X%F
fis%N
%-X%F
c%N
%-X%F
\!
% ---- 3. Gruppe:
d'%N
-5%F
as%N
%-X%F
f%N
%-X%F
h,%N
%-X%F
% ---- 4. Gruppe:
\once\override Beam #'positions = #'(8.8 . 5.8)
d%N
-5%F
\runter
as%N
%-X%F
f%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
h,%N
%-X%F
% =============== % TAKT 73:
% ---- 1. Gruppe:
\stemUp
r%N
b%N
-1%F
e!%N
-2%F
g%N
-3%F
% ---- 2. Gruppe:
\rauf
#(Keil 0 .5 #t)
des'%N
-5%F
\<
b%N
-1%F
e%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
g%N
%-X%F
% ---- 3. Gruppe:
des'%N
%-X%F
b%N
-1%F
e%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
g%N
%-X%F
% ---- 4. Gruppe:
des'%N
%-X%F
b%N
-1%F
e%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
g%N
-3%F
\!
% =============== % TAKT 74:
% ---- 1. Gruppe:
\OKTplusIpunktVIII
\ACHTan
#(Keil 0 -.5 #t)
des'%N
-5%F
\>
fis,%N
-3%F
es%N
-2%F
a,%N
!%Scholz-Sicherheits-Aufl.-zeichen
-1%F
% ---- 2. Gruppe:
\ACHTaus
des%N
-5%F
fis,%N
%-X%F
es%N
%-X%F
a,%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
\!
% ---- 3. Gruppe:
des^>%N
-5%F
fis,%N
%-X%F
es%N
%-X%F
a,%N
!%Scholz-Sicherheits-Aufl.-zeichen
%-X%F
% ---- 4. Gruppe:
c'%N
-5%F
fis,%N
%-X%F
es%N
%-X%F
a,%N
%-X%F
% =============== % TAKT 75:
% ---- 1. Gruppe:
r%N
as%N
-1%F
d%N
-2%F
f!%N
-3%F
% ---- 2. Gruppe:
c'%N
-5%F
\<
as%N
-1%F
d%N
%-X%F
f!%N
%-X%F
% ---- 3. Gruppe:
c'%N
-5%F
as%N
-1%F
d%N
%-X%F
f%N
%-X%F
% ---- 4. Gruppe:
\OKTplusIpunktVIII
\ACHTan
c'%N
-5%F
f,%N
%-X%F
d%N
%-X%F
as%N
!%Scholz-Sicherheits-Vorzeichen
%-X%F
\!
% =============== % TAKT 76:
% ---- 1. Gruppe:
h'%N
-5%F
f%N
-3%F
d%N
-2%F
g,%N
-1%F
\ACHTaus
% ---- 2. Gruppe:
#(Text 0 -2.1 #t)
h%N
-5%F
-\dim
f%N
%-X%F
d%N
%-X%F
#(Keil 0 .5 #t)
g,%N
%-X%F
\>
% ---- 3. Gruppe:
\stemUp
h%N
-5%F
f%N
%-X%F
d%N
%-X%F
%\runter
g,%N
%-X%F
% ---- 4. Gruppe:
\clef bass
#(Finger -.2 -1.7 #t)
h%N
-5%F
f%N
%-X%F
d%N
%-X%F
g,%N
%-X%F
\!
% ======== % TAKT 77:
% ---- 1. Gruppe:
\ExtraSpace
\clef violin
\runter
r%N
g%N
-1%F
e'%N
-2%F
g%N
-3%F
% ---- 2. Gruppe:
c%N
-5%F
g%N
-1%F
\rauf
e'%N
%-X%F
g%N
%-X%F
% ---- 3. Gruppe:
#(Keil 0 .5 #t)
c%N
%-X%F
\<
g%N
-1%F
e'%N
%-X%F
g%N
%-X%F
% ---- 4. Gruppe:
\ACHTan
c%N
%-X%F
g%N
-1%F
e'%N
%-X%F
g%N
-3%F
\!
% ======== % TAKT 78:
% ---- 1. Gruppe:
#(Keil 0 .5 #t)
c%N
-5%F
\>
g%N
-3%F
e%N
-2%F
g,%N
-1%F
% ---- 2. Gruppe:
\ACHTaus
c%N
-5%F
g%N
%-X%F
e%N
%-X%F
g,%N
%-X%F
\!
% ---- 3. Gruppe:
\once\override Beam #'positions = #'(11.8 . 8.8)
\stemUp
c%N
-5%F
g%N
%-X%F
e%N
%-X%F
\runter
g,%N
%-X%F
% ---- 4. Gruppe:
c%N
-5%F
g%N
%-X%F
e%N
%-X%F
g,%N
%-X%F
\rauf
% ======== % TAKT 79:
r1\fermata
}

links =  \context Staff \relative c{
  \context Voice = "links"
\override NoteColumn #'force-hshift = #0
\tieDown
#(Tie 0 -.3 #t)
<c, c'>1 ~                                       % Takt  1
<c c'>                                           % Takt  2
\set fingeringOrientations = #'(right)
<f, f'>                                          % Takt  3
#(Text 2.9 1.4 #t)
  <fis fis'>-\markup { \finger 4 }               % Takt  4
\stemDown #(Text 2 3.4 #t)
  <g g'>2-\markup { \finger 5 }
\break\bar ""
\stemUp #(Text 2 1.4 #t)
  <fis fis'>4-\markup { \finger 3 } <e e'>       % Takt  5
<d d'>1                                          % Takt  6
<g g'> ~                                         % Takt  7
\break
<g g'>                                           % Takt  8
#(Tie -.2 -.4 #t)
<c c'> ~                                         % Takt  9
<c c'>                                           % Takt 10
\pageBreak
<a a'> ~                                         % Takt 11
<a a'>                                           % Takt 12
\break
<g g'> ~                                         % Takt 13
<g g'>                                           % Takt 14
<c c'> ~                                         % Takt 15
<c c'>                                           % Takt 16
<a a'>                                           % Takt 17
%\set Score.skipTypesetting = ##t
<h h'>2
\break\bar ""
<a a'>                                           % Takt 18
<gis gis'>1                                      % Takt 19
<a a'>2 <g! g'!>                                 % Takt 20
%\set Score.skipTypesetting = ##f
<f f'>1 ~                                        % Takt 21
<f f'>                                           % Takt 22
<e e'> ~                                         % Takt 23
\pageBreak
<e e'>                                           % Takt 24
<a a'>                                           % Takt 25
<d d'>                                           % Takt 26
<g, g'> ~                                        % Takt 27
<g g'>                                           % Takt 28
<c c'>                                           % Takt 29
\break
<ges ges'>                                       % Takt 30
<f f'>                                           % Takt 31
<ces' ces'>                                      % Takt 32
b ~                                              % Takt 33
\pageBreak
<b b'>                                           % Takt 34
#(Tie -.7 -.2 #t)
<a a'> ~                                         % Takt 35
<a a'>                                           % Takt 36
#(Finger .2 -.3 #t)
<d-2>                                            % Takt 37
<g, g'>                                          % Takt 38
\set fingeringOrientations = #'(left)
#(Finger -.3 -.3 #t)
<c-2>                                            % Takt 39
<f, f'>                                          % Takt 40
\break
#(Finger -.2 -.3 #t)
<h-2>                                            % Takt 41
<e, e'>2 <a a'>                                  % Takt 42
<d, d'> <g g'>                                   % Takt 43
<c, c'> <f f'>                                   % Takt 44
<h h'>2. \stemDown #(Finger -.2 -.3 #t) <h-5>4 ~ % Takt 45
\stemNeutral <h h'>2. \stemDown
  #(Finger -.2 -.3 #t) <h-2>4                    % Takt 46
\pageBreak
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 4) (Y-offset . -1)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 4))                 % ohne Zeilen-Korrektur
#(Tie 0 -.5 #t)
\stemNeutral <e, e'>1 ~                          % Takt 47
<e e'>2. <d d'>4                                 % Takt 48
\break
\noPageBreak
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 0) (Y-offset . 30)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 0))                 % ohne Zeilen-Korrektur
%%%%%%%%%%%%%%%%%%%%%%%%%  REPRISE  %%%%%%%%%%%%%%%%%%%%%%%%%%
#(Text 3 5.2 #t)
<c c'>1-\markup { \finger 1 - \finger 5 } ~      % Takt 49
<c' c'>                                          % Takt 50
\set fingeringOrientations = #'(right)
<f, f'>                                          % Takt 51
\break
\noPageBreak
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 0) (Y-offset . 60.5)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 0))                 % ohne Zeilen-Korrektur
#(Text 2.9 1.4 #t)
  <fis fis'>-\markup { \finger 4 }               % Takt 52
\stemDown #(Text 2 3.4 #t)
  <g g'>2-\markup { \finger 5 }
\stemUp #(Text 2 1.4 #t)
  <fis fis'>4-\markup { \finger 3 } <e e'>       % Takt 53
<d d'>1                                          % Takt 54
\noPageBreak
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 0) (Y-offset . 89.8)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 0))                 % ohne Zeilen-Korrektur
<g g'> ~                                         % Takt 55
<g g'>                                           % Takt 56
\break
\noPageBreak
#(Tie -.2 -.4 #t)
<c c'> ~                                         % Takt 57
<c c'>                                           % Takt 58
\pageBreak
#(Tie -.7 -.5 #t)
<a a'> ~                                         % Takt 59
<a a'>2.
#(Text 2 1.4 #t)
<as as'>4-\markup { \finger 4 }                  % Takt 60
<g g'>1 ~                                        % Takt 61
<g g'>                                           % Takt 62
#(Text 2.9 1.4 #t)
<fis fis'>-\markup { \finger 4 }                 % Takt 63
#(Text 3 1.7 #t)
<f! f'!>-\markup { \finger 5 - \finger 4 }       % Takt 64
#(Text 3 5.2 #t)
<e e'>-\markup { \finger 1 - \finger 5 } ~       % Takt 65
#(Text 3 1.7 #f)
<e' e'>-\markup { \finger 5 - \finger 4 }        % Takt 66
d-\markup { \finger 5 - \finger 2 }              % Takt 67
<g, g'>                                          % Takt 68
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 0) (Y-offset . -2)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 0))                 % ohne Zeilen-Korrektur
c-\markup { \finger 2 - \finger 5 } ~            % Takt 69
<c c'>                                           % Takt 70
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -1) (Y-offset . 23.5)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -1))                 % ohne Zeilen-Korrektur
c-\markup { \finger 3 - \finger 2 }              % Takt 71
<g g'>                                           % Takt 72
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 0) (Y-offset . 49.3)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 0))                 % ohne Zeilen-Korrektur
<g g'> ~                                         % Takt 73
<g g'>                                           % Takt 74
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 1) (Y-offset . 77.1)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 1))                 % ohne Zeilen-Korrektur
<g g'> ~                                         % Takt 75
<g g'>                                           % Takt 76
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 0) (Y-offset . 103.5)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 0))                 % ohne Zeilen-Korrektur
<c, c'> \PR ~                                    % Takt 77
<c c'>                                           % Takt 78
\ExtraSPace #(Pedal 6 2 #t)<c c'>\fermata \PH    % Takt 79
}

MIDIrechts = \context Staff \relative c'{
  \context Voice = "MIDIrechts"
  \override GrandStaff.InstrumentName #'extra-offset = #'(-1.7 . -.6)
  \override GrandStaff.InstrumentName #'font-size = #'3
  \set GrandStaff.instrumentName = \markup { \number { 1 \hspace #-1 . } }
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 3)
  \override Score.RehearsalMark #'self-alignment-X = #'-1
  \mark \markup { Allegro { ( \fontsize #'-3 {
    \general-align #Y #DOWN \note #"4" #.8 } \fontsize #'-2 { = 176 } ) } }
  \override Score.TextScript #'font-size = #0
  \override Score.DynamicTextSpanner #'font-size = #0
  \override Score.TextScript #'font-shape = #'italic
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ============================================= % MIDIrechts Takt  1:
%         \set Score.skipTypesetting = ##t %%%% AB HIER
\unten\stemUp r16 c, g' c
\stemNeutral\oben e-> c g' c
e-> c g' c
\ACHTan e-> c g' c
% ============================================= % MIDIrechts Takt  2:
e-> c g c,
\ACHTaus e-> c g c,
\stemDown e-> c g c,
\once\override Beam #'positions = #'(10.8 . 7.8)
\stemNeutral e-> c \runter g c,
% ============================================= % MIDIrechts Takt  3:
\stemUp r c a' c
\rauf f-> c a' c
f-> c a' c
\ACHTan f-> c a' c
% ============================================= % MIDIrechts Takt  4:
e c a c,
\ACHTaus e c a c,
\stemDown e c a c,
\once\override Beam #'positions = #'(10.3 . 7.3)
\stemNeutral d c \runter a c,
% ============================================= % MIDIrechts Takt  5:
\stemUp r h g' h
\rauf d h g' h
d h g' h
\ACHTan d h g' a
% ============================================= % MIDIrechts Takt  6:
d a fis c
\ACHTaus d a fis c
\stemDown d a fis c
\stemNeutral
\once\override Beam #'positions = #'(10.3 . 7.3)
d \runter a fis c
% ============================================= % MIDIrechts Takt  7:
\stemUp r
\once\override Beam #'positions = #'(-5.4 . -3.4)
c f!  as
\once\override Beam #'positions = #'(.9 . 3.4)
\rauf d c f as
d c f as
\ACHTan d c f as
% ============================================= % MIDIrechts Takt  8:
d g, f h,
\ACHTaus d g, f h,
d g, f h,
\once\override Beam #'positions = #'(10.3 . 7.3)
dis-> \runter g, f h,
% ============================================= % MIDIrechts Takt  9:
\stemUp r c g' c
\rauf e c g' c
e c g' c
\ACHTan e c g' c
% ============================================= % MIDIrechts Takt 10:
e c g c,
\ACHTaus e c g c,
\stemDown e c g c,
\stemNeutral
\once\override Beam #'positions = #'(10.8 . 7.8)
e c \runter g c,
% ============================================= % MIDIrechts Takt 11:
\stemUp r c f c'
\rauf f c f c'
f c f c'
\ACHTan f c f c'
% ============================================= % MIDIrechts Takt 12:
e c fis, c
\ACHTaus e c fis, c
\stemDown e c fis, c
\stemNeutral
\once\override Beam #'positions = #'(10.8 . 7.8)
e c \runter fis, c
% ============================================= % MIDIrechts Takt 13:
\stemUp r c g' c
\rauf d c g' c
d c g' c
\ACHTan d c g' c
% ============================================= % MIDIrechts Takt 14:
d h g h,
\ACHTaus d h g h,
d h g h,
\once\override Beam #'positions = #'(10.3 . 7.3)
d h \runter g h,
% ============================================= % MIDIrechts Takt 15:
\stemUp r d g d'
\rauf e d g d'
e d g d'
\ACHTan e d g d'
% ============================================= % MIDIrechts Takt 16:
e c g c,
\ACHTaus e c g c,
\stemDown e c g c,
\once\override Beam #'positions = #'(10.8 . 7.8)
\stemNeutral e c \runter g c,
% ============================================= % MIDIrechts Takt 17:
\stemUp r
\once\override Beam #'positions = #'(-1.2 . .8)
e c' \rauf e
f e c' e
f e c' e
\ACHTan f e c' e
% ============================================= % MIDIrechts Takt 18:
f d h d,
\ACHTaus f d h d,
\stemDown f d h d,
\stemNeutral f d h d,
%\stemNeutral f d h \runter d,
% ============================================= % MIDIrechts Takt 19:
\stemUp r d h' d
e d h' d
%\rauf e d h' d
e d h' d
\ACHTan e d h' d
% ============================================= % MIDIrechts Takt 20:
e c a c,
\ACHTaus e c a c,
\stemDown e c a c,
%\once\override Beam #'positions = #'(10.8 . 7.8)
\stemNeutral e c a c,
%\stemNeutral e c \runter a c,
% ============================================= % MIDIrechts Takt 21:
\stemUp r c a' c
e c a' c
%\rauf e c a' c
e c a' c
\ACHTan e c a' c
% ============================================= % MIDIrechts Takt 22:
dis h a h,
\ACHTaus dis h a h,
dis h a h,
%\once\override Beam #'positions = #'(10.3 . 7.3)
\stemUp dis h a h,
%\stemUp dis \runter h a h,
% ============================================= % MIDIrechts Takt 23:
r h a' h
e h a' h
%\rauf e h a' h
e h a' h
\ACHTan e h a' h
% ============================================= % MIDIrechts Takt 24:
e h gis h,
\ACHTaus e h gis h,
e h gis h,
\once\override Beam #'positions = #'(10.8 . 7.8)
e h \runter gis h,
% ============================================= % MIDIrechts Takt 25:
\stemUp r e a cis
\once\override Beam #'positions = #'(2.3 . 3.8)
\rauf g'!  e a cis
g'!  e a cis
g'!  cis, a e
% ============================================= % MIDIrechts Takt 26:
g' c,!  a e
g c, a e
\once\override Beam #'positions = #'(2.3 . -.7)
g c, \runter a e
\rauf
\once\override Beam #'positions = #'(11.3 . 8.3)
fis' c \runter a d,
% ============================================= % MIDIrechts Takt 27:
\stemUp r d g c
\rauf f!  d g c
f d g c
\ACHTan f d g c
% ============================================= % MIDIrechts Takt 28:
f h, g d
\ACHTaus f h, g d
\stemDown f h, g d
\stemNeutral
\once\override Beam #'positions = #'(11.3 . 8.3)
\stemUp f \runter h, g d
% ============================================= % MIDIrechts Takt 29:
r c g' b
\rauf e c g' b
e c g' b
\ACHTan e c g' c
% ============================================= % MIDIrechts Takt 30:
es b es, c
\ACHTaus es!  b es, c
es b es, c
\once\override Beam #'positions = #'(10.8 . 7.8)
\stemUp es b \runter es, c
% ============================================= % MIDIrechts Takt 31:
r c es a
\rauf es' c es a
es' c es a
\ACHTan es' c es a
% ============================================= % MIDIrechts Takt 32:
es' as, es ces
\ACHTaus es!  as, es ces
es as, es ces
\once\override Beam #'positions = #'(10.8 . 7.8)
\stemUp es \runter as, es ces!
% ============================================= % MIDIrechts Takt 33:
r b f' as
\once\override Beam #'positions = #'(1.1 . 3)
\rauf d -\cresc b f' as
d b f' as
\ACHTan d b f' as
% ============================================= % MIDIrechts Takt 34:
d gis, e!  b
\ACHTaus d gis, e b
d gis, e b
\once\override Beam #'positions = #'(10.3 . 7.3)
\stemUp d \runter gis, e b!
% ============================================= % MIDIrechts Takt 35:
r a e' a
\rauf cis a e' a
cis a e' a
\ACHTan cis a e' a
% ============================================= % MIDIrechts Takt 36:
cis a e a,
\ACHTaus cis -\dimin a e a,
cis a e a,
\once\override Beam #'positions = #'(9.8 . 6.8)
\stemUp cis \runter a e a,
% ============================================= % MIDIrechts Takt 37:
r a d fis
\rauf c'!  a d fis
c' a d fis
c' a d fis
% ============================================= % MIDIrechts Takt 38:
\ACHTan c' f,!  d g,
\ACHTaus c f, d g,
c f, d \runter g,
\stemUp h^> f d g,
% ============================================= % MIDIrechts Takt 39:
r g c e
h' g \rauf c e
h' g c e
h' \ACHTan g c e
% ============================================= % MIDIrechts Takt 40:
h' e, c f,
\ACHTaus h e, c f,
h e, c \runter f,
a^> e c f,
%         \set Score.skipTypesetting = ##f %%%% BIS HIER
% ============================================= % MIDIrechts Takt 41:
\stemUp r f h d
\once\override Beam #'positions = #'(-.7 . .8)
a' f h \rauf d
\stemNeutral a' f h d
a' f h d
% ============================================= % MIDIrechts Takt 42:
g d h e,
g d h e,
a -\cresc c g' e
a c g' e
% ============================================= % MIDIrechts Takt 43:
f c a d,
\stemDown f c a d,
g h f' d
g h f' d
% ============================================= % MIDIrechts Takt 44:
e h g c,
e h g c,
\stemNeutral f a e' c
f a e' c
% ============================================= % MIDIrechts Takt 45:
d a f h,
d a f h,
\once\override Beam #'positions = #'(10.3 . 7.3)
d \runter a f h,
\stemUp r4
% ============================================= % MIDIrechts Takt 46:
\rauf dis'''16 a fis h,
dis a fis h,
\once\override Beam #'positions = #'(10.3 . 7.3)
dis \runter a fis h,
\stemUp r4
% ============================================= % MIDIrechts Takt 47:
\stemUp r16 h e gis
\rauf e' h e gis
e' h e gis
\ACHTan e' h e gis
% ============================================= % MIDIrechts Takt 48:
e' gis, e h
\ACHTaus e -\dim gis, e h
e gis, e h
%\once\override Beam #'positions = #'(12.3 . 9.3)
f'!  h, g!  d
%f'!  h, \runter g!  d
%%%%%%%%%%%%%%%%%%%%%%%%%  REPRISE  %%%%%%%%%%%%%%%%%%%%%%%%%%
% ============================================= % MIDIrechts Takt 49:
\stemUp r c g' c
e c g' c
%\rauf e c g' c
e c g' c
\ACHTan e c g' c
% ============================================= % MIDIrechts Takt 50:
e c g c,
\ACHTaus e c g c,
\stemDown e c g c,
\once\override Beam #'positions = #'(10.8 . 7.8)
\stemNeutral e c \runter g c,
% ============================================= % MIDIrechts Takt 51:
\stemUp r c a' c
\rauf f c a' c
f c a' c
\ACHTan f c a' c
% ============================================= % MIDIrechts Takt 52:
e c a c,
\ACHTaus e c a c,
\stemDown e c a c,
\once\override Beam #'positions = #'(10.3 . 8.3)
\stemNeutral d c \runter a c,
% ============================================= % MIDIrechts Takt 53:
\stemUp r h g' h
\rauf d h g' h
d h g' h
\ACHTan d h g' a
% ============================================= % MIDIrechts Takt 54:
d a fis c
\ACHTaus d a fis c
\stemDown d a fis c
%\once\override Beam #'positions = #'(10.3 . 7.3)
\stemNeutral d a fis c
%\stemNeutral d \runter a fis c
% ============================================= % MIDIrechts Takt 55:
\stemUp r c f!  as
\once\override Beam #'positions = #'(1.2 . 3.1)
d c f as
%\rauf d c f as
d c f as
\ACHTan d c f as
% ============================================= % MIDIrechts Takt 56:
d g, f h,
\ACHTaus d g, f h,
d g, f h,
\once\override Beam #'positions = #'(10.3 . 7.3)
dis-> \runter g, f h,
% ============================================= % MIDIrechts Takt 57:
\stemUp r c g' c
\rauf e c g' c
e c g' c
\ACHTan e c g' c
% ============================================= % MIDIrechts Takt 58:
e c g c,
\ACHTaus e c g c,
\stemDown e c g c,
\once\override Beam #'positions = #'(10.8 . 7.8)
\stemNeutral e c \runter g c,
% ============================================= % MIDIrechts Takt 59:
\stemUp r c f c'
\rauf f c f c'
\stemDown f c f c'
\ACHTan \stemNeutral f c f c'
% ============================================= % MIDIrechts Takt 60:
e c fis, c
\ACHTaus e c fis, c
es c fis, c
\once\override Beam #'positions = #'(10.8 . 7.8)
es-> c \runter fis, c
% ============================================= % MIDIrechts Takt 61:
\stemUp r c g' c
\rauf d c g' c
d c g' c
\ACHTan d c g' c
% ============================================= % MIDIrechts Takt 62:
d h g h,
\ACHTaus d h g h,
d h g h,
\once\override Beam #'positions = #'(10.3 . 7.3)
d h \runter g h,
% ============================================= % MIDIrechts Takt 63:
\stemUp r c a' c
\rauf d c a' c
d c a' c
\ACHTan d c a' c
% ============================================= % MIDIrechts Takt 64:
es c a c,
\ACHTaus es c a c,
dis-> h a h,
\once\override Beam #'positions = #'(10.3 . 7.3)
dis-> h \runter a h,
% ============================================= % MIDIrechts Takt 65:
\stemUp r h gis' h
\rauf e h gis' h
e h gis' h
\ACHTan e h gis' h
% ============================================= % MIDIrechts Takt 66:
e h gis h,
\ACHTaus e h gis h,
e h gis h,
\once\override Beam #'positions = #'(10.8 . 7.8)
e h \runter gis h,
% ============================================= % MIDIrechts Takt 67:
\stemUp r d a' c
\rauf f d a' c
f d a' c
\ACHTan f d a' c
% ============================================= % MIDIrechts Takt 68:
f h, g d
\ACHTaus f h, g d
\stemDown f h, g d
\once\override Beam #'positions = #'(11.3 . 8.3)
\stemNeutral f h, \runter g d
% ============================================= % MIDIrechts Takt 69:
\stemUp r c g' c
\rauf e -\cresc c g' c
e c b' c
g' c, b e,
% ============================================= % MIDIrechts Takt 70:
fis' c a es
\stemUp fis c a es
\stemNeutral f' h, gis d
\once\override Beam #'positions = #'(10.3 . 7.3)
f! h, \runter gis d
% ============================================= % MIDIrechts Takt 71:
\stemUp r c g'!  c
\rauf e c g' c
e c g' c
e c g c,
% ============================================= % MIDIrechts Takt 72:
es' a, fis c
es a, fis c
d' as f h,
\once\override Beam #'positions = #'(9.8 . 6.8)
d \runter as f h,
% ============================================= % MIDIrechts Takt 73:
\stemUp r b e!  g
\rauf des' b e g
des' b e g
des' b e g
% ============================================= % MIDIrechts Takt 74:
\ACHTan des' fis, es a,
\ACHTaus des fis, es a,
des^> fis, es a,
c' fis, es a,
% ============================================= % MIDIrechts Takt 75:
r as d f!
c' as d f!
c' as d f
\ACHTan c' f, d as
% ============================================= % MIDIrechts Takt 76:
h' f d g, \ACHTaus
h -\dim f d g,
%\once\override Beam #'positions = #'(14.8 . 11.8)
\stemUp h f d g,
%\stemUp h f d \runter g,
h f d g,
% ============================================= % MIDIrechts Takt 77:
r g e' g
c g e' g
%c g \rauf e' g
c g e' g
\ACHTan c g e' g
% ============================================= % MIDIrechts Takt 78:
c g e g,
\ACHTaus c g e g,
\once\override Beam #'positions = #'(12.8 . 9.8)
\stemUp c g e \runter g,
c g e g, \rauf
% ============================================= % MIDIrechts Takt 79:
r1\fermata
}

MIDIlinks =  \context Staff \relative c{
  \context Voice = "MIDIlinks"
\override NoteColumn #'force-hshift = #0
\tieDown
#(Tie 0 -.3 #t)
<< { c,1 ~ c } \\ {
     c'16 c16*15/16 ~       % MIDIlinks Takt  1
     c1*29/16 s16           % MIDIlinks Takt  2
} >>
<f,, f'>1                   % MIDIlinks Takt  3
  <fis fis'>                % MIDIlinks Takt  4
\stemDown
  <g g'>2                      
\stemUp
  <fis fis'>4 <e e'>        % MIDIlinks Takt  5
<d d'>1                     % MIDIlinks Takt  6
<g g'> ~                    % MIDIlinks Takt  7
<g g'>                      % MIDIlinks Takt  8
#(Tie -.2 -.4 #t)
<< { c1 ~ c } \\ {
     c'16 c16*15/16 ~       % MIDIlinks Takt  9
     c1*29/16 s16           % MIDIlinks Takt 10
} >>
<a, a'>1 ~                  % MIDIlinks Takt 11
<a a'>                      % MIDIlinks Takt 12
<g g'> ~                    % MIDIlinks Takt 13
<g g'>                      % MIDIlinks Takt 14
<c c'> ~                    % MIDIlinks Takt 15
<c c'>1*15/16 s16           % MIDIlinks Takt 16
<a a'>1                     % MIDIlinks Takt 17
<h h'>2
<a a'>                      % MIDIlinks Takt 18
<gis gis'>1                 % MIDIlinks Takt 19
<a a'>2 <g! g'!>            % MIDIlinks Takt 20
<f f'>1 ~                   % MIDIlinks Takt 21
<f f'>                      % MIDIlinks Takt 22
<e e'> ~                    % MIDIlinks Takt 23
<e e'>                      % MIDIlinks Takt 24
<a a'>                      % MIDIlinks Takt 25
<d d'>1*15/16 s16           % MIDIlinks Takt 26
<g, g'>1 ~                  % MIDIlinks Takt 27
<g g'>                      % MIDIlinks Takt 28
<< { c1 } \\ {
     c'16 c16*15/16         % MIDIlinks Takt 29
} >>
<ges, ges'>1                % MIDIlinks Takt 30
<f f'>                      % MIDIlinks Takt 31
<ces' ces'>1*15/16 s16      % MIDIlinks Takt 32
b1 ~                        % MIDIlinks Takt 33
<b b'>1*15/16 s16           % MIDIlinks Takt 34
#(Tie -.7 -.2 #t)
<< { a1 ~ a } \\ {
     a'16 a16*15/16 ~       % MIDIlinks Takt 35
     a1*29/16 s16           % MIDIlinks Takt 36
} >>
<d,>1                       % MIDIlinks Takt 37
<g, g'>1*15/16 s16          % MIDIlinks Takt 38
<c>1                        % MIDIlinks Takt 39
<f, f'>1*15/16 s16          % MIDIlinks Takt 40
<h>1                        % MIDIlinks Takt 41
<e, e'>2 <a a'>             % MIDIlinks Takt 42
<d, d'> <g g'>              % MIDIlinks Takt 43
<c, c'> <f f'>              % MIDIlinks Takt 44
<h h'>2.*11/12 s16
  \stemDown <h>4 ~          % MIDIlinks Takt 45
\stemNeutral <h h'>2.*11/12 s16
  \stemDown <h>4            % MIDIlinks Takt 46
#(Tie 0 -.5 #t)
\stemNeutral <e, e'>1 ~     % MIDIlinks Takt 47
<e e'>2. <d d'>4            % MIDIlinks Takt 48
<c c'>1 ~                   % MIDIlinks Takt 49
<c' c'>1*15/16 s16          % MIDIlinks Takt 50
<f, f'>1                    % MIDIlinks Takt 51
  <fis fis'>                % MIDIlinks Takt 52
\stemDown
  <g g'>2                      
\stemUp
  <fis fis'>4 <e e'>        % MIDIlinks Takt 53
<d d'>1                     % MIDIlinks Takt 54
<g g'> ~                    % MIDIlinks Takt 55
<g g'>                      % MIDIlinks Takt 56
#(Tie -.2 -.4 #t)
<< { c1 ~ c } \\ {
     c'16 c16*15/16 ~       % MIDIlinks Takt 57
     c1*29/16 s16           % MIDIlinks Takt 58
} >>
#(Tie -.7 -.5 #t)
<a, a'>1 ~                  % MIDIlinks Takt 59
<a a'>2.
<as as'>4                   % MIDIlinks Takt 60
<g g'>1 ~                   % MIDIlinks Takt 61
<g g'>                      % MIDIlinks Takt 62
<fis fis'>                  % MIDIlinks Takt 63
<f! f'!>                    % MIDIlinks Takt 64
<e e'> ~                    % MIDIlinks Takt 65
<e' e'>                     % MIDIlinks Takt 66
d                           % MIDIlinks Takt 67
<g, g'>                     % MIDIlinks Takt 68
c ~                         % MIDIlinks Takt 69
<c c'>                      % MIDIlinks Takt 70
c                           % MIDIlinks Takt 71
<g g'>                      % MIDIlinks Takt 72
<g g'> ~                    % MIDIlinks Takt 73
<g g'>                      % MIDIlinks Takt 74
<g g'> ~                    % MIDIlinks Takt 75
<g g'>1*15/16 s16           % MIDIlinks Takt 76
<c, c'>1 ~                  % MIDIlinks Takt 77
<c c'>                      % MIDIlinks Takt 78
<c c'>\fermata              % MIDIlinks Takt 79
}

Z = { d16\rest }
ZZ = { \Z\Z }

Y = { \Z\Z\Z }
viertel = { \Z\Z\Z\Z }
halbeNote = { \Z\Z\Z\Z\Z\Z\Z\Z }

rPR = { d16\rest\sustainDown }
sPR = { s16\sustainDown }

rPH = { d16\rest\sustainUp }

pedalA = \context Staff \relative c,{
\context Voice = "pedal"
\override Voice.Rest #'transparent = ##t
\override NoteColumn #'force-hshift = #0
\override Staff.SustainPedal #'extra-offset = #'(.9 . 0)
#(Pedal .9 1 #t) \sPR \Y \halbeNote \viertel %  1
s \Y \halbeNote \Y #(Pedal .5 2 #t)\rPH %  2
\sPR \Y \halbeNote \Y #(Pedal .9 1 #t) \rPH %  3
\sPR \Y \viertel \Y #(Pedal .5 0 #t)\rPH #(Pedal 1.5 0 #t)\rPR \ZZ #(Pedal .5 2.5 #t)\rPH %  4 % 3/4
\sPR \Y \Y #(Pedal .7 -1 #t)\rPH s \Y s \Y %  5
\sPR \Y \halbeNote \Y #(Pedal .9 .5 #t) \rPH %  6
\sPR \Y \halbeNote \Y \rPH %  7
\sPR \Y \viertel \Y #(Pedal .4 1 #t)\rPH #(Pedal .9 1 #t)\rPR \ZZ #(Pedal .4 1 #t)\rPH %  8 % 3/4
#(Pedal .9 1 #t) \sPR \Y \halbeNote \viertel %  9
s \Y \halbeNote \Y #(Pedal .5 2 #t)\rPH % 10
\sPR \Y \halbeNote \Y \rPH % 11
\sPR \Y \halbeNote \Y #(Pedal .5 2 #t)\rPH % 12
\sPR \Y \halbeNote \Y #(Pedal .5 0 #t)\rPH % 13
\sPR \Y \halbeNote \Y #(Pedal .5 1 #t)\rPH % 14
#(Pedal .9 1 #t)\sPR \Y \halbeNote \Y #(Pedal .5 .7 #t)\rPH % 15
\sPR \Y \halbeNote \Y \rPH % 16
\sPR \Y \halbeNote \Y #(Pedal .5 .5 #t)\rPH % 17
#(Pedal .9 .5 #t)\sPR \Y \Y #(Pedal .5 .5 #t)\rPH\sPR \Y \Y #(Pedal .9 .5 #t)\rPH % 18 % 1/2
\sPR \Y \halbeNote \Y \rPH % 19
\sPR \Y \Y #(Pedal -.1 .5 #t)\rPH \sPR \Y \Y \rPH % 20 % 1/2
\sPR \Y \halbeNote \Y #(Pedal .5 0 #t)\rPH % 21
\sPR \Y \halbeNote \Y #(Pedal .5 .5 #t)\rPH % 22
\sPR \Y \halbeNote \Y #(Pedal .5 -1 #t)\rPH % 23
\sPR \Y \halbeNote \Y \rPH % 24
\sPR \Y \halbeNote \Y #(Pedal .5 1.5 #t)\rPH % 25
#(Pedal .9 1.5 #t)\sPR \Y \viertel \Y #(Pedal .5 1.5 #t)\rPH#(Pedal 1.2 1.5 #t)\rPR \ZZ#(Pedal .5 2 #t)\rPH % 26 % 3/4
\sPR \Y \halbeNote \Y \rPH % 27
\sPR \Y \halbeNote \Y #(Pedal .5 1 #t)\rPH % 28
#(Pedal .9 1 #t)\sPR \Y \halbeNote \Y #(Pedal .5 1 #t)\rPH % 29
\sPR \Y \halbeNote \Y #(Pedal .5 2 #t)\rPH % 30
\sPR \Y \halbeNote \Y #(Pedal .5 1 #t)\rPH % 31
#(Pedal .9 1 #t)\sPR \Y \halbeNote \Y #(Pedal .5 1.5 #t)\rPH % 32
#(Pedal .9 .5 #t)\sPR \Y \halbeNote \Y \rPH % 33
\sPR \Y \halbeNote \Y \rPH % 34
\sPR \Y \halbeNote \viertel % 35
s \Y \halbeNote \Y #(Pedal .5 1.5 #t)\rPH % 36
#(Pedal .9 1.5 #t)\sPR \Y \halbeNote \Y #(Pedal 1.4 1.5 #t)\rPH % 37
\sPR \Y \viertel \Y #(Pedal .4 1 #t)\rPH#(Pedal 1.4 1 #t)\sPR \ZZ#(Pedal .6 1 #t)\rPH % 38 % 3/4
#(Pedal .9 1 #t)\sPR \Y \halbeNote \Y #(Pedal .9 1 #t)\rPH % 39
\sPR \Y \viertel \Y #(Pedal .4 1 #t)\rPH#(Pedal 1.4 1 #t)\sPR \ZZ#(Pedal .6 1 #t)\rPH % 40 % 3/4
#(Pedal .9 .5 #t)\sPR \Y \halbeNote \Y #(Pedal .5 3 #t)\rPH % 41
\sPR \Y \Y #(Pedal -.1 0 #t)\rPH \sPR \Y \Y #(Pedal .9 2 #t)\rPH % 42 % 1/2
\sPR \Y \Y #(Pedal -.1 .5 #t)\rPH \sPR \Y \Y \rPH % 43 % 1/2
\sPR \Y \Y #(Pedal -.1 0 #t)\rPH \sPR \Y \Y \rPH % 44 % 1/2
\sPR \Y \halbeNote s \ZZ\rPH % 45
\sPR \Y \halbeNote s \ZZ\rPH % 46
\sPR \Y \halbeNote \viertel % 47
s \Y \viertel \Y #(Pedal 1.2 0 #t)\rPH#(Pedal 1 0 #t)\sPR \ZZ#(Pedal .5 -2 #t)\rPH % 48 % 3/4
\sPR \Y \halbeNote \viertel % 49
s \Y \halbeNote \Y #(Pedal .4 1 #t)\rPH % 50
\sPR \Y \halbeNote \Y \rPH % 51
\sPR \Y \viertel \Y #(Pedal .4 0 #t)\rPH#(Pedal 1.5 0 #t)\rPR \ZZ#(Pedal .4 2.5 #t)\rPH % 52 % 3/4
#(Pedal .9 .5)\sPR \Y \Y #(Pedal .7 0 #t)\rPH s \Y s \Y % 53
#(Pedal .9 .5)\sPR \Y \halbeNote \Y #(Pedal .5 2 #t)\rPH % 54
\sPR \Y \halbeNote \Y #(Pedal .9 .3 #t)\rPH % 55
\sPR \Y \viertel \Y #(Pedal .5 1 #t)\rPH#(Pedal .9 1 #t)\rPR \ZZ#(Pedal .5 1 #t)\rPH % 56 % 3/4
#(Pedal .9 1 #t)\sPR \Y \halbeNote \viertel % 57
s \Y \halbeNote \Y #(Pedal .5 2 #t)\rPH % 58
#(Pedal .9 -.5 #t)\sPR \Y \halbeNote \Y #(Pedal .5 -.5 #t)\rPH % 59
#(Pedal .9 -.5 #t)\sPR \Y \Y #(Pedal .5 -.5 #t)\rPH#(Pedal 1.1 -.5 #t)\rPR\ZZ
  #(Pedal .5 -.5 #t)\rPH#(Pedal 1.1 -.5 #t)\sPR\ZZ#(Pedal .5 -.5 #t)\rPH % 60 % 1/2
#(Pedal .9 -.1 #t)\sPR \Y \halbeNote \Y #(Pedal .5 0 #t)\rPH % 61
#(Pedal .9 -.1 #t)\sPR \Y \halbeNote \Y #(Pedal .5 0 #t)\rPH % 62
#(Pedal .9 -.3 #t)\sPR \Y \halbeNote \Y #(Pedal .5 .2 #t)\rPH % 63
#(Pedal .9 -.3 #t)\sPR \Y \Y #(Pedal .5 0 #t)\rPH#(Pedal 1.1 0 #t)\rPR \Y \Y #(Pedal .5 0 #t)\rPH % 64 % 1/2
\sPR \Y \halbeNote \viertel % 65
s \Y \halbeNote \Y #(Pedal .5 1.5 #t)\rPH % 66
#(Pedal .9 1.5 #t) \sPR \Y \halbeNote \Y #(Pedal .9 2 #t)\rPH % 67
\sPR \Y \halbeNote \Y #(Pedal .5 1 #t)\rPH % 68
#(Pedal .9 1 #t)\sPR \Y \halbeNote \Y #(Pedal .5 1 #t)\rPH % 69
#(Pedal .9 1 #t)\sPR \Y \Y #(Pedal .5 2 #t)\rPH#(Pedal 1.2 2 #t)\rPR \Y \Y #(Pedal .5 2 #t)\rPH % 72 % 1/2
#(Pedal .9 1.5 #t)\sPR \Y \halbeNote \Y #(Pedal .9 2.7 #t)\rPH % 71
#(Pedal .9 .5 #t)\sPR \Y \Y #(Pedal .4 2 #t)\rPH#(Pedal 1.6 2 #t)\rPR \Y \Y #(Pedal .5 2 #t)\rPH % 72 % 1/2
\sPR \Y \halbeNote \Y #(Pedal .5 .2 #t)\rPH % 73
\sPR \Y \viertel \Y #(Pedal .3 2 #t)\rPH#(Pedal 1.4 2 #t)\rPR \ZZ#(Pedal .5 2 #t)\rPH % 74 % 3/4
\sPR \Y \halbeNote \Y #(Pedal .5 .2 #t)\rPH % 75
\sPR \Y \halbeNote \Y #(Pedal .5 2 #t)\rPH % 76
}

pedalB = \context Staff \relative c,{
\override Voice.Rest #'transparent = ##t
\override NoteColumn #'force-hshift = #0
\override Staff.SustainPedal #'extra-offset = #'(.9 . 0)
\sPR \Y \halbeNote \viertel % 77
s \Y \halbeNote \viertel % 78
\halbeNote \viertel s8. \rPH % 79
}

pedal = \context Staff \relative c,{
\context Voice = "pedal"
\pedalA
}

MIDIpedal = \context Staff \relative c,{
\context Voice = "pedal"
\pedalA
\pedalB
}

rechteDynamik =  \context Staff \relative c{
  \context Voice = "rechteDynamik"
\set Staff.midiMinimumVolume = #-.5
\set Staff.midiMaximumVolume = #1
#(Keil 0 6 #f)
#(Dynamik 0 6 #f)
s4^\<^\f s2 s8. s16 \!  % rechteDynamik Takt  1
s4^\> s2 s8. s16 \!     % rechteDynamik Takt  2
s4^\< s2 s8. s16 \!     % rechteDynamik Takt  3
s4^\> s2 s8. s16 \!     % rechteDynamik Takt  4
s4^\< s2 s8. s16 \!     % rechteDynamik Takt  5
s4^\> s2 s8. s16 \!     % rechteDynamik Takt  6
s4^\< s2 s8. s16 \!     % rechteDynamik Takt  7
s4^\> s2 s8. s16 \!     % rechteDynamik Takt  8
s4^\<^\mf s2 s8. s16 \! % rechteDynamik Takt  9
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 10
s4^\< s2 s8. s16 \!     % rechteDynamik Takt 11
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 12
s4^\<^\f s2 s8. s16 \!  % rechteDynamik Takt 13
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 14
s4^\< s2 s8. s16 \!     % rechteDynamik Takt 15
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 16
s4^\<^\mf s2 s8. s16 \! % rechteDynamik Takt 17
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 18
s4^\< s2 s8. s16 \!     % rechteDynamik Takt 19
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 20
s4^\<^\f s2 s8. s16 \!  % rechteDynamik Takt 21
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 22
s4^\<^\ff s2 s8. s16 \! % rechteDynamik Takt 23
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 24
s4^\<^\f s2 s8. s16 \!  % rechteDynamik Takt 25
s2 s16^\> s s s \! s16^\f^\> s s s \!   % rechteDynamik Takt 26
s4^\<^\f s2 s8. s16 \!  % rechteDynamik Takt 27
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 28
s4^\< s2 s8. s16 \!     % rechteDynamik Takt 29
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 30
s4^\< s2 s8. s16 \!     % rechteDynamik Takt 31
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 32
s4^\< s2 s4             % rechteDynamik Takt 33
s4 s2 s8. s16 \!        % rechteDynamik Takt 34
s4^\f s2 s4             % rechteDynamik Takt 35
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 36
s4^\mp^\< s2 s8. s16 \! % rechteDynamik Takt 37
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 38
s4^\mf^\< s2 s8. s16 \! % rechteDynamik Takt 39
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 37
s4^\f^\< s2 s8. s16     % rechteDynamik Takt 41
s1                      % rechteDynamik Takt 42
s1                      % rechteDynamik Takt 43
s4    s2 s8. s16        % rechteDynamik Takt 44
s16^\ff^\< s s s s2 s4  % rechteDynamik Takt 45
s4^\fff s2 s4           % rechteDynamik Takt 46
s1                      % rechteDynamik Takt 47
s4^\> s4. s16 s \! s^\f s s s   % rechteDynamik Takt 48
s4^\<^\p s2 s8. s16 \!  % rechteDynamik Takt 49
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 50
s4^\<^\mp s2 s8. s16 \! % rechteDynamik Takt 51
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 52
s4^\<^\mf s2 s8. s16 \! % rechteDynamik Takt 53
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 54
s4^\<^\f s2 s8. s16 \!  % rechteDynamik Takt 55
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 56
s4^\< s2 s8. s16 \!     % rechteDynamik Takt 57
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 58
s4^\<^\mf s2 s8. s16 \! % rechteDynamik Takt 59
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 60
s4^\<^\f s2 s8. s16 \!  % rechteDynamik Takt 61
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 62
s4^\<^\fff s2 s8. s16 \!% rechteDynamik Takt 63
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 64
s4^\<^\ff s2 s8. s16 \! % rechteDynamik Takt 65
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 66
s4^\<^\f s2 s8. s16 \!  % rechteDynamik Takt 67
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 68
s4^\< s2 s8. s16 \!     % rechteDynamik Takt 69
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 70
s4^\< s2 s8. s16 \!     % rechteDynamik Takt 71
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 72
s4^\<^\ff s2 s8. s16 \! % rechteDynamik Takt 73
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 74
s4^\< s2 s8. s16 \!     % rechteDynamik Takt 75
s4^\> s2 s8. s16 \!     % rechteDynamik Takt 76
s4^\<^\fff s2 s8. s16 \!% rechteDynamik Takt 77
s4^\> s2 s8. s16        % rechteDynamik Takt 78
s4 \! s2.               % rechteDynamik Takt 79
}

linkeDynamik =  \context Staff \relative c{
  \context Voice = "linkeDynamik"
\set Staff.midiMinimumVolume = #-.5
\set Staff.midiMaximumVolume = #1
#(Keil 0 -8 #f)
#(Dynamik 0 -8 #f)
s4_\f s2 s4       % linkeDynamik Takt  1
s1                % linkeDynamik Takt  2
s4_\< s2 s4       % linkeDynamik Takt  3
s4 s2 s4 \!       % linkeDynamik Takt  4
s4_\>  s2 s4      % linkeDynamik Takt  5
s4 s2 s4 \!       % linkeDynamik Takt  6
s1                % linkeDynamik Takt  7
s1                % linkeDynamik Takt  8
s4_\mf s2 s4      % linkeDynamik Takt  9
s1                % linkeDynamik Takt 10
s1                % linkeDynamik Takt 11
s1                % linkeDynamik Takt 12
s4_\f  s2 s4      % linkeDynamik Takt 13
s1                % linkeDynamik Takt 14
s1                % linkeDynamik Takt 15
s1                % linkeDynamik Takt 16
s4_\mf s2 s4      % linkeDynamik Takt 17
s4_\>_\f s2 s4    % linkeDynamik Takt 18
s4_\mf \! s2 s4   % linkeDynamik Takt 19
s4_\>_\f s2 s4 \! % linkeDynamik Takt 20
s4_\f s2 s4       % linkeDynamik Takt 21
s1                % linkeDynamik Takt 22
s4_\ff s2 s4      % linkeDynamik Takt 23
s1                % linkeDynamik Takt 24
s4_\mf s2 s4      % linkeDynamik Takt 25
s1                % linkeDynamik Takt 26
s1                % linkeDynamik Takt 27
s1                % linkeDynamik Takt 28
s4_\f  s2 s4      % linkeDynamik Takt 29
s4_\ff s2 s4      % linkeDynamik Takt 30
s4_\f  s2 s4      % linkeDynamik Takt 31
s4_\ff s2 s4      % linkeDynamik Takt 32
s4_\f  s2 s4      % linkeDynamik Takt 33
s1                % linkeDynamik Takt 34
s4_\>_\ff s2 s4   % linkeDynamik Takt 35
s1                % linkeDynamik Takt 36
s4_\mf \! s2 s4   % linkeDynamik Takt 37
s4_\f  s2 s4      % linkeDynamik Takt 38
s4_\mf s2 s4      % linkeDynamik Takt 39
s4_\f  s2 s4      % linkeDynamik Takt 40
s4_\<_\mf s2 s4   % linkeDynamik Takt 41
s1                % linkeDynamik Takt 42
s1                % linkeDynamik Takt 43
s1                % linkeDynamik Takt 44
s4_\fff \! s2 s4  % linkeDynamik Takt 45
s1                % linkeDynamik Takt 46
s4_\> s2 s4       % linkeDynamik Takt 47
s1                % linkeDynamik Takt 48
s4_\mp \! s2 s4   % linkeDynamik Takt 49
s4_\p  s2 s4      % linkeDynamik Takt 50
s4_\<_\mp s2 s4   % linkeDynamik Takt 51
s1                % linkeDynamik Takt 52
s4_\>_\f s2 s4    % linkeDynamik Takt 53
s4 s2 s4 _\p \!   % linkeDynamik Takt 54
s4_\f s2 s4       % linkeDynamik Takt 55
s1                % linkeDynamik Takt 56
s1                % linkeDynamik Takt 57
s1                % linkeDynamik Takt 58
s4_\<  s2 s4      % linkeDynamik Takt 59
s1                % linkeDynamik Takt 60
s1                % linkeDynamik Takt 61
s1                % linkeDynamik Takt 62
s1                % linkeDynamik Takt 63
s4_\fff \! s2 s4  % linkeDynamik Takt 64
s4_\ff s2 s4      % linkeDynamik Takt 65
s1                % linkeDynamik Takt 66
s4_\f  s2 s4      % linkeDynamik Takt 67
s1                % linkeDynamik Takt 68
s1                % linkeDynamik Takt 69
s1                % linkeDynamik Takt 70
s1                % linkeDynamik Takt 71
s1                % linkeDynamik Takt 72
s1                % linkeDynamik Takt 73
s1                % linkeDynamik Takt 74
s1                % linkeDynamik Takt 75
s1                % linkeDynamik Takt 76
s4_\fff s2 s4     % linkeDynamik Takt 77
s1                % linkeDynamik Takt 78
s1                % linkeDynamik Takt 79
}

\score {
  \context PianoStaff
  <<
    \context Staff = "up" << 
      \global 
      \clef violin
      \rechts
      %\rechteDynamik
    >>
    \context Staff = "down" <<
      \global
      \clef bass
      <<
        { \links }
          \\
        { \pedal }
      >>
      %\linkeDynamik
    >>
  >>
  \layout {
    \context { \PianoStaff \override VerticalAlignment #'forced-distance = #8.5 }
    \context { \Score \override SpacingSpanner #'spacing-increment = #1.6 }
  }
}

\score {
  \context PianoStaff
  <<
    \context Staff = "up" << 
      \global 
      \clef violin
      \MIDIrechts
      \rechteDynamik
      \MIDIpedal
    >>
    \context Staff = "down" <<
      \global
      \clef bass
      \MIDIlinks
      \linkeDynamik
      \MIDIpedal
    >>
  >>
  \midi {
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 176 4) }
  }
}
