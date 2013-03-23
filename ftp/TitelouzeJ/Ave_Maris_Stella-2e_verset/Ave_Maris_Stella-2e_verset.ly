\version "2.16.1"
\include "italiano.ly"

%% Version 1.0

\header{
    title = "Ave Maris Stella"
    mutopiatitle = "Ave Maris Stella (2e verset)"
    style = "Baroque"
    subtitle = ""
    piece = "2e verset"
    instrument = "Orgue - Organ"
    mutopiainstrument = "Organ"
    composer = "Jean Titelouze (1563-1633)"
    mutopiacomposer = "TitelouzeJ"
    copyright = "Public Domain"
    source = "Archives des Maîtres de l'Orgue, vol. 1 - A. Durand et fils - 1897 - Alexandre Guilmant"
    opus = ""
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"

 footer = "Mutopia-2013/03/23-599"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global = {
  \key do \major
  \time 4/4
}

#(set-global-staff-size 20)

soprano =  \relative do' {
  \override MultiMeasureRest #'staff-position = #4 R1 R1 R1 R1 R1
  \override MultiMeasureRest #'staff-position = #2 R1 R1
  | si'2\rest si4\rest re,4
  | la'4 si4 sol4 la4 ~
  | la8 [ si8 do8 re8 ] si4 do8 [ si16 la16 ]
  | sol8 [ mi8 ] la2 sold4
  | la2 si2\rest
  | si4\rest la4 ~ la8 [ la8 ] re,4
  | mi8 [ fa8 ] sol2 fa8 [ mi8 ]
  | re8 [ fa8 mi8 fa8 ] sol4 fad4
  | sol4 la2 sol4
  | la2 fa4. sol8
  | la4 sib4 la4. sol8
  | fa2 si2\rest
  | \override MultiMeasureRest #'staff-position = #4 R1
  | si4\rest fa2 mi4
  | sol4 la2 sol4
  | si4 do4 la2
  | re4\rest do2 si4
  | re4 mi4 la,2
  | si4 do2 si8 [ la8 ]
  | sol2 si2\rest
  | R1
  | re4\rest la4 do4 la4
  | sib2 la2
  | sol2 si2\rest
  | re2\rest re4\rest la4
  | do4 la4 sib2
  | la4 re2 do4
  | si?1
  | si2\rest si4\rest la4
  | do4 la4 sib2
  | la2 si2\rest
  | re4\rest la2 sol4
  | sib2 la2 ~
  | la4 mi4 sol4. fa16 [ mi16 ]
  | re4 sol4 la4 re4 ~
  | re4 do8 [ si8 ] do8 re4 dod8
  | re2 sol,4 la8 [ sol8 ]
  | fa4. sol8 fa8 [ sol8 la8 si?8 ]
  | do2. do8 [ re8 ]
  | mi8 [ si8 ] do4 la4. si8
  | do4. re8 mi4 mi4 ~
  | mi8 [ re8 do8 si8 ] la4. sol8
  | fa8 [ re8 ] sib'4. la8 re4 ~
  | re4. do8 sib4 la4
  | sib1 ~
  | sib!8 [ la8 sol8 la8 ] si8 [ do8 ] re4 ~
  | re4. do8 sib4. la16 [ sol16 ]
  | fa4 fad4 sol2
  | la1^\fermata
}

alto = \relative do' {
  | la2 re4 mi4
  | do4 re4. mi8 [ fa8 sol8 ]
  | mi4 re4. mi8 [ fa8 mi8 ]
  | la2 sol8 [ fa8 mi8 re8 ]
  | do4 re8 [ mi8 ] fa8 [ mi8 ] re4 ~
  | re8 [ re8 ] do4 si4. do16 [ re16 ]
  | mi4 la,4 fa'8 [ mi8 ] re8 [ mi16 re16 ]
  | do8 [ si8 ] si8 [ la16 sol16 ] la2
  | r4 re4 mi4 fa4
  | mi4. fad8 sol4 mi4
  | la,2\rest do4\rest mi4 ~
  | mi8 [ mi8 ] la,4 si8 [ do8 ] re4 ~
  | re4 do2 si4
  | do8 [ si8 la8 sol8 ] la2
  | si4 do4 re4 la4
  | si4 do4 re4. mi16 [ re16 ]
  | do2 re2
  | do8 [ la8 ] re2 dod4
  | re4 la8 [ si8 ] do2
  | do4 do2 sib4 ~
  | sib8 [ la8 la8 si8 ] do2
  | si4\rest do2 si4
  | re4 mi2 la,8 [ si8 ]
  | do8 [ re8 mi8 fa8 ] sol4. fa16 [ mi16 ]
  | re4 sol2 fa4 ~
  | fa4 mi2 re4
  | mi4. re8 do4 fa4
  | sol4 la4 re,4 mi8 [ re8 ]
  | mi4 fa4 mi4 fa4 ~
  | fa4 mi8 [ re8 ] do2
  | r2 r4 mi4
  | sol4 mi4 fa2
  | mi4 do4 re4 mi4 ~
  | mi4 re4 mi4 la4 ~
  | la4 sol4. fa8 [ mi8 re8 ]
  | do8 [ si8 do8 si8 ] la4 do4 ~
  | do4 fa2 mi4
  | fa4. mi16 [ re16 ] do8 [ re8 mi8 fa8 ]
  | mi4 re8 [ do8 ] re2
  | re4 mi4. re8 re4 ~
  | re4 do4 si2
  | \override MultiMeasureRest #'staff-position = #-6 R1
  | mi4 sol2 mi4
  | fa2 mi4 do4
  | re2 la4\rest fa'4 ~
  | fa8 [ mi8 do8 re8 ] mi4 la4
  | sol4 mi4 fa8 [ re8 ] fa4 ~
  | fa8 [ sol8 la8 si8 ] do8 [ si8 la8 sol8 ]
  | fa4 mi4. re8 dod4
  | re2 re4. mi8
  | fad8 [ sol8 ] la4 re,8 sol4 fad8
  | sol8 [ re8 mi8 fa8 ] sol8 [ la8 sol8 fa16 mi16 ]
  | re2 re4. mi8
  | fad8 [ sol8 ] la4 sol4 re4
  | re4. do8 si4 sib4
  | la1
}

tenor = \relative do {
  \override MultiMeasureRest #'staff-position = #4 R1
  | re2\rest re2
  | la'4 si4 sol4 la4 ~
  | la8 [ si8 do8 re8 ] si4 do8 [ si8 ]
  | la8 [ sol8 fa8 mi8 ] re8 [ mi8 fa8 sol8 ]
  | mi4 la4. la8 sol4 ~
  | sol8 [ la16 sol16 ] fa8 [ sol8 ] la2
  | do4\rest sol2 fad8 [ mi8 ]
  | fad4 sol2 do4 ~
  | do4 do4 re8 [ mi8 ] do4 ~
  | do4 si8 [ la8 ] si2
  | la4 fad4 sol8 [ fa8 re8 mi8 ]
  | fa8 [ sol8 ] mi4 fad4 sol4
  | mi2 fa2\rest
  | R1
  | R1
  | do'4\rest la4 ~ la8 [ la8 ] re,4
  | mi4 sol4 fa4 mi4
  | la4\rest fa2 mi4
  | sol4 la4 re,2
  | mi4 fa4 sol4. fa8
  | mi4 fa4 re2
  | sol4 sol2 fa4
  | mi4 la4 sol4. la8
  | si4 do4. si16 [ la16 ] re4
  | sol,4 la2 si4
  | do4 si4 mi4\rest re4 ~
  | re4 do4 si8 [ la8 ] sib4 ~
  | sib4 la4 sol4 fa4
  | re4 sol4 fa2\rest
  | la4\rest mi4 sol2
  | mi4 do'8 [ si?8 ] la8 [ sol8 ] fa4
  | fa4\rest mi4 sol4 mi4
  | fa2 mi2
  | fa2\rest mi4 sol4 ~
  | sol4 mi4 fa4. sol8
  | la4 re,4 sol2
  | fa8 [ re8 ] fa4 mi4 la4
  | sol4 fa4 sol4\rest re4
  | sol4 mi4 fa2
  | mi4 mi4. fa8 [ sol8 la8 ]
  | si4 do2 si8 [ la8 ]
  | sol2 r2
  | r4 la4 do4 la4
  | sib2 la2 ~
  | la4 mi4 la4\rest la8 [ si8 ]
  | do8 [ sol8 la8 sol8 ] fa4. sol8
  | la4. sol16 [ fa16 ] mi4. fa16 [ sol16 ]
  | la4. sol8 fa4 mi4
  | re4 sol4. fa8 sib4
  | la4 fad4 sol4 la4
  | sol4. re8 mi8 [ fa8 sol8 la8 ]
  | sib4. la8 sol8 [ la8 ] sib4
  | la2 re4 sib4 ~
  | sib4 la2 sol4
  | fad1^\fermata
}

basse = \relative do {
  R1 R1 R1 R1 R1
  | la2 re4 mi4
  | do4 re4. mi8 fa8 [ sol8 ]
  | mi2 re2 ~
  | re4 sol,4 do4 la4
  | la'2 sol4 la4
  | mi1
  | dod4 re4 sol,2
  | la2 sol2\rest
  | sol2\rest la4\rest re4 ~
  | re8 [ re8 ] la4 si8 [ do8 ] re4 ~
  | re4 do4 sib2
  | fa'4. mi8 re8 [ do8 ] sib4
  | la4 sol4 la2
  | re4. do16 [ si16 ] la2
  | mi4 fa4 sol2
  | do4 re4 do2
  | r2 r4 sol4 ~
  | sol4 do2 re4
  | la2 mi'2
  | \once \override MultiMeasureRest  #'staff-position = #-2 R1
  | r2 fa2
  | mi4 sol4 la4 re,4
  | mi4 fa2 re4
  | do2. re8 [ do8 ]
  | sib8 [ la8 ] sol4 la8 [ sol8 la8 fa8 ]
  | do'1 ~
  | do2 re2
  | la2 sol2
  | la1
  | mi2 r2
  | R1
  | R1
  | sol2\rest la2
  | do4 la4 sib4. la8
  | sol2 fa4. sol8
  | la2 r4 mi'4
  | sol4 mi4 fa2
  | mi1
  | re2 mi4 fa8 [ mi8 ]
  | re8 [ do8 sib8 sol8 ] re'2
  | la4. si8 do8 [ la8 ] fa'4
  | mi4 do4 re2
  | la1 ~
  | la1
  | R1
  | re1
  | sol,1
  | sol'1
  | fad2 sol2
  | re1
  | re1
}

\score {
  {
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
	\context Voice = "basse" {\voiceTwo \basse}
      >>
    >>
    \bar "|."
  }
  \layout { }

  \midi {
    \tempo 4 = 112
    }
}
