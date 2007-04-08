\version "2.6.0"
\include "deutsch.ly"

primoRightiii = \relative c'' {
	c2. | 
	c | 
	c( | 
	f2 g4 |
	as4. b16 as g8) f\staccato | 
	<< {c'2.~ | c4} \\ {f,( e) as( | g)} >>
	\oneVoice r \grace{as32[( b c]} b8\p)( as) |
	as2( g8 f | 
	es des  c4) r |
	f4.( g16 f es8 des | 
	c b as4) r |
	r2. |
	r4 ges'!4.( f8 | 
	f4) r r |
	r as4.( g!8 |
%% MARK G
\mark \default
	g4) c2~\fp |
	c8.[(\grace{des32[ c h c]} des16] b2)~ |
	b8.[(\grace{c32[ b a b]} c16] as2)~ |
	as8.[(\grace{b32[ as g as]} b16] g2)~ |
	g8.[(\grace{as32[ g f g]} as16] f2)~ |
	f8. d16\staccato e4..\trill( d32 e |
	f4) r r | 
	r r <<{s r r g~ \stemDown g8 b( as g f e | f) ges( f es! des c |
		des) des'( c b as g | f) h,\staccato } \\ 
		{b4~ | b8 des( c b \change Staff="left" \voiceOne as g as2)( 
	g4 | f8) \oneVoice es'!( des c b a | b) b'( as! g! f e | f) s}>> c2~ | 
%% MARK H
\mark \default
	c8 r r4 <<c( es>> |
	des8) r r4 <<e\( c_(>> |
	<<c8) f\)>> r r4 a8.( b16 | 
	b8) r r4
	<<{e,8.( f16 |
	f4.) e8( f e |
	f4.) des8( c des |
	c4.) b8( as g | f)} \\
		{des'8. c16 |
		c8 des( c des c des |
		c) b( as g as g |
		as) b( as g f e |
		f)}>>
	r f r f r | 
	f2 r4 \bar "||"
}

primoLeftiii = \relative c''{ <<
	{as2. |
	b |
	a~ |
	a4 b2 |
	h2.|
	h4( c) f( |
	e) r r |
	r es!4.( des8 |
	c b as4) r |
	r c4.( b8 |
	as g f4)} \\
		{f2. |
		g |
		ges_\( |
		f2 e4 |
		f2 g!8 as!\) |
		as4( g) h( |
		c) r r |
		r as2 |
		g4 as r |
		r f2~ |
		f8 e f4} >>
	r |
	ges2( g4 |
	b4 a) r |
	as2( a4 |
	c h) r | 
	r2. | 
	des2~ des8.[( \grace{es32[ des c des]} es16] |
	c2)~ c8.[( \grace{des32[ c h c]} des16] |
	b!2)~ b8.[(\grace{c32[ b a b]} c16] |
	as!2.)~ | 
	as8. f16\staccato g4..(\trill f32 g |
	f4) r f~ |
	f8 as\staccato( g f es des |
	\voiceTwo c2.) |
	c2.~ |
	c8 \oneVoice s s2 |
	s2. |
	s8 <<{f4( fis8 g b, | 
	a) r r4  f'~ | 
	f8}
		{as4 a8 b e, |
		f! r r4 a^( | 
		b8)}>>
	r r4 g8( b |
	a) r r4 <<{es'!8. des16 |
	des8}
		{ges8.( f16 |
		f8}>> 
	r r4 g,!8( b|
	as!) b( as b as b |
	as) g( f e f e |
	f) g( f e) r r16 b( |
	as8) <<{b( as b as b | 
	as2)}
		{des8 c des c des | 
		c2}>> r4
}

primoDynamicsiii = { s2.\p | s2.*3 | \setTextCresc s2.\< | s2 s4\!\f | s2.*17 |
\setTextCresc s2.\< | s2.*3 | s2.\!\f | s2.\p | s2.*6 | s2.-smorzando | s2. |}
