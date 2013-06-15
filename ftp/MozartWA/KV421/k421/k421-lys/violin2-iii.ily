\version "2.16.0"

violinIIThirdMov =  \relative a' {
    \key d \minor
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	r4
	| r r  a8.[\f a16]
	| bes4( g  a)
	| f r  f8.[ f16]
	| a4( cis  e)
	| e, r  e8.[ e16]
	| g4( b  d)
	| d, r gis
	| a2.
	| g!4 f e
% 10	
	| d2
    }

    \repeat volta 2 {
	r4
	| b'2\f r4
	| a2 r4
	| r a(\p  dis,)
	| e2 gis4(
	| a b  c)
	| b( a gis
	| g! a  bes)
	| a( g  fis)
	|   e8[(_\cresc f! e f e  f)] 

% 20
	|  e[( f e f e  a)]
	| f4\f e  d'8.[ d16]
	| cis2.(
	|  c!4)\p r  c8.[ c16]
	| b2.(
	|  bes!4) r  bes8.[ bes16]
	| a2.
	| bes4 d,(  e)
	|  f(\pp  e  d)
	| cis r r

% 30
	| r r  a'8.[\f a16]
	| bes4( g  a)
	| f r  f8.[ f16]
	| a4( cis  e)
	| e, r  e8.[ e16]
	| g4( b  d)
	| d, r gis
	| a2.
	| g!4 f e
	| d2
    }

    \key d \major

    \repeat volta 2 {
        r4

% 40
	| <<
	    { d4_ \markup{\italic "sempre piano"} r r }
	    s4^ \markup{\upright "pizz."}
          >>
	| d'4 r r
	| <a, g'> <a g'> <a g'>
	| <a g'> r a'
	| a r d
	| b r e,
	| fis fis d
	| a2
    }

    \repeat volta 2 {
        r4
	| <a g'> <a g'> <a g'>
	| <a g'> r r

% 50
	| <fis' a> <d a'> <d a'>
	| <d a'> r r
	| <e d'> r r
	| <e d'> r r
	| <a, e' cis'> <e' cis'> <e cis'>
	| <a, e' cis'> r r
	| <a d> r r
	| <d a'> r r
	| <a e' cis'> <e' cis'> <e cis'>
	| <a, e' cis'> r <a e'>

% 60
	| <a d> r <fis' d'>
	| <g cis> r <g cis>
	| <fis d'> <a, fis'> <a fis'>
	| <a fis'>2
    }
}
