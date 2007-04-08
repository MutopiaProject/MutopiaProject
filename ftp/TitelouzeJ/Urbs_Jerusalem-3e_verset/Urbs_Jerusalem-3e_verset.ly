% -*- mode: LilyPond ; coding: utf-8 -*-
\version "2.8.1"
\include "italiano.ly" 

%% Version 1.0 2005-11-27
%% Version 2.0 2006-10-10 ; mise en place de silences entre les notes répétées, modification des intruments midi, gestion du tempo.

\header{
    title = "Urbs Jerusalem"
    subtitle = ""
    piece = "3e verset" 
    instrument = ""
    composer = "Jean Titelouze (1563-1633)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
    opus = ""
    % lastupdated = "2005-11-27, 1er dimanche de l'Avent"
    lastupdated = "2006-10-10, Sainte Thérèse de Lisieux"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    
    mutopiatitle = "Urbs Jerusalem (3e verset)"
    mutopiacomposer = "TitelouzeJ"
    mutopiainstrument = "Organ"
    style = "Baroque"
    
 footer = "Mutopia-2006/10/07-639"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

global = {
  \key do \major
  \time 4/4
}

soprano =  \relative do'' {
  \once \override MultiMeasureRest #'staff-position = #4 R1
  fa2\rest re4\rest re4 
  re4 do4 re4 mi4 
  la,4. si8 do4. re16 [ do16 ]
  sib2 la4 do4 
  si?4 do4. si8 la4 ~
  la8 [ la8 ] sol2 fa4 
  sib4 la8 [ si8 ] do8 [ si8 do8 re8 ]
  mi4 la,8 [ si8 ] do4 re4 ~
  re4 do4 re2\rest 
  R1 
  la2 la4 fa4 
  sol4 la4 re,2 
  mi4 fa4. fa8 sol4 
  la8 [ si?8 ] do4 si4 do4 ~
  do4 si8 [ la8 ] sol4 la4 
  sib2 la4 re8 [ do8 ]
  si?4 do8 [ si8 ] la8 [ si8 ] do4 ~
  do8 [ si8 ] la4. la8 sol4 ~
  sol8 [ fa8 ] fa8 [ mi16 re16 ] mi8 [ fa8 sol8 la8 ]
  si4 do4. si8 [ la8 sol8 ]
  fa2 mi4 fa4 ~
  fa8 [ mi8 ] re2 dod4 
  re4 la4 si'2\rest 
  R1 
  % ---
  si2\rest fa2 ~
  fa4 mi8 [ do8 ] re8 [ mi8 fa8 sol8 ]
  la4 sol4 la4. sol16 [ fa16 ]
  mi8 [ fa8 sol8 la8 ] sol2 
  R1 
  do2. si8 [ sol8 ]
  la8 [ si8 do8 re8 ] mi2 
  si4\rest la4. si8 [ do8 si8 ]
  la4 la2 sol8 [ fa8 ]
  mi4 fa8 [ mi8 ] re4. do16 [ re16 ]
  do4 re8 [ mi8 ] fa8 [ sol8 la8 si?8 ]
  do2 re4\rest re4 
  do2. sol4 
  la4. si8 do2 
  sib2 la4 re4 
  do4 si8 [ la8 ] sold4 la4 ~
  la8 [ si8 ] do4 fa,4 mi4 
  fa4 do4. re8 mi4 
  R1 
  si'2\rest si4\rest do4 ~
  do4 si8 [ sol8 ] la8 [ si8 do8 re8 ]
  mi4 sold,4 la4 sol8 [ fa8 ]
  sol4. la8 si8 [ do8 ] re4 ~
  re4 do4 ~ do8 si4 la8 
  sol8 [ la8 si8 do8 ] si8 la4 sold8 
  %---
  la1 
  R1 
  R1 
  R1 
  re8\rest la16 [ si16 ] do16 [ la16 re8 ] dod16 [ re16 mi16 dod?16 ] re16 [ mi16 fa16 mi16 ]
  re2 dod4 sib4 
  la2 si2\rest 
  re8\rest la4. sib4 la4 
  fa4 sol4 la16 [ sol16 la16 sol16 ] fa16 [ mi16 fa8 ]
  si16\rest mi,16 [ fa16 sol16 ] sol4 re'16\rest sol,16 [ la16 si16 ] do4 
  fa16\rest si,16 [ do16 re16 ] mi16 [ re8 dod16 ] re4 la4 
  do16 [ re16 mi16 re16 ] do16 [ si16 do16 si16 ] la8 [ sol8 fa8 sol8 ]
  la8. [ sol16 ] fa16 [ sol16 la16 si16 ] do8. [ si16 ] la8. [ sol16 ]
  fa4 ~ fa16 [ mi16 re16 do16 ] sib4 si'16\rest re,16 [ sol16 mi16 ]
  fa8 la4 sol16 [ fa16 ] sib8 la4 sol8 
  fad1^\fermata
}

alto = \relative do'' {
  la2 la4 fa4 
  sol4 la4 re,4. mi16 [ fa16 ]
  sol4 la8 [ sol8 ] fa4 mi8 [ re8 ]
  do8 [ la8 ] fa'4. mi8 la4 ~
  la4 sol4 fa8 [ sol8 ] la4 ~
  la4 sol8 [ fa8 ] \dotsUp mi4. \dotsNeutral fa8 
  sol8 [ fa8 mi8 re8 ] do4 re4 ~
  re8 [ mi8 fa8 sol8 ] la4. sol16 [ fa16 ]
  mi4 fa8 [ sol8 ] la2 
  r4 la2 sib4 
  la4 re,4. re8 dod4 
  re4 do8 [ si8 ] la4 re4 
  do2 sib4 sib4 ~
  sib!4 la4 la4\rest re4 
  re4 do4 re4 mi4 
  la,4 fa'4 mi4 re8 [ do8 ]
  re4 sol2 fad4 
  sol8 [ fa8 ] mi4 fa4 mi4 ~
  mi4 mi4 re2 
  do1 
  re4 sol4 do,4 re4 ~
  re8 do4 si8 do4 do4 ~
  do4 sib4 la2 
  la2\rest do4\rest do4 ~
  do4 si8 [ sol8 ] la8 [ si8 do8 re8 ]
  % ---
  mi4 la,4 sib8 [ la8 ] re8 [ mi16 re16 ]
  do2 sib8 [ do8 ] re4 ~
  re8 [ do16 re16 ] \dotsDown mi4. \dotsNeutral fa16 [ mi16 ] re4 
  do8 [ re8 mi8 fa8 ] mi4 re8 [ mi8 ]
  do4. re8 mi4. fa8 
  sol8 [ mi8 fa8 mi8 ] mi8 [ re16 do16 ] re8 [ mi8 ]
  fa4 mi8 [ fa8 ] sol8 [ mi8 ] sol4 
  do,4 fa4 mi2 
  R1 
  \once \override MultiMeasureRest #'staff-position = #-7 R1 
  fa,2\rest la4\rest fa'4 ~
  fa4 mi8 [ do8 ] re8 [ mi8 fa8 sol8 ]
  la8 [ sol8 ] fa4. mi16 [ re16 ] mi16 [ fa16 mi8 ]
  fa8 [ do8 ] re4 do8 [ re8 mi8 fad8 ]
  sol4 re4. mi8 [ fa8 re8 ]
  mi4 fa4 mi2 
  fa4. mi8 re4 do8 [ sib8 ]
  la2 sol4 sol4 ~
  sol8 [ la8 si?8 re8 ] do2 
  si4 mi8 [ re8 ] do8 [ re8 mi8 fa8 ]
  sol8 [ la8 sol8 mi8 ] fa8 [ sol8 ] la4 
  sol8 [ fa8 mi8 re8 ] do4 re4 
  mi2 re4. mi8 
  fa8 [ sol8 ] la4 sol4 fa8 [ mi8 ]
  la,4\rest mi'8. [ fa16 ] sol16 [ fa16 mi16 re16 ] mi8. [ re16 ]
  % ---
  do8. [ re16 ] mi16 [ do16 fa8 ] mi16 [ fa16 sol16 mi16 ] fa16 [ sol16 la16 sol16 ]
  la4. sol16 [ fa16 ] mi4 la4 
  r8 re,16 [ mi16 ] fa16 [ re16 sol8 ] fad16 [ sol16 la16 fa16 ] sol16 [ fa16 mi16 re16 ]
  do8 [ fa16 mi16 ] re16 [ mi16 fa16 re16 ] mi8 fa4 mi8 
  fa2 re4\rest la'4 ~
  la8 [ sol8 ] fa8 [ mi16 re16 ] la'4 re,4 
  do8 [ la16 si16 ] do16 [ la16 re8 ] dod16 [ re16 mi16 do16 ] re16 [ mi16 fa16 mi16 ]
  fa8 [ mi8 ] re2 dod4 
  re16 [ do16 re16 do16 ] sib16 [ la16 sib8 ] la4.. si16 
  do4 r16 la16 [ do16 re16 ] mi4 r16 do16 [ mi16 fa16 ]
  sol2 fa16 [ sol16 la16 sol16 ] fa16 [ mi16 fa8 ]
  mi2 r16 la,16 [ sib16 do16 ] re4 
  dod16 [ re16 mi8 ] re4 do16 [ fa16 mi16 re16 ] dod16 [ re16 dod8 ]
  re8 [ do16 si?16 ] la4 sol8. [ la16 ] sib4 
  la4\rest re4. fa8. [ mi16 ] re16 [ do16 ] 
  re1 
}

tenor = \relative do' {
  R1 R1 R1 R1
  re2 re4 do4 
  re4 mi4 la,4 do4 
  si2 la4 sib4 
  sol4 fa4. sol8 [ la8 si8 ]
  do4 re4 mi4 fa4 
  mi4 fa4. mi8 re4 
  do4 si8 [ la8 ] do8 [ si8 la8 sol8 ]
  fa2. sib4 ~
  sib!4 la2 sol8 [ fa8 ]
  sol4 fa8 [ mi8 ] re4. mi8 
  fa8 [ sol8 ] la2 sol4 
  fa2 do'4 si8 [ la8 ]
  sol2 la2 
  la4\rest la2 sol8 [ fa8 ]
  mi4. fa8 sol8 [ fa8 mi8 re8 ]
  mi4 la4 sol2 
  r2 la2 
  la4 fa4 sol4 la4 
  re,4. mi8 fa4 mi4 
  la4\rest fa2 mi8 [ do8 ]
  re4. mi8 fa8 [ sol8 ] la4 ~
  % ---
  la8 [ sol8 fa8 mi8 ] re4 sib'4 
  la8 [ fa8 ] la4 sol8 [ fa16 mi16 ] re8 [ mi8 ]
  fa4 do'8\rest do16 [ si16 ] la4 do8\rest sib8 ~
  sib8 [ la8 sol8 fa8 ] sol8 [ mi8 ] sol4 
  fa8 [ mi8 ] la4 sol2 
  \once \override MultiMeasureRest #'staff-position = #7 R1 
  r4 do2 si8 [ sol8 ]
  la4. si8 do8 [ re8 ] mi4 ~
  mi4 re8 [ do8 ] si4 sib4 ~
  sib4 la2 sol4 
  la4 sib4. la8 [ sol8 fa8 ]
  sol4 la4 sol8 [ fa8 re8 mi8 ]
  fa8 [ mi8 ] la4 sol2 
  fa4\rest fa2 mi8 [ do8 ]
  re4. mi8 fa8 [ sol8 la8 si?8 ]
  do8 [ la8 ] re4. re8 dod8 [ si16 dod16 ]
  re4 la4 sib8 [ la8 ] sol4 
  r4 fa2 mi8 [ re8 ]
  mi8 [ fad8 ] sol4 mi4 la4 ~
  la4 sold4 la2 
  mi'2 re8 [ do8 si8 la8 ]
  do4 si4 la2 
  la4\rest do2 si8 [ sol8 ]
  la8 [ si8 do8 re8 ] mi4 re8 [ do8 ] ~
  do8 [ si16 la16 ] sol8 [ la8 ] si8 [ do8 ] si4 
  % ---
  la2 la2\rest 
  do8\rest la16 [ si16 ] do16 [ la16 re8 ] dod16 [ re16 mi16 do16 ] re16 [ do16 si16 la16 ]
  sib2 la4 do4 
  la4 fa8 sib4 la8 sol16 [ fa16 sol8 ]
  la4 fa'4 mi4 re4 
  fa,8\rest re16 [ mi16 ] fa16 [ re16 sol8 ] fad16 [ sol16 la16 fa16 ] sol16 [ fa16 mi16 re16 ]
  fa4 mi8 [ re8 ] mi4 re4 
  do16 [ re16 mi16 do16 ] re16 [ mi16 fa16 re16 ] mi16 [ fa16 sol16 fa16 ] mi16 [ re16 mi8 ]
  re4. mi8 fa16 [ mi16 fa16 mi16 ] re16 [ do16 re8 ]
  sol16\rest do,16 [ re16 mi16 ] fa4 r16 mi16 [ fa16 sol16 ] la4 
  r16 sol16 [ la16 si16 ] do16 [ si16 la16 sol16 ] la2 ~
  la16 [ si16 do16 si16 ] la16 [ sol16 la16 sol16 ] fa8 [ sol16 la16 ] sib16 [ la16 sol16 fa16 ]
  mi8 [ dod8 ] re16 [ mi16 fa16 sol16 ] la8 [ sol8. fa16 mi8 ]
  re2 fa16\rest re16 [ mi16 fa!16 ] sol4 
  la8\rest la8 [ sib8 sol8 ] re'4 do8 [ sib!8 ]
  la1^\fermata
}

basse = \relative do' {
  \override MultiMeasureRest #'staff-position = #-2 
  R1 R1 R1 R1 R1
  R1 R1 R1 
  la2 la4 fa4 
  sol4 la4 re,4 sol4 ~
  sol4 fa4 mi2 
  re4 la4 re2 
  mi4 fa2 re4 
  do2 sib2 
  la2 r2 
  \once \override MultiMeasureRest #'staff-position = #-4 R1 
  sol2\rest re'2 
  re4 do4 re4 mi4 
  la,4 do4 si2 
  la4. si8 do8 [ re8 mi8 do8 ]
  sol'8 [ fa8 ] mi4 fa4. mi8 
  re2 do4 fa,4 ~
  fa4 sol4 la2 
  re2 la2 
  R1 
  % ---
  R1 R1 R1
  do2. si!8 [ sol8 ]
  la4. si8 do8 [ re8 ] mi4 ~
  mi4 re8 [ do8 ] sol'2 
  re4 la'4 mi2 
  fa4 re4 la'4. sol8 
  fa2 re2 
  do4 re4 sib2 
  fa'4 sib,4 re2 
  do2 sib2 
  la4. si?8 do2 
  fa,4. sol8 la2 
  sol2 re'2 
  R1 
  \once \override MultiMeasureRest #'staff-position = #-4 R1 
  r2 do2 ~
  do4 si8 [ sol8 ] la8 [ si8 do8 re8 ]
  mi2 la,2 
  \once \override MultiMeasureRest #'staff-position = #-4 R1 
  mi'2 fa4 mi8 [ re8 ]
  do8 [ re8 mi8 do8 ] sol'2 
  fa2 mi2 ~
  mi1 
  % ---
  r8 la,16 [ si16 ] do16 [ la16 re8 ] dod16 [ re16 mi16 do16 ] re16 [ mi16 fa16 mi16 ]
  fa4. sol8 la4 fad4 
  sol2 re4 mi4 
  fa4 sib,4 do2 
  fa4. sol8 la4 re,8 [ do8 ]
  sib2 la4 sol4 
  la1 ~
  la4 fa4 sol4 la4 
  sib16 [ la16 sib16 la16 ] sol16 [ fa16 sol8 ] fa4.. sol16 
  la4 r16 fa16 [ la16 si?16 ] do4 r16 la16 [ do16 re16 ]
  mi2 re16 [ mi16 fa16 mi16 ] re16 [ do16 re8 ]
  do2 re2 
  la1 
  sol16\rest sib16 [ la16 sol16 ] fa8 [ fad8 ] sol2 
  re'1 
  re1 
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
}

sopranomidi =  \relative do'' {
  \once \override MultiMeasureRest #'staff-position = #4 R1
  fa2\rest re4\rest re8. r16
  re4 do4 re4 mi4 
  la,4. si8 do4. re16 [ do16 ]
  sib2 la4 do4 
  si?4 do4. si8 la4 ~
  la8 [ la8 ] sol2 fa4 
  sib4 la8 [ si8 ] do8 [ si8 do8 re8 ]
  mi4 la,8 [ si8 ] do4 re4 ~
  re4 do4 re2\rest 
  R1 
  la4.. r16 la4 fa4 
  sol4 la4 re,2 
  mi4 fa4. fa8 sol4 
  la8 [ si?8 ] do4 si4 do4 ~
  do4 si8 [ la8 ] sol4 la4 
  sib2 la4 re8 [ do8 ]
  si?4 do8 [ si8 ] la8 [ si8 ] do4 ~
  do8 [ si8 ] la4. la8 sol4 ~
  sol8 [ fa8 ] fa8 [ mi16 re16 ] mi8 [ fa8 sol8 la8 ]
  si4 do4. si8 [ la8 sol8 ]
  fa2 mi4 fa4 ~
  fa8 [ mi8 ] re2 dod4 
  re4 la4 si'2\rest 
  R1 
  % ---
  si2\rest fa2 ~
  fa4 mi8 [ do8 ] re8 [ mi8 fa8 sol8 ]
  la4 sol4 la4. sol16 [ fa16 ]
  mi8 [ fa8 sol8 la8 ] sol2 
  R1 
  do2. si8 [ sol8 ]
  la8 [ si8 do8 re8 ] mi2 
  si4\rest la4. si8 [ do8 si8 ]
  la4 la2 sol8 [ fa8 ]
  mi4 fa8 [ mi8 ] re4. do16 [ re16 ]
  do4 re8 [ mi8 ] fa8 [ sol8 la8 si?8 ]
  do2 re4\rest re4 
  do2. sol4 
  la4. si8 do2 
  sib2 la4 re4 
  do4 si8 [ la8 ] sold4 la4 ~
  la8 [ si8 ] do4 fa,4 mi4 
  fa4 do4. re8 mi4 
  R1 
  si'2\rest si4\rest do4 ~
  do4 si8 [ sol8 ] la8 [ si8 do8 re8 ]
  mi4 sold,4 la4 sol8 [ fa8 ]
  sol4. la8 si8 [ do8 ] re4 ~
  re4 do4 ~ do8 si4 la8 
  sol8 [ la8 si8 do8 ] si8 la4 sold8 
  %---
  la1 
  R1 
  R1 
  R1 
  re8\rest la16 [ si16 ] do16 [ la16 re8 ] dod16 [ re16 mi16 dod?16 ] re16 [ mi16 fa16 mi16 ]
  re2 dod4 sib4 
  la2 si2\rest 
  re8\rest la4. sib4 la4 
  fa4 sol4 la16 [ sol16 la16 sol16 ] fa16 [ mi16 fa8 ]
  si16\rest mi,16 [ fa16 sol16 ] sol4 re'16\rest sol,16 [ la16 si16 ] do4 
  fa16\rest si,16 [ do16 re16 ] mi16 [ re8 dod16 ] re4 la4 
  do16 [ re16 mi16 re16 ] do16 [ si16 do16 si16 ] la8 [ sol8 fa8 sol8 ]
  la8. [ sol16 ] fa16 [ sol16 la16 si16 ] do8. [ si16 ] la8. [ sol16 ]
  fa4 ~ fa16 [ mi16 re16 do16 ] sib4 si'16\rest re,16 [ sol16 mi16 ]
  fa8 la4 sol16 [ fa16 ] sib8 la4 sol8 
  fad1^\fermata
}

altomidi = \relative do'' {
  la4.. r16 la4 fa4 
  sol4 la4 re,4. mi16 [ fa16 ]
  sol4 la8 [ sol8 ] fa4 mi8 [ re8 ]
  do8 [ la8 ] fa'4. mi8 la4 ~
  la4 sol4 fa8 [ sol8 ] la4 ~
  la4 sol8 [ fa8 ] \dotsUp mi4. \dotsNeutral fa8 
  sol8 [ fa8 mi8 re8 ] do4 re4 ~
  re8 [ mi8 fa8 sol8 ] la4. sol16 [ fa16 ]
  mi4 fa8 [ sol8 ] la2 
  r4 la2 sib4 
  la4 re,4. re8 dod4 
  re4 do8 [ si8 ] la4 re4 
  do2 sib4 sib4 ~
  sib!4 la4 la4\rest re4 
  re4 do4 re4 mi4 
  la,4 fa'4 mi4 re8 [ do8 ]
  re4 sol2 fad4 
  sol8 [ fa8 ] mi4 fa4 mi4 ~
  mi8. r16 mi4 re2 
  do1 
  re4 sol4 do,4 re4 ~
  re8 do4 si8 do8. r16 do4 ~
  do4 sib4 la2 
  la2\rest do4\rest do4 ~
  do4 si8 [ sol8 ] la8 [ si8 do8 re8 ]
  % ---
  mi4 la,4 sib8 [ la8 ] re8 [ mi16 re16 ]
  do2 sib8 [ do8 ] re4 ~
  re8 [ do16 re16 ] \dotsDown mi4. \dotsNeutral fa16 [ mi16 ] re4 
  do8 [ re8 mi8 fa8 ] mi4 re8 [ mi8 ]
  do4. re8 mi4. fa8 
  sol8 [ mi8 fa8 mi8 ] mi8 [ re16 do16 ] re8 [ mi8 ]
  fa4 mi8 [ fa8 ] sol8 [ mi8 ] sol4 
  do,4 fa4 mi2 
  R1 
  \once \override MultiMeasureRest #'staff-position = #-7 R1 
  fa,2\rest la4\rest fa'4 ~
  fa4 mi8 [ do8 ] re8 [ mi8 fa8 sol8 ]
  la8 [ sol8 ] fa4. mi16 [ re16 ] mi16 [ fa16 mi8 ]
  fa8 [ do8 ] re4 do8 [ re8 mi8 fad8 ]
  sol4 re4. mi8 [ fa8 re8 ]
  mi4 fa4 mi2 
  fa4. mi8 re4 do8 [ sib8 ]
  la2 sol4 sol4 ~
  sol8 [ la8 si?8 re8 ] do2 
  si4 mi8 [ re8 ] do8 [ re8 mi8 fa8 ]
  sol8 [ la8 sol8 mi8 ] fa8 [ sol8 ] la4 
  sol8 [ fa8 mi8 re8 ] do4 re4 
  mi2 re4. mi8 
  fa8 [ sol8 ] la4 sol4 fa8 [ mi8 ]
  la,4\rest mi'8. [ fa16 ] sol16 [ fa16 mi16 re16 ] mi8. [ re16 ]
  % ---
  do8. [ re16 ] mi16 [ do16 fa8 ] mi16 [ fa16 sol16 mi16 ] fa16 [ sol16 la16 sol16 ]
  la4. sol16 [ fa16 ] mi4 la4 
  r8 re,16 [ mi16 ] fa16 [ re16 sol8 ] fad16 [ sol16 la16 fa16 ] sol16 [ fa16 mi16 re16 ]
  do8 [ fa16 mi16 ] re16 [ mi16 fa16 re16 ] mi8 fa4 mi8 
  fa2 re4\rest la'4 ~
  la8 [ sol8 ] fa8 [ mi16 re16 ] la'4 re,4 
  do8 [ la16 si16 ] do16 [ la16 re8 ] dod16 [ re16 mi16 do16 ] re16 [ mi16 fa16 mi16 ]
  fa8 [ mi8 ] re2 dod4 
  re16 [ do16 re16 do16 ] sib16 [ la16 sib8 ] la4.. si16 
  do4 r16 la16 [ do16 re16 ] mi4 r16 do16 [ mi16 fa16 ]
  sol2 fa16 [ sol16 la16 sol16 ] fa16 [ mi16 fa8 ]
  mi2 r16 la,16 [ sib16 do16 ] re4 
  dod16 [ re16 mi8 ] re4 do16 [ fa16 mi16 re16 ] dod16 [ re16 dod8 ]
  re8 [ do16 si?16 ] la4 sol8. [ la16 ] sib4 
  la4\rest re4. fa8. [ mi16 ] re16 [ do16 ] 
  re1 
}

tenormidi = \relative do' {
  R1 R1 R1 R1
  re4.. r16 re4 do4 
  re4 mi4 la,4 do4 
  si2 la4 sib4 
  sol4 fa4. sol8 [ la8 si8 ]
  do4 re4 mi4 fa4 
  mi4 fa4. mi8 re4 
  do4 si8 [ la8 ] do8 [ si8 la8 sol8 ]
  fa2. sib4 ~
  sib!4 la2 sol8 [ fa8 ]
  sol4 fa8 [ mi8 ] re4. mi8 
  fa8 [ sol8 ] la2 sol4 
  fa2 do'4 si8 [ la8 ]
  sol2 la2 
  la4\rest la2 sol8 [ fa8 ]
  mi4. fa8 sol8 [ fa8 mi8 re8 ]
  mi4 la4 sol2 
  r2 la4.. r16 
  la4 fa4 sol4 la4 
  re,4. mi8 fa4 mi4 
  la4\rest fa2 mi8 [ do8 ]
  re4. mi8 fa8 [ sol8 ] la4 ~
  % ---
  la8 [ sol8 fa8 mi8 ] re4 sib'4 
  la8 [ fa8 ] la4 sol8 [ fa16 mi16 ] re8 [ mi8 ]
  fa4 do'8\rest do16 [ si16 ] la4 do8\rest sib8 ~
  sib8 [ la8 sol8 fa8 ] sol8 [ mi8 ] sol4 
  fa8 [ mi8 ] la4 sol2 
  \once \override MultiMeasureRest #'staff-position = #7 R1 
  r4 do2 si8 [ sol8 ]
  la4. si8 do8 [ re8 ] mi4 ~
  mi4 re8 [ do8 ] si4 sib4 ~
  sib4 la2 sol4 
  la4 sib4. la8 [ sol8 fa8 ]
  sol4 la4 sol8 [ fa8 re8 mi8 ]
  fa8 [ mi8 ] la4 sol2 
  fa4\rest fa2 mi8 [ do8 ]
  re4. mi8 fa8 [ sol8 la8 si?8 ]
  do8 [ la8 ] re4. re8 dod8 [ si16 dod16 ]
  re4 la4 sib8 [ la8 ] sol4 
  r4 fa2 mi8 [ re8 ]
  mi8 [ fad8 ] sol4 mi4 la4 ~
  la4 sold4 la2 
  mi'2 re8 [ do8 si8 la8 ]
  do4 si4 la2 
  la4\rest do2 si8 [ sol8 ]
  la8 [ si8 do8 re8 ] mi4 re8 [ do8 ] ~
  do8 [ si16 la16 ] sol8 [ la8 ] si8 [ do8 ] si4 
  % ---
  la2 la2\rest 
  do8\rest la16 [ si16 ] do16 [ la16 re8 ] dod16 [ re16 mi16 do16 ] re16 [ do16 si16 la16 ]
  sib2 la4 do4 
  la4 fa8 sib4 la8 sol16 [ fa16 sol8 ]
  la4 fa'4 mi4 re4 
  fa,8\rest re16 [ mi16 ] fa16 [ re16 sol8 ] fad16 [ sol16 la16 fa16 ] sol16 [ fa16 mi16 re16 ]
  fa4 mi8 [ re8 ] mi4 re4 
  do16 [ re16 mi16 do16 ] re16 [ mi16 fa16 re16 ] mi16 [ fa16 sol16 fa16 ] mi16 [ re16 mi8 ]
  re4. mi8 fa16 [ mi16 fa16 mi16 ] re16 [ do16 re8 ]
  sol16\rest do,16 [ re16 mi16 ] fa4 r16 mi16 [ fa16 sol16 ] la4 
  r16 sol16 [ la16 si16 ] do16 [ si16 la16 sol16 ] la2 ~
  la16 [ si16 do16 si16 ] la16 [ sol16 la16 sol16 ] fa8 [ sol16 la16 ] sib16 [ la16 sol16 fa16 ]
  mi8 [ dod8 ] re16 [ mi16 fa16 sol16 ] la8 [ sol8. fa16 mi8 ]
  re2 fa16\rest re16 [ mi16 fa!16 ] sol4 
  la8\rest la8 [ sib8 sol8 ] re'4 do8 [ sib!8 ]
  la1^\fermata
}

bassemidi = \relative do' {
  \override MultiMeasureRest #'staff-position = #-2 
  R1 R1 R1 R1 R1
  R1 R1 R1 
  la4.. r16 la4 fa4 
  sol4 la4 re,4 sol4 ~
  sol4 fa4 mi2 
  re4 la4 re2 
  mi4 fa2 re4 
  do2 sib2 
  la2 r2 
  \once \override MultiMeasureRest #'staff-position = #-4 R1 
  sol2\rest re'4.. r16 
  re4 do4 re4 mi4 
  la,4 do4 si2 
  la4. si8 do8 [ re8 mi8 do8 ]
  sol'8 [ fa8 ] mi4 fa4. mi8 
  re2 do4 fa,4 ~
  fa4 sol4 la2 
  re2 la2 
  R1 
  % ---
  R1 R1 R1
  do2. si!8 [ sol8 ]
  la4. si8 do8 [ re8 ] mi4 ~
  mi4 re8 [ do8 ] sol'2 
  re4 la'4 mi2 
  fa4 re4 la'4. sol8 
  fa2 re2 
  do4 re4 sib2 
  fa'4 sib,4 re2 
  do2 sib2 
  la4. si?8 do2 
  fa,4. sol8 la2 
  sol2 re'2 
  R1 
  \once \override MultiMeasureRest #'staff-position = #-4 R1 
  r2 do2 ~
  do4 si8 [ sol8 ] la8 [ si8 do8 re8 ]
  mi2 la,2 
  \once \override MultiMeasureRest #'staff-position = #-4 R1 
  mi'2 fa4 mi8 [ re8 ]
  do8 [ re8 mi8 do8 ] sol'2 
  fa2 mi2 ~
  mi1 
  % ---
  r8 la,16 [ si16 ] do16 [ la16 re8 ] dod16 [ re16 mi16 do16 ] re16 [ mi16 fa16 mi16 ]
  fa4. sol8 la4 fad4 
  sol2 re4 mi4 
  fa4 sib,4 do2 
  fa4. sol8 la4 re,8 [ do8 ]
  sib2 la4 sol4 
  la1 ~
  la4 fa4 sol4 la4 
  sib16 [ la16 sib16 la16 ] sol16 [ fa16 sol8 ] fa4.. sol16 
  la4 r16 fa16 [ la16 si?16 ] do4 r16 la16 [ do16 re16 ]
  mi2 re16 [ mi16 fa16 mi16 ] re16 [ do16 re8 ]
  do2 re2 
  la1 
  sol16\rest sib16 [ la16 sol16 ] fa8 [ fad8 ] sol2 
  re'1 
  re1 
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
      \bassemidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \bassemidi
      }
    \new Staff { % tempo staff
      s1*64
      \tempo 4 = 75 s4 \tempo 4 = 70 s4 \tempo 4 = 65 s4 \tempo 4 = 60 s4 
      \tempo 4 = 40 s1
    }
  >>
  \midi{ \tempo 4 = 80 }
}
