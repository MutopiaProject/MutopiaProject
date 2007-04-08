opus = "Opus 57"
piece = "Andante con moto"

upstaff = \translator "Staff" = "upper"
lowstaff = \translator "Staff" = "lower"

upper = \context Staff \notes \relative c {
	% 1
	\clef "bass" \stemDown <des f aes> <des ges bes> |
	<des4. f aes> <des8 ees bes'> | <des4 ees aes> <c ees aes> |
	<des2 f aes> | <f4 aes des> <ges bes des> |
	<f4. aes des> <e8 g des'> | <ees!4 ges! des'> <ees ges c> |
	<des4. f des'> r8 \bar ":|:" |
	%
	<c4 ees aes> <c8.. ges' aes> <c32 ees aes> |
	<des8. f aes> <f16 aes des> <ges8 aes c> <f aes des> |
	<c4 ees aes> <c8.. ges' aes> <c32 ees aes> |
	<des8. f aes> <f16 aes f'> <{f'16(ees)des8} \\ {<ges,8 aes> <f aes>}> |
	<c,4 ees aes> <c8.. ges' aes> <c32 ees aes> |
	\clef "violin" <aes'8. des aes'> <des16 f aes>
	<{aes'16(ges)f8} \\ {<c8 ees> <aes des>}> |
	\clef "bass" <ges,4 bes ees(> <c, ees aes> |
	%
	<)des4. f des'> r8 \bar ":|"
	[ <des8 f aes> r <des ges bes> ] r |
	%
	\repeat volta 2 {
	[ <des f aes> r < des ees bes'> ] r |
	[ <des ees aes> r <c ees aes> ] r |
	[ ges'16 r f r ees r des ] r |
	[ <f8 aes des> r <ges bes des> ] r |
	[ <f aes des> r <e g des'> ] r |
	[ <ees! ges! des'> r <ees ges c> ] r | }
	%
	\alternative {
	{ [ <des16 f des'> r aes' r f r ees ] r |
	[ <des8 f aes> r <des ges bes> ] r }
	{ [ <des16 f des'> r aes' r f r des ] r } } |
	%
	\repeat volta 2 {
	[ <c8 ees aes> r <c ees aes> ] r |
	<des f aes> [ f16 r ges r aes ] r |
	[ <c,8 ees aes> r <ees aes c> ] r |
	<f aes des> [aes16 r c r des] r |
	[ <c,8 ees aes> r <ges' c ees> ] r |
	<f des' f> \clef "violin"
	[ <f16 f'> r <ges ges'> r <aes aes'> ] r |
	[ <des8 des'> r \clef "bass" <c, ees aes> ] r | }
	%
	\alternative {
	{ [ ges'16 r f r ees r des ] r }
	{ [ f16 r ees r des ] r r8 \clef "violin" } } |
	%
	\repeat volta 2 {
	aes''16 f des aes' des, bes' ges des |
	aes' f des aes' des, aes' <des, ees> bes' |
	aes ees des aes' c, aes' ees c |
	aes' f des aes' f des' aes f |
	des' aes f des' ges, des' bes ges |
	des' aes f des' f, des' <e, g> des' |
	ees,! des' ges,! ees c' ges ees c' | }
	%
	\alternative {
	{ des aes f des' aes f des aes' }
	{ des aes f des' aes f des aes' } } |
	%
	\repeat volta 2 {
	aes(ees c aes' c, aes' ges c, |
	des f aes des c ges des')f, |
	aes(ees c aes' c, aes' ges c, |
	des f aes f' ees ges, des')f, |
	aes(ees c aes' c, aes' ges)c, |
	r aes''(aes, aes' ges aes, f' aes, |
	ees' bes ges ees' aes, ges ees)aes | }
	%
	\alternative {
	{ f des' aes f des r r8 }
	{ f16 des' aes f des r r8 } } |
	%
	r8 aes'4 bes8 ~ | bes aes4 <des,8 ees bes'> |
	[ <des ees aes> <des ees aes> <c ees aes> <c ees aes> ] |
	<des f aes> r r4 | r8 <aes'4 des> <bes8 des> ~ |
	<bes des> <aes4 des> <des,8 g des'> |
	%
	[ <des ges! des'> <des ges des'> <c ges' c> <c ges' c> ] |
	des'32 ees f c des aes bes ges f aes ges ees des f ees c |
	des ees des c des aes' g aes des, ees des c des bes' a bes |
	%
	des, ees des c des aes'! g aes des, aes' g aes des, bes' a bes |
	des, aes'! g aes des, aes' g aes c, aes' g aes c, aes' g aes |
	aes ges! f ees des ees f ges aes ges f ges aes bes c des |
	%
	f, ges f e f des' c des ges, des ges f ges des' c des |
	f, ges f e f des' c des f, des' c des <e, g> des' c des |
	<ees,! ges!> des' c des <ees, ges> des' c des
		<ees, ges> c' b c <ees, ges> c' b c |
	%
	<des,8 f des'> r r4 | r8 aes'4 aes8 | [ aes aes aes aes ] |
	r8 aes4 aes8 | [ aes aes aes aes ] | r8 [ c( b c ] |
	[ des f ees )des ] | ges4 <ees, ges aes> |
	<f32 aes> bes aes ges f ges aes bes c des aes ges f aes f des |
	c aes' bes aes c aes bes aes ees' aes, bes aes c aes bes aes |
	des aes bes aes des aes bes aes ges aes bes aes f aes bes aes |
	c, aes' bes aes c aes bes aes ees' aes, bes aes bes aes bes aes |
	%
	bes aes bes aes des aes bes aes ees' aes, bes aes f' aes, bes aes |
	\property Voice.TextSpanner \set #'type = #'dotted-line
	\property Voice.TextSpanner \set #'edge-height = #'(0 . 1.5)
	\property Voice.TextSpanner \set #'edge-text = #'("8va " . "finis 8va")
	\property Staff.centralCPosition = #-13
	ees' \spanrequest \start "text"
	c des c ees c des c aes' c, des c aes' c, des c |
	aes' c, des c aes' des, ees des aes' ees f ees aes f ges f|
	%
	bes ges bes aes ges f ees des c bes aes ges f'
	\spanrequest \stop "text" ees des c |
	des bes aes ges f ees des c \clef "bass" bes, aes ges f ees des aes
		\translator Staff = "lower" \clef "bass" \stemUp f |
	\translator Staff = "upper" \slurUp <des'4 f aes(> <)des ges bes> |
	<des4. f aes> \clef "violin" <des'8 ees bes'> |
	<des4 ees aes(> <)c ees aes> |
	%
	<des8 f aes> r r4 \clef "bass" | <f,4 aes des> <ges bes des> |
	<f4. aes des> \clef "violin" <e'8 g des'> |
	<ees!4 ges! des'> <ees ges c> | <des8 f des'> r r4 \clef "bass" |
	<c,4 ees aes> <c8.. ges' aes> <c32 ees aes> |
	<des8. f aes> \clef "violin" <f'16 aes des(> <ges8 aes c>
		<)f aes des> \clef "bass" |
	%
	<c,4 ees aes> <c8.. ges' aes> <c32 ees aes> |
	<des8. f aes> \clef "violin" <aes''16 f'>
		< { f'16(ees)des8 } \\ { <ges,8 aes> <f aes> } > \clef "bass" |
	<c,,4 ees aes> <c8.. ges' aes> <c32 ees aes> \clef "violin" |
	< { aes'''8. aes16 aes(ges)f8 } \\
		{ <aes,8. des> <des16 f> <c8 ees> des } > |
	<ges,4  bes ees> <ees aes> | <des2-\arpeggio e g des'-\fermata> |
	<des'2-\arpeggio e g des'-\fermata> |
	\bar "|."
}

lower = \context Staff \notes \relative c,{
	% 1
	des4 ges, | des'4. ges,8 | aes4 aes'8.. ges32 |
	f8. ges16 aes16. ges32 f16. ees32 | <des4 des'> <ges, ges'> |
	<des'4. des'> <beses8 beses'(> | <)aes4 aes'> aes' \( ( |
	)aes16. ges32 f16. ees32 \) des8 r |
	%
	<ges4 aes> <ees8.. aes> <ges32 aes> |
	<f8. aes> <des16 aes'> <ees8 aes> <des aes'> |
	<ges4 aes> <ees8.. aes> <ges32 aes> |
	<f8. aes> <des16 aes'> <c8 aes'> <des aes'> |
	<ges4 aes> <ees8.. aes> <ges32 aes> |
	<f8. f'(> <des16 des'> <ees8 ees'> <)f f'> |
	ges4 aes \( ( |
	%
	) aes16. ges32 f16. ees32 \) des8 r |
	%
	\repeat volta 2 {
	r8 des4 ges,8 ( | ) ges8 aes4 g8 ( | ) g?8 aes4 ges'!8 ( |
	[ ) ges16 f8 ees des c16 ( ] | ) c8 des4 ges8 ( |
	) ges8 aes4 a8 ( | ) a?8 aes!4 aes,8 ( | }
	%
	\alternative {
	{ [ ) aes16 des8 aes' f ees16 ( ] | ) ees8 des4 ges,8 }
	{ [ aes16 des8 aes' f des16 ] } } |
	%
	\repeat volta 2 {
	r8 ges'4 \clef "violin" ges''8 \( ( | ) ges16 \) f
	\clef "bass" r16 [ des, r ees r f ] |
	r8 ges,4 \clef "violin" <{aes''8 (} \\ {ges (}> |
	< ) aes8 \\ { [ges16 ) f]} > \clef "bass"
	r16 [ <des,,16 f> r <ees ges> r <f aes> ] |
	r8 <ges,,4 ges'> \clef "violin" <c'''8(ees> ~ |
	[ <c16 ees> <des)f> ] \clef "bass" r
	[ <des,,, des'> r <ees ees'> r <f f'> ~ ] |
	<f8 f'> ges4 aes8 \( ( | }
	%
	\alternative {
	{ [ ) aes16 ges8 f ees \) des16 ] }
	{ [ aes16 f8 ees16 ( ] ~ [ ees 8 ) des ] } } |
	%
	\repeat volta 2 {
	\slurUp des4 ( ges, | des'4. ges,8 | aes4 aes' \( |
	[\) aes8 ges16 f] [ees8 des] | des'4 ges, |
	des'4. a8 | aes!4 aes,\( |
	}
	%
	\alternative {
	{ \) ) aes8 \slurDown des,16( f aes des f )ees }
	{ aes8 des16()f f(des f)aes } } |
	%
	\repeat volta 2 {
	< aes'2 \\ {ges4(ees} > |
	< {aes8 aes16 aes aes8 aes} \\ {f8 ees16 f ees8)des} > |
	< aes2 \\ {ges4(ees} > |
	< {aes8 aes16 aes aes8 aes} \\ {f8 ees16 des c8)des} > |
	< aes2 \\ {ges4(ees} > |
	< {des8 des16 des c8 des} \\ {<f,8 aes> <ees16 ges> <des f>
		<ees8 ges> <)f aes>} > |
	<ges,4 bes ees> <aes c> | }
	%
	\alternative {
	{ <aes8 des> \slurUp des,16(ees)f <des aes'> <ees aes> <f aes> }
	{ <aes8 des> des, \clef "violin" r32 aes'' f aes e aes f aes } } |
	%
	des32 aes' f aes des aes f aes des, bes' ges bes des bes ges bes |
	des, aes' f aes des aes f aes des, aes' f aes ges, ges' ees ges |
	aes, ges' ees ges aes, ges' ees ges aes, ges' ees ges
		aes, ges' ees ges |
	%
	des ees f ges aes bes aes ges f ges aes bes c des aes ges |
	f des' aes des f des aes des ges, des' bes des ges des bes des |
	f, des' aes des f des aes des f, des' aes des e, bes' g bes |
	%
	ees,! a ges! a ees a ges a ees aes ges aes ees aes ges aes |
	<des,8 f aes> r r4 | r8 <des4 f aes> <des8 ges bes> ~ |
	%
	<des8 ges bes> <des4 f aes> <ges,!8 des' ees ges!> |
	<aes des ees ges> <aes des ees ges> <aes c ees ges> <aes c ees ges> |
	<des f> r r4 |
	%
	r8 <aes'4 des> <bes8 des> ~ | <bes des> <aes4 des> a8 |
	aes! aes aes, aes |
	%
	aes32 bes! c des c des ees f ees f ges aes bes c des aes |
	ges ees' c ees b ees c ees ges ees c ees ges, ees' c ees |
	f, des' aes des f, des' aes des ees, c' ges c des, des' f, des' |
	%
	ges, ees' c ees b ees c ees ges ees c ees ges, ees' c ees |
	f, f' des f aes, f' des f ges, ees' c ees f, des' aes des |
	c ges' ees ges aes ges ees ges aes ges ees ges aes ges ees ges |
	%
	f aes f aes des aes des aes c ges c ges f aes f aes |
	bes ges bes aes ges f ees des c bes aes ges f ees des c |
	des8 r r4 |
	%
	r8 ges,4 <ges'8 aes ees'(> ~ | <ges aes ees'> <)f16 aes des> r
		[ <ees aes c> r <des aes' des> ] r |
	r8 ges,4 <c'8 ees ges(> ~ | <c ees ges> <)aes16 des f> r
		[ <ges c ees> r <f aes des> ] r |
	r8 <ges4 c ees> <ees'8 ges aes> ~ | <ees ges aes> <des16 f aes> r
		[ <ges, c ees ges> r <f aes des f> ] r |
	%
	r8 <ees16 ges bes des> r r8 <aes,16 c ees ges> r \clef "bass" |
	r4 r8 r16. \translator Staff = "upper" r32 |
	\translator Staff = "lower" \slurDown des,,4()ges, | des'4. ges'8 |
	aes4 \( () aes16 ges f ees | des bes aes ges f aes ges \) ees |
	%
	<des4 des'> <ges, ges'> | <des'4. des'> beses''8 \( \slurUp |
	aes4()aes16 ges ees c | aes f ees des c des f \) des |
	<ges4 aes> <ees8.. aes> <ges32 aes> | <f8. aes> des''16(ees8)des |
	%
	<ges,,4 aes> <ees8.. aes> <ges32 aes> | <f8. aes> des''16(ees8)des |
	<ges,,4 aes> <ees8.. aes> <ges32 aes> \clef "violin" |
		f''8. \( <des16 f> <ees8 ges> <f16 aes> <des f> \clef "bass" |
	<ges,4 bes> <\) aes c> |
	<bes,2-\arpeggio des e g bes-\fermata> \clef "violin" |
	<bes'2-\arpeggio des e g bes-\fermata> |
}

global = \notes {
	\time 2/4
	\key des \major
}

\score {
	% Moderato
	\context PianoStaff <
		\context Staff = upper <
			\global
			\clef "violin"
			\upper
		>

		\context Staff = lower <
			\global
			\clef "bass"
			\lower
		>
	>
	\midi { \tempo 4 = 60 }
	\paper { linewidth = 18.0 \cm  }
	\header {
		opus = \opus
		piece = \piece
	}
}
