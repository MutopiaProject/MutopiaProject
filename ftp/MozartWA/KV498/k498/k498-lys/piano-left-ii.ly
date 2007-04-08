leftHandSecondMov = \notes \relative c, {
    \clef bass
    \key bes \major
    \time 3/4

    \noTupletBracket

    \repeat volta 2 {
	<bes4 bes'> <d d'> <bes bes'>
	| <es2. es'>
	| <f4 f'> r f'
	| bes f bes,
	| <es, es'> <g g'> <es es'>
	| <bes'2 bes'> r4
	| r bes' es,
	| f2 \clef violin <a'4( c>
	| <)g bes> r <cis,( e>

% 10
	| <)d f> r <bes g'>
	| <c! a'> <c a'> <c bes'>
	| <f a> \clef bass f, r
    }

    \repeat volta 2 {
	<f,4 f'> <f( f'> <)g g'>
	| <as2. as'>
	| <g4 g'> r g'
	| c g c,
	| r r \clef violin <bes'! as'>
	|
	<
	    { \voiceOne as'2( )g4 }
	    \context Voice=x { \voiceTwo es2. }
	> \oneVoice
	| R2.

% 20
	| r4 c,( )f!
	| es8 r d r c r \clef bass
	| <f,,2. f'> ~
	| <f f'>
	| <f f'> ~
	| <f f'>
	| [f'8( e] f4 )fis
	| <g,2. g'> ~
	| [<g8 g'> <fis fis'> <bes bes'> <a a'> <g g'> <f f'>]
	| <es4 es'> <es( es'> <)e e'>

% 30
	| <f2. f'> ~
	| <f4 f'> f''( b,
	| )c2 bes!4(
	| )a2 <d,,4 d'>
	| <es2 es'> <c4 c'>
	| <d2 d'> g'4
	| es c f
	| bes, bes' \clef violin <d' f(>
	| <c )es> r <fis,( a>
	| <)g bes> r \clef bass <es, c'>

% 40
	|
	<
	    { \voiceOne [d'8( f! d f es )f] | d4 }
	    \context Voice=x { \voiceTwo f,4 f f | bes }
	> \oneVoice bes,-. r
    }

    \repeat volta 2 {
	R2.
	| r4 r
	<
	    {
		\property Voice.Stem \override #'length = #12
		\slurUp \stemDown a'4(
		\property Voice.Stem \set #'length = #10
		| )bes8 \stemBoth \slurBoth
		\property Voice.Stem \revert #'length
	    }

	    \context Voice=x {
		\property Voice.Stem \set #'transparent = ##t
		\slurDown d,4( | )g8 \slurBoth
		\property Voice.Stem \set #'transparent = ##f
	    }
	> \oneVoice r8 <d, a'> r <g, g'> r
	| <d2 d'> r4
	| R2.
	| r4 r
	<
	    {
		\property Voice.Stem \override #'length = #12
		\slurUp \stemDown a''4(
		\property Voice.Stem \set #'length = #10
		| )bes8 \stemBoth \slurBoth
		\property Voice.Stem \revert #'length
	    }

	    \context Voice=x {
		\property Voice.Stem \set #'transparent = ##t
		\slurDown d,4( | )g8 \slurBoth
		\property Voice.Stem \set #'transparent = ##f
	    }
	> \oneVoice r8 <d, a'> r <g, g'> r
	| R2.
	| r4 r
	<
	    {
		\property Voice.Stem \override #'length = #12
		\slurUp \stemDown c'4(
		\property Voice.Stem \set #'length = #10
		| )d8 \stemBoth \slurBoth
		\property Voice.Stem \revert #'length
	    }

	    \context Voice=x {
		\property Voice.Stem \set #'transparent = ##t
		\slurDown f,4( | )bes8 \slurBoth
		\property Voice.Stem \set #'transparent = ##f
	    }
	> \oneVoice r8 <f, c'> r <bes, bes'> r
	| R2.
	| r4 r
	<
	    {
		\property Voice.Stem \override #'length = #12
		\slurUp \stemDown e'4(
		\property Voice.Stem \set #'length = #10
		| )f8 \stemBoth \slurBoth
		\property Voice.Stem \revert #'length
	    }

	    \context Voice=x {
		\property Voice.Stem \set #'transparent = ##t
		\slurDown a,4( | )d8 \slurBoth
		\property Voice.Stem \set #'transparent = ##f
	    }
	> \oneVoice r8 <a, e'!> r <d, d'> r
	| R2.
	| r4
	<
	    { \voiceOne d'4( es | c )d }
	    \context Voice=x {
		\voiceTwo r4 g,4( | es! )f
	    }
	> \oneVoice g,8 r
	| c, r f r bes, r
	| es r a,! r d r

% 60
	| g,4( e )f
	| g a a
	| d, r r
    }

    \repeat volta 2 {
	g4( as fis
	| )g2 r4
	| r g'8 r c, r
	| f,4( ges e
	% Sic!
	| )f2.
	| r4 f'8 r bes, r
	| \times 2/3 { [es,( g bes] } \noTupletNum \times 2/3 { [es f
          es] [d es d] }
	| \times 2/3 { [c bes a] [d es d] [c d c] }
	| \times 2/3 { [bes c bes] [a bes a] [g a )g] }
	| d'4( es cis
	| )d r r
	| r r <d a'(>
	| <g8 )bes> r <d a'> r <g, g'> r
	| <d2 d'> r4
	| R2.*3

% 80
	| d4( es cis
	| )d r [d'8.(^\trill cis32 d]
	| )g8 r d r g, r
	| r4 r [d'8.(^\trill cis32 d]
	| )g8 r d r g, r
	| R2.
	| r4 \clef violin
	<
	    { \voiceOne g''4( as | f )g }
	    \context Voice=x {
		\voiceTwo s4 c,( | des )bes }
	> \oneVoice \clef bass c,8 r
	| f, r bes r es, r
	| as r d,! r g r
	| <a,,2 a'> <bes4 bes'>
	| <c c'> <d d'> <d d'>
	| <es2. es'>
	| <d4 d'> r d
	| g g, r
    }

    R2.
    | <a4 a'> r r
    | R2.

    | r4 \tupletNum \times 2/3 { [es''8( c bes] } \noTupletNum \times
      2/3 { [a bes c] }
    | )f,4 \times 2/3 { [es'8( c bes] [a bes c] }

% 100
    | )f,4 \times 2/3 { [es'8( c bes] [a bes c] }
    | )f,4 r r
    | R2.
    <bes,4 bes'> <d d'> <bes bes'>
    | <es2. es'>
    | <f4 f'> r f'
    | bes f bes,
    | <es, es'> <g g'> <es es'>
    | <bes'2 bes'> r4
    | r bes' es,

% 110
    | f2 \clef violin <a'4( c>
    | <)g bes> r <cis,( e>
    | <)d f> r <bes g'>
    | <c! a'> <c a'> <c bes'>
    | <f a> \clef bass f, r
    | <f,4 f'> <f( f'> <)g g'>
    | <as2. as'>
    | <g4 g'> r g'
    | c g c,
    | r r \clef violin <bes'! as'>

% 120
    |
    <
	{ \voiceOne as'2( )g4 }
	\context Voice=x { \voiceTwo es2. }
    > \oneVoice
    | R2.
    % The f has no natural sign (unlike bar #20)
    | r4 c,( )f
    | es8 r d r c r \clef bass
    | <f,,2. f'> ~
    | <f f'>
    | <f f'> ~
    | <f f'>
    | [f'8( e] f4 )fis
    | <g,2. g'> ~

% 130
    | [<g8 g'> <fis fis'> <bes bes'> <a a'> <g g'> <f f'>]
    | <es4 es'> <es( es'> <)e e'>
    | <f2. f'> ~
    | <f4 f'> f''( b,
    | )c2 bes!4(
    | )a2 <d,,4 d'>
    | <es2 es'> <c4 c'>
    | <d2 d'> g'4
    | es c f
    | bes, bes' \clef violin <d' f(>

% 140
    | <c )es> r <fis,( a>
    | <)g bes> r \clef bass <es, c'>
    |
    <
	{ \voiceOne [d'8( f! d f es )f] }
	\context Voice=x { \voiceTwo f,4 f f }
    > \oneVoice
    | <bes,4 d> bes,
    <
	{
	    \property Voice.Stem \override #'length = #14
	    \slurUp \stemDown d'4( | )c2 d4( | )es2 \stemBoth
	    \slurBoth
	    \property Voice.Stem \revert #'length
	}
	
	\context Voice=x {
	    \property Voice.Stem \set #'transparent = ##t
	    \slurDown \stemDown d,4( | )c2 d4( | )es2 \stemBoth
	    \slurBoth
	    \property Voice.Stem \set #'transparent = ##f
	}
    > \oneVoice r4
    | <f,,4 f'> <f f'> <f f'>
    | <bes, bes'> r r
    | R2.
    | f'4( ges )e

% 150
    | f2.
    | bes4 r r
    | R2.
    | f4( ges )e
    | f2.
    | bes4 r f'(
    | )bes r f(
    | )bes r <f, f'>
    | <bes, bes'> r r
}
