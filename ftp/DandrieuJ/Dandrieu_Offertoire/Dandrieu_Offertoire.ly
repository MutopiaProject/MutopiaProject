% -*- mode: LilyPond ; coding: utf-8 -*-
\version "2.6.4.3"
\include "italiano.ly" 

%% version 1


\header{
    title = \markup {\center-align { "OFFERTOIRE" \large "extrait du" "Premier livre de pièces d'Orgue" " "} }
    subtitle = ""
    piece = "" 
    instrument = ""
    composer = "Jean-François Dandrieu (1681-1738)"
    % pièce composée en 1731
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Archives des Maîtres de l'Orgue, vol. 7 - A. Durand et fils - 1905 - Alexandre Guilmant"
    opus = ""
    lastupdated = "2006-03-09"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    mutopiatitle = "Offertoire"
    mutopiacomposer = "DandrieuJ"
    mutopiainstrument = "Organ"
    style="Baroque"
    footer = "Mutopia-2006/03/13-696"
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

%#(set-default-paper-size "a4")
%#(set-global-staff-size 20)


global = {
  \key la \minor
  \time 4/4
}

soprano = \relative do'' {
  %  1 :
  \once\override Voice.TextScript #'extra-offset = #'( -4 . 2) la4^\markup{ \large "Gravement."} ~ la8. fa'16 fa8. mi16 mi8.^\prallprall re16
  dod4.^\prallprall dod8 re8 la8 re8 do8 
  do8 ^\prallprall si4 sib8 sib8 la8 la8 mi'8 \break
  fa8 ^\mordent mi8 fa8 < dod mi>8 < re fa>8^\prallprall [ < dod mi>8 ] < re fa>8 < dod mi>8
  %  5 :
  < re fa >8 < dod mi >8  < re fa >8  < mi sol >8 la8 mi8 la8 sol8 
  sol8^\prallprall fad4 fad8 sol8 [ re8 sol8 fa8 ]
  fa8^\prallprall mi4 mi8 fa8 [ do8 fa8 fa8 ]
  fa4. re8 mi8^\prallprall re8 mi8 sol8 
  la8^\mordent sol8 la8 < mi sol>8   <fa la>8^\markup{\small \musicglyph #"accidentals.-2" \hspace #0.2 \musicglyph #"scripts.prallprall"} <mi sol>8 <fa la>8 < mi sol>8
  % 10 :
  << { \once\override Voice.Dots #'extra-offset = #'(0.6 . 0.0) la8. sol16 sol8.\prallprall fa16 fa4. la,8}\\ 
     {s4 s4 s4 s4}\\   
     {\once \override TextScript #'extra-offset = #'(-1.3 . -3.8)  \once \override NoteColumn #'force-hshift = #0.4 fa'4 ^\markup {\musicglyph #"scripts.mordent" }  s4 s4 s4 }
  >> 
  si,8^\mordent la8 si8 si8 dod8^\prallprall si8 dod8 mi8 
  fa8^\mordent  mi8 fa8 mi8  < re fa>8^\prallprall [ < dod mi>8  < re fa>8 < dod mi>8 ]
  << { \once\override Voice.Dots #'extra-offset = #'(0.6 . 0.5) fa8. mi16 \once\override Voice.Dots #'extra-offset = #'(0.4 . 0.0) mi8.\prallprall re16 re4 do4}\\ 
     {s4 s4 s4 s4}\\   
     {\once \override TextScript #'extra-offset = #'(-1.3 . -3.8)  \once \override NoteColumn #'force-hshift = #0.4 re4 ^\markup {\musicglyph #"scripts.mordent" }  \once \override NoteColumn #'force-hshift = #0.3 dod4 s4 s4 }
  >> 
  <sol sib>4 la4 la8. sol16 sol8.^\prallprall la16
  %  15 :
  la1 \bar"||" \break
  % --
  \time 2/2
\once \override Score.MetronomeMark #'transparent = ##t \tempo 2 = 92
  \once\override Voice.TextScript #'extra-offset = #'( -4 . 2) s1^\markup{ "Marqué."}
  s1*5
  fa'4\rest re4 do4 la4 \pageBreak
  fa'4 ^\mordent fa4 fa4 sol8 fa8 
  mi4 mi4 mi4 fa8 mi8 
  %  25 :
  re4 re4 re4 mi8 re8 
  do4 mi4 la4 do,4 
  do2 si2^\downprall
  la4 la8 si8 dod8 re8 mi8 fa8 
  sol4 sol,8 la8 si8 dod8 re8 mi8 
  % 30 :
  fa4 fa2 mi8 re8 
  dod2^\prallprall la'2 ~
  la4 sib8 la8 sol2 ~
  sol4 la8 sol8 fa2 ~
  fa4 sol8 fa8 mi2 
  % 35 :
  fa4\rest fa2 mi4 ~ 
  mi4 re2 dod4^\prallup 
  re1 
  dod4^\prallprall s4 s2 
  s1 
  % 40 :
  fa2\rest r4 sol4 
  sol4 fa4 fa4\rest fa4 
  fa4 mi4 fa4\rest mi4 
  mi4 la,4 re4 re4 
  <sib re >2 dod2^\prallprall
  % 45 :
  re4 s4 s2
  s1*7
  % (...)
  la'1 ~
  la4. sol8 sol4.^\prallprall fa8 
  % 55 :
  fa4 \once\override Voice.TextScript #'extra-offset = #'( 0 . 0.7) 
  %\set Staff.midiInstrument = "" 
  do4^\markup{\small "Cornet."} la4 fa4 %\pageBreak
  \stemDown do'2. do4 
  do2 si2^\prallup
  do4 sol'4 mi4 do4 
  la'4^\mordent la4 la4 sib8 la8 
  % 60 :
  sol4 sol4 sol4 la8 sol8 
  fa8 mi8 fa8 sol8 fa8 la8 sol8 fa8 
  mi8 re8 mi8 fa8 mi8 sol8 fa8 mi8 
  re4^\prallprall re8 do8 \stemUp si8 la8 sol8 fa8
  mi4 \stemDown mi'8 re8 do8 si8 la8 sol8 
  % 65 :
  \stemUp fad4^\prallprall re8 mi8 fad8 sol8 la8 si8 
  \stemDown do4 do2 si8^\downprall la8 
  si4 sol8 la8 si8 do8 re8 mi8 
  fa4 fa2 mi8^\downprall re8 
  mi4 mi2 re8 do8 
  % 70 :
  re4 re2 do8^\downprall si8 
  do4 do2 si8 la8 
  \stemUp sold4^\prallprall \stemDown si4 mi2^\mordent ~
  mi4 re8 do8 re2^\mordent ~
  re4 do8 si8 do2^\mordent ~
  % 75 :
  do4 si8 la8 si2 ~
  si4 \stemUp mi,4 \once\override Voice.TextScript #'extra-offset = #'(0 . 0) la2^\markup{\small \musicglyph #"accidentals.2" "  " \musicglyph #"scripts.mordent" }
  si4\rest la4 sold4^\downprall mi4 
  \stemDown do'4 do4 do4 re8 do8 
  si4^\downprall si4 si4 do8 si8 
  % 80 :
  \stemUp la4 la8 si8 \stemDown do8 re8 do8 re8 
  mi4 si8 do8 \stemUp si8 la8 sold8_\prallprall fad8 
  mi4 mi'4 do4 la4 \break
  fa'4^\mordent fa4 fa4 sol8 fa8
  mi4 mi4 mi4 fa8 mi8 
  % 85 :
  re4 re4 re4 mi8 re8 
  do4 mi4 la4 do,4 
  do2 si2^\prallprall 
  s1%\pageBreak
  s1*8
  la'2 sol2
  fa2 mi2 
  re2 do2 
  sib2 la2 
  sib4 la4 sol4 do4 
  la4^\prallprall s4 s2 
  % 103 :
  do'4\rest re,8 mi8 fa4 re4 
  mi4 s4 s2 
  s1*5
  % 110 :
  mi4\rest re2 dod4^\prallprall 
  re2 fa4\rest mi4 
  la2. re,4 
  sol2. do,4 
  fa2.^\mordent sib4 
  mi,4 mi2 la4 
  re,4 re2 sol4 
  dod,4^\prallprall la'8 sol8 fa2 
  r4 sol8 fa8 mi2 
  fa4\rest fa8 mi8 re2 
  fa4\rest mi8 re8 dod2 
  fa4\rest re2 dod4^\prallup
  re2 sol,2 ~
  sol2 \once\override Voice.TextScript #'extra-offset = #'( -2 . 1.5) fa2^\markup{ \large "Gravement."}
  mi2 mi4.^\prallprall re8 
  re1 \bar "|."
  
}

alto = \relative do' {
  \once\override Voice.TextScript #'extra-offset = #'( -3 . +0.7) fa2_\markup{\small "Grand jeu."} sib2 
  r8 mi,8 la8 sol8 sol8_\prallprall fa4 fad8 
  sol8 re8 sol8 fa8 mi4._\prallprall la8 
  la4. la8 la4. la8 
  %   5 :
  la4. re8 dod4._\prallprall dod8 
  re8 la8 re8 do8 do8_\prallprall si4 si8 
  do8 sol8 do8 sib8 sib8_\prallprall la4 do8 
  re8_\mordent do8 re8 sol,8 sol4. do8 
  do4. do8 do4. do8 
  %  10 :
  do8 re8 mi4 <la, do>4. re,8
  re4. mi8 mi4. la8 
  la4. <la dod>8 la4. la8 
  la8 sib8 la8 sol8 fad8_\prallprall sol8 la8 fad8 
  re8 [ mi8 ] fa8_\mordent [ mi8 ] <re fa>4 mi8 re8 
  %  15 :
  < dod mi >1
  % --
  \stemUp si'4\rest \once\override Voice.TextScript #'extra-offset = #'( -6 . -2) la4_\markup{ \small "Grand jeu."} fa4 re4 
  \stemDown sib'4^\mordent sib4 sib4 do8 sib8 
  \stemUp la4 la4 la4 sib8 la8 
  sol4 sol4 sol4 la8 sol8 
  %  20 :
  fa4 la4 \stemDown re4 \stemUp fa,4 
  fa2 mi2^\downprall 
  \stemDown re2 la2 
  r4 re4 re'2 
  sol,4\rest la8 si8 do4 la4 
  %  25 :
  si4 sold8 la8 si4 sold4 
  la4 la,8 si8 do4 la4 
  re4 do8 re8 mi4 mi4 
  la,4 la'2 sol8 fa8
  mi4 sol2 fa8 mi8 
  %  30 :
  re4 re8 [ mi8 ] fa8 sol8 la8 sib8 
  la2 sol2\rest 
  re'2 sol,8\rest fa'8 mi8 re8 
  do2 r8 mi8 re8 do8 
  sib2 r8 re8 do8 sib8 
  %  35 :
  la2 sol2 
  fa2 mi2 
  r4 re8  mi8  fa8 sol8 fa8 sol8 
  la4 mi'8 fa8 mi8 re8 dod8 si8 
  \stemUp la4 la4 fa4 re4 
  % 40 :
  \stemDown sib'4_\mordent sib4 sib4 do8 sib8 
  la4 la4 la4 sib8 la8 
  sol4 sol4 sol4 la8 sol8 
  fa2. <fa la>4 
  fa2 < mi la >2  
  %  45 :
  < fa la >4 la'4 fa4 re4
  sib'4 sib8 la8 sol8 fa8 mi8 re8 
  mi4 ^\mordent sol4 mi4 do4 
  la'4 la8 sol8 fa8 mi8 re8 do8 
  re4 ^\mordent re8 do8 \stemUp sib8 la8 sol8 fa8 
  %  50 :
  mi4 ^\prallprall \stemDown mi'4 do4 \stemUp la4 
  \stemDown fa'4 ^\mordent fa4 re4 sib4 
  sol'4 sol4 mi4 ^\prallprall do4 
  r4 fa8 mi8 re8 do8 sib8 la8 
  re2 mi2
  %  55 :
  < la, do >4 s4 s2
  s1*26
  s4 \once\override Voice.TextScript #'extra-offset = #'( -0.5 . -2) do8_\markup{\small "Grand jeu."} si8 la8 sol8 fa8 mi8 
  re2. re'4 
  re4 do4 sol4\rest do4 
  % 85 :
  do4 si4 r4 si4 
  si4 la2 la4 
  la2 sold2 
  \stemUp la4 \stemDown mi'4 do4 \stemUp la4 
  \stemDown fa'4 fa8 mi8 re8 do8 si8 la8 
  % 90 :
  si4 ^\mordent re4 si4 sol4 
  mi'4 mi8 re8 do8 si8 la8 sol8 
  \stemUp la4 ^\mordent \stemDown la'8 sol8 fa8 mi8 re8 do8 
  si4 ^\prallprall si4 \stemUp sol4 mi4 
  \stemDown do'4 do4 \stemUp la4 fa4 
  % 95 : 
  \stemDown re'4^\mordent re4 si4 \stemUp sol4 
  \stemDown mi'4 sol4 mi4^\prallprall do4 
  r4 fa2 mi4 ~
  mi4 re2 do4 ~
  do4 sib2 la4 ~
  % 100 :
  la4 sol2 fa4 
  fa2 mi2 
  fa4 la8 si8 do4 \stemUp la4 
  \stemDown \once \override Voice.TextScript #'extra-offset = #'(0.6  . -1.8) si4^\markup {\musicglyph #"scripts.mordent" } si8 dod8 re4 si4 
  dod4 mi8 re8 dod8 si8 la8 sol8 
  % 105 :
  \stemUp fa4 la4 fa4 re4 
  \stemDown sib'4^\mordent  sib4 sib4 do8 sib8
  \stemUp la4 la4 la4 sib8 sol8 
  sol4 sol4 sol4 la8 sol8 
  fa4 la4 \stemDown re4 \stemUp fa,4 
  % 110 :
  \stemDown fa2 mi4 la4 
  fa4 re4 la'2 
  mi4\rest la4 re4 r4 
  r4 sol,4 do4 re,4\rest 
  r4 fa4 sib2 ~
  % 115 :
  sib2 la2 ~
  la2 sol2 
  la2 r8 mi'8 re8 do!8 
  sib2 r8 re8 do8 sib8 
  la2 sol8\rest do8 sib8 la8 
  % 120 :
  sol2 r8 sib8 la8 sol8 
  fa2 mi2 
  r4 re2 mi4 
  dod2 re2 ~
  re2 dod2 
  % 125 :
  <fad, la >1 
 
} 

tenor = \relative do' {
  %  1 :
  re2. sol,4 
  la8 sol8 fa8 mi8 re4. s8 
  sol4. s8 dod,4.^\prallprall dod8 
  re8 dod8 re8 la8 re4. la8 
  %  5 :
  re8 la8 re8 sib8 la4. la'8 
  la4. la8 sol4. sol8 
  sol4. do8 do4. s8 
  s1 
  s2 fa,4. s8 
  %  10 :
  s1 
  s1 
  s2 re'4. s8 
  s1 
  s1 
  %  15 :
  la1 
  % --- Marqué
  s1*22
  %  38 :
  la2. mi'4 
  re4 r4 la2\rest 
  %  40 :
  sol1 
  s1*4
  %  45 :
  re'4 s4 s2
  mi4\rest re4 sib2
  do4 s4 s2
  r4 do4 la2
  %  49 :
  sib4 s4 s2
  s1*5
  %  55 :
  fa4 s4 s2
  s1*24
  %  80 :
  re'4\rest do8 si8 la8 si8 la8 si8 
  sold1\prallprall ~
  sold4 s4 s2 
  s1*5
  la4 s4 s2
  r4 la4 fa2
  %  90 :
  sol4 s4 s2
  r4 sol4 mi2
  fa1
  la4\rest sol8 fa8 mi8 re8 do8 si8 
  la'4\rest la8 sol8 fa8 mi8 re8 do8 
  %  95 :
  r4 si'8 la8 sol8 fa8 mi8 re8 
  r4 mi'8 re8 do8 sib8 la8 sol8 
  s1*5
  fa2 r4 fad4
  sol2 la2\rest
  la2 r4 < mi la>4
  <fa la>4 s4 s2
  s1*12
  sol4 s4 s2
  fa4 s4 s2
  mi4 s4 s2
  re4 s4 s2
  s1
  la'1
  la2. sol4
  re1
  
} 

basse = \relative do {
  re8 mi8 fa8 re8 sol8 fa8 sol8 mi8 
  la,4. la8 re,4. re'8 
  sol,4. sol'8 s2 
  s2 re,4 s4 
  %  5 :
  s2 s4. la'8 
  re4. re8 sol,4. sol8 
  do4. do8 fa4. la8 
  sib8 la8 sib8 si8 do8 si8 do8 mi,8 
  fa8 mi8 fa8 do8 fa,4. do'8 
  % 10 :
  fa8 sib8 do8 do,8 fa8 sol8 la8^\mordent fad8 
  sol8 fad8 sol8 sold8 la8 sold8 la8 dod8 
  re8 dod8 re8 la8 re,4. la'8 
  re8 sol,8 la8 la,8 re8 mi8 fad8^\prallprall re8 
  \stemUp sol8 [ sol,8 ] re'8 do8 sib4 sib4_\prallprall
  % 15 :
  la1 
  % Marqué
  \override MultiMeasureRest #'staff-position = #2 
  R1*15
  re4\rest \stemDown la'4 fa4 re4 
  %  32 :
  sib'4^\mordent sib4 sib4 do8 sib8 
  la4 la4 la4 sib8 la8 
  sol4 sol4 sol4 la8 sol8 
  fa4 la8 sib8 do4 \stemUp do,4 
  \stemDown re4 fa8 sol8 la4 \stemUp la,4 
  sib2. sib4 
  %  38 :
  \stemDown la2. la'4 
  fa4 fa8 [ mi8 re8 do8 sib8 la8 ] 
  sol2. sol4 
  re'4 re'8 mi8 fa4 re4 
  mi4 dod8 re8 mi4 dod4 
  re4^\mordent re,8 mi8 fa4 re4 
  sol4 fa8 sol8 la4 la4 
  re,4 fa'8 [ mi8 re8 do8 sib8 la8 ] 
  sol2. sol4 
  do,4 mi'8 re8 do8 sib8 la8 sol8 
  fa2. fa4 
  sib,4 sib'8 la8 sol8 fa8 mi8 re8 
  \stemUp do4 \stemDown do'8 sib8 la8 sol8 fa8 mi8 
  re4 re'8 do8 sib8 la8 sol8 fa8 
  mi4 mi'8 re8 do8 sib8 la8 sol8 
  fa2. fa4 
  sib4 sol4 do4 \stemUp do,4
  % -- Cornet 
  \stemDown fa,4 re'4\rest re2\rest
  \clef violin si''4\rest \stemUp  \once\override Voice.TextScript #'extra-offset = #'(0.0 . -1.7) fa4_\markup{\small "Positif."} mi4^\downprall do4 
  re4 mi8 fa8 sol4 sol4 
  mi8 fa8 mi8 re8 do8 re8 mi8 do8 
  fa8 mi8 fa8 sol8 fa8 mi8 re8 fa8 
  mi8 re8 mi8 fa8 mi8 re8 do8 mi8 
  re8 do8 re8 mi8 re8 fa8 mi8 re8 
  do8 si8 do8 re8 do4 \clef bass do,4  
  \stemDown sol'4 si8 la8 sol4 si4 
  \stemUp do,4 \stemDown do'8 si8 la4 do4 
  %  65 :
  re,4 re2 \stemUp do8_\downprall si8 
  la4 la8 si8 do8 re8 mi8 fad8 
  \stemDown sol4 sol2 fa8^\downprall mi8 
  re4 re8 mi8 fa8 sol8 la8 si8 
  do4 do,8 re8 mi8 fa8 sol8 la8 
  si4 \stemUp si,8 do8 re8 mi8 fad8 sold8 
  \stemDown la4 \stemUp la,8 si8 \stemDown do8 re8 mi8 fa8 
  mi4 mi'4 do4 la4 
  %  73 :
  fa'4^\mordent fa4 fa4 sol8 fa8
  mi4 mi4 mi4 fa8 mi8 
  %  75 :
  re4 re4 re4 mi8 re8 
  do4 do4 do4 re8 do8 
  si4 do8 re8 mi4 mi,4 
  la4 mi'4 la4 la,4 
  mi'2. mi,4 
  %  80 :
  fa1 
  mi1 ~
  mi4 re4\rest re2\rest 
  % -- fin Cornet.
  R1 
  re4\rest la'8 si8 do4 la4
  %  85 :
  si4 sold8 la8 si4 sold4 
  la4 \stemUp la,8 si8 do4 la4 
  re4 do8 re8 \stemDown mi4 mi4 
  la,4 do'8 si8 la8 sol8 fa8 mi8
  re2. re4
  %  90 :
  sol,4 si'8 la8 sol8 fa8 mi8 re8 
  do2. do4 
  \once\override Voice.TextScript #'extra-offset = #'( -1.0 . -0.5) fa,1_\markup{\small "Pédale."}
  sol1 
  la1 
  %  95 :
  si1 
  do1 
  fa4 la8 sib8 do4 \stemUp do,4 
  \stemDown re4 fa8 sol8 la4 \stemUp la,4 
  sib4^\mordent \stemDown re8 mi8 fa4 \stemUp fa,4 
  % 100 :
  sol4 sib8 do8 re4 re,4 
  sol4 la8 sib8 do4 do,4 
  \stemDown fa2 r4 re'4 
  sol,2 re'2 
  la2 r4 < la dod >4 
  % 105 :
  re4 fa8 mi8 re8 do8 sib8 la8 
  \stemUp sol4 \stemDown sol'8 la8 sib8 do8 re8 mi8 
  fa4 fa,8 sol8 la8 sib8 do8 re8 
  mi4 mi,8 fa8 sol8 la8 si8 dod8 
  re4 re,8 mi8 fa8 sol8 fa8 sol8 
  % 110 :
  la2 \stemUp la,2 
  re4\rest \stemDown re4 \stemUp dod4^\downprall la4
  \stemDown fa'4 fa4 fa4 sol8 fa8 
  mi4 mi4 mi4 fa8 mi8 
  re4 re4 re4 mi8 re8 
  % 115 :
  \stemUp dod4^\downprall do4 do4 re8 do8 
  si4 sib4 sib4 do8 sib8
  la4 \stemDown la'4 re4 re,4 
  sol,4 sol'4 do4 \stemUp do,4
  \stemDown fa,4 fa'4 sib4 \stemUp sib,4 
  % 120 :
  \stemDown mi,4 mi'4 la4 \stemUp la,4
  \stemDown re,4 fa'4 sol4 la4 
  sib4 la4 sib4 sol4 
  la,1 
  la1 
  % 125 :
  re,1 

}

\paper {
  betweensystempadding = 1\mm
  betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  headsep = 3\mm
  aftertitlespace = 1\mm
  indent = 1\cm
  bottommargin = 6\mm 
  %topmargin = 4\mm
}

\score {
  
  \context PianoStaff <<
    \context Staff = "dessus" <<
      \global
      \clef violin
      \set Staff.midiInstrument = "Church organ"
      \context Voice = "soprano" {
	%\override NoteSpacing #'stem-spacing-correction = #5.0
	%\override SpacingSpanner #'shortest-duration-space = #10.0
	%\override SpacingSpanner #'spacing-increment = #10.0
	\voiceOne \soprano
      }
      \context Voice = "alto" {
	\voiceTwo \alto
      }
    >>
    \context Staff = "basse" <<
      \global
      \clef bass
      \set Staff.midiInstrument = "Church organ"
      \context Voice = "tenor" {
	\voiceOne \tenor
      } 
      \context Voice = "basse" {
	\voiceTwo \basse
      }
    >>
  >>
  \layout {}
  
  \midi { \tempo 4 = 40}
}



