\header {
	title = "Unquiet Thoughts your civil slaughter stint"
	composer = "John Dowland"
	source = "The First book of Songes or Ayres"
	opus = "Ayres and Lute Songs I"
	date = "1597"
	enteredby = "mutopia@chubb.wattle.id.au"

	mutopiatitle="Unquiet Thoughts"
	mutopiacomposer="DowlandJ"
	mutopiainstrument="Voice (SATB)"
	style="Renaissance"
	copyright="Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	lastupdated = "2009/Aug/5"

 footer = "Mutopia-2009/08/05-21"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
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

	All the slurs are my editorial additions, in order to show 
	the textual underlay.   I may have got them wrong!
%}

\version "2.12.0"
% fit to two pages
#(set-global-staff-size 18)

global= {
	\key g \minor
	\set Staff.midiInstrument = "recorder"
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
	a4 d4. c8( bes4) c c d2 |
	r4 a4 bes d2 c2 g4 |
	fis bes a4. a8 g1 |
	\repeat volta 2 {
		r4 d'2 bes d4 c a |
%10
		bes g bes c d2 r4 a4 |
		c c g g bes bes f f |
		bes4 g a a
	} \alternative {
	  {  g1  }  
	  {  g1  }
	}
}

cantusWords=\lyricmode{
	Un -- qui -- et thoughts 
	your ci -- vill slaugh -- ter 
	stint
	and wrap your wrongs 
	with -- in a pen -- sive hart: 
	And you my tongue 
	that maks my mouth a minte, 
	and stamps my thoughts to 
	coyne them words by arte: 
%	\repeat volta 2 {
		Be still for if you 
		ev -- er doo the like,
		Ile 
		cut the string, Ile cut the string, that 
		maks the ham -- mer
%	} \alternative {
%	{
		 strike. 
%	}{
		 strike. 
%	}}
}
	

altus=\relative c''{
 	\set autoBeaming = ##f
	bes2 bes4 bes g1 |
	d2 d4 e fis( g2) fis4 |
	g2 r4 fis4 g a bes4. bes8 |
	a4 fis g4. g8 fis4 r8 g a4 c |
%5
	bes g g fis g4. g8 d2 |
	f4 bes4. a8 g4 a8 bes4 a8 bes4 r8 bes |
	a4 fis g4. fis8  d8([ e] f4) es2 |
	d d4.( c8) b2 r4 g'4 |
	\repeat volta 2 {
		fis4 a d, g f2. c4 |
		d d g4. g8 fis2 r4 c4 |
		c es es bes d d d d |
		d c4. a8 d4
	} 
	\alternative { 
		{  b2 r4 g'4 } 
		{  b,1 }
	} 
}
altusWords=\lyricmode {
	Un -- qui -- et thoughts, 
	your ci -- vil slaugh -- ter 
	stint 
	and wrap your wrongs with -- 
	in a pen -- sive hart, and you my 
	toung that makes my mouth a minte, 
	my toung that makes my mouth a
 	minte, and
	stamps my thoughts to coine __  them
	 words by __  art 
	be
% \repeat volta 2 {
	 	 still be still for if you
		 ev -- er do the like
		 Ile |
		 cut the string Ile cut the string that |
		 makes the  ham -- mer
%	} \alternative {
%	{
		strike.  Be 
%	} { 
		strike.
%	}}
}

tenor=\relative c' {
 	\set autoBeaming = ##f

	f2 g4  f8[ bes,] bes1 |
	bes2. a2 g4 d'4. c8 |
	b2 r4 d4 d f f4. d8 |
	c c bes4. a8( g4) a r8 bes c4 a |
%5
	d2 r4 bes4 d2 r4 bes4 |
	c g  bes8[ c d bes] f'4 g,2 r8 bes8 |
	c4 d g,4. a8 bes4  a8[ bes] c4. bes8 |
	a4 g g fis g2 es'2  |
	\repeat volta 2 { 
		d4. c8  bes[ a] g4 bes2 a4 f4 ~ |
		f4 bes4.( a8 g4) a a a a |
		g g g g f f bes( a4 ~ |
		a8) g8 g2 fis4 
	} 
	\alternative{ 
		      { g2 es'2  } 
		      { g,1  } 
	}
}
tenorWords=\lyricmode{
	Un qui -- et thoughts, 
	your civ -- ile slaugh -- ter 
	stint,  and wrap your wrongs with -- 
	in a pen -- sive hart  and you my 
	tonge  my tonge that 
	makes my mouth __   a mint, and 
	stampes my thoughts, my thoughts to __  coine to 
	coin them words by  art, be2 
%	\repeat volta 2 {
		still for if you ev -- er do the __
		like ile cut the  string  
		ile cut the string that makes the __ % should be the2 
		ham --  mer 
%	} \alternative {
		{ strike. Be  }
		{ strike.   }
%	}
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
		d4 g4.( f8) es4 
		d4 d  f  f| c c es es 
		bes bes  d  d |g es d d }
	\alternative{ {g2 r2} {g1}
	}
}

bassusWords=\lyricmode{
	Un -- qui -- et thoughts,
	your civ -- ile slaugh -- ters
	stint,  and wrap your wrongs with --
	in a pens -- ive hart, wrongs with --
	in a pens -- ive hart,  that
	makes my mouth a mint
	to coine them
	words by 
	arte,
%	\repeat volta 2 {
		 ev -- 
		er do __  the like, Ile cut the 
		string, Ile cut the string, the string that 
		makes the ham -- mer
%	} \alternative { 
		{ strike.  }
		{ strike.  } 
%	}
}


FullScore =  \context ChoirStaff <<
		\context Staff ="cantus" <<
			{\clef "G2"\global}
			\context Voice = "cantus" \cantus
		>>
		\lyricsto "cantus" \context Lyrics = "cantus" \cantusWords
		\context Staff ="altus" <<
			 {\clef "G2"\global}
			 \context Voice = "altus" \altus
		>>
		\lyricsto "altus" \context Lyrics = "altus" \altusWords
		\context Staff ="tenor" <<
			 {\clef "G2_8"\global}
			 \context Voice = "tenor" \tenor
		>>
		\lyricsto "tenor" \context Lyrics = "tenor" \tenorWords
		\context Staff = "bass" <<
			 {\clef "F"\global}
			 \context Voice = bass \bassus
		 >>		
		\lyricsto "bass" \context Lyrics = "bass" \bassusWords
     >>

%{ 
% Original clefs, etc.

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
\score {
  \FullScore
    \layout{
	indent=0.0\mm
%	crescendo_height = \staff-height/6.0
	% Mutopia guidelines
	line-width = 18.0\cm
    }
}

\score {
    \unfoldRepeats \FullScore
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
}
