% -*- mode: LilyPond ; coding: utf-8 -*-

\version "2.8.7"
\include "italiano.ly" 
%% Version 1.
%% Composé avec le beau logiciel lyqi de N. Sceaux. 

\header{
  title = \markup {\center-align { "Das alte Jahr vergangen ist." \normalsize "La vieille année s'en est allée." \normalsize "The old year has passed away." " "} }
  %% Das alte Jahr vergangen ist,
  %% wir danken dir, Herr Jesu Christ,
  %% dass du uns in so grosser Gefahr
  %% behütet hast lange Zeit und Jahr.
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Johann Sebastian Bach (1685-1750)"
  copyright = "Creative Commons Attribution-ShareAlike 2.5"
  source = ".S. Bach, 2e cahier de chorals variés, n° 16, Révision par Gabriel Fauré, Paris, 1920, A. Durand et fils. et Bach-Gesellschaft Edition, band 25, 1878"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Das alte Jahr vergangen ist"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  style="Baroque"
  maintainerEmail = ""
  lastupdated = "2006-10-04 Saint François d'Assise"
  opus="BWV 614"
 footer = "Mutopia-2006/10/12-849"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

global = {
   \key la \minor
   \time 4/4
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
  \partial 4 la4 
  %%  1 :
  la4 sol16 fa16 mi16 fa16 \once\override Script #'extra-offset = #'(0.5 . 0.2) mi4^\trill \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.2) la8.^\markup{\musicglyph #"scripts.mordent"} sib16 

  \appoggiatura la16 sol4 ~ sol32 [ sib32 la32 sol32 fa16 sol32 mi32 ] \tieDown \once\override Voice.TextScript #'extra-offset = #'(1.1 . 0.3) fa8^\markup{\musicglyph #"scripts.ufermata"} [~ fa32 \tieUp mi32 re32 mi32 ] fa32 [ mi32 fa32 sol32 fa32 la32 sol32 sib!64 la64] 

  la4 ~ la16 [ sol16 fa32 mi32 fa16 ] \once\override Voice.TextScript #'extra-offset = #'(1.1 . 0.2) mi4^\markup{\musicglyph #"scripts.trill"} la8. sib16 
  sol4 ~ sol32 [ sib32 la32 sol32 fa16 sol32 mi32 ] \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.0) fa4^\markup{\musicglyph #"scripts.ufermata"} la4 
  %%  5 :
  sib8 si8 do8 dod8 re8. mi16 la,8 do!16 si16 
  do8 re16 ^( fa32 mi32 ) \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.3) do8^\markup{\musicglyph #"scripts.prall"} _( \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.3) si16 ^\markup{\musicglyph #"scripts.prall"} ) la16 \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.0)  la4^\markup{\musicglyph #"scripts.ufermata"} si8. do32 re32 
  do4 \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.3) si16^\markup{\musicglyph #"scripts.prall"} la16 sib8 la4 ~ la16 do!16 sib!16 la16 
  sol8. fa16 mi32 [ sib'32 la32 sol32 fa32 sol32 mi16 ] \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.0) fa4^\markup{\musicglyph #"scripts.ufermata"} sol8 fa16 la32 sol32 
  \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.3) sol4^\markup{\musicglyph #"scripts.mordent"} la4 ~ la16 la16 sol16 fa!16 mi16 sib'16 la16 sol16 

  %% 10 :
  fad16 mi16 re16 mi16 \once\override Voice.TextScript #'extra-offset = #'(1.3 . 0.3) fa!4^\markup{\musicglyph #"scripts.downmordent"} \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.0) mi4^\markup{\musicglyph #"scripts.ufermata"} si'8. do!32 re!32 
  do4 \once\override Voice.TextScript #'extra-offset = #'(1.3 . 0.3) si16^\markup{\musicglyph #"scripts.prall"} la16 si8 la4 mi8 [ fad16 la32 sold32 ] 
  \partial 2. la16 ^( sold!16 ) do16 ^( si16 ) mi16 red16 fad16 la,16 la8 ([ \once\override Voice.TextScript #'extra-offset = #'(1.1 . 0.2) sold!8^\markup{\musicglyph #"scripts.trill"} ])
}

alto = \relative do' {
  \staffdown \partial 4 \once\override Rest #'extra-offset = #'( 0.0 . 5.0 ) r4
  %%  1 :
  \once\override Rest #'extra-offset = #'( 0.0 . 4.7 ) r8 la8 sib8 si8 do8 dod8 \staffup re4 
  dod8 re16 mi32 fa32 mi8 \staffdown la,8 la4 \once\override Rest #'extra-offset = #'( 0.0 . 5.0 ) r4 
  \once\override Rest #'extra-offset = #'( 0.0 . 2.7 ) r8 la8 sib8 si8 do8 dod8 \staffup re8 dod8 
  re4 mi4 ~ mi8 re16 dod16 re4 ~
  %%  5 :
  re8 mi16 fa16 mi8 la8 sold8 sol8 fad8 fa8 
  mi8 fa8 mi8 re8 dod8 do8 \staffdown si4 
  la4 si8 dod8 \staffup re16 mi16 re16 mi16 fa4 ~
  fa16 fa16 mi16 re16 do16 sib16 \staffdown la8 ~ la8 \staffup dod8 re4 ~
  re16 re16 do16 sib16 la16 mi'!16 re16 do16 si16 do16 re8 do16 re16 mi8 
  %% 10 :
  re8 do8 sib8 si8 do8 dod8 re8 red8 
  mi16 do16 fa8 ~ fa8 mi8 ~ mi8 re8 mi4 
  \partial 2. red8 mi16 _( red16 ) sol!16 fad!16 la16 red,16 mi4_\fermata
}

tenor = \relative do' {
  \global
  \clef "bass"
  \partial 4  \once\override Rest #'extra-offset = #'( 0.0 . -1.0 ) r4
  %%  1 :
  r2 r4 r8 la8 
  sib8 si8 do!8 dod8 re4 \once\override Rest #'extra-offset = #'( 0.0 . -1.0 ) r4 
  r2 r8 la16 sol16 fad8 fa8 
  mi8 re8 la'4 ~ la8 re,16 mi16 fa8 fad8 
  %%  5 :
  sol8 sold8 la16 sol'!16 fa16 mi16 re16 do16 si16 sib16 la8 re8 
  do16 si16 la8 ~ la8 sold8 la8 la8 sold8 \tieDown sol8 ~
  sol8 \tieNeutral fad8 fa8 mi8 la4. la8 
  sib8 si8 do8 dod8 re4 r8 re,8 
  mib8 mi8 fa8 fad8 sol4. mi8 
  %% 10 :
  la4 re,4 la'4 r4 
  r8 la8 sold8 sol8 fad8 [ fa8 sol8 la8 ] 
  \partial 2. si2 \once \override Script #'padding = # 1 si4^\fermata 
}


pedale = \relative do' {
  \global
  \clef "bass"
  \partial 4 r4
  %%  1 :
  r2 r8 la16 sol16 fad8 fa8 
  \stemUp mi8 re8 la'8 la,8 re8 re,8 r4 
  \stemNeutral r2 r4 r8 la'8 
  sib8 si8 do8 dod8 re8 re,8 r4 
  %%  5 :
  r4 r8 la'8 si8 dod8 re8 sold,8 
  la8 re8 mi8 mi,8 la4 r4 
  r8 la8 sold8 sol8 fad8 fa8 mi8 re8 
  sol8 mi8 la4 re,8 la'8 sib8 si8 
  do8 do,8 r4 r8 si'!8 do8 dod8 
  %% 10 :
  re8 fad,8 sol8 sold8 la4 r4 
  r2 r8 re8 [ dod8 do8 ] 
  \partial 2. si2 \once \override Script #'padding = # 1 mi,4_\fermata 
}


choralmidi = \relative do'' {
  \global
  \partial 4 la8.. r32 
  %%  1 :
  la4 sol16 fa16 mi16 fa16 mi4^\trill la8.^\mordent sib16 

  la16 sol16 ~ sol8 ~ sol32 [ sib32 la32 sol32 fa16 sol32 mi32 ] fa8 [~ fa32 \tieUp mi32 re32 mi32 ] fa32 [ mi32 fa32 sol32 fa32 la32 sol32 sib!64 la128 r128] 

  la4 ~ la16 [ sol16 fa32 mi32 fa16 ] mi4^\trill la8. sib16 
  sol4 ~ sol32 [ sib32 la32 sol32 fa16 sol32 mi32 ] fa8. r16 la4 
  %%  5 :
  sib8 si8 do8 dod8 re8. mi16 la,8 do!16 si16 
  do8 re16 ^( fa32 mi32 ) do8^\prall si16^\prall la32 r32 la8. r16 si8. do32 re32 
  do4 si16^\prall la16 sib8 la4 ~ la16 do!16 sib!16 la16 
  sol8. fa16 mi32 [ sib'32 la32 sol32 fa32 sol32 mi16 ] fa8. r16 sol8 fa16 la32 sol64 r64 
  sol4^\mordent la4 ~ la32 r32 la16 sol16 fa!16 mi16 sib'16 la16 sol16 

  %% 10 :
  fad16 mi16 re16 mi16 fa!4^\downmordent mi8. r16 si'8. do!32 re!32 
  do4 si16^\prall la16 si8 la4 mi8 [ fad16 la32 sold32 ] 
  \partial 2. la16 sold32 r32 do16 si32 r32 mi16 red32 r32 fad16 la,32 r32 la8 [ sold!8^\trill ]
}

altomidi = \relative do' {
  \staffdown \partial 4  r4
  %%  1 :
  r8 la8 sib8 si8 do8 dod8 \staffup re4 
  dod8 re16 mi32 fa32 mi8 \staffdown la,16. r32 la4  r4 
   r8 la8 sib8 si8 do8 dod8 \staffup re8 dod8 
  re4 mi4 ~ mi8 re16 dod16 re4 ~
  %%  5 :
  re8 mi16 fa16 mi8 la8 sold8 sol8 fad8 fa8 
  mi8 fa8 mi8 re8 dod8 do8 \staffdown si4 
  la4 si8 dod8 \staffup re16 mi16 re16 mi16 fa4 ~
  fa32 r32 fa16 mi16 re16 do16 sib16 \staffdown la8 ~ la8 \staffup dod8 re4 ~
  re32 r32 re16 do16 sib16 la16 mi'!16 re16 do16 si16 do16 re8 do16 re16 mi8 
  %% 10 :
  re8 do8 sib8 si8 do8 dod8 re8 red8 
  mi16 do16 fa8 ~ fa8 mi8 ~ mi8 re8 mi4 
  \partial 2. red8 mi16 red32 r32 sol!16 fad32 r32 la16 red,32 r32 mi4_\fermata
}

tenormidi = \relative do' {
  \global
  \clef "bass"
  \partial 4   r4
  %%  1 :
  r2 r4 r8 la8 
  sib8 si8 do!8 dod8 re4  r4 
  r2 r8 la16 sol16 fad8 fa8 
  mi8 re8 la'4 ~ la8 re,16 mi16 fa8 fad8 
  %%  5 :
  sol8 sold8 la16 sol'!16 fa16 mi16 re16 do16 si16 sib16 la8 re8 
  do16 si16 la8 ~ la8 sold8 la16 r16 la8 sold8 \tieDown sol8 ~
  sol8 \tieNeutral fad8 fa8 mi8 la4 ~ la16  r16 la8 
  sib8 si8 do8 dod8 re8 r8 r8 re,8 
  mib8 mi8 fa8 fad8 sol4. mi8 
  %% 10 :
  la4 re,4 la'4 r4 
  r8 la8 sold8 sol8 fad8 [ fa8 sol8 la8 ] 
  \partial 2. si4.. r16  si4^\fermata 
}

pedalemidi = \relative do' {
  \global
  \clef "bass"
  \partial 4 r4
  %%  1 :
  r2 r8 la16 sol16 fad8 fa8 
  \stemUp mi8 re8 la'8 la,8 re16 r16 re,8 r4 
  \stemNeutral r2 r4 r8 la'8 
  sib8 si8 do8 dod8 re16 r16 re,8 r4 
  %%  5 :
  r4 r8 la'8 si8 dod8 re8 sold,8 
  la8 re8 mi8 mi,8 la4 r4 
  r8 la8 sold8 sol8 fad8 fa8 mi8 re8 
  sol8 mi8 la4 re,8 la'8 sib8 si8 
  do16 r16 do,8 r4 r8 si'!8 do8 dod8 
  %% 10 :
  re8 fad,8 sol8 sold8 la4 r4 
  r2 r8 re8 [ dod8 do8 ] 
  \partial 2. si2 mi,4_\fermata 
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
      \pedalemidi
    }
    \new Staff { % tempo staff
      \partial 4 s4
      s1*11
      \partial 2. 
      s4 \tempo 8 = 40 s4 \tempo 8 = 30 s8 \tempo 8 = 10 s8
    }
  >>
  \midi{ \tempo 8 = 52 }
}


