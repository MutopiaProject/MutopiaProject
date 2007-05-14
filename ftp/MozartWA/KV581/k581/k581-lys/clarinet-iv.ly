#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

clarinetFourthMov =  \relative c'' {
    \key c \major
    \clef violin

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	R1*2
	| c4-.\p c-. g'-. g-.
	| e4.(\trill  d16[  e)] d2
	| R1*2
	| c4-. c-. d-. d-.
	| b4.(\trill  a16[  b)] c2
    }

    \repeat volta 2 {
	| R1*6
	| c4-. c-. d-. d-.
	| b4.(\trill  a16[  b)] c2
    }

    % Var. I

    \repeat volta 2 {
        |  g'8[( e] c'4.  b8[ a  g)]
	|  g[(  f)] f4.(  d8[ b  g)]
	|  c[ g c, e']  d[ g, g, f'']

%%% 20
	|  e[( c g'  e)]  d[( e f  fis)]
        |  g[( e] c'4.  b8[ a  g)]
	|  g[(  f)] d'4.(  b8[ g  f)]
	| \stemDown  e[ c, b''(  c)] \stemUp  d,[ f,, gis''(  a)]
	|  g,,[ f''( d  b)] \stemNeutral c4 r
    }

    \repeat volta 2 {
        |  f8[-. g,,] b''4.(  c8[ e,  a)]
	| g4(  f8[\trill e16 f]  e4) r
        |  f8[-. g,,] b''4.(  c8[ e,  f)]
	|  fis[( g a g]  d[ e f  fis)]
	|  g[-. c,,] c''4.  c,8[( d  e)]

%%% 30
	|  f[-. d,] d''4.  b,8[( c  d)]
	|  e[( f fis g]  gis[ a b  c)]
	|  d,[( f!16 e]  g![ f a g]  c,4) r
    }

    % Var. II

    \repeat volta 2 {
        | R1*4
	| g'1\p ~
	|  g8[( fis g a]  g[ f e d)]
	| c r c,4 a f
%%% 40
	| g4.(\trill  fis16[  g)] c4 r
    }

    \repeat volta 2 {
        | R1*4
	| g''1\p ~
	|  g8[( fis g a]  g[ f e  d)]
	| c r c,4 a f
	| g4.(\trill  fis16[  g)] c4 r
    }

    % Var. III

    \repeat volta 2 {
        | R1*4
	| c4( es g  c,)
	| b( d g  b,)
	| c( es g  b,)
	| c g'( es  c)
    }

    \repeat volta 2 {
        | R1*4
	| c4( es g  c,)
	| b( d g  b,)
	| c( es g  b,)
	| c( g' es  c)
    }

    % Var. IV

    \repeat volta 2 {
        |  c16[ e! g c]  e,[ g c e]  g[ e c g]  e[ g e c]
	|  g[ b d f]  g[ b d f]  g[ f d b]  g[ d b g]
	|  c[ g' e g]  c,[ g' e g]  g,[ d' b d]  g,[ d' b d]
	|  c[ g' e g]  c,[ g' e c]  g[ b d g] g,8 r
	| R1*4
    }

    \repeat volta 2 {
        | f8 r b''2(  c4)
	| g(  f8[\trill e16  f)] e4 r
	| f,,8 r b''2  c8[(  e,)]
	| g4.( e8  d4) r
	|  c,16[ e g c]  e,[ g c e]  g[ e c g]  e[ g e c]
	|  g[ b d f]  g[ b d f]  g[ f d b]  g[ d b g]
	|  a[ c b c]  a[ c b c]  f,[ d' a d]  f,[ d' a d]

%%% 80
	|  g,[ d' b d]  g,[ d' b d]  c[ e g c] c,8 r
    }

    |  e,16[ g c e] e,8 r  f16[ a c f] f,8 r
    |  fis16[ a d fis] fis,8 r  g16[ b d g] g,8 r
    | r2 r4 r8 g'8(\p
    |  f[ d b g]  f2)\fermata

    % Var. V

    \repeat volta 2 {
        | R1*3
	| r4 r8 d''(  es[ e f  fis)]
	| g4.(  e8)  c16[( d e f!]  g[ a b  c)]

%%% 90
	| \times 2/3 {  c8[( b bes] }  a16[ as g  fis)] f4 r8. d16
	| e8 g4 c8 ~ \times 2/3 {  c8[ d, e]  f[ g a] }
	| c,4( \grace {
\override Stem   #'stroke-style = #"grace"
   \cue e32 
  \revert Stem #'stroke-style }
  d8.[  c16)] c4 r
    }

    \repeat volta 2 {
        |  f,,32[( g b d g b d  g)] b4.( c8   e,)[ a-.]
	| g4(-.  fis8[-. f-.]  e4)-. r
        |  f,,32[( g b d g b d  g)] b4.(  c8)  e,16[( f fis  g)]
	| g4.( e8  d4) r
	| R1*4
    }

    | e4..( f16  d8) r r4
    | f4..( g16  e8) r r4
    | g2.(  a8.[  b16)]
    | c4( a e  fis)
    | a2\fermata g8 r r4\fermata

    % Coda

    | R1
    | r2 r8  g[\p a b]
    |  c[( b a\trill  g)] g[( f e\trill  d)]
    |  c[( d e  f)]  d[( b a  g)]
    | g'4\f g e e
    |  f8.[( g16 a8.  f16)] d4 d
    | c c d d
    | b4.(\trill  a16[  b)] c4 r
    | R1*4
    | g'4-. g-. g( fis
    |  f!) f-. f( e

%%% 120
    |  es) es des(-. des-.
    | b-. b-.  c)-. r
    | R1*4
    | a'4-. a-. a( as
    |  g) g-. g( fis
    |  f!) f-. e-. e-.
    |  d8.[( c16 d8.  e16)] c2

%%% 130
    | f4 f e e
    |  d8.[( e16 f8.  fis16)] g4 g
    | f!-. f-. e-. e-.
    |  d8.[( e16 f8.  g16)] c,4  e,8[ c]
    |  g8[( d' g  d)]  g,[( c g'  c,)]
    |  g[( b g'  b,)]  g[( c g'  c,)]
    |  g[( d' g  d)]  g,[( c g'  c,)]
    |  g[( b g'  b,)] c4 r
    |  d'8.[( e16 f8.  g16)] e4 r
    | b'\f r c r

%%% 140
    | R1
    | g,4\f r c, r
}
