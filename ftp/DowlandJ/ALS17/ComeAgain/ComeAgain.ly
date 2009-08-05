#(ly:set-option 'old-relative)
\header{
	title = "Come Again"
	composer = "John Dowland"
	source = "The First book of Songes or Ayres"
	opus = "Ayres and Lute Songs XVII"
	date = "1597"
	enteredby = "mutopia@chubb.wattle.id.au"

	mutopiatitle="Come Again"
	mutopiacomposer="DowlandJ"
	mutopiainstrument="Voice (SATB)"
	style="Renaissance"
	copyright="Public Domain"
	lastupdated = "2009/Aug/5"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"

 footer = "Mutopia-2009/08/05-1691"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.12.0"

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
	There is a segno at `to see' on the lute, cantus, bassus and
	alto parts (but not the tenor to) indicate a repeat.
%}

modernGlobal = {
	\key c \major
	\time 4/2
	\skip 1*14
	\repeat "volta" 2 {
	\time 2/2
	\skip 1*4
	\time 6/2
	\skip 2*6
	\time 4/2
	\skip 2*4
	\time 6/2
	\skip 2*6
	}
}

OldGlobal = {
	 \override Staff.TimeSignature   #'style = #'old4/4
	 \set Staff.barAuto = "0"
}

OldCantusTime = {
	\OldGlobal
	\time 4/2
	\skip 2*4 \bar "|"
	\skip 2*4 \bar "|"
	\skip 2*4 \bar "|"
	\skip 2*4 \bar "|"
	\skip 2*4 \bar "|"
	\skip 2*4 \bar "|"
	\skip 2*4 \bar "|"
	\skip 2*2 \bar "|"
	\skip 2*2 \bar "|"
	\skip 2*2 \bar "|"
	\skip 2*2 \bar "|"
	\skip 2*6 \bar "|"
	\skip 2*4 \bar "|"
	\skip 2*6 \bar ":|"
}

cantus = \relative c''{
	r2 b4. c8 d1
	r2 d e d |
	c2. c4 b1 |
	r2 d2 d c |
	b2 b a1 | 
	r2 a b g |
	a2. a4 a1 |
	r4 d,^\segno g2 
	r4 e4 a2 |
	r4 fis4 b2
	r4 g4 c2 |
	r4 a4 d\breve ~ d2
	r4 d c b a2 r4 b4 
	a g g2. fis8 e fis2 g1
}

cantusLyrics = \lyricmode{
	_2 Come4. a8 -- gain:1 _2 sweet love doth now2. in-4 vite,1
	_2 thy2 gra- ces that re- fraine,1
	_2 to do me due2. de-4 light,1
	_4 to see,2
	_4 to heare,2
	_4 to touch,2
	_4 to kisse,2
	_4 to die,2*4 __ _2
	_4 with thee a -- gaine2
	_4 in sweet -- est sym2. -- pa2 --  thy.1
}


altus = \relative c''{
	g2. g4 g1
	r2 b2 a4 g g2 ~ g2 
	fis2 g1
	r2
	g2 g e4. fis8 
	g2. g4 fis1 
	r2 fis2	g2. d4 
	 e2. e4 fis1 
	d1 e2 %to see
	r4 e4 fis2  % to hear
	r4 fis4 g2 % to touch
	r4 g4   a2 % to kisse
	r4 a4 b1. a2 g4.
	f8 e4 g
	fis2. g4 
	e2 b4 c d2. c4 b1	
}

altusLyrics = \lyricmode{
       Come2. a4 -- gaine,1 _2 sweet2 love4 doth now1 in2 -- vite1 _2
       thy gra -- ces4.. __ _16 that2. re4 -- fraine,1 _2
       to doe2. me4 due2. de-4 light1
       to1 see,2 _4 to4 heare,2 _4 to touch,2 _4 to kisse,2 _4
       to die1 __ _2 to2 die4. with8 thee4 a -- gaine2. in4 swee2. -- test4
       sym2. -- pa4 -- thy1
}

tenor = \relative c'{
	d2. d4 b1
	r2 b c d e2. d8 c d1
	r2 b b a g d' d1
	r2
	d d2. d4 d2
	cis2 d1
	g,1 g2 r4 c4
	a2 r4 d4 b2 r4 e4 d2 r4 c b g g a 
	b2 c d r4 g, d'2. d4 c b b a8 g a2. a4 g1
}

tenorLyrics = \lyricmode{
	Come2. a4 -- gaine,1 _2 sweet2 love doth now2. in4 -- vite,1 _2 thy2
	gra -- ces that re -- fraine1 _2 to2 do2. me4 due2 de -- light1 to
	see2 _4 to heare2 _4 to touch2 _4 to kisse2 _4 to  die to die
	with thee2 a -- gaine, _4 with thee2. a4 -- gaine4 in swee -- test
	sym2. -- pa4 -- thy1
}

bassus = \relative c'{
		       g2 g g1 r2 g, c b a2. a4 g1
		       r2 g2 g a b g d'1 r2
		       d2 g, b
		       a2. a4 d1
		       b1 c2. c4 d2. d4 e2. d4 fis2. fis4 g2 g, g a b
		       c d b c4 d e2 d2. d4 g,1
}
bassusLyrics = \lyricmode{
	Come2 a -- gaine,1
	_2 sweet2 love doth now2. in4 -- vite1 _2 thy gra -- ces that re --
       fraine1 _2 to doe mee due2. de4 -- light1
       to1 see2. to4 heare2. to4 touch2. to4 kisse2.
       to4 die2 to die with thee a -- gaine in swee -- test sym2. -- pa4 --
       thy1
}
		       
	
accompRH = \relative c' {
	<b d g>1 ~  <b d g> |
	r2 \context Staff <<
	{\voiceOne g'4 fis e fis  <g d>2 ~| g8[ g fis e] fis2 g1 }
	{\voiceTwo <d b>2 g, g| c1 <d b>}
	>>
	r2 \context Staff <<
	 {\voiceOne g4. a8 b2 a | g2. g4 fis1}
	 {\voiceTwo <b, d>1 <c e>4. fis8 | d2 b a1|}
	 >>
	 r2 \context Staff <<
	 	 {\voiceOne fis2 g1 | r8 e4. ~ e4 g fis1}
		 {\voiceTwo <d a>2  <<d1 ~ \\ { b2 g}>>  d8 d cis b cis2 <d a>1}
		 >>
	<c g>2. <c g>4 <c e>2 r4 <c e>4 |
	<a fis'>2 r4 <d fis>4 <b g'>2 r4 <e g>4 | <d a'>2 r4 <d a'>4
	<d b'>1. <c e a>2 |
	\context Staff <<
	{\voiceOne g'4. fis8 e4 g }{\voiceTwo d2 c4 b}>>
	<fis d>2 <g d> |
	<e c>4 b2 c4 \context Staff <<{\voiceOne d2. c4} a1>> <b d g>1
}

accompLH = \relative c'{
	g1( g,) |
	r2 g'2 c, b |
	a1 g |
	r2 g2. g4 a2 |
	b g d' d, |
	r2 d' g, b |
	<a a'>1 d2 d, |
	b'2. b4 c2 r4 c4 d2 r4 d4 e2 r4 e4 |
	fis2 r4 fis4 g2 g, g'4 g, a2 |
	b2 c <d a'> <b b'>
	<c a'>4 \context Staff <<
	    {\voiceOne g'1 g4 fis2 }
	    {\voiceTwo d e2 d1}
	    >>
	    <g, g'>1
}


urtext = \context ChoirStaff <<
		 \context Staff = "cantus" <<
			  \clef "petrucci-c1"
			  \OldCantusTime 
			  \cantus
		 >>
		 \context Lyrics = "cantus" \cantusLyrics

		 \context Staff = "altus" {
			\override Staff.TimeSignature   #'style = #'old4/4
			\clef 	"petrucci-c2"
			\altus
		}
		\context Staff = "tenor" <<
			 \clef "petrucci-c2"
			 \tenor
		>>		

		\context Staff = "bassus" <<
			 \clef "petrucci-f"
			 \bassus
		>>		
>>


madrigal = \context ChoirStaff <<
		\context Staff ="cantus" <<
			\modernGlobal
			\cantus
		>>
		\context Lyrics = "cantus" \cantusLyrics

		\context Staff = "altus" <<
			 \modernGlobal
			 \altus
		>>
		\context Lyrics = "altus" \altusLyrics

		\context Staff = "tenor" <<
			 \clef "G_8"
			 \modernGlobal
			 \tenor
		>>		
		\context Lyrics = "tenor" \tenorLyrics

		\context Staff = "bassus" <<
			 \clef "bass"
			 \modernGlobal
			 \bassus
		 >>		
		 \context Lyrics = "bassus" \bassusLyrics
>>

solo = \context StaffGroup <<
		\context Staff ="cantus" <<
			\modernGlobal
			\cantus
		>>
		\context Lyrics = "cantus" \cantusLyrics
		\context GrandStaff <<
			 \context Staff = "XX" <<
				  \clef "treble"
				  \modernGlobal
				  \accompRH
			  >>
			 \context Staff = "YY" <<
				  \clef "bass"
				  \modernGlobal
				  \accompLH
			  >>
		>>
 >>

\score{

	%% Solo Voice arrangement
%	 \transpose c' aes \solo
	\madrigal
%	\urtext

	\layout{
	}
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 2)
      }
    }
}

