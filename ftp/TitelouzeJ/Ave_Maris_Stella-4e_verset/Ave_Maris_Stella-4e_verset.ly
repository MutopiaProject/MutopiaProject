\version "2.2.0"
\include "italiano.ly" 

%% Version 1.1

\header{
    title = "Ave Maris Stella -- 4e verset"
    subtitle = ""
    piece = "" 
    instrument = "Orgue -- Organ"
    composer = "Jean Titelouze (1563-1633)"
    copyright = "Public domain -- Domaine public."
    source = "Edition Schott 1869 -- Alexandre Guilmant"
    opus = ""
    lastupdated = "2004-10-08"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2004/10/08-480"
}

global = \notes {
  \key do \major
  \time 4/2
}

staffUp = {
  \context Staff = up
  \stemDown\tieDown
}
staffDown = {
  \context Staff = down
  \stemUp\tieUp
}

soprano =  \context Voice=one \notes \relative do'' {
  \voiceOne
  \override NoteHead #'style = #'baroque

  \stemUp
% - 1 :
%\override  Rest  #'staff-position = #-2
R\breve
R\breve
R\breve
si1\rest re,1
% - 5 :
la'1 si2 sol
la2. si4 do re do2 ~ 
do2 si4 la sol mi la2 ~ 
la2 sold si1\rest
la2 re1 do2
% - 10 :
si1 la
re1\rest la2 re2 ~ 
re2 do si do |
la1. la2 |
sol2 la1 sold2 |
% - 15 :
la2. sol8 fa mi1 |
R\breve
mi2 la1 sol2 |
fa1 mi1 |
re'1\rest la2 re ~ |
% - 20 :
re2 do1 la2 ~ |
la2. si4 do2. si4 |
la2 sol fa mi ~ |
mi2 re mi fa |
mi1 do'2. si4 |
% - 25 :
la1 si2\rest la2 ~ |
la4 la sol2 fa mi4 re |
mi2 fa mi1 |
si'1\rest si2\rest la2 ~ |
la4 la sol2 fa mi4 re |
% - 30 :
mi1 re4 do fa2 ~ |
fa4 mi la2. sol4 la si |
do2 si4 la mi'2 mi, |
\bar "|."
\time 4/4
%\set Score.timing = ##f
%\tempo 2= 60
R1
si'2\rest re4\rest la4 ~ |
% - 35 :
la8[ la] fa4 do' re |
mi2 r4 re4 ~ |
re8[ re] do4 fa2 |
mi4 mi2 re4 |
do8[ si la sol] fa[ mi] la4 |
% - 40 :
si2\rest re4\rest re4 ~ |
re8[ re] do4 fa mi ~ |
mi4 re do la8 si |
do4 re mi fa |
mi2 sol4\rest mi4 ~ |
% - 45 :
mi4 re do4. si8 |
la8[ sol] la4 si4\rest la4 ~ |
la4 sol fa2 ~ |
fa2 mi |
si'2\rest la4 si |
% - 50 :
do4. si8 la4 si |
dod4 re do la |
re4\rest la8[ si] do4 si |
la4 sol fad sol ~ |
sol8[ sol] fa4 mi mi ~ |
% - 55 :
mi4 re la'4. sol8 |
fad2 si2\rest |
la4 re2 fad,4 |
sol4 la sib2 |
la4 re4. mi8 fa4 |
% - 60 :
re4 sol2 fa8[ mi] |
re4 do sib la ~ |
la4 sol la la ~ |
la4 sol fa2 |
r2 fa'2 ~ |
% - 65 :
fa4 mi re do |
sib2 la4 fa' |
re4 sol fa8[ re] fa4 ~ |
fa4 mi re4. do8 si!2 la4 si8[ do] |
% not very clean ; bar check error 
\set Score.timing = ##f
\override Script #'padding = # 1.2 re\breve^\fermata 

}

alto =  \context Voice=two \notes  \relative do' {
  \voiceTwo 
  \override NoteHead #'style = #'baroque
  \stemDown
%- 1 :
  la1 re
  mi2 do re2. mi4
  fa2 mi re2. mi4
  do4 re mi2 la,2 si
% - 5 :
  dod2 re1 mi4 re
  do4 la fa'2 mi1
  fa1 mi
  R\breve
  R\breve
% - 10  :
  do1\rest mi2 la ~
  la2 sol1 fa2
  mi2 fa1 mi2 |
  fa2 mi4 re do si la2 |
  si2 do re2. mi4 |
% - 15  :
  do1 r1 |
  la2 re1 do2 ~ |
  do4 si la si do re mi2 ~ |
  \once \override NoteColumn  #'force-hshift = #0.8 mi4 re re2. do8[ si] do[ re mi do] |
  fa4 mi8 re mi1 re2 |
% - 20  :
  la'2. sol4 fa mi fa2 |
  r2 mi2. re4 do2 ~ |
  do4 re mi2 la,4 re do si |
  la2. si4 do la re2 ~ |
  \once \override NoteColumn  #'force-hshift = #0.8 re2 do r2 mi2 ~ |
% - 25  :
  mi4 mi re2 do si4 la |
  do4 re mi2 la,2. si4 |
  do2. si4 do re mi8[ re do si] |
  la4 re do re2 do8 si dod[ re mi re]
  mi2 ~ mi8[ re do! si] la2. si4 |
% - 30  :
  do4 si la sol la2. si4 |
  do2. re4 mi2 mi ~ |
  mi4 do re1 dod2 |
  r4 re4. \once \override NoteColumn  #'force-hshift = #0.8 re8 do4 |
  fa2 mi4. re8 |
% - 35  :
  do4 re do fa |
  r4 la8[ sol] fa4 mi8[ re] |
  mi2 r4 re'4 ~ |
  re8[ re do si] la[ sol] fa4 |
  mi2 r4 re4 ~ |
% - 40  :
  re8[ re] do4 fa2 |
  mi2 la4\rest la8[ sol] |
  fa2 mi4 re |
  do4 fa mi la8[ si] |
  do4. si8 la4 sol |
% - 45  :
  fa2 mi4 mi~ |
  mi4 re do re |
  mi2 re4 do |
  la4 si do re |
  mi4 fa mi re |
% - 50  :
  do8 re mi2 re4 |
  mi4 fa8[ sol] la[ sol] fa4 |
  mi4 re do re |
  mi2 la,8[ re do si] |
  la4. si8 do4. si8 |
% - 55  :
  la4. si8 dod8[ re] dod4 |
  re1 |
  r4 la4 re2 ~ |
  re4 fad sol2 |
  la4 sib2 la4 ~ |
% - 60  :
  la4 sol la re |
  r4 la8[ sol] fa4. mi8 |
  re4. mi8 fa[ mi re do] |
  sib2 la4 re8[ mi] |
  fa8[ sol] la2 sol4 |
% - 65  :
  fa8[ sol] la4 sib la |
  re,4. mi8 fa[ sol] la4 ~ |
  la4 sol8[ la] sib4 la8[ sol] |
  fa4 sol la2 |
  re,4. mi8 fad4 sol |
% - 70  :
  fad\breve |
}

tenor = \context Voice=three \notes \relative do {
  \voiceThree
  \override NoteHead #'style = #'baroque
  \stemUp
  %%1 :
  R\breve
  re1\rest re2\rest re2
  la'1 si2 sol
  la2. sol4 fa re sol2 ~
% - 5  :
  sol2 fad2 sol mi
  R\breve
  la2 re1 do2
  si1 la2 si
  do2 la mi'1 ~ 
% - 10  :
  mi2 re2 dod re
  do si la1 ~ 
  la1 sol |
  fa\breve |
  R\breve |
% - 15  :
  mi2 la1 sol2 |
  fa1 mi2 fa |
  do2 re mi1 |
  re1\rest mi2 la ~ |
  la2 sol fa1 |
% - 20  :
  mi1 la2. si4 |
  do2. si4 la2 mi |
  fa2 do re mi |
  fa1 mi2 re2\rest |
  la'2\rest la2. la4 sol2 |
% - 25  :
  fa2 mi4 re mi2 fa ~ |
  fa2 mi4 do re mi fa2 |
  mi2 la2. la4 sol2 |
  fa2 mi4 re mi2. re4 |
  dod8[ re mi re] mi2. re4 re2 ~ |
% - 30  :
  re4 re do2 fa mi4 re |
  la'2 sol4 fa do'2 do,4 re |
  mi2 fa mi4 re la'4 sol |
  fa2 mi |
  fa4\rest re4. re8 do4 |
% - 35  :
  fa4 re mi la8 si |
  do4. si8 la4 sol8 fa |
  mi4 la4. sol8 fa[ re] |
  la'2 sol4\rest re4 ~ |
  re8[ re] do4 fa2 |
% - 40  :
  mi4 fa2 re4 |
  mi2 re4\rest do4 ~ |
  do4 re mi fa8[ sol] |
  la4. si8 do2 |
  fa,4\rest do4 re mi |
% - 45  :
  fa4 sol la sol |
  fa2. mi8[ re] |
  dod2 re4 mi |
  fa4 sol la2 |
  r4 la8[ si] do4 si |
% - 50  :
  la sol fad sol ~ |
  sol8[ sol] fa4 mi re |
  la'8[ sol] fa4 mi re |
  dod2 re4 mi |
  dod4 re la' mi |
% - 55  :
  fa2 mi |
  r2 la4 re ~ |
  re4 fad, sol la |
  sib4 la2 sol4 ~ |
  sol fa sol la |
% - 60  :
  sib la8[ sol] re'4 la |
  fa'4. mi8 re4 do |
  sib2 la4 fa ~ |
  fa sol la sib |
  la fa'2 mi4 |
% - 65  :
  re do sib fa ~ |
  fa sol la4. fa8 |
  sib4. do8 re4 do8[ si] |
  la4 sol2 fad4 ~ |
  fad4 sol re'8[ do] si4 |
% - 70  :
   \override Script #'padding = # 1.2 la\breve^\fermata
}

basso = \context Voice=four \notes \relative do {
\voiceFour 
\stemDown
\override NoteHead #'style = #'baroque
  %%1 :
\repeat unfold 5 {
    R\breve
}
%- 6 : 
r1 la1
re1 mi2 do
re2 mi fad sol ~ 
sol2 fa mi la
% - 10  :
sold1 la2 fa
mi1 r1
R\breve
r1 la,2 re2 ~ |
re2 do si1 |
% - 15  :
\repeat unfold 18 {
    la\breve ~ |
}
\repeat unfold 23 {
    la1 ~ |
}
\repeat unfold 14 {
    re1 ~ |
}

%- 70:
re\breve

}


\score {
\notes {
  <<
    \context PianoStaff <<
      \context Staff = up <<
        \global
        \clef violin 
	\set Staff.midiInstrument = "Church organ"
        \soprano
	\alto
      >>
      \context Staff = down <<
	  \global    
	  \clef bass
	  \set Staff.midiInstrument = "Church organ"
	  \tenor
	  \basso
      >>
    >>
  >>  

  \bar "|."
}
  \paper { }
  \midi{ \tempo 2 = 120  }
  
}

