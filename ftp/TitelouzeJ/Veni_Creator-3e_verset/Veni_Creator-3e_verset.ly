\version "2.4.2"
\include "italiano.ly"

% Écrit avec l'aide très secourable de lyqi ! Essayez-le !
% Written with the most secourable help of lyqi ! Try it !

% Version 1.
% -- Perfectionnements :
% 1. Les rondes semblent décalées vers la droite,
% la plupart du temps de façon inutile. Pourquoi ?
% 2. Les rondes de la dernière mesure gagneraient à
% être centrées. Comment ?
% 3. Les pauses des deux premières mesures du choral
% doivent être centrées.

\header{
     title = "Veni Creator"
     subtitle = "3e verset"
     piece = "Canon in Diapason"
     instrument = "Orgue -- Organ"
     composer = "Jean Titelouze (1563-1633)"
     copyright = "Public domain -- Domaine public."
     source = "Edition Schott 1869 - Alexandre Guilmant"
     opus = ""
     lastupdated = "2005-04-02"
     enteredby = "Gérard Gréco"
     maintainer = "Gérard Gréco"
     
     footer = "Mutopia-2005/04/12-549"
     tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

global = {
   \time 4/4
   \key do \major
}

dessus = \relative do''{
   % 1 :
     r2 \stemDown sol4 la4
   | sol4 fad4 sol4 re4
   | r4 \stemUp sol4 mi2 ~
   | mi4 re8 [ do8 ] si2
   % 5 :
   | mi4 re4 do4 fa4
   | mi4 re4 mi8 [ fa8 ] sol4
   | do,2 r4 la4
   | re4 do4 si4 mi4 ~
   | mi4 do4 r4 la4
   % 10 :
   | do4 re4 mi4 si4
   | do4 mi4 la4. sol8
   | fa8 [ mi8 fa8 mi8 ] re4. mi16 [ fa16 ]
   | sol4 fa4 mi4 la4 ~
   | la4 sol8 [ fa8 ] sol4 mi4 ~
   % 15 :
   | mi4 mi4 la4 la4 ~
   | la8 [ sol8 fa8 mi8 ] la4. sol8
   | fa4 fa4. mi8 [ re8 do8 ]
   | re2 si2
   | r4 mi4 re4 do4
   % 20 :
   | fa4 fa4. sol8 [ la8 sol8 ]
   | fa4 mi4 re2
   | r4 sol4 la4 mi4
   | fa8 [ sol8 ] la4 re,4 \stemDown re'8 [ do8 ]
   | \stemUp si4 la4 sol4 la8 [ si8 ]
   % 25 :
   | \stemDown do4 si4 \stemUp la4 sold4
   | la4 r4 r4 re,4
   | fa4 sol4 la4 sol4
   | fa2 \stemDown sib8 sib4 \stemUp la8
   | sol4 sol4 \stemDown do8 do4 si?8
   % 30 :
   | \stemUp la4 sol4 la4 mi4
   | r2 mi2 ~
   | mi4 re4 do2 ~
   | do4 re4 mi4 si4
   | r4 sol'4 fad4 sol4
   % 35 :
   | re4 sol4. fa8 [ mi8 re8 ]
   | do2 fa4. mi8
   | re4. do8 si4 sol'4 ~
   | sol8 [ fa8 mi8 re8 ] mi4 la4
   | sol4 fad4 sol4 re4
   % 40 :
   | r4 sol4 mi2
   | la2 fa2
   | re2 r4 sol,4
   | do4 sib4 la4 re4 ~
   | re8 [ do8 re8 mi8 ] fa4. mi8
   % 45 :
   | re4 do4 fa4 fa4 ~
   | fa8 [ mi8 ] re2 sol4
   | fa4 mi4 fa8 [ sol8 ] la4
   | re,4 do4 si4 mi4
   | re4 do4 re4 la4
   % 50 :
   | r4 re4 mi4 si4
   | do4 re4 mi4 si4
   | do4 sol'8 [ fa8 ] mi4 re4
   | do4 si4 do4 sol4
   | si1^\fermata
}

basse = \relative do' {
   % 1 :
     sol4 la4 sol4 fad4
   | sol4 re4 re4\rest sol4
   | mi2. re8 [ do8 ]
   | si2 mi4 re4
   % 5 :
   | do4 fa4 mi4 re4
   | mi8 [ fa8 ] sol4 do,2
   | r4 la4 re4 do4
   | si4 mi2 do4
   | r4 la4 do4 re4
   % 10 :
   | mi4 si4 do4 mi4
   | \dotsDown la4.  sol8 fa8 [ mi8 fa8 mi8 ]
   | re4. \dotsNeutral mi16 [ fa16 ] sol4 fa4
   | mi4 la2 sol8 [ fa8 ]
   | sol4 mi2 mi4
   % 15 :
   | \dotsDown la4 la4. sol8 [ fa8 mi8 ]
   | la4. \dotsNeutral sol8 fa4 \tieDown fa4 ~
   | fa8[ mi8 re8 do8 ] re2
   | si2 re4\rest mi4
   | re4 do4 fa4 fa4 ~
   % 20 :
   | fa 8 [ sol8 la8 sol8 ] fa4 mi4
   | re2 re4\rest sol4
   | la4 mi4 fa8 [ sol8 ] la4
   | re,4 re'8 [ do8 ] si4 la4
   | sol4 la8 [ si8 ] do4 si4
   % 25 :
   | la4 sold4 la4 re,4\rest
   | re4\rest re4 fa4 sol4
   | la4 sol4 fa2
   | sib8 sib4 la8 sol4 sol4
   | do8 do4 si?8 la4 sol4
   % 30 :
   | la4 mi4 re2\rest
   | mi2. re4
   | do2. re4
   | mi4 si4 re4\rest sol4
   | fad4 sol4 re4 sol4 ~
   % 35 :
   | \once \override NoteColumn  #'force-hshift = #1.0 sol8 [ fa8 mi8  
re8 ] do2
   | \dotsDown fa4. mi8 re4. do8
   | si4 sol'4. \dotsNeutral fa8 [ mi8 re8 ]
   | mi4 la4 sol4 fad4
   | sol4 re4 re4\rest sol4
   % 40 :
   | mi2 la2
   | fa2 re2
   | r4 sol,4 do4 sib4
   | la4 \dotsDown re4. do8 [ re8 mi8 ]
   | fa4. mi8 re4 do4
   % 45 :
   | fa4 fa4.\dotsNeutral mi8 re4 ~
   | re4 sol4 fa4 mi4
   | fa8 [ sol8 ] la4 re,4 do4
   | si?4 mi4 re4 do4
   | re4 la4 si4\rest re4
   % 50 :
   | mi4 si4 do4 re4
   | mi4 si4 do4 sol'8 [ fa8 ]
   | mi4 re4 do4 si4
   | do4 sol4 do2
   \override Script #'padding = # 1.5
   | sol1^\fermata
}

themeduchoral = \relative do'{
   % 1 :
     r1
   | r1
   | sol1 ~
   | sol1
   % 5 :
   | la1
   | sol1 fa1 sol1 la1
   % 10 :
   sol1 do1 re1 do1 si1
   % 15 :
   do1 do1 la1 sol1 la1
   % 20 :
   do1 re1 do1 re1 mi1
   % 25 :
   mi1 re1 do1 re1 mi1
   % 30 :
   do1 si1 la1 sol1 re'1
   % 35 :
    sol,1
   la1 si1 do1 si1
   % 40 :
   do1 la1 sol1 fa1 la1
   % 45 :
   la1 sib1 la1 sol1 fa1
   % 50 :
   %si1\rest r1 r1 r1 r1
   sol1 ~ sol1 ~ sol1 ~ sol1 ~
   sol1

}

\score {
     {
       \context PianoStaff <<
	\context Staff = "dessus" <<
	  \global
	  \clef violin
	  \set Staff.midiInstrument = "church organ"
	  \dessus
	>>
	\context Staff = "basse" <<
	  \global
	  \clef bass
	  \set Staff.midiInstrument = "church organ"
	  % Without the Voice contexts : note collisions. Why ?!
	  \context Voice = "choral" {\voiceOne \themeduchoral}
	  \context Voice = "basse" {\voiceTwo \basse}
	>>
>>

       \bar "|."
     }
     \layout {}
     \midi{ \tempo 4 = 120  }

}
