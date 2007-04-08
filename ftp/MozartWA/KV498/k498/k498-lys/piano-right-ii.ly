rightHandSecondMov = \notes \relative c'' {
    \key bes \major
    \time 3/4

    \noTupletBracket

    \repeat volta 2 {
	<
	    { \voiceOne d2. ~ | [d8( c f es d )c] }
	    \context Voice=x { \voiceTwo <f,2. bes> | g }
	> \oneVoice
	| <d,4 f bes> <d f bes(> <f a )c>
	|
	<
	    {
		\property Voice.Stem \set #'transparent = ##t
		\voiceOne c'2( )d4
		\property Voice.Stem \set #'transparent = ##f
	    }

	    \context Voice=x {
		\property Voice.Stem \override #'length = #8
		\voiceOne a2( )bes4
		\property Voice.Stem \revert #'length
	    }

	    \context Voice=y { \voiceTwo f2. }
	> \oneVoice
	| <g,2. bes es(> ~
	| [es'8 )d d( f es )d]
	| [d( bes d bes es )c]
	| bes4( )a f'( ~
	| f )e bes'( ~

% 10
	| bes )a \times 2/3 { [d8( bes )g] }
	|
	<
	    { f2( \voiceOne [a8 g] | \oneVoice )f4 }
	    \context Voice=x { s2 \voiceTwo e4 \oneVoice | s4 }
	> r4 r
    }

    \repeat volta 2 {
	<
	    { \voiceOne <as,4 c> c2 | c2. }
	    \context Voice=x { \voiceThree s4 as4 g | f2 fis4 }
	    \context Voice=y { \voiceTwo d4 d2 | d2. }
	> \oneVoice
	| <es,4 g c> <es g c(> <g b )d>
	<
	    {
		\property Voice.Stem \set #'transparent = ##t
		\voiceOne d'2( )es4
		\property Voice.Stem \set #'transparent = ##f
	    }

	    \context Voice=x {
		\property Voice.Stem \override #'length = #8
		\voiceOne b2( )c4
		\property Voice.Stem \revert #'length
	    }

	    \context Voice=y { \voiceTwo g2. }
	> \oneVoice
	| es4( e <d )f>
	|
	<
	    { \voiceOne f4.( fis8 )g4 }
	    \context Voice=x { \voiceTwo d2( )es4 }
	> \oneVoice
	| r4 r bes(

% 20
	| fis g )d
	| es8 r f! r g r
	| d4( )c d,(
	| [es8 d] es4 e
	| [f8 e] f4 d
	| [es8 d] es4 e
	| f4 )c
	<
	    {
		\voiceOne a'4 ~ | a( g )fis ~ | fis( [g8 a] )bes4 |
		[b8( c f es d )c]
	    }

	    \context Voice=x {
		\voiceTwo d,4 ~ | d2. ~ | d | g
	    }
	> \oneVoice

% 30
	| <d,2 bes'!> r4
	| R2.*2
	| r4 r <a'( c> ~
	| <a c> <)g bes> < \voiceOne es' \context Voice=x { \voiceTwo
          f, } > \oneVoice
	| [<f8 d'(> f' es d c )bes]
	| g4.( [es8 d )c]
	| d4 r bes''4( ~
	| bes )a es( ~
	| es \times 2/3 { [d8 es f] } \times 2/3 { [g es c] }
	| )bes2(
	<
	    { \voiceOne [d8 c] }
	    \context Voice=x { \voiceTwo a4 }
	> \oneVoice
	| )bes4 r r
    }

    \repeat volta 2 {
	R2.
	| r4 r [fis8.(^\trill e32 fis]
	| )g8 r <fis a> r <g bes> r
	|
	<
	    { \voiceOne a4( )d }
	    \context Voice=x { \voiceTwo fis,2 }
	> \oneVoice r4
	| R2.
	| r4 r [fis,8.(^\trill e32 fis]
	| )g8 r <fis a> r <g bes> r
	|
	<
	    { \voiceOne c4( des )c | c }
	    \context Voice=x { \voiceTwo a4 bes2 | a4 }
	> \oneVoice r4 [a8.(^\trill g32 a]

% 51
	| )bes8 r <a c> r <bes d> r
	|
	<
	    { \voiceOne e4( f )e | e }
	    \context Voice=x { \voiceTwo cis4 d2 | cis4 }
	> \oneVoice r4 [cis8.(^\trill b32 cis]
	| )d8 r <cis e> r <d f> r
	|
	<
	    { \voiceOne a'4( bes! gis | a fis g! | es )f! }
	    \context Voice=x {
		\voiceTwo r4 d e | cis d bes | c! as
	    }
	> \oneVoice <g,8 b d> r
	| <g c es> r <f a! c> r <f bes! d> r
	| <es g bes> r <es a c> r <d fis a> r

% 60
	| <g4 bes> g'( )f!
	| \grace { \cue f16( \noCue } )e!4( )d <g, a>
	| <f a> r r
    }

    \repeat volta 2 {
	R2.
	| \times 2/3 { [g8( c es] } \noTupletNum \times 2/3 { [g as g]
          [f! g f] }
	| \times 2/3 { [es f g] [f es d] [es d )c] }
	| R2.
	| \stemDown \times 2/3 { [f,8( bes des] [f ges f] [es f es] }
	| \times 2/3 { [d! es f] [es d c] [d c )bes] } \stemBoth
	| r4
	<
	    { \voiceOne <es2 g> ~ | <es4 g> <d2 fis(> | <d4 )g> <fis,
	    c'> <g bes> }
	    \context Voice=x { \voiceTwo <g2 bes> | a2. | g4 d2 }
	>

% 72
	| <g4( bes> <)fis a> r4
	| R2.
	| r4 r \slurDown [fis8.(^\trill e32 fis]
	| )g8 \slurBoth r <fis a> r <g bes> r
	|
	% In this bar there is only one slur (unlike bar #43), so
	% things are simpler.
	<
	    { \voiceOne a4( )d }
	    \context Voice=x { \voiceTwo fis,2 }
	> \oneVoice r4
	| R2.*2
	| <a4 fis'(> <bes g'> <gis )eis'>

% 80
	| <a2. fis'> ~
	| \tupletNum \times 2/3 { [fis'8 a( c] } \noTupletNum \times
          2/3 { [es c bes!] [a g fis] }
	| \times 2/3 { [g d bes'] [a d, c'] [bes d, )d'] }
	| \times 2/3 { [fis,( a c] [es c bes!] [a g fis] }
	| \times 2/3 { [g d bes'] [a d, c'] [bes g )bes] }
	|
	<
	    { \voiceOne d4( es cis | d b c! | as )bes! }
	    \context Voice=x {
		\voiceTwo r4 g( a | fis g es! | f! )des
	    }
	> \oneVoice <c,8 e g> r
	| <c f as!> r <bes d! f> r <bes es! g> r
	| <as c es> r <as d f> r <g b d> r

% 90
	| <fis2 c' es> <g4 bes! d>
	|
	<
	    { \voiceOne <as4 c> <g bes> <fis a> }
	    \context Voice=x {
		\voiceTwo es4 d2
	    }
	> \oneVoice
	| <g,2. cis g'>
	| <bes4 d g> r <c! d>
	| <bes d> r r
    }

    R2.
    | <es4 f c'> r r
    | R2.
    | r4 r \tupletNum \times 2/3 { [es''8( c bes] } \noTupletNum
    | \times 2/3 { [a bes c] } )f,4 \times 2/3 { [es'8( c bes] }

% 100
    | \times 2/3 { [a bes c] } )f,4 \times 2/3 { [es'8( c bes] }
    | \times 2/3 { [a bes c] } )f,4 r
    | R2.
    <
	{ \voiceOne d2. ~ | [d8( c f es d )c] }
	\context Voice=x { \voiceTwo <f,2. bes> | g }
    > \oneVoice
    | <d,4 f bes> <d f bes(> <f a )c>
    |
    <
	{
	    \property Voice.Stem \set #'transparent = ##t
	    \voiceOne c'2( )d4
	    \property Voice.Stem \set #'transparent = ##f
	}
	
	\context Voice=x {
	    \property Voice.Stem \override #'length = #8
	    \voiceOne a2( )bes4
	    \property Voice.Stem \revert #'length
	}
	
	\context Voice=y { \voiceTwo f2. }
    > \oneVoice
    | <g,2. bes es(> ~
    | [es'8 )d d( f es )d]
    | [d( bes d bes es )c]

% 110
    | bes4( )a f'( ~
    | f )e bes'( ~
    | bes )a \times 2/3 { [d8( bes )g] }
    |
    <
	{ f2( \voiceOne [a8 g] | \oneVoice )f4 }
	\context Voice=x { s2 \voiceTwo e4 \oneVoice | s4 }
    > r4 r
    |
    <
	{ \voiceOne <as,4 c> c2 | c2. }
	\context Voice=x { \voiceThree s4 as4 g | f2 fis4 }
	\context Voice=y { \voiceTwo d4 d2 | d2. }
    > \oneVoice
    | <es,4 g c> <es g c(> <g b )d>
    <
	{
	    \property Voice.Stem \set #'transparent = ##t
	    \voiceOne d'2( )es4
	    \property Voice.Stem \set #'transparent = ##f
	}
	
	\context Voice=x {
	    \property Voice.Stem \override #'length = #8
	    \voiceOne b2( )c4
	    \property Voice.Stem \revert #'length
	}
	
	\context Voice=y { \voiceTwo g2. }
    > \oneVoice
    | es4( e <d )f>

% 120
    |
    <
	{ \voiceOne f4.( fis8 )g4 }
	\context Voice=x { \voiceTwo d2( )es4 }
    > \oneVoice
    | r4 r bes(
    | fis g )d
    | es8 r f! r g r
    | d4( )c d,(
    | [es8 d] es4 e
    | [f8 e] f4 d
    | [es8 d] es4 e
    | f4 )c
    <
	{
	    \voiceOne a'4 ~ | a( g )fis ~ | fis( [g8 a] )bes4 |
	    [b8( c f es d )c]
	}
	
	\context Voice=x {
	    \voiceTwo d,4 ~ | d2. ~ | d | g
	}
    > \oneVoice

% 132
    | <d,2 bes'!> r4
    | R2.*2
    | r4 r <a'( c> ~
    | <a c> <)g bes>
    <
	{ \voiceOne es' }
	\context Voice=x {
	    \voiceTwo f,
	}
    > \oneVoice
    | [<f,8 d'(> f' es d c )bes]
    | g4.( [es8 d )c]
    | d4 r bes''4( ~

% 140
    | bes )a es( ~
    | es \times 2/3 { [d8 es f] } \times 2/3 { [g es c] }
    | )bes2(
    <
	{ \voiceOne [d8 c] }
	\context Voice=x { \voiceTwo a4 }
    > \oneVoice
    | )bes4 r
    <
	{ \voiceOne bes'4 ~ | bes( )a b ~ | b( )c }
	\context Voice=x {
	    \voiceTwo f,4( | )es2 <f4( as> | <)es2 g>
	}
    > \oneVoice \tupletNum \times 2/3 { [g8( es' )c] }
    | bes2(
    <
	{ \voiceOne [d8 c] }
	\context Voice=x {
	    \voiceTwo a!4
	}
    > \oneVoice
    | )bes4 r r
    | R2.*2

% 150
    | <bes,4 d(> <c es> <a )c>
    | bes r r
    | R2.*2
    | <bes4 d(> <c es> <a )c>
    | bes r [c8.(^\trill bes32 c]
    | )d4 r [c'8.(^\trill bes32 c]
    | )d4 r <c, es f a>
    | <bes d f bes> r r
}
