\version "2.16.1"
\include "italiano.ly" 

%% Version 1.

\header{
    title = "Fugue sur l'hymne de la Vierge, Ave Maris Stella"
    subtitle = "Premier livre d'Orgue"
    piece = "" 
    instrument = "Orgue -- Organ"
    composer = "Jean-François Dandrieu (1681-1738)"
    copyright = "Public Domain"
    source = "Édition d'Alexandre Guilmant - 1905"
    opus = ""
    mutopiainstrument = "Organ"
    mutopiacomposer = "DandrieuJ"
    mutopiastyle = "Baroque"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"

 footer = "Mutopia-2013/03/22-566"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global = {
  \key do \major
  \time 4/4
  \tempo "Majestueusement"
}

soprano =  \relative do' {
  s1*15
  \voiceOne r2 re2 
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
  R1*5
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
  R1*5
  r2 la2 re2. re4 
  mi4 do4 re4 mi4 
  fa2.\mordent mi4 ~
  mi4 re2 dod4\downprall
  re2. mi4 
  fa4\mordent la4 sol4 fa4 
  mi4\prallprall sol4 fa4 mi4 
  re4 fa4 mi4 re4 
  dod2.\prallprall mi4 
  \voiceTwo la,1 ~
  la4 mi'4 fa2 ~
  fa1 
  r4 mi4 re2 
  do2 si4 mi4 
  do4_\prallprall si4 la2 
  fad'1\prallprall
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
  re2.^\markup{ "" \raise #-1. \musicglyph #"scripts.mordent"} do4 ~
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
  re,2\rest re2 
  la'2. la4 
  si4 sol4 la4 si4 
  do2.^\mordent si4 ~
  si4 la2 sold4^\markup{ "" \raise #1 \musicglyph #"scripts.downprall"}
  la4 sol4 fa4 mi4 
  fa4^\markup{ "" \raise #1 \musicglyph #"scripts.mordent"} re4 sib'2 ~
  sib2. sib4 
  la4 re4 sol,4 do4 
  fa,4 sib4 mi,4 la4 
  fa4^\prallprall mi4 re4 la'4 
  re2 si2 
  do2 la2 
  sib2_\mordent sol2 
  la4 sib4 la4 sol4 
  fa4 mi4 fa4 re4 
  dod4_\prallprall la4 re4 re,4 
  sol2. sol'4 
  la4 do4 fad,4 sold4 
  la2 mi2 
  la,2. la4 
  re2. re4 
  sol4 mi4 fa4 sol4
  \voiceOne
  la1 ~
  la4 sol4 fa2 
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
  \oneVoice
  sol4 fa4 mi4 re4 
  dod1 
  \voiceOne
  la'1 ~
  la2 si2 
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
    \new PianoStaff <<
      \new Staff = "dessus" <<
        \global
        \clef violin 
	\set Staff.midiInstrument = "Church organ"
	\new Voice = "soprano" {\soprano}
	\new Voice = "alto" {\alto}
      >>
      \new Staff = "basse" <<
        \global    
        \clef bass
	\set Staff.midiInstrument = "Church organ"
	\new Voice = "tenor" {\tenor} 
	\new Voice = "basse" {\voiceTwo \basse}
      >>
    >>
    \bar "|."
  }
  \layout { }
  
  \midi {
    \tempo 4 = 100
    }


}
