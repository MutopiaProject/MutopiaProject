\version "2.16.1"

%#(set-default-paper-size "a4")
#(set-global-staff-size 21)


\paper {
	line-width = 18.0\cm
	top-markup-spacing #'basic-distance = #14
	markup-markup-spacing #'basic-distance = #8   %distance between titles
	markup-system-spacing #'basic-distance = #16  %distance from header/title to 1st system
	system-system-spacing #'basic-distance = #19  %fixed distance between systems
	top-system-spacing #'basic-distance = #18     %dist. from top margin to system (no titles)
	last-bottom-spacing #'basic-distance = #12
	ragged-bottom = ##f
	ragged-last-bottom = ##f
}


\header {
	title = "Sonate f-Moll (Appassionata)"
	composer = "Ludwig van Beethoven"

	mutopiatitle = "Sonata No. 23 “Appassionata” (2nd Movement: Andante con moto)"
	mutopiacomposer = "BeethovenLv"
	mutopiaopus = "Op. 57"
	mutopiainstrument = "Piano"
	source = "Schott Einzelausgabe"
	style = "Classical"
	license = "Public Domain"
	maintainer = "Andreas Scherer"
	maintainerEmail = "andreas_mutopia@freenet.de"
	lastupdated = "2014/01/11"

 footer = "Mutopia-2014/03/28-288"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

piece-markup = "Andante con moto"
opus = "Opus 57"

upper = \context Staff  \relative c {
	
	\set Timing.beamExceptions = #'()
	\set Timing.baseMoment = #(ly:make-moment 1/4)
	\set Timing.beatStructure = #'(1 1)
	
	% 1
	\clef "bass" \stemDown 
	<des f aes> <des ges bes> ^\markup{ \column{\line {\right-align \caps \piece-markup} \line {" "}}} |
	<des f aes>4. <des ees bes'>8 |
	<des ees aes>4 <c ees aes> |
	<des f aes>2 |
	<f aes des>4 <ges bes des> |
	<f aes des>4. <e g des'>8 |
	<ees! ges! des'>4 <ees ges c> |
	<des f des'>4. r8 \bar ":|:" |
	%
	<c ees aes>4 <c ges' aes>8.. <c ees aes>32 |
	<des f aes>8. <f aes des>16 <ges aes c>8 <f aes des> |
	<c ees aes>4 <c ges' aes>8.. <c ees aes>32 |
	<des f aes>8. <f aes f'>16 <<{f'16(ees des8)} \\ {<ges, aes>8 <f aes>}>> |
	<c ees aes>4 <c ges' aes>8.. <c ees aes>32 |
	\clef "violin" <aes' des aes'>8. <des f aes>16
	<<{aes'16(ges f8)} \\ {<c ees>8 <aes des>}>> |
	\clef "bass" <ges bes ees>4( <c, ees aes> |
	%
	<des f des'>4.) r8 \bar ":|"
	<des f aes>8[ r <des ges bes> ] r |
	%
	\repeat volta 2 {
	<des f aes>[ r < des ees bes'> ] r |
	<des ees aes>[ r <c ees aes> ] r |
	 ges'16[ r f r ees r des ] r |
	<f aes des>8[ r <ges bes des> ] r |
	<f aes des>[ r <e g des'> ] r |
	<ees! ges! des'>[ r <ees ges c> ] r | }
	%
	\alternative {
	{ <des f des'>16[ r aes' r f r ees ] r |
	<des f aes>8[ r <des ges bes> ] r }
	{ <des f des'>16[ r aes' r f r des ] r } } |
	%
	\repeat volta 2 {
	<c ees aes>8[ r <c ees aes> ] r |
	<des f aes>  f16[ r ges r aes ] r |
	<c, ees aes>8[ r <ees aes c> ] r |
	<f aes des>  aes16[ r c r des] r |
	<c, ees aes>8[ r <ges' c ees> ] r |
	<f des' f> \clef "violin"
	<f f'>16[ r <ges ges'> r <aes aes'> ] r |
	<des des'>8[ r \clef "bass" <c, ees aes> ] r | }
	%
	\alternative {
	{  ges'16[ r f r ees r des ] r }
	{  f16[ r ees r des ] r r8 \clef "violin" } } |
	%
	\repeat volta 2 {
	aes''16 f des aes' des, bes' ges des |
	aes' f des aes' des, aes' <des, ees> bes' |
	\pageBreak
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
	des f aes des c ges des' f,) |
	aes(ees c aes' c, aes' ges c, |
	des f aes f' ees ges, des' f,) |
	aes(ees c aes' c, aes' ges c,) |
	r aes''(aes, aes' ges aes, f' aes, |
	ees' bes ges ees' aes, ges ees aes) | }
	%
	\alternative {
	{ f des' aes f des r r8 }
	{ f16 des' aes f des r r8 } } 
	%
	r8 aes''4 bes8 ~ | bes aes4 <des, ees bes'>8 |
	<des ees aes>[ <des ees aes> <c ees aes> <c ees aes> ] |
	<des f aes> r r4 | r8 <aes' des>4 <bes des>8 ~ |
	<bes des> <aes des>4 <des, g des'>8 |
	%
	<des ges! des'>[ <des ges des'> <c ges' c> <c ges' c> ] |
	
	\set Timing.baseMoment = #(ly:make-moment 1/8)
	\set Timing.beatStructure = #'(1 1 1 1)
	
	des'32[ ees f c] des[ aes bes ges] f[ aes ges ees] des f ees c |
	des ees des c des[ aes' g aes des,] ees des c des[ bes' a bes] |
	%
	des, ees des c des[ aes'! g aes des,] aes' g aes des,[ bes' a bes] |
	\pageBreak
	des, aes'! g aes des,[ aes' g aes c,] aes' g aes c,[ aes' g aes] |
	aes ges! f ees des[ ees f ges] aes ges f ges aes[ bes c des] |
	%
	f, ges f e f[ des' c des] ges, des ges f ges[ des' c des] |
	f, ges f e f[ des' c des] f, des' c des <e, g>[ des' c des] |
	<ees,! ges!>[ des' c des] <ees, ges> des' c des
		<ees, ges>[ c' b c] <ees, ges> c' b c |
	%
	<des, f des'>8 r r4 | r8 aes'4 aes8 |  aes[ aes aes aes ] |
	r8 aes4 aes8 |  aes[ aes aes aes ] | r8  c[( b c ] |
	 des[ f ees  des) ] | ges4 <ees, ges aes> |
	<f aes>32[ bes aes ges] f ges aes bes c[ des aes ges] f aes f des |
	c[ aes' bes aes] c aes bes aes ees'[ aes, bes aes] c aes bes aes |
	des[ aes bes aes] des aes bes aes ges[ aes bes aes] f aes bes aes |
	c,[ aes' bes aes c] aes bes aes ees'[ aes, bes aes] bes aes bes aes |
	%
	bes[ aes bes aes] des aes bes aes ees'[ aes, bes aes] f' aes, bes aes |

	\ottava #1
	ees' c des c ees[ c des c] aes' c, des c aes'[ c, des c] |
	aes'[ c, des c] aes' des, ees des[ aes' ees f] ees aes f ges f|
	%
	bes[ ges bes aes] ges f ees des c[ bes aes ges] \ottava #0 f ees des c |
	
	des[ bes aes ges] f ees des c \clef "bass" bes[ aes ges f] ees des aes
		\change Staff = "lower" \clef "bass" \stemUp f |
	\change Staff = "upper" \slurUp <des' f aes>4( <des ges bes>) |
	<des f aes>4. \clef "violin" <des' ees bes'>8 |
	<des ees aes>4( <c ees aes>) |
	%
	<des f aes>8 r r4 \clef "bass" | <f, aes des>4 <ges bes des> |
	<f aes des>4. \clef "violin" <e' g des'>8 |
	<ees! ges! des'>4 <ees ges c> | <des f des'>8 r r4 \clef "bass" |
	<c, ees aes>4 <c ges' aes>8.. <c ees aes>32 |
	<des f aes>8. \clef "violin" <f' aes des>16( <ges aes c>8
		<f aes des>) \clef "bass" |
	%
	<c, ees aes>4 <c ges' aes>8.. <c ees aes>32 |
	<des f aes>8. \clef "violin" <aes'' f'>16
		<< { f'16(ees des8) } \\ { <ges, aes>8 <f aes> } >> \clef "bass" |
	<c, ees aes>4 <c ges' aes>8.. <c ees aes>32 \clef "violin" |
	<< { aes'''8. aes16 aes(ges f8) } \\
		{ <aes, des>8. <des f>16 <c ees>8 des } >> |
	<ges,  bes ees>4 <ees aes> | <des e g des'>2\arpeggio\fermata |
	<des' e g des'>2\arpeggio\fermata |
	\bar "|."
	
}

lower = \context Staff  \relative c,{
	\set Timing.beamExceptions = #'()
	\set Timing.baseMoment = #(ly:make-moment 1/4)
	\set Timing.beatStructure = #'(1 1)
	% 1
	des4 ges, |
	des'4. ges,8 |
	aes4 aes'8.. ges32 |
	f8. ges16 aes16.[ ges32] f16. ees32 |
	<des des'>4 <ges, ges'> |
	<des' des'>4. <beses beses'>8( |
	<aes aes'>4) aes' \( ~ |
	 aes16.[ ges32] f16. ees32  des8\) r |
	 
	%
	<ges aes>4 <ees aes>8.. <ges aes>32 |
	<f aes>8. <des aes'>16 <ees aes>8 <des aes'> |
	<ges aes>4 <ees aes>8.. <ges aes>32 |
	<f aes>8. <des aes'>16 <c aes'>8 <des aes'> |
	<ges aes>4 <ees aes>8.. <ges aes>32 |
	<f f'>8.( <des des'>16 <ees ees'>8 <f f'>) |
	ges4 aes \( ~ |
	%
	 aes16. ges32 f16. ees32  des8\) r |

	%
	\repeat volta 2 {
	r8 des4 ges,8 ~ | 
	ges8 aes4 g8 ~ |
	g?8 aes4 ges'!8 ~ |
	
	\pageBreak
	
	ges16 f8 ees des c16 ~ |  
	c8 des4 ges8 ~ |
	ges8 aes4 a8 ~ |
	a?8 aes!4 aes,8 ~ | }
	%
	\alternative {
	{ aes16 des8 aes' f ees16 ~ | ees8 des4 ges,8 \laissezVibrer} 
	{ aes16[\repeatTie des8 aes' f des16 ] } } |
	%
	
	\repeat volta 2 {
	r8 ges4 \clef "violin" ges''8 \( ~ |  
	ges16  f\)
	\clef "bass" r16  des,[ r ees r f ] |
	r8 ges,4 \clef "violin" <<{aes''8 ~} \\ {ges (}>> |
	<< { aes8 }\\ {  ges16[  f)]} >> \clef "bass"
	r16 <des, f>16[ r <ees ges> r <f aes> ] |
	r8 <ges,, ges'>4 \clef "violin" <c'''ees>8( ~ |
	<c ees>16[ <des f>) ] \clef "bass" r
	<des,,, des'>[ r <ees ees'> r <f f'> ~ ] |
	<f f'>8 ges4 aes8 ~ \(  | }
	%
	\alternative {
	{   aes16 ges8 f ees  des16\)  }
	{  aes'16[ f8 ees16 ( ] ~  ees8  des)  } } |
	%
	
	\repeat volta 2 {
	\slurUp des'4 ( ges, | 
	des'4. ges,8 | aes4 aes' ~ |
	aes8 ges16 f  ees8[ des] | des'4 ges, |
	des'4. a8 | aes!4 aes, ~ |
	}
	%
	\alternative {
	{   aes8 ) \slurDown des,16( f aes des f  ees) }
	{ aes,8 des16( f) f(des f aes) } } |
	%
	\repeat volta 2 {
	<< aes2 \\ {ges4(ees} >> |
	<< {aes8 aes16 aes aes8 aes} \\ {f8 ees16 f ees8 des)} >> |
	<< aes'2 \\ {ges4(ees} >> |
	<< {aes8 aes16 aes aes8 aes} \\ {f8 ees16 des c8 des)} >> |
	<< aes'2 \\ {ges4(ees} >> |
	<< {des'8 des16 des c8 des} \\ {<f, aes>8 <ees ges>16 <des f>
		<ees ges>8 <f aes>)} >> |
	<ges bes ees>4 <aes c> | }
	%
	\alternative {
	{ <aes des>8 \slurUp des,16(ees f) <des aes'> <ees aes> <f aes> }
	{ <aes des>8 des, \clef "violin"
	\set Timing.baseMoment = #(ly:make-moment 1/8)
	\set Timing.beatStructure = #'(1 1 1 1)
	r32 aes'' f aes e aes f aes } } |
	
	%
	des,32 aes' f aes des aes f aes des, bes' ges bes des bes ges bes |
	des, aes' f aes des aes f aes des, aes' f aes ges, ges' ees ges |
	aes, ges' ees ges aes, ges' ees ges aes, ges' ees ges
		aes, ges' ees ges |
	%
	des ees f ges aes bes aes ges f ges aes bes c des aes ges |
	\stemDown
	f des' aes des f des aes des ges, des' bes des ges des bes des |
	f, des' aes des f des aes des f, des' aes des \stemNeutral e, bes' g bes |
	%
	ees,! a ges! a ees a ges a ees aes ges aes ees aes ges aes |
	\set Timing.baseMoment = #(ly:make-moment 1/4)
	\set Timing.beatStructure = #'(1 1)
	<des, f aes>8 r r4 | r8 <des f aes>4 <des ges bes>8 ~ |
	%
	<des ges bes>8 <des f aes>4 <ges,! des' ees ges!>8 |
	
	<aes des ees ges> <aes des ees ges> <aes c ees ges> <aes c ees ges> |
	<des f> r r4 |
	%
	r8 <aes' des>4 <bes des>8 ~ | <bes des> <aes des>4 a8 |
	aes! aes aes, aes |
	%
	
	\set Timing.baseMoment = #(ly:make-moment 1/8)
	\set Timing.beatStructure = #'(1 1 1 1)
	
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
	
	\set Timing.baseMoment = #(ly:make-moment 1/4)
	\set Timing.beatStructure = #'(1 1)
	
	r8 ges,4 <ges' aes ees'>8 ~ ( | <ges aes ees'> <f aes des>16) r
		<ees aes c>[ r <des aes' des> ] r |
	r8 ges,4 <c' ees ges>8( ~ | <c ees ges> <aes des f>16) r
		<ges c ees>[ r <f aes des> ] r |
	r8 <ges c ees>4 <ees' ges aes>8 ~ ( | <ees ges aes> <des f aes>16) r
		<ges, c ees ges>[ r <f aes des f> ] r |
	%
	r8 <ees ges bes des>16 r r8 <aes, c ees ges>16 r \clef "bass" |
	r4 r8 r16. \change Staff = "upper" r32 |
	\change Staff = "lower" \slurDown des,,4( ges,) | des'4. ges'8 |
	aes4~ \( aes16 ges f ees | des bes aes ges f aes ges  ees\) |
	%
	<des des'>4 <ges, ges'> | <des' des'>4. beses''8 \(  |
	aes4 ~ aes16  ges ees c | aes f ees des c des f  des\) |
	<ges aes>4 <ees aes>8.. <ges aes>32 | <f aes>8. des''16^( ees8 des) |
	%
	<ges,, aes>4 <ees aes>8.. <ges aes>32 | <f aes>8. des''16^( ees8 des) |
	<ges,, aes>4 <ees aes>8.. <ges aes>32 \clef "violin" |
		f''8. \( <des f>16 <ees ges>8 <f aes>16 <des f> \clef "bass" |
	<ges, bes>4 <aes c>\) |
	<bes, des e g bes>2\arpeggio\fermata \clef "violin" |
	<bes' des e g bes>2\arpeggio\fermata |
	
}

global =  {
	\time 2/4
	\key des \major
}

\score {
	% Moderato
	\context PianoStaff <<
		\context Staff = "upper" <<
			\global
			\clef "violin"
			\upper
		>>

		\context Staff = "lower" <<
			\global
			\clef "bass"
			\lower
		>>
	>>
	
  \midi {
    \tempo 4 = 60
    }

   \layout { line-width = 18.0 \cm  }
   \header {
	opus = \opus
	}
}
