clarinetFirstMov = \notes \relative f'' {
    \clef violin
    \key f \major
    \time 6/8

    R2.*8
    | f4-\p ~ [f16 g64( f e f] [a8 f )c]

% 10
    | d4 ~ [d16 e64( d cis d] [f8 d )bes]
    | a4 ~ [a16 bes64( a g a] [c!8 bes )g]
    | r16 [f( g as a bes] [b c cis d es )e]
    | f2. ~
    | f
    | f,4 ~ [f16 g64( f e f] [a8 g )e]
    | f4 r8 r4 a8
    | a r d g,4( [a16 )bes]
    | a4 r8 r4 a8
    | a r d g,4( [bes16 )a]

% 20
    | f4 r8 r4 g8(
    | )f4 r8 r4 g8(
    | )f4 r8 r4 g8(
    | )f4 r8 r4 r8
    | R2.
    | e'4. [g8( f )d]
    | [c c c] [cis16( )d] [d8 d]
    | [dis16( )e] [e8 e] [g16( )f] r8 r
    | [g8.( a16 b )c] [c( b a g f )d]
    | [b16( )c] [c8 c] [cis16( )d] [d8 d]

% 30
    | [dis16( )e] [e8 e] [g16( )f] r8 r
    | g4 ~ [g16 a64( g fis g] [bes!8 a )e]
    | [g( fis )d] f4( e8 ~
    | [e16 d f a f )d] c4( [e16 )d]
    | [c8 e,( g] [c g c]
    | )e4 r8 r4 r8
    | R2.*2
    | g2. ~
    | g ~

% 40
    | g ~
    | [g8( e )d] cis4.
    | c! b4( )c8
    | r [a( )d] r [d( )f]
    | r [f( )a] r [a( )c]
    | c,2. ~
    | [c16 b( c cis d e] [f fis g gis a )b]
    | c4 r8 r4 e,8
    | e r a d,4( [e16 )f]
    | e4 r8 r4 e8

% 50
    | e r a d,4( [f16 )e]
    | c4 r8 r4 es8(
    | )d4 r8 r4 es8(
    | )d4 r8 r4 g8-\f
    | g4.( )fis8 r r^\fermata
    | d4.-\p [f!8( es )c]
    | [bes bes bes] [b16( )c] [c8 c]
    | [cis16( )d] [d8 d] [f16( )es] r8 r
    | [f8.( g16 a )bes] [bes( a g f es )c]
    | [a( )bes] [bes8 bes] [b16( )c] [c8 c]

% 60
    | [cis16( )d] [d8 d] [f16( )es] r8 r
    | [cis16( )d] [d8 d] [g16( )f] r8 r
    | [dis16( )e!] [e8 e] [a16( )g] r8 r
    | f4( fis8 g4 )gis8
    | a4 r8 r4 r8
    | [f8( cis d] [f8. e16 )d8]
    | cis4 r8 r4 r8
    | [f8( cis d] [f8. e16 )d8]
    | cis8 r f( )e r f(
    | )e4 r8 r4 r8

% 70
    | e r f( )e r f(
    | )e4 r8 r4 r8
    | bes'2. ~
    | bes4 r8 r4 r8
    | R2.
    | f4-\f ~ [f16 g64( f e f] [a8 f c]
    | )a r r r4 r8
    | R2.*2
    | g'4 ~ [g16 a64( g fis g] [bes8 g e]

% 80
    | )c4 r8 r4 r8
    | R2.
    | f4-\p ~ [f16 g64( f e f] [a8 f )c]
    | d4 ~ [d16 e64( d cis d] [f8 d )bes]
    | a4 ~ [a16 bes64( a g a] [c!8 bes )g]
    | f8 r r r4 r8
    | bes2. ~
    | bes
    | bes4 ~ [bes16 c64( bes a bes] [d8 c )a]
    | bes4 r8 r4 d8

% 90
    | d r g c,4( [d16 )es]
    | d4 r8 r4 d8
    | d r g c,4( [es16 )d]
    | bes4 r8 r4 c8(
    | )bes4 r8 r4 c8(
    | )bes4 r8 r4 c8(
    | )bes4 r8 r4 r8
    | R2.*3

% 100
    | r4 r8 r [c8-\p c]
    | c'2. ~
    | c
    | c4. ~ [c8 bes16( g bes )g]
    | f4.( )fis
    | f!( e4 )f8
    | [d8.( bes16 d )bes] [a8( c )e,]
    | f r r r4 r8
    | R2.
    | d'4.( ~ [d16 cis d e f )e]

% 110
    | [f( fis g fis g a] [bes a g f e )d]
    | [c!( d es e f fis] [g gis a bes b )c]
    | 
    <
	{ g2. }

	\context Voice=x {
	    \setTrillWave \blankNotes g2 \spanrequest \start "text" ~
	    g8. \spanrequest \stop "text" \stemUp \visibleNotes \tiny
	    [f32( )g] \stemBoth \normalsize
	}
    > 
    | f4 r8 r4 a,8
    | a r d g,4( [a16 )bes]
    | a4 r8 r4 a8
    | a r d g,4( [bes16 )a]
    | f4 r8 r4 r8
    | R2.
    | c'4 ~ [c16 d64( c b c] [es8 c )a]

% 120
    | [bes!16( a bes a bes )a] [bes8( d )f]
    | g4 ~ [g16 a64( g fis g] [bes8 g )e]
    | [a16( bes a bes a bes] )a8 r r
    | R2.*2
    | g4 ~ [g16 a64( g fis g] [bes8 g )e]
    | f!4 ~ [f16 g64( f e f] [bes8 g )e]
    \property Staff.subdivideBeams = ##t
    | f8 ~ [ \times 2/3 { f16 f( fis } \times 2/3 { g gis a } ] [)bes8
      bes, bes]
    \property Staff.subdivideBeams = ##f
    | a r a'( )f! r a,(
    | )f r r r4 r8 \bar "|."
}
