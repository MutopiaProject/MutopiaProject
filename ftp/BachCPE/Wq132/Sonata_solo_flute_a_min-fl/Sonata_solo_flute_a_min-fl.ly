\header {
 title = "Sonata in a minor"
 subtitle = "for solo flute, Wq 132 (H 562)"
 subsubtitle = "Manuscript from Gieddes Samling (I,26 mu 6210.2926)"
 composer = "C. P. E. Bach (1714 - 1788)"
 instrument = "Flute"
 tagline = ""

 mutopiatitle = "Sonata in a minor for solo flute"
 mutopiacomposer = "BachCPE"
 mutopiaopus = "Wq 132"
 mutopiainstrument = "Flute"
 date = "18th C."
 source = "Manuscript from Gieddes Samling (I,26 mu 6210.2926)"
 style = "Classical"
 copyright = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer = "Giorgio Bonafede"
 maintainerEmail = "hoodooman@tin.it"
 lastupdated = "2006/Feb/14"
 
 footer = "Mutopia-2006/02/19-674"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

\version "2.6.5"

\paper {
 linewidth = 19\cm
 bottommargin = 1.1\cm
 interscoreline = 3\cm
 betweensystempadding = 2\mm
}

movA = \transpose c c'' {
 \key a \minor
 \time 3/8
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \override Script #'padding = #1
  a,8-. a\p\( b |
  \appoggiatura d'16 c'8 b a\) |
  f,-.\f a\(\p b |
  \appoggiatura { b16[ d'] } c'8 b a\) |
  d,\f << { b8( } { s16 \once \override Script #'padding = #2.5 s16\turn } >>  f'8) |
  a( gis16) e,( gis, b,) |
  d-. f( e d c b,) |
  c8\trill( b,) r |
  c( e g) |
  c( b,16) d,( f, b,) |
  d( f b d') g,( f) |
  c( e a g) e,( c) |
  f,( e d b,) g, f |  
  \times 2/3 { e([ d c]) } c8 r | \stemDown
  cis-. bes,( a, |
  g, f, e,16) bes | \stemNeutral
  a16 cis( d f e) g, |
  f, a,(\p cis d) r f\f |
  g, e( a,) d( cis) g |
  g( \once \override Script #'padding = #2.5 e\trill f) d,( f, a,) |
  d a( g f e d) |
  c8( b,16)\trill g,( b, d) |
  f d'( b f) g, f |
  \appoggiatura g16 f8\trill e e,16 c |
  bes( a) f, ees fis, d |
  c'( b) g, f gis, e |
  d'( c') a, e( g fis) |
  a( g) b,8. f16 |
  \times 2/3 { e([ d c]) } d8.\trill c16 |
  fis,8-. c\(\p d |
  \appoggiatura f16 ees8 d c\) |
  g,\f-. c\(\p d |
  \appoggiatura { d16[ f] } ees8 d c\)
  r aes,16-.\f fis( ees' d') |
  c'( b) d' g,\p( f) r32 d\f |
  \times 2/3 { e16[ d c] } d4\trill |
  c r16 g |
  g8\p( cis) e,16.\f bes32 |
  bes8(\p cis) e,16.\f e'32 |
  e'16[ cis( e) bes\( a \appoggiatura { g32[ f] } e16\)] |
  \appoggiatura e16 f8 d, r16 a |
  a8(\p dis) fis,16.\f c'32 |
  c'8(\p dis) fis,16.\f fis'32 |
  fis'16 dis( fis) c'( b a) |
  a( fis g) e( b, g,) |
  e,( g, b, c g) e, |
  d, fis( ais, b,) d, b |
  c( e e' c' \once \override Script #'padding = #0.5 b\prall ais) |
  \appoggiatura a16 b8 b,( a,\trill) |
  g,8-. e\(\p fis |
  \appoggiatura a16 g8 fis e\) |
  a,-.\f e\(\p fis |
  \appoggiatura { fis16[ a] } g8 fis e\) |
  ais,-.\f e\(\p fis |
  \appoggiatura a16 g8 fis e\) |
  r b,16( dis) dis( fis) |
  fis(\f a) dis, c'( b a) |
  e,( g) fis,( a) g,( b) |
  gis,( d) a,( cis) fis, a32( dis) |
  e16 g,( a,) fis b, dis |
  \appoggiatura dis16 e8 e, r16 e |
  e8( f16) d,( gis, b,) |
  f8( e16) c( e a) |
  e( d) gis, b32( d) a,16 c32( a) |
  \appoggiatura d16 c8\trill b, r16 e |
  e(\p f, dis\f) c( b,\trill a,) |
  gis,[( b, d f) e\( \appoggiatura { d32[ c] } b,16\)] |
  c c'( gis a) dis, c |
  b,32( e b, gis,) e,8\trill r |
  a,8-. a\(\p b |
  \appoggiatura d'16 c'8 b a\) |
  f,-.\f a\(\p b |
  \appoggiatura { b16[ d'] } c'8 b a\) |
  d,\f << { b8( } { s16 \once \override Script #'padding = #2.5 s16\turn } >>  f'8) |
  a8( gis16) e,( b, d) |
  \appoggiatura { c16[ e] } d8( c16) a,( e g) |
  g8( f16) d, a( c) |
  c( a, b,) g,( d f) |
  \appoggiatura { e16[ g] } f8( e16) c( g bes,) |
  a,( e f c') a,( f) |
  gis,( f b dis) g,( e) |
  fis, cis( d a) f,( d) |
  e, d( g b,) e,( c) |
  d,( a, bes,) f( d bes,) |
  a,([ gis,]) b8. r32 d |
  \times 2/3 { c16([ b, a,]) } b,8.\trill a,16 |
  f,8-. a,\(\p b, |
  \appoggiatura d16 c8 b, a,\) |
  e,-.\f a\(\pp b |
  \appoggiatura { b16[ d'] } c'8 b a\) |
  R1*3/8 |
  dis,16\ff f,( fis) gis,( a, dis,) |
  e,8\fermata b,4\trill |
  a, r8 \bar "|."
}

movB = \transpose c c'' {
 \key a \minor
 \time 2/4
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \override Script #'padding = #1
 \repeat volta 2 {
  \partial 8 a8 | \noPageBreak
  e[( c a,) c'] | \noPageBreak
  c' b e, b,16 gis, | \noPageBreak
  e,8 b,16( c) \appoggiatura e16 d8 c16( b,) | \noPageBreak
  c8 a e, b,16 gis, | \noPageBreak
  e,8 d16( e) \appoggiatura g16 f8 e16 d | \noPageBreak
  c( b, a,8) r e\trill | \noPageBreak
  f a16 f d8 c | \noPageBreak
  b, d' g, f | \noPageBreak
  e16( f g e) c8 b, | \noPageBreak
  a, c' f, e | \noPageBreak
  d16( e f) d b,( c d) b, | \noPageBreak
  gis,( a, b,) gis, e, d c b, | \noPageBreak
  c a, e c a e d c | \noPageBreak
  c8\trill b, r4 | \noPageBreak
  c e8.\prall d32 c |
  g8 c' r a |
  f[( d) b, f,] |
  e, c' r a16 f |
  d8 b, g, f |
  e16( d) c8 r4 |
  g16 e c g, e, g, c e |
  g e c e g e bes g |
  a c' f a c f a, c |
  f, a, c f a f c' f |
  a fis d a, fis, a, d fis |
  a fis d fis a fis c' a |
  b d' g b d g b, d |
  g, b, d g b g d' g |
  f8 d' g, f |
  e c' r16 g f e |
  f8 d' g,16 f e d |
  e( g) c'8 r g\trill |
  a f, g, b |
  a, c'16 a, b, d' g, f |
  e g c e a, f d b, |
  \appoggiatura b,8 c4\staccatissimo a,8 f16 a, |
  g,8 e16 g, f,8 d16 f, |
  e, g, c e g( e \once \override Script #'padding = #1.5 d\trill c) |
  a4\tenuto b,8.\trill a,32 b, |
  \partial 8*3 c4 r8 |
 }
 \repeat volta 2 {
  \partial 8 c'8 |
  g[( e c) c'] |
  c'\trill b g, b,16 d |
  f8 d16 b, g,8 d' |
  f( e) r a |
  e[( c a,) a] |
  e,16 b, a b, e, b, g b, |
  a, cis e g cis' g e' g |
  \appoggiatura a16 g8( f) r d |
  a,16 d( cis b,) cis a, e cis |
  a, e( d cis) d a, f d |
  a, f( e d) e a, g e |
  f d a g f e d c |
  b,( c b,) a, b, g, d b, |
  g, d( c b,) c8\staccatissimo r16 e |
  d e( d c) d g, f d |
  e c g f e d c b, |
  a, g( f e) f8 c' |
  g, b16 dis e8 g, |
  f,16 e( d cis) d8 a |
  e, g16 b, c8 e, |
  dis,16 c( b, a,) fis c( b, a,) |
  g, e, b, g, e b, g e |
  b e c' b a g fis e |
  \appoggiatura e8 dis4\trill r8 e |
  b,[( g, e,) g] |
  g\trill fis b, fis16 dis |
  b,8 dis16 fis a8 a |
  a\trill g cis g16 e |
  cis8 e16 g b8 b |
  a dis16 fis a8 c' |
  b8[ g, a, b,] |
  c4 c8 a16 c |
  b,8 g16 b, a,8 fis16 a, |
  g,8 b16 dis e8 g, |
  a,16 g( fis e) b, fis( e dis) |
  \appoggiatura dis16 e8 e, r e |
  d4( cis8) g, |
  bes4( a8) f,16 a, |
  d8 a e,16( g, cis) g |
  f d a, f, d,8 f |
  e4( dis8) a, |
  c'4( b8) g,16 b, |
  e8 b fis,16( a, dis) a |
  g e b, g, e,8 r16 e |
  gis e( dis e) gis e b gis |
  a e c a, e,8 r16 e |
  a e( dis e) a e c' a |
  b gis e b, e,8 r16 e |
  b e( dis e) b e d' b |
  c' e e' e gis e b e |
  a e c' e b e a e |
  gis e' b gis e e b, e |
  c e a, e gis, e fis, e |
  e,4\trill\fermata r8 a |
  e8[( c a,) c'] |
  c'\trill b e, b,16 gis, |
  e,8 b,16( c) \appoggiatura e16 d8 c16( b,) |
  c8 a e, b,16 gis, |
  e,8 d16( e) \appoggiatura g16 f8 e16( d) |
  c( b, a,8) r e'16 cis' |
  g8 g,16( a,) \appoggiatura c16 bes,8 a,16( g,) |
  f,8 d r d'16 b |
  f8 f,16( g,) \appoggiatura bes,16 a,8 g,16 f, |
  e,8 c r c'16 e |
  d8 c'( b) b16 d |
  c8 b( a) dis,16 fis, |
  a, c( b, a,) fis c( b, a,) |
  gis,( e) e,8 r a,16( c) |
  b,( d) c( e) d( f) e( d) |
  c( e a gis) a8 e16( c) |
  f d b, d gis, b, e, d |
  c a, e c a e c a, |
  d,4 f\tenuto |
  \appoggiatura a,8 gis,4\trill a,8 r16 a |
  g( f) e( d) c( b,) a,( gis,) |
  \appoggiatura gis,8 a,4 f8 d'16 f |
  e8 c'16 e d8 b16 d |
  c e a c' e' c'( \once \override Script #'padding = #1.5 b\trill a) |
  f'4\tenuto gis,8.\trill fis,32 gis, |
  \partial 8*3 a,4 r8 |
 }
}

movC = \transpose c c'' {
 \key a \minor
 \time 3/8
 \override Script #'padding = #1
 \repeat volta 2 {
  a,8 c e |
  a16( b c'8) a, |
  gis, b, e |
  b16( c' d'8) r |
  a, c'16( e f d') |
  c'8( b) g, |
  f, a16( cis d d') |
  a8( g) e, |
  d, f16( a, bes, f) |
  e8( gis, a,) |
  e,16( gis, b, d) c8 |
  c\trill b, r |
  cis16( a) g, g, g, g, |
  cis16( a) g, g, g, g, |
  f, a, d a, f d |
  a g f e d c |
  b,( g) f, f, f, f, |
  b,( g) f, f, f, f, |
  e, g, c g, e c |
  g f e d c bes, |
  a,8-. f(\p e) |
  r d16(\f b,) c8-. |
  b,-. g(\p f) |
  r e16(\f c) d8-. |
  c16( e a) b c' b |
  d'( c' b a g fis) |
  e( dis) e b a( g) |
  g8\trill fis r |
  e, g, b, |
  e16( fis g8) e, |
  dis, fis, b, |
  fis16( g a8) r |
  d,(\p gis, b,) |
  d( gis b) |
  e'( gis b) |
  c( a e') |
  r fis16\f d d' d |
  c( d) fis d a d |
  d'( a fis) d c d' |
  b,( d g) b d' b, |
  a,8-. c'(\p a |
  e f) r16 a,\f |
  g,8-. b(\p g |
  dis e) r16 g,\f |
  fis,( a, dis fis) a e, |
  dis, c' b a g fis |
  \times 2/3 { g16[ f e] } fis4\trill |
  e8 e,16 e fis, e |
  fis, e g, e gis, e |
  gis, e a, e ais, e |
  b, e b, g, fis, dis |
  \appoggiatura dis32 e8 e, r |
 }
 \repeat volta 2 {
  c8 e g |
  c'16( d' e'8) c |
  b, d g |
  b16( c' d'8) r |
  a, c\p e |
  a16( b c'8) a, |
  g, b, e |
  g16( a b8) r |
  f,16\f c a c c' c |
  f, c a c c' c |
  e, c g c c' c |
  e, c g c c' c |
  d, f a f d c |
  b, d' g f e d |
  e c g e c' e |
  e8\trill d r |
  g,8\p g16( d e8) |
  g c' e' |
  g, d'( b |
  g d b,) |
  g, d16( b, c8) |
  fis a c' |
  b( g d b, g, f,) |
  e,\f g16( b, c8) |
  r e, bes |
  f,16( c g) bes a g |
  a( f e) f g f |
  fis,8  a16( cis d8) |
  r8 fis, c' |
  g,16( d a) c' b a |
  b( g fis) g a g |
  b,( g) f, f, f, f, |
  b,( g) f, f, f, f, |
  e, g, c g, e c |
  g e c' g e c |
  b,8-. g(\p f,) |
  r g( f,) |
  e,( g, c) |
  e( g c') |
  R1*3/8 |
  f,16 a(\f g f e d) |
  g, b( a g f e) |
  a, c'( b a g f) |
  b, d'( c' b a g) |
  c e'( d' c' b a) |
  g c'( b a g f ) |
  e g e c g, b, |
  \appoggiatura b,8 c4 r8 |
  a, c e |
  a16( b c'8) a, |
  gis, b, e |
  b16( c' d'8) r |
  a, c'16( e f d') |
  c'8( b) g, |
  f, a16( cis d d') |
  a8( g) e, |
  d, f16( a, bes, f) |
  e8( gis, a,) |
  e,16( gis, b, d c8) |
  c\trill b, r |
  c16( a) a, a, a, a, |
  c( a) g, g, g, g, |
  c( a) fis, fis, fis, fis, |
  a g fis e d c |
  b,( g) g, g, g, g, |
  b,( g) f, f, f, f, |
  bes,( g) e, e, e, e, |
  g f e d c bes, |
  a,8-. f\p( e) |
  r d16(\f b,) c8-. |
  b,-. g(\p f) |
  r e16(\f c) d8-. |
  c16( a, c) e a c' |
  d f gis, b e, d |
  \times 2/3 { c16([ b, a,]) } b,4\trill |
  a,4 r8 |
  e,8 e16(\p b,) c8 |
  e a c' |
  e, b( gis |
  e b, gis,) |
  e, b,16( gis,) a,8 |
  dis8 fis a |
  gis16 b e gis b, e |
  e,8\trill r d\f |
  c16( a) a, a, a, a, |
  c( a) g, g, g, g, |
  c( a) f, f, f, f, |
  c( a) e, e, e, e, |
  dis,8. c'16 b a |
  gis b e d' c' b |
  \times 2/3 { c'16([ b a]) } b4\trill |
  a8 a,16 a b, a |
  b, a c a cis a |
  cis a d a dis a |
  e a e c e, gis |
  \appoggiatura gis16 a8 a, r |
 }
}

\book
{

    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.midiInstrument = "flute"
	    \movA
	}
	\header {
	     piece = \markup { \hspace #12 \large \bold "Poco Adagio" }
	}
	\midi { \tempo 4 . = 40 }
	\layout {
	    \context {
	 	\Score
		\override SpacingSpanner #'shortest-duration-space = #2.4
	    }
	}
    }

    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.midiInstrument = "flute"
	    \movB
	}
	\header {
	  piece = \markup { \hspace #12 \large \bold "Allegro" }
	  breakbefore = ##t
	} 
	\midi { \tempo 4  = 120 }
	\layout {
	    \context {
	 	\Score
	    }
	}
    }

    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.midiInstrument = "flute"
	    \movC
	}
	\header {
	  piece = \markup { \hspace #12 \large \bold "Allegro" }
	  breakbefore = ##t
	}
	\midi { \tempo 4 . = 80 }
	\layout {
	    \context {
	 	\Score
	    }
	}
    }
}
