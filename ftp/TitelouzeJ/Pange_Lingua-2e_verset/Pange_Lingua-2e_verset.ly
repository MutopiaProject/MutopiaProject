\version "2.4.2"
\include "italiano.ly" 

%% Version 1.0

\header{
    title = "Pange Lingua"
    subtitle = ""
    piece = "2e verset" 
    instrument = "Orgue -- Organ"
    composer = "Jean Titelouze (1563-1633)"
    copyright = "Public Domain -- Domaine public."
    source = "Edition Schott 1869 - Alexandre Guilmant"
    opus = ""
    lastupdated = "2005-05-26 Saint Urbain "
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"

footer = "Mutopia-2005/06/10-567"
tagline = "\\raisebox{5mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

global = {
  \key do \major
  \time 4/4
}

soprano =  \relative do'' {
  R1 R1 R1 R1
  si2 si4 do4 
  si4 sol4 do8 [ si8 ] la4 
  sol4 la8 [ si8 ] do4 si4 ~
  si4 la8 [ sol8 ] la8 [ si8 ] do4 
  si4 mi,4 fa8 [ mi8 ] mi4 ~
  mi4 re8 [ mi8 ] fad8 [ sol8 ] mi4 
  re4 sol4. fad16 [ mi16 ] fad16 [ sol16 fad8 ]
  sol4 re4 mi4 fa4 
  sol4 la4 si8 [ dod8 ] re4 
  sol,4 si2 la4 
  si4 do4 la4 sol8 [ la8 ]
  si4 do4. si16 [ la16 ] si8 [ do8 ]
  re8 [ si8 ] do4. re8 mi4 
  la,8 [ si8 ] do4. si8 la4 
  re2\rest do4 re4 ~
  re4 do8 [ si8 ] la2 
  R1
  do4 re2 do8 [ si8 ]
  la2 do4 si4 ~
  si4 la4 sol2 
  R1 
  R1
  re'2\rest re4\rest sol,4 
  la4 do4. si8 la4 ~
  la8 [ la8 si8 la8 ] sol2 
  sol4 fa8 [ mi8 ] la8 sol4 fad8 
  sol8 [ la8 si8 do8 ]~ do8 [ si8 ] la8 [ re16 do16 ]
  si2 si2\rest 
  R1 
  r2 r4 re4 ~
  re8 [ re8 ] do4 si4 mi4 
  re2. la8 [ si8 ]
  do4 sol8 [ la8 ] si8 mi,4 re8 
  R1 
  r8 la'16 [ si16 ] do8 [ si16 la16 ] sold8 [ la16 sol16 ] fa16 [ mi16 fa8 ]
  mi2. re4 
  mi2 si'2\rest 
  si8\rest mi,16 [ fa16 ] sol8 [ fa16 mi16 ]  re8 [ mi16 re16 ] do16 [ si16 do8 ]
  si8 si'4 do8 re8 [ sol,16 fa16 ] mi4 
  re4 si'8\rest mi,16 [ re16 ] do8 [ re8 mi8 fa8 ]
  sol8 [ la8 si8 do8 ] re8 do4 si8 
  do8 [ la16 si16 ] do2 r8 do16 [ re16 ]
  mi4 si4 dod4 re4 
  si2 mi8 [ re8 ] do4 ~
  do4 si8 [ la8 ] sol8 [ la8 ] si4 
  mi,4. fa8 sol4 la4 
  si2 do2 
  si1^\fermata
}

alto = \relative do' {
  \stemDown \tieDown
  si2 si4 do4 
  si4 sol4 do4 re4 
  mi4. fa16 [ mi16 ] re4 do4 
  fa4 mi4 re4. do8 
  re8 [ si8 ] sol'4. fa8 mi4 
  r4 mi4 mi4 fa4 
  mi4 do4 sol'4. fa8 
  mi8 [ re8 ] mi4. re8 mi4 
  re4 si4 r2 
  \override MultiMeasureRest #'staff-position = #-6 R1 
  R1
  R1
  r4 mi4 mi4 fa4 
  mi4 re4 sol8 [ fa8 ] mi8 [ re16 do16 ]
  si4 mi8 [ re8 ] do8 [ re8 mi8 fa8 ]
  sol4 fa8 [ mi8 ] re4 sol4 ~
  sol4 mi8 [ fa8 ] mi8 [ fa8 sol8 mi8 ]
  fa4 mi8 [ re8 ] mi4 fa4 
  R1 
  fa4 sol2 fa8 [ mi8 ]
  re4 sol4. fa8 mi4 
  la8 [ sol8 ] fa4 mi4 mi4 ~
  mi4 re4 do8 [ re8 mi8 re8 ]
  do8 [ si8 ] do4 si4 do4\rest 
  do4 mi4 sol4 do,4 
  re8 [ do16 si16 ] la4 do4\rest do4 
  mi4 fa8 [ mi8 ] re4 mi4 
  do2. re8 [ mi8 ]
  fa2 mi2 ~
  mi8 [ re8 ] do2 si8 [ la8 ]
  si8 [ do8 re8 mi8 ] fad8 sol4 fad8 
  sol8 [ fa?16 mi16 ] re8 [ mi8 ] do2 
  r4 sol'4. sol8 fa4 
  mi4 la4. sol16 [ fad16 ] sol8 [ fa8 ]
  mi4. fad8 sol2 
  r4 sol4. sol8 fa4 
  mi2 r2 
  r8 mi16 [ fa16 ] sol8 [ fa16 mi16 ] re8 [ mi16 re16 ] do16 [ si16 do8 ]
  la2 r4 r8 la16 [ si16 ]
  do8 [ si16 la16 ] sol8 [ la8 ] si8 [ do16 si16 ] la16 [ sol16 la8 ]
  sol8 [ do16 re16 ] mi8 [ re16 do16 ] si8 do4 si8 
  do4 si8 [ do8 ] si4 la4 
  r8 mi'16 [ fa16 ] sol8 [ fa16 mi16 ] re8 [ mi16 re16 ] do16 [ si16 do8 ]
  si4 sol4 la8 [ si8 dod8 re8 ]
  si4 sol'4 fa8 [ mi8 fad8 sol8 ]
  mi8 [ fa8 ] mi8 [ fa16 sol16 ] la4 la4 ~
  la4 sold4 la4 fad4 
  sol4. fa?8 mi2 
  re2 mi4. re8 
  do2 si4 mi8 [ fad8 ] 
  sold2 la2 
  sold1 
}

tenor = \relative do {
  R1
  mi2 mi4 fa4 
  mi4 do4 sol'4 la4 ~
  la8 [ si8 ] do2 si8 [ la8 ]
  fa4. mi8 re4 la4 
  sol4 do'8 [ si8 ] la8 [ sol8 ] fa4 
  do4 fa4 mi4 sol4 ~
  sol4 do4. si8 la4 ~
  la4 sold4 la4 sol4 
  fad4 sol4 re4 sol4 ~
  sol8 [ la8 ] si4 la2 
  sol8 [ la8 ] si4 do4 re4 ~
  re4 do8 [ si16 la16 ] sol4 la4 
  r2 do4\rest mi,4 ~
  mi4 mi4 fa4 mi4 ~
  mi4 re8 [ do8 ] sol'2 ~
  sol4 la4 do2 
  r2 do4 re4 ~
  re4 do8 [ si8 ] la4 la4 ~
  la4 sol4 re'4. do8 
  si2 do4. si8 
  la4. si16 [ la16 ] sol8 [ fa8 ] mi4 
  fa2 mi2 ~
  mi2 do'4\rest sol4 
  la4 do4. si8 la4 ~
  la8 sol4 fad8 sol4 sol4 ~
  sol8 [ mi8 ] la2 sol4 ~
  sol4 fa8 [ sol8 ] la2 ~
  la4 re4. re8 do4 ~
  do8 [ si8 la8 sol8 ] fa8 [ mi8 re8 do8 ]
  re4 sol4 la8 [ sol8 ] la4 
  r4 sol4. sol8 fa4 
  mi2 la2 
  sol4 mi4 re2 
  sol4 la4 si4 do4 ~
  do8 [ do8 ] si4 la2 
  r2 r4 la4 
  sol8 [ do8 si8 la8 ] ~ la8 [ sol8 ] la4 
  fa4 mi8 [ la8 ] si8 [ dod8 ] re4 
  R1 
  r8 la16 [ si16 ] do8 [ si16 la16 ] sold8 [ la16 sol16 ] fa16 [ mi16 fa8 ]
  mi4. re16 [ do16 ] sol'8 mi4. 
  sol4. la8 si4 sol4 ~
  sol8 [ sol16 fa16 ] mi2 la4 
  sol4. la8 si8 [ do8 ] re4 
  do8 [ re8 ] do4. do16 [ si16 ] la4 
  si2 la4 si4 ~
  si8 [ la8 ] sol4 la4. sol8 
  fad4 sol8 [ fa8 ] mi8 [ fad8 ] sold4 
  la8 [ mi8 ] la4 sol4 do4 
  si4 mi8 [ re8 ] do8 [ si8 ] la4 
  \override Script #'padding = #1 si1^\fermata
}

basse = \relative do {
  \once \override MultiMeasureRest  #'staff-position = #-2 R1 
  R1 R1 R1 R1
  R1 R1 R1 R1
  si2 si4 do4 
  si4 sol4 re'2 
  mi4 sol2 fa4 
  mi2. re4 
  do4 sol'8 [ fa8 ] mi8 [ re8 ] do8 [ si16 la16 ]
  sold4 la4. si8 do4 
  sol2 r2 
  R1 
  R1
  fa'4 sol2 fa8 [ mi8 ]
  re2. re4 
  sol4 mi2 la8 [ sol8 ]
  fa8 [ mi8 ] re4 mi4 la,4 ~
  la4 re4 la4 sold4 
  la2 mi'2 
  si4\rest do4 mi4 fa8 [ mi8 ]
  re2 mi4. re8 
  do2 si4 do4 
  la2 fa'4. mi8 
  re2 mi4. re8 
  do2 la2 
  sol2 re'2 
  sol,2 la2 
  do2 r4 re4 ~
  re8 [ re8 ] do4 si2 
  do4 la4 mi'4. fa?8 
  sol2 re2 
  r8 la'16 [ si16 ] do8 [ si16 la16 ] sold8 [ la16 sol16 ] fa16 [ mi16 fa8 ]
  mi4. do8 si8 do4 si16 [ la16 ]
  re4 la4 mi'4 re4 
  r8 la16 [ si16 ] do8 [ si16 la16 ] sold8 [ la16 sol16 ] fa16 [ mi16 fa8 ]
  do'4. re8 mi4 re4 
  la4 sol4. sold8 la4 
  mi'4. re16 [ do16 ] sol'4 do,4 
  sol4. do16 [ si16 ] la2 
  mi'2 re2 
  la'4. sol8 fa2 
  mi2. re4 
  mi4. re8 do8 [ si8 ] la4 
  re4 sol,4 do4 si4 
  la2 mi'2 ~
  mi1 ~
  mi1 
 
}

\score {
  {
    \context PianoStaff <<
      \context Staff = "dessus" <<
        \global
        \clef violin 
	\set Staff.midiInstrument = "alto sax"
	\context Voice = "soprano" {\voiceOne \soprano}
	\context Voice = "alto" {\voiceTwo \alto}
      >>
      \context Staff = "basse" <<
        \global    
        \clef bass
	\set Staff.midiInstrument = "alto sax"
	\context Voice = "tenor" {\voiceOne \tenor} 
	\context Voice = "basse" {\voiceTwo \basse}
      >>
    >>
    \bar "|."
  }
  \layout { }
  \midi{ \tempo 4 = 112  }
}


