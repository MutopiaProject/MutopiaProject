\version "2.18.2"
violaSecondMov =  \relative d' {
    \key bes \major
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	d8\p bes d
	| f4 g8
	| f f r
	| r g,( es)
	| r c'( a)
	| c( bes) as'(
	| g)-. c,( d)
	| r f, f
	| g4 r8

% 10
	| r << { c a } { es' c } >>
	| bes4.:16\f
	| d4: g16 g
	| f4: a16 a
	| d,8: c: bes:
	| g4: g'16 g
	| e e f4:
	| a,: bes16 g'
	| f4: c16 c
	| d bes a8: g:

% 20
	| f4 r8
	| f8 c' f
	| e r r
	| c e g
	| e16( f) f4:
	| f16 f, f4:
	| f4.:
	| f8 f' r
	| c4 bes16( g)
	| f4.:

% 30
	| f:
	| f:
	| f8 d' r
	| c4(\p bes8)
	| a r << { c'( bes) r bes( a) r c( bes) r bes } \\
		{ a(_\f g) s e( f) s a( g) s g } >>
	| << { a16( g a g a g) } { f e f e f e } >>
	| <f a>4 r8
    }

    \repeat volta 2 {
% 40
	| f8\p c f
	| a,4 bes8
	| c4 bes8
	| bes\trill a r
	| f' c f
	| a,4 bes8
	| c4 bes8
	| bes\trill a r
	| <c a'>4:\f <fis a>16 <fis a>
	| g8 d g,

% 50
	| <bes g'>4 <c e>16 <c e>
	| f!8 c f,
	| <a f'>4.
	| << { f'8. e16 d8 } \\ { bes8 a16 c bes8 } >>
	| g8 r r16 g'
	| f4 \RaiseScript es16(\trill d32 es)
	| d8\p bes d
	| f4 g8
	| f f r
	| r g,( es)

% 60
	| r c'( a)
	| c( bes) as'(
	| g8)-. c,( d)
	| r f,(-. f-.)
	| g4 r8
	| r << { c a } { es' c } >>
	| bes4.:16\f
	| d4: g16 g
	| f f f bes, bes( a)
	| bes f f4:

% 70
	| f4.:
	| f16 f es4:
	| g8: bes: as:
	| g4: a!16 a
	| bes g f4:
	| f8 r r
	| bes d f
	| f, r r
	| f' c f,
	| bes4.:

% 80
	| bes:
	| bes:
	| bes8 g r
	| f f' f,
	| f16 bes bes4:
	| bes4.:
	| bes8 g r
	| f f' f,
	| f16 bes bes bes f' f
	| f4.:

% 90
	| \repeat unfold 9 { f: }
	| bes,16 g' f4:
	
% 100
	| \repeat unfold 3 { f4.: }
	| bes,16 g' f4:
	| d r8
	| r d\p g
	| f f r
	| g,4 es'8
	| r c c
	| a( bes) r
	| << { g' g g g f es es4( d8) } { es8 es es es d c a4 bes8 } >>
    }

    | bes'8\f f bes
    | d4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8
    | \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
    | bes f f
    | f4( d8)
    | d-. bes-. r
    | c' bes r
    | a f r

    \bar "|."
}
