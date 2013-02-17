\version "2.16.1"
\header {
  mutopiatitle = "Serenade op.127 nr.1: Maestoso"
  mutopiacomposer = "GiulianiM"
  mutopiaopus = "O 127"
  mutopiainstrument = "Guitar"
  date = "1820s"
  source = "Tecla facsimile of 1827 Ricordi edition"
  style = "Classical"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  lastupdated = "2002/Jul/31"

  filename	= "giuliani_op127_1_guitar.ly"
  title 	= "Serenade"
  opus		= "Opus 127"
  instrument	= "Guitarre"
  meter		= "Maestoso"
  subtitle = 	"1. Maestoso"
  mutopiasource =	"Tecla facsimile of 1827 Ricordi (Milano) edition"
  composer =	"Mauro Giuliani"
  enteredby	= "Mark Van den Borre"
%  copyright	= "Copyleft 2002 Mark Van den Borre - mark@markvdb.be"
%  tagline =	"Mark Van den Borre - mark@markvdb.be - http://www.markvdb.be"
 footer = "Mutopia-2013/02/17-255"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

global =  {
  \time 4/4
  \key g \major
}

staffBVoiceB =
\relative c'' {
				%1
  <b g>8 d,<b' g> d,<b' g> d,<b' g> d,|
  <c' a> d,<c' a> d,<c' a> d,<c' a> d,|
  <b' g> d,<b' g> d,<b' g> d,<b' g> d,|
  <c' a> d,<c' a> d,<c' a> d,<c' a> d,|
  <b' g> d,<b' g> d,<b' g> d,<b' g> d,|
				%6
  r a' d fis r a, cis g'|
  r a, d fis r g, b e|
  r a, d fis r a, cis g'|
  d,16 d' fis d a d fis d a, cis' g' cis, g cis g' cis,|
  d,16 d' fis d a d fis d a, cis' g' cis, a cis g' cis,|
				%11
  d,16 d' fis d a d fis d a, cis' g' cis, a cis g' cis,|
  d,16 d' fis d a d fis d a, cis' g' cis, a cis gis' cis, |
  s4 <fis d a> <fis d a> r|
  r8 a, c e r gis, d' e|
  r a, c e r d, a' d|
				%16
  r d, g b r e, a c|
  r g b g' <fis d a>4 r|
  r8 d, <b' g> d, r dis <b' a> dis,|
  r8 e <b' g> e, r e a c|
  r g <g' b,> g, r a <fis' d> a,|
				%21
  r g <g' b,> g, <g' b,> g, <g' b,> g,|
  r g <g' b,> g, r a <fis' b,> a,|
  r g <e' b> g, r g c e|
  b, <d' g,> c, <c' a> d, <b' g> d, <a' fis>|
  g, <g'' b, g><g b, g><g b, g> b,, <fis'' b, a> dis, <fis' b, a>|
				%26
  e,, <e'' b g> e,,<e'' b g>e,, <e'' b g> e,,<e'' b g>|
  e,, <fis'' c a> e,,<e'' b g>e,, <e'' b g> e,,<e'' b g>|
  e,, <fis'' c a> e,,<e'' b g>e,, <e'' b g> e,,<e'' b g>|
  fis,,<d''b> fis,,<d'' b> fis,,<fis'' cis ais> fis,,<fis'' cis ais>|
  b,,<d' b> b,<d' b> b,<d' b> b,<d' b>|
				%31
  fis,,<e''cis> b,<d'b> fis,,cis'' b,<d' b>|
  fis,,<e''cis> b,<d'b> fis,,<e''cis> b,<d'b>|
  cis,<cis' a fis> cis,<cis' a fis> cis,<cis' b eis,> cis,<cis' b eis,>
  fis,, <cis'' a fis> fis,, <cis'' a fis> fis,,<cis'' a fis> fis,,<cis'' a fis>|
  g,<cis' a> g,<cis' a> g,<cis' a> g,<cis' a>|
				%36
  fis,,<d''a>fis,,<d''a>fis,,<d''a>fis,,<d''a>|
  e,,<g''cis,a>e,,<g''cis,a> a,,<e'' cis a>a,,<e'' cis a> |
  d,16 a' d fis d, a' d fis d, a' d fis d, a' d fis |
  d, bes' d g d, bes' d g d, bes' d g d, bes' d g|
  d,16 a' d fis d, a' d fis d, a' d fis d, a' d fis |
				%41
  d, bes' d g d, bes' d g d, bes' d g d, bes' d g|
  d, d' fis d d, d' fis d d, c' e c d, c' e c|
  d, b' d b d, b' d b d, a' c a d, a' c a|
  r8 g b g' r a, c e|
  r g, b g' r fis, a d|
				%46
  <b g>8 d,<b' g> d,<b' g> d,<b' g> d,|
  <c' a> d,<c' a> d,<c' a> d,<c' a> d,|
  <b' g> d,<b' g> d,<b' g> d,<b' g> d,|
  <c' a> d,<c' a> d,<c' a> d,<c' a> d,|
  g,16 g' g' g, b, g' g' g, d g g' g, b, g' g' g,|
				%51
  g, g' g' g, c, g' g' g, e g g' g, c, g' g' g,|
  g, g' g' g, b, g' g' g, d g g' g, b, g' g' g,|
  g, g' g' g, c, g' g' g, e g g' g, c, g' g' g,|
  d'4 r r2|
  c4 r r2|
				%56
  r4 <b g> r <c a>|
  r8 a c g' r a, d fis|
  r g, b g' r <e d b> <e d b> <e d b>
  r <e c a><e c a><e c a> r <c a><c a><c a>|
  r <b g><b g><b g> r <c a><c a><c a>|
				%61
  r <g' b, g><g b, g><g b, g> r <fis d a><fis d a><fis d a>
  g,,16 b' g' b, b, b' g' b, d, b' g' b, b, b' g' b,|
  g, d'' f d b, d' f d d, d' f d b, d' f d|
  g,, c' e c c, c' e c e, c' e c c, c' e c|
  g, c' es c g, c' es c g, c' es c g, c' es c|
				%66
  g,16 b' g' b, b, b' g' b, d, b' g' b, b, b' g' b,|
  g, d'' f d b, d' f d d, d' f d b, d' f d|
  g,, c' e c c, c' e c e, c' e c c, c' e c|
  g, c' es c g, c' es c g, c' es c g, c' es c|
  g, b' d b d, g b g g, b' d b d, g b g|
				%71
  fis, a' c a d, a' d a fis, a' c a d, a' d a|
  g, g' b g d g d' g, g, g' b g d g d' g,
  fis, a' c a d, a' d a fis, a' c a d, a' d a|
  g, g' b g d g b g b, g' b g d g b g|
  g, g' b g d g b g b, g' b g d g b g|
				%76
  <b g>4 r <g' b, g> r|
  <g b, g>2 r \bar "||"
}

staffBVoiceC = 
\relative c' {
				%1
  g4\mf r g r|
  fis r fis r|
  g r g r|
  fis r fis r|
  g r g r|
				%6
  fis r e r|
  d' r g, r|
  a r a r|
  d\f a' a, g'|
  d a' a, a'
				%11
  d, a' a, a'|
  d, a' a, a'|
  d, d d r |
  e\mf r e, r |
  a r fis r |
				%16
  g r c r|
  d r d r |
  g, r fis r |
  e r c' r |
  d r d r |
				%21
  g, r r2|
  g4 r dis' r |
  e r c r |
  b c d d |
  g, r b\f dis|
				%26
  e, e\p e e|
  e\sf e e e |
  e\sf e e e |
  fis fis fis fis |
  b b b b |
				%31
  fis\sf b fis b |
  fis\sf b fis b |
  cis cis cis cis |
  fis, fis fis fis |
  g g g g |
				%36
  fis fis fis fis|
  e e a a |
  d\p d d d |
  d d d d |
  d d d d |
				%41
  d d d d |
  d d d d |
  d d d d |
  g, r c r |
  d s d s |
				%46
  g,\mf r g r |
  fis r fis r |
  g r g r |
  fis r fis r |
  g\f b d b |
				%51
  g c e c |
  g b d b |
  g c e c |
  b8\mf c b a gis4 r |
  a8 b a g fis4 r |
				%56
  g r c r |
  d r d r |
  g, r e r |
  a r d r |
  g, r c r |
				%61
  d r d r |
  g, b d b |
  g b d b |
  g c e c |
  g\f g g g |
				%66
  g\mf b d b |
  g b d b |
  g c e c |
  g\f g g g |
  g\p d' g, d' |
				%71
  fis, d' fis, d' |
  g, d' g, d' |
  fis, d' fis, d' |
  g,\pp d' b d |
  g, d' b d |
				%76
  g, r g\f r |
  <d' b g>2
}

\score {
  \context Staff = "upper"  <<
    \global
    \time 4/4
    \key g \major
    \clef violin
    \context Voice = "one" {
      \voiceOne
      \staffBVoiceB
    }
    \context Voice = "two" {
      \voiceTwo
      \staffBVoiceC
    }
  >>

  \midi {
    \tempo 4 = 84
  }

  \layout {}
}
