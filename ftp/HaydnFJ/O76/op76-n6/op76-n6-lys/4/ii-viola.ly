\version "2.6.0"
violaSecondMov =  \relative g {
  \key es \major
  \clef alto

  \override Staff.Hairpin   #'minimum-length = #3

  g4( as g)
  | << { bes2.\fermata } { s4-\< s4-\!-\> s4-\! } >>
  | as4( bes as)
  | << { c2.\fermata } { s4-\< s4-\!-\> s4-\! } >>
  | R2.
  | c4( as f)
  | g( f2)
  | g4 r r
  | g'4( f es)

  % 10
  | d( es e)
  | f8( c bes) c( as a)
  | bes4 f'2
  | es4 es,2 ~
  | es4 r r
  | g4( f2^\fz
  | es8) es'[(-.\p es-. es-. es-. es)]-.
  | es es es es es es
  | f4 es2\fz ~
  | es8 d c4\fz f ~

  % 20
  | f8 bes(-.\p bes-. bes-. bes-. bes)-.
  | bes bes bes bes bes bes
  | bes bes bes bes bes bes
  | bes4 a2
  | g4 f2
  | es4 d2
  | es4 r r
  | bes2.(
  | a4.) a8[ a a]
  | a2.(-\>

  % 30
  | bes4)-\! r r
  | d,( c d)
  | es( f ges)
  | f2. ~
  | f4 r r
  | es( as ges)
  | d-\< << { es2\fermata-\! } { s4-\> s4-\! } >>
  | es'4( des ces)
  | g!-\< << { as2\fermata-\! } { s4-\> s4-\! } >>
  | R2.

  % 40
  | ces4( bes ges)
  | f( d es)
  | d8 bes''8[(-. bes-. bes-. bes-. bes])-.
  | bes(-. bes-. bes-. bes-. bes-. bes)-.
  | bes bes as as f, f
  | as' as g g es, es'
  | es4 bes2
  | c2.
  | bes
  | bes2 es4

  % 50
  | es r r
  | f,2\f r4
  | r4 as'4(\p g
  | as bes c)
  | r des,( c
  | des) es f\fz ~
  | f2 g4\f ~
  | g g2
  | f2.
  | es

  % 60
  | d!2( es4)
  | f4 r r
  | g,2.
  | f4. f8[ f f]
  | f2.-\>
  | es4-\!\fermata r8 des'[\pp des des]
  | des2.(
  | ces4) r r
  | R2.
  | g!4( as g)

  % 70
  | as2.
  | g4( as g)
  | as2.(
  | g4) es es
  | es2.\fermata

  \bar "|."
}
