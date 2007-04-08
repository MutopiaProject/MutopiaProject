\version "2.4.2"
\include "italiano.ly" 

%% Version 1.

\header{
    title = "Fugue sur l'hymne de la Vierge, Ave Maris Stella"
    subtitle = "Premier livre d'Orgue"
    piece = "" 
    instrument = "Orgue -- Organ"
    composer = "Jean-François Dandrieu (1681-1738)"
    copyright = "Public Domain -- Domaine public"
    source = "Édition d'Alexandre Guilmant - 1905"
    opus = ""
    lastupdated = "2005-05-22 Fête de la Trinité"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"

footer = "Mutopia-2005/05/22-566"
tagline = "\\raisebox{5mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

global = {
  \key do \major
  \time 4/4
}

soprano =  \relative do' {
  % \markup{\bold \large Majestueusement}
  s1*15
  si'2\rest re,2 
  la'2. la4 
  si4 sol4 la4 si4 
  do2.^\mordent \tieUp si4 ~
  si4 la2 sold4^\prallprall
  la2. sol4 
  r4 la4 re4 do4 
  si4 dod4 re4 mi4 
  dod4^\prallprall re2 dod4 
  re2 la2 
  sib1 
  la2 sol2 
  re'2\rest r4 la4 ~
  la4 sol2 fad4^\downprall 
  sol2 si2\rest 
  \override MultiMeasureRest  #'staff-position = #2 R1 R1 R1 R1 R1
  si4\rest re,4 sol2 ~
  sol2 fa4^\prallprall mi4 
  do'2\rest la2 
  re2. re4 
  mi4 dod4 re4 mi4 
  fa4^\mordent si,4 dod4 re4 ~
  re4. dod8 dod4.^\prallprall re8 
  re1 
}

alto = \relative do' {
  \stemUp 
  \override MultiMeasureRest  #'staff-position = #2 R1^\markup { "" \raise #2.0 \large \bold "Majestueusement" } R1 R1 R1 R1
  si'2\rest la,2 re2. re4 
  mi4 do4 re4 mi4 
  fa2.^\mordent mi4 ~
  mi4 re2 dod4^\downprall
  re2. mi4 
  fa4^\mordent la4 sol4 fa4 
  mi4^\prallprall sol4 fa4 mi4 
  re4 fa4 mi4 re4 
  dod2.^\prallprall mi4 
  la,1 ~
  \stemDown la4 mi'4 fa2 ~
  fa1 
  r4 mi4 re2 
  do2 si4 mi4 
  do4_\prallprall si4 la2 
  fad'1_\markup{ "" \hspace #0.01 \raise #-0.02 \musicglyph #"scripts-\prallprall"}
  sol2 la4 sib4
  mi,4 fa4 mi2 
  fa4 mi4 re2 
  sol1 
  fa4 mi4 re4 mi4 
  fa2 mi2 
  re2 do2 
  sib2 sol2 
  re'1 ~
  re2 do2 ~
  do4 la4 sib4 do4 
  re2.^\markup{ "" \raise #-1. \musicglyph #"scripts-mordent"} do4 ~
  do4 sib4 la4 re4 
  sib2. sib4 
  la1 
  fa'1_\mordent ~
  fa1 
  mi4 la2. ~
  la4 sold4 la2 
  sib2 la2 
  << fad1 la1 >>
}

tenor = \relative do' {
  \stemDown
  re,2\rest re2 
  la'2. la4 
  si4 sol4 la4 si4 
  do2.^\mordent si4 ~
  si4 la2 sold4^\markup{ "" \raise #1 \musicglyph #"scripts-downprall"}
  la4 sol4 fa4 mi4 
  fa4^\markup{ "" \raise #1 \musicglyph #"scripts-mordent"} re4 sib'2 ~
  sib2. sib4 
  la4 re4 sol,4 do4 
  fa,4 sib4 mi,4 la4 
  fa4^\prallprall mi4 re4 la'4 
  re2 si2 
  do2 la2 
  sib2_\mordent sol2 
  la4 sib4 la4 sol4 
  fa4 mi4 fa4 re4 
  \stemUp dod4_\prallprall la4 \stemDown re4 \stemUp re,4 
  sol2. \stemDown sol'4 
  la4 do4 fad,4 sold4 
  la2 mi2 
  \stemUp la,2. la4 
  \stemDown re2. re4 
  sol4 mi4 fa4 sol4
  la1 ~
  \stemUp la4 sol4 fa2 
  do'1 ~
  do2 si4 dod4 
  la2 sol2 
  fad4 sib4 la2 
  sol4 r4 r2 
  r2 re2 
  sol2. sol4 
  la4 fa4 sol4 la4 
  sib2. la4 ~
  la4 sol2 fad4^\prallprall 
  \stemDown sol4 fa4 mi4 re4 
  dod1 
  la'1 ~
  \stemUp la2 si2 
  dod4 mi4 fa4 dod4 
  re2 mi4 fa4 ~
  fa4. mi8 mi2^\prallprall 
  re1 
}

basse = \relative do {
  s1 s1 s1 s1 s1
  s1 s1 s1 s1 s1
  s1 s1 s1 s1 s1
  s1 s1 s1 s1 s1
  s1 s1 s1
  r2 la2
  re2. re4 
  mi4 do4 re4 mi4 
  fa2._\mordent mi4 ~
  mi4 re2 dod4_\prallprall 
  re1 
  sol,4 fad4 sol4 la4 
  sib4_\mordent la4 sib4 sol4 
  mib'4 re4 mib4 do4 
  fa4 mib4 re4 do4 
  sib2 mib2 
  re1 
  s1 s1 
  re2. mi4 
  fa2 re2 
  la'1 ~
  la1 
  sol2 la2 
  re,1 
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
  \midi{ \tempo 4 = 100 }
}


