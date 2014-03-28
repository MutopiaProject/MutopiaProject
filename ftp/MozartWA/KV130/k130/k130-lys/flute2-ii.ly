\version "2.18.2"
fluteIISecondMov =  \relative bes'' {
    \key bes \major
    \clef violin

    \override Staff.TupletBracket.bracket-visibility = ##f

    \repeat volta 2 {
	| R4.*10

% 11
	| bes8\f f bes 	
	| d,4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8 \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
	| bes'8 c d 
	| f,( e) c'-. 
	| bes( a) r 
	| f[ ~ f16( g32 a] bes[ a bes g)] 
	| a8 c a \tuplet 3/2 { g16[( bes d)] } f,8[ e] f4 r8

% 21
	| R4.*4
	| r8 r c16. bes32 
	| bes4 c16. bes32 
	| bes8 bes' r16 bes 
	| a f a g e bes 
	| a8 f4 ~ f4. ~ f ~ f8 f' r
	| R4.
	| r8 r a8( 
	| g) r g( 
	| f) r a( 
	| g) r g( 
	| f16) e( f e f e) 
	| f4 r8
    }

    \repeat volta 2 {
% 40
	| f'8\p c f a,4 bes8 
	| c4 bes8 bes\trill a r
	| f'8\p c f a,4 bes8 
	| c4 bes8 bes\trill a r
	| a4.\f( g4) r8

% 50
	| g4.( 
	| f8) r r 
	| es4. 
	| d8 c bes 
	| g' f16( es) d( c) 
	| bes8( a) r
	| R4.*10
	| bes'8\f f bes 
	| d,4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8 
	| \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
	| as'8 f d

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
	| r8 r f'16.\trill es32 es4 f16.\trill es32 es8 es r
	| d8-. d16( f) es( c) 
	| d8 r f16.\trill es32 es4 f16.\trill es32 es8 es r
	| d8-. d16( f) es( c) 
	| d8 r r
	| f,4. ~ f ~ f ~ f 
	
% 93
	| f'16 es d es f d es d c d es c d f es8 d d\trill c r
	| R4.*13

% 110
	| es8\p es es es( d) a-. a4( bes8) 
    }

    | bes'8\f f bes 
    | d,4 \grace {
\override Flag.stroke-style = #"grace"
   f16 
  \revert Flag.stroke-style }
 es8 \grace {
\override Flag.stroke-style = #"grace"
   d16 
  \revert Flag.stroke-style }
 c8 bes r
    | bes'8 f f f4 d8 d[-. bes-.] r
    | a' bes r 
    | a bes r 
    
    \bar "|."
}
