\version "2.16.2"

\header {
  title = "Trois Nouvelles Etudes, No. 1 F Minor"
  mutopiatitle = "Trois Nouvelles Etudes, No. 1 F Minor"
  subtitle = "Etudes de Perfection de la Méthode des Méthodes de Moscheles et Fétis"
  source = "IMSLP00329, pages #128-129 - Bote & Bock, 1880"
  composer = "Frédéric Chopin (1810-1849)"
  mutopiacomposer = "ChopinFF"
  mutopiaopus = "B.130"
  mutopiainstrument = "Piano"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Romain Behar"
  maintainerEmail = "at gmail dot com (add first and last name at beginning)"

 footer = "Mutopia-2013/12/14-1895"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global = {
  \key f \minor
  \time 2/2
}

right = \relative c'' {
  \global
  \tupletUp
  \tempo "Andantino."
  \phrasingSlurDown \slurDown
  \times 2/3 { r4\(( b,_1\p c } \times 2/3 { des bes_2 f'_5 }		| % 1
  \noBreak
  \times 2/3 { e) b_1( c } \times 2/3 { des bes_2 f' }			| % 2
  \noBreak
  \dynamicUp
  \times 2/3 { e) b\<( c } \times 2/3 { des) c_1( d }			| % 3
  \noBreak
  \times 2/3 { f_4\!) e_1( f } \times 2/3 { aes_4\> g_2 aes }		| % 4
  \dynamicNeutral
  \noBreak
  \dynamicDown
  f_1\p)\)\! r_\markup { \italic { sempre legato } } r2			| % 5
  \dynamicNeutral
  \break
  r1									| % 6
  r1									| % 7
  r1									| % 8
  \phrasingSlurUp \slurUp
  \times 2/3 { r4 c_1( aes'_3 } \times 2/3 { g f b_3 }			| % 9
  \times 2/3 { c\< des b } \times 2/3 { c_5 c, bes'_5\! }		| % 10
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \times 2/3 {
  a aes g f f'^5 b,^2							| % 11
  c\> ees des c f,_1 g\!						| % 12
  aes)_\markup { \italic { sempre legatissimo } }
  e_1( f a \crescTextCresc b^4\< c^1					| % 13
  des d f ees aes,_1 bes						| % 14
  c) g_1( aes b c^1 ees^2						| % 15
  e f^4 fis^3 g^5 d^2 f^4						| % 16
  e) b( c des bes f'							| % 17
  e) b( c des bes f'							| % 18
  e\!) \dimTextDim b\>\(( c des) c( d					| % 19
  f) e f aes g aes							| % 20
  }
  f\!\p\) r r2								| % 21
  \times 2/3 {
  ees4^2( f^4 ees^3 f ees f						| % 22
  des^2 ees^4 des^3 ees des ees						| % 23
  \crescHairpin
  c^2 des^4\< c^3 des c des						| % 24
  b^1)\! fis_2( g_1 aes_3 f_2 c'^5					| % 25

  \pageBreak

  b) fis_2(\> g_1 aes_3 f_2 c'						| % 26
  b) \dimTextDecresc fis( g_1 aes_3 g_2 a				| % 27
  c^5 b^1 c ees d ees							| % 28
  }
  c\!\p) r4 r2								| % 29
  \times 2/3 {
  bes4^2( c^4 bes^3 c bes c						| % 30
  aes^2 \crescTextCresc bes^4\< aes^3 bes aes bes			| % 31
  ges_2 aes_4 ges_2 aes_3 ges aes					| % 32
  f\!) f'^5(_\markup { \italic { dolce } } ees des aes_1 bes		| % 33
  \crescHairpin
  ces^1\< bes'^5 aes ges ees^2 ges^4\!					| % 34
  aes, ges'^5 f ees_\markup { \italic { dim. } } ces^2 ees^4		| % 35
  \dimHairpin
  f, ees'^5 des\> ces aes ces^5\!					| % 36
  bes,) \crescTextCresc f'_5(\< e ees d f				| % 37
  bes, ces'_5 bes_3 a aes f'_5						| % 38
  ees_3 d_1 ces'_5 bes_4 a aes						| % 39
  f^1 des^3 ces bes^1 des,_3 ces\!					| % 40
  bes\f) d_2(_\markup { \italic { agitato } } ees f_1 ges a		| % 41
  bes^4 ces a bes des,_1 ces_2						| % 42
  bes_1 d f ees_1 ees' a,_2						| % 43
  bes des ces b ees,_1 f						| % 44
  ges)_\markup { \italic { più } } d_1(\< ees ges bes^5 b^1		| % 45
  c^2 des b c^5 ees,_2 des_1						| % 46
  c_2 e_3 ges_4 f_1 f'^5 b,^2						| % 47
  c ees^5 des c g bes							| % 48
  a\!) e_1\rfz( f ges ees_2 bes'_5					| % 49
  a) e_1( f ges ees_2 c'_5						| % 50
  \crescHairpin
  b)_\markup { \italic { più } } fis_2\f( g_1\< aes_3 f_2 c'^5		| % 51
  b) fis_2( g_1 aes_2 f_1 aes'^5\!					| % 52
  \dimHairpin
  g\> f e f^4 ees des							| % 53
  ees des c bes^4  aes ges\!						| % 54
  \dimTextDim f_1\> e_2 b'^4 des^5 c^4 d				| % 55
  f e f aes g^2 aes\!							| % 56
  }
  f1^1\p)								| % 57
  \times 2/3 {
  ees4^2\pp( f^4 ees^3 f ees f						| % 58
  des^2 ees^4\< des^3 ees des ees\!					| % 59
  ces^2\< des^4 ces^3 des ces des\!					| % 60
  \dimHairpin
  bes^2\> c^4 bes^3 c bes c\!						| % 61
  \dimTextDim bes\> c^5 bes c bes^4 f_2					| % 62
  g aes g aes_5 g_4 bes,_1						| % 63
  }
  des2_3 <e c g>)							| % 64
  <f c aes> r\!								| % 65
  \clef bass
  <aes, f>2\pp( <aes f>							| % 66
  <aes f>1\fermata)							| % 67
}

left = {
  \global
  \stemDown
  r1									| % 1
  r1									| % 2
  r1									| % 3
  r1									| % 4
  f,8\sustainOn c f^1 aes^3 c'^2 aes f^1 c				| % 5
  f,8 c f aes c' aes f c						| % 6
  f,8 c f aes c' aes f c						| % 7
  f,8 c f aes c' aes f c						| % 8
  f,8 c f aes c' aes f c\sustainOff					| % 9
  e,8\sustainOn c g^1 bes^3 c' bes g^1 c\sustainOff			| % 10
  f,8\sustainOn c f aes c' aes f c\sustainOff				| % 11
  e,8\sustainOn c g bes c' bes g c\sustainOff				| % 12
  f,8\sustainOn c f aes c' aes f^1 c^3\sustainOff			| % 13
  g,\sustainOn ees^2 bes^1 des'^3 ees' des' bes^1 ees\sustainOff	| % 14
  aes,\sustainOn ees aes^1 c'^3 ees' c'^1 aes ees^4\sustainOff		| % 15
  b,\sustainOn f^3 g d' f' d'^1 aes^2 g\sustainOff			| % 16
  c\sustainOn g^3 bes c'^1 e'^2 c'^1 bes g\sustainOff			| % 17
  c\sustainOn g bes c' e' c' bes g\sustainOff				| % 18
  c\sustainOn g bes c' e' c' bes g\sustainOff				| % 19
  c\sustainOn g bes c' e' c' bes g\sustainOff				| % 20
  f,\sustainOn c f^1 aes^3 f' c' aes f^1\sustainOff			| % 21
  f,\sustainOn c f aes^3 ees' c' aes f\sustainOff			| % 22
  f,\sustainOn des f aes^3 des'^2 aes f^1 des\sustainOff		| % 23
  f,\sustainOn des f^1 aes^3 c'^2 aes f^1 des\sustainOff		| % 24
  g,\sustainOn d f^1 g^3 b^2 g f^1 d\sustainOff				| % 25
  g,\sustainOn d f^1 g^3 b g f^1 d\sustainOff				| % 26
  g,\sustainOn d f g b g f d\sustainOff					| % 27
  g,\sustainOn d f g b g f d\sustainOff					| % 28
  c,\sustainOn g, c ees^3 c'^1 g ees c^1\sustainOff			| % 29
  c,\sustainOn g, c ees^3 g ees c^1 g,\sustainOff			| % 30
  c,\sustainOn aes, c ees^3 aes^2 ees c^1 aes,\sustainOff		| % 31
  c,\sustainOn aes, c ees aes ees c aes,\sustainOff			| % 32
  des,\sustainOn aes,^2 des^1 f^3 aes f^1 des aes,\sustainOff		| % 33
  des,\sustainOn aes, des^2 f^1 aes f^1 des aes,\sustainOff		| % 34
  des,\sustainOn aes, des f aes f des aes,\sustainOff			| % 35
  des,\sustainOn aes, des f aes f des aes,\sustainOff			| % 36
  d,\sustainOn aes, bes, f aes f bes, aes,\sustainOff			| % 37
  d,\sustainOn bes, f^1 aes^3 bes aes f^1 bes,^2\sustainOff		| % 38
  bes,,^5\sustainOn bes,^2 f^1 aes^3 bes aes f^1 bes,\sustainOff	| % 39
  d,\sustainOn bes, f aes bes aes f^1 bes,\sustainOff			| % 40
  ees,\sustainOn bes, ees^1 ges^3 bes ges ees^1 bes,\sustainOff		| % 41
  d,\sustainOn bes, f^1 aes^3 bes aes f bes,\sustainOff			| % 42
  ees,\sustainOn bes, ees^1 ges^3 bes ges ees bes,\sustainOff		| % 43
  d,\sustainOn bes, f aes bes aes f bes,\sustainOff			| % 44
  ees,\sustainOn bes, ees ges bes ges ees^1 bes,^3\sustainOff		| % 45
  e,\sustainOn c^2 g^1 bes^3 c' bes g c\sustainOff			| % 46
  f,\sustainOn c f aes c' aes f c\sustainOff				| % 47
  e,\sustainOn c g bes c' bes g c\sustainOff				| % 48
  f,\sustainOn c^3 ees a^1 c'^2 a^1 ees c\sustainOff			| % 49
  f,\sustainOn c ees a c' a ees c\sustainOff				| % 50
  f,\sustainOn d^2 g^1 b d' b g^1 d\sustainOff				| % 51
  f,\sustainOn d f^1 g^3 b g f d\sustainOff				| % 52
  f,\sustainOn des f^1 bes^3 des' bes f^1 des\sustainOff		| % 53
  f,\sustainOn des f bes des' bes f des\sustainOff			| % 54
  f,\sustainOn c^3 g^1 bes^3 c' bes g^1 c^2\sustainOff			| % 55
  f,\sustainOn c g bes c' bes g c\sustainOff				| % 56
  f,\sustainOn c f aes
    << { c' aes f c\sustainOff }
    \new Staff \with {
      \override StaffSymbol #'staff-space = #(magstep -3)
      \override StaffSymbol #'thickness = #(magstep -3)
      fontSize = #-3
      \remove "Clef_engraver"
      \remove "Key_engraver"
      \remove "Time_signature_engraver"
      }
      { \clef bass \key as \major f' c' a f \stopStaff } >>		| % 57
  f,\sustainOn c f aes 
    << { c' aes f c\sustainOff }
    \new Staff \with {
      \override StaffSymbol #'staff-space = #(magstep -3)
      \override StaffSymbol #'thickness = #(magstep -3)
      fontSize = #-3
      \remove "Clef_engraver"
      \remove "Key_engraver"
      \remove "Time_signature_engraver"
    }
    {
      \clef bass \key as \major e' c' a f \stopStaff
    } >>								| % 58
  f,\sustainOn des f^1 aes^3 des' aes f des\sustainOff			| % 59
  f,\sustainOn des f aes des' aes f des\sustainOff			| % 60
  ges,\sustainOn des ges^1 bes^3 des'^2 bes ges^1 des\sustainOff	| % 61
  g,\sustainOn c^3 e bes r2						| % 62
  r1\sustainOff								| % 63
  \stemNeutral
  r2 <c c,>								| % 64
  <f, f,,> r2								| % 65
  <c f,>2( <c f,>							| % 66
  <c f,>1\fermata)
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}
