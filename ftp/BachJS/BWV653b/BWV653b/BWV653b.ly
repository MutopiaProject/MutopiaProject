% -*- mode: LilyPond-mode ; coding: utf-8 -*-
\version "2.8.1"
\include "italiano.ly" 

%% v. 2

\header{
    title = \markup {\center-align { "An Wasserflüssen Babylon" "Sur les rives du fleuve en Babylone " "By the rivers of Babylon" " "} }
    subtitle = ""
    piece = "" 
    instrument = ""
    composer = "Johann Sebastian Bach (1685-1750)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "J.S. Bach, 5e cahier de chorals variés, n° 30, Révision par Gabriel Fauré, Paris, 1920, A. Durand et fils."
    opus = "BWV 653b"
    lastupdated = "2006-05-14"
    enteredby = "Gérard Gréco"
    maintainer = \enteredby
    mutopiatitle = "An Wasserflüssen Babylon"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Organ"
    style="Baroque"
 footer = "Mutopia-2006/05/15-451"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

global =  {
  \key sol \major
  \time 3/4
}

choral =  \relative do'' {
  \global
  \tieUp\stemDown
  %  1 :
  \override MultiMeasureRest #'staff-position = #+2 
  \once\override Voice.TextScript #'extra-offset = #'(-10 . 2) R2.^\markup{ \large \bold "(a 5 voci)"} R2.*5
  %%  7 :
  re4 mi re8 mi16 do
  si4. do8 re4 ~ |
  re do8 si do re |
  % 10 :
  si2 r4
  la4 si \once \override Script #'extra-offset = #'(0 . 0.5) dod8.^\prallprall si32 dod |
  re4. do!8 si4 |
  do8 ( re16 mi ) \stemUp \once \override Script #'extra-offset = #'(0 . 0.5) la,4.^\prall sol16 la |
  \tieDown sol2. ~ |
  %% 15 :
  sol4 r4 r4 |
  R2.*3
  \stemDown re'4 mi re8 do |
  % 20 :
  si4. do8 \tieUp re4 ~ |
  re do8 si do re |
  si2 r4
  \stemUp la4 \stemDown si \once \override Script #'extra-offset = #'(0 . 0.5) dod8. \prallprall si32 dod |
  re4. do!8 si4 |
  % 25 :
  do8 ( re16 mi ) \stemUp \once \override Script #'extra-offset = #'(0 . 0.5) la,4. \prall sol16 la |
  \tieDown sol2 r4
  R2.*7
  %% 34 :
  sol4 la si |
  % 35 :
  \stemDown do8 re16 mi \stemUp la,2 |
  \stemDown si8 do \stemUp \once \override Script #'extra-offset = #'(0 . 0.5) la4. \prall sol16 la  |
  sol4 r4 r4
  R2.*2
  %% 40 :
  sol4 \stemDown si dod |
  re4. dod16 si mi4 |
  si16 ( dod si dod ) \once \override Script #'extra-offset = #'(0 . 0.5) dod2 \trill |
  re4 r4 r4
  R2.*2
  %% 46 :
  si4 re mi |
  re2 si4 |
  do2. |
  \tieUp si2.~ |
  % 50 :
  si4 r4 r4
  R2.*5
  %% 56
  mi4 mi4 mi4 |
  \stemUp la,2 \stemDown re4 |
  do  \once \override Script #'extra-offset = #'(0 . 0.5) \dotsDown si4. \prall \stemUp la16 si |
  \tieDown la2.~ |
  %% 60 :  
  la4 r4 r4
  R2.*4
  %% 65 :
  r4 r4 \stemDown do4 |
  si2 \stemUp la4 |
  \dotsUp sol4. sib8[ la sol] |
  fa16[ sol fa mi]  \once \override Script #'extra-offset = #'(0 . 0.5) mi4. \prall re16 mi |
  re2 r4
  %% 70 :
  R2.*3
  re4 sol4. la8 |
  \stemDown si8. do16  \once \override Script #'extra-offset = #'(0 . 0.5) do4. \prallprall si16 do |
  \dotsDown re4. \dotsNeutral do8 si4 |
  do8 ( re16 mi ) \stemUp  \once \override Script #'extra-offset = #'(0 . 0.5) la,4. \prall sol16 la |
  \once \override Script #'extra-offset = #'(0.5 . 0.3) sol4^\fermata r4 r4 \bar "|."
}

alto = \relative do'' {
  \global
  \stemUp \tieUp
  %%1 :
  re4 mi re8 [do] |
  \dotsUp si4. do8 re4~ |
  re4 do8 si do re |
  si4 mi4\rest  mi4\rest |
  %% 5 :
  la,4 si dod
  re4. do!8 [ si la ]
  do si la2
  %%\stemDown la sol~sol4 fad |
  sol4 \once \override Rest #'extra-offset = #'( 0.0 . -0.8 ) r4 r8 re'8 |
  mi4 fad2 | 
  %% 10 :
  sol4. sol8 fad mi |
  fad4 mi2 |
  re4 \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r4 re4 |
  mi4 re4. do8 |
  si4. do8 re4~ |
  %% 15 :
  re4 do8 si do re |
  si4 mi4\rest mi4\rest |
  la, si dod |
  re4. do!8 [ si la] |
  %%\stemDown \tieDown la sol~ sol4 fad |
  do si la2 
  %% 20 :
  sol4 \once \override Rest #'extra-offset = #'( 0.0 . -0.8 ) r4 r8 re'8 |
  mi4 fad2 |
  sol4. sol8[ fad mi] |
  fad4 mi2 |
  re4  \once \override Rest #'extra-offset = #'( 0.0 . -0.8 ) r4 \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r8 sol,8~ |
  %% 25 :
  sol4 fad2 |
  \dotsUp sol4.  fa8 mi4 |
  fa4 re2 |
  do4 \once \override Rest #'extra-offset = #'( 0.0 . -2.8 ) r4 la'4 |
  si dod2 |
  %% 30 :
  re4. do!8 si4 |
  do8 si la2 |
  sol2 \once \override Rest #'extra-offset = #'( 0.0 . -1.8 ) r4 |
  re'4 mi re8 do | 
  si4. \dotsDown do8 re4 ~ |
  %% 35 :
  re do8[ si do re] |
  si4 re4\rest re8\rest la8 |
  si4 dod2 |
  \dotsUp re4. do!8  si4 |
  do4 la2 |
  %% 40 :
  sol4 sol'4\rest sol4\rest |
  \override MultiMeasureRest #'staff-position = #+4  R2. |
  R2. |
  la4\rest la4\rest la4 |
  si la sol |
  %% 45 :
  \dotsUp fad4. sol8 la4 |
  re,4 sol8 fad sol la |
  fad mi fad4 sold |
  la4.  sol!8 fad4 |
  sol8 la fad2 |
  %% 50 :
  mi8[ mi] ~ mi[ re!] ~re[ dod] |
  \once \override NoteColumn  #'force-hshift = #2.0 dod4. red16 mi red4 |
  mi4. la16 fad red4 |
  mi fa mi8 re! |
  \once \override NoteColumn  #'force-hshift = #2.0 do4. \dotsDown re8 mi4 ~ |
  %% 55 :
  mi8 la, re do re mi |
  do[ dod] ~ dod[ re] mi4~ |
  mi4 re \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r4 |
  mi fa mi8 re | 
  do4. re8 mi4 ~ |
  %% 60 :
  mi re8 do re mi |
  do4 r4 \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r4 |
  si do re |
  mi4. re8 do4 ~ |
  do8 re16 do si2 |
  %% 65 :
  la8[ mi'] ~ mi[ sol! ] la4 |
  re, mi re8 do | 
  \dotsUp si4. dod8 re4 ~ |
  re4. mi8 dod4 |
  re8 la si4 do! |
  %% 70 :
  re4. \dotsDown do8[ si la] |
  do si \once \override NoteColumn  #'force-hshift = #1.5 la4. si8 |
  sol[ re' mi re] ~ re[ do] |
  \dotsUp si4. \dotsNeutral do8 re4 ~ |
  re do8 si do re |
  %% 75 :
  sol,2. ~ |
  sol4 fad2 |
  \once \override Script #'extra-offset = #'(0.5 . 0.3) sol4^\fermata \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r4  \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r4
}

tenor = \relative do'' {
  \global
  \stemDown 
  %%1 :
  si4 la8 sol fad4 |
  sol fad8 mi re4 |
  mi fad2
  \dotsDown sol4. sol8 [fad mi] |
  %%5 :
  fad4 \dotsUp mi4. sol8
  \tieDown fad sol la4 re, |
  la'8 sol ~ sol4 fad4
  sol8 [ re' ] ~ re [ do ] ~ do [ si ] ~ |
  si sol do4 re~ |
  %%10 :
  re8 sol, si4 dod |
  \dotsDown re4. si8 la sol |
  fad [ si ] ~ si [ la ] ~ la [ sol ] ~ |
  sol2 fad4 |
  sol fad8 mi re4 |
  %% 15 :
  mi fad!2 |
  sol4. sol8[ fad mi] |
  fad4 mi4. sol8 |
  fad8 sol la4 re, |
  %%\stemUp do'8 si la2 |
  la'8 sol ~ sol 4 fad
  %% 20 : 
  sol8[ re'] ~ re[ do] ~ do[ si] ~ |
  si8 sol do4 re ~ |
  re8 sol, si4 dod |
  re4. si8[ la sol ] |
  fad8 [ si] ~ si[ la] ~ la[ re,] |
  %% 25 :
  mi4 re do |
  si8[ mi] ~ mi[ re] ~ re[ dod] |
  re4 ~ re8[ do!] ~ do[ si] ~ |
  si8[ mi, la si do re] |
  sol,8[ sol'] ~sol[ si la sol] |
  %% 30 :
  fad8[  si] ~ si[ la] ~ la[ sold] |
  la8 sold la sol fad4 |
  sol8 re mi4 re8 do |
  si8[ si'] ~ si do si la |
  sol2 re8 sol |
  %% 35 :
  mi4 fad2 |
  \dotsDown sol4. \dotsUp sol8 fad4 |
  sol8 fad mi2 |
  re4 fad sold |
  la4 ~ la8 sol! fad4 ~ |
  %% 40 :
  fad8[ mi16 fad16] sol8[ si la sol] |
  fad4. sol8 la4 ~ |
  la4 sol8 si la sol |
  fad8[ la] ~ la[ sol] ~ sol[ fad] ~ |
  fad8[ mi] ~ mi[ re] ~ re[ dod] |
  %% 45 :
  re8[ re'] ~ re[ do! si la] |
  si2 la4 ~ |
  la4  r4  r4 |
  r8 fad'4 mi red8 |
  mi2 red4 |
  %% 50 :
  mi8 sold, la4 si ~ |
  \once \override NoteColumn  #'force-hshift = #1.2 si8[ la16 sold] la4. si16 do! |
  si4 do si8 la |
  \dotsDown sold4. la8 si4 ~ |
  \once \override NoteColumn  #'force-hshift = #1.0 si4 la8 fa sol! la |
  %% 55 :
  fa4 la sold |
  mi4. \dotsUp fa8 sol!4 ~ |
  sol4 fa8 mi fa re |
  mi8[ la] ~ la[ la] sold4 |
  la8[ la] ~ la[ sol! fa mi] |
  %% 60 :
  fad4 sold2 |
  la4. la8[ sol! fad] |
  sol4 fad2 |
  sold8[ mi do' si] ~ si[ mi,] |
  la4. la8 ~ la[ sold] |
  %% 65 :
  la4 do ~ do8 la |
  sol8 si do sol ~ sol[ fad] |
  sol4 r4 r4 |
  la4 sib la8 sol |
  fad!4. sol8 la4 ~ |
  %% 70 :
  la4 sol8 fad sol la |
  fad[ sol] ~ sol[ sol] fad4 |
  sol8[ si, do re mi fad] |
  sol8 la \dotsDown si4. \dotsNeutral la8 |
  sol8[ re mi re] ~ re[ do] |
  %% 75 :
  si4. do8 re4 ~ |
  re4 do8 si do re |
  si4 \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r4  \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r4
}

basse = \relative do' {
  \global
  \stemUp
  %%1 :
  r8 re8 [do si] la4 |
  sol8 fad sol la si4 |
  r8 sol8 [la sol la si] | 
  sol4 si la8 sol |
  %%5 :
  \tieUp fad4 sol la~
  la sol8 fad sol la
  fad sol mi do re4~
  re8 sol fad mi re4
  \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r8 sol8[ la sol la si] |
  %% 10 :
  sol4 \once \override Rest #'extra-offset = #'( 0.0 . +0.2 ) r4 \once \override Rest #'extra-offset = #'( 0.0 . -0.8 ) r4 |
  \once \override Rest #'extra-offset = #'( 0.0 . +0.1 ) r8 la8[ sol fad] mi4 |
  si'4 re sol,8 si |
  \tieUp la sol re'2~ |
  re8 si la sol fa sol |
  %% 15 :
  mi8 sol la sol la si |
  sol4 si la8 sol |
  fad4 sol la~ |
  la sol8 fad sol la |
  fad sol mi do re4~ |
  %% 20 :
  re8 sol fad mi re4 |
  la'8\rest sol8[ la sol la si] |
  sol4 \once \override Rest #'extra-offset = #'( 0.0 . +0.2 ) r4 \once \override Rest #'extra-offset = #'( 0.0 . -0.8 ) r4 |
  r8 la8[ sol fad] mi4 |
  si'8 fad sol la re,4 |
  %% 25 :
  la'2 re,4~ |
  re8 si mi fa sol la~ |
  la[  re,] ~ re[ re mi fa] |
  mi sol fad mi re4~ |
  re mi8 fad sol la | 
  %% 30 :
  si4. do8[ re mi~] |
  mi re mi4 re8 do |
  si4 do8\rest do8[ si la] |
  sol4 la8\rest sol8[ fad mi] |
  re mi re do si4 |
  %% 35 : 
  \once \override Rest #'extra-offset = #'( 0.0 . -2.0 ) r8 si8[ do mi re do] |
  re4 mi re~ |
  re do'8\rest si8[ la sol] |
  fad mi re4 mi~ |
  mi8[ la8] ~ la8[ la si do!] |
  %% 40 :
  si4 r8 sol8[ fad mi] |
  re!4 r8 si'8[ la sol] |
  fad4 mi8 sol fad mi |
  re4 dod re |
  sol fad mi |
  %% 45 :
  re mi fad |
  sol2 mi4 |
  fad si8 la si do! |
  la2. |
  si4 do8\rest do8[ si la]|
  %% 50 :
  sold4 la4\rest la\rest |
  \once \override NoteColumn  #'force-hshift = #1.2 \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r8 mi8[ fad sol!] la4 |
  \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r8 si8[ la sol] fad4 |
  do'8\rest do8[ si la] sold4 |
  \once \override NoteColumn  #'force-hshift = #1.0 la8 fa mi re dod4 |
  %% 55 :
  re4 la'4\rest si4~ |
  si8 la sol! fa mi la~ |
  la sol la4 sold |
  la8 mi' re do si mi ~ |
  mi re do si la4~ |
  %% 60 :
  la si2 |
  la4 do si8 la |
  sol4 la si~ |
  si la8 sold la sol |
  fa8 mi fa re mi re |
  %% 65 :
  do4 mi re |
  sol2 re'4~ |
  re \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r4 \once \override Rest #'extra-offset = #'( 0.0 . -1.0 ) r4
  la8\rest la8[ sol fa mi la~ ] |
  la sol fad mi re4~ |
  %% 70 :
  re8 fad sol la si do | 
  la sol \once \override NoteColumn #'force-hshift = #2.5 la si do re |
  si re do si la4 |
  sol r8 la8[ sol fa] |
  mi4. fa8 sol4~ 
  %% 75 :
  sol4 fa8 mi fad sol~ 
  sol re mib4 re8 do | 
  re4 r4 r4
} 

dbasse = \relative do' {
  \global
  \stemDown\tieDown
  %% 1:
  sol4 do, re |
  mi re8 do si sol |
  do4 la re |
  sol8 fad mi re dod la |
  %% 5 :
  re re, sol mi la4 |
  re,2 r4 |
  r8 sol8[ do la re re,] |
  sol4 la si |
  do la re |
  %% 10 :
  sol mi la |
  re, sol, la |
  si fad sol |
  do, re2 |
  sol4 la si |
  %% 15 :
  do4 la re |
  sol8[ fad! mi re dod la ]
  re  [ re, sol mi ] la4 | 
  re,2 r4
  sol8\rest sol[ do! la re re,] |
  %% 20 :
  sol4 la si |
  do la re |
  sol mi la |
  re, sol, la |
  si mi,8 fad sol4 |
  %% 25 :
  do,4 re2 |
  sol4 mi la |
  re, fad! sold |
  la4. sol!8 fad4 |
  sol mi2 |
  %% 30 :
  re4 re' mi |
  la,8 si do4 re |
  sol, do, re |
  \dotsDown sol2. ~ |
  sol2.~ |
  %% 35 :
  sol2.~ |
  sol4 do re |
  sol, la2 |
  re,2 r4 |
  la'4 dod red |
  %% 40 :
  mi2 la,4 |
  re,! re' dod |
  re mi la, |
  re4 mi,4\rest mi4\rest |
  \once \override Rest #'extra-offset = #'( 0.0 . -2.0 ) r8 mi8[ fad sol] la4 |
  %% 45 :
  si2 la4 |
  sol si dod |
  re si mi |
  la, si do! |
  sol si2 |
  %% 50 :
  mi,4 fad! sold |
  \once \override NoteColumn  #'force-hshift = #1.2 la4. sol!8 fad4 |
  sol4 fad2 |
  mi2. |
  \once \override NoteColumn  #'force-hshift = #1.0 la2. |
  %% 55 :
  re8 do! si4 mi |
  la,4 si dod |
  \dotsDown re4. do!8 si4 |
  do re mi |
  la,4. si8 dod4 |
  %% 60 :
  re8 do! si4 mi |
  la,8 sol! fad4 re |
  mi re2 |
  do2.~ |
  do8[ do' re si mi mi,] |
  %% 65 :
  la4 mi fad! |
  sol do, re |
  sol8 fa mi4 fa8 mi |
  re4 sol la |
  re, re'4. do!8 |
  %% 70 :
  si4. re8 sol,4 |
  re'8 mi \once \override NoteColumn  #'force-hshift = #2.5 do4 re |
  sol,2.~
  sol~
  sol~
  %% 75 :
  sol~
  sol~
  sol4_\fermata r4 r4
} 

\paper {
  %betweensystempadding = 1\mm
  %betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  %headsep = 1\mm
  %aftertitlespace = 1\mm
  indent = 3\cm
  %bottommargin = 4\mm 
  topmargin = 2\mm
}



\score{
  \new PianoStaff {
    <<
      \set PianoStaff.systemStartDelimiterHierarchy = #'(SystemStartBar (SystemStartBrace a b ))
      \set PianoStaff.instrument = \markup {\large\italic \center-align {"à 2" "CLAVIERS" " " " " " " " " " " " " "2 PÉDALES" } \hspace #1 }

      \new Staff = "dessus" << 
	\clef "violin"
	\choral
      >>
      \new Staff = "basse" {
	<<
	  \clef "violin" 
	  \alto \\
	  \tenor
	>>
      }
      \new Staff = "pedale" {
	%\set Staff.instrument = \markup {  \large \italic "2 PÉDALES" }
	<<
	  \clef "bass"
	  \basse \\
	  \dbasse
	>>
      }
    >>
  }

  \layout{
  }
}

choralmidi =  \relative do'' {
  \global
  %%  1 :
  R2.*6
  %%  7 :
  re4 mi re8 mi16 do
  si4. do8 re4 ~ 
  re do8 si do re 
  % 10 :
  si2 r4
  %%la4 si dod8.^\prallprall si32 dod 
  la4 si \times 6/9 {dod32 re dod re dod re dod re dod} si32 dod |
  re4. do!8 si4 
  %%do8 ( re16 mi ) la,4.^\prall sol16 la 
  do8 re16 mi la,32 si32 la16 ~ la4 sol16 la 
  sol2. ~ 
  %% 15 :
  sol4 r4 r4 
  R2.*3
  re'4 mi re8 do 
  % 20 :
  si4. do8 re4 ~ 
  re do8 si do re 
  si2 r4
  la4 si  \times 6/9 {dod32 re dod re dod re dod re dod} si32 dod 
  re4. do!8 si4 
  % 25 :
  do8 ( re16 mi ) la,32 si32 la16 ~ la4 sol16 la 
  sol2 r4
  R2.*7
  %% 34 :
  sol4 la si 
  % 35 :
  do8 re16 mi la,2 
  si8 do la32 si32 la16 ~ la4 sol16 la  
  sol4 r4 r4
  R2.*2
  %% 40 :
  sol4 si dod 
  re4. dod16 si mi4 
  si16 dod si dod re32 dod re dod re dod re dod re dod re dod ~ dod8 |  
  re4 r4 r4
  R2.*2
  %% 46 :
  si4 re mi 
  re2 si4 
  do2. 
  si2.~ 
  % 50 :
  si4 r4 r4
  R2.*5
  %% 56
  mi8. r16  mi8. r16  mi4 |
  la,2 re4 
  do4 si32 do32 si16 ~ si4 la16 si |
  la2.~ 
  %% 60 :  
  la4 r4 r4
  R2.*4
  %% 65 :
  r4 r4 do4 
  si2 la4 
  sol4. sib8  la sol
  fa16 sol fa mi32 r32 mi32 fa mi4~mi16 re16 mi | 
  re2 r4
  %% 70 :
  R2.*3
  re4 sol4. la8 
  si8. do16 \times 6/7 {re32 do re do re do re}  do16 ~ do8  si16 do | 
  re4. do8 si4 
  do8 ( re16 mi ) la,32 si32 la16 ~ la4 sol16 la 
  sol4 r4 r4 

}

altomidi = \relative do'' {
  \global
  %%1 :
  re4 mi re8 [do] |
  si4. do8 re4~ |
  re4 do8 si do re |
  si4 mi4\rest  mi4\rest |
  %% 5 :
  la,4 si dod
  re4. do!8 [ si la ]
  do si la2
  %%\stemDown la sol~sol4 fad |
  sol4 r4 r8 re'8 |
  mi4 fad2 | 
  %% 10 :
  sol4 ~ sol16 r16 sol8 fad mi |
  fad4 mi2 |
  re4 r4 re4 |
  mi4 re4. do8 |
  si4. do8 re4 ~ |
  %% 15 :
  re4 do8 si do re |
  si4 mi4\rest mi4\rest |
  la, si dod |
  re4. do!8 [ si la] |
  %%\stemDown \tieDown la sol~ sol4 fad |
  do si la2 
  %% 20 :
  sol4  r4 r8 re'8 |
  mi4 fad2 |
  sol4~sol16 r16 sol8[ fad mi] |
  fad4 mi2 |
  re4 r4 r8 sol,8~ |
  %% 25 :
  sol4 fad2 |
  sol4.  fa8 mi4 |
  fa4 re2 |
  do4 r4 la'4 |
  si dod2 |
  %% 30 :
  re4. do!8 si4 |
  do8 si la2 |
  sol2 r4 |
  re'4 mi re8 do | 
  si4. do8 re4 ~ |
  %% 35 :
  re do8[ si do re] |
  si4 re4\rest re8\rest la8 |
  si4 dod2 |
  \dotsUp re4. do!8  si4 |
  do4 la2 |
  %% 40 :
  sol8. r16 r4 sol'4\rest |
  R2. |
  R2. |
  la4\rest la4\rest la4 |
  si la sol |
  %% 45 :
  fad4. sol8 la4 |
  re,4 sol8 fad sol la |
  fad mi fad4 sold |
  la4.  sol!8 fad4 |
  sol8 la fad2 |
  %% 50 :
  mi16 r16 mi8 ~ mi re! ~ re  dod16 r16 |
  dod4. red16 mi red4 |
  mi4. la16 fad red4 |
  mi fa mi8 re! |
  do4. re8 mi4 ~ |
  %% 55 :
  mi8 la, re do re mi |
  do[ dod] ~ dod[ re] mi4~ |
  mi4 re r4 |
  mi fa mi8 re | 
  do4. re8 mi4 ~ |
  %% 60 :
  mi re8 do re mi |
  do4 r4 r4 |
  si do re |
  mi4. re8 do4 ~ |
  do8 re16 do si2 |
  %% 65 :
  la8[ mi'] ~ mi[ sol! ] la4 |
  re, mi re8 do | 
  si4. dod8 re4 ~ |
  re4. mi8 dod4 |
  re8 la si4 do! |
  %% 70 :
  re4. do8[ si la] |
  do si la4. si8 |
  sol[ re' mi re] ~ re[ do] |
  si4~si16 r16  do8 re4 ~ |
  re do8 si do re |
  %% 75 :
  sol,2. ~ |
  sol4 fad2 |
  sol4 r4 r4
}

tenormidi = \relative do'' {
  \global
  %%1 :
  si4 la8 sol fad4 |
  sol fad8 mi re4 |
  mi fad2
  sol4~sol16 r16 sol8 [fad mi] |
  %%5 :
  fad4 mi4. sol8
  fad sol la4 re, |
  la'8 sol ~ sol4 fad4
  sol8 [ re' ] ~ re [ do ] ~ do [ si ] ~ |
  si sol do4 re~ |
  %%10 :
  re8 sol, si4 dod |
  re4. si8 la sol |
  fad [ si ] ~ si [ la ] ~ la [ sol ] ~ |
  sol2 fad4 |
  sol fad8 mi re4 |
  %% 15 :
  mi fad!2 |
  sol4~sol16 r16 sol8[ fad mi] |
  fad4 mi4. sol8 |
  fad8 sol la4 re, |
  %%\stemUp do'8 si la2 |
  la'8 sol ~ sol 4 fad
  %% 20 : 
  sol8[ re'] ~ re[ do] ~ do[ si] ~ |
  si8 sol do4 re ~ |
  re8 sol, si4 dod |
  re4. si8[ la sol ] |
  fad8 [ si] ~ si[ la] ~ la[ re,] |
  %% 25 :
  mi4 re do |
  si8[ mi] ~ mi[ re] ~ re[ dod] |
  re4 ~ re8[ do!] ~ do[ si] ~ |
  si8[ mi, la si do re] |
  sol,8[ sol'] ~sol[ si la sol] |
  %% 30 :
  fad8[  si] ~ si[ la] ~ la[ sold] |
  la8 sold la sol fad4 |
  sol8 re mi4 re8 do |
  si8[ si'] ~ si do si la |
  sol2 re8 sol |
  %% 35 :
  mi4 fad2 |
  sol4~sol16 r16 sol8 fad4 |
  sol8 fad mi2 |
  re4 fad sold |
  la4 ~ la8 sol! fad4 ~ |
  %% 40 :
  fad8[ mi16 fad16] sol8[ si la sol] |
  fad4. sol8 la4 ~ |
  la4 sol8 si la sol |
  fad8[ la] ~ la[ sol] ~ sol[ fad] ~ |
  fad8[ mi] ~ mi[ re] ~ re[ dod] |
  %% 45 :
  re8[ re'] ~ re[ do! si la] |
  si2 la4 ~ |
  la4 r4 r4 |
  r8 fad'4 mi red8 |
  mi2 red4 |
  %% 50 :
  mi8 sold, la4 si ~ |
  si8[ la16 sold] la4. si16 do! |
  si4 do si8 la |
  sold4. la8 si4 ~ |
  si4 la8 fa sol! la |
  %% 55 :
  fa4 la sold |
  mi4. fa8 sol!4 ~ |
  sol4 fa8 mi fa re |
  mi8 la ~ la16 r16 la8 sold4 |
  la16 r16 la8 ~ la[ sol! fa mi] |
  %% 60 :
  fad4 sold2 |
  la4~la16 r16 la8[ sol! fad] |
  sol4 fad2 |
  sold8[ mi do' si] ~ si[ mi,] |
  la4~la16 r16 la8 ~ la[ sold] |
  %% 65 :
  la4 do ~ do8 la |
  sol8 si do sol ~ sol[ fad] |
  sol4 r4 r4 |
  la4 sib la8 sol |
  fad!4. sol8 la4 ~ |
  %% 70 :
  la4 sol8 fad sol la |
  fad sol ~ sol16 r16 sol8 fad4 |
  sol8[ si, do re mi fad] |
  sol8 la si4. la8 |
  sol8[ re mi re] ~ re[ do] |
  %% 75 :
  si4. do8 re4 ~ |
  re4 do8 si do re |
  si4 r4 r4
}

\score { 
  \unfoldRepeats {
  <<
    \new Staff {
      \set Staff.midiInstrument = "bassoon"
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
      \transpose do do' 
      \basse
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \basse
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \dbasse
    }
    \new Staff { % tempo staff
      s2.*75 \tempo 8 = 70 s2. \tempo 8 = 30 s2.
    }
  >>
}
  \midi{ \tempo 8 = 85 }

}
