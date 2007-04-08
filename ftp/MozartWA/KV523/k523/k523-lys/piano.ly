% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

upper = \relative a {
  \key f \major
  \time 4/4

  r8 a( c f a c, bes g')
  | r a,( c f a c, a f')
  | g,( e' a, f' bes, g' g, e')
  | r8 a,( c f a f c a)
  | r bes( d f bes f d bes)
  | r g( c e g e c e)
  | r a,( c f a f c a)
  | r g( bes d g d c fis)
  | r bes,( d g bes g d bes)
  | r g( bes c e c bes c)
  | \stemUp \slurDown a c( f a c a g d') \stemNeutral \slurNeutral
  | e,2.( g8. f16)
  | f4 r <a, c f> r
  | <bes d g> r <bes c e g> r
  | <a c f> r r2
  | << f'1 \\ { <a, c>2 <g b> } >>
  | r8 g( c e g e d a')
  | b,2.( d8. c16)
  | c4 r <c e g> r
  | <c f a> r <d f g b> r
  | <c e g c> r r2
  | <a c d fis>1
  | r8 d( g b d b a e')
  | fis,2.( a8. g16)
  | g4 g2 g4
  | \stemUp e'8( g, f d' e, c' d, b')
  | g( e' f, d' e, c' d, b') \stemNeutral
  | es4( d c b)
  | r8 g,( c es g es c g)
  | r g( c es g es c g)
  | r g( b d g d c g')
  | r f( as f es g f d)
  | r g,( c es g es c g)
  | r as( c f as f c as)
  | <g c es>4 r r2
  | <d' g>4 r <es as> r
  | <d g> r r2
  | <d g>4 r <es as> r
  | <d g> r r2
  | r8 g,( bes! d g d bes g)
  | r g( bes d g d bes g)
  | r a!( c es g es c a)
  | r a( c es g es c a)
  | r g( bes d g d bes g)
  | r a( c d fis d c a)
  | r d( g bes d bes a es')
  | fis,2.( a8. g16)
  | g4 r r2
  | r8 g,( bes es g es bes g)
  | r g( bes es g es c g)
  | r f( c' es f es c f,)
  | r as( es' f as f es as,)
  | r as( d f as f d as)
  | r bes( d f as f d bes)
  | <es g>4 r r2
  | <g c>4. <f b d>8 <g c es>8.[ <f d'>16 <es c'>8. <d bes'>16]
  | <d bes'>4 <c a'!>4 r8 d( f bes)
  | r g,( c es g es c g)
  | r c( es f a f es c)
  | d f[( bes d] f d c g')
  | a,2.( c8. bes16)
  | bes4 r <bes d>8 r <bes d> r
  | <d, bes' d> r <es a c> r <d g bes> r <c fis a> r
  | <bes g'>4 r <g' c> <f! g b>
  | r8 es( g c es c g es)
  | r a,( cis e! g e cis bes)
  | r a( d fis a fis d a')
  | r bes,( es g bes g es bes)
  | r c( es f! c' f, es c)
  | r c( es f a f es c)
  | <d f bes>4 r r2
  | << bes'1 \\ { <d, f>2 <c e> } >>
  | <c f a>4 r r2
  | r8 a( c f a f c a)
  | r g( b d f d b g)
  | r f( g b d b g b)
  | c( e bes! g' a, f' g, e')
  | r a,( c f a c, bes g')
  | r a,( c f a c, a f')
  | g,( e' a, f' bes, g' g, e')
  | r a,( c f a f c a)
  | r bes( d f bes f d bes)
  | r g( c e g e c g)
  | r a( c f a f c a)
  | r g( b d f d b g)
  | r b( d f g f d f)
  | e4 <g bes! d> r <c, g' bes>
  | r8 c( f a) r d,( g bes)
  | r a,( c f c a bes e)
  | r e( f c a c f a)
  | r g,( b d f d b g)
  | r b( d f g f d f)
  | r e( g bes!) <g bes d>4 r
  | r2 r8 c,( g' bes)
  | r c,( f a c a f c)
  | r d( f bes d bes f d)
  | <c f a>4 r r2
  | r8 a( c f c a bes e)
  | <a, f'>4 r r8 a( e' g)
  | f[ d] << { bes'4( c d) } \\ { f,8[ d] a'[ f g f] } >>
  | r8 g,( c e g e c e)
  | f4 r r8 a,( e' g)
  | f[ d] << { bes'4( c d) } \\ { f,8[ d] a'[ f g f] } >>
  | r8 g,( bes c e c bes c)
  | a \stemUp \slurDown c( f a c a g d') \stemNeutral \slurNeutral
  | e,2.( g8. f16)
  | f8 c'( f a c a g d')
  | c4 r e,8( bes' g e)
  | f4 r <e, c'> r
  | f r r2

  \bar "|."
}

lower = \relative f, {
  \key f \major
  \time 4/4

  <f f'>2 r
  | <f f'> r
  | <c c'>1
  | <f f'>2 r
  | <d d'>1
  | <e e'>2 <c c'>
  | <f f'> r
  | <bes, bes'>2. <a a'>4
  | <g g'>1
  | <c c'>
  | <f f'>4 r r <bes g'>
  | r8 c( g' bes c bes g bes)
  | <f a>4 r <f, f'> r
  | <f f'> r <f f'> r
  | <f f'> r r2
  | <d d'>2 <g, g'>
  | <c c'>4 r r <f d'>
  | r8 g( d' f g f d f)
  | <c e>4 r <c, c'> r
  | <c c'> r <c c'> r
  | <c c'> r r2
  | <d d'>1
  | <g g'>4 r r <c a'>
  | r8 d( a' c d c a c)
  | b( g <d' f!> g, <c e> g <b d> g)
  | c4 r r <g, g'>
  | <c c'> r r <g g'>
  | <es'' g>8( g, <d' f> g, <c es> g <b d> g)
  | <c,, c'>1
  | <c c'>
  | <b b'>2. <c c'>4
  | <f f'>2 <g g'>
  | <c, c'>1
  | <c c'>
  | <c c'>4 r r2
  | <b b'>4 r <c c'> r
  | <b b'> r r2
  | <b b'>4 r <c c'> r
  | <b b'> r r2
  | <bes! bes'!>1
  | <bes bes'>
  | <c c'>
  | <c c'>
  | <d d'>
  | <d d'>
  | <g g'>4 r r <c a'>
  | r8 d( a' c d c a c)
  | <g bes>4 r r2
  | <es, es'>1
  | <es es'>
  | f
  | <ces ces'>
  | <bes bes'>
  | <d d'>
  | <es es'>4 r r2
  | <es es'>4. <d d'>8 <c c'>8.[ <d d'>16 <es es'>8. <e e'>16]
  | <f f'>4 r <bes, bes'> r
  | <es es'>1
  | <f f'>
  | <bes, bes'>4 r r <es' c'>
  | r8 f( c' es f es c es)
  | <bes d>4 r r2
  | g8 r c, r d r d r
  | es4 r <es, es'> <d d'>
  | <c c'>1
  | <cis cis'>
  | <d d'>2 <fis fis'>
  | <g g'>1
  | <a a'>
  | <f! f'!>
  | bes4 r r2
  | <g g'>1
  | <f f'>4 r r2
  | <d d'>1
  | <g, g'>
  | <g g'>
  | <c c'>
  | <f f'>2 r
  | <f f'> r
  | <c c'>1
  | <f f'>2 r
  | <d d'>1
  | <e e'>2 <c c'>
  | <f f'> r
  | <d d'>1
  | <g, g'>
  | <c c'>4 <e e'> r <e e'>
  | <f f'> r <bes, bes'> r
  | <c c'>1
  | <f f'>2. <e e'>4
  | <d d'>2 <b b'>
  | <g g'>1
  | <c c'>2 <e e'>4 r
  | r2 <e e'>4 r
  | <f f'>2 r
  | <bes, bes'> r
  | <f f'>4 r r2
  | <c' c'>1
  | <f f'>4 r r <cis cis'>
  | <d d'>2( <c! c'!>4 <bes bes'>)
  | <c c'>1
  | <f f'>4 r r <cis cis'>
  | <d d'>2( <c! c'!>4 <bes bes'>)
  | <c c'>1
  | <f, f'>4 r r <bes' g'>
  | r8 c( g' bes c bes g bes)
  | <f a>4 r r \clef violin <bes g'>(
  | <c a'>) r <c bes'>2(
  | <f a>4) r \clef bass <c, bes'> r
  | <f a> r r2
  
  \bar "|."
}

dynamics = {
  s4-\p s2.
  | s1*105
  | s8 s8-\p s2.
  | s1
  | s2 s4-\pp s4
}
