#(ly:set-option 'old-relative)
\header{
	title = "Unquiet Thoughts your civil slaughter stint"
	composer = "John Dowland"
	source = "The First book of Songes or Ayres"
	opus = "Ayres and Lute Songs I"
	date = "1597"
	enteredby = "mutopia@chubb.watle.id.au"

	mutopiatitle="Unquiet Thoughts"
	mutopiacomposer="J. Dowland (1563--1626)"
	mutopiainstrument="Voice (SATB)"
	style="Renaissance"
	copyright = "Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	maintainerWeb = "http://www.chubb.wattle.id.au"
	lastupdated = "2005/Sep/20"
        
        footer = "Mutopia-2005/09/25-21"
        tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
%{
	Updated after comments from Laura Conrad:
		-- Missing minim rest in Cantus made the harmonies weird.
%}
%{
	This was transcribed from a (1597 first) edition held by the
	UNSW library.  I haven't transcribed the lute tablature
	because I don't know how.
%}
%{
	I've attempted here to give the flavour of the original, as
	well as a modern (singing edition.)

	You'll have to imagine the page layout:
	on the left side of a somewhat-larger than A4 spread there's
	the Cantus with the first verse below it, and lute tablature below
	the singing line.  The Cantus is fully barred, with a C time
	signature, although individual bars may contain four, two or
	six minims.  At the bottom of the page are the rest of the verses.

	The altus, tenor and bassus parts are on the right hand page,
	arranged so that the tenor would stand next to the cantus,
	the alto opposite him, and the bass to the right.  The music
	is laid out so that you could put the book on a table and
	stand around it each singer would see his or her own part the
	right way up.
	None of these parts have bar lines, or more than the first
	verse.
%}

\version "2.6.0"
#(set-global-staff-size 16)
global= {
	\key g \minor
	\time 2/1
	\skip 1*16
	\repeat volta 2 {
	\skip 1*7
	} \alternative {{\skip 1}{\skip 1 \bar "|."}}
}

cantus=\relative c'' {
 	\set autoBeaming = ##f

	d2 d4 d4 es1|
	r4 d2 c bes4 a4. a8 |
	g2 r4 a bes c d2 |
	es4 d2 c4 d bes a2 |
%5
	r2 r4 c4 bes g bes2 |
	a4 d4. c8 bes4 c c d2 |
	r4 a4 bes d2 c2 g4 |
	fis bes a4. a8 g1 |
	\repeat volta 2 {
		r4 d'2 bes d4 c a |
%10
		bes g bes c d2 r4 a4 |
		c c g g bes bes f f |
		bes4 g a a
	} \alternative {
	  {  g1 | }  
	  {  g1  }
	}
}

cantusWords=\lyricmode{
	Un2 -- qui4 -- et thoughts1 |
	""4 your2 ci2 -- vill4 slaugh4. -- ter8 |
	stint2 ""4 and wrap your wrongs2 |
	with4 -- in2 a4 pen -- sive hart:2 |
	""2 ""4 And you my tongue2 |
	that4 maks4. my4. mouth4 a minte,2 |
	""4 and stamps my2 thoughts2 to4 |
	coyne4 them words4. by8 arte:1 |
	\repeat volta 2 {
		""4 Be2 still for4 if you |
		ev -- er doo the like,2 ""4 Ile |
		cut the string, Ile cut the string, that | 
		maks4 the ham -- mer
	} \alternative {
	{
		 strike.1 |
	}{
		 strike.1 
	}}
}
	

altus=\relative c''{
 	\set autoBeaming = ##f

	bes2 bes4 bes g1 |
	d2 d4 e fis g2 fis4 |
	g2 r4 fis4 g a bes4. bes8 |
	a4 fis g4. g8 fis4 r8 g a4 c |
%5
	bes g g fis g4. g8 d2 |
	f4 bes4. a8 g4 a8 bes4 a8 bes4 r8 bes |
	a4 fis g4. fis8  d8[ e] f4 es2 |
	d d4. c8 b2 r4 g'4 |
	\repeat volta 2 {
		fis4 a d, g f2. c4 |
		d d g4. g8 fis2 r4 c4 |
		c es es bes d d d d |
		d c4. a8 d4
	} 
	\alternative { 
		{  b2 r4 g'4 | } 
		{  b1 }
	} 
}
altusWords=\lyricmode {
	Un2 -- qui4 -- et thoughts,1 |
	your2 ci4 -- vill slaugh2.-- ter4 |
	stint2 	""4 and wrap your wrongs4. with8 -- |
	in4 a pen4. -- sive8 hart,4 ""8 and8 you4 my |
	toung that makes my mouth4. a8 minte,2  |
	my4 toung4. that8 makes4 my8 mouth4 a8 	minte,4	""8 and8 | 
	stamps4 my thoughts4. to8 coine4. __ ""8 them2 |
	 words by4. __ ""8 art2 ""4 be |
	 \repeat volta 2 {
	 	 still be still for if2. you4 |
		 ev4 -- er do4. the8 like2 ""4 Ile |
		 cut the string Ile cut the string that |
		 makes4 the4.  ham8 -- mer4 
	} \alternative {
	{
		strike.2 ""4 Be |
	} { 
		strike.1
	}}
}

tenor=\relative c' {
 	\set autoBeaming = ##f

	f2 g4  f8[ bes,] bes1 |
	bes2. a2 g4 d'4. c8 |
	b2 r4 d4 d f f4. d8 |
	c c bes4. a8 g4 a r8 bes c4 a |
%5
	d2 r4 bes4 d2 r4 bes4 |
	c g  bes8[ c d bes] f'4 g,2 r8 bes8 |
	c4 d g,4. a8 bes4  a8[ bes] c4. bes8 |
	a4 g g fis g2 es'2  |
	\repeat volta 2 { 
		d4. c8  bes[ a] g4 bes2 a4 f4 ~ |
		f4 bes4. a8 g4 a a a a |
		g g g g f f bes a4 ~ |
		a8 g8 g2 fis4 
	} 
	\alternative{ 
		      { g2 es'2 | } 
		      { g1  } 
	}
}
tenorWords=\lyricmode{
	Un2 qui4 -- et thoughts,1 |
	your2. civ2 -- ile4 slaugh4. -- ter8 |
	stint,2 ""4 and4 wrap your wrongs4. with8 -- |
	in a pen4. -- sive hart,4 ""8 and you4 my |
	tonge2 ""4 my4 tonge2 ""4 that |
	makes my mouth4. __ ""8  a4 mint,2 ""8 and |
	stampes4 my thoughts,4. my8 thoughts4 to8. __ ""16 coine4. to8 |
	coin4 them words by  art,2 be2 | 
	\repeat volta 2 {
		still4. for8 if4 you4 ev2 -- er4 do4 ""4 the2. __
		like4 ile4 cut the | string  
		ile cut the string that makes4 the4. __ % should be the2 
		""8  ham2 --  mer4 
	} \alternative {
		{ strike.2 Be2 | }
		{ strike.1  }
	}
}


bassus=\relative c' {
 	\set autoBeaming = ##f

	bes2 g4 bes es,1 |
	g2 d d d4 d |
	g,2 r4 d'4 g f bes bes, |
	c d es4. es8 d4 g2 fis4 |
	g bes a4. a8 g2 r4 g4 |
	f d g2 f bes,2 |
	r1 r4 f' c c| 
	d2. d4 g,2 r2 
	\repeat volta 2 {
		r1 r2 f'2 |
		d4 g4. f8 es4 
		d4 d  f  f| c c es es 
		bes bes  d  d |g es d d }
	\alternative{ {g2 r2} {g1}
	}
}

bassusWords=\lyricmode{
	Un2 -- qui4 -- et thoughts,1 |
	your2 civ -- ile slaugh4 -- ters |
	stint,2 ""4 and4 wrap your wrongs with -- |
	in a pens4. -- ive8 hart,4 wrongs2 with4 -- |
	in a pens4. -- ive8 hart,2 ""4 that4 |
	makes my mouth2 a mint |
	""1	""4 to coine them |
	words2. by4 
	arte,2 ""2 |
	\repeat volta 2 {
		""1 ""2 ev2 -- |
		er4 do4. __ ""8 the4 like,4 Ile cut the |
		string, Ile cut the string, the string that |
		makes4 the ham -- mer
	} \alternative { 
		{ strike2 ""2 | }
		{ strike1  } 
	}
}


\score {
       \context ChoirStaff <<
		\context Staff ="cantus" <<
			{\clef "G2"\global}
			\cantus
			\context Lyrics = "cantus" \cantusWords
		>>
		\context Staff ="altus" <<
			 {\clef "G2"\global}
			 \altus
			 \context Lyrics = "altus" \altusWords
		>>
		\context Staff ="tenor" <<
			 {\clef "G2_8"\global}
			 \tenor
			 \context Lyrics="tenor" \tenorWords
		>>
		\context Staff = "bass" <<
			 {\clef "F"\global}
			 \bassus
			 \context Lyrics = "bass" \bassusWords
		 >>		
     >>
%{

	       \context ChoirStaff <<
		\context Staff ="cantus" <<
			{\clef "C1"\global}
			\cantus
			\context Lyrics = "cantus" \cantusWords
		>>
		\context Staff ="altus" <<
			 {\clef "C2"\global}
			 \altus
		>>
		\context Staff ="tenor" <<
			 {\clef "C3"\global}
			 \tenor
		>>
		\context Staff = "bass" <<
			 {\clef "F"\global}
			 \bassus
			 \context Lyrics = "bass" \bassusWords
		 >>		
     >>
%}
    \layout{
	indent=0.0\mm
%	crescendo_height = \staffheight/6.0

	% Mutopia guidelines
	linewidth = 18.0\cm

    }
    \midi {
	\tempo 4=120
    }
}

