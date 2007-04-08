\version "2.10.14"
%lastupdated = #(strftime "%Y/%B/%d" (localtime (current-time)))
footer = #(strftime "Mutopia-%Y/%B/%d-xxx" (localtime (current-time)))

\header {
  filename      =       "chp-28-04-a4.ly"
  title         =       \markup \fontsize #1 { Prélude e-moll }
  composer      =       \markup \large { "Frédéric Chopin (1810 - 1849)" }
  opus          =       \markup \center-align { \fontsize #-11 " " \normalsize "Opus 28 Nr. 4" }
  %opus          =       \markup ""
  %arranger      =       \markup "Opus 10 Nr. 1"
  enteredby     =       "Roland Goretzki"

 mutopiatitle           =       "Prélude e-moll"
 mutopiacomposer        =       "ChopinFF"
 mutopiaopus            =       "Opus 28, No. 4"
 mutopiainstrument      =       "Piano"
 date                   =       "1831-1839"
 source                 =       "Peters, Herrmann Scholtz, 1900b"
 style                  =       "Romantic"
 copyright              =       "Public Domain"
 maintainer             =       "Roland Goretzki"
 maintainerEmail        =       "roland@roland-goretzki.de"
 maintainerWeb          =       "http://www.roland-goretzki.de/"
 lastupdated            =       "2007/01/31"

 footer = "Mutopia-2007/02/01-921"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"
#(set-global-staff-size 20)

#(set-default-paper-size "letter") % letter
\paper{                            % letter
  indent = 1\cm                    % letter
  top-margin = 0\cm                % letter
  left-margin = 1.1\cm             % letter
  page-top-space = .8\cm           % letter
  line-width = 19.49\cm            % letter
  paper-width = 8.5\in             % letter
  paper-height = 11\in             % letter
  before-title-space = 0\cm        % letter
  ragged-last-bottom=##f           % letter
  bottom-margin = .6\cm            % letter
  %system-count = #6                % letter
}                                  % letter

global = {
  \key e \minor
  \time 2/2
  \partial 4
  s4 s1*24 s2.
  \bar "|."
}

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
ExtrASPACE = \once\override Score.SeparationItem #'padding = #1.8
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

rechts = \context Staff \relative c'{
  \context Voice = "rechts"
  \override GrandStaff.InstrumentName #'extra-offset = #'(-1.7 . -.6)
  \override GrandStaff.InstrumentName #'font-size = #'3
  \set GrandStaff.instrumentName = \markup { \number { 4 \hspace #-1 . } }
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 3)
  \override Score.RehearsalMark #'self-alignment-X = #'-1
  \mark \markup { Largo. }
  \Axpiano
  \override Script #'avoid-slur = #'inside
  \override TextScript #'avoid-slur = #'inside
  #(Ratio .3 #t)
  #(BogenKurve 3 #t)
  \once\override Beam #'positions = #'(2.5 . 3)
  h8.( \ExtrASPACE h'16 % Auftakt
  h2. c4                % Takt  1
  h2. c4                % Takt  2
  h2. c4                % Takt  3
  h2. b4                % Takt  4
  a2. h4                % Takt  5
  a2. h4                % Takt  6
  a2. h8. a16           % Takt  7
  a2. gis4-> ~          % Takt  8
  gis a8 h d c e, a     % Takt  9
  fis2.) a4(            % Takt  1
  fis2.) \acciaccatura h8 \slurUp a4(           % Takt 11
  g!8 fis c^> h dis fis \times 2/3 { d'8 c h) } % Takt 12
  #(Ratio 1 #t)
  #(BogenKurve 3.8 #t)
  h2.( c4               % Takt 13
  h2. c4                % Takt 14
  h2. c4                % Takt 15
  h8.
  \override TextSpanner #'edge-text = #'("stretto " . "")
  \override TextSpanner #'extra-offset = #'(1 . .8)
  ais16 \startTextSpan
  \once \override TextScript #'script-priority = #-100
  #(Text 3.7 -2.6 #t) #(Artikel 3.6 -2.4 #t) ais4
  \turn^\markup { \doublesharp }
  g' fis8. e16                                          % Takt 16
  e8 dis c' dis, dis e g h,                             % Takt 17
  d c \times 2/3 { e e, a } fis4. \stopTextSpan a8      % Takt 18
  fis2.) \acciaccatura h8 a4(                           % Takt 19
  fis2. ~fis8. e16      % Takt 10
  e2. fis4              % Takt 21
  e2. fis4              % Takt 22
  e2) r-\fermata        % Takt 23
  <<
    { e( dis e2.-\fermata) }
     \\
    {
      \runter\stemUp\override Stem #'length = #12
      <e, fis h>2 <dis fis h> <e g h>2.
    }
  >>
}

links =  \context Staff \relative c{
  \context Voice = "links"
  r4
  <g' h e>8( <g h e> <g h e> <g h e> <g h e> <g h e> <g h e> <g h e>                              % Takt  1
  <fis a e'> <fis a e'> <fis a e'> <fis a e'> <fis a es'> <fis a es'> <fis a es'> <fis a es'>     % Takt  2
  <f a es'> <f a es'> <f a es'> <f a es'> <f a d> <f a d> <f gis d'> <f gis d'>                   % Takt  3
  <e gis d'> <e gis d'> <e gis d'> <e gis d'> <e g d'> <e g d'> <e g cis> <e g cis>               % Takt  4
  \break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
  #'((fixed-alignment-extra-space . -2))
  <e g c> <e g c> <e g c> <e g c> <e fis! c'> <e fis c'> <e fis c'> <e fis c'>                    % Takt  5
  <e fis c'> <e fis c'> <e fis c'> <e fis c'> <dis fis c'> <dis fis c'> <dis fis c'> <dis fis c'> % Takt  6
  <d fis c'> <d fis c'> <d fis c'> <d fis c'> <d fis c'> <d fis c'> <d fis c'> <d fis c'>    % Takt  7
  <d f c'> <d f c'> <d f c'> <d f c'> <d f h> <d f h> <d f h> <d f h>                        % Takt  8
  <c e h'> <c e h'> <c e a> <c e a> <c e a> <c e a> <c e a> <c e a>                          % Takt  9
  <h e a> <h e a> <h dis a'> <h dis a'> <c e a> <c e a> <c e a> <c e a>                      % Takt 10
  <h dis a'> <h dis a'> <h dis a'> <h dis a'> <c e a> <c e a> <c e a> <c e a>                % Takt 11
  <h dis a'>4) r r2                                                                          % Takt 12
  <g' h e>8( <g h e> <g h e> <g h e> <g h e> <g h e> <g h e> <g h e>                    % Takt 13
  <fis a e'> <fis a e'> <fis a e'> <fis a e'> <f a es'> <f a es'> <f a es'> <f a es'>   % Takt 14
  \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
  #'((fixed-alignment-extra-space . 5) (Y-offset . 82))
  <f as es'> <f as es'> <f as d> <f as d> <e gis d'> <e gis d'> <e gis d'> <e gis d'>   % Takt 15
  <e g d'> <e g d'> <e g cis> <e g cis> <cis e ais> <cis e ais> <c e a> <c e a>         % Takt 16
  \Axforget
  <h, h'>) <a'' c fis a>( <a c fis a> <a c fis a> <g h dis fis> <g h e> <g h e> <g h e>  % Takt 17
  \Axmodern
  <a c e> <a c e> a, <e' fis c'> <h e h'> <h e h'> <c e a> <c e a>                % Takt 18
  <h e h'> <h e h'> <h e h'> <h e h'> <c e a> <c e a> <c e a> <c e a>             % Takt 19
  \overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
  #'((fixed-alignment-extra-space . 1) (Y-offset . 111))
  <h e h'> <h e h'> <h e h'> <h e h'> <h dis h'> <h dis h'> <h dis a'> <h dis a'> % Takt 20
  <c g'> <c g'> <c g'> <c g'> <c b'> <c b'> <c e a> <c e a>                       % Takt 21
  <h e a> <h e a> <h e gis> <h e gis> <h e g> <h e g> <h e g> <h e g>             % Takt 22
  <b c g'>2) r-\fermata                                 % Takt 23
  \slurDown\stemDown\ExtraSPACE <h,! h'>( <h fis' h>    % Takt 24
  <e, e'>2._\fermata)                                   % Takt 25
}

dynamik = \context Staff \relative c{
  #(Dynamik 0 -2 #t)
  s4 \p
  s-\markup { \hspace #-5.1 \italic { esp \hspace #-1 ressivo } } s2.
  s1*7
  s8 s s \< s \! s \> s s \! s          % Takt  9
  s1*2
  #(Keil 0 -2 #f)
  s8 s s \< s s s16 s s \! #(Keil .6 -2 #t) s \> s s\!   % Takt 12
  #(Dynamik .4 -.6 #t)
  s4 \p s2.                     % Takt 13
  s1*2
  #(Keil 0 -.4 #t) s8 \< s s s \!
    #(Keil .8 -.4 #t) s \> s s s \!     % Takt 16
  #(Dynamik 0 -.5 #t)
  #(Keil 0 -.3 #t)
  s8 \f \< s s \! s s
    #(Keil 0 -1 #t)
    s \> s s                    % Takt 17
  s s s s \! #(Text 0 -.8 #t) s4-\dim s  % Takt 18
  #(Dynamik 1 -.8 #t)
  s \p s2.                      % Takt 19
  #(Keil 0 -1 #f)
  s2. s8 \< s \!                % Takt 20
  #(KeilWinkel 1.1 #t) #(Keil 0 -.5 #f)
  #(Text 0 -1.2 #t)
  s8-\smorz \> s4. s2           % Takt 21
  s \! s                        % Takt 22
  s s                           % Takt 23
  #(Dynamik -.6 -1.3 #t)
  s \pp s                       % Takt 24
  s2.                           % Takt 25
}

MIDIrechts = \context Staff \relative c'{
  \context Voice = "rechts"
  \override GrandStaff.InstrumentName #'extra-offset = #'(-1.7 . -.6)
  \override GrandStaff.InstrumentName #'font-size = #'3
  \set GrandStaff.instrumentName = \markup { \number { 4 \hspace #-1 . } }
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 3)
  \override Score.RehearsalMark #'self-alignment-X = #'-1
  h8. h'16              % Auftakt
  h2. c4                % Takt  1
  h2. c4                % Takt  2
  h2. c4                % Takt  3
  h2. b4                % Takt  4
  a2. h4                % Takt  5
  a2. h4                % Takt  6
  a2. h8. a16           % Takt  7
  a2. gis4-> ~          % Takt  8
  gis a8 h d c e, a     % Takt  9
  fis2. a4              % Takt  1
  fis2. \acciaccatura h8 \slurUp a4             % Takt 11
  g!8 fis c^> h dis fis \times 2/3 { d'8 c h }  % Takt 12
  h2. c4                % Takt 13
  h2. c4                % Takt 14
  h2. c4                % Takt 15
  h8. ais16 ais8.  h64 ais gisis ais g'4 fis8. e16      % Takt 16
  e8 dis c' dis, dis e g h,             % Takt 17
  d c \times 2/3 { e e, a } fis4. a8    % Takt 18
  fis2. \acciaccatura h8 a4             % Takt 19
  fis2. ~fis8. e16      % Takt 10
  e2. fis4              % Takt 21
  e2. fis4              % Takt 22
  e2 r                  % Takt 23
  <e, fis h e>2 <dis fis h dis> % Takt 24
  <e g h e>1.           % Takt 25
}

MIDIlinks =  \context Staff \relative c{
  \context Voice = "links"
  r4
  <g' h e>8 <g h e> <g h e> <g h e> <g h e> <g h e> <g h e> <g h e>                               % Takt  1
  <fis a e'> <fis a e'> <fis a e'> <fis a e'> <fis a es'> <fis a es'> <fis a es'> <fis a es'>     % Takt  2
  <f a es'> <f a es'> <f a es'> <f a es'> <f a d> <f a d> <f gis d'> <f gis d'>                   % Takt  3
  <e gis d'> <e gis d'> <e gis d'> <e gis d'> <e g d'> <e g d'> <e g cis> <e g cis>               % Takt  4
  <e g c> <e g c> <e g c> <e g c> <e fis! c'> <e fis c'> <e fis c'> <e fis c'>                    % Takt  5
  <e fis c'> <e fis c'> <e fis c'> <e fis c'> <dis fis c'> <dis fis c'> <dis fis c'> <dis fis c'> % Takt  6
  <d fis c'> <d fis c'> <d fis c'> <d fis c'> <d fis c'> <d fis c'> <d fis c'> <d fis c'>         % Takt  7
  <d f c'> <d f c'> <d f c'> <d f c'> <d f h> <d f h> <d f h> <d f h>                             % Takt  8
  <c e h'> <c e h'> <c e a> <c e a> <c e a> <c e a> <c e a> <c e a>                     % Takt  9
  <h e a> <h e a> <h dis a'> <h dis a'> <c e a> <c e a> <c e a> <c e a>                 % Takt 10
  <h dis a'> <h dis a'> <h dis a'> <h dis a'> <c e a> <c e a> <c e a> <c e a>           % Takt 11
  <h dis a'>4 r r2                                                                      % Takt 12
  <g' h e>8 <g h e> <g h e> <g h e> <g h e> <g h e> <g h e> <g h e>                     % Takt 13
  <fis a e'> <fis a e'> <fis a e'> <fis a e'> <f a es'> <f a es'> <f a es'> <f a es'>   % Takt 14
  <f as es'> <f as es'> <f as d> <f as d> <e gis d'> <e gis d'> <e gis d'> <e gis d'>   % Takt 15
  <e g d'> <e g d'> <e g cis> <e g cis> <cis e ais> <cis e ais> <c e a> <c e a>         % Takt 16
  \Axforget
  <h, h'> <a'' c fis a> <a c fis a> <a c fis a> <g h dis fis> <g h e> <g h e> <g h e> % Takt 17
  \Axmodern
  <a c e> <a c e> a, <e' fis c'> <h e h'> <h e h'> <c e a> <c e a>                % Takt 18
  <h e h'> <h e h'> <h e h'> <h e h'> <c e a> <c e a> <c e a> <c e a>             % Takt 19
  <h e h'> <h e h'> <h e h'> <h e h'> <h dis h'> <h dis h'> <h dis a'> <h dis a'> % Takt 20
  <c g'> <c g'> <c g'> <c g'> <c b'> <c b'> <c e a> <c e a>                       % Takt 21
  <h e a> <h e a> <h e gis> <h e gis> <h e g> <h e g> <h e g> <h e g>             % Takt 22
  <b c g'>2 r                                   % Takt 23
  \slurDown\stemDown <h,! h'> <h fis' h>        % Takt 24
  <e, e'>1. 
}

MIDIdynamikR = \context Staff \relative c{
  \set Staff.midiMinimumVolume = #.2 
  \set Staff.midiMaximumVolume = #1
  s4^\pp
  s-\markup { \hspace #-5.1 \italic { esp \hspace #-1 ressivo } } s2.
  s1*6
  s2 s4 s8 \mf s \pp
  s8 s \tempo 4 = 46 s \< \tempo 4 = 44 s \! \tempo 4 = 45 s \> \tempo 4 = 47 s s \! s  % Takt  9
  s1*2
  s8 s \tempo 4 = 43 s \f \tempo 4 = 48 s \pp \< s s16 s s \! s \> s s\!   % Takt 12
  s4 \<^\pp s2.                 % Takt 13
  s1*2
  \override Score.MetronomeMark #'transparent = ##t
  \tempo 4 = 50 s8
  \tempo 4 = 51 s
  \tempo 4 = 52 s
  \tempo 4 = 54 s
  \tempo 4 = 55 s
  \tempo 4 = 56 s
  \tempo 4 = 54 s
  \tempo 4 = 52 s               % Takt 16
  \tempo 4 = 44 s8 \!^\ff
  \tempo 4 = 52 s s s
  \tempo 4 = 54 s
  \tempo 4 = 52 s
  \tempo 4 = 50 s
  \tempo 4 = 48 s               % Takt 17
  s \> s s s s4-\dim s          % Takt 18
  s2 s                          % Takt 19
  s \tempo 4 = 47 s \tempo 4 = 46       % Takt 20
  s \tempo 4 = 45 s \tempo 4 = 44       % Takt 21
  s \tempo 4 = 43 s8
  \tempo 4 = 42 s
  \tempo 4 = 38 s \!^\pppp
  \tempo 4 = 30 s
  \tempo 4 = 42                 % Takt 22
  s2 \tempo 4 = 36 s    % Takt 23
  \tempo 4 = 42 s^\pppp s       % Takt 24
  %s1. \! \pppp                 % Takt 25
  s8 \ppp s s4. s4 \> s s \pppp   % Takt 25
}

MIDIdynamikL = \context Staff \relative c{
  \set Staff.midiMinimumVolume = #0
  \set Staff.midiMaximumVolume = #.8
  s4_\ppp
  s8-\markup { \hspace #-5.1 \italic { esp \hspace #-1 ressivo } }
     \> \ppp s s s \pppp s8 \> \ppp s s s \pppp % Takt  1
  s8 \> \ppp s s s \pppp s8 \> \ppp s s s \pppp % Takt  2
  s8 \> \ppp s s s \pppp s8 \> \ppp s s s \pppp % Takt  3
  s8 \> \ppp s s s \pppp s8 \> \ppp s s s \pppp % Takt  4
  s8 \> \ppp s s s \pppp s8 \> \ppp s s s \pppp % Takt  5
  s8 \> \ppp s s s \pppp s8 \> \ppp s s s \pppp % Takt  6
  s8 \> \ppp s s s \pppp s8 \> \ppp s s s \pppp % Takt  7
  s8 \> \ppp s s s \pppp s8 \> \ppp s s s \pppp % Takt  8
  s8 \> \ppp s s \pppp \< s s8 \> \p s s s \pp  % Takt  9
  s8 \> \ppp s s s \pppp s8 \> \ppp s s s \pppp % Takt 10
  s8 \> \ppp s s s \pppp s8 \> \ppp s s s \pppp % Takt 11
  s8 s s \< s s s16 s s \! s \> s s\!           % Takt 12
  s8 \> \ppp s s s \pppp s8 \> \pp s s s \ppp   % Takt 13
  s8 \> \p s s s \pp s8 \> \mp s s s \p         % Takt 14
  s8 \> \mf s s s \mp s8 \> \mf s s s \mp       % Takt 15
  s4 \< s2.                     % Takt 16
  s8 \!_\f s s s s
    s s s                       % Takt 17
  s \> s s s s4-\dim s          % Takt 18
  s8 \> \mf s s s \mp s8 \> \mf s s s \mp % Takt 19
  s8 \> \mp s s s \p s8 \> \mp s s s \p % Takt 20
  s8 \> \p s s s \pp s8 \> \p s s s \pp % Takt 21
  s8 \> \pp s s s \ppp s8 \> \pp s s s \ppp % Takt 22
  \! s8 \< \ppp s s s \p s2     % Takt 23
  s_\ppp \> s                   % Takt 24
  s8 \! \pppp s \< s4. s4 \ppp \> s s \pppp   % Takt 25
}

Pedal = \context Staff \relative c{
  \set Staff.pedalSustainStyle = #'bracket
  s4 \PR                        % Auftakt
  s2.        s4 \PH\PR          % Takt  1
  s2 \PH\PR s \PH\PR            % Takt  2
  s2 \PH\PR s4 \PH\PR s \PH\PR  % Takt  3
  s2 \PH\PR s4 \PH\PR s \PH\PR  % Takt  4
  s2 \PH\PR s \PH\PR            % Takt  5
  s2 \PH\PR s \PH\PR            % Takt  6
  s1 \PH\PR                     % Takt  7
  s2 \PH\PR s \PH\PR            % Takt  8
  s4 \PH\PR s2. \PH\PR          % Takt  9
  s4 \PH\PR s4 \PH\PR s2 \PH\PR % Takt 10
  s2 \PH\PR s \PH\PR            % Takt 11
  s1 \PH                        % Takt 12
  s1 \PR                        % Takt 13
  s2 \PH\PR s \PH\PR            % Takt 14
  s4 \PH\PR s4 \PH\PR s2 \PH\PR % Takt 15
  s4 \PH\PR s \PH\PR s \PH\PR s \PH\PR  % Takt 16
  s2 \PH\PR s8 \PH\PR s4. \PH\PR        % Takt 17
  s4 \PH\PR s \PH\PR s \PH\PR s \PH\PR  % Takt 18
  s2 \PH\PR s \PH\PR            % Takt 19
  s2 \PH\PR s4 \PH\PR s \PH\PR  % Takt 20
  s2 \PH\PR s4 \PH\PR s \PH\PR  % Takt 21
  s4 \PH\PR s4 \PH\PR s2 \PH\PR % Takt 22
  s2 \PH\PR s \PH               % Takt 23
  s2 \PR s \PH\PR               % Takt 14
  s1 \PH\PR s64 \PH             % Takt 14
}

\score {
  \context PianoStaff
  <<
    \context Staff = "up" << \global \clef violin \rechts \dynamik >>
    \context Staff = "down" << \global \clef bass \links >>
  >>
  \layout {
    \context { \PianoStaff \override VerticalAlignment #'forced-distance = #10 }
    \context { \Score \override SpacingSpanner #'spacing-increment = #1.6 }
    %\context { \Score \override SpacingSpanner #'spacing-increment = #5.5 }
  }
}

\score {
  \context PianoStaff
  <<
    \context Staff = "up" << \global \clef violin \MIDIrechts \MIDIdynamikR >>
    \context Staff = "down" << \global \clef bass \MIDIlinks \MIDIdynamikL \Pedal >>
  >>
  \midi {
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 48 4) }
    %\context { \Voice \remove "Dynamic_performer" }
  }
}
