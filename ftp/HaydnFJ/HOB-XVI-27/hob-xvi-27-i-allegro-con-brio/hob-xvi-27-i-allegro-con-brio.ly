\version "2.16.1"

\include "nederlands.ly"
#(set-global-staff-size 16)
\header {
  title             = "Sonata I"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:27"
  meter             = "I - Allegro con brio"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate I, I - Allegro con brio"
  mutopiacomposer   = "HaydnFJ"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "C. F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/07/07-185"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key g\major \time 2/4 \partial 8}
Treble = \clef treble
Bass = \clef bass

MD =  \relative c' {
  \repeat volta 2 {
  d8

   g8.\turn  a16 b8.\turn c16
  d8 d d d
  d e16 ( fis a g fis e
   d8) d d d

  d e16 ( fis a g fis e
   d8) g16 ( b a g fis e
   d4) c\trill
  d r8 g,

  fis8\prall e d\prall c
  b4 r8 \times 2/3 {e16 fis e}
  d8 \times 2/3 {c16 d c} b8 \times 2/3 {a16 b a}
  g4 r8 d'

  g16 ( fis) a ( g) b ( a) c ( b)
  d8 d d d
  d e16 ( fis a g fis e
   d8) d d d

  d g ( f  d)
  dis4 ( e) ~
  e8 g ( e  c)
  cis4 ( d) ~

  d8 b' a32 ( g16.) fis32 ( e16.)
  d4 c8\prall ( b)
  b16 ( c dis e d c b  a)
  g4 ( fis8) a

  d4 g16 ( fis e  d)
  d8 ( cis) r a
  e'4 a16 ( g fis  e)
  e8 ( fis) r a,

  a16 ( a' g fis e d cis  d)
  b8-| dis-| e-| fis-|
  r16 g ( fis e d! cis b  cis)
  a8-| cis-| d-| e-|

  r16 fis ( e d cis b a  b)
  g8-| b-| cis-| d-|
  r16 e ( d cis b a b  g)
  fis8 ( d') cis ( a')

  fis ( d) cis ( g)
  fis ( d') cis-| a'-|
  fis-| d-| cis-| g-|
  fis ( d') c! ( a)

  ais4 ( b8) b'16 ( g)
  a ( fis) g ( e) fis ( d) e ( cis)
   d8-| d'-| d-| d\turn (
  cis) g!-| g-| g\turn (

    fis) c!-| c-| c\turn (
  b) ais'16 ( b a g fis e
   d4) e\trill
   d8 d'-| d-| d\turn (

  cis) g!-| g-| g\turn (
   fis  c!)-| c-| c\turn (
  b) ais'16 ( b a g fis e )
  d4 e\trill

  fis16 ( d) d' ( a) b ( fis) g ( e)
  d4 e\trill
  d8 r <cis g'> r
  <d fis> r <g, cis> r

  <fis d'>4 r8
  }

  d8-|

  f-| a-| d-| f-|
  gis,4 r8 e-|
  gis-| b-| e-| gis-|
  a4 r8 a,-|

  c-| e-| a-| c-|
  dis,4 r8 a'-|
  fis-| dis-| b-| a-|
  g!4 r8 e-|

  g-| b-| e-| g-|
  fis4 r8 fis,-|
  a-| dis-| fis-| a-|
  g4 r8 e,-|

  g-| b-| e-| g-|
  ais,4 r8 g'
  fis\turn e dis e
  dis c' b\turn a

  gis f e\turn d!
  cis bes' a\turn g!
  fis! a d fis,
  g b d g,

  fis a d fis,
  g bes d d,
  es d' c es,
  d c' bes d,

  c bes' a c,
  bes g' a, a'
  g, bes' a\prall g
  fis a c16 ( a fis  d)

  <a c\fermata>8\noBeam b16 ( c d c b  a)
  g ( fis) a ( g) b ( a) c ( b)
  d8 d d d
  d8 e16 ( fis a g fis e

   d8) d d d
  d8 e16 ( fis a g fis e
   d8) g16 ( b a g fis e
   d4) c\trill

  c8 ( b) r g
  fis\prall e d\prall c
  b4 r8 \times 2/3 {e16 fis e}
  \times 2/3 { d[ e d]} \times 2/3 { c[ d c]} \times 2/3 { b[ c b]} \times 2/3 { a[ b a]}

  gis8-| b-| d-| gis-|
  b-| d-| b'8. ( d,16)
  d ( c b  a) a8-| a-|
  <c a'>4. a8

  c16 ( b a  g) g8-| d'-|
  d16 ( c b  c) a8-| c-|
  c16 ( b a  g) g8-| g'-|
  fis16 ( e d c b a c  a)

  g4 ( fis8)\noBeam d
  g4 c16 ( b a  g)
  g8 ( fis) e d
  a'4 d16 ( c b  a)

  a8 ( b) r d
  g4 c16 ( b a  g)
  g8 ( fis) r d
  a'4 d16 ( c b  a)

  a8 ( b) r d,
  d16 ( d' c b a g fis  g)
  e8-| gis-| a-| b-|
  r16 c16 ( b a g! fis e  fis)

  d8-| fis-| g-| a-|
  r16 b ( a g fis e d  e)
  c8-| e-| fis-| g-|
  r16 a ( g fis e d e  c)

  b8 ( g') fis ( d')
  b ( g) fis ( c)
  b-| ( \times 2/3 {g'16 a g}  fis8) d'-|
  b-| g-| fis-| c-|

  b ( g') f ( d)
  dis4 ( e8) e16 ( c)
  d! ( b) c ( a) b ( g) a ( fis)
  g8-| g'-| g-|  g\turn (

    fis) c!-| c-| c\turn (
   b) f-| f-| f\turn (
  e) dis'16 (e d c b a
   g4) a\trill

  g8-| g'-| g-|  g\turn (
    fis) c!-| c-| c\turn (
  b) f-| f-| f\turn (
  e) dis'16 ( e d c b a

   g4) a\trill
  b16 ( g) g' ( d) e ( b) c ( a)
  g4 a\trill
  g8 r <fis c'> r

  <g b> r <c, fis> r
  <b d g>4 r8
  \bar "|."
  }

MS =  \relative c' {
  r8

  <g b>4 r4
  \Treble r8 <g' b> <fis a> <a c>
  <g b>4 r
  r8 <g b> <fis a> <a c>

  <g b>4 r8 <g c>
  <g b>4 r
  r8 b a d,
  g d g,\noBeam \Bass <g, g'>

  <fis fis'> <e e'> <d d'> <c c'>
  <b b'>4 r8 \times 2/3 {e'16 fis e}
  d8 \times 2/3 {c16 d c} b8 \times 2/3 {a16 b a}
  g4 r

  <g' b> r
  \Treble r8 <g' b> <fis a> <a c>
  <g b>4 r
  r8 <g b> <fis a> <a c>

  <g b>2 ~
  <g b>8 <g c> <g c> <g c>
  <g c>4 r
  r8 <g b> <g b> <g b>

  <g b>4 r
  r8 a ( fis  g)
  \Bass c,4. cis8
  d a d, r

  d16 a' fis a d, a' fis a
  e a g a e a g a
  cis, a' e a cis, a' e a
  d, a' fis a d, a' fis a

  fis4 r
  g16 g' fis, fis' e, e' dis, dis'
  e,4 r
  fis16 fis' e, e' d, d' cis, cis'

  d,4 r
  e16 e' d, d' cis, cis' b, b'
  a,4 r8 cis
  d16 a' fis a e a g a

  d, a' fis a e a g a
  d, a' fis a e a g a
  d, a' fis a e a g a
  d, a' fis a fis d' a d

  g, d' b d g,8 r
  r4 r8 \Treble a
  b16 gis' d gis b, gis' d gis
  a, a' cis, a' a, a' cis, a'

  d, a' fis a d, a' fis a
  g4 r
  \Bass r8 fis, g a
  \Treble b16 gis' d gis b, gis' d gis

  a, a' cis, a' a, a' cis, a'
  d, a' fis a d, a' fis a
  g4 r
  \Bass r8 fis, g a

  d, fis g4
  r8 fis g a
  d,16 d' d, d' d, d' d, d'
  d, d' d, d' d, d' d, d'

  d,4 r8

  r8

  d16 a' f a d, a' f a
  d, b' gis b d, b' gis b
  d, b' gis b d, b' gis b
  c,! a' e a c, a' e a

  c, a' e a c, a' e a
  b, a' fis! a b, a' fis a
  dis, b' fis b dis, b' fis b
  e, b' g! b e, b' g b

  e, b' g b e, b' g b
  dis, b' fis b dis, b' fis b
  dis, b' fis b dis, b' fis b
  e, b' g b e, b' g b

  e, b' g b e, b' g b
  c,! ais' e ais c, ais' e ais
  c, ais' e ais c, ais' e ais
  b, a'! dis, a' b, a' dis, a'

  e d'! gis, d' e, d' gis, d'
  \Treble a g'! cis, g' a, g' cis, g'
  c,! a' fis a c, a' fis a
  b, g' d g b, g' d g

  c, a' fis a c, a' fis a
  bes, g' d g bes, g' d g
  c, g' es g c, g' es g
  bes, f'! d f g, es' bes es

  a, es' c es \Bass fis, d' a d
  g, d' bes d f, d' a d
  es, cis' g cis es, cis' g cis
  d, c' fis, c' d, c' fis, c'

  <d,\fermata fis c'>8 r r4
  <g b>4 r
  \Treble r8 <g' b> <fis a> <a c>
  <g b>4 r

  r8 <g b> <fis a> <a c>
  <g b>4 r8 <g c>
  <g b>4 r
  r8 b a d,

  g d g,\noBeam \Bass <g, g'>
  <fis fis'> <e e'> <d d'> <c c'>
  <b b'>4 r8 e'
  d c b a

  gis16 e' b e gis, e' b e
  gis, e' b e gis, e' b e
  a, e' c e a, e' c e
  fis, d' a d fis, d' a d

  g, d' b d g, d' b d
  fis, d' a d fis, d' a d
  g, d' b d b g' d g
  c,4 r

  d8 a d, r
  g'16 d' b d g, d' b d
  a d c d a d c d
  fis, d' a d fis, d' a d

  g, d' b d g, d' b d
  g, d' b d g, d' b d
  a d c d a d c d
  fis, d' a d fis, d' a d

  g, d' b d g, d' b d
  b4 r
  \Treble c16 c' b, b' a, a' gis, gis'
  a,4 r

  b16 b' a, a' g, g' fis, fis'
  g,4 r
  a16 a' g, g' \Bass fis, fis' e, e'
  fis,4 r

  g16 d' b d g, d' b d
  g, d' b d g, d' b d
  g, d' b d g, d' b d
  g, d' b d g, d' b d

  g, d' b d b g' d g
  c, g' e g c,8 r
  r4 r8 d,
  e16 cis' g cis e, cis' g cis

  d, d' fis, d' d, d' fis, d'
  g, d' b d g, d' b d
  c4 r
  r8 b, c d

  e16 cis' g cis e, cis' g cis
  d, d' fis, d' d, d' fis, d'
  g, d' b d g, d' b d
  c4 r

  r8 b, c d
  g b, c4
  r8 b c d
  g,16 g' g, g' g, g' g, g'

  g, g' g, g' g, g' g, g'
  g,4 r8
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "harpsichord"
  \context Staff = "up" <<\Global \Treble \context Voice=One \MD >>
  \context Staff = "down" <<\Global \Bass \context Voice=Two \MS >>
>>
}
\layout {
  \context {
    \Staff
    \override TupletBracket #'stencil = ##f
  }
}

  \midi {
    \tempo 4 = 120
    }


}

