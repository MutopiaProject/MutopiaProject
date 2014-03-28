\version "2.18.2"
bassoSecondMov =  \relative c {
    \key bes \major
    \clef bass

    \noTupletBracket

    \repeat volta 2 {
	bes4\p^\markup { pizz. } r8
	| r bes' g
	| es d r
	| es4 r8
	| f4 r8
	| g( f) d(
	| es)-. es'( d)
	| r a( bes)
	| es,4 r8

% 10
	| r f f,
	| bes4\f r8
	| r bes' g
	| es d c
	| bes4 r8
	| r c e
	| f c a
	| f f' f
	| f r a
	| bes c c,

% 20
	| f c a
	| f r r
	| c' e g
	| c r r
	| f, r r
	| f( c a)
	| bes f' a,
	| bes bes' r
	| c c, c
	| f( c a)

% 30
	| bes f' a,
	| bes f' a,
	| bes b r
	| c\p r c
	| f4\f r8
	| c4 r8
	| f,4 r8
	| c'4 r8
	| f8 f f 
	| f4 r8
    }

    \repeat volta 2 {
% 40
	| R4.
	| f'8\p c d
	| a bes bes,
	| f' f, r
	| R4.
	| f''8 c des
	| a bes e,
	| f f, r
	| d'\f d d
	| g, r r

% 50
	| c c c 
	| f r r
	| f f f
	| bes, f' bes
	| es, r es
	| f f, f'
	| bes,\p r r
	| r bes' g
	| es d r
	| es4 r8

% 60
	| f4 r8
	| g f d
	| es es'( d)
	| r a( bes)
	| es,4 r8
	| r f f,
	| bes4\f r8
	| r bes' g
	| es d c
	| bes4 r8

% 70
	| d d d
	| es es, es'
	| es g f
	| es es es
	| d16 es f8 f,
	| bes bes' f
	| bes, r r
	| f' c a
	| f r r
	| bes4 r8

% 80
	| r r d
	| es g d
	| es g r
	| f f f
	| bes, bes' d,
	| es g d
	| es g r
	| f f f
	| bes, bes' r
	| d, c bes

% 90
	| a4 r8
	| es' d c
	| bes4 r8
	| bes bes' bes,
	| f f' f,
	| bes a bes
	| f f' r
	| f4 bes,8
	| f'4 bes8
	| es, f f

% 100
	| bes,4 r8
	| f'4 bes,8
	| f'4 bes8
	| es, f f
	| bes,4 r8
	| r bes'\p g
	| es d r
	| es4 r8
	| f4 r8
	| g4 r8
	| R4.*3
    }


% 113
    | bes8\f f bes
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
    | f' bes r

% 120
    | f bes,-. r

    \bar "|."
}
