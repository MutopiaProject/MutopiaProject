% -*- mode: LilyPond ; coding: utf-8 -*-

\version "2.8.7"
\include "italiano.ly" 
%% Version 1.
%% Composé avec le beau logiciel lyqi de N. Sceaux. 
%% La présentation de l'avant-dernière et de la 
%% dernière mesures peut être améliorée. 

\header{
  title = \markup {\center-align { "Vom Himmel kam der Engel Schaar." \normalsize "Du ciel vint une légion d'anges." " "} }
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Johann Sebastian Bach (1685-1750)"
  copyright = "Creative Commons Attribution-ShareAlike 2.5"
  source = "J.S. Bach, 2e cahier de chorals variés, n° 9, Révision par Gabriel Fauré, Paris, 1920, A. Durand et fils. et Bach-Gesellschaft Edition, band 25, 1878"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Vom Himmel kam der Engel Schaar"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  style="Baroque"
  maintainerEmail = ""
  lastupdated = "2006-10-13"
  opus="BWV 607"
 footer = "Mutopia-2006/10/16-850"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

global = {
   \key sol \minor
   \time 3/2
}

%#(set-default-paper-size "a4" 'landscape)
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

choral = \relative do'' {
  \global
  \halsup
  \override Script #'extra-offset = #'(0.0 . 0.2)
  \partial 2 sol2 
  %%  1 :
  sol1 sol2 
  la1 la2 
  sib1 la2 
  sib1^\fermata sib2 
  %%  5 :
  re1 fa2 
  re1 do2 
  sib1 la2 
  sib1^\fermata sib2 
  re1 re2
  %% 10 :
  do1 do2 
  re2 sib2 la2 
  sol1^\fermata sol2 
  re'1 re2 
  do1 do2
  %% 15 :
  re1 do2 
  sib2 la1 
  << { sol1 ~ sol2 ~ \partial 1 sol1^\fermata } \\ {s2 \stemUp mib2 ~ mib2 ~ mib2 re2} >> \bar "|."
}

alto = \relative do' {
  \global
  \halsdown
  \partial 2 r8 fa16 mib16 re4 
  %%  1 :
  sib2. fa'4 mib16 fa16 mib16 re16 do4 ~
  do2 re4 sol4 fad16 sol16 fad16 mi16 fad4 
  sol2. fa4 mib16 fa16 mib16 re16 do4 
  re8 la'16 sol16 fa4 re2 ~ re4 sol4 
  %%  5 :
  fa4 sol8. la16 sib4 do4 re4 r4 
  r16 sib16 la16 sol16 fa4 sol4 sib2 la4 ~
  la16 sol16 fa16 mib16 re4 mib4 fa8 r8 r8 mib8 ~ mib4 
  re8 la'16 sol16 fa4 re2 ~ re4 sol4 ~
  sol4 fad4 r16 sib16 la16 sol16 fa4 ~ fa4 sib4 ~
  %% 10 :
  sib2 la8 sol16 fa16 mib!4 ~ mib2 
  re2 ~ re4 mib4 ~ mib16 sol16 fad16 mib16 re4 ~
  re4 do4 sib4 la4 sib4 r4 
  r16 sib'16 la16 sol16 fa!4 ~ fa2 ~ fa4 sib4 ~
  sib2 la4 r4 r4 fa4 ~
  %% 15 :
  fa2 sol2 ~ sol2 
  R1. 
  r8 fa16 mib16 re4 \once\override Rest #'extra-offset = #'( 0.0 . -2.0 ) r2 do2 ~
  \partial 1 do2 si2
}

tenor = \relative do' {
  \global
  \clef "bass"
  \partial 2 r4 r16 do16 sib16 la16 
  %%  1 :
  sol8 fa16 mib16 re16 do16 sib16 la16 sol8 la16 sib16 do16 re16 mib16 fa16 sol4 ~ sol16 sib16 la16 sol16 
  fad16 la16 sol16 fad16 mib!16 re16 do16 sib16 la8 sib16 do16 re16 mi16 fad!16 sol16 la4 re16 do16 sib16 la16 
  sol8 fa!16 mib!16 re16 do16 sib16 la16 sol16 la16 sib16 do16 re16 mib16 fa16 re16 mib4 ~ mib16 sib'16 la16 sol16 
  fa4 r16 mib'16 re16 do16 sib8 la16 sol16 fa16 mib16 re16 do16 sib8 do16 re16 mib16 fa16 sol16 la16 
  %%  5 :
  sib16 fa16 sol16 la16 \clef "treble" sib16 do16 re16 mib16 fa16 sib,16 do16 re16 mib16 fa16 sol16 la16 sib16 fa16 sol16 la16 sib16 do16 re16 mib16 
  \clef "bass" r4 r16 mib,16 re16 do16 sib16 sol16 fa16 mib16 re16 do16 sib16 la16 sol16 sib16 do16 re16 mib16 fa16 sol16 la16 
  sib4 r16 do16 sib16 la16 sol16 la16 sib16 do16 re16 mib16 fa16 re16 mib16 fa16 mib16 re16 do16 sib16 la16 sol16 
  fa4 r16 mib'16 re16 do16 sib8 la16 sol16 fa16 mib16 re16 do16 sib8 do16 re16 mib16 fa16 sol16 la16 
  sib16 sol16 la16 sib16 do16 re16 mi!16 fad16 sol4 r16 mib16 re16 do16 sib16 la16 sol16 fa16 mib16 re16 do16 sib16 
  %% 10 :
  fa'16 fa,16 sol16 la16 sib16 do16 re16 mi16 fa4 r16 re'16 do16 sib16 la16 sib16 la16 sol16 fad16 mib!16 re16 do16 
  sib16 sol16 la16 sib16 do16 re16 mi16 fad16 sol16 re16 mi16 fad16 sol16 la16 sib16 do16 fad,4 ~ fad16 do'16 sib16 la16 
  sib16 sol16 fa!16 mib!16 re16 do16 sib16 la16 sol8 la16 sib16 do16 re16 mi!16 fad!16 sol8 la16 sib16 do16 re16 mi!16 fad!16 
  sol4 r16 mib!16 re16 do16 sib8 la16 sol16 fa16 mib16 re16 do16 \stemDown sib16 do16 re16 mib16 \stemNeutral fa16 sol16 la16 sib16 
  fa8 sol16 la16 \clef "treble" sib16 do16 re16 mi!16 fa16 do16 re16 mib16 fa16 sol16 la16 sib16 la16 sib16 la16 sol16 fa16 mib16 re16 do16 
  %% 15 :
  \clef "bass" sib8 la16 sol16 fa16 mib16 re16 do16 sib16 sol16 la16 sib16 do16 re16 mib16 fa16 sol8 la16 sib16 \clef "treble" do16 re16 mi16 fad16 
  sol16 la16 sib16 do16 re16 mi16 fad16 sol16 r16 fa16 mib16 re16 do16 sib16 la16 sol16 fad16 sol16 fad16 mi16 \clef "bass" << re4 \\ {r16 do16 si16 la16} >> 
  si4 r16 do16 si16 la16 sol16 do16 si16 la16 sol16 fa16 mib16 re16 do16 sol'16 fa16 mib16 re16 do16 si!16 la16 
  \partial 1 \once\override Script #'extra-offset = #'(0.0 . 0.2) sol1^\fermata
}


pedale = \relative do' {
  \global
  \clef "bass"
  \partial 2 r2
  %%  1 :
  sol4 fa4 mib4 re4 do4 sib4 
  la4 sol4 fad4 mi4 re4 re'4 
  sol4 fa4 mib4 re4 do4 fa4 
  sib,1 r2
  %%  5 :
  r4 sol'4 fa4 mib4 re4 do4 
  sib4 la4 sol4 fa4 mib4 fa4 
  sol4 fa4 mib4 re4 do4 fa4 
  sib1 r2 
  sol4 la4 sib4 do4 re4 mib4 
  %% 10 :
  fa4 sol4 la4 sib4 do4 do,4 
  sol4 la4 sib4 do4 re4 re,4 
  sol1 r2 
  r4 la4 sib4 do4 re4 mib4 
  fa4 sol4 la4 sib4 do4 la4 
  %% 15 :
  sib4 la4 sol4 fa4 mib4 re4 
  do4 sib4 do4 la4 re4 re,4 
  sol4 si4 do4 re4 mib4 fa4 
  \partial 1 sol2 \once\override Script #'extra-offset = #'(0.0 . -0.2) sol,2_\fermata
}

choralmidi = \relative do'' {
  \global
  \partial 2 sol4.. r16 
  %%  1 :
  sol2 ~ sol4.. r16 sol2 
  la2 ~ la4.. r16 la2 
  sib1 la2 
  sib2 ~ sib4.. r16 sib2 
  %%  5 :
  << re1. \\ { s1 fa2} >> 
  re1 do2 
  sib1 la2 
  sib2 ~ sib4.. r16 sib2 
  re2 ~ re4.. r16 re2
  %% 10 :
  do2 ~ do4.. r16 do2 
  re2 sib2 la2 
  sol2 ~ sol4.. r16 sol2 
  re'2 ~ re4.. r16 re2 
  do2 ~ do4.. r16 do2
  %% 15 :
  re1 do2 
  sib2 la1 
  << { sol1 ~ sol2 ~ \partial 1 sol1^\fermata } \\ {s2 \stemUp mib2 ~ mib2 ~ mib2 re2} >> \bar "|."
}

\paper {
  betweensystempadding = 1\mm
  betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  %headsep = 1\mm
  %aftertitlespace = 1\mm
  indent = 1\cm
  bottommargin = 4\mm 
  topmargin = 2\mm
}

\score{
\new StaffGroup \with{systemStartDelimiter = #'SystemStartBar } <<

 \new PianoStaff <<
   \new Staff = "dessus" << 
     \choral \\
     \alto 
   >>
   \new Staff = "basse" { 
     \clef "bass" 
     \tenor
   }
 >>
 \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 2)
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
      \choralmidi
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \transpose do do' 
      \choralmidi
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
    \new Staff { % tempo staff
      \partial 2 s2
      s1.*17
      \partial 1 s2 \tempo 4 = 40 s4 \tempo 8 = 20 s4 
    }
  >>
  \midi{ \tempo 4 = 80 }
}


