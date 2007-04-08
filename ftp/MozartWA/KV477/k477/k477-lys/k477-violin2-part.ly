violinII = \relative es'
{
    \key c \minor
    \time 2/2
    \override Staff.Hairpin #'minimum-length = #5

    R1*8
    | es1-\p

% 10
    | d4 f2-\f f4
    | d'1-\p
    | c4 <g, es'>2 <g es'>4
    | <g es'>4 r r2
    | << { d'8 d4 d d } \\ { b8-\f b4 b b } >> \slurUp <g f'>8( ~
    | <g es'>4) r r2
    | << { d'8 d4 d d } \\ { b8-\f b4 b b } >> <g f'>8( ~
    | <g es'>4) r r2
    | R1
    | <bes? g'>8 <bes g'>4 <bes g'>4 <bes g'>4 <bes g'>8( ~

% 20
    | <bes as'>8) \slurNeutral <bes as'>4 <bes as'> <bes as'> <bes as'>8
    | ges'1-\p
    | f4 r r ges8.( f16)
    | f4 r r ges8.( f16)
    | f4 \once \override TextScript #'extra-offset = #'(0 . -1.5)
      f(-\markup { \italic "cresc." } g! as)
    | g-\p es2 d4
    | es2. f8( b)
    | c4 es,2 e8( des)
    | c2 as'4( d,)
    | es a-\f bes f

% 30
    | g c,(-\p d b)
    | c b'( c2) ~
    | c4 c,2( b8 c)
    | d4 <g, g'>2-\f <g g'>4
    | <g g'>8 <g es'>4 <g es'> <g es'> <g es'>8 ~
    | <g es'> <g es'>4 <g es'> <g es'> <g es'>8 ~
    | <g es'> <g es'>4 <g es'> <g es'> <g es'>8
    | bes!8 bes4 bes bes bes8(
    | c) c4 es8 ~ es es4 es8(
    | d) f4 f f f8

% 40
    | <bes, g'>8 <bes g'>4 <bes g'> <bes g'> <bes g'>8
    | <g g'>8 g'4 g8 <d bes'> <d bes'>4 \tieUp \slurDown <d bes'>8( ~
    | <es bes'>) <es bes'>4 \tieNeutral \slurUp <es bes'>8( ~
      <es c'>) <es c'>4 <es c'>8( ~
    | <es bes'>) \slurNeutral <es bes'>4 
      << { bes'4 bes8[( as)] as } \\ 
	 { es8( d) d[( bes]) bes } >>
    | <bes g'>4 g(-\p es' g) ~
    | g des( c e)
    | f( as, f' as)
    | a es!( d! fis)
    | g8-\f 
      << { d4 d8( es) es4 es8( d) d4 d8( es) es4 es8( d) } \\
	 { b4 b8( c) c4 c8( | b) b4 b8( c) c4 c8( b) } >>
      as'8( g fis g d es b)
    | c(-\p b c d es e f fis)
    | g(-\f f! as g f es? d c)
    | b(-\p c d g, as a bes b)
    | c-\f es( f fis g as a b)
    | c4 r r2
    | << { d,8 d4 d d f8( es4) } \\ { b8 b4 b b( g8) g4 } >> r r2
    | << { f'8 f4 f f f8( es) c'4 c c c8 ~ c c4 c c c8 ~ c c4 c c c8 } \\
	 { d,8 d4 d d g,8 ~ g es'4 es8[( e)] e4 e8( f) f4 f f f8( es!) es4 es es es8 } >>
    | r8 c-\p c c r b b b
    | r c( es) es r c16.[( e32)] g8[ g]
    | r f r c bes!( f' es? d)
    | r c( es) es r c g'( bes)
    | c es,( des c bes f' es d)
    | c4 r d-\pp r
    | es r d r
    | << { c1 } { s2-\< s4.-\> s8-\! } >>

    \bar "|."
}