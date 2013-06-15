\version "2.16.0"
violaSecondMov =  \relative c' {
    \key f \major
    \time 6/8
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	c8\p r c bes4.
	| a4(  c8) c r r
	| r4 r8 r r16  f,[(\mf a  c)]
	| f8\p r f  f[( e  d)]
	|  c[( d e]  f) r r
	| r4 r8 r r16  f,[(\f a  c)]
	| f4.(  d8) r16  d[(\p e  f)]
	| g4(  f8) e r r
    }

    \repeat volta 2 {
	| es8\p r es d(  f4)

% 10
	| es4(\f  d16.[  b32)] c8-. r r
	| c4.(\p  bes!8) r r
	| bes4(\pp  g8) d' r r
	| r r16  d,16[(\mf fis a]   d8)[ a(-.  a)-.]
	| a r r c r r
	| c r c bes4.
	| a4(  c8) c-. r r
	| r4 r8 r r16  f,[(\mf a  c)]
	| f8\p r f  f[( e  d)]
	|  c[( d  e)] f8 r r

% 20
	| r4 r8 r r16  a,[(\f c  f)]
	| a4.(  a,8) r16  f'[(-.\p f-.  f)-.]
	| r8 r16  g[-. g(  as)] as8 r16  f[(-.\mf f-.  f)-.]
	| f4(  c8) c4. ~
	| c8 r16  cis[(\p d  bes)] c4 c,8
	| d r16  g[(\f f  as)] c4(  bes8)
    }

    \alternative {
	{
	    | a! r r c\p r r
	}

	{
	    | a! r r c\p r r
	}
    }

    |  c[-. c-. c-.] c-. r r
    |  e[-. e-. e-.] e-. r r

% 30
    |  as,[-. as-. as-.] as-. r r
    |  e[-. e-. e-.] e-. r r
    |  g'[-. <c,, g'>-.] r  c''[-. <c,, c'>-.] r
    |  d''[-. <c,, as'>-.] r  g''[-. <b, g'>-.] r
    | r16  g'[\p g g] r as r  as[ as as] r g
    |  g8[ g, g] g r r
    | as4.(  g)
    |  as4.  des,16[(_\cresc g  bes) bes(-. g-.  g)-.]
    | << { \stemUp \tieUp es'2. ~ | \stemDown <c es>4. }
        \context Voice = "x" { \stemDown as4.\p des | s }
      >> \stemNeutral \tieNeutral  des,16[(_\cresc as'  c) c(-. c-.  c)-.]

% 40
    |  as2.\p ~
    | << { as2. } \context Voice = "x" { s8 s8_\cresc } >>
    | f8\mf r f es r des
    | c r r r4 r8
    |  c'[-.\p c-. c-.] c-. r r
    |  c[-. c-. c-.] c-. r r
    |  c[-. des-. c-.] b r r
    |  e,[-. e-. e-.] e-. r r
    |  c'[-.\f e,-.] r  c'[-.\f e,-.] r
    |  c'[-.\f e,-.] r  c'[-.\f e,-.] r

% 50
    | r r16  c[(\p e  g)] c8 r r
    | r r16  e,[( g  c)]  e8[(-. e-.  e)-.]
    | d4.(_\cresc  e)
    | c8\p r c bes4.
    | a4(  c8) c r r
    | r4 r8 r r16  f,[(\mf a  c)]
    | f8\p r f  f[( e  d)]
    |  c[( d  e)] f r r
    | r4 r8 r r16  f,[(\f a  c)]
    | f4.(  d8) r16  d[(\p e  f)]

% 60
    | g4(  f8) e r r
    | es\p r es d(  f4)
    | es4\f  d16.[(  b32)] c8-. r r
    | c4.(  bes!8) r r
    | bes4(\pp g8  d') r r
    | r r16  d,[(\mf fis a]   d8)[ a(-.  a)-.]
    | a r r c\p r r
    | c\p r c bes4.
    | a4(  c8) c r r
    | r4 r8 r r16  f,[(\mf a  c)]

% 70
    | f8\p r f  f[( e  d)]
    |  c[( d  e)] f r r
    | r4 r8 r r16  a,[(\f c  f)]
    | a4.(  a,8) r16  f'[(-.\p f-.  f)-.]
    | f8 r16  g[-. g(  as)] as8 r16  f[(-.\mf f-.  f)-.]
    | f4(  c8) c4. ~
    | c8 r16  cis[(\p d  bes)] c4 c,8
    | d r16  g[(\f f  as)] c4(  bes8)
    | a! r r c\p r r
    | f r r f r r

% 80
    | d\mf r r r r16  d[(\f b  d)]
    | f8 r r r4 r8
    | r8 r16  a,[(\f f a]  c4.) ~
    | c8 r r e4.(\p
    |  f8) r r c4. ~
    | c8 r r r4 r8
    | r r16  a[(\mf c  f)]  a8[ a-.\p a-.]
    | a r r r4 r8
}
