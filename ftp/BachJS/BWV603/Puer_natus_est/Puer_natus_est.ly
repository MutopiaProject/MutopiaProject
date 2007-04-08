% -*- mode: LilyPond ; coding: utf-8 -*-
\version "2.8.0"
\include "italiano.ly" 
%% Version 1

\header{
    title = \markup {\center-align { "Puer natus in Bethlehem." " "} }
    subtitle = ""
    piece = "" 
    instrument = ""
    composer = "Johann Sebastian Bach (1685-1750)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Bach-Gesellschaft Edition, OrgelWerke 1893"
    opus = "BWV 603"
    lastupdated = "2006-04-05"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    mutopiatitle = "Puer natus in Bethlehem"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Organ"
    style="Baroque"

    footer = "Mutopia-2006/04/07-725"
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

%#(set-default-paper-size "a4")
%#(set-global-staff-size 18)

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

staffup = {
   \change Staff = "dessus" \halsdown
}

staffdown = {
   \change Staff = "basse" \halsup
}

global = {
  \key fa \major
  \time 3/2
}

choral =  \relative do'' {
  \global
  \partial 2 sol2 
  %  1 :
  sol1 sol2 
  la1 la2 
  sib2 la2 sol2 
  fa1.^\fermata 
  %  5 :
  sib1 do2 
  sib1 la!2 
  sib1^\fermata  sib2 
  sib1 sib2 
  la1 sol2 
  % 10 :
  sol1 fad2 
  sol1^\fermata sol2 
  fad1 sol2 
  la1 la2 
  sib1 la2 
  sol1 fad2 
  sol1.^\fermata
}
alto = \relative do'' {
  \global
  \partial 2 sol8 fa8 sol8 fa8 
  %  1 :
  mib2 ~ mib8 re8 mib8 re8 mib8 re8 mib8 fa8 
  re4. mi8 fad8 mi8 fad8 mi8 fad8 sol8 mi8 fad8 
  sol4 sol2 fa!4 mib8 re8 mib8 re8 
  do2 la8\rest fa8 la8 do8 fa8 mib8 fa8 mib8
  %  5 :
  fa8 mib8 fa8 mib8 re8 mib8 do8 re8 mib2 
  mi8\rest re8 fa8 lab8 sol8 fa8 sol8 fa8 mib8 re8 mib8 do8 
  re2 ~ re8 do8 re8 do8 re8 do8 mib8 re8 
  do4. re8 mi!8 fa8 mi8 sol8 fad8 sol8 fad8 sol8 
  la4. sol8 fad8 mi!8 fad8 re8 sol2 
  % 10 :
  re8 do8 re8 do8 sib4 mib4 ~ mib8 mib8 re8 do8 
  sib8 \staffdown re,8 sol8 sib8 \staffup re8 do8 re8 do8 sib8 la8 sib8 sol8 
  la8 \staffdown mib8 la8 do8 \staffup mib8 re8 mib8 re8 do8 sib8 do8 sib8 
  la8 \staffdown re,8 fad8  la8 \staffup re8 do8 re8 do8 re8 do8 re8 do8 \break
  sib8 \staffdown sol8 sib8 re8 \staffup sol8 fa8 sol8 fa8 mib8 re8 mi8 fad8 
  % 15 :
  sol8 fa!8 sol8 fa8 mib8 re8 mib4 re2 
  re1. 
}
tenor = \relative do' { 
  \global
  \clef "bass"
  \partial 2 sib4 si4 
  %  1 :
  do8 do,8 [ mib8 sol8 ] do8 sib!8 do8 sib8 do8 sib8 do8 sib8 
  la8 re,8 fad8 la8 re8 do8 re8 do8 re8 do8 re8 do8 
  sib8 re,8 sol8 sib8 re8 do8 re8 do8 sib8 la8 sib8 sol8 
  la8 fa,8 [ la8 do8 ] fa8 mib8 fa8 mib8 fa2 ~
  %  5 :
  fa8 sib,8 re8 fa8 sib8 la8 sib8 la8 sib8 la8 sib8 la8 
  sib2 ~ sib8 sol8 sib8 re8 do8 sib8 do8 la8 
  fa8 sib,8 [ re8 fa8 ] sib8 la8 sib8 la8 sib8 la8 sib8 la8 
  sol8 do,8 mi!8 sol8 do8 sib8 do8 sib8 do8 sib8 la8 sol8 
  re'8 re,8 fad8 la8 re8 do8 re8 do8 re8 do8 re8 do8 
  % 10 :
  sib8 la8 sib8 la8 sol8 fad8 sol8 la8 re,8 do'8 sib8 la8 
  sol4 r4 r8 la,8 sib8 do8 re8 do8 re8 sib8 
  do4 r4 r8 sib8 do8 re8 mib!8 re8 mib8 re8 
  mib8 sol,8\rest sol4\rest r8 la8 re8 mi!8 fad!8 mi8 fad8 re8 
  sol4 r4 r8 do,8 mib8 sol8 do8 sib8 do8 re8 
  % 15 :
  sib8 sol8 sib8 re8 do8 sib8 do8 sib8 do8 sib8 do8 la8 
  si8 sol,8 [ si8 re8 ] << { \once\override Tie #'staff-position = #7 sol2^\fermata ~ sol2 } \\ {sol8 re8 sol8 la8 si!2_\fermata} >>
}
pedale = \relative do' {
  \global
  \clef "bass"
  \partial 2 r4 sol4 
  %  1 :
  do,4 do'2 sib4 la4 sol4 
  fad4 re'2 do4 sib4 la4
  sol2 re2 mib2 
  mib,4 fa'2 mib4 re4 do4 
  %  5 :
  re4 sib'2 la4 sol4 fad4 
  sol4 re4 mib4 do4 fa4 fa,4 
  sib4 sib'2 la4 sol4 fa4 
  mi!4 do'2 sib4 la4 sol4 
  fad4 re'2 do4 sib4 la4 
  % 10 :
  sol4 re4 mib4 do4 \stemUp re4 \stemNeutral re,4 
  sol4 sib2 la4 sol4 fa4 
  mib4 do'2 sib4 la4 sol4 
  fad4 \stemUp re'2 \stemNeutral do4 sib4 la4 
  sol4 mib'2 re4 do4 re4 
  % 15 :
  mib4 sib4 do4 la4 \stemUp re4 \stemNeutral re,4 
   \once \override Script #'padding = # 1 sol1._\fermata \bar "|."
}


\score{
\new PianoStaff 
  <<
  \set PianoStaff.systemStartDelimiterHierarchy
  = #'(SystemStartBar (SystemStartBrace a b ))
  \new Staff = "dessus" << 
    \choral \\
    \alto 
  >>
  \new Staff = "basse" { 
    \clef "bass" 
    \tenor
  }
  \new Staff = "pedale" {
    \pedale
  }
>>
\layout{}
}

\score {
  <<
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \choral
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \alto
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \tenor
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \pedale
    }
  >>
  \midi{ \tempo 4 = 85 }
}
