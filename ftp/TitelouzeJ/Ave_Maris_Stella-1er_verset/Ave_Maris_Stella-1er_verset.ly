\version "2.16.1"
\include "italiano.ly"

% Écrit avec l'aide très secourable de lyqi ! Essayez-le !
% Written with the most secourable help of lyqi ! Try it !

\header{
     title = "Ave Maris Stella"
     mutopiatitle = "Ave Maris Stella (1er verset)"
     subtitle = "1er verset"
     piece = ""
     instrument = "Orgue -- Organ"
     composer = "Jean Titelouze (1563-1633)"
     mutopiainstrument = "Organ"
     mutopiacomposer = "TitelouzeJ"
     style = "Baroque"
     copyright = "Public Domain"
     source = "Edition Schott 1869 - Alexandre Guilmant"
     opus = ""
     enteredby = "Gérard Gréco"
     maintainer = "Gérard Gréco"

 footer = "Mutopia-2013/03/23-552"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global = {
   \time 4/4
   \key do \major
}
soprano = \relative do''{
   \tieUp \once \override MultiMeasureRest  #'staff-position = #+4 R1
   re4\rest la2 si4
   | dod4 re2 do4
   | si4. do8 re4. do8
   | si4 mi8 [ fa8 ] sol4 sol4 ~
   | sol4 fa4 mi4 r4
   | re4 mi4 fad4 sol4 ~
   | sol8 [ la8 sol8 fa8 ] mi8 [ re8 do8 si8 ]
   | la8 [ re8 si8 do8 ] re8 [ mi8 fa8 re8 ]
   | mi4 sol4. fa8 [ mi8 do8 ]
   | re4 do8 [ re8 ] si8 [ do8 re8 mi8 ]
   | dod4. re8 mi4 fa4 ~
   | fa4 mi4 re4 mi4
   | fa4 mi2 fa8 [ sol8 ]
   | la4 mi4 fa2
   | dod4 re4 mi2
   | fa1
   | R1
   | re2\rest re8\rest re8 [ do8 si8 ]
   | la8 [ sol8 la8 si8 ] do4 re4
   | mi2 sol2
   | fa2 re2
   | do2 la4 si4
   | do4 re4 mi2
   | re4 sol4. fa8 [ mi8 re8 ]
   | do4 re4 mi4 re4
   | do8 [ re8 mi8 fa8 ] mi8 re4 dod8
   | re8 [ la8 sib8 fa8 ] sol8 [ la8 sol8 fad8 ]
   | sol4 re'8\rest si8 la8 [ sol8 do8 si8 ]
   | la8 [ sol8 la8 si8 ] do8 [ re8 mi8 re8 ]
   | mi4 re4 dod8 [ re8 ] mi4
   | fa4. mi8 re4 la4
   | si2\rest do2
   | si8 [ do16 re16 ] mi8 [ re8 ] do8 [ si8 sol8 la8 ]
   | si8 [ do16 re16 ] mi8 [ re8 ] do8 [ si8 ] si4 ~
   | si4 la4 sol8 [ la8 si8 do8 ]
   | re8 [ do8 re8 mi8 ] fa8 [ sol8 ] la4
   | sol4 fa4 mi2
   | mi8 [ re8 ] do4. si8 [ la8 sol8 ]
   | fa4 sol4 la4 sib4
   | la4 re8 [ mi8 ] fa4. mi8
   | re8 [ do8 re8 mi8 ] fa4 re4 ~
   | \once \override Script #'padding = # 1 re1^\fermata
}

alto = \relative do'{
   re4 mi4 fad4 sol4 ~
   | sol4 fa4 mi2
   | la2 r4 la4 ~
   | la4 sol4 r2
   | r4 do2 si4
   | do8 [ si8 la8 si8 ] do2
   | si2 si8 [ do8 ] re4
   | do2. sol4
   | R1
   | sol2\rest sol4 la4
   | si4 la2 sold4
   | la4. si8 do4 la4
   | si4 do4 sib2
   | la4. si?8 do4 re4 ~
   | re4 do4. si8 la4 ~
   | la4 sol8 [ fa8 ] mi4 la4
   | sol8\rest re'8 [ do8 si8 ] la8 [ sol8 la8 si8 ]
   | do4 sol2 mi4
   | re8 [ sol8 fa8 mi8 ] re4 mi4
   | fa2 r2
   | sol8\rest la8 [ sol8 fa8 ] mi8 [ re8 ] dod4
   | re4 mi4 fa4 sol4
   | la4 sol4 fa2
   | r2 sol4\rest sol4 ~
   | sol4. la8 sib2
   | la4 sol8 [ fa8 ] mi4 fa8 [ sol8 ]
   | la4. si8 do8 [ la8 ] sol4
   | fa2 r2
   | R1
   | r2 la2
   | sol8 [ mi8 fad8 sol8 ] la8 [ si8 dod!8 si16 dod16 ]
   | re8 la4 sol8 fa8[ re8] fa4
   | mi8 [ do16 re16 ] mi8 [ fa8 ] sol8 [ fa8 mi8 fa8 ]
   | sol2 mi4\rest mi4
   | re4 sol4 sol2 ~
   | sol4 mi2 sol4
   | r8 la8 [ si8 do8 ] re2
   | sol,8\rest sol8 [ la8 si8 ] do4 si8 [ la8 ]
   | sol8 [ fa8 mi8 re8 ] do8 [ re8 ] dod4
   | re4 mi4 fa8 [ mi8 re8 mi8 ]
   | fa4 la2 fa4
   | sol8 [ la8 ] sib4 la4 sol4
   | fad1

}

tenor = \relative do' {
   la2. si4
   | dod4 re4 do4 re4
   | mi4 fa4 mi2
   | re4 mi4 fad4 sol4 ~
   | sol8 [ fa8 ] mi4 re4 mi4
   | do4 re4 mi4 fad4
   | sol4 fa?8 [ mi8 ] re2
   | mi4. la8 sol8 [ fa8 mi8 sol8 ]
   | fa4 sol8 [ la8 ] sib8 [ la8 sol8 fa8 ]
   | sol8 [ fa8 mi8 fa8 ] mi2
   | r1
   | mi4 mi2 re8 [ do8 ]
   | re4 do4 sol'8 [ fa8 mi8 re8 ]
   | do4. re8 mi8 [ fa8 re8 mi8 ]
   | fa8 [ sol8 ] la4 do,4 re4
   | mi4 re2 dod4
   | re2 r2
   | r8 do8 [ si8 la8 ] sol8 [ fa8 sol8 la8 ]
   | si4 do4 si4 do4
   | r8 re8 [ do8 si8 ] la8 [ sol8 la8 si8 ]
   | do4 si2 la8 [ sol8 ]
   | la2 r2
   | la4 si4 do4 re4
   | mi4 re2 do4
   | si4 do4 re4 sol4 ~
   | sol8 [ fa8 mi8 re8 ] dod4 re8 [ mi8 ]
   | fa8 [ mi8 do8 re8 ] mi8 [ fa8 ] mi4
   | re4. la8 sib8 [ fa8 sol8 la8 ]
   | sol8 [ si?8 la8 sol8 ] do8 [ si8 la8 sold8 ]
   | la8 [ si8 do8 re8 ] la4 si4
   | do4 si4 la4 sol4
   | la4 sib4 la4. fa16 [ sol16 ]
   | la4. sol16 [ fa16 ] mi8 [ fa8 sol8 la8 ]
   | sol4. do16 [ re16 ] mi8 [ re8 ] do4
   | si4. do16 [ re16 ] mi8 [ re8 do8 si8 ]
   | do4. si16 [ la16 ] si4 mi4
   | la,8 fa'4 mi8 re8 [ do8 la8 si8 ]
   | do2 r8 sol8 [ la8 si8 ]
   | do4. si8 la8 sol4 la8
   | sib4 la8 [ sol8 ] re'8 [ do8 sib8 sol8 ]
   | la8 [ fa8 ] fa'4. mi8 [ re8 do8 ]
   | sib8 [ la8 ] sol4 fa4 sib4
   | \once \override Script #'padding = # 1 la1^\fermata

}

choral = \relative do{
   re1 la'1 la1 si1 sol1 la1 si1 do1 re1 do1
   | si1 la1 sol1 la1 la1 la1 re,1 mi1 sol1 fa1
   | mi1 re1 fa1 mi1 sol1 la1 la1 re,1 mi1 fa1
   | mi1 re1 do1 mi1 sol1 mi1 fa1 mi1 mi1 re1 ~
   | re1 ~ re1
   | re1
}

cantusfirmus=\lyricmode{
				% Ave Maris Stella
				% Dei Mater alma
				% Atque semper virgo
				% Felix coeli porta.
				% --
				% Salut, étoile des mers,
				% Auguste Mère de Dieu, salut,
				% ô toujours Vierge,
				% heureuse porte du Ciel.
				% --
				% Hail, O Star of the ocean,
				% God's own Mother blest,
				% ever sinless Virgin,
				% gate of heav'nly rest.

     A -- ve \skip 1 \skip 1 ma -- ris \skip 1 \skip 1 \skip 1 stel --
\skip 1
     \skip 1 \skip 1 la,
     De -- i Ma -- \skip 1 ter \skip 1 al -- ma,
     At -- que sem -- per Vir -- go, \skip 1
     \skip 1 \skip 1 \skip 1 \skip 1 Fe -- lix coe -- li por -- \skip 1
ta.

}

\score {
     {
       <<
	\context PianoStaff <<
	  \context Staff = "dessus" <<
	    \global
	    \clef violin
	    \set Staff.midiInstrument = "Church organ"
	    \context Voice = "soprano" {\voiceOne \soprano}
	    \context Voice = "alto" {\voiceTwo \alto}
	  >>
	  \context Staff = "basse" <<
	    \global
	    \clef bass
	    \set Staff.midiInstrument = "Church organ"
	    \context Voice = "tenor" {\voiceOne \tenor}
	    \context Voice = "basse" {\voiceTwo \choral}
	  >>
	>>
	\lyricsto "basse" \new Lyrics \cantusfirmus
>>
       \bar "|."
     }
     \layout {}

  \midi {
    \tempo 4 = 120
    }

}
