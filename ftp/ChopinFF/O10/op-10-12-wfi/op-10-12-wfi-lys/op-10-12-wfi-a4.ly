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

\version "2.8.2"
%lastupdated = #(strftime "%Y/%B/%d" (localtime (current-time)))
footer = #(strftime "Mutopia-%Y/%B/%d-xxx" (localtime (current-time)))

\header {
  filename      =       "op-10-12-wfi-a4.ly"
  title         =       \markup \fontsize #1 { "Revolutions - EtÃ¼de" }
  composer      =       \markup \large\caps { "FrÃ©dÃ©ric Chopin (1810 - 1849)" }
  opus          =       \markup \center-align { \fontsize #-11 " " \normalsize "Opus 10 Nr. 12" }
  enteredby     =       "Roland Goretzki"

 mutopiatitle           =       "EtÃ¼de c-moll"
 mutopiacomposer        =       "ChopinFF"
 mutopiaopus            =       "Opus 10, No. 12"
 mutopiainstrument      =       "Piano"
 date                   =       "1828-1831"
 source                 =       "Peters, Herrmann Scholtz, 1900b"
 style                  =       "Romantic"
 copyright              =       "Public Domain"
 maintainer             =       "Roland Goretzki"
 maintainerEmail        =       "roland@roland-goretzki.de"
 maintainerWeb          =       "http://www.roland-goretzki.de/"
 lastupdated            =       "2006/05/25"

 footer = "Mutopia-2006/05/25-743"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } â€¢ \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"
#(set-global-staff-size 20)

#(set-default-paper-size "a4")        % A4
\paper{                               % A4
  top-margin = .6\cm                  % A4
  left-margin = 1\cm                  % A4
  page-top-space = .8\cm              % A4
  line-width = 19.3\cm                % A4
  paper-width = 21\cm                 % A4
  paper-height = 29.7\cm              % A4
  before-title-space = 0\cm           % A4
  printfirst-page-number = ##t        % A4
  print-page-number = ##t             % A4
  between-system-padding = #.4        % A4
  ragged-bottom=##f                   % A4
  ragged-last-bottom=##f              % A4
  bottom-margin = .6\cm               % A4
}                                     % A4

global = { \key c \minor \time 4/4 s1*84 \bar "|." }

%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
% -- %
oben = \change Staff = up
unten = \change Staff = down
% -- %
Extraspace = \once\override Score.SeparationItem #'padding = #.2
ExtraSPAce = \once\override Score.SeparationItem #'padding = #.8
% -- %
Axdefault = #(set-accidental-style 'default)
Axforget = #(set-accidental-style 'forget)
Axpiano = #(set-accidental-style 'piano)
AxpianoVorsicht = #(set-accidental-style 'piano-cautionary)
% -- %
VollRatio = \once\override Slur #'ratio = #'1
% -- %
DreiZweiBalken = \set Staff.beatLength = #(ly:make-moment 1 32)
SechzehntelBalken = \set Staff.beatLength = #(ly:make-moment 1 16)
AchtelBalken = \set Staff.beatLength = #(ly:make-moment 1 8)
ViertelBalken = \set Staff.beatLength = #(ly:make-moment 1 4)
ViertelPunktBalken = \set Staff.beatLength = #(ly:make-moment 3 8)
HalbeBalken = \set Staff.beatLength = #(ly:make-moment 1 2)
HalbePunktBalken = \set Staff.beatLength = #(ly:make-moment 3 4)
GanzeBalken = \set Staff.beatLength = #(ly:make-moment 1 1)
% -- %
GeradeBalken = \override Beam #'height = #0
% -- %
TriolenZahlOben = \override TupletBracket #'direction = #1
TriolenZahlUnten = \override TupletBracket #'direction = #-1
KlammerOben = \override TupletBracket #'direction = #1
KlammerUnten = \override TupletBracket #'direction = #-1
KlammerWeg = \override TupletBracket #'bracket-visibility = ##f
KlammerAn = \override TupletBracket #'bracket-visibility = ##t
TriolenZahlWeg = \override TupletNumber #'transparent = ##t
TriolenZahl = \override TupletNumber #'transparent = ##f
% -- %
HalbeSpanner = \set tupletSpannerDuration = #(ly:make-moment 1 2)
ViertelSpanner = \set tupletSpannerDuration = #(ly:make-moment 1 4)
AchtelSpanner = \set tupletSpannerDuration = #(ly:make-moment 1 8)
% -- %
HoherBogen = \override Slur #'extra-offset = #'(0 . 2)
EtwasHoherBogen = \override Slur #'extra-offset = #'(0 . .5)
WinzigHoherBogen = \override Slur #'extra-offset = #'(0 . .2)
SehrHoherBogen = \override Slur #'extra-offset = #'(0 . 5)
NormalerBogen = \revert Slur #'extra-offset
WinzigTieferBogen = \override Slur #'extra-offset = #'(0 . -.2)
EtwasTieferBogen = \override Slur #'extra-offset = #'(0 . -.5)
TieferBogen = \override Slur #'extra-offset = #'(0 . -2)
% -- %
SehrHoheDynamik = \override DynamicText #'extra-offset = #'(0 . 2)
HoheDynamik = \override DynamicText #'extra-offset = #'(0 . 1)
NormaleDynamik = \revert DynamicText #'extra-offset
MittlereDynamik = \override DynamicText #'extra-offset = #'(0 . -1)
TiefeDynamik = \override DynamicText #'extra-offset = #'(0 . -2)
SehrTiefeDynamik = \override DynamicText #'extra-offset = #'(0 . -3)
% -- %
SehrHoherText = \override TextScript #'extra-offset = #'(0 . 1.5)
HoehererText = \override TextScript #'extra-offset = #'(0 . 1)
NormalerText = \revert TextScript #'extra-offset
HoherText = \override TextScript #'extra-offset = #'(0 . -.5)
MittlererText = \override TextScript #'extra-offset = #'(0 . -1.5)
TieferText = \override TextScript #'extra-offset = #'(0 . -3)
SehrTieferText = \override TextScript #'extra-offset = #'(0 . -4)
% -- %
SehrHoherKeil = \once\override Hairpin #'extra-offset = #'(0 . 2)
HoherKeil = \once\override Hairpin #'extra-offset = #'(0 . 1)
EtwasHoherKeil = \once\override Hairpin #'extra-offset = #'(0 . .5)
WinzigHoherKeil = \once\override Hairpin #'extra-offset = #'(0 . .2)
NormalerKeil = \revert Hairpin #'extra-offset
EtwasTieferKeil = \once\override Hairpin #'extra-offset = #'(0 . -.5)
TieferKeil = \once\override Hairpin #'extra-offset = #'(0 . -1)
TiefererKeil = \once\override Hairpin #'extra-offset = #'(0 . -2)
ZiemlichTieferKeil = \once\override Hairpin #'extra-offset = #'(0 . -3)
SehrTieferKeil = \once\override Hairpin #'extra-offset = #'(0 . -5)
% -- %
SehrBreitKeil = \override Hairpin #'height = #'.95
BreitKeil = \override Hairpin #'height = #'.8
SchmalKeil = \override Hairpin #'height = #'.5
NormalKeil = \revert Hairpin #'height
onceSehrBreitKeil = \once\override Hairpin #'height = #'.95
onceBreitKeil = \once\override Hairpin #'height = #'.8
onceSchmalKeil = \once\override Hairpin #'height = #'.5
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Text verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Akzent verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Akzent dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Script 'extra-offset (cons dx dy) once)))
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Artikel verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Keil verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%  KeilWinkel  %%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (KeilWinkel dy #:optional once)
  (ly:export (mus:override 'Bottom 'Hairpin 'height dy once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Bogen verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  BogenKurve  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Ratio  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Ratio dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'ratio dy once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Dynamik verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Pause verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Pause dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Rest 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  GanztaktPause verschieben  %%%%%%%%%%%%%%%%%%%%%%
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
#(define* (GanztaktPause dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'MultiMeasureRest 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Triole verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Triole dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'TupletNumber 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -- %
%                                                                       %
%%%%%%%%%%%   Ende des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rechts = \context Staff \relative c'{
\set Staff.midiMinimumVolume = #-.5
\set Staff.midiMaximumVolume = #1
  \context Voice = "rechts"
  \context Voice = "rechts"
  \override GrandStaff.InstrumentName #'extra-offset = #'(-1.7 . -.6)
  \override GrandStaff.InstrumentName #'font-size = #'3
  \set GrandStaff.instrument = \markup { \number { 12 \hspace #-1 . } }
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 3)
  \override Score.RehearsalMark #'self-alignment-X = #'-1
  \mark \markup { Allegro con fuoco { ( \fontsize #'-3 {
    \general-align #Y #DOWN \note #"4" #.8 } \fontsize #'-2 { = 160 } ) } }
  \override Score.TextScript #'font-size = #0
  \override Score.DynamicTextSpanner #'font-size = #0
  \override Score.TextScript #'font-shape = #'italic
  \override Accidental #'avoid-slur = #'around
  \override Script #'avoid-slur = #'inside
  #(Text -4 0 #t) #(Artikel .5 0 #t)
    <h' d f g h>2^> r                                           % Takt  1
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  r r4 <as es' f as>8.( <g g'>16)                               % Takt  2
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Artikel .5 0 #t) <d' f g d'>2^> r                           % Takt  3
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  r r4 <as es' f as>8.( <g g'>16)                               % Takt  4
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(BogenKurve 9 #f)
  <f' g d' f>8-.
  \once\override Script #'avoid-slur = #'around
  as'16^>( [ g] f^> d es d h^> g as g f^> d es d                % Takt  5
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h-> g as g f-> d es d \unten \stemUp h!^> g as g f^> d es d   % Takt  6
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(BogenKurve 2 #f)
  c h) \slurUp g'( f es d es d
    c^\markup { \italic cresc. } h) b'!( as g f g f             % Takt  7
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(BogenKurve 4 #f) \VollRatio
    es d) #(Bogen -.4 0 #t) es'( d c h c h as g as g f es f es  % Takt  8
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c8)\oben\stemNeutral r r4 r2                                  % Takt  9
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(BogenKurve 2 #f) \TiefeDynamik
  r2 r8 r16_\f <c'' c'>16( [ #(Keil -1.3 0 #t) <d d'>8. \<
    <es es'>16) \! ]                                            % Takt 10
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es es'>2^> r8 r16_\p <g, c es g>16[
    #(Keil -1.3 -.1 #t) <g c es g>8. \< <g  c es g>16 \! ]      % Takt 11
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
  #(Keil 0 -.5 #t) <as c es as>2( ~ \> <g c es g>8) \! r16_\f
    <c c'>16( [ #(Keil -1.3 0 #t) <d d'>8. \< <es es'>16) \! ]  % Takt 12
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es es'>2^> r8 #(Dynamik 0 -.7 #t) r16_\p <g, c es g>16[
    #(Keil -1.3 0 #t) <g c es g>8. \< <g  c es g>16 \! ]        % Takt 13
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Text -1 -.5 #t) \NormalerBogen #(Dynamik 0 -1.5 #t)
    <a' es c a>1\fz^\markup { \italic ten. } (                  % Takt 14
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <d, a' d>8^.) r <g, d' g >4^> r8 r16 #(BogenKurve 3 #t) #(Ratio .4 #t)
    <g des' g>16[( <as des as' >8.^> <g des' g>16 ])            % Takt 15
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <g c g'>8( <c c'>16) r <f, c' f >4^> r8 r16 #(BogenKurve 3 #t)
    #(Ratio .4 #t) <f c' f>16[( <g c g' >8.^> <f c' f>16 ])     % Takt 16
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Akzent .2 -.8 #t) <e c' e >2.-> ~ <e c' e>8. <es es' >16    % Takt 17
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  << { <es es' >4(^> <d d'>) } \\ h'2 >> r                      % Takt 18
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  R1                                                            % Takt 19
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \SchmalKeil r2 r8 r16_\p <c c'>16( [ #(Keil -1.3 0 #t)
    <d d'>8. \< <es es'>16) \! ]                                % Takt 20
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es es'>2^> r8 #(Dynamik 0 -.7 #t) r16_\p <g, c es g>16[
    #(Keil -1.3 0 #t) <g c es g>8. \< <g  c es g>16 \! ]        % Takt 21
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
  #(Akzent 0 .8 #t) <as c es as>2^>( ~ <g  c es g>8) r16
  #(Text 0 -.8 #t) <c c'>16-\markup { \italic cresc. } ( [
    <d d'>8. <es es'>16) ]                                      % Takt 22
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \MittlereDynamik <es es'>2\fz r8 r16_\p <g, c es g>16[
    #(Keil -1.3 0 #t) <g c es g>8. \< <g  c es g>16 \! ]        % Takt 23
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Text -1 1 #t)
  <a es' f a>1\fz^\markup { \italic ten. }                      % Takt 24
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <b f' b>4.\p <b f' b>4 <b g' b>4 <h g' h>8 ~                  % Takt 25
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <h g' h>8 <c g' b c>4 < cis b' cis> #(Text 0 -2 #t)
    <d b' d>8-\markup { \italic stretto }
    [ <es b' es> <e b' e> ]                                     % Takt 26
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Dynamik 0 -2 #t) <f b d f>2^> \fz
    <<
      { \stemDown <d f b d>4
        \stemUp d'8.( c16 \stemDown <d, f b>8-.) }
        \\
      { \stemUp s4 \stemDown <es f a> \stemUp s8 }
    >>                                                          % Takt 27
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral r r4 r2 \NormaleDynamik                          % Takt 28
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <h dis gis h>2.^> \f <dis,  gis h dis>8.( <eis  eis'>16)      % Takt 29
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <fis ais dis fis>2.^> <fis fis'>8.( <gis gis'>16)             % Takt 30
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <a cis fis a>2.^> <cis,  fis a cis>8.( <dis  dis'>16)         % Takt 31
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <e gis cis e>2.^> <e e'>8.( <fis fis'>16)                     % Takt 32
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  << { \stemDown \slurUp #(Artikel .5 0 #t)
    <gis dis' fis gis>2.^> <gis  dis' fis gis>8.( <ais  ais'>16 % Takt 33
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Dynamik -1 -1 #t) <ces f as ces>4^.) \fz
    #(Artikel .5 0 #t) <b f' as b>2^> <b f' as b>8.( <c c'>16   % Takt 34
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Dynamik -.4 -1.6 #t) <des g b des>4^.) \fz
    #(Artikel .5 0 #t) <c g' b c>^> #(Pause 0 -2 #t) r2         % Takt 35
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(GanztaktPause 0 -1 #t) R1 } \\
  { \setTextCresc s1 s4 #(Keil 0 -3 #t)
    \once\set crescendoText = \markup {
      \raise #-.6 { \italic cresc. } \hspace #1 }
    \once\override DynamicTextSpanner #'extra-offset = #'(0 . -1)
    \once\override DynamicTextSpanner #'dash-period = #9.7
    \once\override DynamicTextSpanner #'dash-fraction = #'0.1
    s16_\< s4 s1 s4.. s2.. s16 s \! } >>                        % Takt 36
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <as' c f as>2\ff( <f c' f>4 <c f c'>)                         % Takt 37
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
  #(Akzent 0 .8 #t)
    <b f' b>2^>( ~ <as f' as>4) r                               % Takt 38
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\override Script #'avoid-slur = #'around
  <as' c f as>2( <f c' f>4 <c f c'>)                            % Takt 39
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <c f c'>2.^> <h f' h>8.( <c c'>16)                            % Takt 40
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Dynamik 0 -1 #t) <d f h d>2^> \ff  r                        % Takt 41
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  r r4 <as es' f as>8.( <g g'>16)                               % Takt 42
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Artikel .5 0 #t) <f' g d' f>2^> r                           % Takt 43
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  r r4 <as, es' f as>8.( <g g'>16)                              % Takt 44
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(BogenKurve 9 #f)
  <f' g d' g>8-.
  \once\override Script #'avoid-slur = #'around
  as'16^>[( g] f^> d es d h^> g as g f^> d es d                 % Takt 45
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h-> g as g f-> d es d \unten \stemUp h!^> g as g f^> d es d   % Takt 46
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(BogenKurve 2 #f)
  c h) \slurUp g'( f es d es d
    c^\markup { \italic cresc. } h) b'!( as g f g f             % Takt 47
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(BogenKurve 4 #f) \VollRatio
    es d) #(Bogen -.4 0 #t) es'( d c h c h as g as g f es f es  % Takt 48
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c8)\oben\stemNeutral r r4 r2                                  % Takt 49
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(BogenKurve 2 #f) #(Dynamik 0 -2 #f)
    r2 r8 r16_\f <c'' c'>16( \times 2/3 { #(Keil -1 -1.5 #t)
    <cis  cis'>8 \< <d d'>8. <es es'>16) \! }                   % Takt 50
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \Axdefault
  <es es'>2 r8 #(Dynamik 0 -1 #f) r16_\p
    <g, c es g>16[\< <g c es g>8. <g c es g>16 \! ]             % Takt 51
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \ViertelSpanner \TriolenZahlOben
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
  \KlammerAn #(Akzent 0 .8 #t)
  \override TupletBracket #'bracket-flare = #'(.6 . .6)
  <as c es as>2^>( ~ \times 2/3 { <g c es g>8-.)
    #(Dynamik -1 0 #t) <h h'>_( \f [ <c c'> ] #(Keil 0 -1 #t)
    <cis cis'> [ \< <d d'>) r16 <es es'> \! ] }                 % Takt 52
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es es'>2 r8 r16\p
    <g, c es g>16[\< <g c es g>8. <g c es g>16 \! ]             % Takt 53
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Akzent .1 .2 #t)
  \once\override Script #'avoid-slur = #'around
    \MittlereDynamik <a c es a>1^>(\fz                          % Takt 54
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Akzent .1 .3 #t)
  \once\override Script #'avoid-slur = #'around
  <a d a' d>8)\arpeggio-. r <g d' g >4^>
    \times 2/3 { r8 <g des' g>[ <g des' g> ]
    <g des' g>[ <as des as'>8 r16 <g des' g> ] }                % Takt 55
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <g c g'>16( <c c'>) r8 <f, c' f >4^>
    \times 2/3 { r8 <f c' f> [ <f c' f> ] }
  \ViertelBalken #(Keil 0 .4 #t)
    <e c' e>16( [ \< <f c' f> <g c g'>) \! r32 <f c' f> ]       % Takt 56
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <e c' e>4-. << { \tieNeutral <es es'>2^> ~ <es es'>8. <es es' >16 }
    \\ { \override NoteColumn #'force-hshift = #1.5 c'2.  } >>  % Takt 57
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  << { \override NoteColumn #'force-hshift = #2 h2 } \\ {
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'inside
    <es, es' >4(^> <d d'>) } >> r2                              % Takt 58
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    R1                                                          % Takt 59
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \KlammerUnten\KlammerAn
  r2 \times 2/3 { #(Dynamik 1 -2.5 #t) r8 \f #(Keil 0 -1.5 #t) <h' h'>(
    \< [ <c c'> ] <cis cis'> [ <d d'>) r16 <es  es'> \! ] }     % Takt 60
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    <es es'>2^> r8 r16_\p
      <g,  c es g>16[\< <g c es g>8. <g  c es g>16 \! ]         % Takt 61
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
  #(Akzent 0 .8 #t)
    <as c es as>2^>( ~ \times 2/3 { <g c es g>8)-.
    #(Dynamik -2 -2 #t) <h h'> \f [ #(Keil -1 -.8 #t) <c c'> \<
    ] } <cis cis'>16[( <d d'> <f f'>) \! r32 <es es'> ]         % Takt 62
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es es'>2^> r8 r16\p
      <g, c es g>16[\< <g c es g>8. <g c es g>16 \! ]           % Takt 63
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  << { #(Dynamik 0 -1.7 #t) <a es' a>1^> \fz }
    \\ { s16 s #(Keil -.3 -1 #t) #(KeilWinkel 1.7 #t)
    s \< s s4 s16 #(Text 0 -2.3 #t)
    s-\markup { \italic cresc.  } s8. s16 s \! s } >>           % Takt 64
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \NormalKeil
  \once\override Script #'avoid-slur = #'around
  <b des b'>2^>( \ff <as b des as'>4
    <ges b des ges>8. <f b des f>16)                            % Takt 65
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
  #(Akzent 0 .8 #t)
    <f \> b des f>2^>( ~ <e b' e>4) r                           % Takt 66
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Dynamik 0 -1 #t) <as ces fes as>2( \f <ges as ces ges'>4
    <fes as ces fes>8. <es as ces es>16)                        % Takt 67
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
    <es as ces es>2^>( ~ <d as' d>4) r                          % Takt 68
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  << { <g! es' g!>1^> } \\ { #(Dynamik 0 -1 #t) s16 \fz
    #(Dynamik .3 -1.8 #t) s \p s4. s2 } >>                      % Takt 69
% alternativ %    <g  e' g>1^>-\markup { \italic \dynamic fzp }               % Takt 69
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    <<
      { \stemUp \tieUp g'2^>( ~ g4. f8) }
        \\
      { \once\override NoteColumn #'force-hshift = #.3 d1 }
        \\ \once\override NoteColumn #'force-hshift = #0
      { \stemDown g,2 g_> }
    >>                                                          % Takt 70
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    << { f'2(  es) } \\ { \MittlereDynamik <g, c>1\p } >>       % Takt 71
% alternativ %  %%%%%%%%%%%%% ----------------------------------------------- ---------
% alternativ %    <<
% alternativ %      { es'8( f16 \< es des8.  es16\! f4  as,) }
% alternativ %        \\
% alternativ %      { <f as>1 }
% alternativ %        \\
% alternativ %      \override Staff.Arpeggio #'extra-offset = #'(-2 . -.5)
% alternativ %      { \NoteUnsichtbar <f as es'>1\arpeggio }
% alternativ %    >>                                                          % Takt 72
% alternativ %  %%%%%%%%%%%%% ----------------------------------------------- ---------
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  << { #(BogenKurve 4 #t) es'8( f16 es
    des8. es16 f4 as,) } \\ { <f as>1*3/4 } >>                  % Takt 72
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \override Tie #'height-limit = #'6
  #(Akzent 0 .5 #t) <es c'>1^> ~                                % Takt 73
  %%%%%%%%%%%%% ----------------------------------------------- --------------
  <es c'>                                                       % Takt 74
  %%%%%%%%%%%%% ----------------------------------------------- --------------
  << { c'4.( h8  d4) } \\ { #(Text 1 .7 #t)
    <d, f>2.-\markup { \italic smorz. } } >> r4                 % Takt 75
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    R1                                                          % Takt 76
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    <<
  \override Accidental #'avoid-slur = #'inside
  #(BogenKurve 4 #f)
      { c'^\markup { \italic sotto voce } ~
        #(Bogen 0 -1 #t) c2( d!  e1) }
        \\
      { c,8 r r4 r2 <f as>1 <e g> }
    >>                                                          % Takt 77 - 79
% alternativ %  %%%%%%%%%%%%% ----------------------------------------------- --------------
% alternativ %    <<
% alternativ %      { \shiftOn as1 } \\
% alternativ %      { \stemUp \slurUp
% alternativ %        c2.^\markup { \italic { poco rallentando } }( <h d>4
% alternativ %      #(Text -3 -.5 #t)
% alternativ %      \MittlereDynamik
% alternativ %        <e, g c e>8\p^\markup { \italic (a tempo) } ) } \\
% alternativ %      { \tieDown \stemDown <c g'>2 ~ <c ~ f> }
% alternativ %    >>
% alternativ %  \AchtelBalken \MittlereDynamik
% alternativ %    as'''16\ff-\markup { \italic ed appassionato } g
% alternativ %  \ViertelBalken
% alternativ %    e c des c b g as g e c des c                                % Takt 80 - 81
% alternativ %  %%%%%%%%%%%%% ----------------------------------------------- --------------
  %%%%%%%%%%%%% ----------------------------------------------- --------------
  << {
  #(Dynamik -2 -.5 #t) \stemUp \ExtraSPAce #(Text -.4 -1 #t)
    c'2.^\markup { \italic { poco rallent. } }^( \p <h d>4
    #(Dynamik .5 -.5 #t) <e, g c e>8\ff ) } \\
    { \stemDown g2 f } \\ { <c as'>1 } >>
    #(BogenKurve 9 #f) #(Text -2 -1 #t)
    as'''16^\markup { \italic { a tempo } }(
    [ g ] e c des c b! g as g e! c des c                        % Takt 80 - 81
  %%%%%%%%%%%%% ----------------------------------------------- --------------
  b g as g e c des c \unten \stemUp b g as g e! c des c)        % Takt 82
  %%%%%%%%%%%%% ----------------------------------------------- ---------
% alternativ %  #(Bogen -.5 .5 #t) <c f a c>2^.( <c f as c>)^\fff^.           % Takt 83
% alternativ %  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <c f a c>2^.^> <c f as c>^.^>                                 % Takt 83
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <c f g c>4^.^> <c e g c>^.^> << #(Pause 0 -1 #t)
  f2\rest \\ s >>                                               % Takt 84
  %%%%%%%%%%%%% ----------------------------------------------- ---------
}

links =  \context Staff \relative c{
  \context Voice = "links"
  \override Script #'avoid-slur = #'inside
  \override TextScript #'avoid-slur = #'inside
  #(Dynamik 0 2 #t) #(BogenKurve 4 #f) \slurDown
    r8^\f as''16^>^\markup { \italic legatissimo }(
    g f^> d es d h^> g as g f^> d es d                          % Takt  1
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h-> g as g f-> d es d c-> g c g
    \SchmalKeil #(Keil 0 4 #t) c->^\> g c \! g                  % Takt  2
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h8-.^\f) as'''16^>[( g] f^> d es d h^> g as g f^> d es d      % Takt  3
  %%%%%%%%%%%%% ----------------------------------------------- ---------
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -5) (Y-offset . 53.5)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -5))                 % ohne Zeilen-Korrektur
  h-> g as g f-> d es d c-> g c g
    \SchmalKeil #(Keil 0 1 #t) c->^\> g c \! g                  % Takt  4
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h8-.) \HoherText\clef violin as''''16->^\markup { \italic
    { con fuoco } }[( g] f-> d es d h_> g as g f_> d es d       % Takt  5
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \clef bass h_> g as g f_> d es d
    \stemDown h_> g as g f_> d es d                             % Takt  6
  %%%%%%%%%%%%% ----------------------------------------------- ---------
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 1.5) (Y-offset . 85.5)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 1.5))                 % ohne Zeilen-Korrektur
  #(BogenKurve 2 #f)
  c h) g'( f es d es d c h) b'!( as g f g f                     % Takt  7
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    \SchmalKeil #(Keil 0 6.5 #t) es^\< d) es'( d c \!
    #(Keil 0 6.5 #t) h^\> c h as g as g f es \! f es)           % Takt  8
  %%%%%%%%%%%%% ----------------------------------------------- ---------
\once\override DynamicText #'transparent = ##t
  \NormalKeil
  \VollRatio #(BogenKurve 10.4 #t) #(Bogen 0 .2 #t)
    \slurUp c( \pp #(Keil 0 1 #t) g' \< c d es g c d\!
    #(Keil .2 -.8 #t) es \> d c g es d c\! g)                   % Takt  9
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral \slurDown \SchmalKeil
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
                                                                % Takt 10
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \NormalKeil \slurNeutral #(BogenKurve 4 #t) c,( g' \< c d
    es g c d\! #(Keil .4 -.5 #t) es \> d c g es d c\! g)        % Takt 11
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral \slurDown \SchmalKeil
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
                                                                % Takt 12
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \NormalKeil \slurNeutral #(BogenKurve 4 #t)
    c,( g' \< c d es g c d\! #(Keil .4 -.5 #t)
    es \> d c g es d c\! g)                                     % Takt 13
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c,( fis c' d es d c fis,) c( fis c' d es d c fis,)            % Takt 14
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral \slurDown h,16( #(Keil -.4 3.6 #t) \onceSchmalKeil
    h' \< d g \! d' g, d  h) b,( b' des g des' g, des  b)       % Takt 15
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -3))
    a,16( a' c f c' f, c  a) as,( as' c f c' f, c  as)          % Takt 16
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  g,( g' #(Keil 0 4.3 #t) c \< h des c d cis
    es d e dis f e ges f\!                                      % Takt 17
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Keil 0 3.9 #t)
    g! \> fis as g b! as g f es d c h as g \! f d )             % Takt 18
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -1))
  \slurNeutral #(BogenKurve 4 #t) c( g' \< c d
    es g c d\! #(Keil .4 -.5 #t) es \> d c g es d c\! g)        % Takt 19
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral \slurDown \SchmalKeil
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
                                                                % Takt 20
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \NormalKeil \slurNeutral #(BogenKurve 4 #t) c,( g' \< c d
    es g c d\! #(Keil .4 -.5 #t) es \> d c g es d c\! g)        % Takt 21
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -.5))
  \stemNeutral \slurDown \SchmalKeil
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
                                                                % Takt 22
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \slurNeutral #(BogenKurve 4 #t) c,( g' \< c d
    es g c d\! #(Keil .4 -.5 #t) es \> d c g es d c\! g)        % Takt 23
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral \slurDown \SchmalKeil
  \repeat unfold 2 {
    c,( #(Keil .4 3.2 #t) f \< c' #(Keil 1 3.2 #t) d\! \> es d \! c f, )
  }                                                             % Takt 24
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -3))
  d( b' ces b b' b, ces b) #(Text 0 2.5 #t)
    es,^\markup { \italic cresc. }( b' ces b b' b, ces  b)      % Takt 25
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  e,( b' c! b b' b, c b) \stemDown f( b b' b,) ges( b b' b,)    % Takt 26
  %%%%%%%%%%%%% ----------------------------------------------- ---------
%% alternativ:
%%  f \< b d f b d \oben g16. f32\!
%%    f16_> \> d \unten b g f^>  es\! c f,                        % Takt 27
  \stemNeutral f( b^\< d f b d g16. f32) \! #(Keil .3 .5 #t)
    f16^\>( d b g \! f #(Keil -1 2.5 #t) es^\> c f, \!          % Takt 27
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -6))
  b,-.) des'[( c ces ] b c ces b a ces b a gis b a gis          % Takt 28
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \Axpiano
  gis,8-.) fisis'16( [ gis ] h dis ais h dis gis cisis,
    dis gis #(Keil -1 .5 #t) h^\< fisis  gis \!                 % Takt 29
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -5))
  dis,-.) \stemDown dis''[( eis, fis ] ais dis cisis, dis
    fis ais gisis, ais dis #(Keil -1 .5 #t) fis^\< eis, fis \!  % Takt 30
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral fis,8-.) eis'16([ fis] a cis gis a
      cis fis his, cis #(Keil 1 1 #t) fis^\< a eis \! fis       % Takt 31
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -5))
  cis,-.) \stemDown cis''[( dis, e] gis cis his, cis e gis fisis, gis
    cis #(Keil -1 .5 #t) e^\< dis, e \! \stemNeutral            % Takt 32
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  his-.) #(Keil 2 -1 #t) dis''[(^\> fisis, \! gis] a^\> gis fis
    e dis cis his \! a #(Keil 1 1 #t) fisis^\< gis dis \! gis   % Takt 33
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -1))
  \Axdefault
  d!-.) #(Keil 2.1 -1.2 #t) f''![(^\> a, \! b! ] ces^\> b as ges
    f es d! ces \! a #(Keil -1 1.3 #t) b^\< f  b \!             % Takt 34
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \slurNeutral \NormalerBogen e,-.)  g''[( h, c ]
  des c b as g f e g f e des c                                  % Takt 35
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h c des c b as g f
  \break\bar ""
  \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -5))
    e des c h c b as  g)                                        % Takt 36
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \slurDown f( c' f g as c f g #(Keil 2 5 #t)
    as \< c f \! #(Keil 2.5 5 #t) g \> as g \! f c              % Takt 37
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  des f des as f des as f des as des f des as des f)            % Takt 38
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -5))
  f,( c' f g as c f g as c f g as g f c                         % Takt 39
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  d! f d c as f d! c as f d! c as #(Keil -1 2 #t)c^\< d as') \! % Takt 40
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Dynamik 0 2 #t) #(BogenKurve 4 #f)
  <g, g'>8-. as'''16^>([ g] f^> d es d h^> g as g f^> d es d    % Takt 41
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -5))
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h-> g as g f-> d es d c-> g c g
    \SchmalKeil #(Keil 0 1 #t) c->^\> g c \! g                  % Takt 42
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Dynamik 0 1 #t)
    h8-.^\f) as'''16^>[( g] f^> d es d h^> g as g f^> d es d    % Takt 43
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h-> g as g f-> d es d c-> g c g
    \SchmalKeil #(Keil 0 1 #t) c->^\> g c \! g                  % Takt 44
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -2))
  h'8-.) \HoherText\clef violin as'''16-> [( g]
    f-> d es d h_> g as g f_> d es d                            % Takt 45
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \clef bass h_> g as g f_> d es d
    \stemDown h_> g as g f_> d es d                             % Takt 46
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(BogenKurve 2 #f)
  c h) g'( f es d es d c h) b'!( as g f g f                     % Takt 47
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . 1.5))
  #(Keil 0 6.5 #t) es^\< d) es'( d c \!
    #(Keil 0 6.5 #t) h^\> c h as g as g f es \! f  es)          % Takt 48
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \NormalKeil
  \VollRatio #(BogenKurve 10.4 #t) #(Bogen 0 .2 #t)
    \slurUp c( #(Keil 0 1 #t) g' \< c d es g c d\!
    #(Keil .2 -.8 #t) es \> d c g es d c\! g)                   % Takt 49
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral \slurDown \SchmalKeil
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
                                                                % Takt 50
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \NormalKeil \slurNeutral #(BogenKurve 5 #t) c,( g' \< c d
    es g c d\! #(Keil .4 -.5 #t) es \> d c g es d c\! g)        % Takt 51
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral \slurDown \SchmalKeil
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
                                                                % Takt 52
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \NormalKeil \slurNeutral #(BogenKurve 5 #t)
    c,( g' \< c d es g c d\! #(Keil .4 -.5 #t)
    es \> d c g es d c\! g)                                     % Takt 53
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -3))
  c,( fis c' d es d c fis,) c( fis c' d es d c fis,)            % Takt 54
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \slurDown
  h,16( h' d g d' g, d  h) b,( b' des g des' g, des  b)         % Takt 55
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    a,16( a' c f c' f, c  a) as,( as' c f c' f, c  as)          % Takt 56
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -5))
  \slurDown g,( g' #(Keil 0 4.3 #t) c \< h des c d cis
    es d e dis f e ges  f\!                                     % Takt 57
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Keil 0 3.9 #t)
    g! \> fis as g b! as g f es d c h as g \! f d )             % Takt 58
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \slurNeutral #(BogenKurve 5 #t) c( #(Keil .2 0 #t) g' \< c d
    es g c d\! #(Keil .6 -.5 #t) es \> d c g es d c\! g)        % Takt 59
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral \slurDown \SchmalKeil
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
                                                                % Takt 60
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \NormalKeil \slurNeutral #(BogenKurve 4 #t) c,( g' \< c d
    es g c d\! #(Keil .4 -.5 #t) es \> d c g es d c\! g)        % Takt 61
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral \slurDown \SchmalKeil
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
    c,( #(Keil .4 3.2 #t) g' \< c #(Keil 1 3.2 #t) d\! \> es d \! c g )
                                                                % Takt 62
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \slurNeutral #(BogenKurve 4 #t) c,( g' \< c d
    es g c d\! #(Keil .4 -.5 #t) es \> d c g es d c\! g)        % Takt 63
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \stemNeutral \slurDown \SchmalKeil
  c,( #(Keil .4 3.2 #t) fis \< c'
    #(Keil 1 3.2 #t) d \! \> es d \! c fis, )
  c( #(Keil .4 3.2 #t) fis \< c'
    #(Keil 1 3.2 #t) d \! \> es d \! c fis, )                   % Takt 64
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Keil .3 2.9 #f)
  \repeat unfold 2 {
    des( #(Keil .3 2.8 #t) des' \< ges
    #(Keil 1 2.8 #t) as \! \> b as \! ges des)
  }                                                             % Takt 65
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -2))
  #(Bogen 0 -.6 #t) des,( #(Keil 0 2.6 #t) des' \< g! b \!
    #(Keil 0 2.6 #t) des \> c b as g f e des! c b \! as g)      % Takt 66
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \repeat unfold 2 {
    ces,( #(Keil .1 3 #t) ces' \< fes
    #(Keil .8 3 #t) ges \! \> as ges \! fes ces)
  }                                                             % Takt 67
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  #(Bogen 0 -.6 #t) ces,( #(Keil 0 2.4 #t) ces' \< f! as \!
   #(Keil 0 2.4 #t) ces \> b as ges f es d! ces! b as \! ges f) % Takt 68
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -5))
  \repeat unfold 2 {
    b,( #(Keil .3 2.8 #t) b' \< es
    #(Keil 1 2.8 #t) f \! \> g! f \! es b)
  }                                                             % Takt 69
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \repeat unfold 2 {
    h,16( #(Keil .3 2.8 #t) h' \< d
    #(Keil 1 2.8 #t) g \! \> d' g, \! d h)
  }                                                             % Takt 70
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \NormalerKeil \slurNeutral #(BogenKurve 5 #t)
    c,( g' \< c d es g c d \!
    #(Keil .4 -.5 #t) es \> d c g es d c\! g)                   % Takt 71
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -8))
  #(BogenKurve 5 #t) \VollRatio #(Bogen 0 -.2 #t) f,(
    #(Keil 0 0 #t) des' \< f g as des f g \!
    #(Keil .7 -1.7 #t) as \> g f des as f \! des as             % Takt 72
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  g8-.) e'16_( [ dis ] f e ges f g fis as g a gis b a           % Takt 73
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \WinzigHoherBogen \slurUp
    ces b c h des c d cis es d e dis f e ges f                  % Takt 74
  %%%%%%%%%%%%% ----------------------------------------------- ---------
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -5) (Y-offset . 54)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -5))                 % ohne Zeilen-Korrektur
  \NormalerBogen
    g! fis as g b! as g f es d f es g f es d                    % Takt 75
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c h d c h as! g fis g as f g es f d es                        % Takt 76
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c8-.) des''16( [ c ] b! g as g e c des c b! g as g            % Takt 77
  %%%%%%%%%%%%% ----------------------------------------------- ---------
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -5) (Y-offset . 78)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -5))                 % ohne Zeilen-Korrektur
  \SehrBreitKeil #(Dynamik -1 -1 #t)
    f_\pp #(Keil -1 1.5 #t) c^\< f c f c f c f c f c f c f c \! % Takt 78
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \NormalKeil #(Keil -2 -.3 #t)
  c'8-.) des'16^\>( [ c ] b g as g e c des c b g as g \!        % Takt 79
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \SehrBreitKeil #(Dynamik -1 -1 #t) f_\pp c f
    #(Keil -1 -.9 #t) c^\< \repeat unfold 5 { f c } f c \!      % Takt 80
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \break\overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((fixed-alignment-extra-space . -5))
  #(BogenKurve 5 #f) c'8-.) \clef violin #(Text 0 .5 #t)
    as'''16_(^\markup { \italic { ed appassionato } } [ g ]
    e c des c b! g as g e c des c                               % Takt 81
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \clef bass b g as g \stemDown e c des c b g as g e c des c)   % Takt 82
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <f, f'>2_._> <f f'>_._>                                       % Takt 83
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <c c'>4_._> <c c'>_._> << s2 \\ \stemDown a'\rest >>          % Takt 84
  %%%%%%%%%%%%% ----------------------------------------------- ---------
}

\score {
    \context PianoStaff
    <<
      \context Staff = "up" << 
        \global 
        \clef violin
        \rechts
      >>
      \context Staff = "down" <<
        \global
        \clef bass
        \links
      >>
    >>
  \layout {
    \context{ \Voice }
    \context { \PianoStaff \override VerticalAlignment #'forced-distance = #12.5 }
  }
  \midi {
    \tempo 2=80
    \context { \Voice
      \remove "Span_dynamic_performer"
    }
  }
}
