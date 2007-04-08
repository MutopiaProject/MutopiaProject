% -*- coding: utf-8 -*-
\version "2.6.3"
\include "italiano.ly" 

%% Version 2.0
%% Ralentissement du tempo à 50 à la ronde.

\header{
    title = \markup {\center-align { "FUGUES, ET CAPRICES," "À QUATRE PARTIES" "mises en partition pour l'orgue" "dédiés aux amateurs de la Musique" " "} }
    subtitle = "FUGUE 5e"
    piece = "" 
    instrument = \markup {\center-align { "Orgue - Organ" " " " "}}
    composer = "François Roberday (1624-1680)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Archives des maîtres de l'orgue, vol.3, 1901, Alexandre Guilmant"
    opus = ""
    lastupdated = "2005-12-11, 3e dimanche de l'Avent"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    
    mutopiatitle = "Fugue 5e"
    mutopiacomposer = "RoberdayF"
    mutopiainstrument = "Organ"
    style="Baroque"
    
    footer = "Mutopia-2005/12/12-643"
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

global = {
  \key do \major
  \time 4/2
}

soprano =  \relative do' {
  \once \override Score.MetronomeMark #'transparent = ##t \tempo 1 = 50
    re2. mi4 fa2 fad2 
  | sol2 la2 re,2 re'4\rest re4 ~
  | re4 do4 si2 sib2 la2 
  | sol2 re'2 fad,2 sib2 
  | fa2 mi4 re4 sol2. mi4 
  % 6 :
  | la2 sol2 \once \override NoteColumn  #'force-hshift = #0.5 fa2. sol4 
  | la4 do4 sib4 la4 sol2 fa4 mi4 
  | fa2 sol2 ~ sol2 fad2 
  | re'2. re4 do4 si8 [ la8 ] sib2 
  | la2. re,4 sol2 la2 
  | re,1 mi2 re2 
  % 12 :
  | mi1 re'1\rest 
  | fa4\rest re2 do4 si2 sib2 
  | la2 sol2 re'1 
  | do1 do4 si4 la4 sol4
  | fa2 mi2 ~ mi4 la4 sol4 fa4 
  % 17 :
  | mi2 si'2\rest re1\rest 
  | \once \override MultiMeasureRest #'staff-position = #2 R\breve
  | si1\rest si4\rest la2 si!4 
  | do2 dod2 re2 mi2 
  % ---
  | la,2 sib2 ~ sib4 la4 la2 ~
  | la2 sol2 la1 
  | si4 do4 re2 ~ re4 do4 sib2 
  | la2 sol2 fa2 mi2 
  | fad2 la2 ~ la4 sol4 fa!2 
  | mi2 la2 ~ la2 sol2 
  | la1 re,1 
  % 28 :
  | \once \override MultiMeasureRest #'staff-position = #2 R\breve
  | \once \override MultiMeasureRest #'staff-position = #2 R\breve
  | fa'4\rest re2 do4 si2 sib2 
  | la2 sol2 re'1 
  | la1 ~ la2 la2 ~
  | la4 sol2 fa8 [ mi8 ] fa2 mi2 ~
  | mi2 fa4 sol4 la2. sol4 
  | fad\breve^\fermata  \bar "||" \break
  % --- reprise :
  | re2 mi2 fa2 fad2 
  | sol2 la2 mi4. fad8 sol2 ~
  | sol4 mi4 la2 la2. sol4 ~
  | sol4 fa4 mi2 fa2 mi2 
  % 40 :
  | \once \override MultiMeasureRest #'staff-position = #2 R\breve
  | \once \override MultiMeasureRest #'staff-position = #2 R\breve
  | si'1\rest re4\rest la2 sold4 
  | la4 mi2 mi'4 re8 [ do!8 si8 la8 ] sold8 [ si8 la8 sold8 ]
  % ---
  | la8 [ sol8 fa8 mi8 ] fa4 sol8 [ fa8 ] mi2 re4 mi4 
  | mi1 la2. sol4 
  | sol2 la2 la2. sol4 
  | fa8 [ sol8 la8 si8 ] do4 si4 do2 si2 
  | la2. sol4 fa2 mi2 
  | re2 re'2\rest re1\rest 
  | re1\rest re2\rest mi4\rest re4 ~
  | re4 dod4 re4 la4 ~ la4 sol4 la2 
  | la1 sol8 [ fa8 mi8 re8 ] dod4 re4 ~
  | re4 sol2 fad8 [ mi8 ] fad1^\fermata \break
  % passage en ternaire
  \once \override Score.MetronomeMark #'transparent = ##t \tempo 1. = 65
  | \time 3/1
  | re1 mi2 fa2 fad1 
  | sol1. la1 re,2 
  | sib'1 la2 ~ la2 sol1 
  | fad2 sol2 la2 sib2 la2 sol2 
  | fa1 sol2 la1. ~
  | la2 sol1 ~ sol2 fa2 mi2 
  | fa1 sol2 ~ sol2 fad1 
  | re'1. do2 si?2 la2 
  | sib2 la1 sol1 la2 
  | re,1. mi2 re1
  % 64 :
  | mi1. re'1.\rest 
  | re2\rest re2 do2 si2 sib1 
  | la2 sol1 re'1. 
  | do1. ~ do2 la2 sol2 
  | fa2 mi1 ~ mi2 fa1 
  | mi1 si'2\rest re1.\rest 
  | re1.\rest re1.\rest 
  | re1.\rest re2\rest la2 si?2 
  | do2 dod1 re2 mi1 
  | la,2 sib1 ~ sib2 la1 ~
  | la2 sol1 la1 re2 
  | si?2 do2 re2 ~ re2 do2 sib2 
  | la1 sol2 fa2 mi1 
  | fad2 la1 sol2 fa2 mi2 
  | fa2 mi2 la2 ~ la2 sol1 
  | la1. re,1 mi2 
  % 80 :
  | do2 re1 ~ re2 re'2\rest re2\rest 
  | re1.\rest re1.\rest 
  | re1.\rest re2\rest re2 do2 
  | si2 sib1 la1 sol2 
  % 84 :
  | re'1. \once \override NoteColumn  #'force-hshift = #-2.3 la1. ~
  | la1. la1 sol2 
  | fa2 mi1 ~ mi2 fa2 sol2 
  | la1 sol2 fad1.^\fermata
} 

alto = \relative do' {
    s1 s1
  | s1 s1
  | do1\rest r4 re2 do4 
  | si2 sib2 la2 sol4 re'4 ~
  | re4 la4 sib2 si2 do2 
  % 6 :
  | dod2 mi2 ~ \once \override NoteColumn  #'force-hshift = #-0.5 mi2 re2 
  | re1 mi4 re4 dod2 
  | re1 ~ re1 
  % 9 :
  | re1 do1\rest 
  |  \once \override MultiMeasureRest #'staff-position = #-8 R\breve
  | fa,1\rest la2. si4 
  | do2 dod2 re2 mi2 
  | la,1 si4 dod4 re4 mi4 
  | fa2 mi2 fad4 re4 sol2 ~
  | sol2 fa2 mi1
  | re2 do4 si4 do2 re2 ~
  | re2 do4 mi4 ~ mi4 re4 re2 
  | dod2 re2 ~ re2 do2 
  | sib1 la2 re2 
  | mi1 re4 sol4 fa4 mi4
  % --- 
  | fa1 mi2 fa2 
  | r4 re2 mi4 fa2 fad2 
  | sol2 la2 re,2. mi4
  | fa4 dod4 re2 ~ re2 dod2 
  | re4 do4 si4 la4 dod2 re2 ~
  | re2 dod2 re1 ~ 
  | re2 do2 si2 la2
  | sib2 la4 sol4 la2 re2 ~
  | re2 do2 si?2. do4 
  | la1 sol4 re'2 sol4 ~
  | sol4 fa2 mi4 fad4 re4 sol2 ~
  | sol2 fa2 mi1 ~
  | mi2 mi2 ~ mi4 re4 do4 si4 
  | dod2 re1 dod2 
  | re\breve
  % --- reprise
  | \once \override MultiMeasureRest #'staff-position = #-9 R\breve
  | \once \override MultiMeasureRest #'staff-position = #-9 R\breve
  | la1\rest la2 si2 
  | do2 dod2 re2. dod4 
  | re4\rest re2 dod4 re4 la2 la'4 ~
  | la4 sol2 fad4 sol8 [ fa8 mi8 re8 ] mi4 do4 
  | si2 la2\rest la2 si2 
  | do2 dod2 re2 mi2
  % --- 
  | la,2 re2 ~ re4 do4 si2 
  | do2 si2 do4. re8 mi2 
  | mi1 fa2 mi2 
  % 47 :
  | \once \override MultiMeasureRest #'staff-position = #-4 R\breve
  | r1 la,4\rest re2 dod4 
  | re4 la2 la'4 sib8 [ la8 sol8 fa8 ] mi8 [ sol8 fa8 mi8 ]
  | fa2 mi2 re4 mi2 re4 
  | sol4 mi4 fa4 mi4 r4 re2 dod4 
  | re4 la2 re8 [ do8 ] si?2 la2 
  | sib2 la2 la1 
  % passage en ternaire
  | sol1.\rest sol1.\rest
  | sol1.\rest sol1.\rest
  | r2 re'2 do2 si1 sib2 
  | la1. sol2 re'2 mi2 ~
  | mi2 re1 re1 do2 
  | si?1 mi2 dod1. 
  | re1. re1. 
  | do1.\rest do1.\rest 
  | do1.\rest do1.\rest 
  | sol1.\rest la1 si2 
  | do2 dod1 re2 mi1 
  | la,1. si2 re2 mi2 
  % ---
  | fa1 mi2 fad2 re2 sol2 ~
  | sol2 fa1 mi1. 
  | re2 do2 si2 dod1 re2 ~
  | re2 do?2 mi2 ~ mi2 re1 ~
  | re1 dod2 re1 do2 
  | sib1. la1 re2 
  | mi1 la2 sol2 fa2 mi2 
  | fa1 sol2 mi2 fa1 
  | mi2\rest re2 mi2 fa2 fad1 
  | sol1. la1 re,2 
  | fa2 dod2 re2 ~ re2 dod!1
  | re2 si2 la2 dod1. 
  | re1 dod2 re1. ~
  % 79 :
  | re1 do2 ~ \once \override NoteColumn  #'force-hshift = #0.5 do2 si1 
  | do2 si2 la2 sib2 la2 sol2 
  | la2 re1 ~ re2 do1 
  | si1 mi2 la,1. 
  | sol2 re'2 sol2 ~ sol2 fa2 mi2 
  % 84 :
  | fad2 re2 sol2 \once \override NoteColumn  #'force-hshift = #-3 sol1 fad2 
  | mi1. mi1. 
  | re2 do2 si2 dod2 re1 ~
  | re2 dod1 re1. 
}

tenor = \relative do {
  s\breve
  s\breve
  s\breve
  s\breve
  s\breve
  % 6 :
  re1\rest re2. mi4 
  fa2 fad2 sol2 la2 
  re,2 sib'2 la1 ~
  la2 sol2 ~ sol4 fad4 sol2 ~
  sol2 fa2 mi1 
  fad2 sol2 ~ sol2 fa2 
  mi2 la2 ~ la4 sol4 fa4 mi4 
  fa2 fad2 sol1 
  la4 si4 do2 ~ do2 si2
  la1 la1 
  la2 sold2 la2 r2 
  % 17 :
  la4\rest la2 sol4 fad2 fa2 
  mi2 re2 la'1 ~
  la2 sol2 ~ sol2 fa2 
  mi2 la2 si2 dod2
  % --- 
  re1 do2 si4 la4 
  sib1 la2 re2 
  sol,2 fad2 ~ fad2 sol2 
  la2 sib2 la1 ~
  la2 re,2 mi2 la2 
  % 26 :
  fa1\rest la4\rest re,2 mi4 
  fa2 fad2 sol2 la2 
  re,2 mi2 fa2 mi4 re4 
  mi2 la2 ~ la4 sol4 sol2 ~
  sol2 fad2 sol1 
  do1 ~ do2 si2 
  dod2 re2 ~ re2 do2 
  la1 ~ la2 sol2 ~
  sol2 fa2 mi2 la2 
  \once\override Script #'padding = # 1 la\breve^\fermata
  % --- reprise
  r4 re,2 dod4 re4 re'2 do4 
  si4 mi8 [ re8 ] dod8 [ la8 ] re4 ~ re4 dod4 re4 re,4 
  mi4 la4 ~ la8 [ sol8 fa8 mi8 ] fa4 fad4 sol4. re8 
  % 39 :
  mi4 fa8 [ sol8 ] la2 la2 la2\rest 
  re,2 mi2 fa2 fad2 
  sol2 la2 re,4 sol4 ~ sol8 [ mi8 ] la4 ~
  % 42 :
  la4 sold8 [ fad8 ] sold2 la2 fa2\rest 
  s\breve
  % ---
  \override MultiMeasureRest #'staff-position = #2 R\breve
  r1 la2 si2 
  do2 dod2 re2 mi2 
  r4 la,2 sold4 la4 mi'2 re4 
  do4 si8 [ la8 ] sol8 [ mi8 ] mi'4 la,2 sol2 
  la2 re2 re2. dod4 
  re2. do4 si2 la2 
  sol2 la4 r4 re,2 mi2 
  fa2 fad2 sol2 la2 
  re,1 re1^\fermata
  % --- passage en ternaire
  % 54 :
  re1.\rest re1.\rest 
  re1.\rest re1.\rest
  re1.\rest re1.\rest 
  re1.\rest re1.\rest
  re1 mi2 fa2 fad1 
  sol1. la1. 
  re,2 sib'1 ~ sib2 la1 ~
  la2 sol1 ~ sol2 fad1 
  sol1 fa2 mi1. 
  fad2 re2 sol2 ~ sol2 fa1 
  mi1 la2 sol2 fa2 mi2 
  fa2 fad1 sol1. 
  la2 do1 do1 si2 
  la1. la1. ~ 
  la2 sold1 la2 r2 r2 
  la1 sol2 fad1 fa2 ~
  fa2 mi1 re2 la'1 ~
  la2 sol1 ~ sol2 fa1 
  mi2 la1 si2 dod1 
  re1. do2 sib2 la2 
  sib1. la2 re1 
  sol,1 sib2 fad1 sol2 
  la1 sib2 la1. 
  la2 re,1 mi1. 
  % 78 :
  la2 la2\rest la2\rest la2\rest re,2 mi2 
  fa2 fad1 sol1. 
  la2 re,1 ~ re2 mi1 
  fa2 mi2 re2 mi1 la2 ~
  la2 sol1 ~ sol2 fad1 
  sol1. do1. ~
  % 84 :
  do1 si2 dod2 la2 re2 ~
  re2 do1 la1. ~
  la2 sol1 ~ sol2 fa1 
  mi2 la1 \once\override Script #'padding = # 1 la1.^\fermata 
}

basse = \relative do {
  %override MultiMeasureRest #'staff-position = #-2 
  \override MultiMeasureRest #'staff-position = #0 R\breve
  R\breve 
  R\breve
  R\breve 
  R\breve
  \override MultiMeasureRest #'staff-position = #-4 R\breve
  R\breve
  r1 re2. do4 
  si2 sib2 la2 sol2 
  re'1 ~ re2 do2 ~
  do2 si2 dod2 re2 
  la1 si2 dod2 
  % 13 :
  re1 sol,1\rest 
  R\breve
  sol4\rest la2 si4 do2 dod2 
  re2 mi2 la,1 
  la1 la1 ~
  la2 sib2 fad1 
  sol4 la4 sib4 sol4 re'1 
  % 20 :
  la2 sol2\rest sol1\rest 
  \override MultiMeasureRest #'staff-position = #-2 R\breve
  R\breve
  \override MultiMeasureRest #'staff-position = #-4 R\breve
  % 24 :
  sol1\rest sol4\rest la2 sol4 
  fad2 fa2 mi2 re2 
  % 26 : 
  la'1 sib1 
  la1 sol2 fad2 
  sol1 re'2 r2 
  R\breve
  R\breve
  R\breve
  % 32 :
  sol,1\rest sol4\rest la2 si4 
  do2 dod2 re2 mi2 
  la,1 ~ la1 
  \once\override Script #'padding = # 1  re,\breve_\fermata 
  % -- reprise :
  R\breve
  sol1\rest la2 si2 
  do2 dod2 re2 si2 
  la2. sol4 fa4 mi8 [ re8 ] la'2 
  si?2 sol4 la4 re1 
  si4 mi4 do4 re4 si2 do4. re8 
  mi1 sol,1\rest 
  \override MultiMeasureRest #'staff-position = #0 R\breve
  r1 r4 la2 sold4 
  la4 la'2 sol4 ~ sol4 fa4 mi4. re8 
  do4 si4 la4 sol4 fa8 [ fa'8 mi8 re8 ] dod2 
  re4 fa4 mi2 sol,1\rest 
  mi1\rest re2 mi2 
  fa2 fad2 sol2 la2 
  re,8 [ mi8 fa8 sol8 ] la4 la'4 ~ la4 sol4 fa2 
  mi2 re4 do4 sib2 la2 
  re1 r4 sol,2 fad4 
  sol8 [ la8 sib8 sol8 ] re'2 re,1_\fermata
  % --- passage en ternaire
  r1. r1. 
  r1. r1.
  r1. r1. 
  r1. r1.
  mi1.\rest mi1.\rest 
  mi1.\rest mi1.\rest
  mi1.\rest re'1 do2 
  si1 sib2 la1. 
  sol2 re'1 ~ re2 do1 ~
  do1 si?2 dod2 re1 
  la1. si2 dod1 
  re1. sol,1.\rest 
  sol1.\rest sol1.\rest 
  la1 si2 do2 dod1 
  re2 mi1 la,1. 
  la1. ~ la1. 
  la1. sib2 fad1 
  sol2 sib2 do2 re1. 
  la2 sol2\rest sol2\rest sol1.\rest 
  sol1.\rest sol1.\rest 
  sol1.\rest sol1.\rest 
  sol1.\rest sol1.\rest 
  sol1.\rest sol2\rest la2 sol2 
  fad2 fa1 mi1. 
  re2 la'1 sib1. 
  la1. sol1. ~
  sol2 fad1 sol1. 
  re'2 r2 r2 r1.
  sol,1.\rest sol1.\rest 
  sol1.\rest sol1.\rest 
  sol1.\rest sol1.\rest 
  la1 si2 do2 dod1 
  re2 mi1 la,1. 
  la1. \once\override Script #'padding = # 1 re,1._\fermata
}

\score {
  {
   \context PianoStaff <<
     \context Staff = "dessus" <<
       \global
       \clef violin 
	\set Staff.midiInstrument = "church organ"
	\context Voice = "soprano" {\voiceOne \soprano}
	\context Voice = "alto" {\voiceTwo \alto}
     >>
     \context Staff = "basse" <<
       \global    
       \clef bass
       \set Staff.midiInstrument = "church organ"
	\context Voice = "tenor" {\voiceOne \tenor} 
	\context Voice = "basse" {\voiceTwo \basse}
     >>
   >>
   \bar "|."
 }
  \layout { }
  \midi{ \tempo 1 = 50  }
}

