\version "2.6.0"
violinIIFirstMov =  \relative es' {
  \key es \major
  \clef violin

  \repeat volta 2 {
    r16
    | es2\f ~
    | es8 r r4
    | d4(\p e)
    | f8 r r4
    | es!(\f <bes d>)
    | <bes es>8 r r4
    | es2(\p
    | d8) r r8.
  }

  \repeat volta 2 {
    r16
    | es4(\f f)

    % 10
    | g8 r r8. g'16\p
    | f4( des)
    | c8 r r8. g'16\f
    | f8. bes,16 c8. f16
    | es8. as,16 bes8. bes16
    | as8. g16 f8. es16
    | es4( d8)-. r
    | es2\p ~
    | es8 r r4
    | d4( \grace f8 es4)

    % 20
    | d8 r r4
    | des4(\f c)
    | g8 r r4
    | as-.\p r
    | c-. r
    | ces-. r8. d16
    | bes'4( as)
    | g( f)
    | es2(
    | d

    % 30
    | es
    | d)
    | es(
    | d
    | es
    | d)
    | es8 r r8.
  }

  \repeat volta 2 {
    bes'16-\markup { \italic "dolce" }
    | g4( as)
    | bes8 r r8. c16
    | f,4( g)

    % 40
    | as8 r r8. bes16
    | es,4( f)
    | g8 r r8. es16
    | as4( a)
    | bes8 r r8.
  }

  \repeat volta 2 {
    bes16
    | es4( des)
    | c8 r r8. bes'16
    | as4( e)
    | f8 r r8. bes16
    | as8.( e16) f8.( as16)

    % 50
    | g8.( d16) es!8.( d16)
    | c8.( bes16) as8.( g16)
    | g4( f8)[-. r16 bes]
    | g4(-\< as)
    | bes8-\! r r8. c16
    | f,4(\f \grace as8 g4)
    | f r
    | des( c)
    | g8 r r8. es''16-.\mf
    | as,8-. r r8. c16-.

    % 60
    | f,8-. r r8. ces'16-.-\markup { \italic "dim." }
    | d,8-. r r8. ces'16(\p
    | es,8)[-. r16 bes'(] c,!8)[-. r16 as'(]
    | bes,8)[-. r16 g'(] as,8)[-. r16 f']
    | g,8.( bes16) es8. es16
    | f8.( g16) as8.( c16)
    | bes8.( d16) es8.( es,16)
    | f8.( g16) as8.( c16)
    | bes8.( g16) es8. es16
    | g16( f as g) bes( as c bes)

    % 70
    | bes8.( es16) g8[ r16 es,]
    | f8.( g16) as8.( d,16)
    | es4 r8.
  }

  \repeat volta 2 {
    bes'16\f
    | es,8. bes'16 as8.\trill\fz g16
    | f8.\trill\fz es16 d8 r
    | c'8. bes16 as8.\trill\fz g16
    | f4 r
    | bes8. as16 g8.\trill\fz f16
    | es4 r8. bes16
    | c4 c'

    % 80
    | f, r8.
  }

  \repeat volta 2 {
    r16
    | bes,2(
    | c4) r
    | c'2 ~
    | c4 r8. g16
    | as8. des16 c8. f,16
    | g8. ces16 bes8. bes16
    | as8.\trill\fz g16 f8.\trill\fz es16
    | es4( d8)[-. r16 bes']
    | es,8. bes'16 as8.\trill\fz g16

    % 90
    | f8.\trill\fz es16 d8 r
    | bes'2 ~
    | bes4 r
    | es,2 ~
    | es4 r8. g16\p
    | as8.( bes16) c8[-. r16 e,]
    | f8.( g16) as8[-. r16 d,]
    | f8.( ges16) as8[ r16 as](
    | g!8)[-. r16 g]( f8)[-. r16 f](
    | es8)[-. r16 es]( d8)[-. r16 d](

    % 100
    | es4) r8. es16
    | f8.( g16) as8. as16
    | g8.( f16) es8[ r16 bes]
    | c8.( des16) c8.( as'16)
    | g4 r8. es16
    | f8.( g16) as8. as16
    | g8.( f16) es8[ r16 bes]
    | c8.( d16) es8.( as,16)
    | g4 r8.
  }

  \repeat volta 2 {
    r16
    | R2*7
    | r4 r8.
  }

  \repeat volta 2 {
    r16
    | es'4(\f f)
    | g8 r r8. g'16
    | f4( des)

    % 120
    | c8 r r8. g'16
    | f8. bes,16 c8. f16
    | es8. as,16 bes8. bes16
    | bes( as) as( g) g( f) f( es)
    | es4( d8)[-. r16 bes']\p
    | g4( as)
    | bes r8. c16
    | f,4( g)
    | as r8. bes16
    | g4 as8.(\trill g32 as)

    % 130
    | bes8 r r8. es16-.
    | as,8-. r r8. c16-.
    | f,8-. r r8. ces'16-.
    | d,8-. r r8. ces'16(
    | es,8)[-. r16 bes']( c,!8)[-. r16 as'](
    | bes,8)[-. r16 g']( as,8)[-. r16 f']
    | g,8.( bes16) es8. es16
    | d2( 
    | es
    | d)

    % 140
    | es( d-\<
    | es-\>
    | d)\pp
    | es8 r r bes'\mf
  }

  \bar "||"

  g4( as)
  | bes r8 c
  | f,4( g)
  | as r8 c
  | d,!4 es8 f16 g

  % 150
  | as g as g as c bes as
  | g bes c bes f bes c bes
  | es d c bes a g f c'
  | f,8-. bes-. bes-. bes-.
  | bes( a16 g) a8 r
  | r as![-. as-. as-.]
  | as( g16 f) g8 r
  | r es[ d bes']
  | g c g a
  | bes bes,16 c d bes d es

  % 160
  | f8 as! bes d,
  | es bes'\trill c c
  | f,4 r
  | as8.(\trill g32 as) bes8 g
  | es4 as ~
  | as8 g16 f g f es d!
  | c8[-. c'-. c-. c]-.
  | bes4. g'8 ~
  | g[ f-. f-. f]-.
  | f( e16 d) e8 r

  % 170
  | r es![-. es-. es]-.
  | es( d16 c) d8 r
  | r des[-. des-. des]-.
  | des( c16 bes) c8 r
  | r es,[-. es'-. es]-.
  | es( des16 c) des8 r
  | r f,[-. f'-. f]-.
  | f( es16 d!) es8 r
  | r g,[-. g'-. g]-.
  | g( es16 d) c8 c,

  % 180
  | d8.(\trill c32 d) g8 g,16( a)
  | bes!8 g'-. g-. g-.
  | c,8.(\trill bes32 c) f8 f16( g)
  | as8 f-. f-. f-.
  | f( es16 d) es8 es'16( d)
  | c2
  | f,4 r
  | r r8 f'
  | d4 e8.(\trill d32 e)
  | f4 r8 es!

  % 190
  | c4 d8.(\trill c32 d)
  | es4 r8 d
  | es4( a,)
  | bes r
  | es,(\f f)
  | g8 r r8. g'16
  | f4( des)
  | c8 r r8. g'16
  | f8. bes,16 c8. f16
  | es8. as,16 bes8. bes16

  % 200
  | bes( as) as( g) g( f) f( es)
  | es4( d8)-. r
  | << es2 \\ { bes4(\p c) } >>
  | <bes es> r
  | as' g8.( es16)
  | bes4 r
  | des( c)
  | g r
  | es'-. r
  | c'-. r

  % 210
  | as-. r
  | g( f)
  | es( d)
  | es es'
  | d2( 
  | es
  | d
  | es)
  | \slurUp <as,, d>-\<( 
  | <g es'> 

  % 220
  | <bes d> \slurNeutral
  | <bes es>4)-\! r
  | d2(\fz
  | es8) r as-.\ff r
  | g-. r d'-. r
  | es-. r f-. r
  | g-. r <d, bes' f'>-. r
  | <es bes' g'>4 r

  \bar "|."
}
