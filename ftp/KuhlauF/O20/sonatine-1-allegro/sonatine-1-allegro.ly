\version "2.16.1"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Sonatine I"
  subtitle          = "Drei Sonatines"
  composer          = "Frederik Kuhlau (1786-1832)"
  opus              = "Op.20 no.1-1"
  meter             = "Allegro"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonatine I - Allegro"
  mutopiacomposer   = "KuhlauF"
  mutopiainstrument = "Piano"
  mutopiaopus       = "O 20, No. 1: 1"
  date              = "Early 19th Century"
  source            = "B. Schott's Söhnen, 19th Century"
  style             = "Classical"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/02/21-232"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\major \time 4/4}

TupsOn =  {%\once \override TupletBracket   #'bracket-visibility = #'if-no-beam
           \once \override TupletNumber   #'text = "3"}

dolce = \markup {\italic "dolce"}

VoiceI =  \relative c'' {
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override TupletBracket   #'bracket-visibility = #'if-no-beam
  \override TupletNumber   #'text = ""
  \repeat volta 2 {

  c2_\p e
  g ~ g8 g g g
  g4 c e4. c8
  c2 ( b4) r8 b

  d2 ( f,4) r8 f-4
  e2 ( g4) r8 e-4
  cis d f e d a' f d
  c b d b g4 r

  r8 g <c e> g <c e> g <c e> g
  r g <c e> g <c e> g <c e> g
  r g <d' f> g, <d' f> g, <d' f> g,
  r g <d' f> g, <d' f> g, <d' f> g,

  \times 2/3 {\TupsOn r8 g_\f c es c g  es' c g es' c g
  \TupsOn r g c es c g es' c g es' c g
  \TupsOn r a c d c a d c a d c a
  \TupsOn r a c d c a d c a d c a}

  b4_\p_\dolce b'2 a8 g
  fis e dis e e4 d8 c
  b-4 a gis a a c e d
  d2 ( b4) r

  r8 b' d c b a g fis-4
  dis e-1 a-5 g fis e d c-3
  ais b-1 e-5 d cis d c a
  g_\f a16 b c-1 d e fis g-1 a b a g fis-3 e d

  cis-3 d e d c b a g-3 fis8 fis fis fis
  g-1 a16 b c d e fis g a b a g fis e d
  cis d e d c b a g fis8 fis fis fis
  g-1 a16 b c-1 d e fis g-1 b,-1 c d e fis g a

  b d, e fis g-1 a b c d g, a b c-1 d e fis
  g8 ( fis_ \markup{\italic "dim."} f e d c b a
  g gis b a g f! e  d)
  }

  c4_\dolce ( b) r b (
  d  c) r c (
  e  d) r g (
  f  e) r8 g, g g

  c4 ( b) r8 b b b
  d4 ( c) r8 c c c
  e ( d cis  d) g4. f8
  es <c es> <c es> <c es> <c es> <c es> <c es> <c es>

  <c es> <c es> <c es> <c es> <c es> <c es> <c es> <c es>
  <b d>2_\f ~ <b d>8 <b d> <b d> <b d>
  <c es>2 ~ <c es>8 <c es> <c es> <c es>
  <b d>2 ~ <b d>8 <b d> <b d> <b d>

  <c es>2 ~ <c es>8 <c es> <c es> <c es>
  <b d>4 <c es> <b d> <c es>
  d_\p g,16 a_ \markup{\italic "cresc."} b c d4 b16 c d e!
  f4 g16 a b c d4 b16 c d e

  f_\f e d c b c d e f e d c b c d e
  f e_ \markup{\italic "decresc."} d c b c d c b a-3 g f e-3 d c b-2
  c2_\p e
  g ~ g8 g g g

  g4 c e4. c8
  c2 ( b4) r8 b
  d2 ( f,4) r8 f-4
  e2 ( g4) r8 e-4

  cis d f e d a' f d
  c b d b g4 r
  r8 g <c e> g <c e> g <c e> g
  r g <c e> g <c e> g <c e> g

  r g <d' f> g, <d' f> g, <d' f> g,
  r g <d' f> g, <d' f> g, <d' f> g,
  \times 2/3 {\TupsOn r8_\f g c es c g es' c g es' c g
  \TupsOn r g c es c g es' c g es' c g

  \TupsOn r g d' f d g, f' d g, f' d g,
  \TupsOn r g d' f d g, f' d g, f' d g,}
  e'!4_\p_\dolce e'2 d8 c
  b a gis-2 a-3 a4 g8 f

  e-4 d cis d d-1 f a g
  g2 ( e4) r
  r8 e'-3 g f e d c b-4
  gis a-1 d c b a g-4 f

  dis e-1 a-5 g fis g f d-2
  c_\f d16 e f-1 g a b c-1 d e d c b-3 a g
  fis-3 g a g f e d c-3 b8-2 b b b
  c-1 d16 e f g a b c d e d c b-3 a g

  fis-3 g a g f e d c-3 b8-2 b b b
  c-1 d16 e f-1 g a b c e,-1 f g a-1 b c d
  e g,-1 a b c-1 d e f g c,-1 d e f-1 g a b
  c4 r <e,,, g c> r

  \clef bass <e, g c> r r2
  \bar "|."
  }

VoiceII =  \relative c' {
  \clef treble c8 g' e g c, g' e g
  c, g' e g c, g' e g
  c, g' e g c, g' e g
  d g f g d g f g

  b, g' d g b, g' d g
  c, g' e g c, g' e g
  <f a>1
  g4 r r8 \clef bass g,,8 a b

  c2 e
  g1
  b,2 d
  g1

  <c,, c'>2 <es es'>
  <g g'>1
  <fis fis'>2 <a a'>
  <d d'>1

  g8 d' b d g, d' b d
  g, e' c e g, e' c e
  fis, d' c d fis, d' c d
  g, d' b d g, d' b d

  g,1
  c
  d2 d,
  g4 r r2

  r r8 <d a' c> <d a' c> <d a' c>
  <g b>4 r r2
  r r8 <d a' c> <d a' c> <d a' c>
  <g b>4 r r2

  <g b d>4 r <g b d> r
  <g b d> r r2
  r1

  g8 f' d f g, f' d f
  g, e' c e g, e' c e
  g, d' b d g, d' b d
  g, e' c e g, e' c e

  g, f' d f g, f' d f
  g, e' c e g, e' c e
  g, d' b d g, d' b d
  <as c>2 <as, as'!>

  <g g'> <fis fis'>
  g8 a!16 b c d e!-3 fis g4 r
  c,8 d16 es f! g a-3 b c4 r
  g8 a16 b c d e! fis g4 r

  c,,8 d16 es f! g a b c4 r
  g4 c,16 d es f g4 c,16 d es f
  g4 r <g b d> r
  <g b d> r <g b d> r

  <g b d>1 ~
  <g b d>4 r r2
  \clef treble c8 g' e g c, g' e g
  c, g' e g c, g' e g

  c, g' e g c, g' e g
  d g f g d g f g
  b, g' d g b, g' d g
  c, g' e g c, g' e g

  <f a>1
  g4 r r8 \clef bass g,,8 a b
  c2 e
  g1

  b,2 d
  g1
  <c,, c'>2 <es es'>
  <g g'>1

  <b, b'>2 <d d'>
  <g g'>1
  \clef treble c'8 g' e g c, g' e g
  c, a' f a c, a' f a

  b, g' f g b, g' f g
  c, g' e g c, g' e g
  c,1
  f

  g2 \clef bass g,
  c4 r r2
  r r8 <g d' f> <g d' f> <g d' f>
  <c e>4 r r2

  r r8 <g d' f> <g d' f> <g d' f>
  <c e>4 r r2
  \clef treble <c e g>4 r <c e g> r
  <c e g> r \clef bass <c, c'> r

  <c, c'> r r2
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup {\large "Allegro."}
  \context Staff = "up" <<
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >>
  \context Staff = "down" <<
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >>
>>
}
\layout {
  indent = 2.0 \cm
  }

  \midi {
    \tempo 4 = 120
    }
}
