\version "2.16.0"
celloFourthMov =  \relative d' {
    \key d \minor
    \time 6/8
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	r8
	| d4 d8 d4 d8
	| a4 a8 a4 a8
	| d,4 d8 d4 d8
	| a4 a'8 a,4 a'8
	| g4 g8 g4 g8
	| f4 f8 f4 fis8
	| g4 g8 a4 a,8
	| d,4 d'8 d, r
    }

    \repeat volta 2 {
	r8
	| d'4 d8 d4 d8

% 10
	| e4 e8 e4 e8
	| f4 f8 f4 d8
	| c4 c'8 c4 c8
	| bes4\fp bes8 bes4 bes8
	| b4\fp b8 b4 b8
	| c4 c8 c,4 c8 
	| f4 c8 f,4 r8
	| f'4 f8 f4 d8
	| c4 c'8 c4(  cis8)
	| d4( c8 b4  bes8)

% 20
	| a4 a8 a4 a8
	| g4\f g8 g4 g8
	| g4 g8 g4 g8
	| a4\p a8 a,4 a8
	| d4 a8 d, r
    }

    \repeat volta 2 {
        r8
	| d'2.
	| a
	| bes
	| a
	| g\f

% 30
	| f8 r fis(  g) r  a(\p 
	|  bes) r bes'(  a) r a,
	| \stemUp \slurDown d4( a8  d,) r \slurNeutral \stemNeutral
    }

    \repeat volta 2 {
        r8
	| d'2.\f
	| e4. c
	| f, ~  f8[ a'(  f)]
	| c'4.(  c,8) r c'\p
	| bes4( c8  des4) des,8(
	|  d!4) d8 d4 d8(\f
	|  c4) c8 c4 c8

% 40
	| f4( c8  f,) r r
	| f'4\f f8  f[( a  f)]
	| c'4\p c8 c,4 cis8\f
	| d4 d8  d[( f  d)]
	| a'4 a8 a,4 a8\f
	| g4 g8 g4 g8
	| g' r r gis\p r r
	| a4. a,
	| \stemUp \slurDown d4( a8  d,) r \slurNeutral \stemNeutral
    }

    \repeat volta 2 {
        r8
	| d'_\roundMF r r d r r

% 50
	| d r r cis r r
	| d r r d r r
	| a r r a r r
	|  g'[-.\p cis-. e-.] g r r
	|  f,[-. a-. d-.] f r r
	|  g,[-. cis,-. d-.]  g[-. a-. a,-.]
	|  d[-. a-. f-.] d r
    }

    \repeat volta 2 {
        r8
	| d' r r d r r
	| e r r e r r
	| f r r d r r

% 60
        | c r r c r r
	|  bes[-.\p e-. g-.] bes r r
	|  d,[-. f-. b-.] d r r
	| c4. c,
	|  f8[-. c-. a-.] f r r
	| f'_\roundMF r r f r r
	| c r r cis r r
	| d r r d r r
	| a r r a r r
	|  g'[-.\p cis-. e-.] g r r

% 70
	|  gis,,[-. b-. d-.]  gis[( b  d)]
	| a4. a,
	|  d8[-. a-. f-.] d-. r
    }

    \repeat volta 2 {
        r8
	| r  d'[ d] r  d[ d]
	| r  a[ a] r  a[ a]
	| r  bes[ bes] r  bes[ bes]
	|  a[ a a] a4 r8
	| r  cis[ cis] r  cis[ cis]
	| r  d[ d] r  d[ d]
	| g,4. a

% 80
        | d4(  a8) d, r
    }

    \repeat volta 2 {
        r8
	| r  d'[ d] r  d[ d]
	| e,4.(\fp  e')
	| r8  f[ f] r  bes,[ bes]
	| c4.(  c,8) r r
	| r  e'[ e] r  e[ e]
	| r  d[ d] r  d[ d]
	| c4 r8 r4 r8
	|  f,16[(  f') f-. f-. f-. f-.] f8 r r
	| R2.

% 90
        | c4.\sf ~ c8 r  a(\p
	|  d,)  r r bes'4.
	| a\sf ~ a8 r r
	| r  e'[\p e] r  e[ e]
	| r  b[ b] r  b[ b]
	| a4 r8 r4 r8
	|  d,16[(  d') d-. d-. d-. d-.] d8 r
    }

    \repeat volta 2 {
        \key d \major

	r8
	| d2.\p
	| a
	| b4.  cis8[-. d-. e-.]

% 100
	| a,4. ~ a8 r r
	|  g''16[( fis g fis e d]  cis[ b cis b a  g)]
	|  fis[( e fis e d cis]  b[ a b a g  fis)]
	| e8-. r fis-. g-. r a-.
	|  d[ d d] d r
    }

    \repeat volta 2 {
        r8
	| r4 r8  d[(\p  e) e-.]
	|  a[ e cis] a r r
	| r4 r8  d[(  e) e,]
	|  a[ cis e] a4 r8
	|  g'16[( fis g fis e d]  cis[ b cis b a  g)]
	|  fis[( e fis e d cis]  b[ a b a g  fis)]
	| e8-. r fis-. g-. r a-.
	|  d[ d d] d r
    }

    \key d \minor
    \break

    r8
    | d'4\p d8 d4 d8
    | a4 a8 a4 a8
    | d,4 d8 d4 d8
    | a4 a8 a4 a'8
    | g4 g8 g4 g8
    | f4 f8 f4 fis8
    | g4 gis8 a4 a,8
    | d4( a8  d,) r r
    | R2.

% 120
    | r4 r8 r r \times 2/3 {  a''16[_\roundF a a] }
    | a8 r \times 2/3 {  a16[ a a] } a8 r \times 2/3 {  a16[ a a] }
    | a4.(  a,8) r r
    | R2.
    | e''4._\roundP ~ e8 r r
    | R2.
    | b2.(  a8) r r r4 \times 2/3 {  bes!16[_\roundF bes bes] }
    | bes8 r \times 2/3 {  bes16[ bes bes] } bes8 r \times 2/3 {  bes16[
      bes bes] }
    | bes4.(  cis,8) r r
    | R2.*2
    | a'8_\roundP r r a, r r
    | d r r r4 r8
    | r4 r8 a'4.(
    |  d,8) r r r4 r8
    | r4 r8 a4.
    | d,2.\f ~
    | d ~
    | d ~
    | d4 r8 r4 r8
}
