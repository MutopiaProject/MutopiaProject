%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Sonatine I"
  subtitle          = "Drei Sonatines"
  composer          = "Frederik Kuhlau (1786-1832)"
  opus              = "Op.20 no.1-1"
  meter             = "Allegro"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonatine I - Allegro"
  mutopiacomposer   = "F. Kuhlau (1786-1832)"
  mutopiainstrument = "Piano"
  date              = "Early 19th century"
  source            = "B. Schott's Söhnen, 19th century"
  style             = "Classical"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Apr/10"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/04/10-232"
}

Global = \notes {\key c\major \time 4/4}

TupsOff = \notes {\property Voice.TupletBracket \override #'tuplet-bracket-visibility = #'if-no-beam
                  \property Voice.TupletBracket \override #'tuplet-number-visibility = #'if-no-beam }

tsZero = \property Voice.TextScript \revert #'extra-offset
tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)

dtZero = \property Voice.DynamicText \revert #'extra-offset
dtDownI = \property Voice.DynamicText \override #'extra-offset = #'(0 . -1)
dtDownII = \property Voice.DynamicText \override #'extra-offset = #'(0 . -2)

dolce = #'(italic "dolce")

VoiceI = \notes \relative c'' {
  \repeat volta 2 {

  \stemBoth \slurBoth \tieBoth \dtDownII c2_\p e
  g ~ g8 g g g
  g4 c e4. c8
  c2 () b4 r8 b

  d2 () f,4 r8 f^"4"
  e2 () g4 r8 e^"4"
  cis d f e d a' f d
  c b d b g4 r

  r8 g <c e> g <c e> g <c e> g
  r g <c e> g <c e> g <c e> g
  r g <d' f> g, <d' f> g, <d' f> g,
  r g <d' f> g, <d' f> g, <d' f> g,

  \dtZero \dtDownI \property Voice.tupletSpannerDuration = #(make-moment 1 4) \times 2/3 {r8 g_\f c \TupsOff es c g  es' c g es' c g
  r g c es c g es' c g es' c g
  r a c d c a d c a d c a
  r a c d c a d c a d c a}

  \property Voice.TextScript \override #'extra-offset = #'(2 . -1) b4_\p_\dolce b'2 a8 g
  \tsZero fis e dis e e4 d8 c
  b^"4" a gis a a c e d
  d2 () b4 r

  r8 b' d c b a g fis^"4"
  dis e^"1" a^"5" g fis e d c^"3"
  ais b^"1" e^"5" d cis d c a
  g_\f a16 b c^"1" d e fis g^"1" a b a g fis^"3" e d

  cis^"3" d e d c b a g^"3" fis8 fis fis fis
  g^"1" a16 b c d e fis g a b a g fis e d
  cis d e d c b a g fis8 fis fis fis
  g^"1" a16 b c^"1" d e fis g^"1" b,^"1" c d e fis g a

  b d, e fis g^"1" a b c d g, a b c^"1" d e fis
  g8 ( \tsDownII fis_#'(italic "dim.") \tsZero f e d c b a
  g gis b a g f! e ) d
  }

  c4_\dolce () b r b (
  d ) c r c (
  e ) d r g (
  f ) e r8 g, g g

  c4 () b r8 b b b
  d4 () c r8 c c c
  e ( d cis ) d g4. f8
  es <c es> <c es> <c es> <c es> <c es> <c es> <c es>

  <c es> <c es> <c es> <c es> <c es> <c es> <c es> <c es>
  <b2_\f d> ~ <b8 d> <b d> <b d> <b d>
  <c2 es> ~ <c8 es> <c es> <c es> <c es>
  <b2 d> ~ <b8 d> <b d> <b d> <b d>

  <c2 es> ~ <c8 es> <c es> <c es> <c es>
  <b4 d> <c es> <b d> <c es>
  d_\p g,16 a_#'(italic "cresc.") b c d4 b16 c d e!
  f4 g16 a b c d4 b16 c d e

  f_\f e d c b c d e f e d c b c d e
  f e_#'(italic "decresc.") d c b c d c b a^"3" g f e^"3" d c b^"2"
  c2_\p e
  g ~ g8 g g g

  g4 c e4. c8
  c2 () b4 r8 b
  d2 () f,4 r8 f^"4"
  e2 () g4 r8 e^"4"

  cis d f e d a' f d
  c b d b g4 r
  r8 g <c e> g <c e> g <c e> g
  r g <c e> g <c e> g <c e> g

  r g <d' f> g, <d' f> g, <d' f> g,
  r g <d' f> g, <d' f> g, <d' f> g,
  \dtZero \dtDownII \times 2/3 {r8_\f g c es c g es' c g es' c g
  r g c es c g es' c g es' c g

  r g d' f d g, f' d g, f' d g,
  r g d' f d g, f' d g, f' d g,}
  \property Voice.TextScript \override #'extra-offset = #'(2 . -2) e'!4_\p_\dolce \tsZero e'2 d8 c
  b a gis^"2" a^"3" a4 g8 f

  e^"4" d cis d d^"1" f a g
  g2 () e4 r
  r8 e'^"3" g f e d c b^"4"
  gis a^"1" d c b a g^"4" f

  dis e^"1" a^"5" g fis g f d^"2"
  \dtZero \dtDownI c_\f d16 e f^"1" g a b c^"1" d e d c b^"3" a g
  fis^"3" g a g f e d c^"3" b8^"2" b b b
  c^"1" d16 e f g a b c d e d c b^"3" a g

  fis^"3" g a g f e d c^"3" b8^"2" b b b
  c^"1" d16 e f^"1" g a b c e,^"1" f g a^"1" b c d
  e g,^"1" a b c^"1" d e f g c,^"1" d e f^"1" g a b
  c4 r <e,,, g c> r

  \clef bass <e, g c> r r2
  \bar "|."
  }

VoiceII = \notes \relative c' {
  \clef treble c8 g' e g c, g' e g
  c, g' e g c, g' e g
  c, g' e g c, g' e g
  d g f g d g f g

  b, g' d g b, g' d g
  c, g' e g c, g' e g
  <f1 a>
  g4 r r8 \clef bass g,,8 a b

  c2 e
  g1
  b,2 d
  g1

  <c,,2 c'> <es es'>
  <g1 g'>
  <fis2 fis'> <a a'>
  <d1 d'>

  g8 d' b d g, d' b d
  g, e' c e g, e' c e
  fis, d' c d fis, d' c d
  g, d' b d g, d' b d

  g,1
  c
  d2 d,
  g4 r r2

  r r8 <d a' c> <d a' c> <d a' c>
  <g4 b> r r2
  r r8 <d a' c> <d a' c> <d a' c>
  <g4 b> r r2

  <g4 b d> r <g b d> r
  <g b d> r r2
  r1

  g8 f' d f g, f' d f
  g, e' c e g, e' c e
  g, d' b d g, d' b d
  g, e' c e g, e' c e

  g, f' d f g, f' d f
  g, e' c e g, e' c e
  g, d' b d g, d' b d
  <as2 c> <as, as'!>

  <g g'> <fis fis'>
  g8 a!16 b c d e!^"3" fis g4 r
  c,8 d16 es f! g a^"3" b c4 r
  g8 a16 b c d e! fis g4 r

  c,,8 d16 es f! g a b c4 r
  g4 c,16 d es f g4 c,16 d es f
  g4 r <g b d> r
  <g b d> r <g b d> r

  <g1 b d> ~
  <g4 b d> r r2
  \clef treble c8 g' e g c, g' e g
  c, g' e g c, g' e g

  c, g' e g c, g' e g
  d g f g d g f g
  b, g' d g b, g' d g
  c, g' e g c, g' e g

  <f1 a>
  g4 r r8 \clef bass g,,8 a b
  c2 e
  g1

  b,2 d
  g1
  <c,,2 c'> <es es'>
  <g1 g'>

  <b,2 b'> <d d'>
  <g1 g'>
  \clef treble c'8 g' e g c, g' e g
  c, a' f a c, a' f a

  b, g' f g b, g' f g
  c, g' e g c, g' e g
  c,1
  f

  g2 \clef bass g,
  c4 r r2
  r r8 <g d' f> <g d' f> <g d' f>
  <c4 e> r r2

  r r8 <g d' f> <g d' f> <g d' f>
  <c4 e> r r2
  \clef treble <c4 e g> r <c e g> r
  <c e g> r \clef bass <c, c'> r

  <c, c'> r r2
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "Allegro.  ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >
  \context Staff = "down" <
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >
>
}
\paper {
  indent = 2.0 \cm
  }
\midi {\tempo 4=120}
}

