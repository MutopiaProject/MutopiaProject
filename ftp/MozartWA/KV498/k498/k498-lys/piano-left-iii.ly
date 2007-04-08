leftHandThirdMov = \notes \relative es, {
    \key es \major
    \clef bass

    \noTupletBracket

    <es2( es'> <g g'>
    | <f f'> <d4 d'> <)es es'>
    | <as2. as'(> <a4 )a'>
    | <bes2 bes'> r
    | <es,1 es'>
    | <f4 f'> <d d'> <bes bes'> <as as'>
    | <g g'> r bes'8 r bes r
    | es4( bes )es, r
    | <es2( es'> <g g'>

% 10
    | <f f'> <d4 d'> <)es es'>
    | <as2. as'(> <a4 )a'>
    | <bes2 bes'> r
    | <es,1 es'>
    | <f4 f'> <d d'> <bes bes'> <as as'>
    | <g g'> r r <bes' bes'>
    | <es es'> <bes bes'> <es, es'> r
    | bes'1
    | c2( )a
    | bes1

% 20
    | c2( )a
    | bes4 <d,2. d'>
    | <es2 es'> <e e'>
    | <f f'> f
    | bes4 r r <bes' d>
    | <f2 c' es> r4 <f c' es>
    | <bes2 d> r4 bes-.
    | f2 r4 f,
    | bes2 r4 \clef violin
    <
	{ \voiceOne bes''4 ~ | bes a2 g4 ~ | g f2 d4 }
	\context Voice=x {
	    \voiceTwo d4( | es c d bes | c a )bes2
	}
    > \oneVoice \clef bass

% 31
    | <g,,1 g'> \clef violin
    | \slurDown \stemUp [f''8( c' a c] [bes c g c]
    | [a c a c] [bes c g c]
    | [a c bes c] [a c bes c]
    | )a4 \slurBoth \stemBoth r r2 \clef bass
    | bes,,2( d
    | es4 c a )f
    | bes,2( d
    | es4 c a )f

% 40
    | <bes' bes'(> <as as'> <g2 )g'>
    | <c,8 c'> r <f f'> r <bes,4 bes'> r
    | r es'( )f f,
    | bes4 r \clef violin <b'2 d>
    | <c4 g'> <a c>
    <
	{ \voiceOne f'4 d }
	\context Voice=x { \voiceTwo bes!2 }
    > \oneVoice \clef bass
    | <es,4 g c> r r r8 <f as!>
    | <es4 g> r r r8 <f as!(>
    |
    <

	{ \voiceOne )g2 ~ <g c> ~ | <c es> r | r8 [<bes d> <bes d>
	<bes d>] r [<bes d> <bes d> <bes d>] | r [<a es'> <a es'> <a
	es'>] r [<a es'> <a es'> <a es'>]}

	\context Voice=x { \voiceTwo es1 ~ | es2 s | f2 f | f f }
    > \oneVoice

% 51
    | [<bes8 d> <bes d>] <bes d> r r2 \clef violin
    | [<bes8 es> <bes es>] <bes es> r r2
    | [<bes8 f'> <bes f'>] <bes f'> r [<bes g'> <bes g'>] <bes g'> r
    | [<bes as'!> <bes as'>] <bes as'> r [<bes g'> <bes g'>] <bes g'>
      r \clef bass
    | <bes,,4 bes'> r \clef violin [as'''8 g f es]
    |
    <
	{ \voiceOne [d8 es f g] [as g f es] | d4 }
	\context Voice=x { \voiceTwo bes2 r | bes4 }
    > \oneVoice r4 r2
    | R1 \clef bass
    | [es,8( bes' g bes] [es, bes' g bes]

% 60
    | [f bes as bes] [d, as' es )g]
    | [as( es' c es] [as, c a c] \clef violin
    |
    <
	{ \voiceOne [bes8 g' es g] [)f as( g )f] }
	\context Voice=x {
	    \voiceTwo bes,2 ~ [bes8 f' es d]
	}
    > \oneVoice \clef bass
    | [es,8( bes' g bes] [es, bes' g bes]
    | [f bes as bes] [d, )bes']
    <
	{ \voiceOne [bes8( )d] | <bes4 es> }
	\context Voice=x {
	    \voiceTwo as4 | g
	}
    > \oneVoice r4 r bes
    | es bes es, r
    
    \repeat volta 2 {
	<c,4 c'> r r2
	| \stemUp \slurDown d'4.( )c8 b2 \stemBoth \slurBoth
	| c4 r
	<
	    {
		\property Voice.Stem \set #'transparent = ##t
		\slurUp \stemUp as2( | )g4 \stemBoth \slurBoth
		\property Voice.Stem \set #'transparent = ##f
	    }
	    
	    \context Voice=x {
		\property Voice.Stem \override #'length = #14
		\stemUp \slurDown as,2( | )g4 \stemBoth \slurBoth
		\property Voice.Stem \revert #'length
	    }
	> r4 r2
	| <c,4 c'> r r2

% 71
	| <bes2( bes'> <)as as'>
	| <g8 g'> r es' r f4( )d8 r
	| g r es r bes'4( )as8 r
	| g4 g, as as'
	| bes bes, es r
    }

    \repeat volta 2 {
	\clef violin

	[es''8( bes' g bes] [es, bes' g )bes]
	| [bes,( g' es g] [b, g' d )g]
	| [c,( g' es g] [c, g' es )g] \clef bass

% 80
	| [g,( es' c es] [g, d' b )d]
	| <c,,4 c'> r r2
	| \stemUp \slurDown d'4.( )c8 b2 \stemBoth \slurBoth
	| c4 r
	<
	    {
		\property Voice.Stem \set #'transparent = ##t
		\slurUp \stemUp as2( | )g4 \stemBoth \slurBoth
		\property Voice.Stem \set #'transparent = ##f
	    }
	    
	    \context Voice=x {
		\property Voice.Stem \override #'length = #14
		\stemUp \slurDown as,2( | )g4 \stemBoth \slurBoth
		\property Voice.Stem \revert #'length
	    }
	> r4 r2
	| <c,4 c'> r r2
	| g'2( )f
	| es8 r c r d4( )b8 r
	| es r c r g'4( )f8 r
	| es4 es' f f,

% 90
	| g g, c r
    }

    | \times 2/3 { [es'8 g c] } \times 2/3 { [es, g c] } \noTupletNum
      \times 2/3 { [f, as d] [f, as d] }
    | \times 2/3 { [g, b d] [g, d' f] } \tupletNum <c4 es> r
    | <f,, f'> r <bes,! bes'!> r
    | <es es'> r
    <
	{
	    \property Voice.Stem \override #'length = #14
	    \slurUp \stemDown g'2( | )as8 \stemBoth \slurBoth
	    \property Voice.Stem \revert #'length
	}
	
	\context Voice=x {
	    \property Voice.Stem \set #'transparent = ##t
	    \stemDown \slurDown g,2( )as8 \stemBoth \slurBoth
	    \property Voice.Stem \set #'transparent = ##f
	}
    > \oneVoice r8 <bes, bes'> r <c c'> r <bes bes'> r
    | <as2 as'> <a a'>
    | \property Voice.Slur \override #'attachment = #'(head . head)
      \slurDown <bes4( bes'> f d' )f,
    | \property Voice.Slur \set #'attachment = #'(stem . head)
      es'( f, c' )f,
    | \property Voice.Slur \set #'attachment = #'(head . head)
      bes( f d' )f,

% 100
    | \property Voice.Slur \set #'attachment = #'(stem . head)
      es'( f, c' )f,
    | bes r r2 \property Voice.Slur \revert #'attachment
    | R1
    <
	{
	    \property Voice.Stem \override #'length = #8
	    \slurUp \stemDown
	    f'2.( )ges4
	    | f2.( )ges4
	    | f( ges f ges
	    | )f
	    \stemBoth \slurBoth
	    \property Voice.Stem \revert #'length
	}
	
	\context Voice=x {
	    \property Voice.Stem \set #'transparent = ##t
	    \stemDown \slurDown
	    d2.( )es4
	    | d2.( )es4
	    | d( es d es
	    | )d
	    \stemBoth \slurBoth
	    \property Voice.Stem \set #'transparent = ##f
	}
    > \oneVoice r4 r2
    | R1
    | <es,2 es'> <g g'>
    | <f4 f'> <bes, bes'> <es es'> <g, g'>

% 110
    | <as2. as'> <a4 a'>
    | <bes2 bes'> r
    | <es es'> <g g'>
    | <f f'> <bes,4 bes'> <as as'>
    | <g g'> r <bes bes'> <bes bes'>
    | es' bes es, r
    | [as,8 as' as as] [as as as as]
    | [as as as as] [as as as as]
    | [as as as as] [as as as as]
    | [as as as as] [as as c as]

% 120
    | <es2. es'> <des4 des'>
    | \tieUp <c2 c'> ~ [c'8( as f' )es] \tieBoth
    | des2. bes4
    | [es8 es, es' es] [es( des c bes]
    | [)as as' as as] [as as as as]
    | [as as as as] [as as as as]
    | [as as as as] [as as as as]
    | [as as as as] [as es c as]
    | <bes,2. bes'> <as4 as'>
    | <g g'> r r es'

% 130
    | as as bes bes
    | es bes es, r

    \repeat volta 2 {
	| <es1 es'>
	| <es es'>
	| <es es'>
	| as4 r r2
	| [as'8( es' ces es] [as, es' ges, es']
	| [fes, ces' as ces] )fes,4 r \clef violin
	| 
	<
	    {
		\property Voice.Stem \set #'transparent = ##t
		\slurUp \stemUp as'1( | )g!4
		\property Voice.Stem \set #'transparent = ##f
		\stemBoth \slurBoth
	    }
	    
	    \context Voice=x {
		\property Voice.Stem \override #'length = #8
		\stemUp \slurDown fes1( | )es4 \stemBoth \slurBoth
		\property Voice.Stem \revert #'length
	    }
	> r4 r2 \clef bass
	| <bes,,,1 bes'>
	| r4 es4 g es
	
% 140
	| <bes1 bes'>
	| r4 <es es'> <d d'> <bes bes'>
	| r <es es'> <d d'> <bes bes'>
	| <es1 es'>
	| [as,8 as' as as] [as as as as]
	| [as as as as] [as as as as]
	| [as as as as] [as as as as]
	| [as as as as] [as as( c )as]

% 150
	| <es2. es'> <des4 des'>
	| <c c'> r r c'
	| des des es es
    }

    \alternative {
	{
	    as es as, r
	}
	{
	    as,4 as' r2
	}
    }

    | <c,1 c'>
    | f4 f' r2
    | as2( g4 d!
    | [)es8 es bes g] es4 r \clef violin
    | [es''8( bes' ges bes] [es, bes' des, )bes']

% 160
    | [ces,( ges' es ges] [ces, ges' es )ges]
    | 
	<
	    {
		\property Voice.Stem \set #'transparent = ##t
		\slurUp \stemUp es1( | )d!4
		\property Voice.Stem \set #'transparent = ##f
		\stemBoth \slurBoth
	    }
	    
	    \context Voice=x {
		\property Voice.Stem \override #'length = #8
		\stemUp \slurDown ces1( | )bes4 \stemBoth \slurBoth
		\property Voice.Stem \revert #'length
	    }
	> r4 r2 \clef bass
    | <f,,1 f'>
    | r4 bes d bes
    | <f1 f'>
    | r4 <bes bes'(> <a a'> <f )f'>
    | r4 <bes bes'(> <a a'> <f )f'>
    | <bes1 bes'>
    % The slur here is slightly different from bars #1-#3
    | \slurDown <es,2( es'> <g g'>

% 170
    | <f f'> <d4 d'> <es es'>
    | <as2. as'> <a4 a'> 
    | <bes2 )bes'> r \slurBoth
    | <es,1 es'>
    | <f4 f'> <d d'> <bes bes'> <as as'>
    | <g g'> r bes'8 r bes r
    % These three note are not slurred like in bar #8
    | es4 bes es, r
    | <c'8 c'> r <bes bes'> r
    <
	{
	    \property Voice.Stem \override #'length = #12
	    \slurUp \stemDown as'4( )g8 \stemBoth \slurBoth
	    \property Voice.Stem \revert #'length
	}
	
	\context Voice=x {
	    \property Voice.Stem \set #'transparent = ##t
	    \stemDown \slurDown as,4( )g8 \stemBoth \slurBoth
	    \property Voice.Stem \set #'transparent = ##f
	}
    > \oneVoice r8
    | <c, c'> r <bes bes'> r
    <
	{
	    \property Voice.Stem \override #'length = #12
	    \slurUp \stemDown as'4( )g8 \stemBoth \slurBoth
	    \property Voice.Stem \revert #'length
	}
	
	\context Voice=x {
	    \property Voice.Stem \set #'transparent = ##t
	    \stemDown \slurDown as,4( )g8 \stemBoth \slurBoth
	    \property Voice.Stem \set #'transparent = ##f
	}
    > \oneVoice r8
    | <c,4 c'> <bes bes'> <as as'> <g g'>

% 180
    | <f f'> <es es'> <d d'> <c c'>
    | <bes1 bes'>
    | <bes bes'>
    | <bes2 bes'> <bes bes'>
    | <bes1 bes'> ~
    | <bes bes'>   
    | [es'8( bes' g bes] [es, bes' g bes]
    | [f bes as bes] [d, as' es )g]
    | [as( es' c es] [as, c a c] \clef violin
    |
    <
	{ \voiceOne [bes8 g' es g] [)f as( g )f] }
	\context Voice=x {
	    \voiceTwo bes,2 ~ [bes8 f' es d]
	}
    > \oneVoice \clef bass

% 190
    | [es,8( bes' g bes] [es, bes' g bes]
    | [f bes as bes] [d, )bes']
    <
	{ \voiceOne [bes8( )d] | <bes4 es> }
	\context Voice=x {
	    \voiceTwo as4 | g
	}
    > \oneVoice r4 bes8 r bes, r
    | [es,8 es' es es] [es es es es]
    | [es es es es] [es es es es]
    | [es, es' es es] [es es es es]
    | [es es es es] [es es es es]
    | [es, es' es es] [es es es es]
    | [es es es es] [es es es es]
    | es4 r <g2 des' es>

% 200
    |
    <
	{
	    \voiceOne es'2. f4 | \clef violin [g8( es f d] [es g as )f]
	}
	\context Voice=x {
	    \voiceTwo <as,1 c> | bes1
	}
    > \oneVoice \clef bass
    | [es,,8 es' es es] [es es es es]
    | [es es es es] [es es es es]
    | [es, es' es es] [es es es es]
    | [es es es es] [es es es es]
    | [es, es' es es] [es es es es]
    | [es es es es] [es es es es]
    | es2. es,4
    | as r r2

% 210
    | as'4 r r2
    | <bes,1 bes'>
    | <bes, bes'>
    | es4( bes' g es
    | d f d bes
    | es bes' g es
    | d f d bes
    | es bes' g es
    | d f d )bes
    | r <es( es'> <d d'> <)bes bes'>

% 220
    | r <es( es'> <d d'> <)bes bes'>
    | <es es'> g bes bes,
    | es r <es es'> <es es'>
    | <es2 es'> r
}
