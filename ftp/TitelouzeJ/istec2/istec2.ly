\version "2.18.2"
\include "italiano.ly"

% Écrit avec l'aide très secourable de lyqi ! Essayez-le !
% Written with the most secourable help of lyqi ! Try it !

\header{
     title = "Iste Confessor"
     mutopiatitle = "Iste Confessor (2e verset)"
     subtitle = "2e verset"
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
     lastupdated = "2015-06-21"
     mutopialicense = "Creative Commons Attribution-ShareAlike 4.0"

 footer = "Mutopia-2015/08/21-2045"
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

% \once\override MultiMeasureRest  #'staff-position = #+4 R1
% \once \override Script #'padding = # 1  re1^\fermata \bar "|."
% \once\override MultiMeasureRest.extra-offset = #'(-1.3 . 0) R1


global = {
  \time 4/4
  \key do' \major
}

ouah = \relative do'' {
  \global \halsup
  %  1 :
  \override MultiMeasureRest  #'staff-position = #+4 R1*4
  %  5 :
  re2\rest la2
  sol la4 sol8 fa
  mi fa sol mi fa4 mi
  re2 la'
  sol4 la si la8 sol
  % 10 :
  fad2 sol~
  sol4 fa mi4. fad8
  sol la sol2 fad4
  sol mi2 fa4
  sol2 la4. si8
  % 15 :
  do4 la r si~
  si la si2
  mi,1
  \once \override MultiMeasureRest  #'staff-position = #+2 R1
  R1
  % 20 :
  re4 la'2 sol4
  do2 si
  la sol
  fa mi
  R1
  % 25 :
  la4 re2 do4
  fa mi2 re4~
  re do si2
  la4 si mi4. re8
  do4 si2 la4
  % 30 :
  re\rest si re mi~
  mi re do4. si8
  la2 sol
  r4 sol mi do'
  re mi la,2
  % 35 :
  do4 si la sold
  la si mi,4. re8
  do2 si4 sol'~
  sol fad8 sol la4 si~
  si8 la sol4. sol8 fad4
  % 40 :
  sol mi la sold
  la do si mi
  la,8 si do4. do8 si4
  do2 r
  R1
  % 45 :
  R1
  r4 do la re
  do si mi, la
  sol8 fa mi2 re4
  sol2 r
  % 50 :
  r4 do2 si4
  re2 do4 si8 la
  sol fa mi2 si'4
  do si8 la mi'4 re8 do
  si4 do8 re sol, la si dod
  % 55 :
  re4. do8 si2
  r4 do2 si4
  la sold la2
  si4 la8 sol fad4 sol
  r2 re'4\rest do
  % 60 :
  si2 re
  do1
  si2. la4
  \once \override Script #'padding = # 1  sold1^\fermata \bar "|."
}

ouahmidi = \relative do'' {
\global \halsup
  %  1 :
  \override MultiMeasureRest  #'staff-position = #+4 R1*4
  %  5 :
  re2\rest la2
  sol la4 sol8 fa
  mi fa sol mi fa4 mi
  re2 la'
  sol4 la si la8 sol
  % 10 :
  fad2 sol~
  sol4 fa mi4. fad8
  sol la sol2 fad4
  sol mi2 fa4
  sol2 la4. si8
  % 15 :
  do4 la r si~
  si la si2
  mi,1
  \once \override MultiMeasureRest  #'staff-position = #+2 R1
  R1
  % 20 :
  re4 la'2 sol4
  do2 si
  la sol
  fa mi
  R1
  % 25 :
  la4 re2 do4
  fa mi2 re4~
  re do si2
  la4 si mi4. re8
  do4 si2 la4
  % 30 :
  re\rest si re mi~
  mi re do4. si8
  la2 sol
  r4 sol mi do'
  re mi la,2
  % 35 :
  do4 si la sold
  la si mi,4. re8
  do2 si4 sol'~
  sol fad8 sol la4 si~
  si8 la sol4~sol16 r16 sol8 fad4
  % 40 :
  sol mi la sold
  la do si mi
  la,8 si do4~do16 r16 do8 si4
  do2 r
  R1
  % 45 :
  R1
  r4 do la re
  do si mi, la
  sol8 fa mi2 re4
  sol2 r
  % 50 :
  r4 do2 si4
  re2 do4 si8 la
  sol fa mi2 si'4
  do si8 la mi'4 re8 do
  si4 do8 re sol, la si dod
  % 55 :
  re4. do8 si2
  r4 do2 si4
  la sold la2
  si4 la8 sol fad4 sol
  r2 re'4\rest do
  % 60 :
  si2 re
  do1
  si2. la4
  \once \override Script #'padding = # 1  sold1^\fermata \bar "|."
}



meuh = \relative do' {
  \global \halsdown 
  %  1 :
  mi2 re
  mi4 re8 do si do re si
  do4 re do si8 do
  la4 re2 do4
  %  5 :
  fa2 mi4 fa~
  fa mi8 re do la re4~
  re do r do~
  do si do re
  mi2. dod4
  % 10 :
  re8 mi re do si4 do
  re2 sol,4 do
  re2 dod4 re
  si do2 r4
  r mi2 re4
  % 15 :
  mi re8 do si do re si
  do2 si4 mi8 re
  do4 si8 la sol la si do
  la4. si8 do4 si
  sol'4. fa8 mi4 la,
  % 20 :
  si la si8 do re4
  mi2 re4 sol~
  sol fa2 mi4~
  mi re r2
  re4 la'2 sol4
  % 25 :
  fa2 mi4 la
  la4. sol8 fa2
  mi4 la re, sol
  r sold la si
  la sol?2 fad4
  % 30 :
  sol2 r4 mi4
  sol2 la4 sol
  fa2 mi
  re r4 mi
  la sol2 fa4
  % 35 :
  sol4. fa8 mi2
  mi4. re8 do4 si~
  si8 la16 sol la4 sol4. la8
  si do re2 do8 si
  re2 r4 re
  % 40 :
  si do2 re4
  do mi4. fa8 sol4
  mi2\rest fa
  mi sol4 fa~
  fa mi la2
  % 45 :
  sol8 fa mi2 re4
  do8 si mi2 re4
  mi4. re8 do2
  si2\rest do4 la
  do8 re mi2 re4
  % 50 :
  do mi4. fa8 sol4~
  sol8 re sol fa mi4 re~
  re do si mi~
  mi re sol2~
  sol8 fa mi re mi fad sol4
  % 55 :
  fad8 sol la4 sol8 mi sol fa
  mi re mi4 re2
  mi4. re8 dod4 re~
  re dod re2
  mi8 re16 do si4 do8 re mi fa
  % 60 :
  sol2 r4 fa
  mi sol fa8 mi la4~
  la sol8 fa mi re do4
  si1

}

meuhmidi = \relative do' {
  % pas nécessaire.
}

miaou = \relative do' {
  \global \halsup
  %  1 :
  \once\override MultiMeasureRest  #'staff-position = #+4 R1
  la2 sol
  la4 sol8 fa mi fa sol mi
  fa2 sol4 la~
  % 5 :
  la re dod re
  si do fa, mi8 re
  la'4 mi la4. sol8
  fa re sol2 fa4
  do' si8 la sol2
  % 10 :
  la sol
  R1
  r2 la
  sol la4 sol8 fa
  mi fa sol mi fa2
  % 15 :
  mi4 fad sol2
  mi1
  r2 r4 mi4~
  mi re mi sol8 la
  si do re4 sol, fad
  % 20 :
  sol8 fa? mi4 r2
  mi4 la2 sol4
  do2 si4 do~
  do8 si la4 sol do8 si
  la sol la si do si16 la si8 sol
  % 25 :
  re'2 mi4\rest mi
  re la2 la8 si
  do re mi fa sol4 re
  mi4. re8 do4 si
  mi4. re8 dod4 re8 do
  % 30 :
  si2. do4~
  do si la2
  do4\rest re2 do4
  si2 do
  re4\rest si4 re2
  % 35 :
mi4. re8 do4 si
la sold la mi
mi1
fa4\rest si fad sol~
sol8 la si4 la2
% 40 :
sol fa8 mi re4
mi4. fa8 sol la si do~
do si la sol fa2
sol4 do2 la4
re do2 si8 la
% 45 :
do4. si8 la4 la~
la sol fa2
mi fa4\rest fa
mi sol fa2
mi4. fa8 sol fa mi re
% 50 :
mi fa mi fa sol4. la8
si4. la8 sol2~
sol4 la2 sold4
la4. si8 do si mi4~
mi8 re do si do si la sol
% 55 :
la sol4 fad8 sol2
la4. sol8 fad4 sol
mi2. fad4
sol la si4. la8
sol la4 sold8 la2
% 60 :
re,4 sol2 re4
sol mi la mi8 fad
sol la si4 sol8 fa mi re
\once \override Script #'padding = # 1  mi1^\fermata \bar "|."




}

miaoumidi = \relative do {
  % pas nécessaire.
  }

coincoin = \relative do {
  \global \halsdown
  %  1 :
  \override MultiMeasureRest  #'staff-position = #-2 R1*8
  r2 mi
% 10 :  
re mi4 re8 do
si do re si do2
si la4 re
sol, do8 si la4 re
do2 la~
% 15 :
la sol
sol4\rest la2 sold4
la sol8 fa mi fa sol mi
fa2 mi4 mi'~
mi si do re~
% 20 :
re dod re si
la2 sol\rest
R1
la4 re2 do4
fa2 mi
% 25 :
re la'
re,4 dod r re
la'2 sol
do4 si la sold
<< { la4 mi2 \once\override Stem.length = #5 la4 }
   \new Voice{ s2. \halsdown \once\override NoteHead.font-size = #-2 la,4 }
>>
% 30 :
mi'2 r
R1
si2\rest mi
sol la4. sol8
fa4 mi re2
% 35 :
do4 mi2 mi8 re
do4 si la sol!8 fa
mi2 r
\once\override MultiMeasureRest  #'staff-position = #-4 R1
si'2 re
% 40 :
mi4. re8 do4 si
la2 mi'
fa4. mi8 re2
do si\rest
si\rest fa'
% 45 :
mi4 sol fa2
mi4. do8 re2
la4 sold la2
sol4\rest do la re
do2 si
% 50 :
sol4\rest la mi'2
si do4 re
mi2 si\rest
r4 fa' mi2
sol mi
% 55 :
re mi4. re8
do si la4 re sol,
do si la2
mi' re4 si
do mi la,2
% 60 :
sol4. la8 si2
do4. si8 la2
mi'2. la,4
mi1

}

coincoinmidi = \relative do {
  \global \halsdown
 \override MultiMeasureRest  #'staff-position = #-2 R1*8
  r2 mi
% 10 :  
re mi4 re8 do
si do re si do2
si la4 re
sol, do8 si la4 re
do2 la~
% 15 :
la sol
sol4\rest la2 sold4
la sol8 fa mi fa sol mi
fa2 mi4 mi'~
mi si do re~
% 20 :
re dod re si
la2 sol\rest
R1
la4 re2 do4
fa2 mi
% 25 :
re la'
re,4 dod r re
la'2 sol
do4 si la sold
<< { la4 mi2 \once\override Stem.length = #5 la4 }
   \new Voice{ s2. \halsdown \once\override NoteHead.font-size = #-2 la,4 }
>>
% 30 :
mi'2 r
R1
si2\rest mi
sol la4. sol8
fa4 mi re2
% 35 :
do4 mi4.~mi16 r16 mi8 re
do4 si la sol!8 fa
mi2 r
\once\override MultiMeasureRest  #'staff-position = #-4 R1
si'2 re
% 40 :
mi4. re8 do4 si
la2 mi'
fa4. mi8 re2
do si\rest
si\rest fa'
% 45 :
mi4 sol fa2
mi4. do8 re2
la4 sold la2
sol4\rest do la re
do2 si
% 50 :
sol4\rest la mi'2
si do4 re
mi2 si\rest
r4 fa' mi2
sol mi
% 55 :
re mi4. re8
do si la4 re sol,
do si la2
mi' re4 si
do mi la,2
% 60 :
sol4. la8 si2
do4. si8 la2
mi'2. la,4
mi1
  
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
         %\ouah
         \ouahmidi
    }
    % \new Staff {
     % \set Staff.midiInstrument = "pan flute"
      %\ouahmidi
    %}
    \new Staff {
      \set Staff.midiInstrument = "soprano sax"
      \meuh
    }
    \new Staff {
      \set Staff.midiInstrument = "soprano sax"
      \miaou
    }
    \new Staff {
      \set Staff.midiInstrument = "soprano sax"
      %\coincoin
      \coincoinmidi
    }
    %\new Staff {
     % \set Staff.midiInstrument = "pan flute"
      %\coincoinmidi
    %}
  >>
}
  \midi{\tempo 4 = 100}
}
  
