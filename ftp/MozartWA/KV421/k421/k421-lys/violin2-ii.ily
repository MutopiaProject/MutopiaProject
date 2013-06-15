\version "2.16.0"
violinIISecondMov =  \relative f' {
    \key f \major
    \clef violin
    \time 6/8

    \noTupletBracket

    \repeat volta 2 {
	f8\p r f d4.
	| c4(  e8) f r r
	| r r16  a,16[(\mf c f]   a8)[ a(-.  a)-.]
	| a\p r a  bes[( c  d)]
	| a4(  g16[^\trill f32 g]  f8) r r
	| r r16  c[(_\cresc f a]   c8)[ c(-.  c)-.]
	| c4.(\f  g8) r16  g[\p g(  c)]
	|  c8.[(  d16) b8-.] c r r
    }

    \repeat volta 2 {
	g8\p r g g4(  b,8)
% 10
	|   c[(\f  g) g'] g-. r r
	| a4.(\p  g8) r r
	| g4.(\pp  fis8) r r
	| r4 r8 r  fis[(-.\mf   fis)-.]
	| fis r r g\p r r
	| f! r f d4.
	| c4(  e8) f r r
	| r r16  a,16[(\mf c f]   a8)[ a(-.  a)-.]
	| a8\p r a  bes[( c  d)]
	| a4(  g16[^\trill f32 g]  f8) r r
% 20
	| r r16  c16[(_\cresc f a]   c8)[ es(-.  es)-.]
	| es4.(\f  c8) r16  c[-.\p c(  bes)]
	| bes8 r16  des[-. des(  d)] d8 r16  as[\mf as(  a)]
	|  a8.[(  f16) a,8]  g8.[(  bes16) g8]
	| a8 r16  bes'[(\p a  g')]  f8.[(  g16) e8-.]
	| f8 r16  bes,,16[(\f a  f')]  f8.[(  g16) e8-.]
    }

    \alternative {
	{
	    f8 r r a\p r r
	}
	{
	    f8 r r a\p r r
	}
    }

     f8[-. f-. f-.] f-. r r
    |  g[-. g-. g-.] g-. r r

% 30
    |  f[-. des-. c-.] b-. r r
    |  g[-. g-. g-.] g-. r r
    |  c'[-. c,-.] r  es'[-. es,-.] r
    |  f'[-. d,-.] r  f'[-. d-.] r
    | r16  c[(\p  es) es-.] r es r  d[ d d] r d
    |  es8[ es, es] es r r
    | <<
        { es2. ~ | es4. } \\
        { c4. des | c }
      >>
      g16[(_\cresc  bes
       des) des(-. des-.  des)-.]
    | <c es>4.\p <bes g'>
    | << { as'4.(  ges)_\cresc } \\ as,2.  >>

% 40
    | f'4.(\p  es)
    | << des4. { s8 s4_\cresc } >>  c8.[( es16 des  c)]
    |   c[(\mf  bes a! bes des  bes)]
       bes[( as g as bes  g)]
    |  as[-. as-. c-. c-. es-. es-.] as,8 r r
    |  f'[-.\p f-. f-.] f-. r r
    |  g[-. g-. g-.] g-. r r
    |  as,[-. as-. as-.] g-. r r
    |  g[-. g-. g-.] g-. r r
    |  g'[-.\f g,-.] r <g e' c'>[-. g-.] r
    | <c g' e'>[-. g-.] r <e' c' g'>[-. g,-.] r

% 50
    | R2.
    | r8 r16_\p  g[( c  e)]  g8[(-. g-.  g)-.]
    |  f4.(_\cresc  g) 
    | f8\p r f d4.
    | c4(  e8) f r r
    | r r16  a,16[(_\mf c f]   a8)[_\cresc a(-.  a)-.]
    | a8\p r a  bes[( c  d)]
    | a4(  g16[^\trill f32 g]  f8) r r
    | r r16  c16[( f a]   c8)[ c(-._\cresc  c)-.]
    | c4.(\f  g8) r16  g16[\p g(  c)]

% 60
    |  c8.[( d16  b8)] c r r
    | g\p r g g4(  b,8)
    |   c[(\f  g) g'] g-. r r
    | a4.(\p  g8) r r
    | g4.(\pp  fis8) r r
    | r4 r8 r  fis[(-.\mf   fis)-.]
    | fis r r g\p r r
    | f!\p r f d4.
    | c4(  e8) f r r
    | r r16  a,16[(\mf c f]   a8)[ a(-.  a)-.]

% 70
    | a\p r a  bes[( c  d)]
    | a4(  g16[^\trill f32 g]  f8) r r
    | r r16  c[(_\cresc f a]   c8)[ es(-.  es)-.]
    | es4.(\f  c8) r16  c[-.\p c(  bes)]
    | bes8 r16  des[-. des(  d)] d8 r16  as[-.\mf as(  a)]
    |  a8.[ f16 a,8]  g8.[(  bes16) g8]
    | a8 r16  bes'16[(\p a  g')]  f8.[(  g16) e8-.]
    | f r16  bes,,16[(\f a  f')]  f8.[(  g16) e8-.]
    | f r r a\p r r
    | c r r bes r r

% 80
    | as\mf r r r r16  d,16[(\f b  d)]
    | f8 r r r  f[(-.\p  f)-.]
    |  f4._\cresc ~   f8[(  g)] r16 bes,16(\f
    |  a8) r r g'4.(\p
    |  f8) r r c4(  bes16.[  g32)]
    | a8 r r r r16   a[(_\cresc c f] 
    |  a8) r16  c,[( f  a)]  c8[-. c-.\p c-.]
    | c r r r4 r8
}
