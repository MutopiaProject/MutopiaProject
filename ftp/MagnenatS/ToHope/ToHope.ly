\version "2.10.0"
\header
{
	title = "To hope"
	poet = "John Keats"
	composer = "Stéphane Magnenat"
	copyright = \markup
	{
		\center-align
		{
			\line { "©" \with-url #"http://stephane.magnenat.net" "Stéphane Magnenat" "2007 - stephane" \italic at magnenat \italic dot net }
			\small \line { "This creation is released under a " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution-Share Alike 3.0" "license."}
		}
	}
	mutopiacopyright = "Creative Commons Attribution-ShareAlike 3.0"
	mutopiacomposer = "MagnenatS"
	mutopiapoet = "John Keats"
	mutopiainstrument = "Voice (SATB)"
	date = "2007"
	source = "own work"
	style = "Romantic"
	maintainer = "Stéphane Magnenat"
	maintainerEmail = "stephane at magnenat dot net"
	maintainerWeb = "http://stephane.magnenat.net"
 footer = "Mutopia-2007/10/23-1005"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

#(set-global-staff-size 15.5)
globalStaffSettings =
{
	\override Score.BarNumber #'break-visibility = #all-visible
	\override Score.MetronomeMark #'transparent = ##t
	\time 4/4
	\tempo 4 = 96
}

verseOne = \lyricmode
{
	"When " "by" "my" "sol" -- "i" -- "ta" -- "ri" "hearth " "I" "sit"
	"And" "hate" -- "ful" "thoughts" "en" -- "wrap" "my" "soul" "in" "gloom;"
	"When" "no" "fair" "dreams" "be" -- "fore " "my" "mind" "'s eye" "flit"
	"And" "the" "bare" "heath" "of" "life" "pre" -- "sent" "no" "bloom"
	"Sweet" "hearth" "e" -- "the" -- "real" "balm" "u-" "pon" "me" "shed"
	"And" "wave" "thy" "sil" -- "ver" "pi" -- "nion" "o'er" "my" "head"
}

verseTwo = \lyricmode
{
	"When" -- "e'er" "I" "wan" -- "der," "at" "the" "fall" "of" "night"
	"Where" "wo" -- "ven" "boughs" "shut" "out" "the" "moon's" "bright" "ray,"
	"Should" "sad" "Des" -- "pon" -- "den" -- "cy" "my" "mus" -- "ings" "fright,"
	"And" "frown," "to" "drive" "fair" "Cheer" -- "ful" -- "ness" "a" -- "way"
	"Peep" "with" "the" "moon" -- "beams" "through" "the" "lea" -- "fy" "roof,"
	"And" "keep" "that" "fiend" "Des" -- "pon" -- "dence" "far" "a" -- "loof!"
}

verseThree = \lyricmode
{
	"Should" "Dis" -- "ap" -- "point" -- "ment," "pa" -- "rent" "of" "Des" -- "pair,"
	"Strive" "for" "her" "son" "to" "seize" "my" "care" -- "less" "heart;"
	"When," "like" "a" "cloud," "he" "sits" "u" -- "pon" "the" "air,"
	"Pre" -- "par" -- "ing" "on" "his" "spell-" "bound" "prey" "to" "dart:"
	"Chase" "him" "a" -- "way," "sweet" "Hope," "with" "vis" -- "age" "bright,"
	"And" "fright" "him" "as" "the" "morn" -- "ing" "fright" -- "ens" "night!"
}

sopranoMusic =
{
	\clef "treble"
	%% 1
	a' 2 ^\markup { \bold "Andante" } \mf bes' 4 g'
	a' 2. f' 4
	g' 4. g' 8 f' 4 c''
	bes' 1
	
	%% 5
	a' 2  \< g' 4 g'
	d'' 2. \! f' 4
	g' 4. \> g' 8 a' 4 f'
	f' 2 \< _( g' 4 a' ) \!
	
	%% 9
	bes' 2 \f c'' 4 d''
	g' 4. _( f' 8 g' 4 ) g'
	c'' 4 bes' a' f'
	g' 1
	
	%% 13
	a' 2 \mf f' 4 g'
	a' 2. e' 4
	g' 4 a' c'' bes'
	g' 1
	
	%% 17
	e'' 4 \p e'' 2. ~
	e'' 1
	a' 2 g' 4 c''
	d'' 4 e'' d'' c''
	d'' 1
	
	%% 22
	a' 2 \mf g' 8 _( a' ) f' 4
	g' 4. g' 8 f' 4 _( c'' )
	des'' 4 ^\markup { \bold "rall." } \< des'' 8 _( c'' a' 4 ) b'
	c'' 1 \!
	\bar "|."
}

altoMusic =
{
	\clef "treble"
	%% 1
	e' 2 \mf ees' 4 ees'
	d' 2. bes 4
	d' 4. d' 8 c' 4 ees'
	d' 1
	
	%% 5
	e' 2 \< ees' 4 ees'
	f' 2.  \! des' 4
	d' 4. \> d' 8 c' 4 c'
	d' 2 \< _( e' 4 f' ) \!
	
	%% 9
	f' 2 \f f' 4 f'
	e' 4 _( d' ees' ) ees'
	g' 4 g' f' c' 8 _( d' )
	d' 1
	
	%% 13
	f' 8 \mf _( e' d' 4 ) c' e'
	f' 2. c' 4 
	b 4 c' 8 _( d' ) f' 4 g' 
	c' 1
	
	%% 17
	r1
	c'' 4 \p c'' _( b' 2 )
	c' 2 c' 4 d' 8 _( e' )
	g' 4 bes' a' a' 
	f' 1
	
	%% 22
	c' 2 \mf c' 4 c'
	d' 2 c'
	f' 4 \< g' fis' gis'
	e' 1 \!
	\bar "|."
}

tenorMusic =
{
	\clef "bass"
	
	%% 1
	c' 2 \mf bes 4 bes
	a 2. bes 4
	g 4. g 8 f 4 f
	g 1 
	
	%% 5
	c' 2 \< bes 4 bes
	a 2. \! bes 4
	bes 4.\> bes 8 c' 4 a
	a 1 \!
	
	%% 9
	bes 2 \f c' 4 bes
	c' 2 _( bes 4 ) bes
	c' 4 d' c' c'
	bes 1
	
	%% 13
	a 2 \mf a 4 bes
	c' 2. a 4
	e 4 f d d 8 _( f )
	e 1
	
	%% 17
	r2 a 4 \p a ~
	a 2 _( g )
	f 2 g 4 g
	g 4 g f f
	d 1
	
	%% 22
	e 2 \mf a 4 a
	bes 2 f
	f 4 \< bes c' b
	a 1 \!
	\bar "|."
}

bassMusic =
{
	\clef "bass"
	%% 1
	a 2 \mf g 4 g 
	f 4 _( e d ) des 8 _( c )
	bes, 4. bes, 8 a, 4 a,
	g, 1
	
	%% 5
	a, 8 \< _( b, c d ) ees 4 ees 
	d 2. \! bes, 8 _( a, )
	g, 4. \> g, 8 f, 4 f
	d 1 \!
	
	%% 9
	d 4  \f _( c 8 bes, ) a, 4 bes,
	c 4 _( d ees ) ees
	ees 4 d 8 _( e ) f 4 f
	g 1
	
	%% 13
	d 8 \mf _( c bes, 4 ) a, g,
	f, 2 f, 8 _( g, a, 4 )
	b, 4 a, a, g,
	c 1
	
	%% 17
	r1
	r2 e 4 \p e
	f 2 e 4 d 8 _( c )
	bes, 4 c d 4. c 8
	bes, 1
	
	%% 22
	a, 2 \mf f 4 f
	g, 2 a,
	bes, 4 \< ees ees e
	a, 1 \!
	\bar "|."
}

\score
{
	\new StaffGroup
	<<
		\context Staff = "track 1"
		<<
			\set Staff.instrumentName = "Soprano  "
			\globalStaffSettings
			
			\new Voice = "soprano" \sopranoMusic
			\lyricsto "soprano" \new Lyrics \verseOne
			\lyricsto "soprano" \new Lyrics \verseTwo
			\lyricsto "soprano" \new Lyrics \verseThree
		>>

		\context Staff = "track 2"
		<< 
			\set Staff.instrumentName = "Alto  "
			\globalStaffSettings
			
			\new Voice = "alto" \altoMusic
			\lyricsto "alto" \new Lyrics \verseOne
			\lyricsto "alto" \new Lyrics \verseTwo
			\lyricsto "alto" \new Lyrics \verseThree
		>>

		\context Staff = "track 3"
		<< 
			\set Staff.instrumentName = "Tenor  "
			\globalStaffSettings
			
			\new Voice = "tenor" \tenorMusic
			\lyricsto "tenor" \new Lyrics \verseOne
			\lyricsto "tenor" \new Lyrics \verseTwo
			\lyricsto "tenor" \new Lyrics \verseThree
		>> 

		\context Staff = "track 4"
		<< 
			\set Staff.instrumentName = "Bass  "
			\globalStaffSettings
			
			\new Voice = "bass" \bassMusic 
			\lyricsto "bass" \new Lyrics \verseOne
			\lyricsto "bass" \new Lyrics \verseTwo
			\lyricsto "bass" \new Lyrics \verseThree
		>>
	>>
	
	\layout
	{
		\context
		{
			\Lyrics
				\consists "Bar_engraver"
				\consists "Separating_line_group_engraver"
				\override BarLine #'transparent = ##t
		}
	}

	\midi { }
} % score

\score
{
	\new PianoStaff = "piano" \with
	{
		\override VerticalAlignment #'forced-distance = #14
	}
	<<
		\set PianoStaff.instrumentName = "Piano  "
		\new Staff = "upper"
		<<
			\globalStaffSettings
			\new Voice = "soprano"
			{
				\stemUp
				\override Voice.DynamicText #'transparent = ##t
				\override Voice.Hairpin #'transparent = ##t
				\sopranoMusic
			}
			\new Voice = "alto"
			{
				\stemDown
				\altoMusic
			}
		>>
		\new Staff = "lower"
		<<
			\globalStaffSettings
			\override Staff.DynamicText #'transparent = ##t
			\override Staff.Hairpin #'transparent = ##t
			\context Voice = "tenor"
			{
				\stemUp
				\tenorMusic
			}
			\context Voice = "bass"
			{
				\stemDown
				\bassMusic
			}
		>>
	>>
} % score


