\version "2.18.2"

#(set-global-staff-size 15.8)
\header {
  title             = \markup { \normal-text { "Rondo in E♭ Major" \small { "H.288" } } }
  composer          = "Carl Philipp Emanuel Bach (1714-1788)"
  meter             = "Andantino"
  instrument        = "Harpsichord"
  mutopiatitle      = "Rondo in E-flat Major"
  mutopiaopus       = "H.288"
  mutopiacomposer   = "BachCPE"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "J. Maho, 1870s"
  style             = "Classical"
  license           = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2015/04/03-177"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

Global =  {\key es\major \time 2/4 \partial 8}
staffUp = \change Staff = "up"
staffDown = \change Staff = "down"


MDI =  \relative c'' {
  \stemUp bes8
  bes g' f es
  es4 d8 as
  as as' g f
  f4 es8 bes

  bes bes' as g
  g e f c'
  bes as g f
  es4 d8 r

  \stemNeutral r <bes g'> <as f'> <g es'>
  <g es'>4 <f d'>8 r
  r <c' as'> <bes g'> <as f'>
  <as f'>4 <g es'>8 as,

  as as as as
  <d' f c'>4\arpeggio \slashedGrace es8 d4^\prall\turn
  es16 bes c as g8 f^\prall\turn
  es4 r8 bes'

  \stemUp \tieUp bes2 ~
  bes4. bes8
  bes2 ~
  bes4. bes8

  bes2 ~
  bes8 g as c ~
  c s4.
  \stemNeutral es,!4 d!8 <bes' bes'>

  <bes bes'> r r4
  r r8 <bes bes'>
  <bes bes'> r r4
  r r8 <es es'>

  <es es'> \stemUp <es, g> <es g> <es as>
  <es as> a a bes
  <es, c'>4 \stemNeutral d^\prall\turn
  es r8 g

  \stemUp r8 b d c
  r d f es
  g es d c
  bes4 a8 f

  \stemNeutral f g g a
  a4 bes8 g
  g a a b
  b4 c8 a

  a bes bes b
  \stemUp b c c cis
  cis d es e
  <a, f'>4. <c! a'>8

  <c a'>4. <a' c>8
  <a c>4. <a f'>8
  \stemNeutral <a f'>4.-._\fermata f,8
  \stemUp f d' c bes

  bes4 a8 es
  es es' d c
  c4 bes8 f
  f f' es d

  d b c g'
  f es d c
  bes4 a8 r
  \stemNeutral r <f' d'> <es c'> <d bes'>

  <d bes'>4 <c a'>8 r
  r <g' es'> <f d'> <es c'>
  <es c'>4 <d bes'>8 es,
  es es es es

  <a c g'>4\arpeggio \slashedGrace bes16 a4^\prall\turn
  bes16 f g es d8 c^\prall\turn
  bes4 r
  \stemUp bes'2 ~

  bes
  as4 ges
  \slashedGrace {f16[ as]} ges4 f
  d'2 ~

  d4 es ~
  es \tieDown es, ~
  es d
  r \tieNeutral <bes bes'> ~

  <bes bes'> <as! as'!> ~
  <as as'> <as' as'> ~
  <as as'>4. as8
  \stemNeutral as f' es des

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

  \staffUp \stemNeutral <c' es bes'>4\arpeggio \slashedGrace des16 c4^\prall\turn
  des16 as bes ges f8 es^\prall\turn
  <bes' d! f bes>4\arpeggio \slashedGrace es16 d4^\prall\turn
  es16 bes ces as g8 f^\prall\turn

  <c' e g c>4\arpeggio r4_\fermata
  r8 c, e f
  as4 g8 r
  r <e des'> <f c'> <e bes'>

  <e bes'>4 <f as>8 <b, b'>
  <b b'>4. <b b'>8
  \tieNeutral <b b'>2 ~
  <b b'>4. <b b'>8

  <b b'>4. <b b'>8
  <b b'>4 <a! a'!>8 <c e>
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
  \stemNeutral f f f <d' d'>
  <d d'> <d d'> <d d'> fis,

  fis fis fis <d' d'>
  <d d'>4 <d d'>
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

  \stemNeutral c16 as g f es8 d^\prall\turn
  c4 r8 g
  g des' c bes
  bes4 a8 a

  a es'! d c
  \stemUp r d d as'
  r b b f'
  f es d c

  d4 c8 b^\prall\turn
  b4 c8 s
  \tieUp ges2 ~
  ges4 f ~

  f es
  \stemNeutral es des
  \stemUp as'2 ~
  as4 g ~

  g f
  f e
  \stemNeutral r \tieNeutral <c c'> ~
  <c c'> <c c'> ~

  <c c'> <c c'> ~
  <c c'> <c c'> ~
  <c c'>8 <des des'> <des des'>4 ~
  <des des'>8 <c c'> <c c'>4 ~

  <c c'>8 <bes bes'>4 <as as'>8
  <as as'>4 <g g'>8 es
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
  <bes bes'>4. <d d'>8
  <d d'>4. <bes, bes'>8

  <bes bes'>4. <f'' f'>8
  \tieNeutral <f f'>2 ~
  <f f'>4. bes,8
  bes g' f es

  \stemUp es4 d8 as
  as as' g f
  f4 es8 bes
  bes bes' as g

  g e f c'
  bes as g f
  es4 d8 r
  \stemNeutral r <bes g'> <as f'> <g es'>

  <g es'>4 <f d'>8 r
  r <c' as'> <bes g'> <as f'>
  <as f'>4 <g es'>8 as,
  as as as as

  <d' f c'>4\arpeggio \slashedGrace es16 d4^\prall\turn
  es16 bes c as g8 f^\prall\turn
  es4 r8 bes
  bes es d g

  f es d f
  \tuplet 6/4 { es[ d c bes g f]}
  bes2
  as4.^\prall\turn as8

  as f' es d
  bes' as g f
  \stemUp \tuplet 6/4 { es[ d c \staffDown bes as g]}
  f2

  es4^\prall\turn \staffUp r8 bes'
  bes bes' as g
  g e f c
  c c' bes as

  as fis g des
  \stemNeutral des des' c bes
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
  \stemNeutral f4 es8 <g' bes>
  <f c'>2
  <es g>4 s4
  \bar "|."
  }
MDII =  \relative c'' {
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

MSI =  \relative c {
  r8
  \stemNeutral es4 es
  f f
  f f
  g g

  g g
  as as
  as as
  bes4. <bes,, bes'>8

  <bes bes'> r r4
  r8 a''8 bes <bes,, bes'>
  <bes bes'> r r4
  r8 d'' es <as,,, as'>

  <as as'> <as as'> <as as'> <as as'>
  \stemUp <as'' d f>4\arpeggio <bes f'>
  \stemNeutral g8 as bes bes,
  es bes es, r

  r4 \stemUp g'
  as as
  r as
  bes bes

  \stemNeutral r es,
  as \tieDown as, ~
  <as c> \stemUp c'
  g f8 r

  \stemNeutral r8 <g bes> <f as> <es g>
  <es g>4 <d f>8 r
  r <d f> <es g> <f as>
  <f as>4 <es g>8 r

  r <des, des'> <des des'> <c c'>
  <c c'> <ces ces'> <ces ces'> <bes bes'>
  <as as'>4 <bes' f' as>
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
  \stemNeutral bes4 bes

  c c
  c c
  d d
  d d

  es es
  es es
  f4. <f, f'>8
  <f f'> r r4

  r8 e'' f <f,, f'>
  <f f'> r r4
  r8 fis'' g <es,, es'>
  <es es'> <es es'> <es es'> <es es'>

  \stemUp <es' a c>4\arpeggio <f c'>
  \stemNeutral d8 es f f,
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
  \stemNeutral as4. r8
  r4 \stemUp f

  ges ges
  r4 ges
  \stemDown <f as> <f as>8 <ges,, ges'>
  <ges ges'> <ges ges'> <ges ges'> <ges ges'>

  \stemUp <ges'' c es>4\arpeggio <as es'>
  \stemNeutral f8 ges as as,
  <as' d! f>4\arpeggio \stemUp <bes f'>
  \stemNeutral ges8 as bes bes,

  <bes' e g>4\arpeggio r8_\fermata c,
  \stemUp r8 as' g f
  f4 e8 r
  r bes' as g

  g4 f
  r8 \stemNeutral <des f> <des f> r
  r <f as> \tieNeutral <f as>4 ~
  <f as> r

  r8 <gis, d'> <gis d'> r
  <c e>4. r8
  a4 a
  b b

  b b
  c c
  c c
  d d

  d d
  e4. <e, e'>8
  <e e'>2 ~
  <e e'>4. <e e'>8

  <e e'>2 ~
  <e e'>4. <f! f'>8
  <f f'> <f f'> <f f'> r
  r4 r8 <fis fis'>

  <fis fis'> <fis fis'> <fis fis'> r
  r <fis' c'> r <g b>
  r <a c fis> r <b d g>
  \stemNeutral b16 d \staffUp f as b d f as

  f, as b d f as b d
  f4 r8_\fermata \staffDown \stemUp g,,,
  g es' d c
  c4 b8 f

  f f' es d
  d4 c8 g
  g \staffUp \stemDown g' f es
  \staffDown \stemNeutral <f, as>2

  <f as>
  g4. r8
  r <es g> <d f> <c es>
  <c es>4 <b d>8 r

  r <b d> <c es> <d f>
  <d f>4 <c es>8 <as as'>
  \stemUp r4 r8 bes'
  bes bes bes bes

  ges4 a8 c
  c4 a
  c b
  g2

  as4 g8 g,
  \stemNeutral c g16 es c8 r
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
  as,4. \stemNeutral <f' as>8
  <es g>4. <es g>8

  <des f>4 <c! f>
  es4. r8
  \clef bass <as,, c>4 <as c>
  <bes des> <bes des>

  r4 \stemUp g'
  es es
  r as
  f f

  r f
  \stemNeutral es4. \stemUp es8
  es c' bes as
  s4 es8 f

  \tieUp ges2 ~
  ges4. ges8 ~
  ges e f as
  ges4 f8 s

  s2
  s4 f8 g
  as2 ~
  as4. as8 ~

  as fis g bes
  as4 g8 g
  g as as bes
  bes4 c8 as

  as bes bes c
  c4 des8 bes
  \stemNeutral bes ces ces c
  c des des d

  es4 b
  c \stemUp bes!
  c c
  c g

  \stemNeutral as2
  r8 bes, bes' r
  r <as, as'> \tieNeutral <as as'>4 ~
  <as as'>8 <as as'> <as as'>4 ~

  <as as'>8 <as as'> <as as'>4 ~
  <as as'> \clef treble \stemUp c''
  bes as
  g2

  \clef bass \stemNeutral f,4 f
  f f
  g g
  g g

  as as
  as as
  bes4. <bes,, bes'>8
  <bes bes'> r r4

  r8 a'' bes <bes,, bes'>
  <bes bes'> r r4
  r8 d'' es <as,,, as'>
  <as as'> <as as'> <as as'> <as as'>

  <as'' d f>4\arpeggio \stemUp <bes f'>
  \stemNeutral g8 as bes bes,
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

  \stemNeutral bes4. r8
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
MSII =  \relative c' {
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
  <as, as'>8 <as as'> <as as'> as'
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
  <d f>4 <c es>8 r
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
  des4. r8

  r2
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

  <g bes>2
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

\score { {
  \context PianoStaff <<
    \set PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "up" <<
      \Global \clef treble
      \context Voice=One \MDI
      \context Voice=Two \MDII
    >>
    \context Staff = "down" <<
      \Global \clef bass
      \context Voice=One \MSI
      \context Voice=Two \MSII
    >>
  >>
}

  \midi {
    \tempo 4 = 66
    }

\layout {}
}
