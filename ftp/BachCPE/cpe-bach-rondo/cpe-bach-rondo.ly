\version "1.4.9.uu1"
\include "paper16.ly"
\header {
  title             = "Rondo"
  composer          = "Carl Philipp Emanuel Bach (1714-1788)"
  meter             = "Andantino"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  instrument        = "Harpsichord"
  mutopiatitle      = "Rondo"
  mutopiacomposer   = "C.Ph.E. Bach (1714-1788)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "J. Maho, 1870s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Feb/03"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/02/03-177"
}

Global = \notes {\key es\major \time 2/4 \partial 8}
tieUp = \property Voice.Tie \override #'direction = #1
tieDown = \property Voice.Tie \override #'direction = #-1
tieBoth = \property Voice.Tie \override #'direction = #0
staffUp = \translator Staff = "up"
staffDown = \translator Staff = "down"


MDI = \notes \relative c'' {
  \stemUp bes8
  bes g' f es
  es4 d8 as
  as as' g f
  f4 es8 bes

  bes bes' as g
  g e f c'
  bes as g f
  es4 d8 r

  \stemBoth r <bes g'> <as f'> <g es'>
  <g4 es'> <f8 d'> r
  r <c' as'> <bes g'> <as f'>
  <as4 f'> <g8 es'> as,

  as as as as
  <d'4\arpeggio f c'> \grace es8 d4^\prall-\turn
  es16 bes c as g8 f^\prall-\turn
  es4 r8 bes'

  \stemUp \tieUp bes2 ~
  bes4. bes8
  bes2 ~
  bes4. bes8

  bes2 ~
  bes8 g as c ~
  c s4.
  \stemBoth es,!4 d!8 <bes' bes'>

  <bes bes'> r r4
  r r8 <bes bes'>
  <bes bes'> r r4
  r r8 <es es'>

  <es es'> \stemUp <es, g> <es g> <es as>
  <es as> a a bes
  <es,4 c'> \stemBoth d^\prall-\turn
  es r8 g

  \stemUp r8 b d c
  r d f es
  g es d c
  bes4 a8 f

  \stemBoth f g g a
  a4 bes8 g
  g a a b
  b4 c8 a

  a bes bes b
  \stemUp b c c cis
  cis d es e
  <a,4. f'> <c!8 a'>

  <c4. a'> <a'8 c>
  <a4. c> <a8 f'>
  \stemBoth <a4. f'-.\fermata> f,8
  \stemUp f d' c bes

  bes4 a8 es
  es es' d c
  c4 bes8 f
  f f' es d

  d b c g'
  f es d c
  bes4 a8 r
  \stemBoth r <f' d'> <es c'> <d bes'>

  <d4 bes'> <c8 a'> r
  r <g' es'> <f d'> <es c'>
  <es4 c'> <d8 bes'> es,
  es es es es

  <a4\arpeggio c g'> \grace bes16 a4^\prall-\turn
  bes16 f g es d8 c^\prall-\turn
  bes4 r
  \stemUp bes'2 ~

  bes
  as4 ges
  \grace {[f16 as]} ges4 f
  d'2 ~

  d4 es ~
  es \tieDown es, ~
  es d
  r \tieBoth <bes bes'> ~

  <bes bes'> <as! as'!> ~
  <as as'> <as' as'> ~
  <as4. as'> as8
  \stemBoth as f' es des

  des4 c8 ges
  ges ges' f es
  es4 des8 as
  as as' ges f

  f d! es bes'
  as ges f es
  des4 c8 as
  \stemUp \tieUp as2 ~

  as4. as8
  as2 ~
  as4. \staffDown ges,8
  ges8 ges ges ges

  \staffUp \stemBoth <c'4\arpeggio es bes'> \grace des16 c4^\prall-\turn
  des16 as bes ges f8 es^\prall-\turn
  <bes'4\arpeggio d! f bes> \grace es16 d4^\prall-\turn
  es16 bes ces as g8 f^\prall-\turn

  <c'4\arpeggio e g c> r4\fermata
  r8 c, e f
  as4 g8 r
  r <e des'> <f c'> <e bes'>

  <e4 bes'> <f8 as> <b, b'>
  <b4. b'> <b8 b'>
  \tieBoth <b2 b'> ~
  <b4. b'> <b8 b'>

  <b4. b'> <b8 b'>
  <b4 b'> <a!8 a'!> <c e>
  \stemUp e8 c' b a
  a4 gis8 d

  d d' c b
  b4 a8 e
  e e' d c
  c ais b f'

  e d c b
  a4 gis8 r
  r e' gis \tieUp a ~
  a fis a g!

  r8 c, e f! ~
  f dis e f,!
  \stemBoth f f f <d' d'>
  <d d'> <d d'> <d d'> fis,

  fis fis fis <d' d'>
  <d4 d'> <d d'>
  <d d'> <d d'>
  s2

  s2
  s
  s
  s

  s
  s
  s
  es,8 cis d as'

  g f es d
  c4 b8 <g' g'>
  <g g'> r r4
  r r8 <g g'>

  <g g'> r r4
  r2
  s2
  r4 r8 es

  \stemUp r4 r8 a
  a a a <a d>
  d d d <d g>
  g g g <g c>

  \stemBoth c16 as g f es8 d^\prall-\turn
  c4 r8 g
  g des' c bes
  bes4 a8 a

  a es'! d c
  \stemUp r d d as'
  r b b f'
  f es d c

  d4 c8 b^\prall-\turn
  b4 c8 r
  \tieUp ges2 ~
  ges4 f ~

  f es
  \stemBoth es des
  \stemUp as'2 ~
  as4 g ~

  g f
  f e
  \stemBoth r \tieBoth <c c'> ~
  <c c'> <c c'> ~

  <c c'> <c c'> ~
  <c c'> <c c'> ~
  <c8 c'> <des des'> <des4 des'> ~
  <des8 des'> <c c'> <c4 c'> ~

  <c8 c'> <bes4 bes'> <as8 as'>
  <as4 as'> <g8 g'> es
  es c' bes as
  as4 g8 des

  des des' c bes
  bes4 as8 es
  es es' des c
  c a bes f'

  es des c bes
  as4 g8 s
  s2
  \tieDown as,2 ~

  as8 as as as'
  as2 ~
  as4. f8
  es4 des8 \staffDown f,

  f \staffUp des' c bes
  bes2 ~
  bes8 bes bes bes'
  bes2 ~

  bes4. g8
  f4 es8 es
  es f f g
  g4 as8 f

  f g g as
  as4 bes8 g
  g as as a
  a bes bes b

  b c4 \tieUp d8 ~
  d es4 e8 ~
  e f4 g8 ~
  g as4 b8 ~

  b c bes16 as g f
  es4 d8 <bes bes'>
  <bes4. bes'> <d8 d'>
  <d4. d'> <bes,8 bes'>

  <bes4. bes'> <f''8 f'>
  \tieBoth <f2 f'> ~
  <f4. f'> bes,8
  bes g' f es

  \stemUp es4 d8 as
  as as' g f
  f4 es8 bes
  bes bes' as g

  g e f c'
  bes as g f
  es4 d8 r
  \stemBoth r <bes g'> <as f'> <g es'>

  <g4 es'> <f8 d'> r
  r <c' as'> <bes g'> <as f'>
  <as4 f'> <g8 es'> as,
  as as as as

  <d'4\arpeggio f c'> \grace es16 d4^\prall-\turn
  es16 bes c as g8 f^\prall-\turn
  es4 r8 bes
  bes es d g

  f es d f
  \times 4/6 {[es d c bes g f]}
  bes2
  as4.^\prall-\turn as8

  as f' es d
  bes' as g f
  \stemUp \times 4/6 {[es d c \staffDown bes as g]}
  f2

  es4^\prall-\turn \staffUp r8 bes'
  bes bes' as g
  g e f c
  c c' bes as

  as fis g des
  \stemBoth des des' c bes
  bes g bes as
  g f b c

  es,4 d!8 g
  g32 bes as g as bes c d es f g f es d c bes
  as8 r r as
  as32 c bes as bes c d es f g as g f es d c

  bes8 r r bes
  bes32 d c bes c d es f g as g f es d c bes
  c d es d c bes as g f g as g f es d c
  \stemUp bes c d es f g as g f es d c \staffDown bes as g f

  es8 <g bes> <g bes> \staffUp g'
  \stemBoth f4 es8 <g' bes>
  <f2 c'>
  <es4 g> s4
  \bar "|."
  }
MDII = \notes \relative c'' {
  \stemDown g8
  g2
  as4. s8
  as2
  bes4. s8

  bes2
  \tieDown c2 ~
  c8 c bes as
  g4 f8 s

  s2
  s
  s
  s

  s
  s
  s
  s

  r8 bes, g' es
  es4 d
  r8 as' d, f
  f4 es

  r8 es g bes,
  des b c e
  f c' as f
  s2

  s
  s
  s
  s

  s8 bes, bes c
  c es es d
  c4 s
  s2

  g'4. g8
  g4. g8
  r g f es
  d4 c8 s

  s2
  s
  s
  s

  s
  s
  s
  r8 es es4 ~

  es8 es es4 ~
  es8 s4.
  s2
  d2

  es4. s8
  es2
  f4. s8
  f2

  g2 ~
  g8 g f es
  d4 c8 s
  s2

  s
  s
  s
  s

  s
  s
  s
  s

  d4 es
  f es
  es d
  f2 ~

  f4 ges ~
  ges s
  s2
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  r8 as, f' des

  des4 c
  r8 ges' c, es
  es4 des8 s
  s2

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  c2
  d4. s8

  d2
  e4. s8
  e2
  f ~

  f8 f e d
  c4 b8 s
  s e' d c
  b2

  s8 a4.
  gis4. s8
  s2
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  es8 es es es
  es4 d
  a' g
  d' c

  s2
  s
  s
  s

  s
  c4 b
  g'8 f es4
  \stemUp \staffDown as,8 \staffUp \stemDown g' f es

  f4 s
  s2
  ges,
  a4 bes

  c2
  s
  as
  b4 c

  d2
  des
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  \staffDown \stemUp s4 es,,
  s2
  s

  s
  s
  s
  s4 f

  \staffUp
  s2
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  \stemDown as'4. s8
  as2
  bes4. s8
  bes2

  c2 ~
  c8 c bes as
  g4 f8 s
  s2

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  bes,2
  c
  s

  des
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s
  }

MSI = \notes \relative c {
  r8
  \stemBoth es4 es
  f f
  f f
  g g

  g g
  as as
  as as
  bes4. <bes,,8 bes'>

  <bes bes'> r r4
  r8 a''8 bes <bes,, bes'>
  <bes bes'> r r4
  r8 d'' es <as,,, as'>

  <as as'> <as as'> <as as'> <as as'>
  \stemUp <as''4\arpeggio d f> <bes f'>
  \stemBoth g8 as bes bes,
  es bes es, r

  r4 \stemUp g'
  as as
  r as
  bes bes

  \stemBoth r es,
  as \tieDown as, ~
  <as c> \stemUp c'
  g f8 r

  \stemBoth r8 <g bes> <f as> <es g>
  <es4 g> <d8 f> r
  r <d f> <es g> <f as>
  <f4 as> <es8 g> r

  r <des, des'> <des des'> <c c'>
  <c c'> <ces ces'> <ces ces'> <bes bes'>
  <as4 as'> <bes' f' as>
  es8 bes es, r

  r d'' g es
  r b d c
  r c, d es
  \stemUp s4. a8

  a bes bes c
  c4 des8 bes
  bes c c d!
  d4 es8 c

  c des des d
  d \staffUp \stemDown es es e
  e f ges g
  \staffDown \stemUp s2

  s
  s8 es, \tieUp es4 ~
  es4. r8
  \stemBoth bes4 bes

  c c
  c c
  d d
  d d

  es es
  es es
  f4. <f,8 f'>
  <f f'> r r4

  r8 es'' f <f,, f'>
  <f f'> r r4
  r8 fis'' g <es,, es'>
  <es es'> <es es'> <es es'> <es es'>

  \stemUp <es'4\arpeggio a c> <f c'>
  \stemBoth d8 es f f,
  bes f bes, r
  r2

  as''4 ges
  d es
  bes2
  r

  <ces, ces'>
  \stemUp s4 ges''
  f2
  des

  ges
  ges
  ges4 \tieUp f ~
  f2

  ges
  c
  as
  des

  bes
  bes
  \stemBoth as4. r8
  r4 \stemUp f

  ges ges
  r4 ges
  \stemBoth <f as> <f8 as> <ges,, ges'>
  \stemDown <ges ges'> <ges ges'> <ges ges'> <ges ges'>

  \stemUp <ges''4\arpeggio c es> <as es'>
  \stemBoth f8 ges as as,
  <as'4\arpeggio d! f> \stemUp <bes f'>
  \stemBoth ges8 as bes bes,

  <bes'4\arpeggio e g> r8\fermata c,
  \stemUp r8 as' g f
  f4 e8 r
  r bes' as g

  g4 f
  r8 \stemBoth <des f> <des f> r
  r <f as> \tieBoth <f4 as> ~
  <f as> r

  r8 <gis, d'> <gis d'> r
  <c4. e> r8
  a4 a
  b b

  b b
  c c
  c c
  d d

  d d
  e4. <e,8 e'>
  <e2 e'> ~
  <e4. e'> <e8 e'>

  <e2 e'> ~
  <e4. e'> <f!8 f'>
  <f f'> <f f'> <f f'> r
  r4 r8 <fis fis'>

  <fis fis'> <fis fis'> <fis fis'> r
  r <fis' c'> r <g b>
  r <a c fis> r <b d g>
  \stemBoth b16 d \staffUp f as b d f as

  f, as b d f as b d
  f4 r8\fermata \staffDown \stemUp g,,,
  g es' d c
  c4 b8 f

  f f' es d
  d4 c8 g
  g \staffUp \stemDown g' f es
  \staffDown \stemBoth <f,2 as>

  <f as>
  g4. r8
  r <es g> <d f> <c es>
  <c4 es> <b8 d> r

  r <b d> <c es> <d f>
  <d4 f> <c8 es> <as as'>
  \stemUp r4 r8 bes'
  bes bes bes bes

  ges4 a8 c
  c4 a
  c b
  g2

  as4 g8 g,
  \stemBoth c g16 es c8 r
  r4 e''
  f f,

  \clef treble fis'4 r8 d
  d as' g f!
  \stemUp r4 r8 as
  s8 \clef bass r r c,

  s2
  s
  r
  es4 f

  f2
  f
  r
  \clef treble f4 g

  g2
  g
  ges
  f

  e
  es
  as,4. \stemBoth <f'8 as>
  <es4. g> <es8 g>

  <des4 f> <c! f>
  es4. r8
  \clef bass <as,,4 c> <as c>
  <bes des> <bes des>

  r4 \stemUp g'
  es es
  r as
  f f

  r f
  \stemBoth es4. \stemUp es8
  es c' bes as
  r4 es8 f

  \tieUp ges2 ~
  ges4. ges8 ~
  ges e f as
  ges4 f8 s

  \property Voice.Rest \override #'extra-offset = #'(0 . -4) r2
  \property Voice.Rest \revert #'extra-offset r4 f8 g
  as2 ~
  as4. as8 ~

  as fis g bes
  as4 g8 g
  g as as bes
  bes4 c8 as

  as bes bes c
  c4 des8 bes
  \stemBoth bes ces ces c
  c des des d

  es4 b
  c \stemUp bes!
  c c
  c g

  \stemBoth as2
  r8 bes, bes' r
  r <as, as'> \tieBoth <as4 as'> ~
  <as8 as'> <as as'> <as4 as'> ~

  <as8 as'> <as as'> <as4 as'> ~
  <as as'> \clef treble \stemUp c''
  bes as
  g2

  \clef bass \stemBoth f,4 f
  f f
  g g
  g g

  as as
  as as
  bes4. <bes,,8 bes'>
  <bes bes'> r r4

  r8 a'' bes <bes,, bes'>
  <bes bes'> r r4
  r8 d'' es <as,,, as'>
  <as as'> <as as'> <as as'> <as as'>

  <as''4\arpeggio d f> \stemUp <bes f'>
  \stemBoth g8 as bes bes,
  es bes es, r
  r2

  r
  r
  r4 f
  \stemUp d'2

  r
  r
  r
  s

  s4 es
  s2
  s
  f

  s
  g
  es
  c

  \stemBoth bes4. r8
  es,2
  r8 <f' d'> <f d'> r
  f,2

  r8 <g' es'> <g es'> r
  g,2
  as
  bes

  \stemDown es,8 r r bes''
  as4 g8 r
  r2
  r
  }
MSII = \notes \relative c' {
  s8
  s2
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s4 \stemDown as
  s2
  s

  s4 es
  f f
  s f
  g g

  s2
  s
  s4 <as, c>
  bes4. s8

  s2
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  f'2

  f
  r8 f f4
  f2
  r8 f f4

  f2
  s
  s
  s

  r8 es8 \tieUp es4 ~
  es8 es, \tieDown es4 ~
  es4. s8
  s2

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s4 es'
  s2
  s
  s

  s
  s
  s
  s

  s
  a,2
  as!
  g!

  <c es>
  es
  es4 \tieDown des ~
  des2

  es
  es
  f
  f

  ges
  ges
  s
  s4 des

  es es
  s es
  s2
  s

  s4 ges
  s2
  s4 as
  s2

  s
  c,2 ~
  c4. c8
  c2

  des
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  <c es>
  <d f>

  <d f>
  <es g>
  <es g>
  s

  s
  s
  s
  s

  s
  s
  <as,8 as'> <as as'> <as as'> as'
  as4 g

  ges2
  f
  fis4 f
  es es

  f s
  s2
  s
  s

  s
  s
  es'8 d c b
  c c, c <as' c>

  <as c> \staffUp <f' as> <es g> <d f>
  <d4 f> <c8 es> r
  \staffDown s2
  c4 des

  a2
  bes
  s
  d!4 es

  b2
  bes
  a
  as

  g
  ges
  f4. s8
  s2

  s
  s
  s
  s

  s4 <bes, des>
  c c
  s <c es>
  des des

  s des
  s4. r8
  r2
  r8 c4. ~

  c2 ~
  c8 c4.
  des2 ~
  des4. \property Voice.Rest \override #'extra-offset = #'(0 . -4) r8

  \property Voice.Rest \revert #'extra-offset s2
  r8 d!4. ~
  d2 ~
  d8 d4.

  es2 ~
  es
  es,
  r8 es es'4

  es,2
  r8 es es'4
  s2
  s

  s
  s4 g
  as e
  f s

  s2
  s
  s
  s

  s
  s4 d'! ~
  d d
  es2

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s4 as,
  s2
  s
  s

  s
  s
  s
  f,4 ~ f

  s2
  s
  s
  r4 g ~

  <g2 bes>
  g
  as ~
  as

  bes ~
  bes
  c
  as

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s
  }

\score {\notes {
  \context PianoStaff <
    \property PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "up" <
      \property Staff.TimeSignature \override #'style = #'default
      \Global \clef treble
      \context Voice=One \MDI
      \context Voice=Two \MDII
    >
    \context Staff = "down" <
      \property Staff.TimeSignature \override #'style = #'default
      \Global \clef bass
      \context Voice=One \MSI
      \context Voice=Two \MSII
    >
  >
}
\midi {\tempo 4=66}
\paper {}
}


