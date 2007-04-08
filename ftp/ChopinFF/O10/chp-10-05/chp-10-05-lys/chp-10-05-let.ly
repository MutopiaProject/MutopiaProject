%%%   WICHTIGER Hinweis zum Editieren auf Deutsch:   %%%
%%%
% Wer dem Notentext ein anderes layout, z.B. eine andere Zeilen- und/oder
% Seitenaufteilung oder eine andere "global-staff-size" geben und dabei nicht in
% ein unübersehbares Chaos stürzen möchte, sollte vorher unbedingt folgende zwei
% Dinge tun:
%   1. alle Zeilen, die mit "% mit Zeilen-Korrektur" enden, auskommentieren,
%   2. alle Zeilen, die mit "% ohne Zeilen-Korrektur" enden, einkommentieren,
% da in der vorliegenden Form einige Zeilen für ein besseres Design vertikal
% verschoben wurden.

%%%   IMPORTANT tip for editing in English:   %%%
%%%
% For creating another layout, par example with another global-staff-size or
% more or less bars per line, or more or less lines per page, or something like
% that, and not wanting to get in trouble over this, it is highliy recommanded
% to do the following two steps before:
%   1. outcomment all lines, which end with "% mit Zeilen-Korrektur",
%   2. incomment all lines, which end with "% ohne Zeilen-Korrektur",
% because of in the current form some lines are shifted vertically for a better
% design.

% Anmerkung auf Deutsch:
% In Takt 47 erster Akkord links steht bei Herrmann Scholz c' als mittlerer Ton.
% In den meisten modernen Ausgaben steht dort des'. Allerdings gibt es
% auf der Website der Uni Chicago mindestens 7 verschiedene Ausgaben von vor 1900,
% und davon enthalten die folgenden vier auch dieses c' anstatt eines des':
%
% URI: http://pi.lib.uchicago.edu/1001/dig/chopin/046
% URI: http://pi.lib.uchicago.edu/1001/dig/chopin/047
% URI: http://pi.lib.uchicago.edu/1001/dig/chopin/049
% URI: http://pi.lib.uchicago.edu/1001/dig/chopin/050
%
% Da es nicht wirklich falsch klingt, sondern sogar auch interessant, laesst es
% sich hier moeglicherweise nicht entscheiden, welcher Ton der "richtige" ist ...

% Notice in English:
% In bar 47 first chord of the left hand Herrmann Scholz writes c' as middle note.
% In most modern editions there is des' instead.
% But on the website of the university of Chicago there are seven different editiions
% from before 1900, and the following four have also c' instead of des':
%
% URI: http://pi.lib.uchicago.edu/1001/dig/chopin/046
% URI: http://pi.lib.uchicago.edu/1001/dig/chopin/047
% URI: http://pi.lib.uchicago.edu/1001/dig/chopin/049
% URI: http://pi.lib.uchicago.edu/1001/dig/chopin/050
%
% Because it sounds not really wrong, but somewhat interesting,
% it could perhaps be impossible to decide, which is the "correct" note ...

\version "2.10.15"
%lastupdated = #(strftime "%Y/%B/%d" (localtime (current-time)))
footer = #(strftime "Mutopia-%Y/%B/%d-xxx" (localtime (current-time)))

\header {
  filename      =       "chp-10-05-a4.ly"
  title         =       \markup \fontsize #1 { Etüde Ges-Dur }
  subtitle      =       "„Schwarze Tasten“"
  composer      =       \markup \large { "Frédéric Chopin (1810 - 1849)" }
  opus          =       "Opus 10 Nr. 5"
  enteredby     =       "Roland Goretzki"

 mutopiatitle           =       "Etüde Ges-Dur"
 mutopiacomposer        =       "ChopinFF"
 mutopiaopus            =       "Opus 10, No. 5"
 mutopiainstrument      =       "Piano"
 date                   =       "1828-1831"
 source                 =       "Peters, Herrmann Scholtz, 1900b"
 style                  =       "Romantic"
 copyright              =       "Public Domain"
 maintainer             =       "Roland Goretzki"
 maintainerEmail        =       "roland@roland-goretzki.de"
 maintainerWeb          =       "http://www.roland-goretzki.de/"
 lastupdated            =       "2007/02/10"

% alt: % footer = "Mutopia-2006/MONAT/TAG-REFNR"

 footer = "Mutopia-2007/02/11-926"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"
#(set-global-staff-size 20)

#(set-default-paper-size "letter")    % letter
\paper{                               % letter
  top-margin = .6\cm                  % letter
  left-margin = 1\cm                  % letter
  line-width = 19.59\cm               % letter
  paper-width = 8.5\in                % letter
  paper-height = 11\in                % letter
  after-title-space = 12\cm           % letter
  % fuer sichtbares midi:             % letter
  %between-system-padding = #30       % letter
  bottom-margin = .6\cm               % letter
  % fuer midi auskommentieren:        % letter
  system-count = #28                  % letter
}                                     % letter

global = { \key ges \major \time 2/4 s2*85 \bar "|." }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                              %
oben = \change Staff = up
unten = \change Staff = down
rauf = { \stemNeutral\oben }
runter = { \unten\stemUp }
%
strichAn = \override Stem #'stroke-style = #"grace"
strichAus = \revert Stem #'stroke-style
%
PH = \sustainUp
PR = \sustainDown
%
OKTAVA = \markup { \bold\fontsize #3.5 \italic "8" }
%
ACHTan = { #(set-octavation 1) \set Staff.ottavation = #"8" }
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
ExtrASPACE = \once\override Score.SeparationItem #'padding = #1.8
ExtRASPACE = \once\override Score.SeparationItem #'padding = #2.1
ExTRASPACE = \once\override Score.SeparationItem #'padding = #2.4
EXTRASPACE = \once\override Score.SeparationItem #'padding = #2.7
eXTRASPACE = \once\override Score.SeparationItem #'padding = #3
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
Axmodernvoice = #(set-accidental-style 'modern-voice)
Axvoice = #(set-accidental-style 'voice)
AxpianoVorsicht = #(set-accidental-style 'piano-cautionary)
%
VollRatio = \once\override Slur #'ratio = #'1
%
%Triole = #(override-auto-beam-setting '(end * * 2 3) 1 8)
DreiZweiBalken = \set Staff.beatLength = #(ly:make-moment 1 32)
SechzehntelBalken = \set Staff.beatLength = #(ly:make-moment 1 16)
%AchtelBalken = \set Staff.beatLength = #(ly:make-moment 1 8)
AchtelBalken = { #(override-auto-beam-setting '(end * * * *) 1 8 'Staff)
  #(override-auto-beam-setting '(end * * * *) 2 8 'Staff)
  #(override-auto-beam-setting '(end * * * *) 3 8 'Staff) }
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
% DynamikText: --------------------------------------------------------------- %
#(define* (DynamikText dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'DynamicTextSpanner 'extra-offset (cons dx dy) once)))
%
% DynamikLinie: ---------------------------------------------------------- %
#(define* (DynamikLinie dy)
  (ly:export (mus:override 'Bottom 'DynamicLineSpanner 'padding dy)))
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
#(define* (Oktave dy #:optional once)
  (ly:export (mus:override 'Bottom 'OttavaBracket 'padding dy once)))
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
% Clef: --------------------------------------------------------------- %
#(define* (Clef dx dy #:optional once)
  (ly:export (mus:override 'Staff 'Clef 'extra-offset (cons dx dy) once)))
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

fingerInnen = \override Fingering #'avoid-slur = #'inside
fingerAussen = \override Fingering #'avoid-slur = #'outside
artikelInnen = \override Script #'avoid-slur = #'inside
artikelAussen = \override Script #'avoid-slur = #'outside

fingerLinks = \set fingeringOrientations = #'(left)
fingerRechts = \set fingeringOrientations = #'(right)
fingerUnten = \set fingeringOrientations = #'(down)
fingerOben = \set fingeringOrientations = #'(up)

rechtsHAUPT = \context Staff \relative c'{
  \context Voice = "rechtsHAUPT"
  \override GrandStaff.InstrumentName #'extra-offset = #'(-1.7 . -.6)
  \override GrandStaff.InstrumentName #'font-size = #'3
  \set GrandStaff.instrumentName = \markup { \number { 5 \hspace #-1 . } }
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 8.4)
  \override Score.RehearsalMark #'self-alignment-X = #'-1
  \mark \markup { Vivace. { ( \fontsize #'-3 {
    \general-align #Y #DOWN \note #"4" #.8 } \fontsize #'-2 { = 116 } ) } }
  \override Score.TextScript #'font-size = #0
  \override Score.DynamicTextSpanner #'font-size = #0
  \override Score.TextScript #'font-shape = #'italic
  \override Accidental #'avoid-slur = #'around
  \artikelInnen
  \override TextScript #'avoid-slur = #'inside
  \fingerInnen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\override Staff.OttavaBracket #'extra-offset = #'(-.4 . 1)
\override Staff.OttavaBracket #'edge-height = #'(0 . 3.5)
\AchtelSpanner
\AchtelBalken
\override Fingering  #'staff-padding = #'()
\times 2/3 {
% =============== % TAKT  1:
% ---- 1. Gruppe:
\ACHTan
\once\override Staff.OttavaBracket #'extra-offset = #'(-1.5 . 4.6)
\once\override Staff.OttavaBracket #'shorten-pair = #'(0 . -2)
\once\override Staff.OttavaBracket #'edge-height = #'(0 . 4.5)
#(Ratio 1 #t)
#(PhrasierungsBogenKurve 4 #t)
\slurDown
\once\override TextScript #'avoid-slur = #'outside
#(Text 0 2.4 #t)
ges'''16%N
-3%F
^"brillante"
\(
(
b%N
-5%F
des,%N
-1%F
)
% ---- 2. Gruppe:
#(BogenKurve 6 #t)
ges%N
-4%F
(
es%N
-2%F
ges%N
-4%F
)
% ---- 3. Gruppe:
des%N
-1%F
(
ges%N
-5%F
b,%N
-2%F
)
% ---- 4. Gruppe:
#(BogenKurve 6 #t)
\ACHTaus
des%N
-3%F
(
ges,%N
-1%F
b%N
-4%F
)
% =============== % TAKT  2:
% ---- 1. Gruppe:
\TriolenZahlWeg
ges%N
-2%F
b%N
-4%F
des,%N
-1%F
% ---- 2. Gruppe:
ges%N
-4%F
es%N
-2%F
ges%N
-4%F
% ---- 3. Gruppe:
des%N
-1%F
ges%N
-5%F
b,%N
-2%F
% ---- 4. Gruppe:
des%N
-3%F
ges,%N
-1%F
b%N
\)
-3%F
% =============== % TAKT  3:
% ---- 1. Gruppe:
des,%N
^\markup { \italic { sempre legato } }
-1%F
des'%N
-5%F
as%N
-2%F
% ---- 2. Gruppe:
des%N
-4%F
as%N
-1%F
as'%N
%-X%F
% ---- 3. Gruppe:
as,%N
%-X%F
as'%N
%-X%F
es%N
-2%F
% ---- 4. Gruppe:
as%N
-4%F
es%N
-1%F
es'%N
%-X%F
% =============== % TAKT  4:
% ---- 1. Gruppe:
es,%N
%-X%F
es'%N
%-X%F
as,%N
-2%F
% ---- 2. Gruppe:
\ACHTan
es'%N
-4%F
as,%N
-1%F
as'%N
-5%F
% ---- 3. Gruppe:
as,%N
%-X%F
as'%N
%-X%F
des,%N
-2%F
% ---- 4. Gruppe:
as'%N
-4%F
des,%N
-1%F
des'%N
-5%F
% =============== % TAKT  5:
% ---- 1. Gruppe:
ges,%N
-2%F
b%N
-4%F
des,%N
-1%F
% ---- 2. Gruppe:
ges%N
-4%F
es%N
-2%F
ges%N
%-X%F
% ---- 3. Gruppe:
des%N
-1%F
ges%N
-5%F
b,%N
-2%F
% ---- 4. Gruppe:
\ACHTaus
des%N
-3%F
ges,%N
-1%F
b%N
-4%F
% =============== % TAKT  6:
% ---- 1. Gruppe:
ges%N
-2%F
b%N
%-X%F
des,%N
-1%F
% ---- 2. Gruppe:
ges%N
-4%F
es%N
-2%F
ges%N
%-X%F
% ---- 3. Gruppe:
des%N
-1%F
ges%N
-5%F
b,%N
-2%F
% ---- 4. Gruppe:
des%N
-3%F
ges,%N
-1%F
b%N
-3%F
% =============== % TAKT  7:
% ---- 1. Gruppe:
\stemDown
es,%N
-1%F
es'%N
%-X%F
as,%N
-2%F
% ---- 2. Gruppe:
\stemNeutral
es'%N
-4%F
as,%N
-1%F
as'%N
-5%F
% ---- 3. Gruppe:
es%N
-2%F
as%N
-4%F
es%N
-1%F
% ---- 4. Gruppe:
\ACHTan
es'%N
-5%F
as,%N
-1%F
as'%N
-4%F
% =============== % TAKT  8:
% ---- 1. Gruppe:
b,%N
%-X%F
b'%N
-5%F
b,%N
%-X%F
% ---- 2. Gruppe:
b'%N
%-X%F
b,%N
%-X%F
b'%N
%-X%F
% ---- 3. Gruppe:
b,%N
%-X%F
b'%N
%-X%F
b,%N
%-X%F
% ---- 4. Gruppe:
b'%N
%-X%F
b,%N
%-X%F
b'%N
%-X%F
% =============== % TAKT  9:
% ---- 1. Gruppe:
#(Text 0 1.8 #t)
ges%N
%N
-3%F
^\atempo
b%N
-5%F
des,%N
-1%F
% ---- 2. Gruppe:
ges%N
-4%F
es%N
-2%F
ges%N
%-X%F
% ---- 3. Gruppe:
des%N
-1%F
ges%N
-5%F
b,%N
-2%F
% ---- 4. Gruppe:
\ACHTaus
des%N
-3%F
ges,%N
-1%F
b%N
-4%F
% =============== % TAKT 10:
% ---- 1. Gruppe:
ges%N
-2%F
b%N
-4%F
des,%N
-1%F
% ---- 2. Gruppe:
ges%N
-4%F
es%N
-2%F
ges%N
-4%F
% ---- 3. Gruppe:
des%N
-1%F
ges%N
-5%F
b,%N
-2%F
% ---- 4. Gruppe:
des%N
-3%F
ges,%N
-1%F
b%N
-3%F
% =============== % TAKT 11:
% ---- 1. Gruppe:
des,%N
-1%F
des'%N
-5%F
as%N
-2%F
% ---- 2. Gruppe:
des%N
-4%F
as%N
-1%F
as'%N
%-X%F
% ---- 3. Gruppe:
as,%N
%-X%F
as'%N
%-X%F
es%N
-2%F
% ---- 4. Gruppe:
as%N
-4%F
es%N
-1%F
es'%N
%-X%F
% =============== % TAKT 12:
% ---- 1. Gruppe:
es,%N
%-X%F
es'%N
%-X%F
as,%N
-2%F
% ---- 2. Gruppe:
\ACHTan
es'%N
-4%F
as,%N
-1%F
as'%N
-5%F
% ---- 3. Gruppe:
as,%N
%-X%F
as'%N
%-X%F
des,%N
-2%F
% ---- 4. Gruppe:
as'%N
-4%F
des,%N
-1%F
des'%N
-5%F
% =============== % TAKT 13:
% ---- 1. Gruppe:
ges,%N
-2%F
b%N
-4%F
des,%N
-1%F
% ---- 2. Gruppe:
ges%N
-4%F
es%N
-2%F
ges%N
%-X%F
% ---- 3. Gruppe:
des%N
-1%F
ges%N
-5%F
b,%N
-2%F
% ---- 4. Gruppe:
\ACHTaus
des%N
-3%F
ges,%N
-1%F
b%N
-4%F
% =============== % TAKT 14:
% ---- 1. Gruppe:
ges%N
-2%F
b%N
-4%F
des,%N
-1%F
% ---- 2. Gruppe:
ges%N
-4%F
es%N
-2%F
ges%N
-4%F
% ---- 3. Gruppe:
des%N
-1%F
ges%N
-5%F
b,%N
-2%F
% ---- 4. Gruppe:
des%N
-3%F
ges,%N
-1%F
b%N
-3%F
% =============== % TAKT 15:
% ---- 1. Gruppe:
\stemDown
es,%N
-1%F
es'%N
%-X%F
as,%N
-2%F
% ---- 2. Gruppe:
\stemNeutral
es'%N
-4%F
as,%N
-1%F
as'%N
-5%F
% ---- 3. Gruppe:
es%N
-2%F
as%N
-4%F
es%N
-1%F
% ---- 4. Gruppe:
es'%N
-5%F
as,%N
%-X%F
es'%N
%-X%F
% =============== % TAKT 16:
es,%N
%-X%F
es'%N
-5%F
as,%N
-2%F
% ---- 2. Gruppe:
es'%N
%-X%F
des,%N
-1%F
des'%N
-4%F
% ---- 3. Gruppe:
as%N
-2%F
des%N
-4%F
as%N
-1%F
% ---- 4. Gruppe:
\ACHTan
as'%N
-4%F
des,%N
-1%F
des'%N
%-X%F
% =============== % TAKT 17:
% ---- 1. Gruppe:
as%N
-2%F
b%N
-4%F
as%N
-3%F
% ---- 2. Gruppe:
es%N
-1%F
es'%N
%-X%F
es,%N
%-X%F
% ---- 3. Gruppe:
des%N
-2%F
es%N
-4%F
des%N
-3%F
% ---- 4. Gruppe:
as%N
%-X%F
as'%N
%-X%F
as,%N
%-X%F
\ACHTaus
% =============== % TAKT 18:
% ---- 1. Gruppe:
as%N
-2%F
b%N
-4%F
as%N
-3%F
% ---- 2. Gruppe:
es%N
%-X%F
es'%N
%-X%F
es,%N
%-X%F
% ---- 3. Gruppe:
\KlammerWeg
des%N
-2%F
[
es%N
-4%F
des%N
-3%F
% ---- 4. Gruppe:
}
as8%N
-1%F
->
]
~
\times 2/3 {
% =============== % TAKT 19:
% ---- 1. Gruppe:
as16%N
%-X%F
es'%N
-2%F
as%N
-4%F
b%N
-5%F
as%N
-4%F
es%N
-2%F
des%N
-1%F
as'%N
-2%F
des%N
-4%F
es%N
-5%F
des%N
%-X%F
b%N
%-X%F
% =============== % TAKT 20:
% ---- 1. Gruppe:
\ACHTan
as16%N
%-X%F
es'%N
%-X%F
as%N
-4%F
b%N
%-X%F
as%N
%-X%F
es%N
%-X%F
des%N
%-X%F
as'%N
%-X%F
des%N
-4%F
es%N
%-X%F
des%N
%-X%F
b%N
%-X%F
% =============== % TAKT 21:
% ---- 1. Gruppe:
as%N
-1%F
b%N
-3%F
as%N
-2%F
% ---- 2. Gruppe:
es%N
-1%F
es'%N
%-X%F
es,%N
%-X%F
% ---- 3. Gruppe:
des%N
-2%F
es%N
-4%F
des%N
-3%F
% ---- 4. Gruppe:
as%N
%-X%F
as'%N
%-X%F
as,%N
%-X%F
\ACHTaus
% =============== % TAKT 22:
% ---- 1. Gruppe:
as%N
-2%F
b%N
-4%F
as%N
-3%F
% ---- 2. Gruppe:
es%N
%-X%F
es'%N
%-X%F
es,%N
%-X%F
% ---- 3. Gruppe:
des%N
-2%F
[
es%N
-4%F
des%N
-3%F
% ---- 4. Gruppe:
}
\once \override TextScript #'script-priority = #-100
#(Finger 0 -2 #t)
#(Artikel 0 1.5 #t)
as8%N
-1%F
->
]
~
\times 2/3 {
% =============== % TAKT 23:
% ---- 1. Gruppe:
\slurUp
as16%N
%-X%F
as'%N
-4%F
(
ges%N
-2%F
% ---- 2. Gruppe:
as%N
-3%F
ges%N
-1%F
as%N
-2%F
% ---- 3. Gruppe:
\once\override Fingering #'avoid-slur = #'outside
ges'%N
-5%F
)
as,%N
-2%F
(
ges%N
-1%F
% ---- 4. Gruppe:
as%N
-4%F
ges%N
-2%F
as%N
-3%F
% =============== % TAKT 24:
% ---- 1. Gruppe:
as,%N
-1%F
)
as'%N
-4%F
(
ges%N
-2%F
% ---- 2. Gruppe:
as%N
-3%F
ges%N
-1%F
as%N
-2%F
% ---- 3. Gruppe:
ges'%N
%-X%F
)
#(Ratio .5 #t)
#(BogenKurve 4 #t)
as,%N
%-X%F
(
ges%N
-1%F
% ---- 4. Gruppe:
as%N
-4%F
ges%N
-2%F
as%N
-3%F
% =============== % TAKT 25:
% ---- 1. Gruppe:
\once\override Fingering #'avoid-slur = #'outside
b,%N
-1%F
)
b'%N
-4%F
(
ges%N
-2%F
% ---- 2. Gruppe:
b%N
-3%F
ges%N
-1%F
b%N
-2%F
% ---- 3. Gruppe:
\once\override Fingering #'avoid-slur = #'outside
ges'%N
-5%F
)
b,%N
-2%F
(
ges%N
-1%F
% ---- 4. Gruppe:
b%N
-4%F
ges%N
-2%F
b%N
%-X%F
% =============== % TAKT 26:
% ---- 1. Gruppe:
b,%N
-1%F
)
b'%N
-4%F
(
ges%N
-2%F
% ---- 2. Gruppe:
b%N
-3%F
ges%N
-1%F
b%N
-2%F
% ---- 3. Gruppe:
\once\override Fingering #'avoid-slur = #'outside
ges'%N
%-X%F
)
b,%N
%-X%F
(
ges%N
%-X%F
% ---- 4. Gruppe:
b%N
-4%F
ges%N
-2%F
b%N
-3%F
% =============== % TAKT 27:
% ---- 1. Gruppe:
ges%N
-1%F
)
\slurDown
b%N
-2%F
(
ges%N
-1%F
% ---- 2. Gruppe:
b'%N
-5%F
-.
b,%N
-2%F
ges%N
-1%F
% ---- 3. Gruppe:
as'%N
-5%F
-.
b,%N
%-X%F
ges%N
%-X%F
% ---- 4. Gruppe:
ges'%N
-5%F
-.
b,%N
%-X%F
ges%N
%-X%F
% =============== % TAKT 28:
% ---- 1. Gruppe:
des'%N
-3%F
-.
)
b%N
%-X%F
(
ges%N
%-X%F
% ---- 2. Gruppe:
b'%N
%-X%F
-.
b,%N
%-X%F
ges%N
%-X%F
% ---- 3. Gruppe:
as'%N
%-X%F
-.
b,%N
%-X%F
ges%N
%-X%F
% ---- 4. Gruppe:
ges'%N
-5%F
-.
b,%N
-3%F
ges%N
-2%F
% =============== % TAKT 29:
% ---- 1. Gruppe:
des%N
-1%F
)
\slurNeutral
\fingerAussen
des'%N
-4%F
(
\fingerInnen
b%N
-2%F
% ---- 2. Gruppe:
\ACHTan
\once\override Staff.OttavaBracket #'extra-offset = #'(-.4 . 1.5)
des%N
-4%F
des%N
-1%F
\fingerAussen
des'%N
-4%F
% ---- 3. Gruppe:
b%N
-2%F
)
#(Ratio .5 #t)
#(BogenKurve 7 #t)
des%N
%-X%F
(
\fingerInnen
des,%N
-1%F
\ACHTaus
% ---- 4. Gruppe:
des%N
-4%F
b%N
%-X%F
des%N
%-X%F
% =============== % TAKT 30:
% ---- 1. Gruppe:
des,%N
%-X%F
)
\fingerAussen
des'%N
-4%F
(
b%N
%-X%F
% ---- 2. Gruppe:
\ACHTan
\once\override Staff.OttavaBracket #'extra-offset = #'(-.4 . 1.5)
\fingerInnen
des%N
-4%F
des%N
-1%F
\fingerAussen
des'%N
-4%F
% ---- 3. Gruppe:
b%N
-2%F
)
#(BogenKurve 6 #t)
\fingerInnen
des%N
%-X%F
(
des,%N
-1%F
\ACHTaus
% ---- 4. Gruppe:
des%N
-4%F
b%N
%-X%F
des%N
%-X%F
% =============== % TAKT 31:
% ---- 1. Gruppe:
des,%N
%-X%F
)
\fingerAussen
des'%N
-4%F
(
\fingerInnen
b%N
-2%F
% ---- 2. Gruppe:
\ACHTan
\once\override Staff.OttavaBracket #'extra-offset = #'(-.4 . 1.5)
des%N
-4%F
des%N
-1%F
\fingerAussen
des'%N
-4%F
% ---- 3. Gruppe:
as%N
-2%F
)
#(BogenKurve 6 #t)
des%N
-4%F
(
\fingerInnen
des,%N
-1%F
\ACHTaus
% ---- 4. Gruppe:
des%N
-4%F
as%N
-2%F
des%N
%-X%F
% =============== % TAKT 32:
% ---- 1. Gruppe:
des,%N
-1%F
)
\fingerAussen
des'%N
-5%F
(
\fingerInnen
ges,%N
-2%F
% ---- 2. Gruppe:
des'%N
%-X%F
des,%N
-1%F
des%N
-5%F
% ---- 3. Gruppe:
ges,%N
_2%F
)
[
\slurUp
\once\override Slur #'rotation = #'(-10 -.8 -.5)
#(Ratio .5 #t)
#(BogenKurve 6 #t)
des'%N
%-X%F
(
des,%N
_1%F
]
% ---- 4. Gruppe:
\runter
des%N
-5%F
->
ges,%N
-2%F
des'%N
%-X%F
)
% =============== % TAKT 33:
% ---- 1. Gruppe:
#(Ratio .8 #t)
#(BogenKurve 8 #t)
\fingerOben
<
es,%N
-1%F
>
(
[
ges%N
-2%F
des'%N
-4%F
]
% ---- 2. Gruppe:
\stemDown
es%N
%-X%F
ges,%N
-1%F
des'%N
-2%F
% ---- 3. Gruppe:
\stemNeutral
\rauf
es%N
%-X%F
ges%N
%-X%F
des%N
-1%F
% ---- 4. Gruppe:
es%N
%-X%F
ges%N
%-X%F
des'%N
%-X%F
% ---- 1. Gruppe:
% =============== % TAKT 34:
es,%N
-1%F
ges%N
%-X%F
des'%N
-4%F
% ---- 2. Gruppe:
es%N
%-X%F
ges,%N
-1%F
des'%N
-2%F
% ---- 3. Gruppe:
es%N
%-X%F
ges%N
%-X%F
des%N
-1%F
% ---- 4. Gruppe:
es%N
-2%F
des'%N
-5%F
ges,%N
-3%F
% ---- 1. Gruppe:
% =============== % TAKT 35:
es%N
-1%F
ges%N
-2%F
es'%N
-5%F
% ---- 2. Gruppe:
des%N
%-X%F
ges,%N
%-X%F
es%N
%-X%F
% ---- 3. Gruppe:
des'%N
-5%F
ges,%N
-3%F
es%N
-2%F
% ---- 4. Gruppe:
des%N
-1%F
ges%N
-5%F
es%N
%-X%F
% ---- 1. Gruppe:
% =============== % TAKT 36:
des%N
%-X%F
ges,%N
%-X%F
es'%N
-5%F
% ---- 2. Gruppe:
des%N
%-X%F
ges,%N
%-X%F
es%N
%-X%F
% ---- 3. Gruppe:
des'%N
-5%F
ges,%N
%-X%F
es%N
%-X%F
% ---- 4. Gruppe:
des%N
-1%F
ges%N
-4%F
es%N
-2%F
)
% =============== % TAKT 37:
% ---- 1. Gruppe:
#(Ratio 8 #t)
#(BogenKurve 8 #t)
\fingerAussen
as,%N
-1%F
(
\fingerInnen
es'%N
%-X%F
ges%N
%-X%F
% ---- 2. Gruppe:
as%N
%-X%F
es%N
-1%F
ges%N
%-X%F
% ---- 3. Gruppe:
as%N
%-X%F
es'%N
%-X%F
ges,%N
-1%F
% ---- 4. Gruppe:
as%N
%-X%F
es'%N
%-X%F
ges%N
%-X%F
% =============== % TAKT 38:
% ---- 1. Gruppe:
as,%N
-1%F
es'%N
%-X%F
ges%N
%-X%F
% ---- 2. Gruppe:
as%N
%-X%F
es%N
-1%F
ges%N
%-X%F
% ---- 3. Gruppe:
as%N
%-X%F
es'%N
%-X%F
ges,%N
-1%F
% ---- 4. Gruppe:
as%N
%-X%F
ges'%N
-5%F
es%N
-4%F
% =============== % TAKT 39:
% ---- 1. Gruppe:
as,%N
-2%F
ges%N
-1%F
es'%N
-5%F
% ---- 2. Gruppe:
as,%N
-3%F
ges%N
%-X%F
es%N
%-X%F
% ---- 3. Gruppe:
as%N
-5%F
ges%N
%-X%F
es%N
%-X%F
% ---- 4. Gruppe:
as,%N
%-X%F
ges'%N
-5%F
es%N
-4%F
% =============== % TAKT 40:
% ---- 1. Gruppe:
as,%N
%-X%F
ges%N
-1%F
es'%N
%-X%F
% ---- 2. Gruppe:
as,%N
%-X%F
ges%N
%-X%F
es%N
%-X%F
% ---- 3. Gruppe:
as%N
-5%F
ges%N
%-X%F
es%N
%-X%F
% ---- 4. Gruppe:
as,%N
%-X%F
ges'%N
-4%F
\fingerAussen
es%N
-2%F
)
% =============== % TAKT 41:
% ---- 1. Gruppe:
#(Ratio 3 #t)
#(BogenKurve 6 #t)
des%N
-1%F
(
des'%N
-4%F
\fingerInnen
as%N
-2%F
% ---- 2. Gruppe:
des%N
-3%F
as%N
-1%F
as'%N
-5%F
% ---- 3. Gruppe:
des,%N
-2%F
as'%N
%-X%F
as,%N
-1%F
% ---- 4. Gruppe:
des%N
-3%F
as%N
-1%F
des%N
-4%F
% =============== % TAKT 42:
% ---- 1. Gruppe:
des,%N
-1%F
des'%N
-4%F
as%N
-2%F
% ---- 2. Gruppe:
des%N
-3%F
as%N
-1%F
as'%N
-5%F
% ---- 3. Gruppe:
des,%N
-2%F
as'%N
%-X%F
as,%N
-1%F
% ---- 4. Gruppe:
des%N
-3%F
as%N
-1%F
\fingerAussen
des%N
-4%F
)
% =============== % TAKT 43:
% ---- 1. Gruppe:
\fingerInnen
#(Text -1.3 1.5 #t)
des,%N
^\markup { \italic { sempre legato } }
%-X%F
des'%N
-5%F
as%N
%-X%F
% ---- 2. Gruppe:
des%N
%-X%F
des%N
-1%F
des'%N
%-X%F
% ---- 3. Gruppe:
as%N
-2%F
des%N
-5%F
des,%N
-1%F
% ---- 4. Gruppe:
des%N
-4%F
as%N
-2%F
des%N
%-X%F
% =============== % TAKT 44:
% ---- 1. Gruppe:
as%N
-1%F
as'%N
-5%F
des,%N
-2%F
% ---- 2. Gruppe:
as'%N
-5%F
as%N
-1%F
as'%N
%-X%F
% ---- 3. Gruppe:
des,%N
%-X%F
as'%N
%-X%F
as,%N
%-X%F
% ---- 4. Gruppe:
as%N
-5%F
des,%N
-2%F
as'%N
%-X%F
% =============== % TAKT 45:
% ---- 1. Gruppe:
des,%N
-1%F
es%N
-2%F
des%N
-1%F
% ---- 2. Gruppe:
\ACHTan
es'%N
-5%F
des%N
-1%F
es'%N
-5%F
% ---- 3. Gruppe:
des%N
-4%F
es%N
%-X%F
des%N
%-X%F
% ---- 4. Gruppe:
des,%N
-1%F
es%N
-5%F
des%N
-4%F
\ACHTaus
% =============== % TAKT 46:
% ---- 1. Gruppe:
des,%N
-1%F
es%N
-2%F
des%N
-1%F
% ---- 2. Gruppe:
\ACHTan
es'%N
-5%F
des%N
-1%F
es'%N
%-X%F
% ---- 3. Gruppe:
des%N
%-X%F
es%N
%-X%F
des%N
%-X%F
% ---- 4. Gruppe:
des,%N
%-X%F
es%N
%-X%F
des%N
%-X%F
% =============== % TAKT 47:
% ---- 1. Gruppe:
des'%N
-4%F
es%N
-5%F
des%N
%-X%F
% ---- 2. Gruppe:
des,%N
-1%F
es%N
-2%F
des%N
%-X%F
% ---- 3. Gruppe:
des'%N
%-X%F
es%N
%-X%F
des%N
%-X%F
% ---- 4. Gruppe:
des,%N
%-X%F
es%N
%-X%F
des%N
%-X%F
% =============== % TAKT 48:
% ---- 1. Gruppe:
des'%N
-4%F
es%N
%-X%F
des%N
%-X%F
% ---- 2. Gruppe:
des,%N
%-X%F
es%N
%-X%F
des%N
%-X%F
% ---- 3. Gruppe:
des'%N
%-X%F
es%N
%-X%F
des%N
%-X%F
% ---- 4. Gruppe:
des,%N
%-X%F
es%N
%-X%F
des%N
%-X%F
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       R E P R I S E   :
% =============== % TAKT 49:
% ---- 1. Gruppe:
\ACHTan
\once\override Staff.OttavaBracket #'extra-offset = #'(-.4 . 3)
ges16%N
-3%F
b%N
-5%F
des,%N
-1%F
% ---- 2. Gruppe:
#(BogenKurve 6 #t)
ges%N
-4%F
es%N
-2%F
ges%N
-4%F
% ---- 3. Gruppe:
des%N
-1%F
ges%N
-5%F
b,%N
-2%F
% ---- 4. Gruppe:
#(BogenKurve 6 #t)
\ACHTaus
des%N
-3%F
ges,%N
-1%F
b%N
-4%F
% =============== % TAKT 50:
% ---- 1. Gruppe:
\TriolenZahlWeg
ges%N
-2%F
b%N
-4%F
des,%N
-1%F
% ---- 2. Gruppe:
ges%N
-4%F
es%N
-2%F
ges%N
-4%F
% ---- 3. Gruppe:
des%N
-1%F
ges%N
-5%F
b,%N
-2%F
% ---- 4. Gruppe:
des%N
-3%F
ges,%N
%-1%F
b%N
-3%F
% =============== % TAKT 51:
% ---- 1. Gruppe:
des,%N
-1%F
des'%N
-5%F
as%N
-2%F
% ---- 2. Gruppe:
des%N
-4%F
as%N
-1%F
as'%N
%-X%F
% ---- 3. Gruppe:
as,%N
%-X%F
as'%N
%-X%F
es%N
-2%F
% ---- 4. Gruppe:
as%N
-4%F
es%N
-1%F
es'%N
%-X%F
% =============== % TAKT 52:
% ---- 1. Gruppe:
es,%N
%-X%F
es'%N
%-X%F
as,%N
-2%F
% ---- 2. Gruppe:
\ACHTan
es'%N
-4%F
as,%N
-1%F
as'%N
-5%F
% ---- 3. Gruppe:
as,%N
%-X%F
as'%N
%-X%F
des,%N
-2%F
% ---- 4. Gruppe:
as'%N
-4%F
des,%N
-1%F
des'%N
-5%F
% =============== % TAKT 53:
% ---- 1. Gruppe:
ges,%N
-2%F
b%N
-4%F
des,%N
-1%F
% ---- 2. Gruppe:
ges%N
-4%F
es%N
-2%F
ges%N
%-X%F
% ---- 3. Gruppe:
des%N
-1%F
ges%N
-5%F
b,%N
-2%F
% ---- 4. Gruppe:
\ACHTaus
des%N
-3%F
ges,%N
-1%F
b%N
-4%F
% =============== % TAKT 54:
% ---- 1. Gruppe:
ges%N
-2%F
b%N
%-X%F
des,%N
-1%F
% ---- 2. Gruppe:
ges%N
-4%F
es%N
-2%F
ges%N
%-X%F
% ---- 3. Gruppe:
des%N
-1%F
ges%N
-5%F
b,%N
-2%F
% ---- 4. Gruppe:
des%N
-3%F
ges,%N
-1%F
b%N
-3%F
% =============== % TAKT 55:
% ---- 1. Gruppe:
\stemDown
es,%N
-1%F
es'%N
-5%F
as,%N
-2%F
% ---- 2. Gruppe:
\stemNeutral
es'%N
-4%F
as,%N
-1%F
as'%N
-5%F
% ---- 3. Gruppe:
b,%N
%-X%F
b'%N
%-X%F
b,%N
%-X%F
% ---- 4. Gruppe:
b'%N
%-X%F
b,%N
%-X%F
b'%N
%-X%F
% =============== % TAKT 56:
% ---- 1. Gruppe:
\stemDown
es,%N
%-1%F
es'%N
%-5%F
as,%N
-2%F
% ---- 2. Gruppe:
\ACHTan
\stemNeutral
es'%N
-4%F
as,%N
-1%F
as'%N
%-X%F
% ---- 3. Gruppe:
b,%N
%-X%F
b'%N
%-X%F
->
b,%N
%-X%F
% ---- 4. Gruppe:
b'%N
%-X%F
b,%N
%%-X%F
b'%N
%%-X%F
% =============== % TAKT 57:
% ---- 1. Gruppe:
b,%N
%-X%F
_>
b'%N
%-X%F
es,%N
%-X%F
% ---- 2. Gruppe:
b'%N
-5%F
as,%N
-1%F
as'%N
-4%F
% ---- 3. Gruppe:
as,%N
%-X%F
_>
as'%N
-5%F
des,%N
%-X%F
% ---- 4. Gruppe:
as'%N
%-X%F
ges,%N
-1%F
ges'%N
-4%F
\ACHTaus
% =============== % TAKT 58:
% ---- 1. Gruppe:
des,%N
%-X%F
_>
des'%N
-5%F
as%N
-2%F
% ---- 2. Gruppe:
\ACHTan
des%N
-4%F
as%N
-1%F
as'%N
%-X%F
% ---- 3. Gruppe:
ges,%N
_>
-1%F
ges'%N
-4%F
des%N
-2%F
% ---- 4. Gruppe:
ges%N
-3%F
des%N
-1%F
des'%N
%-X%F
% =============== % TAKT 59:
% ---- 1. Gruppe:
b,%N
-1%F
_>
b'%N
-5%F
es,%N
%-X%F
% ---- 2. Gruppe:
b'%N
%-X%F
as,%N
-1%F
as'%N
-4%F
% ---- 3. Gruppe:
as,%N
%-X%F
_>
as'%N
-5%F
des,%N
%-X%F
% ---- 4. Gruppe:
as'%N
%-X%F
ges,%N
%-X%F
ges'%N
-4%F
\ACHTaus
% =============== % TAKT 60:
% ---- 1. Gruppe:
des,%N
%-X%F
_>
des'%N
-5%F
as%N
%-X%F
% ---- 2. Gruppe:
\once\override Staff.OttavaBracket #'extra-offset = #'(0 . 1.7)
\ACHTan
des%N
-4%F
as%N
-1%F
as'%N
%-X%F
% ---- 3. Gruppe:
ges,%N
%-X%F
_>
ges'%N
-4%F
des%N
%-X%F
% ---- 4. Gruppe:
ges%N
-3%F
des%N
-1%F
des'%N
%-X%F
% =============== % TAKT 61:
% ---- 1. Gruppe:
b,%N
-1%F
_>
b'%N
-5%F
es,%N
-2%F
% ---- 2. Gruppe:
b'%N
-5%F
as,%N
-1%F
as'%N
-4%F
% ---- 3. Gruppe:
b,%N
-1%F
_>
b'%N
-5%F
es,%N
-2%F
% ---- 4. Gruppe:
b'%N
-5%F
as,%N
%-1%F
as'%N
-4%F
% =============== % TAKT 62:
% ---- 1. Gruppe:
b,%N
%-1%F
b'%N
-5%F
es,%N
-2%F
% ---- 2. Gruppe:
b'%N
%-5%F
as,%N
%-1%F
as'%N
-4%F
% ---- 3. Gruppe:
b,%N
%-1%F
b'%N
-5%F
es,%N
%-2%F
% ---- 4. Gruppe:
b'%N
%-5%F
as,%N
%-1%F
as'%N
-4%F
% =============== % TAKT 63:
% ---- 2. Gruppe:
\once\override Slur #'rotation = #'(.8 0 0)
#(BogenKurve 4 #t)
des,%N
-2%F
(
\fingerAussen
#(Finger 0 -.3 #t)
b'%N
-5%F
\fingerInnen
as,%N
-1%F
% ---- 3. Gruppe:
as'%N
-4%F
des,%N
-2%F
b'%N
-5%F
% ---- 4. Gruppe:
as,%N
%-X%F
as'%N
-4%F
des,%N
%-X%F
% =============== % TAKT 64:
% ---- 1. Gruppe:
b'%N
%-X%F
as,%N
%-X%F
as'%N
%-X%F
% ---- 2. Gruppe:
des,%N
%-X%F
b'%N
%-X%F
as,%N
%-X%F
% ---- 3. Gruppe:
as'%N
%-X%F
des,%N
%-X%F
b'%N
%-X%F
% ---- 4. Gruppe:
as,%N
%-X%F
as'%N
%-X%F
des,%N
%-X%F
% ---- 1. Gruppe:
b'%N
%-X%F
as,%N
%-X%F
as'%N
-4%F
% =============== % TAKT 65:
% ---- 1. Gruppe:
\fingerAussen
es'%N
-5%F
)
[
\fingerInnen
r32%P
#(Ratio .7 #t)
#(BogenKurve 5 #t)
des%N
-3%F
(
b16%N
-2%F
]
% ---- 2. Gruppe:
as%N
-1%F
ges%N
-4%F
es%N
-3%F
\ACHTaus
% ---- 3. Gruppe:
des%N
-2%F
b%N
-1%F
as%N
-4%F
% ---- 4. Gruppe:
ges%N
-3%F
es%N
-2%F
des%N
-1%F
}
% =============== % TAKT 66:
   \voiceOne
   <<
    {
      as4-4 b8. as16
      \once\override TextScript #'avoid-slur = #'outside
      ges8^\atempo )
    }
     \context Voice="1" { \voiceTwo
    \set fingeringOrientations = #'(down down)
    #(Finger -1.3 1.2 #t)
    <es-2 ges-3>4
    #(Finger -1.3 1.9 #t)
    <des-1 f-2> ges8
       \oneVoice
     }
   >>
   \oneVoice
% =============== % TAKT 67:
% ---- 2. Gruppe:
r
% ---- 3. Gruppe:
\times 2/3 {
\once\override Staff.OttavaBracket #'extra-offset = #'(-.4 . 0)
\ACHTan
as''16
-2
b
-4
as
-3
% ---- 4. Gruppe:
des,
%-X%F
des'
%-X%F
des,
%-X%F
% =============== % TAKT 68:
% ---- 1. Gruppe:
des%N
-2%F
es%N
-4%F
des%N
-3%F
% ---- 2. Gruppe:
ges,%N
%-X%F
ges'%N
%-X%F
ges,%N
%-X%F
% ---- 3. Gruppe:
\ACHTaus
as%N
-2%F
b%N
-4%F
as%N
-3%F
}
% ---- 4. Gruppe:
des,8%N
%-X%F
->
~
% =============== % TAKT 69:
% ---- 1. Gruppe:
\times 2/3 {
des16%N
%-X%F
ges%N
-2%F
as%N
%-X%F
% ---- 2. Gruppe:
b%N
%-X%F
as%N
%-X%F
ges%N
%-X%F
% ---- 3. Gruppe:
des%N
%-X%F
as'%N
-2%F
des%N
-4%F
% ---- 4. Gruppe:
es%N
%-X%F
des%N
%-X%F
as%N
%-X%F
% =============== % TAKT 70:
% ---- 1. Gruppe:
\once\override Staff.OttavaBracket #'extra-offset = #'(-.4 . .5)
\ACHTan
ges%N
%-X%F
des'%N
-2%F
ges%N
-4%F
% ---- 2. Gruppe:
as%N
%-X%F
ges%N
%-X%F
es%N
%-X%F
% ---- 3. Gruppe:
des%N
%-X%F
as'%N
-2%F
des%N
-4%F
% ---- 4. Gruppe:
es%N
%-X%F
des%N
%-X%F
as%N
%-X%F
% =============== % TAKT 71:
% ---- 1. Gruppe:
ges%N
-1%F
as%N
-3%F
ges%N
-2%F
% ---- 2. Gruppe:
des%N
-1%F
des'%N
%-X%F
des,%N
%-X%F
% ---- 3. Gruppe:
des%N
-2%F
es%N
-4%F
des%N
-3%F
% ---- 4. Gruppe:
as%N
-1%F
as'%N
%-X%F
as,%N
%-X%F
\ACHTaus
% =============== % TAKT 72:
% ---- 1. Gruppe:
as%N
-2%F
b%N
-4%F
as%N
-3%F
% ---- 2. Gruppe:
ges%N
-1%F
ges'%N
%-X%F
ges,%N
%-X%F
}
% ---- 3. Gruppe:
#(Text -.3 -1 #t)
des4%N
%-X%F
->
^\markup { \finger { 2 \hspace #-1 - \hspace #-1 1 } }
~
% =============== % TAKT 73:
% ---- 1. Gruppe:
\times 2/3 {
des16%N
%-X%F
ges%N
-2%F
as%N
%-X%F
% ---- 2. Gruppe:
b%N
%-X%F
as%N
%-X%F
ges%N
%-X%F
% ---- 3. Gruppe:
des%N
%-X%F
as'%N
-2%F
des%N
-4%F
% ---- 4. Gruppe:
es%N
%-X%F
des%N
%-X%F
as%N
%-X%F
% =============== % TAKT 74:
% ---- 1. Gruppe:
\ACHTan
ges%N
%-X%F
des'%N
-2%F
ges%N
-4%F
% ---- 2. Gruppe:
as%N
%-X%F
ges%N
%-X%F
des%N
%-X%F
% ---- 3. Gruppe:
as%N
%-X%F
des%N
-2%F
as'%N
-4%F
% ---- 4. Gruppe:
b%N
%-X%F
as%N
%-X%F
des,%N
%-X%F
% =============== % TAKT 75:
% ---- 1. Gruppe:
b'%N
-5%F
des,%N
-2%F
as'%N
-4%F
% ---- 2. Gruppe:
b,%N
-1%F
as'%N
-5%F
des,%N
-2%F
% ---- 3. Gruppe:
ges%N
-4%F
b,%N
-1%F
es%N
-5%F
\ACHTaus
% ---- 4. Gruppe:
as,%N
-2%F
des%N
-4%F
des,%N
-1%F
% =============== % TAKT 76:
% ---- 1. Gruppe:
b'%N
-5%F
des,%N
-2%F
as'%N
-4%F
% ---- 2. Gruppe:
b,%N
-1%F
as'%N
-5%F
des,%N
-2%F
% ---- 3. Gruppe:
ges%N
-4%F
b,%N
-1%F
es%N
-5%F
% ---- 4. Gruppe:
as,%N
-2%F
des%N
-4%F
des,%N
-1%F
% =============== % TAKT 77:
% ---- 1. Gruppe:
b'%N
-5%F
des,%N
-2%F
as'%N
-4%F
% ---- 2. Gruppe:
b,%N
-1%F
as'%N
-5%F
des,%N
-2%F
% ---- 3. Gruppe:
ges%N
-4%F
b,%N
-1%F
es%N
-5%F
% ---- 4. Gruppe:
\clef bass
as,%N
-2%F
des%N
-4%F
des,%N
-1%F
% =============== % TAKT 78:
% ---- 1. Gruppe:
b'%N
-3%F
ges%N
-2%F
es'%N
-5%F
% ---- 2. Gruppe:
des,%N
-1%F
des'%N
-4%F
as%N
-2%F
% ---- 3. Gruppe:
b%N
-3%F
ges%N
-2%F
es'%N
-5%F
% ---- 4. Gruppe:
des,%N
-1%F
des'%N
-4%F
as%N
-2%F
}
% =============== % TAKT 79:
% ---- 1. Gruppe:
b8%N
%-X%F
-.
% ---- 2. Gruppe:
\times 2/3 {
\set fingeringOrientations = #'(up up)
\fingerAussen
\artikelAussen
<
b%N
-3%F
des%N
-5%F
>16
->
(
as%N
%-X%F
ges%N
%-X%F
)
% ---- 3. Gruppe:
\clef violin
<
es'%N
-3%F
ges%N
-5%F
>16
^>
(
des%N
%-X%F
b%N
%-X%F
)
% ---- 4. Gruppe:
<
ges'%N
%-3%F
b%N
%-5%F
>16
^>
(
es%N
%-X%F
des%N
%-X%F
)
% =============== % TAKT 80:
% ---- 1. Gruppe:
\stemDown
<
b'%N
%-3%F
des%N
%-5%F
>16
^>
(
as%N
%-X%F
ges%N
%-X%F
)
% ---- 2. Gruppe:
\stemNeutral
\clef violin
<
es'%N
%-3%F
ges%N
%-5%F
>16
^>
(
des%N
%-X%F
b%N
%-X%F
)
% ---- 3. Gruppe:
<
ges'%N
%-3%F
b%N
%-5%F
>16
^>
(
es%N
%-X%F
des%N
%-X%F
)
% ---- 4. Gruppe:
<
b'%N
%-3%F
des%N
%-5%F
>16
^>
(
as%N
%-X%F
ges%N
%-X%F
)
% =============== % TAKT 81:
% ---- 1. Gruppe:
\stemNeutral
\clef violin
\once\override Staff.OttavaBracket #'extra-offset = #'(0 . .2)
\ACHTan
<
es'%N
%-3%F
ges%N
%-5%F
>16
^>
(
des%N
%-X%F
b%N
%-X%F
)
% ---- 2. Gruppe:
<
ges'%N
%-3%F
b%N
%-5%F
>16
(
es%N
%-X%F
des%N
%-X%F
)
% ---- 3. Gruppe:
<
es%N
%-3%F
ges%N
%-5%F
>16
(
des%N
%-X%F
b%N
%-X%F
)
% ---- 2. Gruppe:
<
ges'%N
%-3%F
b%N
%-5%F
>16
(
es%N
%-X%F
des%N
%-X%F
)
% =============== % TAKT 82:
% ---- 1. Gruppe:
<
es%N
%-3%F
ges%N
%-5%F
>16
(
des%N
%-X%F
b%N
%-X%F
)
% ---- 2. Gruppe:
<
ges'%N
%-3%F
b%N
%-5%F
>16
(
es%N
%-X%F
des%N
%-X%F
)
% ---- 3. Gruppe:
<
es%N
%-3%F
ges%N
%-5%F
>16
(
des%N
%-X%F
b%N
%-X%F
)
% ---- 4. Gruppe:
<
ges'%N
%-3%F
b%N
%-5%F
>16
(
es%N
%-X%F
des%N
-1%F
)
% =============== % TAKT 83:
% ---- 1. Gruppe:
\TriolenZahl
\KlammerAn
<
b%N
-2%F
ges'%N
-5%F
>
-.
\ACHTaus
\ExtraSPACE
r%P
\TriolenZahlWeg
\KlammerWeg
<ges ges'>-.
% ---- 2. Gruppe:
<es es'>-.
<des des'>-.
<b b'>-.
% ---- 3. Gruppe:
<as as'>-.
<ges ges'>-.
<es es'>-.
% ---- 4. Gruppe:
<des des'>-.
<b b'>-.
<as as'>-.
}
% =============== % TAKT 84:
}

StaccatoKorrektur = \once\override Script #'X-offset = #.65
%
linksHAUPT =  \context Staff \relative c{
  \context Voice = "linksHAUPT"
  \override Script #'avoid-slur = #'inside
  \override TextScript #'avoid-slur = #'inside
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% ----------------------------------------------- ---------
\Axpiano
\override Fingering  #'staff-padding = #'()
\HalbeBalken
\fingerLinks
<ges' b-4 des ges>8-. <ges ces-3 es ges>-. <ges b-4 des ges>-. r        % Takt  1
% ----------------------------------------------------------------------- ==== =>
<ges, ges'>-. <ces'-4 es ges>-.[ <b-3 des ges>-.] r                     % Takt  2
% ----------------------------------------------------------------------- ==== =>
\fingerUnten
<des,, des'>-. <as'' des f>_4-.[ <as ces es>_3-.] as,_5-.               % Takt  3
% ----------------------------------------------------------------------- ==== =>
<< { r <as' ces es>_._>[
  \StaccatoKorrektur <as ces des>_.] } \\ <des,_5>4. >> r8              % Takt  4
% ----------------------------------------------------------------------- ==== =>
\fingerLinks
<ges b-4 des ges>8-. <ges ces-3 es ges>-. <ges b-4 des ges>-. r         % Takt  5
% ----------------------------------------------------------------------- ==== =>
<ges, ges'>-. <ces' es ges>_4-.[ <b des ges>_3-.] r                     % Takt  6
% ----------------------------------------------------------------------- ==== =>
ces,-. <as'-2 es'-1>4-> ces,8_4-.                                       % Takt  7
% ----------------------------------------------------------------------- ==== =>
\autoBeamOff
<b f' d'>\arpeggio #(Clef -.5 0 #t) \clef violin <b' f' d'>\arpeggio r4 % Takt  8
% ----------------------------------------------------------------------- ==== =>
\autoBeamOn \fingerLinks
<ges b-4 des ges>8-. <ges ces-3 es ges>-. <ges b-4 des ges>-. r         % Takt  9
% ----------------------------------------------------------------------- ==== =>
\clef bass <ges, ges'>-. <ces' es ges>_4-.[ <b des ges>_3-.] r          % Takt 10
% ----------------------------------------------------------------------- ==== =>
\fingerUnten
<des,, des'>-. <as'' des f>_4-.[ <as ces es>_3-.] as,_5-.               % Takt 11
% ----------------------------------------------------------------------- ==== =>
<< { r <as' ces es>_._>[
  \StaccatoKorrektur <as ces des>_.] } \\ \fingerLinks <des,-5>4. >> r8 % Takt 12
% ----------------------------------------------------------------------- ==== =>
\fingerLinks
<ges b-4 des ges>8-. <ges ces-3 es ges>-. <ges b-4 des ges>-. r         % Takt 13
% ----------------------------------------------------------------------- ==== =>
<ges, ges'>-. <ces'-4 es ges>-.[
  #(Finger .2 0 #t) \fingerUnten <b-3 des ges>-.] r                     % Takt 14
% ----------------------------------------------------------------------- ==== =>
\fingerLinks c,-. <as'-3 ges'>4-> as,8-.                                % Takt 15
% ----------------------------------------------------------------------- ==== =>
des-5-. <as' f'>-. r4 \clef violin \slurUp                              % Takt 16
% ----------------------------------------------------------------------- ==== =>
\artikelAussen \fingerUnten
<c ges' as>8_4( <as ges' as>) <des f b>_3^>([ <as f' as>)]              % Takt 17
% ----------------------------------------------------------------------- ==== =>
<c-4 ges' b>8^>( <as ges' as>) <des-3 f>([ as])                         % Takt 18
% ----------------------------------------------------------------------- ==== =>
\clef bass c,-. <as' es' ges>_4-.[ <as des f>_3-.] des,-.               % Takt 19
% ----------------------------------------------------------------------- ==== =>
as-.[ #(Finger .2 0 #t) <as'-3 c ges'>-.] \stemUp des,,^.
  \stemNeutral #(Finger .2 0 #t) <as''-4 des f>-.                       % Takt 20
% ----------------------------------------------------------------------- ==== =>
as,-. \clef violin <c' ges' as>8_4[ <des f b>_3^>( <as f' as>)]         % Takt 21
% ----------------------------------------------------------------------- ==== =>
<c-4 ges' b>8^>( <as ges' as>) <des-3 f>([ as])                         % Takt 22
% ----------------------------------------------------------------------- ==== =>
\clef bass c,-. #(Finger .2 0 #t) 
  <as'-4 es' ges>-. r \artikelInnen c,,^5(                              % Takt 23
% ----------------------------------------------------------------------- ==== =>
c'-.) #(Finger .2 0 #t) <as'-4 es' ges>-. r \slurDown <c,, c'>(         % Takt 24
% ----------------------------------------------------------------------- ==== =>
\autoBeamOff\fingerRechts <des-4 des'>-.)\fingerLinks <b''-3 des ges>-.
  \fingerAussen <c,, c'>_5([ \fingerInnen \fingerLinks <des-4 des'>]    % Takt 25
% ----------------------------------------------------------------------- ==== =>
<d-5 d'>-.) <b'' ges'>-. \fingerAussen
  <cis,, cis'>_4([ \fingerInnen <d d'>_5]                               % Takt 26
% ----------------------------------------------------------------------- ==== =>
\fingerLinks <es-4 es'>-.) <b''-3 ges' -1>4->
  \fingerAussen <es,, es'>8_4(                                          % Takt 27
% ----------------------------------------------------------------------- ==== =>
\fingerRechts <fes-5 fes'>-.) \fingerLinks
  <b'-3 ges' -1>4-> \fingerUnten <e,, e'>8(                             % Takt 28
% ----------------------------------------------------------------------- ==== =>
\autoBeamOn \ViertelBalken \fingerLinks \fingerInnen <f-4 f'>-.)
  <b' des f>-. \fingerAussen <e,, e'>8_5( \fingerInnen <f f'>_4         % Takt 29
% ----------------------------------------------------------------------- ==== =>
#(Finger 0 -1 #t) <ges-3 ges'>-.) #(Finger .2 0 #t) \fingerUnten <b'-3 des fes>-.
  \fingerAussen <f, f'>8_5( \fingerInnen <ges ges'>_4 \fingerAussen     % Takt 30
% ----------------------------------------------------------------------- ==== =>
#(Finger .2 0 #t) \fingerUnten <g-5 g'>-.)
  <g' des' fes>-. <as, as'>-. <as' des f>-.                             % Takt 31
% ----------------------------------------------------------------------- ==== =>
<heses, heses'>-. <heses' es ges!>-. r \stemDown <heses,, heses'>       % Takt 32
% ----------------------------------------------------------------------- ==== =>
#(Finger .2 0 #t) <as-4 as'>2 \stemNeutral                              % Takt 33
% ----------------------------------------------------------------------- ==== =>
\fingerLinks r4 <as'' des-2 ges>8.  <as des-3 ges>16                    % Takt 34
% ----------------------------------------------------------------------- ==== =>
<as des-2 ges>2-\sf                                                     % Takt 35
% ----------------------------------------------------------------------- ==== =>
R                                                                       % Takt 36
% ----------------------------------------------------------------------- ==== =>
<as,, as'>2                                                             % Takt 37
% ----------------------------------------------------------------------- ==== =>
r4 \clef violin <as'' c ges' as>8.  <as c ges' as>16                    % Takt 38
% ----------------------------------------------------------------------- ==== =>
<as c ges' as>2                                                         % Takt 39
% ----------------------------------------------------------------------- ==== =>
R                                                                       % Takt 40
% ----------------------------------------------------------------------- ==== =>
\clef bass \fingerInnen des,,8-. r <as''-3 f'-1>4( ~                    % Takt 41
% ----------------------------------------------------------------------- ==== =>
<as f'> <g-4 e'-1>8. <as-3 f'-1>16                                      % Takt 42
% ----------------------------------------------------------------------- ==== =>
des,8-.) r <as'-3 f'-1>4( ~                                             % Takt 43
% ----------------------------------------------------------------------- ==== =>
<as f'> <g-4 e'-1>8. <as-3 f'-1>16 \autoBeamOff                         % Takt 44
% ----------------------------------------------------------------------- ==== =>
des,8-.) \clef violin \fingerAussen <as' des f>_5[(
  \Axvoice \fingerInnen <heses des ges!>_4
  <b des g>_\markup { \finger { 3 \hspace #-1 - \hspace #-1 4 } }]      % Takt 45
% ----------------------------------------------------------------------- ==== =>
\Axmodern <ces des as'>4_3 <b des g>8_4[ <heses des ges>_5]             % Takt 46
% ----------------------------------------------------------------------- ==== =>
\fingerAussen <as ces f>8_3-.) \clef bass des,-. \clef violin
<< {
     \once\override Slur #'rotation = #'(-1 0 0)
     #(Bogen -.5 .3 #t)
     #(Ratio 3 #t)
     #(BogenKurve 4 #t)
     #(Finger 0 1.3 #t) as''-1[(
     #(Finger 0 .7 #t) b-1] \fingerInnen ces4-1 b8[ as])
   }
     \\
   {
     <ces, des f>4 <ces des f>2
} >>                                                        % Takt 47 bis Takt 48
% ----------------------------------------------------------------------- ==== =>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       R E P R I S E   :
\autoBeamOn
<ges b-4 des ges>8-. <ges ces-3 es ges>-. <ges b-4 des ges>-. r         % Takt 49
% ----------------------------------------------------------------------- ==== =>
\clef bass <ges, ges'>-. <ces' es ges>_4-.[ <b des ges>_3-.] r          % Takt 50
% ----------------------------------------------------------------------- ==== =>
\fingerUnten
<des,, des'>-. <as'' des f>_4-.[ <as ces es>_3-.] as,_5-.                           % Takt 51
% ----------------------------------------------------------------------- ==== =>
<< { r <as' ces es>_._>[
  \StaccatoKorrektur <as ces des>_.] } \\ des,4.-5 >> r8                % Takt 52
% ----------------------------------------------------------------------- ==== =>
\fingerLinks
<ges b-4 des ges>8-. <ges ces-3 es ges>-. <ges b-4 des ges>-. r         % Takt 53
% ----------------------------------------------------------------------- ==== =>
<ges, ges'>-. <ces'-4 es ges>-.[ <b-3 des ges>-.] r \slurUp             % Takt 54
% ----------------------------------------------------------------------- ==== =>
ces,-. <as'-3 es'-1>( \fingerRechts <f-5 b-2 d-1>)
  #(Finger .2 0 #t) \fingerUnten <b,-4>(                                % Takt 55
% ----------------------------------------------------------------------- ==== =>
#(Finger .2 .2 #t) <ces-5>-.) \fingerLinks <as'-3 es'-1>( <f-5 b d>-1)
  #(Finger .2 .1 #t) \fingerUnten <b,-4>-.                              % Takt 56
% ----------------------------------------------------------------------- ==== =>
\Axmodern #(Balken 3.5 3.5 #t) ces_5-. \clef violin <ces' es as>_3-.
  \clef bass #(Balken 4 3 #t) des,!-. \clef violin <b' des! ges>_4-.    % Takt 57
% ----------------------------------------------------------------------- ==== =>
\clef bass #(Balken 3.5 3.5 #t) ces,-. \clef violin <ces' des f as>_4-.
  \clef bass #(Balken 4 3 #t) b,-. \clef violin <b' des ges b>-.        % Takt 58
% ----------------------------------------------------------------------- ==== =>
\Axpiano\clef bass #(Balken 3.5 3.5 #t) ces,-. \clef violin <ces' es as>_4-.
  \clef bass #(Balken 4 3 #t) des,-. \clef violin <b' des ges>-.        % Takt 59
% ----------------------------------------------------------------------- ==== =>
\clef bass #(Balken 3.5 3.5 #t) ces,-. \clef violin <ces' des f as>_4-.
  \clef bass #(Balken 4 3 #t) b,-. \clef violin <b' des ges b>-.        % Takt 60
% ----------------------------------------------------------------------- ==== =>
\clef bass ces,-. <as' es' as>4-> ces,8-5-.                             % Takt 61
% ----------------------------------------------------------------------- ==== =>
c-. \fingerLinks #(Text -1.3 -1.9 #t)
  <as' es' ges-1 as>4->^\markup { \finger 1 } c,8-.                     % Takt 62
% ----------------------------------------------------------------------- ==== =>
des4-4 \clef violin <as' des ges as>                                    % Takt 63
% ----------------------------------------------------------------------- ==== =>
\stemUp <ges' as des>_3 r \clef bass \stemNeutral                       % Takt 64
% ----------------------------------------------------------------------- ==== =>
\strichAn \grace des,,8 \strichAus <des' as'-3 des ges>2                % Takt 65
% ----------------------------------------------------------------------- ==== =>
<des as' ces> \clef violin                                              % Takt 66
% ----------------------------------------------------------------------- ==== =>
\voiceOne << {
  <b'-4 ges'>8( \fingerOben #(Finger -.2 0 #t) \fingerInnen <des-2>)
  \fingerLinks <ces-3 as'-1>( <as-4 f'-1> <b ges'>8( \fingerOben
  #(Finger -.2 0 #t) <des-2>) \fingerLinks <ces-3 as'-1>( <as-4 f'-1>
}
\context Voice="1" { \voiceTwo
  ges2 ges
\oneVoice } >> \oneVoice                                    % Takt 67 und Takt 68
% ----------------------------------------------------------------------- ==== =>
\clef bass <ges b ges'>8) r <f ces' es>_4( <des des'>)                  % Takt 69
% ----------------------------------------------------------------------- ==== =>
<ges b es>_3( <des des'>) <f ces' es>_4( <des des'>)                    % Takt 70
% ----------------------------------------------------------------------- ==== =>
\clef violin
\voiceOne << {
  <b'-4 ges'>8( \fingerOben #(Finger -.2 0 #t) <des-2>) \fingerLinks
  <ces-3 as'-1>( <as-4 f'-1> <b ges'>8( \fingerOben
  #(Finger -.2 0 #t) <des-2>) \fingerLinks <ces-3 as'-1>( <as-4 f'-1>
}
\context Voice="1" { \voiceTwo
  ges2 ges
\oneVoice } >> \oneVoice                                    % Takt 71 und Takt 72
% ----------------------------------------------------------------------- ==== =>
\clef bass <ges b ges'>8 des') <f, ces' es>_4_>( <des des'>)            % Takt 73
% ----------------------------------------------------------------------- ==== =>
<ges b es>_3_>( <des des'>) <f ces' es>_4_>( <des des'>)                % Takt 74
% ----------------------------------------------------------------------- ==== =>
\clef violin <ges des' b'>4\arpeggio r8 \clef bass <des as' ces f>->(   % Takt 75
% ----------------------------------------------------------------------- ==== =>
<ges b ges'>4_4) r8 \clef bass <des, ces' f>->^(                        % Takt 76
% ----------------------------------------------------------------------- ==== =>
\fingerUnten <ges-4 b ges'>4) r8 \fingerAussen des_2(                   % Takt 77
% ----------------------------------------------------------------------- ==== =>
<ges, ges'>-.) des'-. <ges, ges'>-. des'-.                              % Takt 78
% ----------------------------------------------------------------------- ==== =>
<ges, ges'>8-. r r \AchtelSpanner \AchtelBalken
\times 2/3 { \KlammerWeg \TriolenZahlWeg
  ges'16( des' b')                                                      % Takt 79
% ----------------------------------------------------------------------- ==== =>
ges,( des' b') b,( ges'_2 des') des,( b'_2 ges')
  \clef violin ges,16( des' b')                                         % Takt 80
% ----------------------------------------------------------------------- ==== =>
b,( ges'_2 des') des,_5( b' ges') ges,_4( b ges') des,_5( b' ges')      % Takt 81
% ----------------------------------------------------------------------- ==== =>
ges,_4( b ges') des,_5( b' ges') ges,_4( b ges') des,_5( b' ges')       % Takt 82
% ----------------------------------------------------------------------- ==== =>
% =============== % TAKT 83:
\TriolenZahl
\KlammerAn
% ---- 1. Gruppe:
#(Finger 0 -1 #t)
ges,_4-.
\ACHTaus
r%P
\eXTRASPACE
\clef bass
\TriolenZahlWeg
\KlammerWeg
<ges, ges'>-.
% ---- 2. Gruppe:
<es es'>-.
<des des'>-.
<b b'>-.
% ---- 3. Gruppe:
\stemDown
<as as'>-.
<ges ges'>-.
<es es'>-.
% ---- 4. Gruppe:
\stemNeutral
<des des'>-.
<b b'>-.
<as as'>-.
}
% =============== % TAKT 84:
}

rechtsSCHLUSS = \context Staff {
  \context Voice = "rechtsSCHLUSS"
% =============== % TAKT 84:
<ges ges'>8-.
r
\once\override Staff.OttavaBracket #'extra-offset = #'(.2 . 0)
\ACHTan
<b'' des ges b>4
\arpeggio
\ACHTaus
% =============== % TAKT 85:
\clef bass
     \once \override Script #'script-priority = #-100
ges,,2-3 \fermata
}
%
linksSCHLUSS =  \context Staff {
  \context Voice = "linksSCHLUSS"
% =============== % TAKT 84:
<ges, ges'>8-.
r
#(Clef -.5 0 #t)
\clef violin
<ges'' des' b'>4 \arpeggio
% =============== % TAKT 85:
\clef bass
<ges,, ges'>2 \fermata
}

MIDIrechtsSCHLUSS = \context Staff {
  \context Voice = "MIDIrechtsSCHLUSS"
% =============== % TAKT 84:
<ges ges'>8-.
r
\once\override Staff.OttavaBracket #'extra-offset = #'(.2 . 0)
\ACHTan
\appoggiatura { b''[ des ges] } b4
\ACHTaus
% =============== % TAKT 85:
\clef bass
     \once \override Script #'script-priority = #-100
ges,,,2-3 \fermata
}
%
MIDIlinksSCHLUSS =  \context Staff {
  \context Voice = "MIDIlinksSCHLUSS"
% =============== % TAKT 84:
<ges, ges'>8-.
r
\clef violin
\appoggiatura { ges''[ des'] } b'4
% =============== % TAKT 85:
\clef bass
<ges,,, ges'>2 \fermata
}


% Score layout:
%
rechts = \context Staff \relative c'{
  \context Voice = "rechts"
  \rechtsHAUPT
  \rechtsSCHLUSS
}
%
links =  \context Staff \relative c{
  \context Voice = "links"
  \linksHAUPT
  \linksSCHLUSS
}

% midi version:
%
MIDIrechts = \context Staff \relative c'{
  \context Voice = "rechts"
  \rechtsHAUPT
  \MIDIrechtsSCHLUSS
}
%
MIDIlinks =  \context Staff \relative c{
  \context Voice = "links"
  \linksHAUPT
  \MIDIlinksSCHLUSS
}

% das folgende nP steht fuer nullPedal:
nP = \once\override Staff.SustainPedal #'extra-offset = #'(0 . 0)
%
pedal =  \context Staff \relative c{
\override Staff.SustainPedal #'extra-offset = #'(.9 . 0)
\override Voice.Rest #'transparent = ##t
  s4.
  \times 2/3 {
    s16 r s                                     % pedalTakt  1
    s8. \PR s16 s s \PH s4.                     % pedalTakt  2
    s8. \PR s16 s \PH s s8. \PR s8 s16 \PH      % pedalTakt  3
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt  4
    s2.                                         % pedalTakt  5
    s8. \PR s16 s \PH s s4.                     % pedalTakt  6
    s4. \PR s8. s16 s s \PH                     % pedalTakt  7
    s4. \PR s8. s16 s s \PH                     % pedalTakt  8
    s2.                                         % pedalTakt  9
    s8. \PR s16 s \PH s s4.                     % pedalTakt 10
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt 11
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt 12
    s2.                                         % pedalTakt 13
    s8. \PR s16 s \PH s s4.                     % pedalTakt 14
    s4. \PR s8. s16 s s \PH                     % pedalTakt 15
    s4. \PR s8. s16 s s \PH                     % pedalTakt 16
    s2.                                         % pedalTakt 17
    s2.                                         % pedalTakt 18
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt 19
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt 20
    s8. \PR s16 s s \PH s4.                     % pedalTakt 21
    s2.                                         % pedalTakt 22
    s2. \PR                                     % pedalTakt 23
    s8. s s s16 s #(Pedal .9 0 #t) s \PH        % pedalTakt 24
  \override Staff.SustainPedal #'extra-offset = #'(.9 . -1)
    s8. \PR s16 s #(Pedal .9 0 #t) s \PH s4.    % pedalTakt 25
    s8. \PR s16 s #(Pedal .9 0 #t) s \PH s4.    % pedalTakt 26
    s4. \PR s8. s16 s #(Pedal .9 -2 #t) s \PH   % pedalTakt 27
    s4. \PR s8. s16 s #(Pedal .9 0 #t) s \PH    % pedalTakt 28
  \override Staff.SustainPedal #'extra-offset = #'(.9 . 0)
    s8. \PR s16 s s \PH s4.                     % pedalTakt 29
    s8. \PR s16 s s \PH s4.                     % pedalTakt 30
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt 31
    s4. \PR s8. s16 #(Pedal .9 -1.5 #t) s \PH s % pedalTakt 32
    #(Pedal .9 .5 #t) s2. \PR                   % pedalTakt 33
    s2.                                         % pedalTakt 34
    s2.                                         % pedalTakt 35
    s8. s s s16 s #(Pedal -.9 0 #t) s \PH       % pedalTakt 36
    s2. \PR                                     % pedalTakt 37
    s2.                                         % pedalTakt 38
    s2.                                         % pedalTakt 39
    s8. s s s16 s s \PH                         % pedalTakt 40
    s2. \PR                                     % pedalTakt 41
    s8. s16 #(Pedal .9 -.5 #t) s \PH s s4.      % pedalTakt 42
    s2. \PR                                     % pedalTakt 43
    s8. s16 #(Pedal .9 -.8 #t) s \PH s s4.      % pedalTakt 44
    s8. \PR s16 s #(Pedal .9 -2 #t) s \PH s4.   % pedalTakt 45
    s2.                                         % pedalTakt 46
    #(Pedal .9 -2 #t)
    s8. \PR s s16 s #(Pedal 0 -3 #t) s \PH s8.  % pedalTakt 47
    s2.                                         % pedalTakt 48
    s2.                                         % pedalTakt 49
    s8. \PR s16 s s \PH s4.                     % pedalTakt 50
    s8. \PR s16 s #(Pedal -.9 0 #t)
      s \PH s8. \PR s8 #(Pedal .9 1 #t) s16 \PH % pedalTakt 51
    #(Pedal .9 -1 #t)
    s8. \PR s16 s #(Pedal -.9 0 #t) s \PH s4.   % pedalTakt 52
    s2.                                         % pedalTakt 53
    s8. \PR s16 s #(Pedal -.9 0 #t) s \PH s4.   % pedalTakt 54
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt 55
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt 56
    #(Pedal .9 -.5 #t)
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt 57
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt 58
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt 59
    s8. \PR s16 s \nP s \PH s8. \PR s8 s16 \PH  % pedalTakt 60
    s4. \PR s8. s16 s s \PH                     % pedalTakt 61
    s4. \PR s8. s16 s s \PH                     % pedalTakt 62
    s2. \PR                                     % pedalTakt 63
    s4. s8. s16 s \PH s                         % pedalTakt 64
    s4. \PR s8. s16 s s \PH                     % pedalTakt 65
    s8. \PR s16 \nP s \PH s s8
      \PR s #(Pedal 4 0 #t) s \PH               % pedalTakt 66
    s2.*17                                      % pedalTakt 67 bis 83
    s2. \PR                                     % pedalTakt 84
    s4. s8. #(Pedal .9 -3 #t) s16 \PH s8        % pedalTakt 85
  }
}

pocoRallent = #(make-dynamic-script (markup #:line(#:normal-text #:italic "poco rallent.")))
pocoRall= #(make-dynamic-script (markup #:line(#:normal-text #:italic "poco rall.")))
delicato = #(make-dynamic-script (markup #:line(#:normal-text #:italic "delicato")))
smorz = #(make-dynamic-script (markup #:line(#:normal-text #:italic "smorz.")))
legato = #(make-dynamic-script (markup #:line(#:normal-text #:italic "legato")))
%
cre = \set crescendoText = \markup { \italic \raise #-.5 "cre" \hspace #1 }
scen = \set crescendoText = \markup { \italic \raise #-.5 "scen" \hspace #1 }
do = \set crescendoText = \markup { \italic \raise #-.5 "do" \hspace #1 }
%
dashLineAus = \once\override DynamicTextSpanner #'dash-period = #-1.0
%
meinSetTextCresc = { \setTextCresc \set crescendoText = \markup { \italic \raise #-.5 "cresc." \hspace #1 } }
pocoCrescMitDash = { \setTextCresc \set crescendoText = \markup { \italic \raise #-.5 "poco cresc." \hspace #1 } }
%
% fuer die Takte 55 und 56 sowie 62 und 63:
teilCresc = #(DynamikText 1.5 0 #t)

dynamik =  \context Staff \relative c{
\set Staff.midiMinimumVolume = #-.5
\set Staff.midiMaximumVolume = #1
  #(DynamikLinie 1.5)
  \override DynamicTextSpanner #'dash-period = #7
  s2 \f                                                 % dynamikTakt  1
  #(Dynamik .5 0 #t) s \p                               % dynamikTakt  2
  \meinSetTextCresc s4 s16 \< s8.                       % dynamikTakt  3
  s4. s16 s                                             % dynamikTakt  4
  s2 \f                                                 % dynamikTakt  5
  #(Dynamik .5 0 #t) s \p                               % dynamikTakt  6
  #(DynamikLinie 2.5) s8. s16 \< s8 s16 s32 s64 s \!    % dynamikTakt  7
  s64 s s s-\pocoRall s s s s s64 s \> s32 s16 s8 s \pp % dynamikTakt  8
  s2 \f                                                 % dynamikTakt  9
  #(Dynamik .5 0 #t) s \p                               % dynamikTakt 10
  s4 \meinSetTextCresc #(DynamikLinie 1.8) s16 \< s8.   % dynamikTakt 11
  s2                                                    % dynamikTakt 12
  #(Dynamik 0 .3 #t) s2 \f                              % dynamikTakt 13
  #(DynamikLinie 3) #(Dynamik .5 0 #t) s \p             % dynamikTakt 14
  s4 \setTextCresc \dashLineAus s16 \< s8.              % dynamikTakt 15
  s4. s16 s \!                                          % dynamikTakt 16
  s4 \p #(Keil .4 -1.1 #t) #(KeilWinkel .5 #t)
    s32^\> s s s \! s8                                  % dynamikTakt 17
  #(Keil 1.1 .9 #t) #(KeilWinkel .5 #t)
    s32^\> s s s \! s4.                                 % dynamikTakt 18
  s2*2                                                  % dynamikTakt 19, 20
  s4 #(Keil .4 -1.1 #t) #(KeilWinkel .5 #t)
    s32^\> s s s \! s8                                  % dynamikTakt 21
  #(Keil 1.1 .9 #t) #(KeilWinkel .5 #t)
    s32^\> s s s \! s4.                                 % dynamikTakt 22
  s2*2                                                  % dynamikTakt 23, 24
  s4 #(DynamikLinie 2.5) \setTextCresc \dashLineAus
    \set crescendoText =
    \markup { \italic { \raise #-.5 "poco" \hspace #1.3 \raise #-.5 "a" \hspace #1.3
            \raise #-.5 "poco" \hspace #1.3 \raise #-.5 "cresc." \hspace #1 } }
%%    \override Staff.TextScript #'word-space = #3.3
%%    \set crescendoText = \markup { \italic { poco a poco cresc. \hspace #1 } }
    \once\override Score.DynamicTextSpanner #'extra-offset = #'(.5 . 0)
    s8 \< s                                             % dynamikTakt 25
  s2*3                                                  % dynamikTakt 26, 27, 28
  #(DynamikLinie 1.5) s4 \! \setTextCresc \cre s \<     % dynamikTakt 29
  s4. s16 s \!                                          % dynamikTakt 30
  \setTextCresc #(DynamikLinie 2) \scen s2 \<           % dynamikTakt 31
  s8 s32 s \! \setTextCresc \dashLineAus \do s \< s s16 s s s \!   % dynamikTakt 32
  #(DynamikLinie 2.6) #(Text -1 2.3 #t) #(Dynamik .5 1 #t)
    s ^\markup { \italic { sempre legatissimo } } \f s
    s \< s s4                                           % dynamikTakt 33
  s s8. s16 \!                                          % dynamikTakt 34
  s32 s s \> s s4.                                      % dynamikTakt 35
  s32 s s s \!  \setTextCresc \dashLineAus
    \set crescendoText = \markup { \italic "dimin." \hspace #1 }
    s8 \< s s32 s s s \!                                % dynamikTakt 36
  #(DynamikLinie 3.5) s16 #(Keil -.7 0 #t) s \< s4.     % dynamikTakt 37
  s4. s16 s \!                                          % dynamikTakt 38
  s64 s \> s16. s4.                                     % dynamikTakt 39
  s32 s s s \! \setTextCresc \dashLineAus
    \set crescendoText = \markup { \italic "dim." \hspace #1 }
    s4 \< s8 \!                                         % dynamikTakt 40
  s2 \p                                                 % dynamikTakt 41
  s2*2                                                  % dynamikTakt 42, 43
  \meinSetTextCresc #(DynamikLinie 2.5) s8 s \< s4      % dynamikTakt 44
  s2                                                    % dynamikTakt 45
  s2*3                                                  % dynamikTakt 46, 47, 48
  s2 \f                                                 % dynamikTakt 49
  #(Dynamik 1 0 #t) s \p                                % dynamikTakt 50
  \meinSetTextCresc s4 s \<                             % dynamikTakt 51
  s2                                                    % dynamikTakt 52
  s2 \f                                                 % dynamikTakt 53
  #(Dynamik 1 0 #t) s \p                                % dynamikTakt 54
  #(DynamikLinie 2)
  \setTextCresc \cre s4 \teilCresc s8 \< s16. s32 \!    % dynamikTakt 55
  \setTextCresc \scen \teilCresc s4 \< s16. s32 \! s32
    \teilCresc \setTextCresc \dashLineAus \do s \< s s  % dynamikTakt 56
  s4 s \!                                               % dynamikTakt 57
  s2*4                                                  % dynamikTakt 58, 59, 60, 61
  \setTextCresc \cre #(DynamikLinie 3) s4
    \teilCresc s8 \< s16. s32 \!                        % dynamikTakt 62
  \setTextCresc \scen \teilCresc s4 \< s16. s32 \! s32
    \setTextCresc \dashLineAus \do \teilCresc s \< s s  % dynamikTakt 63
  s8 s \! s32 s s s -\pocoRallent s8                    % dynamikTakt 64
  s16 s64 s \pp s s s32 s #(Dynamik -.3 .4 #t) s -\delicato s
    s8 s64 s s #(Dynamik 0 -.2 #t) s -\smorz s16        % dynamikTakt 65
  s2                                                    % dynamikTakt 66
  s4 \p s32 #(Dynamik .3 .4 #t) s -\legato s s s8       % dynamikTakt 67
  s2                                                    % dynamikTakt 68
  #(DynamikLinie 2.5) \pocoCrescMitDash s4
    \once\override DynamicTextSpanner #'dash-period = #4.4
    s \<                                                % dynamikTakt 69
  s2                                                    % dynamikTakt 70
  s2 \p                                                 % dynamikTakt 71
  s                                                     % dynamikTakt 72
  \pocoCrescMitDash s4 s \<                             % dynamikTakt 73
  s2                                                    % dynamikTakt 74
  s2 \f                                                 % dynamikTakt 75
  s2*5                                                  % dynamikTakt 76, 77, 78, 79, 80
  \setTextCresc \cre #(DynamikLinie 3) s4 s8 \< s16. s32 \!     % dynamikTakt 81
  \setTextCresc \scen s4 \< s16. s32 \!
    \setTextCresc \do s32 \dashLineAus s \< s s         % dynamikTakt 82
  s32 s s \! #(Dynamik -2 .5 #t) s \ff                  % dynamikTakt 83
}

dynamikLinks =  \context Staff \relative c{
  s2*44
  \override DynamicLineSpanner #'staff-padding = #1.6
  #(KeilWinkel .5 #f)
  s8 s ^\< s s \!               % dynamikLinksTakt 45
  s4 ^\> s8 s \!                % dynamikLinksTakt 46
  s4 s32 s ^\< s16 s16. s32 \!  % dynamikLinksTakt 47
  s32 s ^\> s8. s8 \! s         % dynamikLinksTakt 48
  s2*6
  s8 s64 s
    #(Keil .4 0 #t) \once\override Hairpin #'rotation = #'(-10 -1 0)
    s^\> s s s s \! s s8 s      % dynamikLinksTakt 55
  s8 s64 s
    #(Keil .4 0 #t) \once\override Hairpin #'rotation = #'(-10 -1 0)
    s^\> s s s s \! s s8 s      % dynamikLinksTakt 56
}

MIDIdynamik =  \context Staff \relative c{
\set Staff.midiMinimumVolume = #-.5
\set Staff.midiMaximumVolume = #1
  #(DynamikLinie 1.5)
  \override DynamicTextSpanner #'dash-period = #5.8
  s2 \f                                                 % MIDIdynamikTakt  1
  #(Dynamik .5 0 #t) s \p                               % MIDIdynamikTakt  2
  \meinSetTextCresc s4 s16 \< s8.                       % MIDIdynamikTakt  3
  s4. s16 s                                             % MIDIdynamikTakt  4
  s2 \f                                                 % MIDIdynamikTakt  5
  #(Dynamik .5 0 #t) s \p                               % MIDIdynamikTakt  6
  #(DynamikLinie 2.5) s8. s16 \< s8 s16 s32 s64 s \!    % MIDIdynamikTakt  7
  \tempo 4 = 115 s64 \mf
  \tempo 4 = 114 s \>
  \tempo 4 = 113 s
  \tempo 4 = 111 s
  \tempo 4 = 109 s
  \tempo 4 = 107 s
  \tempo 4 = 104 s
  \tempo 4 = 101 s
  \tempo 4 =  98 s
  \tempo 4 =  96 s
  \tempo 4 =  94 s
  \tempo 4 =  92 s
  \tempo 4 =  91 s
  \tempo 4 =  90 s
  \tempo 4 =  89 s
  \tempo 4 =  88 s
  \tempo 4 =  87 s
  \tempo 4 =  86 s
  \tempo 4 =  85 s
  \tempo 4 =  84 s
                 s s s s s s s s
                 s s s s \pp                            % MIDIdynamikTakt  8
  \tempo 4 = 116 s2 \f                                  % MIDIdynamikTakt  9
  #(Dynamik .5 0 #t) s \p                               % MIDIdynamikTakt 10
  s4 \meinSetTextCresc #(DynamikLinie 1.5) s16 \< s8.   % MIDIdynamikTakt 11
  s2                                                    % MIDIdynamikTakt 12
  s2 \f                                                 % MIDIdynamikTakt 13
  #(DynamikLinie 3) #(Dynamik .5 0 #t) s \p             % MIDIdynamikTakt 14
  s4 \setTextCresc \dashLineAus s16 \< s8.              % MIDIdynamikTakt 15
  s4. s16 s \!                                          % MIDIdynamikTakt 16
  s4 \p #(Keil .4 -1.1 #t) #(KeilWinkel .5 #t)
    s32^\> s s s s8 \pp                                 % MIDIdynamikTakt 17
  #(Keil 1.1 .9 #t) #(KeilWinkel .5 #t)
    s32^\> \p s s s s4. \pp                             % MIDIdynamikTakt 18
  s2*2 \p                                               % MIDIdynamikTakt 19, 20
  s4 #(Keil .4 -1.1 #t) #(KeilWinkel .5 #t)
    s32^\> s s s s8 \pp                                 % MIDIdynamikTakt 21
  #(Keil 1.1 .9 #t) #(KeilWinkel .5 #t)
    s32^\> \p s s s s4. \pp                             % MIDIdynamikTakt 22
  s2*2 \p                                               % MIDIdynamikTakt 23, 24
  s4 #(DynamikLinie 2.5)
    s8 \< s                                             % MIDIdynamikTakt 25
  s2*3                                                  % MIDIdynamikTakt 26, 27, 28
  s4 s                                                  % MIDIdynamikTakt 29
  s4. s16 s                                             % MIDIdynamikTakt 30
  s2                                                    % MIDIdynamikTakt 31
  s8 s32 s s s s16 s s s                                % MIDIdynamikTakt 32
  #(DynamikLinie 2.8) #(Text 0 3.5 #t)
    s \f s \< s s s4                                    % MIDIdynamikTakt 33
  s2                                                    % MIDIdynamikTakt 34
  s32 \ff s \> s s s4.                                  % MIDIdynamikTakt 35
  s2                                                    % MIDIdynamikTakt 36
  s16 \f s \< s4.                                       % MIDIdynamikTakt 37
  s2                                                    % MIDIdynamikTakt 38
  s64 \ff s \> s16. s4.                                 % MIDIdynamikTakt 39
  s2                                                    % MIDIdynamikTakt 40
  s2 \p                                                 % MIDIdynamikTakt 41
  s2*2                                                  % MIDIdynamikTakt 42, 43
  \meinSetTextCresc #(DynamikLinie 1.5) s8 s \< s4      % MIDIdynamikTakt 44
  s2*4                                                  % MIDIdynamikTakt 45, 46, 47, 48
  s2 \f                                                 % MIDIdynamikTakt 49
  #(Dynamik 1 0 #t) s \p                                % MIDIdynamikTakt 50
  \meinSetTextCresc s4 s \<                             % MIDIdynamikTakt 51
  s2                                                    % MIDIdynamikTakt 52
  s2 \f                                                 % MIDIdynamikTakt 53
  #(DynamikLinie 2) #(Dynamik 1 0 #t) s \p              % MIDIdynamikTakt 54
  s4 s4 \<                                              % MIDIdynamikTakt 55
  s2*6                                                  % MIDIdynamikTakt 56, 57, 58, 59, 60, 61
  #(DynamikLinie 3) s4
    s8 s16. s32                                         % MIDIdynamikTakt 62
  s4 s16. s32 s32
    s s s                                               % MIDIdynamikTakt 63
  \tempo 4 = 115 s32 \ff
  \tempo 4 = 113 s \>
  \tempo 4 = 110 s
  \tempo 4 = 106 s
  \tempo 4 = 101 s
  \tempo 4 =  96 s
  \tempo 4 =  92 s
  \tempo 4 =  89 s
  \tempo 4 =  87 s
  \tempo 4 =  85 s
  \tempo 4 =  84 s
  \tempo 4 =  83 s
                 s s s s \pp                            % MIDIdynamikTakt 64
  \tempo 4 = 40 s16 \p s64 \tempo 4 = 80 s \pp s s4.    % MIDIdynamikTakt 65
  \tempo 4 = 60 s4. s16                                 % MIDIdynamikTakt 66
  \tempo 4 = 90 s s8 \tempo 4 = 100 s \p
    \tempo 4 = 109 s32 \tempo 4 = 116
    #(Dynamik .3 .4 #t) s -\legato s s s8               % MIDIdynamikTakt 67
  s2                                                    % MIDIdynamikTakt 68
  #(DynamikLinie 1.5) \pocoCrescMitDash s4 s \<         % MIDIdynamikTakt 69
  s2                                                    % MIDIdynamikTakt 70
  s2 \p                                                 % MIDIdynamikTakt 71
  s                                                     % MIDIdynamikTakt 72
  s4 s \<                                               % MIDIdynamikTakt 73
  s2                                                    % MIDIdynamikTakt 74
  s2 \f                                                 % MIDIdynamikTakt 75
  s2*5                                                  % MIDIdynamikTakt 76, 77, 78, 79, 80
  #(DynamikLinie 3) s4 s8 \< s16. s32                   % MIDIdynamikTakt 81
  #(DynamikLinie 4) s2                                  % MIDIdynamikTakt 82
  s32 s s s \ff                                         % MIDIdynamikTakt 83
}

zeilen =  \context Staff \relative c{
  s2\noBreak s\noBreak s                \break          %  3
  s\noBreak s\noBreak s\noBreak s       \break          %  7
  s\noBreak s\noBreak s\noBreak s       \pageBreak      % 11
  s\noBreak s\noBreak s\noBreak s       \break          % 15
  s\noBreak s\noBreak s\noBreak s       \break          % 19
  s\noBreak s\noBreak s\noBreak s       \break          % 23
  s\noBreak s\noBreak s\noBreak s       \break          % 27
  s\noBreak s\noBreak s                 \break          % 30
  s\noBreak s\noBreak s                 \break          % 33
  s\noBreak s\noBreak s                 \pageBreak      % 36
  s\noBreak s\noBreak s\noBreak s       \break          % 40
  s\noBreak s\noBreak s\noBreak s       \break          % 44
  s\noBreak s\noBreak s\noBreak s       \break          % 48
  s\noBreak s\noBreak s\noBreak s       \break          % 52
  s\noBreak s\noBreak s\noBreak s       \break          % 56
  s\noBreak s\noBreak s\noBreak s       \pageBreak      % 60
  s\noBreak s\noBreak s\noBreak s       \break          % 64
  s\noBreak s\noBreak s\noBreak s       \break          % 68
  s\noBreak s\noBreak s\noBreak s       \break          % 72
  s\noBreak s\noBreak s\noBreak s       \break          % 76
  s\noBreak s\noBreak s\noBreak s       \break          % 80
  s\noBreak s\noBreak s\noBreak s\noBreak s\noBreak     % 85
}

zeilenA =  \context Staff \relative c{
  \override NonMusicalPaperColumn #'line-break-permission = ##f
  \override NonMusicalPaperColumn #'page-break-permission = ##f
  s2\noBreak s\noBreak s                \break          %  3
  \noPageBreak s\noBreak s\noBreak s\noBreak s       \break          %  7
  \noPageBreak s\noBreak s\noBreak s\noBreak s       \break          % 11
  \noPageBreak s\noBreak s\noBreak s\noBreak s       \break          % 15
  \noPageBreak
  s\noBreak s\noBreak s\noBreak s       \pageBreak          % 19
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -5))
  s\noBreak s\noBreak s\noBreak s       \break          % 23
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -2)(Y-offset . 25.5)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -2)) % ohne Zeilen-Korrektur
  \noPageBreak s\noBreak s\noBreak s\noBreak s       \break          % 27
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -3)(Y-offset . 57)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -3)) % ohne Zeilen-Korrektur
  \noPageBreak s\noBreak s\noBreak s                 \break          % 30
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((Y-offset . 85.8)) % mit Zeilen-Korrektur
  \noPageBreak s\noBreak s\noBreak s                 \break          % 33
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((Y-offset . 116.2)) % mit Zeilen-Korrektur
  \noPageBreak s\noBreak s\noBreak s                 \break          % 36
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -3))
  \noPageBreak
  s\noBreak s\noBreak s\noBreak s       \pageBreak          % 40
  s\noBreak s\noBreak s\noBreak s       \break          % 44
  \noPageBreak s\noBreak s\noBreak s\noBreak s       \break          % 48
  \noPageBreak s\noBreak s\noBreak s\noBreak s       \break          % 52
  \noPageBreak s\noBreak s\noBreak s\noBreak s       \break          % 56
  \noPageBreak s\noBreak s\noBreak s\noBreak s       \break          % 60
  \noPageBreak
  s\noBreak s\noBreak s\noBreak s       \pageBreak          % 64
  s\noBreak s\noBreak s\noBreak s       \break          % 68
  s\noBreak s\noBreak s\noBreak s       \break          % 72
  s\noBreak s\noBreak s\noBreak s       \break          % 76
  s\noBreak s\noBreak s\noBreak s       \break          % 80
  s\noBreak s\noBreak s\noBreak s\noBreak s\noBreak     % 85
}


zeilenB =  \context Staff \relative c{
  s2\noBreak s\noBreak s                \break\noPageBreak          %  3
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          %  7
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          % 11
  s\noBreak s\noBreak s\noBreak s       \pageBreak          % 15
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          % 19
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          % 23
  s\noBreak s\noBreak s                 \break\noPageBreak          % 26
  s\noBreak s\noBreak s                 \break\noPageBreak          % 29
  s\noBreak s\noBreak s                 \pageBreak          % 32
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          % 36
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          % 40
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          % 44
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          % 48
  s\noBreak s\noBreak s\noBreak s       \pageBreak          % 52
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          % 56
  s\noBreak s\noBreak s                 \break\noPageBreak          % 59
  s\noBreak s\noBreak s                 \break\noPageBreak          % 62
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          % 66
  s\noBreak s\noBreak s\noBreak s       \pageBreak          % 70
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          % 74
  s\noBreak s\noBreak s\noBreak s       \break\noPageBreak          % 78
  s\noBreak s\noBreak s                 \break\noPageBreak          % 81
  s\noBreak s\noBreak s\noBreak s                       % 85
}

zeilenC =  \context Staff \relative c{
  \repeat unfold 4 { s2*3 } \pageBreak
  \repeat unfold 2 { \repeat unfold 4 { s2*3 \noPageBreak } s2*3 \pageBreak }
  s2*3 \noPageBreak % Takt 45
    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
    #'((fixed-alignment-extra-space . 2))
  s2*3 \noPageBreak % Takt 48
  s2*3 \noPageBreak % Takt 51
    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
    #'((fixed-alignment-extra-space . 2))
  s2*3 \noPageBreak % Takt 54
  s2*3 \pageBreak   % Takt 57
  \repeat unfold 3 { s2*3 \noPageBreak }
    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
    #'((fixed-alignment-extra-space . 1))
  s2*3 \noPageBreak % Takt 69
    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
    #'((fixed-alignment-extra-space . 1))
  s2*3 \pageBreak   % Takt 72
    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
    #'((fixed-alignment-extra-space . 2))
  s2*3              % Takt 75
    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
    #'((fixed-alignment-extra-space . 0)(Y-offset . 30)) % mit Zeilen-Korrektur
%    #'((fixed-alignment-extra-space . 0)) % ohne Zeilen-Korrektur
  s2*3              % Takt 78
    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
    #'((fixed-alignment-extra-space . 0)(Y-offset . 60)) % mit Zeilen-Korrektur
%    #'((fixed-alignment-extra-space . 0)) % ohne Zeilen-Korrektur
  s2*3              % Takt 81
    \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
    #'((fixed-alignment-extra-space . 2)(Y-offset . 95)) % mit Zeilen-Korrektur
%    #'((fixed-alignment-extra-space . 2)) % ohne Zeilen-Korrektur
  s2*4              % Takt 85
}

\score {
  \context PianoStaff <<
    \context Staff = "up" << \global \clef violin
        \rechts
        \dynamik
    >>
    \context Staff = "down" << \global \clef bass
        \links
        \zeilenC
        \dynamikLinks
        \pedal
    >>
  >>
  \layout {
    %\context { \PianoStaff \override VerticalAlignment #'forced-distance = #12.5 }
    %\context { \Score \override SpacingSpanner #'spacing-increment = #2.6 }
  }
}

\score {
  \context PianoStaff
  <<
    \context Staff = "up" << \global \clef violin
      \MIDIrechts
      \MIDIdynamik
    >>
    \context Staff = "down" << \global \clef bass
      \MIDIlinks
      \MIDIdynamik
      \pedal
    >>
  >>
  \midi {
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 116 4) }
  }
}
