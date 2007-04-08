%%%   WICHTIGER Hinweis zum Editieren auf Deutsch:   %%%
%%%
% Wer dem Notentext ein anderes layout, z.B. eine andere Zeilen- und/oder
% Seitenaufteilung oder eine andere "global-staff-size" geben und dabei nicht in
% ein un�bersehbares Chaos st�rzen m�chte, sollte vorher unbedingt folgende zwei
% Dinge tun:
%   1. alle Zeilen, die mit "% mit Zeilen-Korrektur" enden, auskommentieren,
%   2. alle Zeilen, die mit "% ohne Zeilen-Korrektur" enden, einkommentieren,
% da in der vorliegenden Form einige Zeilen f�r ein besseres Design vertikal
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
%lastupdated = #(strftime "Fassung vom %d. %B %Y, %H:%M Uhr" (localtime (current-time)))
footer = #(strftime "Mutopia-%Y/%B/%d-xxx" (localtime (current-time)))

\header {
  filename      =       "chopin-10-09-wfi-a4.ly"
  title         =       \markup \fontsize #1 { "Etüde f-moll" }
  %subsubtitle   =       \lastupdated
  composer      =       \markup \large\caps { "Frédéric Chopin (1810 - 1849)" }
  opus          =       \markup \center-align { \fontsize #-11 " " \normalsize "Opus 10 Nr. 9" }
  enteredby     =       "Roland Goretzki"

 mutopiatitle           =       "Etüde f-moll"
 mutopiacomposer        =       "ChopinFF"
 mutopiaopus            =       "Op. 10, No. 9"
 mutopiainstrument      =       "Piano"
 date                   =       "1829-1832"
 source                 =       "Peters, Herrmann Scholtz, 1900b"
 style                  =       "Romantic"
 copyright              =       "Public Domain"
 maintainer             =       "Roland Goretzki"
 maintainerEmail        =       "roland@roland-goretzki.de"
 maintainerWeb          =       "http://www.roland-goretzki.de/"
 lastupdated            =       "2006/05/25"

 footer = "Mutopia-2006/05/25-484"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer\hspace #-1.1 . Proofread by Hildegard Böhme \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

#(set-global-staff-size 19)

global =   {
  \key f \minor
  \time 6/8
  s2.*67
  \bar "|."
}

#(set-default-paper-size "a4")          % A4
\paper{                                 % A4
    %annotate-spacing = ##t
    top-margin = .6\cm                  % A4
    %head-separation = .1\cm             % A4
    page-top-space = .8\cm              % A4
    left-margin = 1\cm                  % A4
    line-width = 19.3\cm                % A4
    paper-width = 21\cm                 % A4
    paper-height = 29.7\cm              % A4
    before-title-space = 0\cm           % A4
    printfirst-page-number = ##f        % A4
    print-page-number = ##t             % A4
    between-system-padding = #.8        % A4
    ragged-bottom=##f                   % A4
    ragged-last-bottom=##f              % A4
    bottom-margin = .6\cm               % A4
}                                       % A4

%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
Axdefault = #(set-accidental-style 'default)
Axforget = #(set-accidental-style 'forget)
Axpiano = #(set-accidental-style 'piano)
Axmodern = #(set-accidental-style 'modern)
AxpianoVorsicht = #(set-accidental-style 'piano-cautionary)
%
oben = \change Staff = up
unten = \change Staff = down
%
PH = \sustainUp
PR = \sustainDown
%%%   Für die häufige Benutzung in Takt 50 der linken Hand:
EINSnull = \once\override Staff.PianoPedalBracket #'edge-height = #'(1 . 0)
NULLeins = \once\override Staff.PianoPedalBracket #'edge-height = #'(0 . 1)
%
cresc = \markup { cresc. }
ritard = \markup { ritard. }
rit = \markup { rit. }
%
MittlereDynamik = \override DynamicText #'extra-offset = #'(0 . -1)
NormaleDynamik = \revert DynamicText #'extra-offset
TiefeDynamik = \override DynamicText #'extra-offset = #'(0 . -2)
%
VollRatio = \once\override Slur #'ratio = #'1
PhrasierungsVollRatio = \once\override PhrasingSlur #'ratio = #'1
%
ACHTan = #(set-octavation 1)
ACHTaus = #(set-octavation 0)
OKTAVA = \markup { \finger\bold\fontsize #2.8 \italic "8" }
%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Akzent verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Akzent dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'Script 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Artikel verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%
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
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Dynamik verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Bogen verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  PhrasierungsBogen verschieben  %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (PhBogen dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'PhrasingSlur 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  BogenKurve  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(use-modules (ice-9 optargs))
#(define*-public (mus:make-context context element #:key id (operations
'()))
  "Base function for building ContextSpeccedMusic objects."
  (apply make-music (append (list 'ContextSpeccedMusic
                                  'property-operations operations
                                  'context-type context
                                  'element element)
                            (if id (list 'context-id id) '()))))
#(define*-public (mus:override context layout property val #:optional
once)
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (BogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'height-limit dy once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  PhrasierungsBogenKurve  %%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (PhBogenKurve dy #:optional once)
  (ly:export (mus:override 'Bottom 'PhrasingSlur 'height-limit dy once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Oktave verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
#(define* (Oktave dx dy #:optional once)
  (ly:export (mus:override 'Bottom 'OttavaBracket 'extra-offset (cons dx dy) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Triole verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%
%                                                                       %
%%%%%%%%%   Ende des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rechts =  \context Staff \relative c'{
\set Staff.midiMinimumVolume = #-.5
\set Staff.midiMaximumVolume = #1
  \context Voice = "rechts"
  \override GrandStaff.InstrumentName #'extra-offset = #'(-1.7 . -.6)
  \override GrandStaff.InstrumentName #'font-size = #'3
  \set GrandStaff.instrument = \markup { \number { 9 \hspace #-1 . } }
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 2.5)
  \override Score.RehearsalMark #'self-alignment-X = #'-1
  \mark \markup { Allegro, molto agitato { ( \fontsize #'-3 {
    \general-align #Y #DOWN \note #"4." #.8 } \fontsize #'-2 { = 96 } ) } }
  \override Score.TextScript #'font-size = #0
  \override Score.DynamicTextSpanner #'font-size = #0
  \override Score.TextScript #'font-shape = #'italic
  #(Dynamik 0 -2 #t)
    r8 \p f-.( g-.) r as-.( b-.)                                % Takt  1
  %%%%======== ------------------------------------------------ ---------
    r
  #(Text 0 -1.7 #t)
  \override Script #'avoid-slur = #'inside
  #(BogenKurve 5 #t)
    c-.-\cresc( des-. c-. as'-. g-.                             % Takt  2
  %%%%======== ------------------------------------------------ ---------
  #(Text 0 -1.4 #t)
    f-.-\markup { con forza }
    c-. des-. c-. as-. f-.                                      % Takt  3
  %%%%======== ------------------------------------------------ ---------
  \once\override Script #'avoid-slur = #'outside
    c2.^^)                                                      % Takt  4
  %%%%======== ------------------------------------------------ ---------
    r8 f-.( g-.) r as-.( b-.)                                   % Takt  5
  %%%%======== ------------------------------------------------ ---------
    r
  #(BogenKurve 4.5 #t)
    c-.( des-. c-. c'-. as-.                                    % Takt  6
  %%%%======== ------------------------------------------------ ---------
  #(BogenKurve 4 #t) \VollRatio
    g-. c,-. des-. c-. g-. c,-.                                 % Takt  7
  %%%%======== ------------------------------------------------ ---------
  #(Text 1.7 -2.45 #t) f16-\cresc g as2_>^\ritard) r8           % Takt  8
  %%%%======== ------------------------------------------------ ---------
    r8^\markup { a tempo }
    f-.( g-.) r as-.( b-.)                                      % Takt  9
  %%%%======== ------------------------------------------------ ---------
    r
  #(BogenKurve 5 #t)
  #(Text 0 -1 #t) c-.( des-. c-. as'-. g-.                      % Takt 10
  %%%%======== ------------------------------------------------ ---------
    f-. c-. des-. c-. as-. f-.                                  % Takt 11
  %%%%======== ------------------------------------------------ ---------
  \once\override Script #'avoid-slur = #'outside
  #(Akzent 0 .3 #t)
    c2.^^)                                                      % Takt 12
  %%%%======== ------------------------------------------------ ---------
    r8 f-.( g-.) r as-.( b-.)                                   % Takt 13
  %%%%======== ------------------------------------------------ ---------
    r
  #(BogenKurve 8 #t)
    c-.( des-. c-. c'-. as-.                                    % Takt 14
  %%%%======== ------------------------------------------------ ---------
    g-. c,-. des-. c-. g-. c,-.                                 % Takt 15
  %%%%======== ------------------------------------------------ ---------
    f2.->)                                                      % Takt 16
  %%%%======== ------------------------------------------------ ---------
  #(PhBogenKurve 4 #t)
    #(Dynamik 0 -1 #t) as4.\( \p \acciaccatura b8 as g8. as16   % Takt 17
  %%%%======== ------------------------------------------------ ---------
    b4. c                                                       % Takt 18
  %%%%======== ------------------------------------------------ ---------
  #(Dynamik 0 -1.5 #t)
    des8-. \f as-. b-. as-.  f-. des-.                          % Takt 19
  %%%%======== ------------------------------------------------ ---------
  #(Dynamik .5 .6 #t) as4_>\) \fz r8 r4
    #(PhBogenKurve 4 #t)
    #(Dynamik 0 -.8 #t) es'8\( \p                               % Takt 20
  %%%%======== ------------------------------------------------ ---------
  #(BogenKurve .5 #t)
    es'4. \appoggiatura { es16[ f] } es8 d es                   % Takt 21
  %%%%======== ------------------------------------------------ ---------
    f4.\)
  %\once\override Script #'avoid-slur = #'outside
  #(Akzent 0 .5 #t)
    ges-> ~                                                     % Takt 22
  %%%%======== ------------------------------------------------ ---------
    ges8
  #(BogenKurve 3 #t)
    des-.( es-. #(Text 0 -1.3 #t) des-. b-. ges-.               % Takt 23
  %%%%======== ------------------------------------------------ ---------
  des^.)
  #(BogenKurve 4.5 #t)
    des'-.[( es-.] des-. as-. fes-.                             % Takt 24
  %%%%======== ------------------------------------------------ ---------
  \once\override DynamicText #'extra-offset = #'(-.8 . -.8)
    des-.) \f
    <des des'>-.[( <es es'>-.])
    r <fes fes'>-.[( <ges ges'>-.])                             % Takt 25
  %%%%======== ------------------------------------------------ ---------
    r <g! g'!>-.[(
    <a a'>-.])
    r <b b'>-.[( <c c'>-.])                                     % Takt 26
  %%%%======== ------------------------------------------------ ---------
  \once\override Stem #'direction = #-1
    \ACHTan
  \once\override Staff.OttavaBracket #'extra-offset = #'(0 . .7)
    <des des'>( <es es'>) <fes fes'>(
    <ges ges'>) <g! g'!>( <a a'>)                               % Takt 27
  %%%%======== ------------------------------------------------ ---------
    #(Text -3.6 1.5 #t) #(Dynamik -1 -.2 #t)
    <b b'>16( \ff <c c'> <des des'>4) \ACHTaus r4 r8            % Takt 28
  %%%%======== ------------------------------------------------ ---------
  \MittlereDynamik
    <des, des'>-.( \f <des des'>-.
    <des des'>-.) <des des'>4( <c c'>8)                         % Takt 29
  %%%%======== ------------------------------------------------ ---------
    des-.( \pp des-. des-.)
  \once\override Script #'avoid-slur = #'outside
    des4->( c8)                                                 % Takt 30
  %%%%======== ------------------------------------------------ ---------
  \NormaleDynamik
    <b b'>-.( \f #(Text -1 -.6 #t)
    <as as'>-.-\markup { stretto }
    <b b'>-. <c c'>4.)                                          % Takt 31
  %%%%======== ------------------------------------------------ ---------
  \once\override Stem #'direction = #-1
  #(Dynamik 0 -.5 #t)
    b8( \pp as b c4.)                                           % Takt 32
  %%%%======== ------------------------------------------------ ---------
  \ACHTan
  \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 2.2)
  \times 3/5 {
    #(Triole 1.1 2.8 #t)
    \override TupletNumber #'font-size = #-1
    \override TupletNumber #'font-family = #'roman
      <des' des'>8-.( \f
    #(Text -1 0 #t)
      <des des'>-.-\markup { appassionato }
      <des des'>-. <des des'>-.
  \ACHTaus
    \once\override TextScript #'font-series = #'narrow
    #(Text -.7 .4 #t)
      <des, des'>-.^\markup { \fontsize #-1 loco })
  }
  \once\override Script #'avoid-slur = #'outside
    <des des'>4^>( <c c'>8)                                     % Takt 33
  %%%%======== ------------------------------------------------ ---------
  \times 3/5 {
    #(BogenKurve 4 #t) \VollRatio
      #(Dynamik 0 -2.3 #t) des'8-.( \pp des-. des-. des-. des,-.)
  }
  \once\override Script #'avoid-slur = #'outside
    des4->( c8)                                                 % Takt 34
  %%%%======== ------------------------------------------------ ---------
  \times 3/5 {
  \MittlereDynamik
      <b b'>8( \f <c c'> <b b'> <as as'> <b b'>
  }
    <c c'>4.)                                                   % Takt 35
  %%%%======== ------------------------------------------------ ---------
  \times 3/5 {
    #(Dynamik .5 -1.7 #t)
      b8^\markup { poco  rallentando }(
      \pp c b as b
  }
    c4.)                                                        % Takt 36
  %%%%======== ------------------------------------------------ ---------
  #(Dynamik -1.2 -2.2 #t)
    r8^\markup { a tempo } \p f,-.( g-.) r as-.( b-.)           % Takt 37
  %%%%======== ------------------------------------------------ ---------
    r
  #(PhBogen 0 .2 #t)
  #(PhBogenKurve 7 #t)
  \once\override Script #'avoid-slur = #'inside
    c-.\(
  #(BogenKurve 1 #t)
  \once\override Script #'avoid-slur = #'outside
    #(Artikel 0 .5 #t) des-\prall ( c-.) as'-. g-.              % Takt 38
  %%%%======== ------------------------------------------------ ---------
    f-. c-.
  #(BogenKurve 1 #t)
  \once\override Script #'avoid-slur = #'outside
    #(Artikel 0 .5 #t) des-\prall ( c-.) as-. f-.               % Takt 39
  %%%%======== ------------------------------------------------ ---------
  \once\override Script #'avoid-slur = #'outside
    c2.^^\)                                                     % Takt 40
  %%%%======== ------------------------------------------------ ---------
    r8 f-.( g-.) r as-.( b-.)                                   % Takt 41
  %%%%======== ------------------------------------------------ ---------
    r
  #(BogenKurve 4 #t)
    c-.( #(Text -.7 -.4 #t) des-.-\prall c-.  c'-. as-.         % Takt 42
  %%%%======== ------------------------------------------------ ---------
  #(BogenKurve 4 #t) \VollRatio
    g-.c,-. des-.
    c-. g-. c,-.                                                % Takt 43
  %%%%======== ------------------------------------------------ ---------
    f16 g as2) r8                                               % Takt 44
  %%%%======== ------------------------------------------------ ---------
  #(Dynamik .5 -1 #t) #(Text 0 2.2 #t)
    r^\markup { con forza } \f
    <f f'>-.( <g g'>-.) r <as as'>-.( <b b'>-.)                 % Takt 45
  %%%%======== ------------------------------------------------ ---------
    r
  #(BogenKurve 7 #t)
    <c c'>-.(
    <des des'>-. <c c'>-.
    <as' as'>-.
    <g g'>-.                                                    % Takt 46
  %%%%======== ------------------------------------------------ ---------
    <f f'>-. <c c'>-. <des des'>-. <c c'>-. <as as'>-.
    <f f'>-.                                                    % Takt 47
  %%%%======== ------------------------------------------------ ---------
    #(Dynamik .5 -.2 #t) <c c'>2.) \fz                          % Takt 48
  %%%%======== ------------------------------------------------ ---------
    #(Dynamik 0 -2.7 #t) r8 \p <f f'>-.(
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(1 . 1.2)
    \once\set crescendoText = \markup { \hspace #-1 "" \raise #-1.5 {
      \italic "cresc. " \hspace #2.7 } }
    \once\override DynamicTextSpanner #'dash-period = #'7
    \once\override DynamicTextSpanner #'dash-fraction = #'.13
    <g g'>-.) \< r <a a'>-.( <b b'>-.)                          % Takt 49
  %%%%======== ------------------------------------------------ ---------
    r \! <c c'>(
    <des des'> <es es'>4.)                                      % Takt 50
  %%%%======== ------------------------------------------------ ---------
  #(Dynamik .5 -2.5 #t) r8 \p <h h'>-.( <c c'>-.) r <d d'>-.(
    #(Text 0 -2.2 #t) <e e'>-.-\markup { do })                  % Takt 51
  %%%%======== ------------------------------------------------ ---------
  #(Text 0 -2.3 #t)
    r-\markup { e \hspace #3.8 stretto }
  \override Accidental #'avoid-slur = #'outside
  #(Bogen 0 .4 #t)
  #(BogenKurve 3 #f)
    <f f'>( <g g'> <as! as'!>4.)                                % Takt 52
  %%%%======== ------------------------------------------------ ---------
    #(Dynamik .5 -2.8 #t) r8 \p
  #(BogenKurve 2.3 #t)
  #(Text -.2 .3 #t)
    <e, e'>-\markup { sempre \hspace #3.8 "più" \hspace #3.8
    cresc. \hspace #3.8 ed \hspace #3.8 accelerando }(
    <f f'> <as as'> <g g'> <as as'>                             % Takt 53
  %%%%======== ------------------------------------------------ ---------
  <c c'> <b b'> <c c'>
    \Axdefault <es es'> \Axmodern <des des'> <es es'>           % Takt 54
  %%%%======== ------------------------------------------------ ---------
    <f f'> <e e'> <f f'>
  \ACHTan
  \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 1.5)
    #(Text -.5 2 #t) <as as'> <g g'> <as as'>)                  % Takt 55
  %%%%======== ------------------------------------------------ ---------
    <a a'>16( <b b'>)
    #(Dynamik 0 -1 #t) <des des'>2-> \fz
  \ACHTaus
  \once\override Stem #'direction = #-1
  \once\override DynamicText #'extra-offset = #'(-1.5 . .7)
    #(Dynamik -2 .5 #t) <e,, e'>8( \p                           % Takt 56
  %%%%======== ------------------------------------------------ ---------
    #(Text 0 -.5 #t)
    <g g'>-.-\markup { sotto voce }
    <g g'>-. <g g'>-.)
  \once\override Script #'avoid-slur = #'outside
    <g g'>4^>( <f f'>8)                                         % Takt 57
  %%%%======== ------------------------------------------------ ---------
  \NormaleDynamik
    g-.( \pp g-. g-.)
    g4^>( f8)                                                   % Takt 58
  %%%%======== ------------------------------------------------ ---------
  \once\override Slur #'direction = #1
  #(Dynamik 0 -1.6 #t)
    <e e'>-.( \p <dis dis'>-.  <e e'>-.
  #(Text .3 -.3 #t)
    <f f'>4.^\markup { ten. })                                  % Takt 59
  %%%%======== ------------------------------------------------ ---------
    e8^\markup { smorz. }(
    \pp dis e f4.)                                              % Takt 60
  %%%%======== ------------------------------------------------ ---------
  \times 4/5 {
    #(Dynamik 0 -2 #t)
    <g' g'>16-.[( \f <g g'>-. <g g'>-. <g g'>-. <g g'>-.]
  }
    <g g'>-.)[ r32 <g, g'>]
  \once\override Script #'avoid-slur = #'outside
    <g g'>4^>( <f f'>8)                                         % Takt 61
  %%%%======== ------------------------------------------------ ---------
  \times 4/5 {
    #(Dynamik .8 -2.7 #t) g'16-.[( \pp g-. g-. g-. g-.]
  }
    g-.)[ r32 g,]
  \once\override Script #'avoid-slur = #'outside
    g4->( f8)                                                   % Takt 62
  %%%%======== ------------------------------------------------ ---------
  #(Text -1.2 -.7 #t) #(Dynamik .3 -.3 #t)
    <e e'>16-.^\markup { riten. }( \ff
    <f f'>-. <g g'>-. <as as'>-. <b b'>-. <as as'>-.) <f f'>4.  % Takt 63
  %%%%======== ------------------------------------------------ ---------
  #(BogenKurve 2 #t)
    #(Dynamik 0 -1.5 #t) e16-.( \pp f-. g-. as-. b-. as-.) f4.  % Takt 64
  %%%%======== ------------------------------------------------ ---------
  \ACHTan
  \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 1.5)
    #(Text -.7 2.9 #t) #(Dynamik 1.7 -3.5 #t) b''16( \ppp
    #(Text -2.5 -.4 #t)
    c,-\markup { leggierissimo }
    as' c, b' c, as' c, b' c, as' c,)                           % Takt 65
  %%%%======== ------------------------------------------------ ---------
  \once\override Script #'avoid-slur = #'outside
    #(Text -.2 -.7 #t)
    g'-\markup { smorz. }(
    as, f'
    as, g' as, f' as, g' as, f' as,                             % Takt 66
  %%%%======== ------------------------------------------------ ---------
    f''8-.)
  \ACHTaus
    r r r4 r8                                                   % Takt 67
  %%%%======== ------------------------------------------------ ---------
}

links =  \context Staff \relative c{
  \context Voice = "links"   \stemDown
  %%% =========   F�r das Pedal:   ==========================================
  \set Staff.pedalSustainStyle = #'bracket
  \override Staff.PianoPedalBracket #'extra-offset = #'(.5 . .5)
  \once\override Staff.PianoPedalBracket #'edge-height = #'(0 . 1)
  %%% =======================================================================
\Axpiano
  \override DynamicText #'extra-offset = #'(0 . 2.5)
  #(BogenKurve 11 #f)
    #(Text -3 .6 #t)
    #(Dynamik 0 -2 #t)
    f,16-\markup { \musicglyph #"pedal.Ped" }(
    \PR #(Text -.8 -2 #t)
    c'_\markup { legatissimo }
    as' c, b' c,)
    <f,>( \PH\PR c' c' c, des' c,)                              % Takt  1
  %%%%======== ------------------------------------------------ ---------
    <f,>( \PH\PR c' c' c, b' c,)
    #(Keil 0 1.3 #t) f,( \PH\PR ^\< c' as' c, \! b' c,)         % Takt  2
  %%%%======== ------------------------------------------------ ---------
    f,( \PH\PR c' as' c, b' c,)
    f,( \PH\PR c' as' c, c' c,)                                 % Takt  3
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -1))
    f,( \PH\PR c' g' c, as' c,)
    f,( \PH\PR c' b' c, g' c,)                                  % Takt  4
  %%%%======== ------------------------------------------------ ---------
    f,( \PH\PR c' as' c, b' c,)
    f,( \PH\PR c' c' c, des' c,)                                % Takt  5
  %%%%======== ------------------------------------------------ ---------
    f,( \PH\PR #(Keil -.5 .8 #t) c'^\< c' c, b' c,)
    f,( \PH\PR c' as' c, c' c,) \!                              % Takt  6
  %%%%======== ------------------------------------------------ ---------
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . 2))
  f,( \PH\PR c' b' c, g' c,)
    f,( c' b' c,
    \once\override Hairpin #'height = #'1
    g'^\< c,)                                                   % Takt  7
  %%%%======== ------------------------------------------------ ---------
    f,( \PH\PR h \!  as' h, des'! h,)
    f( h as' h, des' h,)                                        % Takt  8
  %%%%======== ------------------------------------------------ ---------
  #(Text 0 1 #t)
    f^\markup { sotto voce } ( \PH\PR c' as' c, b' c,)
    f,( c' c' c, des' c,)                                       % Takt  9
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -3))
    #(Text 3 -2 #t)
    f,_\markup { sempre legatissimo }
    \PH\PR c' #(Keil 0 .8 #t) c'^\< c, b' c,
    f, c' as' c, \! b' c,                                       % Takt 10
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' as' c, b' c, f, c' as' c, c' c,                % Takt 11
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' g' c, as' c, f, c' b' c, g' c,                 % Takt 12
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -4))
    f, \PH\PR c' as' c, b' c, f, \PH\PR c' c' c, des' c,        % Takt 13
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' #(Keil 0 .6 #t) c'^\< c, b' c,
    f, c' as' c, c' \! c,                                       % Takt 14
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' b' c, g' c, f, c' b' c, g' c,                  % Takt 15
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -6))
    f, \PH\PR c' as' c, c' c, f, c' as' c, c' c,                % Takt 16
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR #(Keil 0 .3 #t) d'^\< as' d, b' d, f, \PH\PR
    b as' b, b' b, \!                                           % Takt 17
  %%%%======== ------------------------------------------------ ---------
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(2 . -.5)
    \once\set crescendoText = \markup { \hspace #-2 "" \raise #-1 {
      \italic "cresc. " \hspace #3.3 } }
    \once\override DynamicTextSpanner #'dash-period = #'9
    \once\override DynamicTextSpanner #'dash-fraction = #'.17
    es,^\< \PH\PR b' ges' b, b' b, 
    es, \PH\PR as ges' as, as' as, \!                           % Takt 18
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 0) (Y-offset . 23.7)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 0))                  % ohne Zeilen-Korrektur
    des, \PH\PR as' f' as, as' as,
    des, as' f' as, as' as,                                     % Takt 19
  %%%%======== ------------------------------------------------ ---------
  \stemUp
  \override Beam #'positions = #'(2 . 4)
    c, \PH\PR as' es' as, as' as,
    c, #(Keil 0 -.5 #t) as' \> es' as, as' as, \!               % Takt 20
  %%%%======== ------------------------------------------------ ---------
  \revert Slur #'height-limit
  \revert Beam #'positions
  \override Beam #'positions = #'(3 . 4.4)
    ces,( \PH\PR ges' es' ges, ges' ges,)
    ces,( ges' es' ges, ges' ges,)                              % Takt 21
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 0) (Y-offset . 51)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 0))                  % ohne Zeilen-Korrektur
  \revert Beam #'positions
  \once\override Beam #'positions = #'(4 . 4.5)
    ces,( \PH\PR as' des as as' as,)
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(1 . -.5)
    \once\set crescendoText = \markup { \hspace #-2 "" \raise #-1 {
      \italic "cresc. " \hspace #4 } }
    \once\override DynamicTextSpanner #'dash-period = #'9
    \once\override DynamicTextSpanner #'dash-fraction = #'.17
  \override Beam #'positions = #'(4 . 4.5)
    b,(^\< \PH\PR ges' des' ges, ges'
    ges,)                                                       % Takt 22
  %%%%======== ------------------------------------------------ ---------
    b,( \PH\PR ges' des' ges, ges' \! ges,)
    b,^\markup { sempre \hspace #9.5 stretto
      \hspace #9.5 e \hspace #9.5 "più" }(
      ges' des' ges, ges' ges,)                                 % Takt 23
  %%%%======== ------------------------------------------------ ---------
  \revert Beam #'positions
  \override Beam #'positions = #'(3.5 . 4)
    as,( \PH\PR f' des' f, f' f,)
    as,( \PH\PR fes' des' fes, fes' fes,)                       % Takt 24
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 3) (Y-offset . 78)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 3))                  % ohne Zeilen-Korrektur
  \revert Beam #'positions
  \once\override Beam #'positions = #'(3 . 4)
    ases,( \PH\PR fes' des' fes, fes' fes,)
  \once\override Beam #'positions = #'(4 . 5)
    b,( \PH\PR ases' fes' ases, ases' ases,)                    % Takt 25
  %%%%======== ------------------------------------------------ ---------
  \once\override Beam #'positions = #'(3 . 4)
    h,( \PH\PR g'! e' g,
  #(Text 0 1.3 #t)
    g'!^\markup { accelerando }  g,)
  \once\override Beam #'positions = #'(3 . 4)
    c,( \PH\PR g' e' g, g' g,)                                  % Takt 26
  %%%%======== ------------------------------------------------ ---------
  #(BogenKurve 17 #f)
  \once\override Beam #'positions = #'(-6 . -5)
  \stemNeutral
    \setTextCresc
    \once\override DynamicTextSpanner #'extra-offset = #'(1.3 . -1.4)
    \once\set crescendoText = \markup { \hspace #-2 "" \raise #-1.3 {
      \italic "cresc. " \hspace #3.3 } }
    \once\override DynamicTextSpanner #'dash-period = #'9
    \once\override DynamicTextSpanner #'dash-fraction = #'.17
    fes^\<( \PH\PR
    des' b'! des,)
    g,!( \PH\PR fes' des'
    fes,) b,( \PH\PR g'! fes' g,) \!                            % Takt 27
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 0) (Y-offset . 108.3)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 0))                  % ohne Zeilen-Korrektur
    des( \PH\PR b' g'! b,)
  #(BogenKurve 4.3 #t) \VollRatio
    e,( des' \clef violin b' des, b' des, b' des,)              % Takt 28
  %%%%======== ------------------------------------------------ ---------
    \clef bass \stemNeutral c,( \PH\PR as' f' as, as' as,)
    #(Keil 0 -.3 #t)
    \once\override Hairpin #'height = #.47
    c,(^\> \PH\PR g' e' g, g' \! g,)                            % Takt 29
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR as' f' as, as' as,
    c, \PH\PR g' e' g, g' g,                                    % Takt 30
  %%%%======== ------------------------------------------------ ---------
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -2))
    c, \PH\PR f des' f, f' f,
    c \PH\PR g' e' g, g' g,                                     % Takt 31
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR f des' f, f' f,
    c \PH\PR g' e' g, g' g,                                     % Takt 32
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR as' f' as, as' as,
    c, \PH\PR g' e' g, g' g,                                    % Takt 33
  %%%%======== ------------------------------------------------ ---------
\break\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . -1))
    c, \PH\PR as' f' as, as' as,
    c, \PH\PR g' e' g, g' g,                                    % Takt 34
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR f des' f, f' f,
    c \PH\PR g' e' g, g' g,                                     % Takt 35
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR f des' f, f' f,
    c \PH\PR g' e' g, g' g,                                     % Takt 36
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -1) (Y-offset . 27)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -1))                  % ohne Zeilen-Korrektur
    \stemDown
  #(Text 1 -.2 #t)
    f,^\markup { sempre agitato }( \PH\PR c' as' c, b' c,)
    f,( c' c' c, des' c,)                                       % Takt 37
  %%%%======== ------------------------------------------------ ---------
    #(Text 1.8 -2 #t)
    f,_\markup { sempre legato }
      \PH\PR c' #(Keil .5 1 #t) c'^\< c, b' c,
    f, \PH\PR c' as' c, b' \! c,                                % Takt 38
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' as' c, b' c,
    f, \PH\PR c' as' c, c' c,                                   % Takt 39
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -6) (Y-offset . 55.5)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -6))                  % ohne Zeilen-Korrektur
    f, \PH\PR c' g' c, as' c,
    f, \PH\PR c' b' c, g' c,                                    % Takt 40
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' as' c, b' c,
    f, \PH\PR c' c' c, des' c,                                  % Takt 41
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' #(Keil .5 .3 #t) c'^\< c, b' c,
    f, \PH\PR c' as' c, c' \! c,                                % Takt 42
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -4) (Y-offset . 80.5)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -4))                  % ohne Zeilen-Korrektur
    f, \PH\PR c' b' c, g' c,
    f, c' b' c, g' c,                                           % Takt 43
  %%%%======== ------------------------------------------------ ---------
    #(Keil 0 1.2 #t) f, \PH\PR ^\< h as' \! h, des'! h,
    f h as' h, des' h,                                          % Takt 44
  %%%%======== ------------------------------------------------ ---------
    f16 \PH\PR c' as' c, b' c,
    f, \PH\PR c' c' c, des' c,                                  % Takt 45
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -4) (Y-offset . 106)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -4))                  % ohne Zeilen-Korrektur
    f, \PH\PR c' c'^\< c, b' c,
    f, \PH\PR c' as' c, b' \! c,                                % Takt 46
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR #(Keil 0 .5 #t) c'^\> as' c, b' c,
    f, c' as' \! c, c' c,                                       % Takt 47
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' g' c, as' c, f, c' b' c, g' c,                 % Takt 48
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' a' c, b' c, f, \PH\PR c' c' c, des' c,         % Takt 49
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR ges'
  #(Keil -.3 .2 #t)
    es'^\< ges, f' ges,
    f, \PH\PR ges' \! ges' ges, ges' ges,                       % Takt 50
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR d'
  \setTextCresc
  \once\override DynamicTextSpanner #'extra-offset = #'(0 . 1.5)
  \once\set crescendoText = \markup { \hspace #-1 "" \raise #-1 {
    \italic "cre" \hspace #.6 } }
  \once\override DynamicTextSpanner #'dash-period = #'3
  \once\override DynamicTextSpanner #'dash-fraction = #'.35
    gis^\< d a' d, \!
    f, \PH\PR
  \setTextCresc
  \once\override DynamicTextSpanner #'extra-offset = #'(-3 . .5)
  \once\set crescendoText = \markup { \hspace #-1 "" \raise #-1 {
    \italic "scen " \hspace #.8 } }
  \once\override DynamicTextSpanner #'dash-period = #'3
  \once\override DynamicTextSpanner #'dash-fraction = #'.35
    d' ^\< h' d, cis' \! d,                                     % Takt 51
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR d' d' d, e' d,
    \once\override Beam #'damping = #10000
    \stemUp f, \PH\PR d' \oben\stemDown
    f'^\markup { m.d. }
    \unten\stemUp d, \oben\stemDown f'
    \unten\stemUp d,                                            % Takt 52
  %%%%======== ------------------------------------------------ ---------
    \stemDown
    f, \PH\PR des'! b' des, des'! des,
    f, des' b' des, des' des,                                   % Takt 53
  %%%%======== ------------------------------------------------ ---------
    f, des' b' des, des' des, f, des' b' des, des' des,         % Takt 54
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -2) (Y-offset . 31)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -2))                  % ohne Zeilen-Korrektur
    f, des' b' des, des' des, f,
    #(Keil -.7 .2 #t)
    des'^\< b' des, des' \! des,                                % Takt 55
  %%%%======== ------------------------------------------------ ---------
    f, des' b' des, des' des,
    f, des' b' des, des' des,                                   % Takt 56
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   % Takt 57
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . -1) (Y-offset . 58.1)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . -1))                  % ohne Zeilen-Korrektur
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   % Takt 58
  %%%%======== ------------------------------------------------ ---------
\Axmodern
    f, \PH\PR des' #(Keil -.9 .3 #t) b'^\< des, des' des,
    f, \PH\PR c' \! as' c, c' c,                                % Takt 59
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   % Takt 60
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details
#'((fixed-alignment-extra-space . 0) (Y-offset . 85.7)) % mit Zeilen-Korrektur
%#'((fixed-alignment-extra-space . 0))                  % ohne Zeilen-Korrektur
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   % Takt 61
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   % Takt 62
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   % Takt 63
  %%%%======== ------------------------------------------------ ---------
\overrideProperty #"Score.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . 2))
    f, \PH\PR des' b' des, des' des,
  \override Staff.PianoPedalBracket #'shorten-pair = #'(0 . -2)
    f, \PH\PR c' as' c, c' c,                                   % Takt 64
  %%%%======== ------------------------------------------------ ---------
    \stemUp
    f,8 r \clef violin
    \stemDown
  #(BogenKurve 2 #t) \VollRatio
    des''''16( f, des' f, des' f, des' f,)                      % Takt 65
  %%%%======== ------------------------------------------------ ---------
  #(BogenKurve 3.3 #t) \VollRatio
    b( f b f b f b f b f b f                                    % Takt 66
  %%%%======== ------------------------------------------------ ---------
    \stemUp
    f,8-.) \PH r r r4 r8                                        % Takt 67
  %%%%======== ------------------------------------------------ ---------
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
    \context {
      \PianoStaff
      \override VerticalAlignment #'forced-distance = #12
    }
  }
\midi {
  \tempo 8=288
  \context { \Voice
    \remove "Span_dynamic_performer"
  }
}
}
