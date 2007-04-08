leftHandFirstMov = \notes \relative c, {
    \key es \major
    \clef bass

    \noTupletBracket

    <es4. es'4> g'8( es )bes
    | g r r r4 r8
    | <es' g bes> r r <es g bes> r r
    | <d as' bes> r r r4 r8
    | <f,4. f'> as'8( f )d
    | bes r r r4 r8
    | <d as' bes> r r <bes d bes'> r r
    | <es g bes> r r r4 r8
    | g, r r es r r

% 10
    | as r r f r r
    | bes r r bes, r r
    | c r r r4 r8
    | <g' g'> r r <es es'> r r
    | <as4. as'> <a a'>
    | <bes bes'> <bes, bes'>
    | <es4 es'> ~ [es'16 f64( es d es] g8 es )b
    | c8 r as bes!4.
    | <es,4 es'> ~ [es'16 f64( es d es] g8 es )b
    | c8 r as bes!4.

% 20
    | <es,4 es'> ~ [es'16 f64( es d es] g8 es )b
    | c4 r8 r4 b'8(
    | )c4 r8 r4 b8(
    | )c4 r8 r4 r8
    |
    <
	% Aaaargh! It should be f8 r r, NOT f4 r8. But in this way we
	% get the right shape for the note stem.
	{ ges,4.( )f4 s8 }

	\context Voice=x { \slurUp \stemUp ges'4.( )f8 \slurBoth
	\stemBoth r r }

    >
    | bes r r f' r r
    | d r r a r r
    | bes r r f r r
    | bes r r es r r
    | d r r a r r

% 30
    | bes r r f'4 es8
    | d4. g,4.
    | c4. fis,4( )g8
    | es4 es'8 f f f
    | bes, bes'( f d f d
    | )bes r r f' r r
    | d r r a r r
    | bes r r f r r
    | d'4.( es
    | d )a

% 40
    | bes f'4( )es8
    | d4. <g, g'>
    | <c, c'> <fis4( fis'> <)g8 g'>
    | <es' g c> r r <es g c> r r
    | <es g c> r r <e g bes des> r r
    | f <bes d> <bes d> f <bes d> <bes d>
    | f, r r f r r
    | <bes4 bes'> ~ [bes'16 c64( bes a bes] [d8 )bes] <fis, fis'>
    | <g g'> r es' f!4.
    | <bes,4 bes'> ~ [bes'16 c64( bes a bes] [d8 )bes] <fis, fis'>

% 50
    | <g g'> r es' f!4.
    | bes,4 ~ [bes16 c64( bes a bes] [des8 bes )f]
    | e4 ~ [e16 c'64( bes a bes] [des8 bes )f]
    | e4 ~ [e16 as64( g fis g] [bes8 g )des]
    | c4. ~ c8 r r^\fermata
    | as'!8 r r es'! r r
    | c r r g r r
    | as r r es r r
    | as r r des r r
    | c r r g r r

% 60
    | as4. g
    | as a
    | bes b
    | c4( bes!8 a4 )as8
    | [g8( b d] [g, b )d]
    | [g,( c es] [g, c )es]
    | [g,( b d] [g, b )d]
    | [g,( c es] [g, c )es]
    | g,8 r r r4 r8
    | g'4 ~ [g16 a64( g fis g] [d'8 b )g]

% 70
    | f! r r r4 r8
    | f4 ~ [f16 g64( f e f] [as8 f )d]
    | bes!8 r r r4 r8
    | \stemUp \slurDown bes4 ~ [bes16 c64( bes a bes] [f'8 d )bes]
      \slurBoth \stemBoth
    | <es,4 es'> ~ [es'16 f64( es d es] [g8 es )bes]
    | g r r r4 r8
    | r4 \clef violin r8 <es'' g bes> r r
    | <d as' bes> r r r4 r8 \clef bass
    | <f,,4 f'> ~ [f'16 g64( f e f] [as8 f )d]
    | bes r r r4 r8

% 80
    | r4 \clef violin r8 <bes' d as'> r r
    | <es g> r r r4 r8 \clef bass
    | es, r r g, r r
    | as r r f r r
    | bes r r bes, r r
    |
    <
	{ \voiceOne es'2. ~ | es8 }
	\context Voice=x { \voiceTwo es4.( )des | c8 }
    > \oneVoice r8 r as, r r
    | des4.( )d
    | es es,
    | <as4 as'> ~ [as'16 bes64( as g as] [c8 as )e]
    | f r des es!4.

% 90
    | <as,4 as'> ~ [as'16 bes64( as g as] [c8 as )e]
    | f8 r des es!4.
    | <as,4 as'> ~ [as'16 bes64( as g as] [c8 as )e]
    | f4 r8 r4 e'8(
    | )f4 r8 r4 e8(
    | )f4 r8 r4 r8
    |
    <
	{ \slurDown \stemDown ces,4.( )bes8 r r \slurBoth \stemBoth }

	% Aargh! This is the same as in bar #24!
	\context Voice=x { ces'4.( )bes4 r8 }
    >
    | es,8 r r bes' r r
    | g r r d r r

% 100
    | es r r bes r r
    | g' r r as r r
    | g r r d r r
    | es r r bes r r
    | <g'4. g'> <c, c'>
    | <f f'> <b,4( b'> <)c8 c'>
    | <as4. as'> <bes!4( bes'> <)as8 as'>
    | <g'4. g'> <c, c'>
    | <f f'> <b4 b'(> <c8 )c'>
    | <as as'> r r <as as'> r r

% 110
    | <as as'> r r <as as'> r r
    | [bes <es g> <es g>] [bes <es g> <es g>]
    | <bes bes'> r r <bes,4. bes'>
    | <es4 es'> ~ [es'16 f64( es d es] [g8 es )b]
    | c r as bes!4.
    | <es,4 es'> ~ [es'16 f64( es d es] [g8 es )b]
    | c r as bes!4.
    | [es,8 es es] [es16( d es d es d]
    | [)es8 es es] [es16( d es d es d]
    | [)es8 es es] [es16( d es d es d]

% 120
    | [)es8 es es] [es16( d es d es d]
    | [)es8 es es] [es16( d es d es d]
    | [es d es d es d] )es8 r r \clef violin
    | <as' c f> r r <bes f' as> r r
    | <g bes es> r r \clef bass <g,, g'> r r
    | <as as'> r r <bes bes'> r r
    | <es es'> r r <bes bes'> r r
    | <es es'> r r <bes bes'> r r

    \property Staff.subdivideBeams = ##t
    | es \times 2/3 { r16 [bes'( b } \times 2/3 { c cis d] } )es8
      \times 2/3 { r16 [bes,( b } \times 2/3 { c cis d] }
    \property Staff.subdivideBeams = ##f

    | )es8 r r r4 r8
}
