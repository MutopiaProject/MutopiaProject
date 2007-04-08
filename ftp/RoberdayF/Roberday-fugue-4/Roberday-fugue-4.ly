% -*- mode: LilyPond ; coding: utf-8 -*-

\version "2.6.4.3"
\include "italiano.ly" 

%% Version 3

\header{
    title = \markup {\center-align { "FUGUES, ET CAPRICES," "À QUATRE PARTIES" "mises en partition pour l'orgue" "dédiés aux amateurs de la Musique" " "} }
    subtitle = \markup \huge {FUGUE 4\small\raise #0.8 {ME}}
    piece = "" 
    instrument = \markup {\center-align { "Orgue - Organ" " " " "}}
    composer = "François Roberday (1624-1680)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Archives des maîtres de l'orgue, vol.3, 1901, Alexandre Guilmant"
    opus = ""
    lastupdated = "2006-02-17"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    mutopiatitle = "Fugue 4me"
    mutopiacomposer = "RoberdayF"
    mutopiainstrument = "Organ"
    style="Baroque"
    
    footer = "Mutopia-2006/02/24-375"
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

soprano = \relative do' {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  \time 4/2
  % 1 :
  \override MultiMeasureRest #'staff-position = #0 R\breve
  R\breve
  \override MultiMeasureRest #'staff-position = #2 R\breve
  R\breve
  % 5 :
  si'1\rest si2\rest \stemUp \tieUp do2
  sol la1 si2
  do mi, sol la 
  sol fa mi fa~
  fa mi la sol 
  % 10 :
  sol1 sol
  sol la4 do si la
  si2 do la sol~
  sol re' do1
  re2 do la sol4 fa
  % 15 :
  mi2 do'2 ~ do4 si2 la4
  sol2 re'2\rest re1\rest
  sol1 do,2 re~
  re mi fa la,
  do si4 la sol1
  % 20 :
  sol1 ~ sol2 fa2
  sol1 la1
  % --- Passage en ternaire.
  \once \override Score.MetronomeMark #'transparent = ##t \tempo 4 = 225
  \time 3/2
  sol1. 
  re1 sol2 ~
  sol1 la2 
  % 25 :
  si2 do1 ~
  do2 re1 ~ 
  re2 do1
  si2 fa'2\rest fa2\rest
  \override MultiMeasureRest #'staff-position = #4 R1.
  % 30 :
  R1. 
  R1.
  R1. 
  fa2\rest fa2\rest do2
  sol1 la2 ~
  % 35 :
  la2 si1
  do2 mi,1 
  sol2 la1~
  la2 sol2 fa2 
  mi1 fa2 ~
  % 40 :
  fa2 mi1
  la2 sol1 
  sol1. 
  sol1. ~
  sol1. 
  % 45 :
  la1. 
  si2 do1 
  la1 sol2 
  sol1 re'2 
  do1.
  % 50 :
  re2 mi2 do2
  la2 sol2 fa2
  mi2 do'1 
  si1 la2
  sol1. 
  % 55 :
  R1.
  sol'1. 
  do,1 re2 ~
  re2 mi1 
  fa1 la,2
  % 60 :
  do2 si2 la2 
  sol1. 
  sol1. 
  sol2 fa1
  sol1. 
  % 65 :
  la1.
}

alto = \relative do' {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  %  1 :
  s1 s1
  s1 s1
  \stemDown \tieDown r2 sol'2 do,2 re2 ~
  re2 mi2 fa2 la,2
  %  5 :
  do2. re4 mi2 fa2 ~
  fa2 mi1 re2
  do1 do2 si4 la4
  si2 re1 do2
  re2 do2 fa2 mi4 re4
  % 10 :
  mi1 re1
  mi1 fa1 ~
  fa2 mi2 do2 mi2
  re2 mi2\rest mi2\rest do2
  sol2 la1 si2
  % 15 :
  do2 mi4 fa4 sol2 fa2 ~
  fa2 mi2 fa2 mi4 re4
  do1. fa2 ~
  fa2 mi2 la2 fa2
  mi2 fa2 mi2. fa4
  % 20 :
  re1 mi2 fa2 ~
  fa2 mi1 re4 do4
  % --- Passage en ternaire.
  re1 do2 ~
  do2 si1
  mi1 fa2 ~
  % 25 :
  fa2 mi1
  fa2 mi2 re2
  mi1.
  r2 sol1 
  do,1 re2 ~
  % 30 :
  re2 mi1 
  fa1 la,2
  do1 re2 
  mi2 fa1 ~
  fa2 mi1 ~
  % 35 :
  mi2 re1
  do1. 
  do2 si2 la2
  si2 mi2 re2 ~
  re2 do1
  % 40 :
  re2 mi1 
  fa2 mi2 re2
  mi1. 
  re1 re2
  mi1. 
  % 45 :
  fa1. ~
  fa2 mi2 do2 ~
  do2 re2 mi2
  re1. 
  r2 do1
  % 50 :
  sol1 la2 ~
  la2 si1
  do2 mi2 fa2
  sol2 fa1~
  fa2 mi1
  % 55 :
  fa2 mi2 re2
  do1. 
  do2 fa1~
  fa2 mi2 sol2
  la1 fa2
  % 60 :
  mi2 fa1
  mi1 fa2
  re1. 
  mi2 fa1 ~
  fa1 mi2 ~
  % 65 :
  mi2 re2 do2
}

tenor = \relative do' {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  %  1 :
  \stemUp \tieUp do1 sol2 la~
  la si do mi,
  sol fa4 mi la2 fa2
  sol2. do,4 re2 fa
  %  5 :
  mi la sol la
  si do fa, mi4 re
  la'1 mi2 fad
  sol1 sol2 la
  si do1 re2~
  % 10 :
  re do1 si2
  la2\rest sol2 do, re~
  re mi fa mi4 fa
  sol1. fa2~
  fa mi fa1
  % 15 :
  sol1 sol
  sol2 la1 sib2~
  sib la4 sol la1
  si2 do1 re2
  do2 re2 ~ re4 do4 do2~
  % 20 :
  do2 si1 la2
  si2 do1 si4 la
  % --- Passage en ternaire.
  si2 sol2 do2 
  \override MultiMeasureRest #'staff-position = #7 R1.
  la2\rest do1 
  % 25 :
  sol1 la2 ~
  la2 si1 
  do1 mi,2
  sol2 fa2 mi2 
  la2 sol2 fa2 
  % 30 :
  sol1 do,2 
  re2 fa1
  mi2 la1 
  sol2 la1
  si2 do1
  % 35 :
  fa,2 mi2 re2 
  la'1 sol2 
  mi2 fad1
  sol1. 
  sol2 la1
  % 40 :
  si2 do2 do2 ~ 
  do2 re1 ~
  re2 do1 ~
  do2 si1
  la2\rest la2\rest sol2 
  % 45 :
  do,1 re2 ~
  re2 mi1 
  fa1 mi2
  sol1.
  sol1 fa2 ~
  % 50 :
  fa2 mi1
  fa1.
  sol1.
  sol1. 
  sol1 la2 ~ 
  % 55 :
  la2 sib1 ~
  sib2 la2 sol2
  la1.
  si2 do1 ~
  do2 re1
  % 60 :
  do2 re1 ~
  re2 do1 ~
  do1 si2 ~
  si2 la1 
  si2 do1 ~ 
  % 65 :
  do2 si2 la2
}

basse = \relative do {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  %  1 :
  \override MultiMeasureRest #'staff-position = #-4 R\breve
  R\breve
  R\breve
  \override MultiMeasureRest #'staff-position = #-6 R\breve
  %  5 :
  \override MultiMeasureRest #'staff-position = #-4 R\breve
  R\breve
  R\breve
  mi,1\rest \stemDown \tieDown do'1
  sol2 la1 si2
  % 10 :
  do mi, sol1
  do2 sib la fa
  sol1 la2 do~
  do si mi la,
  si do re1
  % 15 :
  mi1. re4 do
  si2 do re1
  mi1 fa
  sol fa
  la2 si,2\rest si1\rest
  % 20 :
  sol'1 do,2 re2 ~
  re2 mi2 fa1
  % --- Passage en ternaire.
  fa1 mi2 
  sol1.
  do,1. 
  % 25 :
  \override MultiMeasureRest #'staff-position = #-2 R1.
  R1. 
  R1.
  \override MultiMeasureRest #'staff-position = #-4 R1. 
  R1.
  % 30 :
  R1. 
  R1.
  R1. 
  \override MultiMeasureRest #'staff-position = #-2 R1.
  R1. 
  % 35 :
  \once \override MultiMeasureRest #'staff-position = #-4 R1.
  R1. 
  \once \override MultiMeasureRest #'staff-position = #-4 R1.
  R1. 
  do1.
  % 40 :
  sol1 la2 ~
  la2 si1
  do1 mi,2 
  sol1.
  do2 sib1 
  % 45 :
  la2 sol2 fa2
  sol1 la2 ~
  la2 si2 do2 ~
  do2 si1 
  mi1 la,2
  % 50 :
  si2 do1 
  re1.
  mi1. ~
  mi2 re2 do2
  si2 do1 
  % 55 :
  re1.
  mi1. 
  fa1.
  sol1. 
  fa1.
  % 60 :
  la2 re,2\rest re2\rest
  R1.
  si2\rest sol'1 
  do,1 re2 ~
  re2 mi1
  % 65 :
  fa1.~
}

sopranoCaprice = \relative do'' {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  %\tempo 4 = 225
  \time 4/2
  %  1 :
  sol1 ~ sol1 ~
  sol1 si1\rest
  \override MultiMeasureRest #'staff-position = #0 R\breve
  re1\rest fa2\rest fa4\rest mi4
  %  5 :
  \once \override NoteColumn  #'force-hshift = #0.3 la,2. si4 do re mi2~
  mi2 re2 do1
  si1 do1
  re2\rest do2 sol2 la2 ~
  la2 si do mi,
  % 10 :
  sol4 re sol2 si1\rest
  \override MultiMeasureRest #'staff-position = #2 R\breve
  re1\rest fa2\rest fa4\rest fa,4
  sib2 la4 sol4 la2 fa2
  mi1 fa2. sol4
  % 15 :
  la1 sol2 si4\rest mi,4
  la2 sol2 ~ sol2 fa2
  mi2. do'4 sol la si2~
  si4 sol do2 re mi
  fa la, sib si2\rest
  % 20 :
  re1\rest re2\rest do
  sol la1 si2
  do mi, sol1
  sol sol2. la4
  si1~si4 la la2
  % 25 :
  sol1 la2 sol
  \time 4/4
  sol2 do4 sol4 
  la2 si4 do4
  mi,4 sol4 ~ sol8 [ mi8 ] do'4 
  % 30 :
  si4 mi2 la,4
  si4 do4 ~ do2 
  sol2 ~ sol8 [ la8 ] si4
  do4 la4 sol2 ~
  sol2 si4\rest sol
  % 35 :
  do, re2 mi4 
  fa4 mi4 sol4 fa8 [ mi8 ]
  fa2. mi8 [ re8 ] 
  mi4 fa'4\rest fa2\rest 
  \override MultiMeasureRest #'staff-position = #4 R1 
  % 40 :
  R1
  fa4\rest do4 sol2 
  la4 si4 do4 mi,4
  sol4 re'4 mi4 si8 [ la8 ] 
  si4 do2 la4
  % 45 :
  re,4 mi8 [ fa8 ] sol4 la8 [ si8 ] 
  do4 la4 si4 do4 
  la4 sol4 ~ sol8 la4 la8 
  sol2. fa4 ~
  fa mi4 re2 
  \override Script #'padding = # 0.8 mi1^\fermata
}
altoCaprice = \relative do' {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  %  1 :
  re2 mi2 re1
  mi1 r1
  s\breve
  r2 mi2 la2 sol2 ~
  %  5 :
  \once \override NoteColumn  #'force-hshift = #-0.7 sol2 fa2 mi2 do'2
  la2 si1 la2 ~
  \once \override NoteColumn  #'force-hshift = #0.8 la sol1 fa2
  mi2 si2\rest si2\rest r4 do4
  fa2 mi4 re4 mi2 do2
  % 10 :
  si la4 sol do2 do4\rest mi
  la,2. si4 do re mi2~
  mi4 do do'2 do,1\rest
  \override MultiMeasureRest #'staff-position = #-6 R\breve
  \override MultiMeasureRest #'staff-position = #-8 R\breve
  % 15 :
  R\breve
  \override MultiMeasureRest #'staff-position = #-6 R\breve
  R\breve
  r1 mi2\rest sol2  
  do,2 re1 mi2 
  % 20 :
  fa2 la,2 do2 fa2 ~
  fa2 mi2 re1
  do1 do2\rest do4\rest si4
  mi2 re2 ~ re2 do2
  si2 sol'2 mi2 fa2 ~
  % 25 :
  fa2 mi2 re1
  % --- passage en 4/4
  mi2 mi2\rest 
  \override MultiMeasureRest #'staff-position = #-4 R1
  \override MultiMeasureRest #'staff-position = #-6 R1
  si4\rest sol'4 do,4 re4 ~
  % 30 :
  re4 mi4 fa4 la,4 
  do4. re8 mi4 re4
  do2 re4 mi4 ~ 
  mi4 do2 si4 
  do4 fa,4\rest fa2\rest 
  % 35 :
  fa4\rest do'4 sol4 la4 ~
  la4 si4 do4 si4 
  do4 mi4 do'4 la4 
  sib4. do8 la4 sol
  re2. do4
  % 40 :
  do2 re4 mi4 
  R1
  si4\rest sol'4 do,4 re4 ~
  re4 mi4 fa4. la,8
  si4 do8 [ re8 ] mi4 fa4 
  % 45 :
  mi4 fa2 mi4 
  fa4 mi8 [ re8 ] mi4 fa4 ~
  fa mi2 re4 ~
  re do2 si4 
  do1
}

tenorCaprice = \relative do' {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  %  1 :
  si2 do1 si2
  do1 r2 mi4\rest do4
  fa2 mi4 re mi2 do
  si do do1~
  %  5 :
  do2 re2 la1 
  R\breve
  r2 r4 mi'4 la,2. si4
  do4 re4 mi2. mi,4 fa2 ~
  fa2 sol2 si1\rest
  % 10 :
  \override MultiMeasureRest #'staff-position = #7 R\breve
  \override MultiMeasureRest #'staff-position = #4 R\breve
  r2 r4 sol'4 do,2 re~
  re mi2 fa la,
  do1 ~ do2 sib2
  % 15 :
  la2 fa'2 mi2 la,2\rest
  la2\rest si4\rest si4 mi2 re2 ~
  re2 do2 si2 sol'2
  mi2 re4 do4 si2 do2
  la2 fa1 sol2
  % 20 :
  do,2 fa2 mi2 re4 do4
  si2 do2 si'1\rest
  \override MultiMeasureRest #'staff-position = #2 R\breve
  la2\rest r4 si4 mi,2. fad4 
  sol4 la4 si2 do2 si4 la4
  % 25 :
  si2 do1 si2
  % --- Passage en 4/4
  do2 la2\rest 
  la4\rest do4 sol4 la4 ~
  la4 si4 do4 mi,4
  sol4 do4 la4 fa4
  % 30 :
  sol2 la4 fa4 ~
  fa4 mi4 sol2 ~
  sol4 fa2 mi4 ~
  mi2 re4 mi'4\rest
  \override MultiMeasureRest #'staff-position = #11 R1 
  % 35 :
  \override MultiMeasureRest #'staff-position = #7 R1
  R1 
  r4 sol,4 do,4 re4 ~
  re4 mi4 fa4 mi8 [ fa8 ] 
  sol2 sol2
  % 40 :
  la2 si4 do4 
  fa,2 mi2
  re2 sol4 fa4
  sol2 la4 fa4 ~
  fa mi4 ~ mi8 [ re8 ] re4
  % 45 :
  do4 do'8\rest do8 sol4 la4 ~
  la4 si4 do4 la4 
  si4 do4 la2
  sol1 
  \override Script #'padding = # 1 sol1^\fermata
}

basseCaprice = \relative do {
  \override Tie #'staffline-clearance = #0.5
  \override Tie #'x-gap = #0.1
  \override Tie #'y-offset = #0.9
  \time 4/2
  %  1 :
  fa2 mi2 sol1
  do,2 do'2 sol2 la2 ~
  la2 si2 do2 mi,2
  sol1 fa2 mi2
  %  5 :
  fa2 re2 \once \override NoteColumn  #'force-hshift = #0.8 la'2 si,4\rest do4
  fa2 mi4 re4 mi2 do2
  sol'2 mi2 sol,1\rest
  \override MultiMeasureRest #'staff-position = #-4 R\breve
  R\breve
  % 10 :
  si2\rest mi2 la2 sol2 ~
  sol2 fa2 mi2 do'2
  la2 mi2 la2 fa2 
  sol1 fa1
  si,2\rest la'2 re,2. mi4
  % 15 :
  fa4 sol4 la4 si4 do2 do,2 ~
  do4 re4 mi2 sol,1\rest
  R\breve
  R\breve
  sol2\rest sol4\rest sol4 sib2 la4 sol
  % 20 :
  la2 fa mi1\rest
  mi2\rest re4\rest do'4 fa2 mi4 re4
  mi2 do2 si2 sol2
  do2 si2 mi,1\rest
  sol2\rest sol4\rest sol'4 do,2 re2 ~
  % 25 :
  re2 mi2 fa2 sol2
  % --- Passage en 4/4
  do,1 
  \override MultiMeasureRest #'staff-position = #-2 R1
  R1 
  R1
  % 30 :
  R1 
  sol2\rest do4 sol4
  la2 si4 do4 
  mi,2 sol4 sol'4
  la4 fa4 sib4 la8 [ sol8] 
  % 35 :
  la2 mi4 do4 
  re2 mi4 sol4
  do,4. sib8 la4 fa4
  sol2 la4 do4 ~
  do4 si4 mi2
  % 40 :
  fa2. mi4 ~
  mi4 re2 do4 ~
  do4 si4 mi4 fa4 ~
  fa4 mi4 la,4. fa8
  sol1 
  % 45 :
  do2 sol2\rest
  sol4\rest sol'4 do,4 re4 ~
  re4 mi4 fa2
  si,4 do4 sol2 
  \override Script #'padding = # 0.8 do1_\fermata
}
	    
\book {

  \score {
    \context PianoStaff <<
      \context Staff = "dessus" <<
	\clef violin
	\set Staff.midiInstrument = "Church organ"
	\context Voice = "soprano" {\voiceOne \soprano}
	\context Voice = "alto" {\voiceTwo \alto}
      >>
      \context Staff = "basse" <<
	\clef bass
	\set Staff.midiInstrument = "Church organ"
	\context Voice = "tenor" {\voiceOne \tenor} 
	\context Voice = "basse" {\voiceTwo \basse}
      >>
    >>
    \layout {}
    \midi { \tempo 4 = 150} 
  }
	    
  \markup {\fontsize #3.5 "FUGUE, REVERS ET 2 AUTRES SUJETS."}

   \score {
    \context PianoStaff <<
      \context Staff = "dessus" <<
	\clef violin
	\set Staff.midiInstrument = "Church organ"
	\context Voice = "soprano" {\voiceOne \sopranoCaprice}
	\context Voice = "alto" {\voiceTwo \altoCaprice}
      >>
      \context Staff = "basse" <<
	\clef bass
	\set Staff.midiInstrument = "Church organ"
	\context Voice = "tenor" {\voiceOne \tenorCaprice} 
	\context Voice = "basse" {\voiceTwo \basseCaprice}
      >>
    >>
    \layout {}
    \midi { \tempo 4 = 150}
  }
}
