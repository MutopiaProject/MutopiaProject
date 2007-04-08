\version "2.6.0"
violinISecondMov =  \relative es' {
  \key es \major
  \clef violin

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 8)

  es4( d es)
  | f << { g2\fermata } { s4-\< s8-\!-\> s8-\! } >>
  | f4( e f) 
  | g << { as2\fermata } { s4-\< s8-\!-\> s8-\! } >>
  | c4( b c)
  | \stemUp g as ~ as16 bes32( c bes as g f) \stemNeutral
  | es4.( d8[ as' d,)]
  | es( g bes d es g)
  | bes2.-\< ~

  % 10
  | bes4.-\! b8[( c bes)]
  | as4( g f8) f'
  | es4( d2)\trill
  | es4 des,,4..(\trill c32 des)
  | c8 c' ~ c16 b( d! c f es c as)
  | g( as a bes) as,4..( g32 as)
  | g4r r
  | c'(\p b c)
  | d es4.(\fz d8
  | c4) f4.(\fz es8

  % 20
  | d4) r r
  | f(\p e f)
  | fis g4.( f8)
  | \times 2/3 { e16[( g bes) des-. bes-. g-.] e[( f a) c-. a-. f-.] } r4
  | \times 2/3 { d16[( es! g) bes-. g-. es-.] cis[( d f) a!-. f-. d-.] } r4
  | \times 2/3 { b16[( c! es) g-. es-. c-.] a![( bes d) f-. d-. bes-.] } bes'4 ~
  | \times 2/3 { bes16[ fis( g) d( es) b(] 
    c[) fis,( g) d( es) b(] 
  c[) es g b c g'] }
  | \times 2/3 { e,[( f! fis g as a)] 
    bes![( f fis g as a)] 
  bes[( d f! a! bes d)] }
  | f4. f8[ f f]
  | f2.(-\>

  % 30
  | bes,,4)-\! r r
  | r r bes(
  | a bes c)
  | \times 2/3 { d16[( f as c bes as)] 
    g[( f es d c bes)] 
  as[( g as c as f)] }
  | es4( d8)-. r \times 2/3 { a16[( bes b c des d)] }
  | es4( d es)
  | f-\< << { ges2\fermata } { s4-\!-\> s4-\! } >>
  | as4( g! as)
  | bes-\< << { ces2\fermata } { s4-\!-\> s4-\! } >>
  | ces4( bes ces)

  % 40
  | \stemUp f, ges ~ ges16 ces32( bes as ges f es) \stemNeutral
  | d!8.( f16) as4 ges8.(\trill f32 ges)
  | f4 r r
  | R2.
  | \times 2/3 { c'16[( des c) bes'-. g!-. e-.]
    c[( as') e( f) b,( c)]
    g[( as) e( f) as-. c-.] }
  | \times 2/3 { bes![( c bes) as'-. f-. d]-. 
    bes[( g') d( es) a,( bes)]
    fis[( g) d( es) g-. bes-.] }
  | as2( g4)
  | \times 2/3 { f16[( g) e( f) g( as)]
    b[( c) e( f) g( as)]
    b[( c bes as g f)] }
  | es4( \times 2/3 { d16[) es(-. f-. g-. as-. bes)]-.
    c[(-. d-. es-. f-. g-. as)]-. }
  | bes2( b4)

  % 50
  | c r r
  | as,,,2(\f\trill g16 as) r8
  | es''4(\p d es)
  | f g2\fz
  | f4( e f)
  | g as2\fz
  | a4 bes2\fz
  | b4 c4.( bes8)
  | a2( bes4)
  | g2( as!4)

  % 60
  | as2( g4)
  | \times 2/3 { f16[-. b( c) g( as) e(]
    f[) b,( c) g( as) e(]
  f[) c'-. bes-. as-. g-. f-.] }
  | \times 2/3 { es![ bes' a as g f]
    es[ es' d c bes as]
  g[ bes d es g bes] }
  | bes4. bes8[ bes bes]
  | bes2.(-\>
  | es,,4)-\!\fermata 
  r8 es'[\pp^\markup { "sul D" } es es]
  | es2.( 
  | as,,4) r8 ces'[ ces ces]
  | bes4 r d,8-. r
  | es4( d es)

  % 70
  | f2.
  | es4( d es)
  | f2.(
  | es4) <g, es'> <g es'>
  | <g es'>2. 

  \bar "|."
}
