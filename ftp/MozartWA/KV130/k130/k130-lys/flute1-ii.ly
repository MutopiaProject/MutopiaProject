\version "2.18.2"
fluteISecondMov =  \relative bes'' {
    \key bes \major
    \clef violin

    \override Staff.TupletBracket.bracket-visibility = ##f

    \repeat volta 2 {
	| R4.*10

% 11
	| bes8\f f bes
	| d4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8 \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
	| bes8 c d f,( e) c'-. bes( a) r 
	      f[ ~ f16( g32 a] bes[ c d e)]
	| f8 c a \tuplet 3/2 { g16[( bes d)] } f,8[ e]
	| f4 r8

% 21
	| R4.*4
	| r8 r 
	  es!16.\trill d32 d4 es16.\trill d32 d8 d' r16 d
	| c16( a) c( bes) g( e)
	| f4. ~ f ~ f ~ f8 as r
	| R4.
	| r8 r 
	  c8( bes) r bes( a) r c( bes) r bes( 
	      a16) bes( a bes a bes) a4 r8
    }

    \repeat volta 2 {
% 40
	| f'8\p c f a,4 bes8 
	| es4 d8 d\trill c r
	| f8\p c f a,4 bes8 
	| es4 des8 des\trill c r
	| c4.\f( bes4) r8

% 50
	| bes4.( a8) r r c4. bes8 es, d bes' 
	      a16( g) f( es) d8( c) r
	| R4.*10
	| bes'8\f f bes
	| d4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8 \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
	| as8 f d

% 70
	| bes4( as8)
	| \grace {
\override Flag.stroke-style = #"grace"
   bes16 
  \revert Flag.stroke-style }
 as8( g) r
	| bes8[ ~ bes16 c32( d] es[ f g as)]
	| bes8 g es
	| \tuplet 3/2 { f16[( g es)] } d8[ c]
	| bes4 r8
	| R4.*4

% 80
	| r8 r as'16.\trill g32 g4 as16.\trill g32 g8 bes r
	| bes16( f) bes( d) c( a)
	| bes8 r as16.\trill g32 g4 as16. g32 g8 bes r
	| bes16( f) bes( d) c( a)
	| bes8 r r
	| f4. ~ f ~ f ~ f
	
% 93
	| d'16 c bes c d bes c bes a bes c a bes d c8 bes bes\trill a r
	| R4.*13

% 110
	| g8\p g g g( f) es-. es4( d8)
    }

    | bes'8\f f bes
    | d4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8 \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
    | bes8 f f f4 d8 d[-. bes-.] r
    | c'8 d r es d r
    
    \bar "|."
}
