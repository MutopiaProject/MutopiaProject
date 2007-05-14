#(ly:set-option 'old-relative)
%%% -*- LilyPond -*-

\version "2.10.10"

violaFourthMov =  \relative e' {
    \key a \major
    \clef alto

    \noTupletBracket
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	R1*2
	| e4-.\p e-. e-. e-.
	| e2 e,
	| R1*2
	| fis'4-.\p fis-. fis-. fis-.
	| e2 e
    }

    \repeat volta 2 {
	| R1

%%% 10
	| gis2  b8[( a gis  fis)]
	| e4(  d) cis4.(  a'8)
	|  d[( cis b  a)] gis4 r
	| cis-. cis-. a-. a-.
	|  b8.[( cis16 d8.  b16)] gis4-. gis-.
	| a4 fis2 fis4
	| e2 e
    }

    % Var. I

    \repeat volta 2 {
        | R1*2
	| e4-.\p e-. e-. e-.

%%% 20
	| e2 e4 r
	| e-. e-. cis-. cis-.
	|  d8.[( e16 fis8.  d16)] b4-. b-.
	| fis'-. fis-. fis-. fis-.
	| << { e2 ~ e4 } \\ { d2( cis4) } >> r
    }

    \repeat volta 2 {
        | e,1 ~
	| e
	| e2 ~ e4 r
	| R1
	| r2 fis'4-. fis-.

%%% 30
	| d-. d-.  e8.[( fis16 gis8.  e16)]
	| cis4-. cis-. d-. d-.
	| b4.(\trill  a16[  b)] a4 r
    }

    % Var. II

    \repeat volta 2 {
        | \times 2/3 {  a8[( b  cis)]  cis[ cis cis]  cis[( d  e)]  e[ e e] }
          \noTupletNum
	| \times 2/3 {  gis[( a  b)]  b[ b b]  gis,[( a  b)]  b[ b b] }
	| \times 2/3 {  a[( b  cis)]  cis[ cis cis]  b[( cis  d)]  d[ d d] }
	| \times 2/3 {  e[( fis  gis)]  a[( fis  dis)] 
                        e[-. d-. cis-.]  b[-. a-. gis-.] }
        | \times 2/3 {  a[( b  cis)]  cis[ cis cis]  cis[( d  e)]  e[ e e] }
	| \times 2/3 {  gis[( a  b)]  b[ b b]  gis,[( a  b)]  b[ b b] }
	| \times 2/3 {  a[( b  cis)]  cis[ cis cis]  b[( cis  d)]  d[ d d] }

%%% 40
	| \times 2/3 {  gis,[-. gis( a]  b[ cis  b)] } a4 r
    }

    \repeat volta 2 {
        | \times 2/3 {  gis8[(\f b  e)]  gis[\p gis gis]  gis[ gis gis]  a[ a a] }
        | \times 2/3 {  e[(\f gis  b)]  b[\p b b]  b[ b b]  cis[ cis cis] }
        | \times 2/3 {  b[(\f gis  b,)]  gis[\p gis gis]  gis[ gis gis]  a[ e e] }
        | e4 r r2
        | \times 2/3 {  a8[( b  cis)]  cis[ cis cis]  cis[( d  e)]  e[ e e] }
	| \times 2/3 {  gis[( a  b)]  b[ b b]  gis,[( a  b)]  b[ b b] }
	| \times 2/3 {  a[( b  cis)]  cis[ cis cis]  b[( cis  d)]  d[ d d] }
	| \times 2/3 {  gis,[-. gis( a]  b[ cis  b)] } a4 r
    } \tupletNum

    % Var. III

    \key a \minor

    \repeat volta 2 {
        |  e'8[( a c gis]  a[ e \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]

%%% 50
        |  e[( b' d gis,]  b[ e, \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]
	| r  e[( \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)] 
          r  e[( \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]
	| r  e[( \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8 e] 
          \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
  f8[ e \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]
        |  e[( a c gis]  a[ e \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]
        |  e[( b' d gis,]  b[ e, \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]
	| r  e[( \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)] 
          r  e[( \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]
	| r  e[( \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8 e] 
          \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
  f8[ e \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]
    }

    \repeat volta 2 {
        | gis2.(  a8[  c)]
	| b4 r r2
	| b,2.(  dis4)

%%% 60
	| e r r2
        |  e8[( a c gis]  a[ e \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]
        |  e[( b' d gis,]  b[ e, \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]
	| r  e[( \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)] 
          r  e[( \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]
	| r  e[( \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8 e] 
          \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
  f8[ e \grace {
\override Stem   #'stroke-style = #"grace"
   \cue g32 
  \revert Stem #'stroke-style }
 f8  e)]
    }

    % Var. IV

    \key a \major

    \repeat volta 2 {
        | e1 ~
	| e2 ~  e8.[ fis16( d8.  e16)]
	| cis4-. cis-. e-. e-.
	| e2 ~ e4 r
	| cis-. cis-. a-. a-.

%%% 70
	|  b8.[( cis16 d8.  b16)] gis4 gis
	| r8  a[( cis  a)] r  d[( fis  d)]
	|  cis[ cis b b] a4 r
    }

    \repeat volta 2 {
        | r8  b'[ b b]  b[ b a a]
	|  gis[ gis gis, gis]  a[( cis e  a)]
	| r  b[ b b]  b[ b a a]
	|  a[ a a, a] gis4 r
	| e'-. e-. cis-. cis-.
	|  d8.[( e16 fis8.  d16)] b4-. b-.
	| a-. a-. fis'-. fis-.

%%% 80
	| d4.(\trill  cis16[  d)] cis4 r
    }

    | <cis e>4\f r <d a'> r
    | <dis fis> r <e b'> r
    | e,1\fp ~
    | e\fermata

    % Var. V

    \repeat volta 2 {
        | a'2(\p  e8) r r4
	| e8 r gis r r2
	| e1 ~
	| e8 r e r r2
	| r8  a,[ a a] r  a[ a a]

%%% 90
        | r  b[ b b] r  e[ e e]
	| e r a, r b r r4
	| e2 ~ e8 r r4
    }

    \repeat volta 2 {
        | r8  e[-. e-. e-.] e2 ~
	|  e8[ e, e e] e4 r
	| r8  e'[-. e-. e-.] e2 ~
	| e ~ e8 r r4
	| r8  cis[ cis cis] r  e[ e e]
	| e4 ~  e16[ e-. e-. e-.] e8 r e r
	| e r e r d r r4

%%% 100
	| e4( gis  a8) r r4
    }

    R1
    | b,4( gis  a8) r r4
    | a2(  b)
    | cis2.(  a4)
    | dis8 r r4\fermata e8 r r4\fermata

    % Coda

    | R1*4

%%% 110
    | cis4\f cis a fis ~
    | fis  b8.[(  a16)] gis4.(\trill  fis16[  gis)]
    | a4 e' fis fis
    | e2 ~  e8[ a\p a a]
    |  a[ a a a]  a[ a a a]
    |  a[\f a a a]  a[\p a a a]
    |  a[ a a a]  a[ a a a]
    |  a[\f a a a] a4\p r
    | cis,2(  fis)
    | b,(  e)

%%% 120
    | a,(  d)
    | d(   cis8)[ a' a a]
    |  a[ a a a]  a[ a a a]
    |  a[\f a a a]  a[\p a a a]
    |  a[ a a a]  a[ a a a]
    |  a[\f a a a] a4\p r
    | cis,2(  dis4) r
    | b2(  cis4) r
    | d! r a-. e'-.
    | b-. e-. e-.  a,8[(  e)]

%%% 130
    |  gis[( e gis e]  a[ e a e]
    |  b'[ e, b' e,]  a[ e a  e)]
    |  gis[( e gis e]  a[ e a e]
    |  b'[ e, b' e,]  a[ e a  e)]
    | gis4(  b8[ gis] a4  cis8[  a)]
    | b4(  d8[ b] cis4  e8[  cis)]
    | gis4(  b8[ gis] a4  cis8[  a)]
    | b4(  d8[ b]  cis4) r
    | R1
    |  b8.[(\f cis16 d8.  e16)] cis4 r

%%% 140
    | e'2(\p  a,4) r
    |  b,8.[(\f cis16 d8.  e16)] a,4 r    
}
