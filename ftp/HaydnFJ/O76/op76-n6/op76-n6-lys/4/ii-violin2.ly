\version "2.6.0"
violinIISecondMov =  \relative bes {
  \key es \major
  \clef violin

  \noTupletBracket
  \set tupletSpannerDuration = #(ly:make-moment 1 8)

  bes2.
  | d4 << { es2\fermata } { s4-\< s8-\!-\> s8-\! } >>
  | c2.
  | e4 << { f2\fermata } { s4-\< s8-\!-\> s8-\! } >>
  | as4( g as)
  | e( f c)
  | bes( as2)
  | g4 r r
  | es''4( d es)

  % 10
  | f g2
  | f4( e f) 
  | g as2
  | g4 bes,,2(
  | c4) r r
  | es4( d2^\fz
  | es8) g[(-.\p g-. g-. g-. g)]-.
  | g g g g g g
  | b4( c\fz b)
  | c <f, c'>2\fz

  % 20
  | <f d'>8 d'(-. d-. d-. d-. d)-.
  | d d d d d d
  | d d d d d d
  | des4 c2
  | bes4 a2
  | g4 f2
  | g4 r r
  | d2.(
  | <c es>4.) <c es>8[ <c es> <c es> ]
  | <c es>2.(-\>
  | <bes d>4)-\! r r

  % 30
  | bes( a bes)
  | c( d es)
  | <as,! d>2. ~
  | as4 r r
  | bes2. ~
  | << bes\fermata { s4-\< s8 s8-\!-\> s4-\! } >>
  | es2. ~
  | << es\fermata { s4-\< s8 s8-\!-\> s4-\! } >>
  | as4( g as)
  | d, es2

  % 40
  | as, a4(
  | bes) r r
  | c'8(-. c-. c-. c-. c-. c)-.
  | <g c> <g c> <as c> <as c> <as c> <as c>
  | <f bes> <f bes> <g bes> <g bes> g g
  | g4( f es)
  | f2. ~
  | f
  | es2( des4)
  | c r r

  % 50
  | d!2\f r4
  | R2.
  | es'4(\p d es)
  | f( g) r
  | r ges,(\fz f)
  | r as(\fz g!)
  | r4 bes8.( as16 g8 c)
  | \times 2/3 { c16[( es f) a-. f-. es]-.
    c[( es f) a-. f-. es]-.
  bes[( d f) bes-. f-. d]-. } \noTupletNum
  | \times 2/3 { bes[( des es) g-. es-. des]-.
    bes[( des es) g-. es-. des]-.
  as[( c es) as-. es-. c]-. }

  % 60
  | \times 2/3 { as'[-. f-. d!-. bes-. as-. f]-.
    d[ f as c as f] 
  es[ g b c d es] } \tupletNum
  | c4 r r
  | es,2.
  | <as, d>4. <as d>8[ <as d> <as d> ]
  | <as d>2.(-\>
  | <g es'>4)-\!\fermata r8 g'[\pp g g]
  | g2.(
  | as4) r8 as[ as as]
  | ges4 r as,8-. r
  | bes4( ces bes)

  % 70
  | ces2.
  | bes4( ces bes)
  | \times 2/3 { ces16[( as bes ces as bes)] \noTupletNum
    ces16[( as bes ces as bes)]
    ces16[( as bes ces as bes)] }
  | bes4 bes bes
  | bes2.\fermata

  \bar "|."
}
