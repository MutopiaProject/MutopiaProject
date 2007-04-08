% -*- mode: LilyPond ; coding: utf-8 -*-

\version "2.8.0"
\include "italiano.ly" 
%% Version 1.

\header{
  title = \markup {\center-align { "Christ lag in Todesbanden." \normalsize "Christ gisait dans les liens de la mort." " "} }
  subtitle = ""
  piece = "" 
  instrument = ""
  composer = "Johann Sebastian Bach (1685-1750)"
  copyright = "Creative Commons Attribution-ShareAlike 2.5"
  source = "Bach-Gesellschaft Edition, OrgelWerke 1893"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  mutopiatitle = "Christ lag in Todesbanden"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  style="Baroque"
  maintainerEmail = ""
  lastupdated = "2006-04-01"
  opus="BWV 625"
  footer = "Mutopia-2006/04/03-718"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


global = {
   \key la \minor
   \time 4/4
}

%#(set-default-paper-size "a4" 'landscape)
%#(set-global-staff-size 18)

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

staffup = {
   \change Staff = "dessus" \halsdown
}

staffdown = {
   \change Staff = "basse" \halsup
}

choral = \relative do'' {
  \global
  \halsup
  \partial 4 la4 
  \repeat volta 2 {
    sold4 la8 si8 do4 re4 
    do4 si4  \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.0) la4^\markup{\musicglyph #"scripts.ufermata"} la4 
    fa4 sol4 la4 sol8 fa8 
    }
  \alternative {
    { mi2 re4 la'4 }
    { mi2 re2 \bar "||"}
  }
  re8 mi8 fa4 sol4 re8 mi8 
  fa4 sol4 \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.0) la4^\markup{\musicglyph #"scripts.ufermata"} la4 
  re16 mi16 dod16 re16 \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.0) dod4^\markup{\musicglyph #"scripts.prall"} re4 mi16 fa16 re16 mi16 
  do!4 si4 \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.0) la4^\markup{\musicglyph #"scripts.ufermata"} la4 
  %  10 : 
  do4 la8 sib8 do4 sol4
  fa4 mi4 re2 
  la'4 sol4 fa4 mi4 
  \partial 2. \once\override Voice.TextScript #'extra-offset = #'(1.0 . 0.0) re2.^\markup{\musicglyph #"scripts.ufermata"}
}

alto = \relative do' {
  \halsdown
  \partial 4 fa4 
  \repeat volta 2 {
    mi4 mi16 fad16 sold!8 la16 si16 sol16 la16 fa8 mi8 ~
    mi16 fa16 mi16 fa16 re16 mi16 re16 mi16 dod16 re16 mi16 fa16 re16 mi16 re16 dod16 
    re8 [ la8 ] re8 do!8 ~ do8 dod8 re16 mi16 do16 re16 
  }
 \alternative {
   { sib8 sol8 la16 sib16 sol16 la16 fa4 fa'4 }
   { sib,8 sol8 la16 sib16 sol16 la16 fa16 la16 sol16 sib!16 la4 }
  }
  la16 si!16 dod8 re4 ~ re16 mi16 do16 re16 sib16 re8 dod16 
  re8 la8 re8 do!8 ~ do16 \staffdown re16 sib!16 do16 la16 sib!16 sol16 la16 
  fa8 \staffup la'8 la4 la4 sol8 fa8 
  mi8 [ la8 ] ~ la8 sold8 la16 sib16 sol16 la16 fa16 sol16 fa16 sol16 
  mi4 fa8 sol8 ~ sol8 [ fa8 ] ~ fa8 mi8 ~
  mi16 mi16 re8 ~ re16 re16 dod8 sol16\rest la'16 sol16 la16 fa16 sol16 mi16 fa16 
  re4 ~ re8 sol,16\rest sol16 do8 fa,16\rest fa16 sib8 la16 sol16 
  \partial 2. fad8 sib!8 la16 sib16 sol16 sib16 \once \override Script #'padding = #-0.3 la4_\fermata
}

tenor = \relative do' {
  \global
  \clef "bass"
  \partial 4 re16 mi16 do16 re16 
  \repeat volta 2 {
    si4 do8 re8 mi8 mi8 re16 do16 si16 do16 
    la8 la4 sold8 la16 sib16 sol16 la16 fa16 sol16 mi16 fa16 
    re8 fa8 ~ fa16 sol16 mi16 sol16 fa16 sol16 mi16 fa16 re4 }
  \alternative {
    { mi16 fa16 re16 mi16 dod16 re16 si!16 dod16 re4 re'16 mi16 do!16 re16 }
    { mi,16 fa16 re16 mi16 dod16 re16 si!16 dod16 re8 mi8 fa4 }
  }
  fa16 sol16 mi16 fa16 re8 la'8 sol4 ~ sol16 fa16 mi16 fa16 re8 fa8 ~ fa16 sol16 mi16 sol16 fa4 fa8 mi8 
  re8 fa'8 mi4 re16 mi16 do!16 re16 si!4 ~ 
  % 10 :
  si16 do16 la8 mi'16 fa16 re16 mi16 dod8 la8 re16 mi16 re16 mi16 do!4 ~ do16 re16 sib16 do16 la16 sib16 la16 sib16 do4 ~
  do8 r16 fa,16 sib8 r16 mi,16 fa8 sib!16 do16 la16 sib16 sol16 la16 
  fa4 ~ fa16 fa16 mi8 ~ mi16 mi16 re8 ~ re16 re16 dod8 
  re16 la'16 sol16 la16 fad16 sol16 mi16 sol16 fad4^\fermata
}


pedale = \relative do {
  \global	   
  \clef "bass"
  \partial 4 r8 re8
  \repeat volta 2 {
    mi16 fa16 re16 mi16 do16 re16 si16 do16 la8 la'4 sold8 
    la8 do,8 re8 mi8 la,4 r8 la8 
    re16 mi16 do16 re16 sib8 do8 fa,8 la8 sib16 do16 la16 sib16 
  }
  \alternative {
    { sol8 mi8 la4 re,4 r8 re'8 }
    { sol,8 mi8 la4 re,2 }
  }
  re'4 ~ re16 mi16 do!16 re16 sib!16 do16 la16 sib16 sol4 
  re'16 mi16 do16 re16 sib8 do8 fa,4 r4 
  r8 re'8 la'16 sib16 sol16 la16 fa8 fad8 sol8 sold8 
  la8 do,16 re16 mi8 mi,8 la4 r8 re8 
  la'16 sib16 sol16 la16 fa4 ~ fa8 fa,8 do'16 re16 sib16 do16 
  la8 sib8 sol8 la8 re,4 re'4 ~
  re16 mi16 do16 re16 sib8 do8 la8 [ sib8 sol8 la8 ] 
  \once \override Script #'padding = # 1 re,2._\fermata 
}

\paper {
  betweensystempadding = 1\mm
  betweensystemspace = 1\mm
  %raggedbottom = ##f
  %raggedlastbottom = ##f
  %headsep = 1\mm
  %aftertitlespace = 1\mm
  indent = 1\cm
  bottommargin = 4\mm 
  topmargin = 2\mm
}

\score {
  <<
    \new PianoStaff {
      \set PianoStaff.instrument = \markup { "" }
      <<
	\context Staff = dessus <<
	  \new Voice \choral
	  \new Voice \alto
	>>
	\context Staff = basse {
	  \new Voice \tenor
	}
      >>
    }
    \context Staff = pedal {
      \set Staff.instrument = \markup { \large ""}
      \context Voice \pedale
    }
  >>
  \layout{}
}

\score {
  <<
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \choral
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \alto
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \tenor
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \pedale
    }
  >>
  \midi{ \tempo 4 = 30 }
}

