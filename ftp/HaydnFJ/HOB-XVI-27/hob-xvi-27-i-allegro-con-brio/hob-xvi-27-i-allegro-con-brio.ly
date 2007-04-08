%\version "1.4.9.uu1"
\include "nederlands.ly"
\include "paper16.ly"
\header {
  title             = "Sonata I"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:27"
  meter             = "I - Allegro con brio"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate I"
  mutopiacomposer   = "F.J. Haydn (1732-1809)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "C.F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Feb/22"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/02/22-185"
}

Global = \notes {\key g\major \time 2/4 \partial 8}
beamingOff = \property Voice.noAutoBeaming = ##t
beamingOn = \property Voice.noAutoBeaming = ##f
Treble = \clef treble
Bass = \clef bass
tieUp = \property Voice.Tie \override #'direction = #1
tieBoth = \property Voice.Tie \override #'direction = #0
tieDown = \property Voice.Tie \override #'direction = #-1
scriptOne = \property Voice.Script \override #'extra-offset = #'(0 . 1)
scriptNone = \property Voice.Script \revert #'extra-offset

MD = \notes \relative c' {
  \repeat volta 2 {
  \stemBoth d8

  \scriptOne g8.\turn \scriptNone a16 b8.\turn c16
  d8 d d d
  d e16 ( fis a g fis e
  ) d8 d d d

  d e16 ( fis a g fis e
  ) d8 g16 ( b a g fis e
  ) d4 c\trill
  d r8 g,

  fis8\prall e d\prall c
  b4 r8 \times 2/3 {e16 fis e}
  d8 \times 2/3 {c16 d c} b8 \times 2/3 {a16 b a}
  g4 r8 d'

  g16 () fis a () g b () a c () b
  d8 d d d
  d e16 ( fis a g fis e
  ) d8 d d d

  d g ( f ) d
  \tieUp dis4 () e ~
  e8 g ( e ) c
  cis4 () d ~

  d8 b' a32 () g16. fis32 () e16.
  d4 c8\prall () b
  b16 ( c dis e d c b ) a
  g4 () fis8 a

  d4 g16 ( fis e ) d
  d8 () cis r a
  e'4 a16 ( g fis ) e
  e8 () fis r a,

  \property Voice.Slur \override #'beautiful = #2.0 a16 ( a' g fis e d cis ) d
  \property Voice.Slur \revert #'beautiful b8-| dis-| e-| fis-|
  r16 g ( fis e d! cis b ) cis
  a8-| cis-| d-| e-|

  r16 fis ( e d cis b a ) b
  g8-| b-| cis-| d-|
  r16 e ( d cis b a b ) g
  fis8 () d' cis () a'

  fis () d cis () g
  fis () d' cis-| a'-|
  fis-| d-| cis-| g-|
  fis () d' c! () a

  ais4 () b8 b'16 () g
  a () fis g () e fis () d e () cis
  \scriptOne d8-| d'-| d-| d\turn ()
  cis g!-| g-| g\turn (

  \scriptNone ) fis c!-| c-| c\turn ()
  b ais'16 ( b a g fis e
  ) d4 e\trill
  \scriptOne d8 d'-| d-| d\turn ()

  cis g!-| g-| g\turn (
  \scriptNone fis ) c!-| c-| c\turn ()
  b ais'16 ( b a g fis e )
  d4 e\trill

  fis16 () d d' () a b () fis g () e
  d4 e\trill
  d8 r <cis g'> r
  <d fis> r <g, cis> r

  \partial 8*3 <fis4 d'> r8
  }

  \partial 8 d8-|

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
  \stemDown g, bes' a\prall g
  \stemBoth fis a c16 ( a fis ) d

  \beamingOff <a8 c\fermata> \beamingOn b16 ( c d c b ) a
  g () fis a () g b () a c () b
  d8 d d d
  d8 e16 ( fis a g fis e

  ) d8 d d d
  d8 e16 ( fis a g fis e
  ) d8 g16 ( b a g fis e
  ) d4 c\trill

  c8 () b r g
  fis\prall e d\prall c
  b4 r8 \times 2/3 {e16 fis e}
  \times 2/3 {[d e d]} \times 2/3 {[c d c]} \times 2/3 {[b c b]} \times 2/3 {[a b a]}

  gis8-| b-| d-| gis-|
  b-| d-| b'8. () d,16
  d ( c b ) a a8-| a-|
  <c4. a'> a8

  c16 ( b a ) g g8-| d'-|
  d16 ( c b ) c a8-| c-|
  c16 ( b a ) g g8-| g'-|
  fis16 ( e d c b a c ) a

  \beamingOff g4 () fis8 d
  \beamingOn g4 c16 ( b a ) g
  g8 () fis e d
  a'4 d16 ( c b ) a

  a8 () b r d
  g4 c16 ( b a ) g
  g8 () fis r d
  a'4 d16 ( c b ) a

  a8 () b r d,
  \property Voice.Slur \override #'beautiful = #2.0 d16 ( d' c b a g fis ) g
  \property Voice.Slur \revert #'beautiful
  e8-| gis-| a-| b-|
  r16 c16 ( b a g! fis e ) fis

  d8-| fis-| g-| a-|
  r16 b ( a g fis e d ) e
  c8-| e-| fis-| g-|
  r16 a ( g fis e d e ) c

  b8 () g' fis () d'
  b () g fis () c
  b-| ( \times 2/3 {g'16 a g} ) fis8 d'-|
  b-| g-| fis-| c-|

  b () g' f () d
  dis4 () e8 e16 () c
  d! () b c () a b () g a () fis
  g8-| g'-| g-| \scriptOne g\turn (

  \scriptNone ) fis c!-| c-| c\turn (
  ) b f-| f-| f\turn ()
  e dis'16 (e d c b a
  ) g4 a\trill

  g8-| g'-| g-| \scriptOne g\turn (
  \scriptNone ) fis c!-| c-| c\turn ()
  b f-| f-| f\turn ()
  e dis'16 ( e d c b a

  ) g4 a\trill
  b16 () g g' () d e () b c () a
  g4 a\trill
  g8 r <fis c'> r

  <g b> r <c, fis> r
  \partial 8*3 <b4 d g> r8
  \bar "|."
  }

MS = \notes \relative c' {
  \stemBoth r8

  <g4 b> r4
  \Treble r8 <g' b> <fis a> <a c>
  <g4 b> r
  r8 <g b> <fis a> <a c>

  <g4 b> r8 <g c>
  <g4 b> r
  r8 b a d,
  g d \beamingOff g, \Bass <g, g'>

  \beamingOn <fis fis'> <e e'> <d d'> <c c'>
  <b4 b'> r8 \times 2/3 {e'16 fis e}
  d8 \times 2/3 {c16 d c} b8 \times 2/3 {a16 b a}
  g4 r

  <g' b> r
  \Treble r8 <g' b> <fis a> <a c>
  <g4 b> r
  r8 <g b> <fis a> <a c>

  \tieBoth <g2 b> ~
  <g8 b> <g c> <g c> <g c>
  <g4 c> r
  r8 <g b> <g b> <g b>

  <g4 b> r
  r8 a ( fis ) g
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

  <d,8\fermata fis c'> r r4
  <g4 b> r
  \Treble r8 <g' b> <fis a> <a c>
  <g4 b> r

  r8 <g b> <fis a> <a c>
  <g4 b> r8 <g c>
  <g4 b> r
  r8 b a d,

  g d \beamingOff g, \Bass <g, g'>
  \beamingOn <fis fis'> <e e'> <d d'> <c c'>
  <b4 b'> r8 e'
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

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "harpsichord"
  \context Staff = "up" <\Global \Treble \context Voice=One \MD >
  \context Staff = "down" <\Global \Bass \context Voice=Two \MS >
>
}
\paper {}
\midi {\tempo 4=120}
}

