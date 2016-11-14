\version "2.18.2"

\language "deutsch"

\include "defn.ily"

RH= \relative c'' {
  \accidentalStyle modern
  \override Flag.stroke-style = ##f
  \partial 4   %----------------------- beginning a partial measure with a grace note in v2.18.2
               %----------------------- generates "Going back in MIDI time" error, but OK output is rendered
  \omitDynamic \slashedGrace a'8\p^\markup { \huge "Allegro giocoso." } g8.(-3 fis16
  g8)-.-1 r \acciaccatura g8 e'-. r g,-.-1 r \acciaccatura g8 d'8-. r
  g,8-. r \acciaccatura g8 e'-. r \slashedGrace a,8 g8.-3( fis16 g8. fis16-2
  g8-.-1) r \acciaccatura g8 d'-. r g,8.-1( a16 g8. a16
  g8-.) r \acciaccatura g8 e'-. r \shpSlurA e,8.-2( c16-1 f8.-3 d16-1
  g8-.-4) r \acciaccatura g8 e'-. r g,-. r  \acciaccatura g8 d'-. r
  g,8-. r \acciaccatura g8 c-. r \shpSlurE \slashedGrace a8^( g8.-3[ fis16-2 g8.-3 a16-4)]
  \set fingeringOrientations = #'(left)
  < d,-1 h'-5 >8-. < e-1 c'-5 >-. <  f d' >-. < g e' >-.
      \set fingeringOrientations = #'(left up right down)
      \ottava #1 < a f' >-. < h g' >-. < c a' >-. < d h' >8-.
  < e c' >8-. \ottava #0 r r4 r
  \bar ":..:" \break
  \omitDynamic \slashedGrace a,,8\p g8._3( fis16
  g8-.) r < d f g h> r < f g h d > r \slashedGrace a8 g8.( fis16
  g8) r < e g c >8 r < g c e > r \slashedGrace a8 g8.( fis16
  g8-.) r < g h d >-.\< r < g h f' >-. r < d'-2 g-5 >-. r\!
  \shpSlurF \shpSlurG < g,_~ d' f >2(\(\> < g c e >8)\)\!  r \omitDynamic \slashedGrace a'8\p \omitDynamic g8.(\p fis16
  g8-.) r \shpSlurB \appoggiatura g8 e'-. r g,-.-1 r \shpSlurB \appoggiatura g8 d'8-. r
  g,8-. r \shpSlurB \appoggiatura g8 c-. r r
    \ottava #1 \set fingeringOrientations = #'(left)
    \omitDynamic < g'-1 e'-5 >8-.\f < f-1 d'-5 >-. <  e c' >-.
  < d h' >-. < c a' >8-. < h g' >-. <  a f' >-.
    \ottava #0 < g e' >8-. < f d' >-. <  e c' >-. < d h' >-.
  <  e c' >-. r r4 r4^\markup "Fine." \bar ":..:"
  \key c \minor
  \mark \markup \fontsize #-1.5 { \bold "C Moll." \italic "(Ut mineur.)" }
  \posSlurC g,4-1(_\markup { \dynamic p \italic \whiteout "dol." }
  es'-3) es( d c)
  g'2-5( d)
  \set fingeringOrientations = #'(up)
  es4-3 \shpSlurC es( d c < h-2 d-4 >2 g)
  es'4-3 \shpSlurD es( d_\markup { \italic \small "cresc." } c
  fis2-3_> g-1_> b!4-3\p g-1 fis-2 a-4)  g2 r4
  \bar ":..:"
  \posSlurPriority g4-5(\p
  f!4.-4 d8-2 es4-3 c-1)
  \posSlurA g'( g,) g8 r g'4(
  f4. d8 es4 c)
  < h d g >2. \posSlurB g4(
  es') es( d c)
  c'2(\f fis,-2)
  \shpSlurD g4-4(\p es d g
  c,) r4 r4 \bar ":|." %\noPageBreak
}

LH = \relative c' {
  \clef bass \partial 4
  r4
  \clef treble
  \set fingeringOrientations = #'(left)
  \omitDynamic < c-4 e-2 g-1 >8\p r < c e g >8 r < g h f' > r < g h f' > r
  < c-3 e-1 >8 r q r q r q r
  < h f' g >8 r q r q r q r
  < c e g >8 r q r < c-5 e-3 >4( < d f >
  < e-3 g-1 >8-.) r < c e g >8 r < g h f' > r q r
  < c-3 e-1 >8 r q r q r q r
  < g d' f > r q r q r q r
  \clef bass
  < c e >8 r c r c, r
  d4\rest
  g,8 r < g'-2 h-1 > r q r r4
  g,8 r < g'-4 c-1 > r q r r4
  g,8 r < g' d' > r q r < g h > r
  h4-2( g c8-.)\! r r4
  \clef treble
  < c e g >8 r q r < h f' g >8 r q r
  < c e g >8 r q r \omitDynamic < c e g >8\f r q r
  < g d' f > r q r q r q r
  \clef bass
  < c e >8 r c r c, r
  <<
    {
      \key c \minor% \partial 4
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \set fingeringOrientations = #'(down)
      \override Fingering.direction = #DOWN
      \override Fingering.staff-padding = #'()
      \omitDynamic d4\rest\p
      c8 g' es g c,8 g' es g
      h,8 g' f g h, g' f g
      c,8 g' es g c,8 g' es g
      s1
      c,8 g' es g c,8 g' es g
      c,8 a' es a cis, b'!-1 e,-3 b'-1
      d,8 b'-1 g_2 b-1 d, c' fis, c'
      g8 b d b s4
      s4
      g8 h d h g c_2 es_1 c_2
      g8 h d h g8 h d h
      g8 h d h g c es c
      g8 h_(-2 d-1 h-2 \stemDown \posTextA g^1^\markup { \small\italic "cresc." } f es d^4)
      \stemUp
      c8 g' es g c,8 g' es g
      as,8 es' c es as, es' c es
      g,8 es' c es g, f' h, f'
      c8 es g es c d8\rest
    }
    \\
    {
      \voiceTwo
      \set fingeringOrientations = #'(down)
      \override Fingering.direction = #LEFT
      \override Fingering.staff-padding = #'()
      \omitDynamic s4\p
      c2-4 c h-5 h c c
      g8^( h d g^1 f^2 es f d^4)
      c2 c2
      c2 cis-5 d-5 d g-4 g8 d8\rest d4\rest
      g2-5 g2-5
      g2 g2
      g2 g2
      g2-5 s2
      c,2 c
      as2 as
      g2 g
      c2-4_\markup "D.C. sino al fine." s4
    }
  >>
}

dynamics = {
  \partial 4 s4\p
  s1*4
  %5
  s1-\markup { \italic \small "cresc." }
  s1
  s1\f
  s2. %{--repeat bar--%} s4\p
  s1
  %10
  s1*2
  s2. s4\p
  s4 \posTextA s2.-\markup { \italic \small "cresc." }
  s2 s2\f
}

