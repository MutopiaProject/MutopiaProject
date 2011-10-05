\version "2.14.2"
\include "italiano.ly"

% Écrit avec l'aide très secourable de lyqi ! Essayez-le !
% Written with the most secourable help of lyqi ! Try it !

% Version 2 du 17 septembre 2011 pour la version 2.14.0.
% Quelques corrections typographiques.
% Modification des instruments midi.

\header{
  title = "Veni Creator"
  subtitle = \markup{\center-align{\line{3\super{e} verset}}}
  piece = ""
  instrument = \markup{\center-align{\line{Orgue — Organ}}}
  composer = "Jean Titelouze (1563-1633)"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "Archives des maîtres de l'orgue, vol.1, 1897, Alexandre Guilmant"
  opus = ""
  lastupdated = "2011-09-17"
  % lastupdated = "2005-04-16"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"

  mutopiatitle = "Veni Creator (2e verset)"
  mutopiacomposer = "TitelouzeJ"
  mutopiainstrument = "Organ"
  mutopiastyle = "Baroque"
 footer = "Mutopia-2011/09/18-551"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\paper {
  print-page-number = ##f
  indent = 10\mm
  left-margin = 15\mm
  line-width = 18\cm
  bottom-margin = 15\mm
  top-margin = 15\mm 
}

global = {
   \time 4/4
   \key do \major
}

themeduchoral = \relative do''{
   \tieUp \override MultiMeasureRest  #'staff-position = #+4 R1*6
   sol1 la1 sol1 fa1 sol1 la1 sol1 do1 re1
   do1 si?1 do1 do1 la1 sol1 la1 do1 re1
   do1. re1. mi1. mi1.
   re1 R1
   do1 re1 mi1 do1 si1 
   \once \override NoteColumn #'force-hshift = #1.5 la1
   sol1 re'1 sol,1
   la1 si1 do1 si1 do1 la1
   \once \override NoteColumn #'force-hshift = #1.5 sol1
   fa1 la1 la1
   sib1 la1 sol1 fad1 sol1 ~ sol1 ~ sol1 ~
   sol1^\fermata
}

alto = \relative do'{
   % 1 :
   \stemDown \tieDown re2. mi4 ~
   | mi4 re4 do4 re4
   | la4 sib4. la8 fa'4 ~
   | fa8 [ mi8 re8 do8 ] sib2
   | la2 do4\rest re4
   | do4 si8 [ la8 ] si8 [ do8 ] re4
   | mi4 re2 do4
   | fa4 mi2 re4
   | mi2 re4 mi4
   | re2. do4
   | r2 do4\rest re4
   | fa4 mi8 [ re8 ] mi8 [ do8 ] re4
   | mi2 mi2\rest
   | r4 la4. sol8 fa4
   | sib4 la2 sol4 ~
   | sol4 fa4 mi4 fad4
   | sol2 sol4\rest sol4
   | mi4 la8 [ sol8 ] fa8 [ mi8 ] fa8 [ sol8 ]
   | la8 [ fa8 ] sol4 fa4 mi4 ~
   | mi4 re4 do4 re4 ~
   | re8 [ do8 ] do2 sib4
   | la4 re8 [ mi8 ] fa8 [ re8 ] fa4
   | mi2 sol4\rest sol8 [ la8 ]
   | sib8 [ sol8 ] sib8 [ la8 ] sol2
   % Passage en ternaire.
   \once \override Score.MetronomeMark #'transparent = ##t \tempo 4. =  
120
   | \bar "||" \time 6/4 la8 [ sol8 fa8 ] mi4 fa8 sol8 [ fa8 mi8 re8 ]  
do4
   | fa8 [ sol8 la8 ] sol4 fad8 sol2 sol4\rest
   | sol8 [ la8 si8 do8 ] si4 la8 [ sol8 fa8 ] mi4 fa8
   | \dotsUp sol4. \dotsNeutral si8 [ do8 si8 ] do4 si8 [ la8 sol8 la8 ]
   % Passage en binaire.
   \once \override Score.MetronomeMark #'transparent = ##t \tempo 4 = 120
   | \bar "||" \time 4/4 si4 sol4. sol8 fad4
   | sol4 mi4 re4. mi8
   | fa8 [ mi8 ] la4 sol4. la8
   | si2 la2
   | sol4 mi4 r4 sol4 ~
   | sol4 fa4 mi4 sol4 ~
   | sol4 re4 r4 sol4 ~
   | sol4 fa4 mi2
   | R1
   | r4 la4 sol4 fa4
   | mi2 re2
   | do2 la4 re4
   | r4 sol2 fa4
   | mi4. re8 mi4 fad4
   | sol4 re4 sol4. fa8
   | mi8 [ re8 do8 ] fa16 [ sol16 ] la4. mi8
   | fa4. mi16 [ re16 ] do4 fa4 ~
   | fa4 mi4 re2
   | la4\rest re4. do8 [ re8 mi8 ]
   | fa4. mi8 fa4 do4
   | fa4 mi4 re8 [ do8 fa8 mi8 ]
   | re4. mi16 [ fa16 ] sol4 re4
   | r4 re8 [ do8 ] re8 [ mi8 ] fa4
   | mi4 si4 do8 [ re8 ] mi4
   | re4 re4. do16 [ si16 ] la4
   | si4 do4 do4\rest re4
   | mi4 re8 [ do8 ] si4 mi4 ~
   | mi4 mi4 re4 do4
   | re1
}

tenor = \relative do' {
   \stemUp \tieUp fa,2\rest sol2
   | la2. sol4
   | fa4 sol4 re4. mi8
   | fa8 [ sol8 ] la4. la8 sol4 ~
   | sol8 [ sol8 ] fa4 sib4 la4 ~
   | la4 sol8 [ fa8 ] sol8 [ la8 ] si4
   | do4 si4 sol2
   | r2 r4 la4
   | do4 si8 [ la8 ] si8 [ sol8 ] do4 ~
   | do4 sib4 la2
   | do2 sol8 [ la8 ] sib4
   | r8 la8 do2 si8 [ la8 ]
   | do8 [ sol8 ] si4  mi,8 [ fa8 ] sol4 ~
   | sol4 fa4 mi4 la4
   | sol4 fa4 sib4 sib4 ~
   | sib4 la4 sol4 do,4
   | re4 r8 sol8 mi4 mi'8 [ re8 ]
   | do8 [ si8 la8 mi8 ] \dotsDown la4. \dotsNeutral sol8
   | fa4 mi4 la8 [ si8 ] do4 ~
   | do4 la4 r4 fa4 ~
   | fa4 mi4 re4. mi8
   | fa8 [ re8 ] fa2 la4 ~
   | la8 [ si8 do8 la8 ] fa'4 mi4
   | re2 r4 re8 [ mi8 ]
   |  fa8 [ mi8 re8 ] do4. do4. si8 [ la8 sol8 ]
   | la8 [ sol8 fad8 sol8 ] la4 sol8 [ la8 ] si4 sol'8 [ fa!8 ]
   | mi2 mi8 [ re8 ] do4 re8 [ do8 si8 la8 ]
   | si8 [ do8 si8 ] sol4. sol8 [ la8 si8 ] do4.
   | si4 do8 [ si8 ] la8 [ sol8 ] la4
   | sol2 re'2\rest
   | fa4\rest fa2 mi4
   | re2 re4\rest re4 ~
   | re4 do4 si4 do4
   | la2 re4\rest mi4 ~
   | mi8 [ re16 do16 ] si8 [ do8 ] re8 [ si8 ] mi8 [ re8 ]
   | do8 [ si8 ] la8 [ si8 ] do8 [ re8 ] do4
   | si4 do8 [ re8 ] mi8 [ re8 do8 si8 ]
   | la2 si8 [ do8 ] re8 [ si8 ]
   | do4 sol4 r4 sol4 ~
   | sol4 fad8 [ mi8 ] fad8 [ sol8 ] fad4
   | sol4 mi4 re2
   | do4 sol'2 la4
   | si4. do8 re4 sol,4 ~
   | sol8 [ fa8 ] mi4. fa16 [ sol16 ] la4 ~
   | la8 [ sol8 fa8 sol8 ] la2
   | si4 do4. do8 sib4
   | la2 sib2
   | la2 r4 la8 [ sol8 ]
   | la8 [ si?8 ] do4 la4 fa4 ~
   | fa4 sol4 re2
   | r2 la'8 [ sol8 la8 si?8 ]
   | do4 sol4 sol4. la8
   | si!8 [ fad8 ] la4 re,2 ~
   | re4 mi4 re4 sol4 ~
   | sol8 [ la8 si8 la8 ] sol4 do4 ~
   | do4 do4 si4 la4
   | si1
}

basse = \relative do{
   R1*4
   | re1
   | mi2. re4
   | do4 re4 mi2
   | re4 do4 fa2
   | mi2 si2\rest
   | si2\rest re4 fa4 ~
   | fa4 mi8 [ re8 ] mi8 [ do8 ] sol'4
   | re4 la'2 fa4
   | mi4. re8 do4 si4
   | la1
   | r4 re2 sol4
   | mi4 fa4 do8 [ si!8 ] la4
   | sol2 r2
   | R1
   | r4 do4 la4 la'8 [ sol8 ]
   | fa8 [ mi8 ] fa4. mi8 re8 [ do8 ]
   | si4 do4 sol2
   | re'1
   | R1
   | sol4. la8 sib8 [ sol8 ] sib4
   | la2 sol8 [ fa8 ] mi2 fa8 [ mi8 ]
   | re2 do4 si4 sol'8 [ la8 ] si4
   | do4 si8 [ la8 ] sold4 la4. la8 [ sol8 fa8 ]
   | mi2 re4 do2 mi8[ fad8 ]
   | sol2 re2
   | sol4 do2 si4
   | la4 fa4 do'2
   | re,4\rest sol2 fa4
   | mi4 la,4 mi'2
   | si4\rest la'4. sol16 [ fa16 ] mi8 [ fa8 ]
   | sol2. mi4
   | la4 re,4 la'2
   | mi4. re8 do8 [ si8 ] sol'4 ~
   | sol4 fad4 sol4 re4
   | r4 do2 si4
   | la2 re2
   | sol,1
   | r4 do2 si8 [ la8 ]
   | mi'4 sol4. fa8 [ mi8 re8 ]
   | do4. si8 la2
   | re4. mi8 fa4 re4 ~
   | re4 do4 sol'4 sol,4
   | re'2 r2
   | r4 re8 [ do8 ] re8 [ mi8 ] fa4
   | re4 la'8 [ sol8 ] fa8 [ mi8 re8 do8 ]
   | sib8 [ la8 ] sol2 sol'4 ~
   | sol4 fa8 [ mi8 ] re2
   | do4. re8 do8 [ si8 ] do4
   | re4. do8 si8 [ do8 ] re4
   | sol,4 do2 si4
   | do4 re4 mi4 do4
   | sol'1
   | \override Script #'padding = # 1  sol,1_\fermata
}

\score {
     {
       \context PianoStaff <<
	\context Staff = "dessus" <<
	  \global
	  \clef violin
	  \context Voice = "choral" {\voiceOne \themeduchoral}
	  \context Voice = "alto"   {\voiceTwo \alto}
	>>
	\context Staff = "basse" <<
	  \global
	  \clef bass
	  \context Voice = "tenor" {\voiceOne \tenor}
	  \context Voice = "basse" {\voiceTwo \basse}
	>>
>>

       \bar "|."
     }
     \layout {}
}

\score { 
  <<
    \new Staff {
      \set Staff.midiInstrument = "tenor sax"
      \themeduchoral
    }
    \new Staff {
      \set Staff.midiInstrument = "baritone sax"
      \transpose do do' 
      \themeduchoral
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \alto
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \transpose do do' 
      \alto
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \tenor
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \transpose do do' 
      \tenor
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \basse
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \transpose do do' 
      \basse
    }
%%$    \new Staff { % tempo staff
%%$      \tempo 4 = 110 s1 * 52
%%$      \tempo 4 = 100 s4
%%$      \tempo 4 = 90  s4
%%$      \tempo 4 = 80  s2
%%$      \tempo 4 = 50  s1 
%%$    }

  >>
     
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }



}
