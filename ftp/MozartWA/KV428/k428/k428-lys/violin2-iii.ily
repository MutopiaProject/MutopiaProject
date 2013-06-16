\version "2.16.0"

violinIIThirdMov =  \relative bes {
    \key es \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	s16 r4
	| bes2 r4
	| <c es>2 r4
	| R2.*2
	|  f2(\p   bes,4)
	| bes2 r4
	| c2\f r4
	| a2  es''8[(\p  d)]
	|  d[(  c) c( bes c  bes)]

% 10
        |  bes[(  a) a( bes a  bes)]
	|  es,[-. d-. c-. d-. es-. c-.]
	|  d[-. es-. f-. es-. f-. d-.]
	|  c[-. d-. es-. d-. es-. c-.]
	|  d[-. es-. f-. es-. d-. bes-.]
	|  g'[-. f-. es-. d-. es-. es-.]
	| d4 r r
	| <f bes>2. ~
	| <f bes>2. ~
	| <f bes>2. ~
	| <f bes>4  bes8[(\f a g  f)]
	|  f[(  es)] d4 c
	| bes r f'\p
	| g r a
	|  bes8[ bes,-. bes-. bes-. bes-. bes-.]
	|  bes[(  c) c-. c-. c-. d-.]
	| bes4 r
    }

    \repeat volta 2 {
        r4
	| es8\p r g r es r
	| es r es r r4
	| es8 r d r es r

% 30
	| f r d r r4
	| es8 r c r f r
	| d r g r es r
	| es r d r es r
	| d4 r \grace { es'32[( g] } bes4)
	| bes,2 \grace { es32[( g] } bes4)
	| bes,2 r4
	| bes,2\f r4
	| <c es>2 r4
	| R2.*2

% 41
	| as2.\p ~
	|  as8[(  g)] bes4 r
	| des2\f r4
	| c2 r4
	| <c es>2 r4
	| <g es'>2 g'4\p ~
	| g( f  d)
	|  es8[-. bes-. g-. as-. bes-. g-.]
	|  f'[-. es-. d-. es-. f-. d-.]

% 50
	|  es[-. f-. g-. f-. g-. es-.]
	|  d[-. es-. f-. es-. f-. d-.]
	|  es[-. f-. g-. es-. c-. g-.]
	|  c[-. bes-. as-. g-. as-. as-.]
	| g4 r r
	| <g es'>2. ~
	| <g es'>2. ~
	| <g es'>2. ~
	| <g es'>4  g'8[(\f bes as  g)]
	|  g[(  f)] es4 d

% 60
	| es4.  bes8[\ff es f]
	|  g[-. as-. bes(\sf  es) bes-. as-.]
	|  g[-. as-. bes(\sf  es) bes-. as-.]
	|  g[-. as-. bes(\sf  es) bes-. as-.]
	|  g[(  bes)]  es[( d c  bes)]
	|  bes[(  as)] g4 f
	| es r bes'\p
	| c r d
	|  es8[ es,-. es-. es-. es-. es-.]
	|  es[(  f) f-. f-. f-. g-.]
	| es4 r
    }

    \break
    \key bes \major

    \repeat volta 2 {
        r4
	| R2.
	| g2.(\p
	| as
	| g
	|  as)
	| g ~
	| g4( f  es)
	| d2(\fp  f4)
	| g r es

% 80
        |\grace { d32[ f] } bes4.( d8  bes[  d)]
	|  c[( es c es a,  c)]
	|  bes[( d f e es  d)]
	|  c[( d es c c  a)]
	| bes4 r
    }

    \break

    \repeat volta 2 {
         bes8.[(  c16)]
	| d4( bes  a)
	| \slurDown g4.( bes8  g[ bes]
	|  a[ c a c fis,  a)] \slurNeutral
	|  g[( bes d cis c  bes)]
	|  a[( c es c a  fis)]

% 90
	| g4 r r
	| bes,4( a  g)
	| a2.(
	|  bes)
	|  a8[( c a c f  c)]
	|  e[( g e g des  bes)]
	| a4 r r
	| R2.
	| f'2.\f ~
	| f ~
	| f4.( d8  bes[  d)]
	|  c[( es c es a,  c)]
	|  bes[( d f e es  d)]
	|  c[( d es c a  c)]
	| bes4 r
    }
}
