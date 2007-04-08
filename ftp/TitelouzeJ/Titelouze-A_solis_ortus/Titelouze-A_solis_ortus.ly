% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.10.15"
\include "italiano.ly" 
%%
%% Version 2 
%% Prise en compte de la nouvelle notation du tempo dans la commande
%% midi{}.
%%
\header{
  title = \markup {\center-align { \medium " A solis ortus "  \medium "2e verset"} }
    subtitle = ""
    piece = "" 
    instrument = ""
    composer = "Jean Titelouze (1563-1633)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
    opus = ""
    lastupdated = "2007-01-12 Saint Hilaire de Poitiers"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    mutopiatitle = "A Solis ortus (2e verset)"
    mutopiacomposer = "TitelouzeJ"
    mutopiainstrument = "Organ"
    style="Baroque"
    %tagline= ""
 footer = "Mutopia-2007/02/17-908"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

%#(set-default-paper-size "a4" 'landscape)
%#(set-global-staff-size 18)

% macros von Urs Metzger
adjustSlash = { \once \override TextScript #'extra-offset = #'( -2 . 5 ) }
halsdown = { \stemDown \tieDown \slurDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral }
halsup = { \stemUp \tieUp \slurUp}
hideBrackets = { \override TupletBracket #'bracket-visibility = ##f }
hideTripletNumber = { \set tupletNumberFormatFunction = #'() }
mmrestdown = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestup = { \once \override MultiMeasureRest #'staff-position = #4 }
mmrestupp = { \once \override MultiMeasureRest #'staff-position = #6 }
mmrestuppp = { \once \override MultiMeasureRest #'staff-position = #8 }
mmrestupppp = { \once \override MultiMeasureRest #'staff-position = #10 }
noflag = { \once \override Stem #'flag-style = #'no-flag }
restdownnn = { \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -3.0 ) }
restright = { \once \override Rest #'extra-offset = #'( 4.0 . 0.0 ) }
scriptdown = { \once \override Script #'extra-offset = #'(0 . -1.3) }
scriptdownn = { \once \override Script #'extra-offset = #'(0 . -2.3) }
scriptdownnn = { \once \override Script #'extra-offset = #'(0 . -3.3) }
scriptup = { \once \override Script #'extra-offset = #'(0 . 1.3) }
showBrackets = { \override TupletBracket #'bracket-visibility = ##t }
staffdown = { \change Staff = "basse" \halsup }
staffup = { \change Staff = "dessus" \halsdown }
std = { \change Staff = "basse" }
stu = { \change Staff = "dessus" }


global = {
  \key la \minor
  \time 4/4
}


soprano = \relative do'' {
 % \override Score.MetronomeMark #'transparent = ##t
 % \tempo 2 = 400
  \halsup
  \override MultiMeasureRest #'staff-position = #+4
  R1*7
  \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 \once\override Rest #'extra-offset = #'( 0.0 . +1 ) r4 la4 
  si2 do4 re4 ~
  %% 10 :
  re4 mi4 la,4 si8 do8 
  re4 la8 si8 do4. si16 la16 
  si8 la8 re2 dod4 
  \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 r4 mi4 
  la,4 si2 do4 ~
  %% 15 :
  do8 si8 la4 sol8 la8 si8 dod8 
  re8 do8 si8 do8 re8 mi8 do4 
  si4 la2 sol4 
  fad4. sol8 la4 re,4 ~
  re4 re4 mi2 
  %% 20 :
  la4 si2 la4 ~
  la4 sol2 fad4 
  sol2 r2 
  \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r4 sol4 la4 do4 ~
  do8 do8 si8 do8 re4 do4 
  %% 25 :
  si2 do4 mi4 ~
  mi4 re4. do8 do4 
  si2 dod4 re4 
  R1 
  la2 re2 
  %% 30 :
  do4. si8 la8 sol8 la8 fa8 
  mi4 mi'8 re8 do4. re8 
  mi8 re16 do16 si4 do4 la4 
  si2 mi,8 fad8 sol4 ~
  sol8 la8 si4 la4 do4 
  %% 35 :
  si4 re2 do4 
  re4 sol,2 fa8 sol8 
  la4. si8 do8 re8 mi4 ~
  mi4 re4 do2 
  si4 do4 la4 sol8 fa8 
  %% 40 :
  mi2 fa2 
  mi8 fa8 sol4 la8 si8 do8 la8 
  la2. la4 
  sol2 r2 
  la4 re4 do4. si8 
  %% 45 :
  la8 sol8 la8 fa8 mi4 sol4 
  la4 do4. si8 sol8 [ la8 ] 
  si8 do8 si4 la8 si8 do4 ~
  do4 si8 la8 sol8 la8 si4 
  do2 re2 
  %% 50 :
  mi1 
  R1 
  R1 
  \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r4 mi4 ~
  mi4 re4 do4 si4 
  %% 55 :
  la2 \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r4 do4 
  si4 do4. re8 mi4 
  la,4 re4 mi4 fa4 ~
  fa8 mi8 mi2 re4 
  do2. si8 la8 
  %% 60 :
  sol4 fa4 mi2 
  \override MultiMeasureRest #'staff-position = #+2 R1 
  r2 la2 
  si2 do2 ~
  do2 re4 mi4 
  %% 65 :
  la,4 la2 sol4 
  la2 si4 do4 
  la2 r4 re,4 
  mi2 fad4 sol4 
  la2 sol4 mi4 ~
  %% 70 :
  mi4 re4 mi2 
  r4 la2 si4 
  do4 re2 mi4 ~
  mi4 la,4 do4 si4 ~
  si4 si4 mi,4 la4 ~
  %% 75 :
  la4 sol4 re4 mi4 
  fa8 sol8 la8 si8 do4 si4 
  r2 r4 mi4 ~
  mi4 re4 do2 
  si4 la4 mi'4. re8 
  %% 80 :
  do2 si4 la4 
  sold1^\fermata 
   \bar "|."
}

alto = \relative do' {
  \global \halsdown
  \override MultiMeasureRest #'staff-position = #-2
  R1*4
  %%  5 :
  \once\override Rest #'extra-offset = #'( 0.0 . -2 ) r2 \once\override Rest #'extra-offset = #'( 0.0 . -2 )r4 re4 
  mi2 fa4 sol4 ~
  sol4 la4 re,2 
  mi8 fa8 sol2 fad4 
  sol4 re4 mi4 re4 
  %% 10 :
  r4 sol4 fad4 sol4 ~
  sol4 fa4. mi16 re16 mi4 
  re4. fa8 mi8 fa16 sol16 la8 sol8 
  fad2 sol2 
  fa8 mi8 re4 \once\override Rest #'extra-offset = #'( 0.0 . -2 ) r2 
  %% 15 :
  \once\override Rest #'extra-offset = #'( 0.0 . +1 ) r4 re4 mi2 
  fad4 sol2 la4 
  re,4. do8 si2 
  la4 re2 r4 
  la4 si2 dod4 
  %% 20 :
  re2 mi2 
  re4 mi8 re8 dod4 re8 do8 
  si8 do16 re16 mi2 re4 
  mi2 r4 do4 
  mi4 sol4. sol8 mi8 [ fa8 ] 
  %% 25 :
  re4 mi4 mi4. fa8 
  sol4. fa8 mi2 ~
  mi4 re4 mi4 la4 ~
  la8 la8 sold4 \once\override Rest #'extra-offset = #'( 0.0 . -2 ) r2 
  \override MultiMeasureRest #'staff-position = #-4 R1 
  %% 30 :
  R1 
  r4 mi4 la2 
  sol4. fa8 mi8 re8 mi8 do8 
  si4 mi8 re8 do4 re4 
  mi8 fad8 sol2 fad4 
  %% 35 :
  sol2 r4 sol4 ~
  sol8 fa8 mi2 re8 mi8 
  fa2 mi2 
  fa2 la8 sol8 fa4 ~
  fa4 mi2 re4 
  %% 40 :
  do4 do2 si4 
  do8 re8 mi8 re8 do4. re8 
  mi8 re8 do8 si8 la4. si8 
  do8 si8 sol8 la8 si8 re8 dod4 
  re2 la'4 mi4 
  %% 45 :
  fa4 re4 r2 
  do4. re8 mi4. fa8 
  sol8 fa8 re8 mi8 fa8 re8 mi4 ~
  mi4 re4 mi4 sol8 fa8 
  mi8 re8 la'4. la8 sold4 
  %% 50 :
  la2 \once\override Rest #'extra-offset = #'( 0.0 . -2 ) r2 
  \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r4 la2 sol4 ~
  sol4 fa4 mi4 re4 
  mi4 la2 sol4 
  fa2 mi4 re4 
  %% 55 :
  mi4 fad4 sol4 la4 
  r2 la4 sol4 
  fa2 mi4 re4 
  la'4. sol8 fa2 ~
  fa4 mi2 re4 
  %% 60 :
  mi4 re8 do8 si4 do4 ~
  do8 si8 la4 si8 do8 re4 ~
  re4 dod4 r4 re4 ~
  re4 mi2 fa4 
  sol4 la2 sol4 ~
  %% 65 :
  sol4 fa2 mi8 re8 
  do4 fa4 mi2 
  fa4 mi8 re8 do4 si4 
  r4 do2 si4
  dod4 re2 do4 ~
  %% 70 :
  do4 la4 do2 ~ 
  do4 do4 fa2 
  mi4 re4 sol4 sol4 ~
  sol4 fa4 mi2 ~
  mi4 re4 dod2 
  %% 75 : 
  re4 si2 do4 
  do4. re8 mi4 re4 ~
  re4 sol4 mi2 
  la4 fa4 mi2 
  r4 mi8 fa8 sol8 la8 si4 ~
  %% 80 :
  si4 la4 sol8 fa8 mi8 re8 
  mi1 
}

tenor = \relative do' {
  \global
  \halsup
  %%  1 :
  \override MultiMeasureRest #'staff-position = #+4 R1
  \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r4 la4 si2 
  do4 re2 mi4 
  la,2 si8 do8 re4 ~
  %%  5 :
  re4 do4 si4. la8 
  sol8 mi8 do'2. 
  si4 la4 si8 do8 si8 la8 
  sol4. la8 si8 do8 la4 
  sol2 sol4. la8 
  %% 10 :
  si4 do2 si4 
  la1 
  \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 la2 ~ 
  la4 si2 do4 
  re2 mi2
  %% 15 :
  la,4. si8 do4 sol4 
  la4 sol2 fad4 
  sol4 la4 re,2 
  re4. mi8 fad4 sol4 
  fad4 sol2 la8 sol8 
  %% 20 :
  fad4 sol4 mi4. fad8 
  sol8 la8 si4 mi,4 la4 
  r4 sol4 la2 
  do4. si8 do8 si8 la4 ~
  la4 sol4 \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 
  %% 25 :
  sol2 la4 do4 ~
  do8 do8 si8 la8 sol2 
  sol8 la8 si4 la2 
  si4. la8 sold4 la4 ~
  la8 sol8 fad4 sol8 fa8 mi8 re8 
  %% 30 :
  mi4 la4 re2 
  do4. si8 la8 sol8 la8 fa8 
  mi4 sol4 la2 
  sold2 la4 si4 
  do4 si4 do2 
  %% 35 :
  re4 si4 sol2 
  \once\override Rest #'extra-offset = #'( 0.0 . +1 ) r2 la2 
  re2 do4. si8 
  la8 sol8 la8 fa8 mi4 la4 
  sol4 la4 fa4 re4 
  %% 40 :
  la'4. sol8 fa2 
  sol4 mi2 mi8 re8 
  do8 re8 mi2 re4 
  mi1 
  re4. mi8 fa!8 sol8 la4 
  %% 45 :
  fa2 sol4 mi4 ~
  mi4 fa4 sol4 mi4 
  re4 sol4 la4. sol8 
  fa8 sol8 la8 si8 do4 sol4 
  la8 si8 do8 re8 si2 
  %% 50 :
  do2\rest \once\override Rest #'extra-offset = #'( 0.0 . +4.5 ) r4 mi4 ~
  mi4 re4 do4 si4 
  la4. si8 do4 si8 la8 
  do2 si2 
  la2. si4
  %% 55 :
  do4 re4 mi2 
  re4 mi4 la,4 do4 ~
  do4 si4 do4 la4 
  \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 la2 ~
  la4 sol4 fa2
  %% 60 :
  mi4 la2 sol8 fa8 
  mi4. fa8 sol8 fa8 mi8 re8 
  mi2 fad2 
  sol2 la2 
  mi4 fa2 do'4 ~
  %% 65 :
  do8 la8 re8 do8 si4 do4 
  la4 re2 do4 
  r4 fa,4 mi4 sol4 ~
  sol4 la2 re,4 
  r4 re4 mi2
  %% 70 :
  fa2 sol4 la4 
  mi4 fa4 re2 
  mi4 sol2 sol4 
  la2. sold4 
  si2 la2 
  %% 75 :
  re,2 sol2 
  la2 sol4. la8 
  si2 do2 
  la2 r4 la4 
  sol4 do4 si4 sol4 
  %% 80 :
  la8 si8 do8 re8 mi8 si8 do4 
  si1^\fermata
}


basse = \relative do { 
  \global
  \halsdown
  %%  1 :
  la2 si2 
  do4 re2 mi4 
  la,4 si8 do8 re4 dod4 ~
  dod4 re8 do8 si2 
  %%  5 :
  mi4 la,2 sol4
  do4. la8 la'4 mi4 ~
  mi4 fad4 sol4. fa8 
  mi2 re2 
  sol,2 do4 si4 
  %% 10 :
  sol'8 fa8 mi4 re2 
  re4. do16 si16 la2 
  \override MultiMeasureRest #'staff-position = #-2 R1
  re2 mi2 
  fa4 sol2 la4 
  %% 15 :
  fa2 mi2 
  re4. do8 si4 la4 
  sol4 fad4 r2 
  \override MultiMeasureRest #'staff-position = #-4 R1 
  \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r2 mi'2 
  %% 20 :
  re2 do2 
  si2 la2 
  mi'4 do4 fa2 
  mi2 r2 
  R1 
  %% 25 :
  R1 
  \once\override Rest #'extra-offset = #'( 0.0 . -2 ) r2 \once\override Rest #'extra-offset = #'( 0.0 . +1 ) r4 do4 
  mi4 sol4. sol8 fad8 [ mi8 ] 
  re4 mi4. re8 dod4 
  re4. do8 si2 
  %% 30 :
  la2 \once\override Rest #'extra-offset = #'( 0.0 . -2 ) r2 
  R1 
  R1
  R1 
  mi'2 la2 
  %% 35 :
  sol4. fa8 mi8 re8 mi8 do8 
  si4 do2 re4 ~
  re8 mi8 fa8 sol8 la2 
  re,2 la2 
  R1 
  %% 40 :
  \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r4 la4 re2 
  do4. si8 la8 sol8 la4 ~
  la4 sol4 fa2 
  mi4. fa8 sol4 la4 
  fad4 sol4 la2 
  %% 45 :
  re2 do4. si8 
  la8 sol8 la8 fa8 do'2 
  sol2 re'4 la4 ~
  la4 fa'4 mi2 ~
  mi2 r2 
  %% 50 :
  r4 la2 sol4 
  fa2 mi4. re8 
  do8 si8 la4 la'4 fa4 
  mi4 re8 do8 re4 mi4 
  \override MultiMeasureRest #'staff-position = #-2 R1 
  %% 55 :
  r2 r4 la4 ~
  la4 sol4 fa4 mi4 
  re2 la'4 re,4 
  R1 
  la2. si4 
  %% 60 :
  do4 re4 mi2 
  la,4 do4 si2 
  sold4 la4 \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r2 
  R1 
  R1 
  %% 65 :
  \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r4 re2 mi4 
  fa2 sol4 la4
  re,2 la4 si4 
  do8 si8 la2 sol4 ~
  sol4 fad4 sol4 la4 ~
  %% 70 :
  la4 re4 do2 
  \override MultiMeasureRest #'staff-position = #-4 R1 
  la4 si2 do4 ~
  do4 re4 mi2 
  sold,2 la4 fad4 ~
  %% 75 :
  fad4 sol2 do4 
  la4 fa'4 do4 sol'4 ~
  sol4 mi4 la4 sol4 
  fa4 re4 la2 
  mi'1 ~
  %% 80 :
  mi1 
  mi1 
}

sopranomidi = \relative do'' {
  \global\halsup
  \override MultiMeasureRest #'staff-position = #+4
  R1*7
  \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 \once\override Rest #'extra-offset = #'( 0.0 . +1 ) r4 la4 
  si2 do4 re4 ~
  %% 10 :
  re4 mi4 la,4 si8 do8 
  re4 la8 si8 do4. si16 la16 
  si8 la8 re2 dod4 
  \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 r4 mi4 
  la,4 si2 do4 ~
  %% 15 :
  do8 si8 la4 sol8 la8 si8 dod8 
  re8 do8 si8 do8 re8 mi8 do4 
  si4 la2 sol4 
  fad4. sol8 la4 re,4 ~
  re8. r16 re4 mi2 
  %% 20 :
  la4 si2 la4 ~
  la4 sol2 fad4 
  sol2 r2 
  \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r4 sol4 la4 do4 ~
  do16. r32 do8 si8 do8 re4 do4 
  %% 25 :
  si2 do4 mi4 ~
  mi4 re4. do16. r32 do4 
  si2 dod4 re4 
  R1 
  la2 re2 
  %% 30 :
  do4. si8 la8 sol8 la8 fa8 
  mi4 mi'8 re8 do4. re8 
  mi8 re16 do16 si4 do4 la4 
  si2 mi,8 fad8 sol4 ~
  sol8 la8 si4 la4 do4 
  %% 35 :
  si4 re2 do4 
  re4 sol,2 fa8 sol8 
  la4. si8 do8 re8 mi4 ~
  mi4 re4 do2 
  si4 do4 la4 sol8 fa8 
  %% 40 :
  mi2 fa2 
  mi8 fa8 sol4 la8 si8 do8 la8 
  la2. la4 
  sol2 r2 
  la4 re4 do4. si8 
  %% 45 :
  la8 sol8 la8 fa8 mi4 sol4 
  la4 do4. si8 sol8 [ la8 ] 
  si8 do8 si4 la8 si8 do4 ~
  do4 si8 la8 sol8 la8 si4 
  do2 re2 
  %% 50 :
  mi1 
  R1 
  R1 
  \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r4 mi4 ~
  mi4 re4 do4 si4 
  %% 55 :
  la2 \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r4 do4 
  si4 do4. re8 mi4 
  la,4 re4 mi4 fa4 ~
  fa8 mi16. r32 mi2 re4 
  do2. si8 la8 
  %% 60 :
  sol4 fa4 mi2 
  \override MultiMeasureRest #'staff-position = #+2 R1 
  r2 la2 
  si2 do2 ~
  do2 re4 mi4 
  %% 65 :
  la,4 la2 sol4 
  la2 si4 do4 
  la2 r4 re,4 
  mi2 fad4 sol4 
  la2 sol4 mi4 ~
  %% 70 :
  mi4 re4 mi2 
  r4 la2 si4 
  do4 re2 mi4 ~
  mi4 la,4 do4 si4 ~
  si8.. r32 si4 mi,4 la4 ~
  %% 75 :
  la4 sol4 re4 mi4 
  fa8 sol8 la8 si8 do4 si4 
  r2 r4 mi4 ~
  mi4 re4 do2 
  si4 la4 mi'4. re8 
  %% 80 :
  do2 si4 la4 
  sold1^\fermata 
   \bar "|."
}

altomidi = \relative do' {
  \global \halsdown
  \override MultiMeasureRest #'staff-position = #-2
  R1*4
  %%  5 :
  \once\override Rest #'extra-offset = #'( 0.0 . -2 ) r2 \once\override Rest #'extra-offset = #'( 0.0 . -2 )r4 re4 
  mi2 fa4 sol4 ~
  sol4 la4 re,2 
  mi8 fa8 sol2 fad4 
  sol4 re4 mi4 re4 
  %% 10 :
  r4 sol4 fad4 sol4 ~
  sol4 fa4. mi16 re16 mi4 
  re4. fa8 mi8 fa16 sol16 la8 sol8 
  fad2 sol2 
  fa8 mi8 re4 \once\override Rest #'extra-offset = #'( 0.0 . -2 ) r2 
  %% 15 :
  \once\override Rest #'extra-offset = #'( 0.0 . +1 ) r4 re4 mi2 
  fad4 sol2 la4 
  re,4. do8 si2 
  la4 re2 r4 
  la4 si2 dod4 
  %% 20 :
  re2 mi2 
  re4 mi8 re8 dod4 re8 do8 
  si8 do16 re16 mi2 re4 
  mi2 r4 do4 
  mi4 sol4. sol8 mi8 [ fa8 ] 
  %% 25 :
  re4 mi8.. r32 mi4. fa8 
  sol4. fa8 mi2 ~
  mi4 re4 mi4 la4 ~
  la16. r32 la8 sold4 \once\override Rest #'extra-offset = #'( 0.0 . -2 ) r2 
  \override MultiMeasureRest #'staff-position = #-4 R1 
  %% 30 :
  R1 
  r4 mi4 la2 
  sol4. fa8 mi8 re8 mi8 do8 
  si4 mi8 re8 do4 re4 
  mi8 fad8 sol2 fad4 
  %% 35 :
  sol2 r4 sol4 ~
  sol8 fa8 mi2 re8 mi8 
  fa2 mi2 
  fa2 la8 sol8 fa4 ~
  fa4 mi2 re4 
  %% 40 :
  do4 do2 si4 
  do8 re8 mi8 re8 do4. re8 
  mi8 re8 do8 si8 la4. si8 
  do8 si8 sol8 la8 si8 re8 dod4 
  re2 la'4 mi4 
  %% 45 :
  fa4 re4 r2 
  do4. re8 mi4. fa8 
  sol8 fa8 re8 mi8 fa8 re8 mi4 ~
  mi4 re4 mi4 sol8 fa8 
  mi8 re8 la'4 ~ la16 ~ la32 r32 la8 sold4 
  %% 50 :
  la2 \once\override Rest #'extra-offset = #'( 0.0 . -2 ) r2 
  \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r4 la2 sol4 ~
  sol4 fa4 mi4 re4 
  mi4 la2 sol4 
  fa2 mi4 re4 
  %% 55 :
  mi4 fad4 sol4 la4 
  r2 la4 sol4 
  fa2 mi4 re4 
  la'4. sol8 fa2 ~
  fa4 mi2 re4 
  %% 60 :
  mi4 re8 do8 si4 do4 ~
  do8 si8 la4 si8 do8 re4 ~
  re4 dod4 r4 re4 ~
  re4 mi2 fa4 
  sol4 la2 sol4 ~
  %% 65 :
  sol4 fa2 mi8 re8 
  do4 fa4 mi2 
  fa4 mi8 re8 do4 si4 
  r4 do2 si4
  dod4 re2 do4 ~
  %% 70 :
  do4 la4 do2 ~ 
  do8.. r32 do4 fa2 
  mi4 re4 sol8.. r32 sol4 ~
  sol4 fa4 mi2 ~
  mi4 re4 dod2 
  %% 75 : 
  re4 si2 do4 
  do4. re8 mi4 re4 ~
  re4 sol4 mi2 
  la4 fa4 mi2 
  r4 mi8 fa8 sol8 la8 si4 ~
  %% 80 :
  si4 la4 sol8 fa8 mi8 re8 
  mi1 
}

tenormidi = \relative do' {
  \global
  \halsup
  %%  1 :
  \override MultiMeasureRest #'staff-position = #+4 R1
  \once\override Rest #'extra-offset = #'( 0.0 . -1 ) r4 la4 si2 
  do4 re2 mi4 
  la,2 si8 do8 re4 ~
  %%  5 :
  re4 do4 si4. la8 
  sol8 mi8 do'2. 
  si4 la4 si8 do8 si8 la8 
  sol4. la8 si8 do8 la4 
  sol4 ~ sol8.. r32 sol4. la8 
  %% 10 :
  si4 do2 si4 
  la1 
  \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 la2 ~ 
  la4 si2 do4 
  re2 mi2
  %% 15 :
  la,4. si8 do4 sol4 
  la4 sol2 fad4 
  sol4 la4 re,2 
  re4. mi8 fad4 sol4 
  fad4 sol2 la8 sol8 
  %% 20 :
  fad4 sol4 mi4. fad8 
  sol8 la8 si4 mi,4 la4 
  r4 sol4 la2 
  do4. si8 do8 si8 la4 ~
  la4 sol4 \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 
  %% 25 :
  sol2 la4 do4 ~
  do16. r32 do8 si8 la8 sol2 
  sol8 la8 si4 la2 
  si4. la8 sold4 la4 ~
  la8 sol8 fad4 sol8 fa8 mi8 re8 
  %% 30 :
  mi4 la4 re2 
  do4. si8 la8 sol8 la8 fa8 
  mi4 sol4 la2 
  sold2 la4 si4 
  do4 si4 do2 
  %% 35 :
  re4 si4 sol2 
  \once\override Rest #'extra-offset = #'( 0.0 . +1 ) r2 la2 
  re2 do4. si8 
  la8 sol8 la8 fa8 mi4 la4 
  sol4 la4 fa4 re4 
  %% 40 :
  la'4. sol8 fa2 
  sol4 mi2 mi8 re8 
  do8 re8 mi2 re4 
  mi1 
  re4. mi8 fa!8 sol8 la4 
  %% 45 :
  fa2 sol4 mi4 ~
  mi4 fa4 sol4 mi4 
  re4 sol4 la4. sol8 
  fa8 sol8 la8 si8 do4 sol4 
  la8 si8 do8 re8 si2 
  %% 50 :
  do2\rest \once\override Rest #'extra-offset = #'( 0.0 . +4.5 ) r4 mi4 ~
  mi4 re4 do4 si4 
  la4. si8 do4 si8 la8 
  do2 si2 
  la2. si4
  %% 55 :
  do4 re4 mi2 
  re4 mi4 la,4 do4 ~
  do4 si4 do4 la4 
  \once\override Rest #'extra-offset = #'( 0.0 . +2 ) r2 la2 ~
  la4 sol4 fa2
  %% 60 :
  mi4 la2 sol8 fa8 
  mi4. fa8 sol8 fa8 mi8 re8 
  mi2 fad2 
  sol2 la2 
  mi4 fa2 do'4 ~
  %% 65 :
  do8 la8 re8 do8 si4 do4 
  la4 re2 do4 
  r4 fa,4 mi4 sol4 ~
  sol4 la2 re,4 
  r4 re4 mi2
  %% 70 :
  fa2 sol4 la4 
  mi4 fa4 re2 
  mi4 sol2 sol4 
  la2. sold4 
  si2 la2 
  %% 75 :
  re,2 sol2 
  la2 sol4. la8 
  si2 do2 
  la2 r4 la4 
  sol4 do4 si4 sol4 
  %% 80 :
  la8 si8 do8 re8 mi8 si8 do4 
  si1^\fermata
}


\paper {
  betweensystempadding = 1\mm
  betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  headsep = 1\mm
  %aftertitlespace = 1\mm
  indent = 1\cm
  bottommargin = 4\mm 
  topmargin = 1\mm
}

\score{
  \new PianoStaff 
  <<
    \new Staff = "dessus" << 
      \clef "violin"
      \soprano
      \alto
    >>
    \new Staff = "basse" << 
      \clef "bass" 
      \tenor
      \basse
    >>
  >>

  \layout{
  }
}


\score { 
  <<
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \sopranomidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \sopranomidi
      }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \altomidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \altomidi
      }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \tenormidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \tenormidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \basse
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \basse
    }
    \new Staff { % tempo staff
      s1* 79
      s4 \tempo 2 = 55 s4 \tempo 2 = 45 s4 \tempo 2 = 30 s4
      \tempo 2 = 25 s1
    }

  >>
  \midi{ 
    \context {
       \Score
       tempoWholesPerMinute = #(ly:make-moment 60 2)
     }
  }

}
  
