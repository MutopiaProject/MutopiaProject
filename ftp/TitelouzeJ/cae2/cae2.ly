\version "2.18.2"
\include "italiano.ly"

% Écrit avec l'aide très secourable de lyqi ! Essayez-le !
% Written with the most secourable help of lyqi ! Try it !

\header{
     title = "Ad Cœnam"
     mutopiatitle = "Ad Cœnam (2e verset)"
     subtitle = "2e verset"
     piece = ""
     instrument = "Orgue - Organ"
     composer = "Jean Titelouze (1563-1633)"
     mutopiainstrument = "Organ"
     mutopiacomposer = "TitelouzeJ"
     style = "Baroque"
     license = "Public Domain"
     source = "Edition Schott 1869 - Alexandre Guilmant"
     opus = ""
     enteredby = "Gérard Gréco"
     maintainer = "Gérard Gréco"

 footer = "Mutopia-2015/06/14-2015"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

halsdown = { \stemDown \tieDown \slurDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral }
halsup = { \stemUp \tieUp \slurUp}


global = {
  \time 4/4
  \key do' \major
}

ouah = \relative do' {
  \global \halsup 
  %  1 :
  \override MultiMeasureRest  #'staff-position = #+4 R1*8
  re4 re2 fa4
  % 10 :
  re2 do4 fa~
  fa mi la2
  si4 do la re~
  re8 re dod4 re2
  R1
  % 15 :
  R1
  re2\rest la4 la~
  la sib la2
  sol4 do2 re4
  mi2~ mi8 re do si
  % 20 :
  la4. si8 do4 sol~
  sol la si do~
  do la r re~
  re do fa fa,
  sol la sib2
  % 25 :
  la2 r
  \once\override MultiMeasureRest  #'staff-position = #+2 R1
  r2 r4 la
  do4 si8 la sol4 mi
  fa8 sol la2 sol8 fa
  % 30 :
  mi re do4. re16 mi fa4
  mi8 sol4 fa8 mi4 re8 do
  re [mi] fa sol la4 sol8 fa
  sol4. mi8 la4. sol8
  fa sol la2 sold4
  % 35 :
  la2 r
  r4 mi fa mi8 re
  dod4 re2 sib'4
  la2 re
  do r4 la4
  % 40 :
  do si8 la sol4 mi
  fa2 mi4 re
  mi4. mi8 fa [sol] la sol
  fa4 sib la sol8 fa
  mi4 fa2 sol4~
  % 45 :
  sol8 la sib4 la2
  r r4 do~
  do sib2 la4~
  la re,8 mi fa re fa4
  mi fa sol2
  % 50 :
  si4\rest fa la2
  sol4 do2 si?4
  la4. si8 do si16 la sol4~
  sol8 [la] si do re2
  R1
  % 55 :
  R1
  r4 fa, la2
  sol4 do4. si?8 la sol
  fa sol la4 sol8 [fad] sol fa
  re [mi] fa sol la4 sol
  % 60 :
  do la sib la
  \once \override Script #'padding = # 1  fad1^\fermata \bar "|."
  
}

ouahmidi = \relative do' {
  \global \halsup 
  %  1 :
  \override MultiMeasureRest  #'staff-position = #+4 R1*8
  re8 r8 re2 fa4
  % 10 :
  re2 do4 fa~
  fa mi la2
  si4 do la re~
  re16 r16 re8 dod4 re2
  R1
  % 15 :
  R1
  re2\rest la8 r8 la4~
  la sib la2
  sol4 do2 re4
  mi2~ mi8 re do si
  % 20 :
  la4. si8 do4 sol~
  sol la si do~
  do la r re~
  re do fa fa,
  sol la sib2
  % 25 :
  la2 r
  \once\override MultiMeasureRest  #'staff-position = #+2 R1
  r2 r4 la
  do4 si8 la sol4 mi
  fa8 sol la2 sol8 fa
  % 30 :
  mi re do4. re16 mi fa4
  mi8 sol4 fa8 mi4 re8 do
  re [mi] fa sol la4 sol8 fa
  sol4. mi8 la4. sol8
  fa sol la2 sold4
  % 35 :
  la2 r
  r4 mi fa mi8 re
  dod4 re2 sib'4
  la2 re
  do r4 la4
  % 40 :
  do si8 la sol4 mi
  fa2 mi4 re
  mi4. mi8 fa [sol] la sol
  fa4 sib la sol8 fa
  mi4 fa2 sol4~
  % 45 :
  sol8 la sib4 la2
  r r4 do~
  do sib2 la4~
  la re,8 mi fa re fa4
  mi fa sol2
  % 50 :
  si4\rest fa la2
  sol4 do2 si?4
  la4. si8 do si16 la sol4~
  sol8 [la] si do re2
  R1
  % 55 :
  R1
  r4 fa, la2
  sol4 do4. si?8 la sol
  fa sol la4 sol8 [fad] sol fa
  re [mi] fa sol la4 sol
  % 60 :
  do la sib la
  \once \override Script #'padding = # 1  fad1^\fermata \bar "|."
}

meuh = \relative do' {
  \global \halsdown
  %  1 : 
 la2\rest la4 la ~ |
la sib la2 |
sol4 do2 si4 |
mi4 re8 do si4 do ~ |
%  5 :
do8 [re] mi do fa4 mi8 re | 
do [la] re [do] si la sol4 |
la si2 do4 |
sol2 la4\rest do4 ~ |
do sib la la ~ |
% 10 :
la sol \dotsDown la4. si?8 |
do4 do4. \dotsNeutral re16 mi fa4 ~ |
fa mi fa mi8 re |
mi2 fa4. mi16 re |
fa8 [sol] la [sol] fa [mi] re fa |
% 15 :
mi4 do fa mi8 re |
fa4 mi re do |
r4 re do fa ~ |
fa mi la4. si8 |
do4 si8 [la] sol [fa] mi sol ~ |
% 20 :
sol sol fa4 mi2 |
re8 mi fad4 sol8 fa! mi re |
do4. re8 mi fa re4 |
sol la8 sol fa mi re4 |
mi fa8 mi re4. mi8 |
% 25 :
fa [re] mi re dod4 re ~ |
re8 [mi] do re si2 |
do8 [mi] do re mi4 fa |
mi re2 dod4 |
re fa mi2 |
% 30 :
r2 la, |
do4 si8 la sol mi fa4 |
fa sib la8 [si!] do re |
mi re \dotsDown do4. \dotsNeutral la8 re4~ |
re8 [do] la si do re si4 |
% 35 :
do fa mi re8 do |
si4 do2 sib4 |
la fa sib8 [do!] re mi |
fa2 r4 re |
fa mi8 re do4. si8 |
% 40 :
la4 re2 do4 |
r la do si8 la |
sol4 do4 re8 [mi] fa mi |
re do re4 do4 r |
r do re4. do8 |
% 45 :
sib la re2 do8 re |
mi [re] do si? la4 la'~ |
la re,4. re8 dod4 |
re8 do sib4 la4. si!8 |
\dotsDown do4. \dotsNeutral re8 mi fa mi4 |
% 50 :
re2 r4 do |
mi2 re4 sol~ |
sol4. fa8 mi2 |
r4 sol4 fad sol |
la re,4. do8 do4~ |
% 55 :
do sib la8 si! do4 |
la re do fa~ |
fa mi do re |
re la re8. do16 sib4~ |
sib8 do re4 do8 [re] mi re |
% 60 :
do4 re2 dod4 |
re1
}

meuhmidi = \relative do' {
  \global \halsdown
  %  1 : 
 la2\rest la8 r8 la4 ~ |
la sib la2 |
sol4 do2 si4 |
mi4 re8 do si4 do ~ |
%  5 :
do8 [re] mi do fa4 mi8 re | 
do [la] re [do] si la sol4 |
la si2 do4 |
sol2 la4\rest do4 ~ |
do sib la la ~ |
% 10 :
la sol \dotsDown la4. si?8 |
do8 r8 do4. \dotsNeutral re16 mi fa4 ~ |
fa mi fa mi8 re |
mi2 fa4. mi16 re |
fa8 [sol] la [sol] fa [mi] re fa |
% 15 :
mi4 do fa mi8 re |
fa4 mi re do |
r4 re do fa ~ |
fa mi la4. si8 |
do4 si8 [la] sol [fa] mi sol ~ |
% 20 :
sol sol fa4 mi2 |
re8 mi fad4 sol8 fa! mi re |
do4. re8 mi fa re4 |
sol la8 sol fa mi re4 |
mi fa8 mi re4. mi8 |
% 25 :
fa [re] mi re dod4 re ~ |
re8 [mi] do re si2 |
do8 [mi] do re mi4 fa |
mi re2 dod4 |
re fa mi2 |
% 30 :
r2 la, |
do4 si8 la sol mi fa8 r8 |
fa4 sib la8 [si!] do re |
mi re \dotsDown do4. \dotsNeutral la8 re4~ |
re8 [do] la si do re si4 |
% 35 :
do fa mi re8 do |
si4 do2 sib4 |
la fa sib8 [do!] re mi |
fa2 r4 re |
fa mi8 re do4. si8 |
% 40 :
la4 re2 do4 |
r la do si8 la |
sol4 do4 re8 [mi] fa mi |
re do re4 do4 r |
r do re4. do8 |
% 45 :
sib la re2 do8 re |
mi [re] do si? la4 la'~ |
la re,4. re8 dod4 |
re8 do sib4 la4. si!8 |
\dotsDown do4. \dotsNeutral re8 mi fa mi4 |
% 50 :
re2 r4 do |
mi2 re4 sol~ |
sol4. fa8 mi2 |
r4 sol4 fad sol |
la re,4. do16 r16 do4~ |
% 55 :
do sib la8 si! do4 |
la re do fa~ |
fa mi do re |
re la re8. do16 sib4~ |
sib8 do re4 do8 [re] mi re |
% 60 :
do4 re2 dod4 |
re1
}

miaou = \relative do {
  \global \halsup
  %  1 :
  re4 re2 fa4
  re2 do4 fa4~
  fa mi la sol~
  sol fad sol mi
  %  5 :
  fa mi la sol~
  sol fa2 mi4
  fad sol4. fa8 mi re
  mi [fa] sol [re] mi [re] mi do
  sol' re sol2 fa4~
  % 10 :
  fa re8 mi fa4 mi8 re
  la'4. sol8 fa4. mi16 re
  sol4 la la2\rest
  la4 la2 sib4
  la2. fa4
  % 15 :
  sol la re re~
  re do8 si la2
  fa4. sol8 la si! do4~
  do8 si16 la sol4 do\rest la~
  la sol do do
  % 20 :
  re2 do
  si4 la sol2
  la8 si do4~ do si
  r la2 sib4~
  sib la2 sol4
  % 25 :
  fa sol8 fa mi4 fad
  sol la4. la8 sold4
  la4. si8 do4 re
  la fa mi la
  re,2 r
  % 30 :
  \once\override MultiMeasureRest #'staff-position = #+6 R1
  R1
  r4 re fa mi8 re
  do4 mi fa4. mi8
  re4 re mi2~
  % 35 :
  mi4 la sol2~
  sol4 mi la sol8 fa
  mi4 re2 sol4
  fa8 sol la fa sol fa mi re
  la'4 sol8 fa mi4 fa~
  % 40 :
  fa fa mi2
  re mi4 fa
  mi la4. sol8 fa sol16 la
  sib8 [la] fa sol la2~
  la8 sol fa4. mi8 re4
  % 45 :
  r re fa mi8 re
  do4 mi fa4. mi8
  re4 re mi2
  r r4 fa!
  la2 sol4 do~
  % 50 :
  do sib la fa
  mi la2 sol4
  re' la4. si8 do4~
  do8 si16 la sol8 la si la si4
  do si8 la sol4 la8 sol
  % 55 :
  fa2 la4\rest fa
  fa sib la do~
  do sol la la~
  la8 [sol] fa mi re2
  sol8 [fa] re mi fa4 sol~
  % 60 :
  sol fa mi2
  \once \override Script #'padding = # 1 re1^\fermata
}

miaoumidi = \relative do {
  \global \halsup
  %  1 :
  re8 r8 re2 fa4
  re2 do4 fa4~
  fa mi la sol~
  sol fad sol mi
  %  5 :
  fa mi la sol~
  sol fa2 mi4
  fad sol4. fa8 mi re
  mi [fa] sol [re] mi [re] mi do
  sol' re sol2 fa4~
  % 10 :
  fa re8 mi fa4 mi8 re
  la'4. sol8 fa4. mi16 re
  sol4 la la2\rest
  la8 r8 la2 sib4
  la2. fa4
  % 15 :
  sol la r8 r8 re4~
  re do8 si la2
  fa4. sol8 la si! do4~
  do8 si16 la sol4 do\rest la~
  la sol do8 r8 do4
  % 20 :
  re2 do
  si4 la sol2
  la8 si do4~ do si
  r la2 sib4~
  sib la2 sol4
  % 25 :
  fa sol8 fa mi4 fad
  sol la4. la8 sold4
  la4. si8 do4 re
  la fa mi la
  re,2 r
  % 30 :
  r1
  r
  r4 re fa mi8 re
  do4 mi fa4. mi8
  re8 r8 re4 mi2~
  % 35 :
  mi4 la sol2~
  sol4 mi la sol8 fa
  mi4 re2 sol4
  fa8 sol la fa sol fa mi re
  la'4 sol8 fa mi4 fa~
  % 40 :
  fa8 r8 fa4 mi2
  re mi4 fa
  mi la4. sol8 fa sol16 la
  sib8 [la] fa sol la2~
  la8 sol fa4. mi8 re4
  % 45 :
  r re fa mi8 re
  do4 mi fa4. mi8
  re8 r8 re4 mi2
  r r4 fa!
  la2 sol4 do~
  % 50 :
  do sib la fa
  mi la2 sol4
  re' la4. si8 do4~
  do8 si16 la sol8 la si la si4
  do si8 la sol4 la8 sol
  % 55 :
  fa2 la4\rest fa
  fa sib la do~
  do sol la8 r8 la4~
  la8 [sol] fa mi re2
  sol8 [fa] re mi fa4 sol~
  % 60 :
  sol fa mi2
  \once \override Script #'padding = # 1 re1^\fermata
}

coincoin = \relative do {
  \global \halsdown
  %  1 :
  \override MultiMeasureRest  #'staff-position = #-4 R1
  R1
  R1
  R1
  %  5 :
  la4 la2 sib4
  la2 sol4 do~
  do si mi la,
  do si la2
  sol re'
  % 10 :
  sib fa
  R1
  R
  r2 re'4 re~
  re fa re2
  % 15 :
  do4 fa2 sol4
  \dotsDown la4. sol8 fa4. \dotsNeutral mi8
  re do sib4 fa'2
  do fa
  mi1
  % 20 :
  \once\override MultiMeasureRest  #'staff-position = #-2 R1
  r4 re2 do4
  fa4 fa sol4. fa8
  mi4 fa re2
  do sib4 sol
  % 25 :
  re'2 la
  mi'1
  la,2 r
  R1
  r4 la' do si8 la
  % 30 :
  sol4 mi fa re
  do2. la4
  sib2 fa
  R1
  R1
  % 35 :
  la2 do4 si8 la
  sol4 la fa sol
  la sib sol2
  re' sib
  la1
  % 40 :
  R1
  R1
  R1
  re2 fa4 mi8 re
  do4 la sib4. la8
  % 45 :
  sol4 sol la2~
  la fa
  fa4 sol2 la4
  fad sol re'2
  do4 fa, do'2
  % 50 :
  fa1
  R1
  sol,2\rest r4 do
  mi2 re4 sol~
  sol fa mi fa
  % 55 :
  re2. la4
  \dotsDown re4. mi8 fa2
  do fa4. mi8
  re4. \dotsNeutral do8 sib [la] sol la
  sib2 fa4 do'
  % 60 :
  la2 sol4 la
  re,1
}

coincoinmidi = \relative do {
  \global \halsdown
  %  1 :
  \override MultiMeasureRest  #'staff-position = #-4 R1
  R1
  R1
  R1
  %  5 :
  la8 r8 la2 sib4
  la2 sol4 do~
  do si mi la,
  do si la2
  sol re'
  % 10 :
  sib fa
  R1
  R
  r2 re'8 r8 re4~
  re fa re2
  % 15 :
  do4 fa2 sol4
  \dotsDown la4. sol8 fa4. \dotsNeutral mi8
  re do sib4 fa'2
  do fa
  mi1
  % 20 :
  \once\override MultiMeasureRest  #'staff-position = #-2 R1
  r4 re2 do4
  fa8 r8 fa4 sol4. fa8
  mi4 fa re2
  do sib4 sol
  % 25 :
  re'2 la
  mi'1
  la,2 r
  R1
  r4 la' do si8 la
  % 30 :
  sol4 mi fa re
  do2. la4
  sib2 fa
  R1
  R1
  % 35 :
  la2 do4 si8 la
  sol4 la fa sol
  la sib sol2
  re' sib
  la1
  % 40 :
  R1
  R1
  R1
  re2 fa4 mi8 re
  do4 la sib4. la8
  % 45 :
  sol8 r8 sol4 la2~
  la fa
  fa4 sol2 la4
  fad sol re'2
  do4 fa, do'2
  % 50 :
  fa1
  R1
  sol,2\rest r4 do
  mi2 re4 sol~
  sol fa mi fa
  % 55 :
  re2. la4
  \dotsDown re4. mi8 fa2
  do fa4. mi8
  re4. \dotsNeutral do8 sib [la] sol la
  sib2 fa4 do'
  % 60 :
  la2 sol4 la
  re,1
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
   %  \new Staff {
   %   \set Staff.midiInstrument = "pan flute"
   %   \ouahmidi
   % }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \meuhmidi
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \miaoumidi
    }
    \new Staff {
      \set Staff.midiInstrument = "baritone sax"
      \coincoinmidi
    }
    %\new Staff {
    %  \set Staff.midiInstrument = "pan flute"
    %  \coincoinmidi
    %}
  >>
  }
  \midi{\tempo 4 = 110}
}
  
