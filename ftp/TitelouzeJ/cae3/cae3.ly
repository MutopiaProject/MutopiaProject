\version "2.18.2"
\include "italiano.ly"

% Écrit avec l'aide très secourable de lyqi ! Essayez-le !
% Written with the most secourable help of lyqi ! Try it !

\header{
     title = "Ad Cœnam"
     mutopiatitle = "Ad Cœnam (3e verset)"
     subtitle = "3e verset"
     piece = ""
     instrument = "Orgue - Organ"
     composer = "Jean Titelouze (1563-1633)"
     mutopiainstrument = "Organ"
     mutopiacomposer = "TitelouzeJ"
     style = "Baroque"
     %copyright = "Public Domain"
     source = "Edition Schott 1869 - Alexandre Guilmant"
     opus = ""
     enteredby = "Gérard Gréco"
     maintainer = "Gérard Gréco"
     license = "cc-by-sa"
     mutopialicense = "Creative Commons Attribution-ShareAlike 4.0"

 footer = "Mutopia-2015/06/14-2016"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

halsdown = { \stemDown \tieDown \slurDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral }
halsup = { \stemUp \tieUp \slurUp}
staffdown = { \change Staff = "basse" \halsup }
staffup = { \change Staff = "dessus" \halsdown }
std = { \change Staff = "basse" }
stu = { \change Staff = "dessus" }


global = {
  \time 4/4
  \key do' \major
}

ouah = \relative do' {
  \global \halsup
  %  1 :
  re2 re4 fa~
  fa8 mi re4 do fa
  mi4. fa8 sol4 do
  si8 [la] sol [la] si [do] re do
  %  5 :
  si la do4. si8 la [sol]
  fa2 mi
  fa4. sol8 la sib la sol
  fa mi re do re mi fa re
  mi4 do re mi
  % 10 :
  fa mi2 re4
  mi4. fa8 sol la16 si do4~
  do8 do si4 mi, mi'~
  mi re do sol~
  sol la si do8 si
  % 15 :
  la [sol] fa sol la4 sol
  la2 r
  r4 la la do~
  do8 si la4 sol do8 re
  mi2 la,4 re8 do
  % 20 :
  si4 la2 sold4
  la2 r
  r re4\rest la~
  la8 la sol4 do si
  dod re2 mi8 re
  % 25 :
  do8 si la si sol la fa sol
  mi4 fa sol2
  la4 do2 sib4
  la2. sol4
  la1
  % 30 :
  R1
  r4 la4. la8 sol4
  do si do re
  mi sold,8 la si la4 sol!8
  do si la4. sol8 fad4
  % 35 :
  sol8 la sib4 la2
  sol r
  \once\override MultiMeasureRest  #'staff-position = #+4 R1
  r2 la2
  do4. si8 la fa sib4
  % 40 :
  la do sib la~
  la8 la sol4 do, re8 mi
  fa [sol] la si dod re4 dod8
  re4 la2 re4
  do si mi, fa~
  % 45 :
  fa mi do4. re8
  mi2 fa4 sol8 la
  si2 do4 re
  mi2. re8 do
  si4 do8 si la2
  % 50 :
  sol8 fa mi la sol fa mi re16 mi
  fa2. do4~
  do8 re mi2 re4~
  re8 mi fa2 mi4~
  mi8 fa sol4. sol8 fad [sol]
  % 55 :
  la4 re8 do si4 do8 si
  la4 la2 sol4
  fa mi do'8 [si] la si
  dod4 re2 dod4
  \once \override Script #'padding = # 1  re1^\fermata \bar "|."
  
}

ouahmidi = \relative do' {
  \global \halsup
  %  1 :
  re4.~re16 r16 re4 fa~
  fa8 mi re4 do fa
  mi4. fa8 sol4 do
  si8 [la] sol [la] si [do] re do
  %  5 :
  si la do4. si8 la [sol]
  fa2 mi
  fa4. sol8 la sib la sol
  fa mi re do re mi fa re
  mi4 do re mi
  % 10 :
  fa mi2 re4
  mi4. fa8 sol la16 si do4~
  do16 r16 do8 si4 mi, mi'~
  mi re do sol~
  sol la si do8 si
  % 15 :
  la [sol] fa sol la4 sol
  la2 r
  r4 la8. r16 la4 do~
  do8 si la4 sol do8 re
  mi2 la,4 re8 do
  % 20 :
  si4 la2 sold4
  la2 r
  r re4\rest la~
  la16 r16 la8 sol4 do si
  dod re2 mi8 re
  % 25 :
  do8 si la si sol la fa sol
  mi4 fa sol2
  la4 do2 sib4
  la2. sol4
  la1
  % 30 :
  R1
  r4 la4~la16 r16 la8 sol4
  do si do re
  mi sold,8 la si la4 sol!8
  do si la4. sol8 fad4
  % 35 :
  sol8 la sib4 la2
  sol r
  \once\override MultiMeasureRest  #'staff-position = #+4 R1
  r2 la2
  do4. si8 la fa sib4
  % 40 :
  la do sib la~
  la16 r16 la8 sol4 do, re8 mi
  fa [sol] la si dod re4 dod8
  re4 la2 re4
  do si mi, fa~
  % 45 :
  fa mi do4. re8
  mi2 fa4 sol8 la
  si2 do4 re
  mi2. re8 do
  si4 do8 si la2
  % 50 :
  sol8 fa mi la sol fa mi re16 mi
  fa2. do4~
  do8 re mi2 re4~
  re8 mi fa2 mi4~
  mi8 fa sol4~sol16 r16 sol8 fad [sol]
  % 55 :
  la4 re8 do si4 do8 si
  la8. r16 la2 sol4
  fa mi do'8 [si] la si
  dod4 re2 dod4
  \once \override Script #'padding = # 1  re1^\fermata \bar "|."
  
}



meuh = \relative do' {
  \global \staffdown 
  %  1 :
  \once\override MultiMeasureRest  #'staff-position = #+6 R1
  la2\rest la
  la4 do4. si8 la4
  sol do si4. do8
  %  5 :
  re4 la8 si do re mi4
  la, re2 do8 si
  la sol fa mi fa sol la sib
  la1
  \staffup r2 la
  % 10 :
  la4 \dotsDown do4. \dotsNeutral si8 la4
  sol do8 re mi2
  re4 re2 do8 re16 mi
  fa2 mi
  mi4 re8 do si4 mi
  % 15 :
  r2 re
  re4 fa4. mi8 re4
  do re8 mi fa4 mi
  do re mi2~
  mi4 la8 sol fad2
  % 20 :
  r2 mi4\rest mi~
  mi8 mi do4 fa mi~
  mi8 fa sol4. mi8 fa [mi]
  re [fa] mi re mi2~
  mi4 fad sol2
  % 25 :
  \once\override MultiMeasureRest  #'staff-position = #-4 R1
  r4 \dotsDown re4. \dotsNeutral re8 do4
  fa mi fad sol
  fa mi8 re do la do4~
  do8 re16 mi fa8 mi re do do si16 la
  % 30 :
  si4. la8 sol la si4
  \dotsDown la4. si8 do re mi fa
  sol4. \dotsNeutral fa8 mi4 la
  sol8 fa mi re16 do si8 do16 re mi4~
  mi do8 re mi4 re8 do
  % 35 :
  si [la] re mi fa2
  r4 mi4 fa4. mi8
  re do fa4. mi16 re sol fa mi re
  do4 re8 mi fa mi4 re8
  mi2 r4 \dotsDown re
  % 40 :
  fa4. \dotsNeutral mi8 re [do] re do
  sib2 la
  r r4 mi'4
  fa4. mi8 re do fa4
  mi4. re8 do si la4
  % 45 :
  si do8 si la2
  sol4 la8 si do re mi4
  re2 r4 la'~
  la sol2 fa4~
  fa mi fa8 mi do re
  % 50 :
  mi do4 re8 mi la, do4
  r la2 la4
  sol4. la8 si do si4
  \dotsDown la4. \dotsNeutral si8 do re do4
  si4. do8 re mi re4~
  % 55 :
  re2 mi8 re do4
  re8 la do4 sib2
  la8 si do re mi4 fa8 sol
  la sol fa4 mi2
  re1
}

meuhmidi = \relative do' {
  \global \staffdown 
  %  1 :
  \once\override MultiMeasureRest  #'staff-position = #+6 R1
  la2\rest la4.~la16 r16
  la4 do4. si8 la4
  sol do si4. do8
  %  5 :
  re4 la8 si do re mi4
  la, re2 do8 si
  la sol fa mi fa sol la sib
  la1
  \staffup r2 la4.~la16 r16
  % 10 :
  la4 \dotsDown do4. \dotsNeutral si8 la4
  sol do8 re mi2
  re4 re2 do8 re16 mi
  fa2 mi
  mi4 re8 do si4 mi
  % 15 :
  r2 re4.~re16 r16
  re4 fa4. mi8 re4
  do re8 mi fa4 mi
  do re mi2~
  mi4 la8 sol fad2
  % 20 :
  r2 mi4\rest mi~
  mi16 r16 mi8 do4 fa mi~
  mi8 fa sol4. mi8 fa [mi]
  re [fa] mi re mi2~
  mi4 fad sol2
  % 25 :
  \once\override MultiMeasureRest  #'staff-position = #-4 R1
  r4 \dotsDown re4~re16 r16 \dotsNeutral re8 do4
  fa mi fad sol
  fa mi8 re do la do4~
  do8 re16 mi fa8 mi re do do si16 la
  % 30 :
  si4. la8 sol la si4
  \dotsDown la4. si8 do re mi fa
  sol4. \dotsNeutral fa8 mi4 la
  sol8 fa mi re16 do si8 do16 re mi4~
  mi do8 re mi4 re8 do
  % 35 :
  si [la] re mi fa2
  r4 mi4 fa4. mi8
  re do fa4. mi16 re sol fa mi re
  do4 re8 mi fa mi4 re8
  mi2 r4 \dotsDown re
  % 40 :
  fa4. \dotsNeutral mi8 re [do] re do
  sib2 la
  r r4 mi'4
  fa4. mi8 re do fa4
  mi4. re8 do si la4
  % 45 :
  si do8 si la2
  sol4 la8 si do re mi4
  re2 r4 la'~
  la sol2 fa4~
  fa mi fa8 mi do re
  % 50 :
  mi do4 re8 mi la, do4
  r la4.~la16 r16 la4
  sol4. la8 si do si4
  \dotsDown la4. \dotsNeutral si8 do re do4
  si4. do8 re mi re4~
  % 55 :
  re2 mi8 re do4
  re8 la do4 sib2
  la8 si do re mi4 fa8 sol
  la sol fa4 mi2
  re1
}

miaou = \relative do {
  \global \halsdown
  %  1 :
  R1*6
  %  7 :
  r2 re2
  re4 fa4. mi8 re4
  \halsup do fa2 mi4
  % 10 :
  re la' fa2
  do2. mi4
  fad sol la2~
  la4 re, mi4. fa8
  sol4 fad sol2
  % 15 :
  fa8 [mi] la sol fa sol16 la sib4
  la2 re,4 sib'
  la4. sol8 fa4 sol
  la4. si8 do2~
  do8 si la4. fad8 si [la]
  % 20 :
  sol4 do si2
  r4 la4. la8 sol4
  do si do re
  si do8 si la4 sold
  la2 si4 do8 si
  % 25 :
  la si do re mi4 do~
  do la r2
  r r4 re,~
  re8 re do4 fa mi
  fa re8 mi fa4 mi
  % 30 :
  re sol8 fa mi fa sol4~
  sol fa mi do'8 re
  mi4. re8 do [si] la si
  do4 si8 la sold la si4
  la8 mi fa4 mi la
  % 35 :
  sol2 r4 la
  do4. si8 la fa sib4~
  sib8 la sol fa sib2
  la2 r4 la4~
  la8 [sol] la sol fa4 sol
  % 40 :
  la2 fa
  r4 re4 fa4. mi8
  re do fa4 mi2
  re4 fa4. mi8 re4
  la' sold la re,
  % 45 :
  sol mi2 fa4
  mi2 r
  r la2
  do4 si la2
  re,4 sol do, fa
  % 50 :
  mi8 la sol fa mi fa sol4
  fa2 do4 fa~
  fa mi8 fa sol [do,] re sol~
  sol [sol] fa sol la [re,] mi la~
  la [la] sol la si [do] la sol
  % 55 :
  fad4 sol4. fa8 mi4
  fa4. mi8 re4. mi8
  fa sol la4. sol8 fa4
  mi re mi la
  \once \override Script #'padding = # 1  la1^\fermata \bar "|."
}

miaoumidi = \relative do {
  \global \halsdown
  %  1 :
  R1*6
  %  7 :
  r2 re4.~re16 r16
  re4 fa4. mi8 re4
  \halsup do fa2 mi4
  % 10 :
  re la' fa2
  do2. mi4
  fad sol la2~
  la4 re, mi4. fa8
  sol4 fad sol2
  % 15 :
  fa8 [mi] la sol fa sol16 la sib4
  la2 re,4 sib'
  la4. sol8 fa4 sol
  la4. si8 do2~
  do8 si la4. fad8 si [la]
  % 20 :
  sol4 do si2
  r4 la4. la8 sol4
  do si do re
  si do8 si la4 sold
  la2 si4 do8 si
  % 25 :
  la si do re mi4 do~
  do la r2
  r r4 re,~
  re16 r16 re8 do4 fa mi
  fa re8 mi fa4 mi
  % 30 :
  re sol8 fa mi fa sol4~
  sol fa mi do'8 re
  mi4. re8 do [si] la si
  do4 si8 la sold la si4
  la8 mi fa4 mi la
  % 35 :
  sol2 r4 la
  do4. si8 la fa sib4~
  sib8 la sol fa sib2
  la2 r4 la4~
  la8 [sol] la sol fa4 sol
  % 40 :
  la2 fa
  r4 re4 fa4. mi8
  re do fa4 mi2
  re4 fa4. mi8 re4
  la' sold la re,
  % 45 :
  sol mi2 fa4
  mi2 r
  r la2
  do4 si la2
  re,4 sol do, fa
  % 50 :
  mi8 la sol fa mi fa sol4
  fa2 do4 fa~
  fa mi8 fa sol [do,] re sol~
  sol [sol] fa sol la [re,] mi la~
  la [la] sol la si [do] la sol
  % 55 :
  fad4 sol4. fa8 mi4
  fa4. mi8 re4. mi8
  fa sol la4. sol8 fa4
  mi re mi la8. r16
  \once \override Script #'padding = # 1  la1^\fermata \bar "|."
  }

  coincoin = \relative do {
  \global \halsdown
  %  1 :
  \override MultiMeasureRest  #'staff-position = #-4 R1*6
  %\once\override MultiMeasureRest  #'staff-position = #-8 R1
  \once\override MultiMeasureRest.extra-offset = #'(-1.3 . 0) R1
  R1*5
  %  13 :
  la2 la4 do4~
  do8 si la4 sol do~
  % 15 :
  do re2 sol4
  fa8 [mi] re do sib2
  fa'4 re2 do8 si
  la4 fa' mi la~
  la dod, re2
  % 20 :
  mi1
  la,2 sol\rest
  R1
  R1
  r4 re'4. re8 do4
  % 25 :
  fa2 mi4 la~
  la8 sol fa4 mi4. fa16 mi
  re8 mi16 re do8 si la4 sol
  la2 sol\rest
  sol\rest r4 la~
  % 30 :
  la8 la sol4 do si
  do re mi2
  mi4 sol2 fa4
  mi1
  la,4. si8 dod4 re
  % 35 :
  sol,2 re'
  mi r
  r re
  \dotsDown fa4. \dotsNeutral mi8 re do fa4
  mi do re2~
  % 40 :
  re4 la sib fa
  sol2 la
  la1
  R1
  R1
  % 45 :
  sol2\rest la2
  do4. si8 la fa do'4
  si8 sol sol'2 fa4
  mi4. re8 do si la4
  sol2 fa8 sol la fa
  % 50 :
  do'1
  fa,2. fa4
  do'2 sol
  re' la
  mi' re4 re~
  % 55 :
  re8 [do] si la sol4 la8 sol
  fa2 sol
  la1~
  la1~
  re1
}

 coincoinmidi = \relative do {
  \global \halsdown
  %  1 :
  \override MultiMeasureRest  #'staff-position = #-4 R1*6
  %\once\override MultiMeasureRest  #'staff-position = #-8 R1
  \once\override MultiMeasureRest.extra-offset = #'(-1.3 . 0) R1
  R1*5
  %  13 :
  la4.~la16 r16 la4 do4~
  do8 si la4 sol do~
  % 15 :
  do re2 sol4
  fa8 [mi] re do sib2
  fa'4 re2 do8 si
  la4 fa' mi la~
  la dod, re2
  % 20 :
  mi1
  la,2 sol\rest
  R1
  R1
  r4 re'4. re8 do4
  % 25 :
  fa2 mi4 la~
  la8 sol fa4 mi4. fa16 mi
  re8 mi16 re do8 si la4 sol
  la2 sol\rest
  sol\rest r4 la~
  % 30 :
  la16 r16 la8 sol4 do si
  do re mi2
  mi4 sol2 fa4
  mi1
  la,4. si8 dod4 re
  % 35 :
  sol,2 re'
  mi r
  r re
  \dotsDown fa4. \dotsNeutral mi8 re do fa4
  mi do re2~
  % 40 :
  re4 la sib fa
  sol2 la4. r8
  la1
  R1
  R1
  % 45 :
  sol2\rest la2
  do4. si8 la fa do'4
  si8 sol sol'2 fa4
  mi4. re8 do si la4
  sol2 fa8 sol la fa
  % 50 :
  do'1
  fa,2~fa8 r8 fa4
  do'2 sol
  re' la
  mi' re8. r16 re4~
  % 55 :
  re8 [do] si la sol4 la8 sol
  fa2 sol
  la1~
  la1~
  re1
}


\score{
  \new PianoStaff 
  <<
    %\set PianoStaff.systemStartDelimiterHierarchy = #'(SystemStartBar (SystemStartBrace a b ))

    \new Staff = "dessus" <<
      \ouah
      \meuh
    >>
    
    \new Staff = "basse" << 
      \clef "bass" 
      \miaou
      \coincoin
      >>
  >>

  \layout{
  }
}

\score {
  \unfoldRepeats {
    <<
      \new Staff {
	\set Staff.midiInstrument = "soprano sax"
      \ouahmidi
    }
     \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \ouahmidi
    }
    \new Staff {
      \set Staff.midiInstrument = "soprano sax"
      \meuhmidi
    }
    \new Staff {
      \set Staff.midiInstrument = "baritone sax"
      \miaoumidi
    }
    \new Staff {
      \set Staff.midiInstrument = "baritone sax"
      \coincoinmidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \coincoinmidi
    }
  >>
}
  \midi{\tempo 4 = 90}
}
  
