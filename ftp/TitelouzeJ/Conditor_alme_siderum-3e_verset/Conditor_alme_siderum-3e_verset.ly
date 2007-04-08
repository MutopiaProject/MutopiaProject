\version "2.6.1"
\include "italiano.ly" 

%% Version 1.0

\header{
    title = "Conditor alme siderum"
    subtitle = ""
    piece = "3e verset" 
    instrument = "Orgue -- Organ"
    composer = "Jean Titelouze (1563-1633)"
    copyright = "Creative Commons Attribution-ShareAlike 2.5"
    source = "Edition Schott 1869 - Alexandre Guilmant"
    opus = ""
    lastupdated = "2005-07-20"
    enteredby = "Gérard Gréco"
    maintainer = "Gérard Gréco"
    
    footer = "Mutopia-2005/08/04-572"
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

global = {
  \key do \major
  \time 4/4
}

soprano =  \relative do' {
  \override MultiMeasureRest #'staff-position = #2 R1 R1 
  mi2. re4 
  do4. re8 mi8 [ fa8 sol8 mi8 ]
  fa2 mi4. fad8 
  sol8 [ la8 ] si4. la8 [ sol8 fa8 ]
  mi1 
  si'8\rest do,8 re4 mi8 [ fa8 ] sol4 
  fa2 sol2\rest 
  si8\rest la8 [ re8 do8 ] la8 [ si8 do8 la8 ]
  si4. la8 sol4 fad4 
  sol4. la8 si4 mi,4 ~
  mi4 re4 sol2\rest 
  si4\rest sol2 fa4 
  mi4. fa8 sol4. la8 
  si8 [ do8 ] re2 re8 [ do8 ]
  si4 mi4 re2 
  do4. si8 la2 
  sol4 si4 sold2 
  la2 si2\rest 
  R1 
  si4\rest si2 la4 
  sol4. la8 si8 [ do8 re8 si8 ]
  do4. re8 mi2 
  la,4. sol8 si4. dod8 
  re4. do8 si2 
  R1 
  si2\rest si4\rest sol4 
  la4. la8 sol4 mi4 
  fad4 sol4 do4 sol8 [ la8 ]
  si8 [ do8 ] re4 do4 si4 ~
  si8 [ si8 ] la4 si4 re4 
  do4 la4 si2\rest 
  fa'4\rest re4 mi4. mi8 
  re4 la4 do4 si4 ~
  si4 la4 si8 [ do!8 re8 si8 ]
  mi8 [ re8 do8 si8 ] la4 sol4 ~
  sol8 [ sol8 ] fa4 sol4 la4 ~
  la4 sol4 la2 
  si2\rest si4\rest sol4 
  fa4 re4 mi4 fa4 ~
  fa4 mi4. mi8 re4 
  re'2\rest re2 
  do4 la4 si4 do4 ~
  do4 si4 la2 
  si2\rest re4\rest sol,4 
  fa4 re4 mi4 fa4 ~
  fa4 mi4 re4 sol8 [ fa8 ]
  mi2 re2 
  si'2\rest la8 [ sol8 ] fa4 
  mi4 do'4 si2 
  do4 re4 do4 si4 
  si8\rest sol8 [ si8 do8 ] re8 [ do16 si16 ] la16 [ si16 do16 re16 ]
  mi16 [ re16 do16 si16 ] do4 si2 
  la8 [ si8 ] do4 si4 la4 
  si2 la4 do4 
  re2\rest si8\rest sol8 [ si8 do8 ]
  re8 [ do16 si16 ] la16 [ si16 do16 re16 ] mi16 [ re16 do16 si16 ] do4
  si4 la4 sold4 la4 
  si2 mi,2 ~
  mi2 la2 ~
  la2 sold4 fad4
  sold1^\fermata
}

alto = \relative do' {
 %  \override MultiMeasureRest #'staff-position = #-6 R1 
  %\override MultiMeasureRest #'staff-position = #2 R1 
  \change Staff=basse \stemUp si2. la4 
  sol4. la8 si8 [ do8 re8 si8 ]
  do8 [ la8 do8 si8 ] la8 [ sol8 ] fa4 ~
  fa8 [ sol8 la8 fa8 ] do'2 
  la4 re2 do4 
  si4 sol4 do4 si4
  \change Staff=dessus \stemDown do4 sol4. la8 si8 [ do8 ]
  la4. si8 do8 [ si8 la8 sol8 ]
  la8\rest la8 [ re8 do8 ] la8 [ si8 do8 re8 ]
  mi4 fa4. mi8 do4 
  mi8\rest re8 [ sol8 fa8 ] re8 [ mi8 re8 do8 ]
  si8\rest si8 mi4. re8 do4 
  sol4\rest si4. do8 re8 [ do8 ]
  si4. do8 re2 
  sol,4 do4. re8 mi4 ~
  mi4 re8 [ mi8 ] fa8 [ sol8 ] fad4 
  sol2. fa4 
  mi2 r2 
  si4\rest mi2 mi4 
  do4. re8 mi8 [ fa8 sol8 mi8 ]
  fa4 mi4. re8 [ do8 re8 ]
  si8 [ do8 ] re4 do2 
  si4 mi4 re2 
  mi4 la8 [ si8 ] do8 [ si16 la16 ] sol4 
  fa4 mi4 re4 sol4 ~
  sol8 [ fa16 mi16 ] fad4 sol8 [ fa8 mi8 sol8 ]
  fa8 [ mi8 do8 re8 ] mi8 [ fa8 ] sol16 [ fa16 mi16 re16 ]
  do4 si8 [ la8 ] si4 do4 
  la2 la2\rest 
  re2 mi4. mi8 
  re4 si4 sol'2 ~ 
  sol4 fad4 sol4. fa8
  mi2 r4 sol4 
  la4. la8 sol4 mi4 
  fa2 mi4. re8 
  dod4 re2 sol4 ~
  sol4 la8 [ sol8 ] fa8 [ mi8 ] re4 
  do4 re4 mi4 re8 [ do8 ]
  re4 mi4 do4\rest re4 
  do4 la4 si4 do4 ~
  do4 si4 do2 
  \once \override MultiMeasureRest #'staff-position = #-7 R1 
  r4 sol'4 fa4 re4 
  mi4 fa2 mi4 
  re4 re4. mi8 fa?4 
  mi4 r4 re4 do4 
  la4 si4 do2 
  si4 do2 si4 
  do2 sol2\rest 
  r4 la8 [ si8 ] do2 
  la8\rest do8 [ mi8 fa8 ] sol8 [ fa16 mi16 ] re16 [ mi16 fa16 sol16 ]
  la16 [ sol16 fa16 mi16 ] fa4 mi16 [ fa16 sol16 fa16 ] sol16 [ fa16 mi16 re16 ]
  mi4 re8 [ do8 ] si4 re4 
  do8 [ re8 ] mi4 re4. mi8 
  fa2 sol4 mi4 
  sol2 fa4 la4 
  sol4 fa8 [ mi8 ] re4 sol4 
  fa2 sol4 mi4 ~
  mi16 [ re16 do16 si16 ] do8 [ re8 ] mi2 ~
  mi4 re4 do4 si4 
  do4 la2 do4 ~
  do4 do4 si4 la4 
  si1 
}

tenor = \relative do' {
  \override MultiMeasureRest #'staff-position = #0 R1 R1 R1 
  \once \override MultiMeasureRest #'staff-position = #0.1 R1 R1 
  \stemDown mi,2. re4
  \stemUp do4. re8 mi8 [ fa8 sol8 mi8 ]
  fa2 mi2 
  re4. mi8 fa8 [ sol8 la8 si8 ]
  la1 
  sol4. la8 si8 [ do8 ] la4 
  mi4. fa8 sol4 la8 [ mi8 ]
  sol4 fad8 [ sol8 ] re8 [ mi8 ] fad4 
  sol4 re4 fa2\rest
  \once \override MultiMeasureRest #'staff-position = #7 R1
  si2. la4 
  sol4. la8 si8 [ do8 re8 si8 ]
  do4 do4. la8 re4 ~
  re4 do4 si8 [ la8 ] si4 
  la2. mi4 
  la4. sol8 fa4 mi4 ~
  mi4 re4 mi2 
  la2\rest mi'4\rest si4 ~
  si4 la4 sol8 [ la8 si8 do8 ]
  re8 [ la8 ] do4 si8 [ sol8 ] si4 
  la2 do4\rest sol4 
  la4. la8 sol4 re4 
  mi4 fa2 mi4 ~
  mi4 re4 mi4 do'4 ~
  do4 si4 la8 [ si8 ] do4 
  sol4. fa8 mi4 mi'4 
  re2. si4 
  do2 re8 [ si8 ] do4 ~
  do4 si8 [ la8 ] do4. si8 
  la2. mi4 ~
  mi4 fad4 sol8 [ la8 si8 sol8 ]
  do4 la4 re8 [ do8 ] si4 
  la2 la2\rest 
  la4\rest sol4 fa4 re4
  mi4 fa2 mi4 
  re4 sol2 la4 
  si4 do4 la4. si8 
  do8 [ sol8 ] do2  si8 [ la8 ]
  sol4 fa4 sol4 la4 
  fad4 sol4 r2 
  sol4 fa4 re4 mi4 
  fa4 sol4 fa4\rest do4 
  re4 mi8 [ fa8 ] sol2 
  fa8\rest do8 [ mi8 fa8 ] sol8 [ fa16 mi16 ] re16 [ mi16 fa16 sol16 ]
  la16 [ sol16 fa16 mi16 ] fa4 mi4 la4 
  sol4 la4 re,4 sol4 
  fa4 re16 [ mi16 fa16 sol16 ] la4 si4 
  do4 si8 [ la8 ] sol4 fa4 
  mi4. fa8 sol2 
  \once \override MultiMeasureRest #'staff-position = #7 R1 
  r8 sol8 [ si8 do8 ] re8 [ do16 si16 ] la16 [ si16 do16 re16 ]
  mi16 [ re16 do16 si16 ] do4 si4 sol4
  la2 sol4 la4 
  sold4 la4 si4 la4 
  sol!2 la4 sol8 [ fa8 ]
  mi1 ~
  mi1 ~
  mi1^\fermata

  
% \override Script #'padding = #1 si1^\fermata
}

basse = \relative do {
  %\once \override MultiMeasureRest  #'staff-position = #-2 R1 
  R1 R1 R1 R1 R1 R1
  R1 R1 R1 R1 R1 R1
  si2. la4 
  sol4. la8 si8 [ do8 re8 si8 ]
  do4. re8 mi4. fad8 
  sol2 re2 
  mi4 do4 sol'2 
  la4 sol4 fa4. re8 
  mi1 
  r4 la,4 do2 
  re4 do8 [ si8 ] la2 
  sol4. fa8 mi4 la4 
  mi'4 re8 [ do8 ] sol'2 
  mi1 
  \once \override MultiMeasureRest #'staff-position = #-2 R1 
  re2 mi4. mi8 
  re4 la4 do4 si4 
  la2 sol2 
  fa2 r2 
  \override MultiMeasureRest #'staff-position = #-2 R1 
  R1 
  re'2\rest sol2 
  la4. la8 sol4 mi4 
  fa2 mi4 la4 
  re,2 la4 sold4 
  la2 sol2\rest 
  R1 
  r4 re'4 do4 la4 
  si4 do8 [ si8 ] la2 ~
  la2 sol2 
  r2 do2 
  sol'4 la4 fa2 
  mi2 re4 sol4 
  do,2 r2 
  sol2\rest si4\rest re4 
  do4 la4 si4 do4 ~
  do4 si4 la2 
  sol1 
  la2 si2 
  do4 re4 la4. si8 
  do4 la4 sol2 
  \override MultiMeasureRest #'staff-position = #-4 R1 
  R1 
  r2 r8 sol8 [ si8 do8 ]
  re8 [ do16 si16 ] la16 [ si16 do16 re16 ] mi16 [ re16 do16 si16 ] do16 [ re16 do16 la16 ]
  mi'2 fa2 
  sol2. mi4 
  re4 fa4 do4. re8 
  mi2 mi16 [ re16 do16 si16 ] do8 [ la8 ]
  mi'1 
  la,1 
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


