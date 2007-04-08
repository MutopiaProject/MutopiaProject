% -*- mode: LilyPond ; coding: utf-8 -*-

\version "2.6.4.3"
\include "italiano.ly" 

%% Version 0

\header{
    title = \markup {\center-align { "FUGUES, ET CAPRICES," "À QUATRE PARTIES" "mises en partition pour l'orgue" "dédiés aux amateurs de la Musique" " "} }
    subtitle = \markup \huge {FUGUE 1\small\raise #0.8 {RE}}
    piece = "" 
    instrument = \markup {\center-align { "Orgue - Organ" " " " "}}
    composer = "François Roberday (1624-1680)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Archives des maîtres de l'orgue, vol.3, 1901, Alexandre Guilmant"
    opus = ""
    lastupdated = "2006-01-30"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    
    mutopiatitle = "Fugue 1re"
    mutopiacomposer = "RoberdayF"
    mutopiainstrument = "Organ"
    style="Baroque"
    
    footer = "Mutopia-2006/02/04-660"
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

global = {
  \key fa \major
  \time 4/2
}

soprano = \relative do''' {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  % 1:
  s\breve
  s\breve
  R\breve
  R\breve
  % 5:
  \once \override MultiMeasureRest #'staff-position = #2 R\breve
  R\breve
  R\breve
  fa,2\rest sol2 fad2 la2 
  re,2 sol4 fa4 mi4 re4 mib2 
  % 10:
  re\breve
  | re1 re4 do4 si2 
  | sib!2 la1 sol2
  | la2. sol4 fa2 re'2\rest 
  | R\breve
  % 15:
  re1 si2 re2 
  sol,2 re'4 do4 si4 la4 sib2 
  la2 re1 do2 ~
  do4 sib4 la4 sol4 fad!2 sol2 
  do,2 do'2 re2 re2\rest 
  % 20:
  \once \override MultiMeasureRest #'staff-position = #2 R\breve
  si2\rest re2 si2 re2 
  sol,2 re'4 do4 si4 la4 sib2 
  la1 sib2 la4 sol4 
  la2 mi2 fad2 sib2 
  % 25:
  do1. sib2 
  la1 sol1 
  sol1 sol4 fa4 mi4 re4 
  sol2 si2\rest si1\rest 
  \once \override MultiMeasureRest #'staff-position = #2 R\breve
  % 30:
  fa'2\rest sol2 fad2 la2 
  re,2 sol4 fa4 mi4 re4 mib2 
  re1 re1 
  \once \override Script #'padding = # 0.8 re\breve^\fermata \bar "||" \break
  % --- passage en ternaire.
  \once \override Score.MetronomeMark #'transparent = ##t \tempo 4 = 160
  \time 3/1
  s1. s1.
  % 35 :
  s1. s1.
  s1. r1.
  r1. r1.
  r1. r1.
  r1. r1.
  % 40 :
  r1. fa2\rest fa2\rest sol2 
  fad2 la1 re,2 sol2 fa?2 
  mi2 re2 mib2 re1. 
  re1. ~ re2 si1 
  sib!2 la1 ~ la1 sol2 
  % 45 :
  la1 sol2 fad2 sol1 
  la1 mi2 fad2 sib1 ~
  sib1 la2 sib2 la2 sol2 
  la1. sol1. 
  sol1. sol2 fa2 mi2 
  % 50 :
  fad2 sol1 la2 si2\rest si2\rest 
  re2\rest re1 si2 re1 
  sol,2 re'2 do2 si2 la2 sib2 
  la2 si2\rest si2\rest si1.\rest 
  si2\rest si2\rest sol2 fad2 la1 
  % 55 :
  re,2 sol2 fa2 mi2 re2 mib2 
  re1. mib2 re1 
  \once \override Script #'padding = # 0.5 re\breve.^\fermata \bar "|."
}

alto = \relative do'' {
  %1:
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9

  \once \override MultiMeasureRest #'staff-position = #0 R\breve
  \once \override MultiMeasureRest #'staff-position = #0 R\breve
  sol1\rest re'1 
  si2 re2 sol,2 re'4 do4 
  % 5:
  si4 la4 sib2 la2 \tieUp re2 ~
  re4 \tieDown sol,4 do1 sib4 do4 
  re4 do4 si4 la4 sib2 la2 ~
  la2 sol2 la1 ~
  la2 sol2 sol2 do2 ~
  % 10:
  do2 sib4 la4 sib4 la4 sol2 ~
  sol2 fa4 mi4 re1 
  re1 re1 ~
  re2 dod2 re2 fad2 
  sol2 fad4 \tieUp sib4 ~ sib4 \tieDown la8 [ sol8 ] la2 ~
  % 15:
  la2 sol2 ~ sol4 fa4 mi4 re4 
  mi2 fad2 sol2 re4 mi4 
  fa1 sol1 
  la4 sol4 fad4 mi4 re1 
  fa,2\rest sol'2 fad2 la2 
  % 20:
  re,2 sol4 fa4 mi4 re4 mib2 
  re1 re1 
  mi2 re2 re2 sol2 ~
  sol2 fa2 re2 do4 sib4
  la2 do2 re1 
  % 25:
  do1 re1 
  mi2\rest re2 si2 re2 
  sol,2 re'4 do4 si4 la4 sib2 ~
  sib2 la4 sol4 la4 re2 mi4 
  fa4 sol4 la2 sib2 la2 ~
  % 30:
  la2 sol2 la1 ~
  la2 sol2 sol2 do2 ~
  do2 sib2 la1 
  si\breve
% --- passage en ternaire.
  \time 3/1
  si1.\rest si1.\rest
  % 35 :
  si1.\rest si1.\rest
  si1.\rest sol2\rest re'1 
  si2 re1 sol,2 re'2 do2 
  si2 la2 sib2 do2 sol2 la2 
  sib1 do2 re2 si2 la2 
  % 40 :
  sib!2 la1 la1 sol2 
  la1. ~ la2 sol1 ~
  sol1 do2 ~ do2 sib2 la2 
  sol2 fa2 mi2 re1. 
  re1. re1. ~
  % 45 :
  re2 do1 ~ do2 sib1 
  la2 do1 re1. 
  do2 mi2\rest mi2\rest r1. 
  mi2\rest re1 si2 re1 
  sol,2 re'2 do2 si2 la2 sib2 
  % 50 :
  la1. la2 sib2 do2 
  re1. re1. 
  mi2 re1 re1. 
  re1. re1. 
  re1 do2 re1 do2 
  % 55 :
  sib1. ~ sib1 la2 
  la1 sib2 la1. 
  si\breve. 

}

tenor = \relative do'' {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  % 1 :
  sol1 fad2 la2 
  re,2 sol4 fa4 mi4 re4 mib2 
  re2. mi4 fa2 fad2 
  sol2 si,!4 la4 sib2 \tieDown la2 ~
  % 5 :
  la2 \tieUp sol2 re'2 do4 sib4 
  mib2 mi2 fad2 sol2 ~
  sol2 fad2 sol2 fa2 
  re2 mi4 re4 do2 sib4 la4 
  sib2 si1 la4 sol4 
  % 10 :
  fad1 sol4 la4 sib2 
  la1. sol4 fad4 
  sol2 sol1 mi4 re4 
  fa2 mi2 re2 do'4\rest re4 
  si2 re2 sol,2 re'4 do4 
  % 15 :
  si4 la4 sib2 sol2 si2 
  do2 sib4 la4 sol1 
  re'2 do4 sib4 mib1 
  re2 do1 sib2 ~
  sib2 la4 sol4 la2 mi2 
  % 20 :
  fad2 sib1 la2 ~
  la2 sol1 si2 
  do2 sib4 la4 sol1 
  la2 r2 r2 sol2 
  fad2 la2 re,2 sol4 fa4 
  % 25 :
  mi4 re4 mib2 re2. mi4 
  fa2 fad2 sol1 
  mib2 re2 re2 sol2 ~
  sol4 fa4 mi2 fa2 sol2 
  la2 la4 re4 ~ re4 mi4 fa2 
  % 30 :
  re4 fa4 mi4 re4 do2 sib4 la4 
  sib1. la4 sol4 
  fad2 sol1 fad2 
  \once \override Script #'padding = # 0.8 sol\breve^\fermata
% --- passage en ternaire.
  sol'1. fad2 la1 
  % 35 :
  re,2 sol2 fa2 mi2 re2 mib2 
  re1 mi2 fa1 fad2 
  sol1 fa!2 mib2 sib2 la2 
  sol1 sol'2 mib2 mi1 
  fad2 sol1 ~ sol2 fad!1 
  % 40 :
  sol2 fa!1 re1. 
  do2 si2 la2 sib2 si1 
  do1. fad,2 sol2 la2 
  sib2 la1 ~ la2 sol2 fad2 
  sol2 fa!1 re1. 
  % 45 :
  fa2 mi1 re2 r2 sol2 
  fad2 la1 re,2 sol2 fa?2 
  mi2 re2 mib2 re2 mi!1 
  fa1 fad2 sol1 fa2 
  mib2 re1 re1. 
  % 50 :
  re1 mi2 fad2 sol2 la2 ~
  la1 sol2 sol1 fa2 
  mi2 fad1 sol1. 
  fad2 sib1 la2 sib1 
  sol1. la2 fad1 
  % 55 :
  sol1. sol1. 
  fad2 re2 sol2 sol1 fad!2 
  sol\breve.
}

basse = \relative do' {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  R\breve 
  R\breve
  R\breve 
  R\breve
  R\breve 
  r1 re1 
  si2 re2 sol,2 re'4 do4 
  si4 la4 sib2 la2 fad2 
  sol1 do,1 
  R\breve
  re1 si2 re2 
  sol,2 re'4 do4 si4 la4 sib2 
  la1 re2 r2 
  R\breve
  R\breve
  R\breve
  r1 sol1 
  fad2 la2 re,2 sol4 fa4 
  mi4 re4 mib2 re2 do2 ~
  do2 sib2 do1 
  sib1 sol2 sol'2 
  mi2 fa1 mi4 re4 
  dod2 re2 sol,1 
  re'2 do1 sib2 ~
  sib2 la4 sol4 fad2 sol2 
  re'1 mib2 si2 
  do2 sib4 la4 sol1 
  sol1 re'1 
  re4 mi4 fa2 sol2 re'2 
  sib1 la2 fad2 
  sol4 fa4 mi4 re4 do1 
  re1 re1 
  \once \override Script #'padding = # 0.8 sol,\breve_\fermata
% --- passage en ternaire.
  mi1.\rest mi1.\rest
  mi1.\rest mi1.\rest
  mi1.\rest mi1.\rest
  mi1.\rest mi1.\rest
  mi1.\rest mi1.\rest
  re''1. si2 re1 
  sol,2 re'2 do2 si2 la2 sib2 
  la2 fad1 sol1. 
  sol,1.\rest sol1.\rest 
  si2\rest re1 si2 re1 
  sol,2 re'2 do2 si2 la2 sib2 
  la1. re1. 
  re2 do1 ~ do2 sib1 
  do1. sol1. 
  re'1. mib2 si1 
  do2 sib2 la2 sol1. 
  re1. re'1 do2 
  sib1. sol2 si1 
  do2 sib2 la2 sol1. 
  re'1 mi2 fad!2 sol2 fa2 
  mi2 re2 mib2 re1. 
  re1. do1. ~
  do1 sib2 do2 re1 
  \once \override Script #'padding = # 0.8 sol,\breve._\fermata
}

sopranoCaprice = \relative do'' {
  % 1 :
  \once \override MultiMeasureRest #'staff-position = #2 R1
  R1
  R1
  R1
  % 5 :
  fa2\rest re4 re8 [ re8 ]
  si4 re4 sol,8 re'4 do8 
  si8 [ la8 ] sib4 la2 
  sib4 do4 re2 
  re2. do4 
  % 10 :
  sib4. do8 re2 
  do4 sib8 [ la8 ] si4 re4 ~
  re4 do2 sib!4 
  la2 sol2 ~
  sol4 fa2 mi4
  % 15 :
  fa4 fad4 sol4 fad4 
  sib4 la4 re2 
  la8 re4 do8 si4 sib4 ~
  sib4 la4 fad4 sol4 
  re'4 la4 sib4 la4 ~
  % 20 :
  la4 sol2 fad4 
  sol4 sib4 la8 [ do8 sib8 la8 ]
  sib4 la4 fa'8\rest re8 [ re8 re8 ]
  si4 re4 sol,8 re'4 do8 
  | si8 ([ la8 ]) sib4 la2 
  % 25 :
  | sol1^\fermata
  \once \override Score.MetronomeMark #'transparent = ##t \tempo 4 = 160
  | R1.
  | R1.
  | R1.
  | R1.
  % 30 :
  | r2. fa'8\rest re8 [ do8 ] si8 [ do8 re8 ]
  | sol,8 [ re'8 do8 ] si8 [ la8 sib8 ] la8 re4 ~ re4. 
  re2. re4. do4. ~
  do8 [ sib8 la8 ] sol4. la4. si8 la4 
  sib!4. re4. do4. ~ do8 [ sib8 la8 ]
  % 35 :
  sib4. la2. sol4. 
  fad4. sol4. ~ sol8 [ fa8 sol8 ] la8 [ sib8 do8 ]
  re2. re2. 
  do4. ~ do8 [ sib8 la8 ] sib4. fa'4\rest fa8\rest 
  \once \override MultiMeasureRest #'staff-position = #6 R1.
  % 40 :
  fa8\rest sol8 [ sol8 ] fad8 [ sol8 la8 ] re,8 [ sol8 fa8 ] mi8 [ re8 mib8 ]
  re8 [ sol,8 la8 ] sib8 [ do8 re8 ] do8 [ la8 sib8 ] do8 [ re8 la8 ]
  sib4. la8 [ sib8 do8 ] re4. sol4 do,8 
  sib4. la2. sol4. 
  re8 [ re'8 do8 ] sib8 [ la8 sol8 ] do8 [ re8 do8 ] si8 [ do8 la8 ]
  % 45 :
  \once \override Script #'padding = # 0.4 si1.^\fermata \bar "|."
}

altoCaprice = \relative do'' { % Halte aux caprices !
  \time 4/4
  % 1 :
  s1
  sol2\rest sol4 sol8 [ sol8 ]
  fad4 la4 re,8 sol4 fa8 
  mi8 [ re8 ] mib4 re4 mi4 
  % 5 :
  fad8 [ sol8 ] la2 sol4 ~
  sol4 fa2 mi4 
  fad4 sol4 ~ sol4 fad4 
  sol4 mib4 re8 [ la'8 sol8 fad8 ]
  sib4. la8 sol4 la4 ~
  % 10 :
  la8 [ sol8 ] sol4 sol2 
  la4 fad4 sol2 
  R1 
  r8 re8 [ re8 re8 ] si4 re4 
  sol,8 re'4 do8 si8 [ la8 ] sib4 
  % 15 :
  la4 la4\rest la2\rest
  r2 sol'4 sol8 [ sol8 ]
  fad4 la4 re,8 sol4 fa8 
  mi8 [ re8 ] mib4 re2 ~
  re2 re4 fa4 
  % 20 :
  re2 do4 sib8 [ la8 ]
  sib4 re4 re4 fad4 
  sol4 fad4 sol2 ~
  sol4 re4 re2 
  re1 
  % 25 :
  si1 \bar "||" \break
  \time 12/8
  sol'4 sol8 fad8 [ sol8 la8 ] re,8 [ sol8 fa8 ] mi8 [ re8 mib8 ]
  re8 [ re'8 la8 ] sib8 [ la8 sol8 ] fad4. sol4. 
  sib?4. re4. do8 [ re8 do8 ] si8 [ do8 la8 ]
  sib4. re4 do8 sib4. do4. ~
  % 30 :
  do4. sib4. la4. r4 r8 
  s8 s8 s8 s8 s8 s8 s8 s8 s8 s8 s8 s8 
  r8 sol8 [ sol8 ] fad8 [ sol8 la8 ] re,8 [ sol8 fa8 ] mi8 [ re8 mib8]
  re4. ~ re8 mi4 fad4. sol8 fad4 
  sol2. ~ sol8 [ fa8 mi8 ] re4. 
  % 35 :
  re2. ~ re4. ~ re4 do8 ~
  do8 [ sib8 la8 ] sib8 [ la8 sol8 ] re'4 mi8 fad8 [ sol8 la8 ]
  sib4 la8 sol8 fad4 sib4 la8 sol4. ~ 
  sol8 [ fa8 mi8 ] fad4. sol4. la4. 
  sib4. do4. re4 do8 sib8 la4 %\break
  % 40 :
  sol4. mi4\rest mi8\rest mi2.\rest 
  R1. 
  R1. 
  mi8\rest sol8 [ sol8 ] fad8 [ sol8 la8 ] re,8 [ sol8 fa8 ] mi8 [ re8 mib8 ]
  sib2. la4. re4. 
  % 45 :
  re1. 
}

tenorCaprice = \relative do' {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  \time 4/4
  % 1 :
  re4 re8 [ re8 ] si4 re4 
  sol,8 re'4 do8 si8 [ la8 ] sib4 
  la4 sol8 [ fad8 ] sol4 si4 
  do4 sib!8 [ la8 ] sib4 la8 [ sol8 ]
  % 5 :
  re'4 do4 si8 [ la8 ] sib4 
  sol4. la8 si4 do4 
  re4 do8 [ sib8 ] do4 re4 
  re4 do4 do2 
  sib4 re4 la2\rest 
  % 10 :
  la2\rest la8\rest sol8 [ sol8 sol8 ]
  fad4 la4 re,8 sol4 fa8 
  mi8 [ re8 ] mib4 re4 mi4 
  fa4 fad4 sol4 re4 
  re2 fa2\rest
  % 15 :
  la8\rest re8 [ re8 re8 ] si4 re4 
  sol,8 re'4 do8 si8 [ la8 ] sib4 
  re4 fad,4 sol2 
  do2. sib4 
  sol4 fad4 sol4 r4 
  % 20 :
  R1 
  la8\rest sol8 [ sol8 sol8 ] fad4 la4 
  sol8 re'4 do8 si8 [ la8 ] sib4 
  sol4 fad4 sib4 la4 ~
  la4 sol4 ~ sol8 [ sol8 ] fad4 
  % 25 :
  \once \override Script #'padding = # 0.8 sol1^\fermata
  \time 12/8
  s1.
  r2. do8\rest re8 [ do8 ] si8 [ do8 re8 ]
  sol,8 [ re'8 do8 ] si8 [ la8 sib8 ] la4. re4. 
  sol4. la4. ~ la4. sol4. 
  % 30 :
  fad4. sol4. re2. ~
  re4. sol4. ~ sol4 fad8 la8 [ la,8 do8 ]
  sib4. la4. sol4. la4. 
  fad8 [ sol8 la8 ] sib8 [ la8 sol8 ] re'2. 
  re2. r2.
  % 35 :
  la8\rest sol8 [ sol8 ] fad8 [ sol8 la8 ] re,8 [ sol8 fa8 ] mi8 [ re8 mib8 ]
  re2. re2.\rest 
  do'8\rest re8 [ re8 ] si8 [ do8 re8 ] sol,8 [ re'8 do8 ] si!8 [ la8 sib8 ]
  la4. re4. re2. 
  re4. sol4. fad8 [ sol8 la8 ] re,8 do4 
  % 40 :
  sib4. do4. re4. do4. 
  sib2. la2. 
  sol8 [ sol'8 sol8 ] fad8 [ sol8 la8 ] re,8 [ sol8 fa8 ] mi8 [ re8 mib8 ]
  re4. ~ re4 do8 si4. sib4 la8 ~
  la4. sol2. fad4. 
  % 45 :
  \once \override Script #'padding = # 0.4 sol1.^\fermata 

}

basseCaprice = \relative do {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  % 1 :
  \override MultiMeasureRest #'staff-position = #-2 R1
  R1
  R1
  R1
  % 5 :
  R1
  R1
  R1
  sol'4 sol8 [ sol8 ] fad4 la4 
  re,8 sol4 fa8 mi8 [ re8 ] mib4 
  % 10 :
  re4 mib4 si4 sib4 
  la2 sol2 ~
  sol2 sol2 
  re'2 mib4 si4 
  sib!4 la4 sol2 
  % 15 :
  re2 sol2\rest 
  R1 
  \once \override MultiMeasureRest #'staff-position = #-4 R1 
  sol2\rest r8 re'8 [ re8 re8 ]
  si4 re4 sol,8 re'4 do8 
  % 20 :
  si8 [ la8 ] sib4 la4 re4 
  sol,2 re'2 ~ 
  re1 ~
  re1 ~
  re1 
  % 25 :
  \once \override Script #'padding = # 0.8 sol,1_\fermata
% ---
  \time 12/8
  \once \override MultiMeasureRest #'staff-position = #0 R1.
  R1.
  R1.
  r8 sol'8 [ sol8 ] fad8 [ sol8 la8 ] re,8 [ sol8 fa8 ] mi8 [ re8 mib8 ]
  % 30 :
  re8 [ re'8 la8 ] sib8 [ la8 sol8 ] fad4. sol4. 
  si4. ~ si4 do8 re4 re,8 fad4. 
  sol4. re4. si4. do4. 
  sol2.\rest si8\rest re8 [ do8 ] si8 [ do8 re8 ]
  sol,8 [ re'8 do8 ] si8 [ la8 sib8 ] la4. fad4. 
  % 35 :
  sol4. re'4. sib4. si4 do8 
  re4. r4 r8 r2. 
  R1. 
  si2.\rest si8\rest sol'8 [ sol8 ] fad8 [ sol8 la8 ] 
  re,8 [ sol8 fa8 ] mi8 [ re8 mib8 ] re4. re8 [ mi8 fad8 ]
  % 40 :
  sol4. la4. sib4. ~ sib4 la8 ~
  la4. sol2. fad4. 
  sol4. re'4. sib4. sol4. 
  sol4. re4. ~ re2. 
  re1. 
  % 45 :
  \once \override Script #'padding = # 0.4 sol,1._\fermata
}

\book {

  \score {
    \context PianoStaff <<
      \context Staff = "dessus" <<
	\global
	\clef violin
	\set Staff.midiInstrument = "Church organ"
	\context Voice = "soprano" {\voiceOne \soprano}
	\context Voice = "alto" {\voiceTwo \alto}
      >>
      \context Staff = "basse" <<
	\global
	\clef bass
	\set Staff.midiInstrument = "Church organ"
	\context Voice = "tenor" {\voiceOne \tenor} 
	\context Voice = "basse" {\voiceTwo \basse}
      >>
    >>
    \layout {}
    \midi { \tempo 4 = 130} % Les tempi sont un peu fantaisistes !
  }
	    
  \markup {\fontsize #3.5 "CAPRICE SUR LE MÊME SUJET"}

   \score {
    \context PianoStaff <<
      \context Staff = "dessus" <<
	\global
	\clef violin
	\set Staff.midiInstrument = "Church organ"
	\context Voice = "soprano" {\voiceOne \sopranoCaprice}
	\context Voice = "alto" {\voiceTwo \altoCaprice}
      >>
      \context Staff = "basse" <<
	\global
	\clef bass
	\set Staff.midiInstrument = "Church organ"
	\context Voice = "tenor" {\voiceOne \tenorCaprice} 
	\context Voice = "basse" {\voiceTwo \basseCaprice}
      >>
    >>
    \layout {}
    \midi { \tempo 4 = 130}
  }
}

