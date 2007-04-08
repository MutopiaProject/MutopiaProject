\version "2.4.2"
\include "italiano.ly"

% Écrit avec l'aide très secourable de lyqi ! Essayez-le !
% Written with the most secourable help of lyqi ! Try it !

\header {
    title = "Ave Maris Stella"
    subtitle = "3e verset" % version 1.
    piece = "" 
    instrument = "Orgue -- Organ"
    composer = "Jean Titelouze (1563-1633)"
    copyright = "Public Domain -- Domaine public."
    source = "Edition Schott 1869 - Alexandre Guilmant"
    opus = ""
    lastupdated = "2005-05-15 Pentecôte"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"

footer = "Mutopia-2005/05/21-565"
tagline = "\\raisebox{5mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

global = {
  \time 4/4
  \key do \major
}

soprano = \relative do'' {
  \tieUp la2 \stemDown si2 
  | do4 si4 \stemUp la2 
  | \stemDown re8 [ do8 re8 do8 ] si2 ~
  | si4 \stemUp la4 sol4 la8 [ si8 ]
  | \stemDown do4. si8 la4 si8 [ do8 ]
  | re4. do8 si4. do16 [ re16 ]
  | mi4 mi8 [ re8 ] do8 [ re8 do8 si8 ]
  | la4 la4 si4. si8 
  | do8 [ si8 la8 sol8 ] \stemUp la2 ~
  | la4 la4 sol2 ~
  | sol4 sol4 fad2 
  | si4\rest \stemDown re2 do8 [ si8 ]
  | do2 si4\rest do8 [ re8 ]
  | mi4 re4 do2 ~
  | do4 si4 \stemUp la4 sol4 
  | fa4 mi4 re4 mi8 [ fa8 ]
  | sol2 si2\rest 
  | si4 si2 la8 [ sol8 ]
  | la4 la2 sol8 [ fa8 ]
  | sol8 [ fa8 mi8 re8 ] mi2 
  | fa2 mi4 re4 
  | do2 re2 
  | si'4\rest sol2 fa8 [ mi8 ]
  | re4 mi8 [ fa8 ] sol4 fa4 
  | mi2 \stemDown mi'4 re4 
  | do4 si4 do4. si8 
  | \stemUp la8 [ sol8 ] la2 sol8 [ fa8 ]
  | sol2 si8\rest sol8 [ fa8 mi8 ]
  | la2 si8\rest la8 [ sol8 fa8 ]
  | sol2 si8\rest sol8 [ fa8 mi8 ]
  | fa2 si4\rest re,4 
  | sol4 mi2 re8 [ do8 ]
  | si4 sol'2 fa8 [ mi8 ]
  | re2. re4 
  | sol2 ~ sol8 [ mi8 fa8 sol8 ]
  | la2. la4 
  | sold2 la4 sol4 
  | fa4 mi8 [ re8 ] sol2 
  | fad1^\fermata
}

tenor = \relative do'{
  do2\rest re2
  | mi2 fa4 mi4 
  | re2 sol8 [ fa8 sol8 fa8 ]
  | mi2. re4 
  | do4 re8 [ mi8 ] fa4. mi8 
  | re4 mi8 [ fa8 ] sol4. fa8 
  | mi4. fa16 [ sol16 ] la4 la8 [ sol8 ]
  | fa8 [ sol8 fa8 mi8 ] re4 re4 
  | mi4. mi8 fa8 [ mi8 re8 do8 ]
  | re2. re4 
  | do2. do4 
  | si2 mi4\rest sol4 ~
  | sol4 fa8 [ mi8 ] fa2 
  | mi4\rest fa8 [ sol8 ] la4 sol4
  | fa2. mi4 
  | re4 do4 si4 la4 
  | sol4 la8 [ si8 ] do2 
  | mi2\rest mi4 mi4 ~
  | mi4 re8 [ do8 ] re4 re4 ~
  | re4 do8 [ si8 ] do8 [ si8 la8 sol8 ]
  | la2 sib2 
  | la4 sol4 fa2 
  | sol2 r4 do4 ~
  | do4 si8 [ la8 ] sol4 la8 [ si8 ]
  | do4 si4 la2 
  | la'4 sol4 fa4 mi4 
  | fa4. mi8 re8 [ do8 ] re4 
  | re4 do8 [ si8 ] do2 
  | re8\rest do8 [ si8 la8 ] re2 
  | re8\rest re8 [ do8 si8 ] do2 
  | re8\rest do8 [ si8 la8 ] sib2 
  | r4 sol4 do4 la4 ~
  | la4 sol8 [ fa8 ] mi4 do'4 ~
  | do4 si8 [ la8 ] sol2 ~
  | sol4 sol4 do2 ~
  | do8 [ la8 si8 do8 ] re2 ~
  | re4 re4 dod2 
  | re4 do4 si4 la8 [ sol8 ]
  | \once \override Script #'padding = # 1 re'1^\fermata|
}


choral = \relative do  {
  re1 la'1 si1 sol1 la1  
  | si1 do1 re1 do1 si1  
  | la1 sol1 la1 la1 la1  
  | re,1 mi1 sol1 fa1 mi1  
  | re1 fa1 mi1 sol1 la1  
  | la1 re,1 mi1 fa1 mi1  
  | re1 do1 mi1 sol1 mi1  
  | fa1 mi1 re1 ~ re1_\fermata  
}

\score {
  {
    \context PianoStaff <<
      \context Staff = "dessus" <<
	\global
	\clef violin 
	\set Staff.midiInstrument = "Church organ"
	\context Voice = "soprano" {\voiceOne \soprano}
      >>
      \context Staff = "basse" <<
	\global    
	\clef bass
	\set Staff.midiInstrument = "Church organ"
	\context Voice = "tenor" {\voiceOne \tenor} 
	\context Voice = "basse" {\voiceTwo \choral}
      >> 
    >>
    \bar "|."
  }
  \layout {}
  \midi{ \tempo 4 = 120 }
}

