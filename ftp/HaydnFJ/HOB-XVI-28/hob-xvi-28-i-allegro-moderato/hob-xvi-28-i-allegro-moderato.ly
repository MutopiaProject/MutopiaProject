%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Sonata II"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:28"
  meter             = "I - Allegro moderato"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate II"
  mutopiacomposer   = "HaydnFJ"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "C.F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/15"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/15-210"
}

flat = #'((font-relative-size . -2) (music "accidentals--1"))
strill = #'(music "scripts-trill")

Global = \notes {\key es\major \time 3/4}
staffUp = \translator Staff = "up"
staffDown = \translator Staff = "down"
beamingOn = \property Voice.noAutoBeaming = ##f
beamingOff = \property Voice.noAutoBeaming = ##t
scriptZero = \property Voice.Script \set #'extra-offset = #'(0 . 0)
scriptUpG = \property Voice.Script \set #'extra-offset = #'(0 . 0.5)
scriptUpA = \property Voice.Script \set #'extra-offset = #'(0 . 1.0)
scriptUpB = \property Voice.Script \set #'extra-offset = #'(0 . 1.5)
scriptUpC = \property Voice.Script \set #'extra-offset = #'(0 . 2.0)
scriptUpD = \property Voice.Script \set #'extra-offset = #'(0 . 2.5)
scriptUpE = \property Voice.Script \set #'extra-offset = #'(0 . 3.0)
scriptUpF = \property Voice.Script \set #'extra-offset = #'(0 . 3.5)
scriptUpGG = \property Voice.Script \set #'extra-offset = #'(0 . 4.0)
scriptUpAA = \property Voice.Script \set #'extra-offset = #'(0 . 4.5)
scriptUpBB = \property Voice.Script \set #'extra-offset = #'(0 . 5.0)
scriptUpCC = \property Voice.Script \set #'extra-offset = #'(0 . 5.5)
scriptDownD = \property Voice.Script \set #'extra-offset = #'(0 . -0.5)
scriptDownC = \property Voice.Script \set #'extra-offset = #'(0 . -1.0)
scriptDownB = \property Voice.Script \set #'extra-offset = #'(0 . -1.5)
scriptDownA = \property Voice.Script \set #'extra-offset = #'(0 . -2.0)
scriptDownG = \property Voice.Script \set #'extra-offset = #'(0 . -2.5)
scriptDownF = \property Voice.Script \set #'extra-offset = #'(0 . -3.0)
scriptDownE = \property Voice.Script \set #'extra-offset = #'(0 . -3.5)

Treble = \clef treble
Bass = \clef bass

vOne = \notes \relative c'' {
  \repeat volta 2 {
  \property Voice.Script \override #'extra-offset = #'(0 . 0)
  \stemBoth \tieBoth bes4 ~ bes16 g as f g es f d
  es8-| bes-| g-| bes-| es-| \scriptUpG g-|
  \scriptZero bes4 ~ bes16 g as f g es f d
  es8 [<g es'> <g es'> <g es'> <g es'> <g es'>]

  \stemUp \slurUp es'2 () d4
  \stemBoth r8 [<des bes'> <des bes'> <des bes'> <des bes'> <des bes'>]
  \slurBoth <des4 bes' (> <c8 ) as'> \stemDown bes32 () g'16. as,32 () f'16. \property Voice.Slur \override #'extra-offset = #'(-1 . 1.5) f,32 () d'!16.
  \property Voice.Slur \revert #'extra-offset g,32 () es'16. r8 r4 r

  \stemBoth bes4 ~ bes16 g as f g es f d
  es8-| \scriptUpG g-| \scriptUpB bes-| \scriptUpE es-| \scriptZero g16 () es es8\trill
  as16 () es es8\trill g16 () es es8\trill c'16 () es, es8\trill
  bes'4 r8 c16 ( bes as g f ) es

  es4 () d8 g16 ( f es d c ) bes
  bes4 () as8 es'16 ( d c bes as ) g
  g4 () f8 c'16 ( bes as g f ) es
  d8. ( es32 ) f es4 r

  \tieUp g'4 ~ g16 b c as g f es d
  c b d c es d f es g8 r
  f4 ~ f16 a bes g f es d c
  bes a c bes d c es d f8 r

  \property Voice.Slur \override #'y-free = #2 \property Voice.Slur \override #'beautiful = #5.0
    \property Voice.Script \override #'extra-offset = #'(0 . 1) b,16 ( c des d es e f fis ) g8\turn g16. a32 (
  \property Voice.Slur \revert #'y-free \property Voice.Slur \revert #'beautiful \scriptZero
    \property Voice.Rest \override #'extra-offset = #'(0 . -2.5) [) bes8-| r16 a (] \property Voice.Rest \override #'extra-offset = #'(0 . -3.5) [) g8-| r16 f (] \property Voice.Rest \revert #'extra-offset [) es8-| r16 d]
  \property Voice.Rest \revert #'extra-offset d4\trill () c4 r
  <d4. f> <es16 g (> <c ) es> <bes8 d-|> <c es\turn>

  <d f> bes'-| r <f a> r <es g-|>
  <d4. f> <es16 g (> <c ) es> \scriptDownD <bes8 d-|> \scriptZero <c es\turn>
  <d f-|> <bes' d-|> r <g bes-|> r <es g-|>
  \grace d8 f2 e16 ( f g ) f

  f2 e16 ( f g ) f
  bes2 e,16 ( f g ) f
  f2 fis16 ( g a ) g
  g2 a16 ( bes c ) bes

  bes4 ~ bes8 d16 ( c bes a g ) f
  f8\turn g16 () es d4 c\trill
  \scriptDownB bes8-| \scriptZero bes'-| \property Voice.Script \override #'extra-offset = #'(0 . 1) a\prall () g f\prall () e
  \scriptZero e2^#'(Large (lines ("Adagio." " "))) ~ e16 ( f g ) f

  f2\fermata e16^#'(Large (lines ("Allegro." " "))) () f g () f
  d () es d () es c () d es ()d b () c d () c
  c2 c16 ( d es ) d
  d2 d16 ( es f ) es

  es2 \property Voice.Slur \override #'y-free = #2 \property Voice.Slur \override #'beautiful = #5.0 \times 2/3 {[f,16 ( a c]} \times 2/3 {[es f a]}
  ) bes4 ~ bes16 a g f es d c bes
  \property Voice.Slur \revert #'y-free \property Voice.Slur \revert #'beautiful b ( c es ) c bes4 a\trill
  \stemDown bes16 bes bes8\trill es16 () bes bes8\trill d16 () bes bes8\trill

  \stemBoth g'16 () bes, bes8\trill bes'4 ~ \times 4/6 {[bes16 a g f es d]}
  \times 4/6 {[c g' f es d c]} \times 4/6 {[d f es d c bes]} \times 4/6 {[a g f es d c]}
  bes4. [a8 ( <) c es> <a c>]
  <bes4. d> [<a8 ( c> <) es' g> <c es>]

  <d4. f> \property Voice.Beam \override #'staff-position = #-5 \grace f8 [f'-| \grace g, g'-| \grace a, a'-|]
  \property Voice.Beam \override #'staff-position = #-2 \grace bes, bes'-| \grace c, c'-| \grace d, d'4-| r
  \property Voice.Beam \revert #'staff-position r8 [g,,, ( es' ) g] [c,8. () a16]
  a4 () bes r
  }

  f''4 ~ f16 d es c d bes c a
  \scriptUpB bes8-| \scriptZero f-| d-| f-| \scriptUpB bes-| \scriptUpD d-|
  \scriptZero \tieBoth <f4 as!> ~ <f8 as> <es g-|> <d f-|> <c es-|>
  <bes d-|> c32 () es16. [d32 () f16. es32 () g16.] [f32 () as16. g32 () bes16.]

  \grace as8 c4 () c8 bes4 as8
  g4 ~ g16 es f d es c d b
  \scriptUpC c8-| \scriptUpG g-| \scriptZero es-| \scriptUpG g-| \scriptUpC c-| \scriptUpE es-|
  \scriptZero g4 ~ g16 es f d es c d b

  c8 [<g es'> <g es'> <g es'> <g es'> <g es'>]
  \stemUp \slurUp es'2 () d4
  \stemBoth r8 [<d d'> <d d'> <d d'> <d d'> <d d'>]
  \stemUp d'2 () c4

  c2 () bes4
  bes2 () as!4
  as2 () g4
  g2 () fis4

  \tieUp g4 ~ g8 \stemBoth [g,16 g'] [g, g' g, g']
  \stemUp fis2.
  g2\fermata \stemBoth \slurDown fis16 () g as () g
  e () f! g () f d () es f () es c () d es () d

  \slurBoth d2 d16 ( es f ) es
  es2 es16 ( f g ) f
  f2 f,32 ( as b d \times 2/3 {[f16 as b]}
  ) c4 ~ c16 bes! as! g f es d c

  es ( d f ) d c4 b\trill
  \stemDown as'16 () des, des8\trill f16 () as, as8\trill d16 () f, \property Voice.Script \override #'direction = #1 f8^\strill^\flat
  \property Voice.Script \revert #'direction \stemBoth as16 des, des8\trill f16 () as, as8\trill des8-| c-|
  \times 2/3 {[b16 a g]} \times 2/3 {[d'! c b]} \times 2/3 {[f' es! d]} \times 2/3 {[as'! g f]} \times 2/3 {[d' c b]} \times 2/3 {[as g f]}

  \times 4/6 {[es g f es d c]} \times 4/6 {[as' c bes as g f]} \times 4/6 {[es d c b c d]}
  c4. [b8 ( <) d f> <b d>]
  <c4. es> [<b8 ( d> <) f' as> <d f>]
  <es4. g> c'32 () as16. [bes32 () g16. as32 () f16.]

  <e4. g> des'32 () bes16. [c32 () as16. bes32 () g16.]
  [as32 ()f16. g32 () es16.] [f32 () d16. es32 () c16.] [d32 () bes16. c32 () a16.]
  bes8 \grace as! \property Voice.Beam \override #'staff-position = #-10 [\scriptDownA as'!-| \grace bes, \scriptDownB bes'-| \grace d, \scriptDownD d'-| \grace f, \scriptZero f'-| \grace g, g'-|]
  \property Voice.Beam \revert #'staff-position \grace as,8 as'2. ~

  as16 g bes as c bes as g f es d c
  bes4 ~ bes16 g as f g es f d
  es8-| bes-| g-| bes-| es-| g-|
  bes4 ~ bes16 g as f g es f d

  es8 [g16 es' g, es' g, es' g, es' g, es']
  \stemUp \slurUp es2 () d4
  \stemBoth r8 des16 bes' des, bes' des, bes' des, bes' des, bes'
  <des,4 bes' (> <c8 ) as'> <bes g'-|> <as f'-|> <f d'-|>

  <g4 es'> r r
  r8 [<as bes> <as bes> <as bes> <as bes> <as bes>]
  \stemUp bes2.
  \stemBoth r8 [<bes g'> <bes g'> <bes g'> <bes g'> <bes g'>]

  <bes2 g' (> <as8. ) f'> <c16 as'>
  <c2 as' (> <bes4 ) g'>
  f'16 ( e g f as g bes as ) c8. es,16
  es2 ( d8 ) des

  c4 ~ c16 e f des c bes as g
  f e g f as g bes as c8 r
  bes4 ~ bes16 d es c bes as g f
  es d f es g f as g bes8 r

  \slurBoth e,16 f ges g as a bes b c8.\turn d16 (
  \property Voice.Rest \override #'extra-offset = #'(0 . -3) [)es!8-| r16 d] \scriptDownC [c8-| r16 bes(] \property Voice.Script \override #'extra-offset = #'(0 . 0) \property Voice.Rest \set #'extra-offset = #'(0 . 1.5) [) as8 r16 g]
  \property Voice.Rest \revert #'extra-offset g4\trill () f r
  <g4. bes> <as16 ( c> <) f as> <es8-| g> <f as\turn>

  <g8 bes-|> \scriptUpE es'-| \scriptZero r <c es-|> r \scriptDownC <as c-|>
  \scriptZero <g4. bes> <as16 ( c> <) f as> <es8-| g> <f as\turn>
  <g8 bes-|> <es' g> r <c es-|> r \scriptDownC <as c-|>
  \scriptZero \grace g8 bes2 a16 ( bes c ) bes

  bes2 a16 ( bes c ) bes
  es2 a,16 ( bes c ) bes
  bes2 b16 ( c d ) c
  c2 d16 ( es f ) es

  es4 ~ es8 g16 ( f es d c ) bes
  bes8\turn c16 () as g4 f\trill
  \scriptDownE es8-| \scriptZero es'-| \property Voice.Script \override #'extra-offset = #'(0 . 1) d\prall () c \property Voice.Script \revert #'extra-offset bes\prall () a
  \tieDown a2^#'(Large (lines ("Adagio." " "))) ~ a16 ( bes c ) bes

  \property Voice.Script \override #'direction = #1 bes2\fermata \property Voice.Script \revert #'direction a16^#'(Large (lines ("Allegro." " "))) () bes c () bes
  g () as! bes () as f () g as () g e () f g ()f
  f2 f16 ( g as ) g
  g2 g16 ( as bes ) as

  as2 bes,32 ( d f as \times 2/3 {[d16 f as]}
  ) c8. bes16 as g f es d c bes as
  \stemUp g8 s s2
  \stemBoth e16 ( f as ) f es4 d\trill

  es16 es es8\trill as16 () es es8\trill g16 () es es8\trill
  c'16 () es, es8\trill \tieUp es'4 ~ \times 4/6 {[es16 d c bes as g]}
  \stemUp \times 4/6 {[f c' bes as g f]} \times 4/6 {[g bes as g f es]} \times 4/6 {[d c \staffDown bes as g f]}
  es4. \staffUp \stemBoth [d'8 ( <) f as> <d f>]

  <es4. g> [<d8 ( f> <) as' c> <f as>]
  <g4. bes> \property Voice.Beam \override #'staff-position = #-9 \grace bes,8 \scriptDownB [bes'-| \grace c, \scriptDownC c'-| \grace d, \scriptDownD d'-|]
  \scriptZero \property Voice.Beam \set #'staff-position = #-6 \grace es, es'-| \grace f, f'-| \grace g, g'4-| r
  \property Voice.Beam \revert #'staff-position r8 [c,, ( as' ) c] [f,8. () d16]

  d4 () es r
  \bar "|."
  }

vTwo = \notes \relative c, {
  \property Voice.Script \override #'extra-offset = #'(0 . 0)
  \stemBoth \tieBoth r8 [es-| g-| bes-| \scriptUpC es-| \scriptUpF as-|]
  g4 r r
  \scriptZero r8 [es,-| g-| bes-| \scriptUpC es-| \scriptUpF as-|]
  \scriptZero g4 r r

  \staffUp \stemDown f'2.
  \staffDown \stemUp bes
  \Bass \stemBoth r8 [as, as as bes bes]
  es,4 es, r

  r8 [es-| g-| bes-| \scriptUpC es-| \scriptUpF as-|]
  g4 r r
  \Treble c'4 bes as
  \stemUp r4 es' \stemBoth r

  r8 [<f, as> <f as>] r r4
  \Bass r8 [<c es> <c es>] r r4
  r8 [<as c> <as c>] r r4
  <bes,4 as'> <es g> r

  r8 <b' d (> <c4 ) es> r
  R2.
  r8 <a c (> <bes!4 ) d> r
  r r r8 \Treble \slurDown <d8 ( f>

  <) es4 g> r r
  <es g> r r8. \stemUp bes'16
  \slurUp bes4 a \stemBoth r
  r8 \Bass \slurDown bes,,, () bes'4 r

  \scriptDownB \Treble bes''8-| r bes-| r bes-| r
  r \Bass bes,,, () bes'4 r
  \Treble bes''8-| r bes-| r bes-| r
  \scriptZero r [<bes d> <bes d> <bes d> <bes d> <bes d>]

  r [<a c> <a c> <a c> <a c> <a c>]
  r [<g bes> <g bes> <g bes> <g bes> <g bes>]
  r [<f a> <f a> <f a> <f bes> <f bes>]
  r [<es bes'> <es bes'> <es bes'> <es c'> <es c'>]

  r [<d f> <d f> <d f> <d bes'> <d bes'>]
  <es bes'> <es bes'> <f bes> <f bes> <f a> <f a>
  \stemUp g2 \tieUp bes4 ~
  bes2 a4 ~

  a2 s4
  s2.
  \Bass \stemBoth r8 [<f, a es'> <f a es'> <f a es'>] r4
  r8 [<f bes d> <f bes d> <f bes d>] r4

  r8 [<f a c> <f a c> <f a c>] r4
  r8 d () bes'4 r
  \stemUp r8 es d4 c
  \stemBoth bes \Treble g' f

  es \stemUp r <bes' d>
  \stemBoth <es,-| g> f-| \Bass f,-|
  r8 bes,, () bes'4 r
  r8 bes, () bes'4 r

  r8 [bes, () bes'] [d'-| es-| c-|]
  d-| a-| bes4 r
  es,, r <f es'>
  \stemUp \slurUp es' () d r

%rep volta
  r8 [ \scriptUpG bes-| \scriptUpB d-| \scriptUpD f-| \scriptUpGG bes-| \scriptUpCC es-|]
  \scriptZero d4 r r
  \Treble \stemUp r8 d es4 f8 g
  as2.

  as4 g f
  \beamingOff \stemUp es8 \stemBoth \Bass [\scriptDownA c,-| \scriptDownC es-| \scriptZero g-| c-| f-|]
  \beamingOn es4 r r
  r8 [\scriptDownA c,-| \scriptDownC es-| \scriptZero g-| c-| f-|]

  es4 r r
  \stemDown \staffUp fis2.
  s
  es'

  d
  c
  bes
  as

  \tieDown g4 ~ g8 s4.
  as2.
  g2\fermata s4
  s2.

  \staffDown \Bass r8 [<g, b d> <g b d> <g b d>] r4
  r8 [<g c es> <g c es> <g c es>] r4
  r8 [<g b d> <g b d> <g b d>] r4
  r8 es () c'4 r

  \stemUp r8 f es4 d
  \stemBoth \tieBoth <f,,2. as des f> ~
  <f as des f>
  <g2 d'! f> b4

  \scriptUpA c-| \scriptZero f,-| g-|
  \slurBoth r8 c, () c'4 r
  r8 c, () c'4 r
  r8 c, () c'4 r

  r8 c, () c'4 r
  <f,8 f'> <es! es'!> <d d'> <c c'> <bes bes'> <a a'>
  <bes2. bes'>
  <bes' d f>

  <bes d f as>
  r8 [es,-| g-| \scriptUpG bes-| \scriptUpC es-| \scriptUpF as-|]
  \scriptZero g4 r r
  r8 [es,-| g-| \scriptUpG bes-| \scriptUpC es-| \scriptUpF as-|]

  \scriptZero g4 r r
  \staffUp \stemDown f'2.
  \staffDown \stemUp bes2.
  \Bass \stemBoth r8 as,,16 as' as, as' as, as' bes, bes' bes, bes'

  \beamingOff es,,8 \Treble [<es'' g> <es g> <es g> <es g> <es g>]
  \stemUp f2.
  \staffUp \stemDown \slurDown as2 () g4
  \staffDown \stemBoth <es2 ( des'> <) e4 c'>

  \beamingOn r8 [<f c'> <f c'> <f c'> <f c'> <f c'>]
  r [<d f> <d f> <d f> <es g> <es g>]
  <as,2 c f> \slurDown \tieUp <a4 ( f'> ~
  <) bes f'> bes' r

  r8 <e, ( g> <) f4 as> r
  R2.
  r8 <d ( f> <) es4 g> r
  \slurBoth r r r8 \Bass <g, bes (>

  <as4 ) c> r r
  <as c> r r8. \stemUp es'16
  \slurUp es4 () d \stemBoth \slurBoth r
  r8 es,, () es'4 r

  es'8-| r es-| r es-| r
  r es,, () es'4 r
  \Treble es'8-| r es-| r es-| r
  r8 [<es g> <es g> <es g> <es g> <es g>]

  r [<d f> <d f> <d f> <d f> <d f>]
  r [<c es> <c es> <c es> <c es> <c es>]
  r [<bes d> <bes d> <bes d> <bes es> <bes es>]
  r [<as es'> <as es'> <as es'> <as f'> <as f'>]

  \Bass r [<g bes> <g bes> <g bes> <g es'> <g es'>]
  <as es'> <as es'> <bes es> <bes es> <bes d> <bes d>
  \stemUp c2 \tieUp es4 ~
  es2 d4 ~

  d2 s4
  s2.
  \stemBoth r8 [<bes, d as'> <bes d as'> <bes d as'>] r4
  r8 [<bes es g> <bes es g> <bes es g>] r4

  r8 [<bes d f> <bes d f> <bes d f>] s4
  r4 r r8 d'-|
  \stemDown \staffUp [es8 \times 2/3 {es32 ( g bes]} \times 2/3 {[d es g]} <bes,4 ) bes'> r
  \staffDown \stemUp r8 as, g4 f

  \stemBoth es c' bes
  as \stemUp r <es' g>
  \stemBoth <as, c-|> bes-| \stemDown \scriptDownG bes,-|
  \scriptZero r8 es, () es'4 r

  \stemBoth r8 es, () es'4 r
  r8 es, () es' g-| as-| f-|
  g-| \scriptDownB d-| \scriptZero es4 r
  as, r <bes as'>

  \stemUp \slurUp as'4 () g r
  }

vThree = \notes \relative c'' {
  \property Voice.Script \override #'extra-offset = #'(0 . 0)
  s2. s s s

  \Treble \stemBoth r8 [<as bes> <as bes> <as bes> <as bes> <as bes>]
  \slurDown \stemDown as2 () g4
  s2. s

  s s s
  g2 s4

  s2. s s s

  s s s s

  s
  s2 s8. e16
  f2 s4
  s2.

  s s s s

  s s s s

  s
  s
  g2.
  \tieDown f ~

  f2\fermata s4
  s2.
  s
  s

  s
  s
  es,4 f f
  s2.

  s4 d'2
  s2.
  s
  s

  s
  s
  s
  bes,2 s4

  s2.
  s
  bes'2.
  bes

  bes 2 b4
  c8 s s2
  s2.
  s

  s
  \Treble r8 [<a' c> <a c> <a c> <a c> <a c>]
  \slurDown <a2 ( c> <) g4 bes>
  \slurBoth r8 [<g' bes> <g bes> <g bes> a a]

  r [<fis a> <fis a> <fis a> <fis a> <fis a>]
  r [<e g> <e g> <e g> f f]
  r [<d f> <d f> <d f> es es]
  r [<c es> <c es> <c es> <c es> <c es>]

  <c4 es (> <b ) d> r
  r8 c16 es c es c es c es c es
  <c4 es (> <b ) d\fermata> s
  s2.

  s s s s

  \stemDown f,4 g2
  s2.
  s
  s

  s s s s

  s s s s

  s s s s

  s
  \Treble \stemBoth r8 as'16 bes as bes as bes as bes as bes
  \stemDown \slurDown as2 () g4
  s2.

  s
  es2 () d4
  \stemBoth r8 [<es des'> <es des'> <es des'> <es des'> <es des'>]
  s2.

  s s s s

  s s s s

  s
  s2 s8. \stemDown a,16
  bes2 s4
  s2.

  s s s s

  s s s s

  s
  s
  c2.
  \tieDown bes ~

  bes2\fermata s4
  s2.
  s
  s

  s
  s
  s
  as,4 bes bes

  s2.
  as'4 g2
  s2.
  s

  s
  s
  s
  s

  es2 s4
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "bright acoustic"
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VoiceI \vOne
  >
  \context Staff = "down" <
    \Global \clef bass
    \context Voice=VoiceI \vTwo
    \context Voice=VoiceII \vThree
  >
>
}
\paper {}
\midi {\tempo 4=108}
}

