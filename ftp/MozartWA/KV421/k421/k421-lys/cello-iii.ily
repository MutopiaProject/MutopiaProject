\version "2.16.0"
celloThirdMov =  \relative d' {
    \key d \minor
    \time 3/4
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	 d8.[\f d16]
	| d2. ~
	| d ~
	| d4 r  d8.[ d16]
	| cis2.(
	|  c!4) r  c8.[ c16]
	| b2.(
	|  bes!4) r  bes8.[ bes16]
	| a4( g  f)
	| g a a,

% 10
        | d2
    }

    \repeat volta 2 {
        r4
	| gis2\f r4
	| a2 r4
	| r a,(\p  f')
	| e2. ~
	| e ~
	| e ~
	| e ~
	| e ~
	| e4(_\cresc d  c)

% 20
	| b( gis  a)
	| d\f e  e8.[ e16]
	| a,4 a' r
	| r r  d,8.[\p d16]
	| g,4 g' r
	| r r  c,8.[ c16]
	| f,4 f' r
	| bes,2. ~
	| bes\pp
	| a4 r  d'8.[\f d16]

% 30
	| d2. ~
	| d ~
	| d4 r  d8.[ d16]
	| cis2.(
	|  c!4) r  c8.[ c16]
	| b2.(
	|  bes!4) r  bes8.[ bes16]
	| a4( g  f)
	| g a a,
	| d2
    }

    \repeat volta 2 {
        \key d \major

	r4

% 40
	| d^ \markup{\upright "pizz."} r r
	| d' r r
	| a e cis
	| a r cis'
	| d r fis,
	| g r a
	| d a fis
	| d2
    }

    \repeat volta 2 {
        r4
	| a' e cis
	| a a' r

% 50
        | d a fis
	| d d' r
	| b, b' r
	| e,, e' r
	| a e cis
	| a r r
	| d r r
	| d r r
	| a' e cis
	| a r cis

% 60
        | d r fis
	| a r a,
	| d a fis
	| d r
    }
}
