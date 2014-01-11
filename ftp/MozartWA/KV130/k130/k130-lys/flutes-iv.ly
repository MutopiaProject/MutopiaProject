\version "2.17.14"
flutesFourthMov =  \relative f'' {
    \key f \major
    \clef violin

    \override Staff.TupletBracket.bracket-visibility = ##f

    \repeat volta 2 {
	<< { f2\f c } { a2 a } >>
	| << { r8 c bes a g f e d c2 bes''2 ~ bes8( a) g-. f-. } \\
	    { s8 c bes a g f e d c2 g''2 ~ g8( f) e-. f-. } >>
	  << { a( g) f-. e-. } { c( bes) a g } >>
	| << { f2 c r8 c bes a g f e d c2 bes''2 ~ bes8( a) g-. f-. } \\
	    { a,2 c s8 c bes a g f e d c2 g''2 ~ g8( f) e-. f-. } >>
	  << { a( g) f-. e-. } { c( bes) a g } >>
	| << { f1 ~ f ~ f ~ f ~ f f2 fis } \\
	    { a,4 r a bes c d es2 d4 r f e! d c b2 c4 r a bes! c d es2 } >>
	| << { g4. fis8 g4. fis8 } { d4. es8 d4. es8 } >>
	| << { g2. f!4 } \\ { d1 } >>
	| << { e2. f8 g a2 ~ a8 f( e f) } { c2. d8 e f2 ~ f8 c( b a) } >>
	| << { c'1 ~ c ~ c2. } { c,1 ~ c ~ c2. } >> r4

% 22
	| R1*2
	| << { d2. } { f,2. } >> r4
	| R1*2
	| << { c2. r4 c2. r4 c2. r4 g2 r } { e2. r4 f2. r4 fis2. r4 g,2 } >>

% 31
	| R1
	| << { a8( g) g4 } { f8( e) e4 } >> r2
	| R1
	| << { f8( e) e4 } { d8( c) c4 } >> r2
	| R1
	| r4 
	  << { bes'4 a b c bes a b c1 ~ c2 b c2. a4 g c b d c } \\
	    { g4 f2_\trill e4 g f2_\trill e4 g a2 e d c4 g' a f e2 d4 f e } \\
	    { s4 s4. \grace {
\override Flag.stroke-style = #"grace"
   e16[ f] 
  \revert Flag.stroke-style }
 s8 s2 s4. \grace {
\override Flag.stroke-style = #"grace"
   e16[ f] 
  \revert Flag.stroke-style }
 } >> 
	  r4 r2
	| R1*8

% 51
	| \grace {
\override Flag.stroke-style = #"grace"
   c16 
  \revert Flag.stroke-style }
 b4\p^\aDue a8 g c4 c 
	| fis,4. d8 g4 g
	| \grace {
\override Flag.stroke-style = #"grace"
   f!16 
  \revert Flag.stroke-style }
 e4 d8 c a'4 a
	| b,4. g8 d'4 d
	| c8 d e f g a b c
	| << { b c d e f4 } { f,8 e d c b4 } >> r8 f,^\aDue
	| f( e) f-. d-. c4( b)
	| c8 d e f g a b c
	| << { b\f c d e f4 } { f,8\f e d c b4 } >> r4

% 60
	| << { b,8\pp c d e f4 } { f,8 e d c b4 } >> r4
	| r2 << { e,2\f } \\ { g2 } >>
	| << { f4 r a2 bes1 a4 c! b a g f' e d } 
	    { c,4 r f2 e1 f4 g f e d c' b b } >>
	| << { c2 bes! a f } \\ { g1 f2 a } >>
	| << { e4 c'4 b2 c2 bes! a f e4 c' b2 } \\
	    { c4 g8 e d2 g1 f2 a c4 g8 e d2 } >>
	| R1*8
	| c8\f^\aDue g e' b c g e g
	| c g e' b c g e g
	| c g e g c g e g
	| c g e g << { c4 } { e,4 } >> r
    }

    \grace {
\override Flag.stroke-style = #"grace"
   a16 
  \revert Flag.stroke-style }
 \raiseText g4\p^\aDue f8 e a4 a
    | fis4. d8 g4 g
    | \grace {
\override Flag.stroke-style = #"grace"
   f!16 
  \revert Flag.stroke-style }
 e4 d8 c f4 f
    | e( d c) r
    | << { c'2.\f r4 c2. r4 } { fis,2. r4 fis2. r4 } >>

% 90
    | R1*2
    | << { g2.\f r4 f2( f'4) r } { e,2. r4 d2( f4) r } >>
    | << { d2( cis4) } \\ { e,2. } >> r4
    | \grace {
\override Flag.stroke-style = #"grace"
   bes16 
  \revert Flag.stroke-style }
 \raiseText a4\p^\aDue g8 f bes4 bes
    | gis4. e8 a4 a
    | \grace {
\override Flag.stroke-style = #"grace"
   g!16 
  \revert Flag.stroke-style }
 fis4 e8 d bes'4 bes
    | d,( cis) d-. r
    | << { d'1\f c bes a g f2 a } \\ 
	{ f2 es ~ es d ~ d c4 c' ~ c2 bes ~ bes a ~ a f } >>
    | << { g8 c, d e f g a b c4 } \\ { e,8 c d e f g a b c4 } >> r r2
    | << { f,2\f c } \\ { a c } >>
    | << { r8 c' bes a g f e d c4 bes' bes bes bes8( a) g-. f-. } \\
	{ s8 c bes a g f e d c4 g' g g g8( f) e-. f-. } >>
      << { a( g) f-. e-. } { c( bes) a g } >>
    | << { f2 c r8 c' bes a g f e d c4 bes' bes bes bes8( a) g-. f-. } \\
	{ a,2 c s8 c' bes a g f e d c4 g' g g g8( f) e-. f-. } >>
      << { a( g) f-. e-. } { c( bes) a g } >>
    | << { f1 ~ f ~ f ~ f2 fis } \\
	{ f,4 r a bes c d es2 d4 r f es d es d c } >>

% 119
    | << { g1 ~ g ~ g ~ g2 gis } \\
	{ b,4 r b c d e! f2 e4 r g f e f e d } >>
    | << { a1 ~ a ~ a4 } \\
	{ cis,4 r cis d e f g2( f4) } >> r r2
    | R1*3

% 129
    | r2 << { a2 g4 r r8 e f g a4 r r8 f e f c'1 ~ c ~ c2. }
	   { f,2 e4 r r8 c d e f4 r r8 c bes a c1 ~ c ~ c2. } >> r4
    | R1*2
    | << { bes2. } { g2. } >> r4
    | R1*2
    | << { a2.\f r4 bes2. r4 b2. r4 c2 }
	{ f,2. r4 f2. r4 f2. r4 e2 } >> r2
    | R1
    | << { d8( c) c4-. } { bes8( a) a4 } >> r2
    | R1
    | << { bes8( a) a4. g8 a bes } { g8( f)f4. f8 f f } >>
    | << { bes8( a) a-. a-. a( g) g-. g-. f4 } \\ { f2. e4 f } >>
      << { es' d bes a es' d bes }  { c bes e, f c' bes e, } >>

% 151
    | << { a4 c d bes a2 g^\trill f4 c' d f a, } \\
	{ f1 ~ f2. e4 f1 ~ f4 } \\
	{ s1 s2 s4. \grace {
\override Flag.stroke-style = #"grace"
   f16[ g] 
  \revert Flag.stroke-style }
 } >>
      << { c4 bes g } { a4 g e } >>
    | << { f4 } \\ { f4 } >> r r2
    | R1*8

% 164
    | \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 \raiseText e4\p^\aDue d8 c f4 f
    | b,4. g8 c4 c'
    | \grace {
\override Flag.stroke-style = #"grace"
   bes!16 
  \revert Flag.stroke-style }
 a4 g8 f d'4 d
    | e,4. c8 g'4 g
    | f8 c f a c c c c
    | bes a g f e4 r8 bes'

% 170
    | a( f) d( g) f4( e)
    | f8 c f a c c c c
    | bes\f a g f e4 r
    | bes'8\pp a g f e4 r
    | r2 << { a2\f bes4 r bes2 a1 g4 f e d' c bes a g } 
	   { f2 f4 r f2 es1 d4 c bes a' g f e! e } >>

% 179
    | << { f2 } \\ { f2 } >> << { es'2 d2. bes4 a2 g } { c2 bes2. g4 f2 e } >>
    | << { f2 } \\ { f2 } >> << { es'2 d2. bes4 a2 g } { c2 bes2. g4 f2 e } >>
    | R1*8
    | \raiseText f8\f^\aDue c a' e f c a c
    | f c a' e f c a c
    | f c a c f c a c
    | f a c a f4 r

    \bar "|."
}
