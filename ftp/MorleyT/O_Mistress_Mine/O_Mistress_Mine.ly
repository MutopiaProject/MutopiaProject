\version "2.18.2"  
\language "english"

\header {
    title = "O Mistress Mine"
    subtitle = \markup { \italic "Twelfth Night," " Act II, Scene iii"}
    poet = "William Shakespeare"
    composer = "The Melody from Morley's Consort Lessons, 1599"
    arranger = "Arranged by J. Frederick Bridge, 1890"

	mutopiatitle = "O Mistress Mine"
	mutopiacomposer = "MorleyT"
	mutopiapoet = "Shakespeare"
	%mutopiaopus = ""
	mutopiainstrument = "Voice and Piano"
	date = "1890"
	source = "Songs from Shakespeare, Novello and Company, Ltd., 1890"
	style = "Song"  
				% Baroque, Classical, Folk, Gospel, Hymn, Jazz, March, Modern, 
				% Popular / Dance, Renaissance, Romantic, Song, Technique 
	license = "Public Domain"
	maintainer = "Ariel Barton"
	maintainerEmail = "origamist@gmail.com"
	%maintainerWeb = ""
	moreInfo = "Edited by J. Frederick Bridge"
	lastupdated = "2017/Mar/19"

 footer = "Mutopia-2017/04/30-2179"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

% Just small enough that the version with repeats fits on 1 page
#(set-global-staff-size 18)

\paper{
	%tagline = ##f
	%#(set-paper-size "letter")
	left-margin = 0.65 \in
	right-margin = 0.65 \in
	top-margin = 0.65 \in
	bottom-margin = 0.65 \in
}


VocalistNotes = {
 	R2.*4 | 
 	g'4 \tag #'verseOne { b'4 b' } \tag #'verseTwo { b'2 }  \tag #'repeating { \slurDashed b'4( b') \slurSolid }| 
 	a'2 g'4 ~ | 
 	g' b' cs'' | 
 	d'' d''2 | 
 	g'4 \tag #'verseOne { b'4 b' } \tag #'verseTwo { b'2 } \tag #'repeating { \slurDashed b'4( b') \slurSolid }| 
 	a'2 g'4 ~ | 
 	g' b' cs'' | 
 	d'' d''2 | 
 	\tag #'verseOne { d''4 e'' } \tag #'verseTwo { d''4( e'') } \tag #'repeating { \slurDashed d''4( e'') \slurSolid } e'' | 
 	e''2 b'4 ~ | 
 	b' d'' d'' | 
 	d'' d''2 | 
 	d''4( e'') d'' | 
 	g''2 b'4 ~ | 
 	b' a' g' | 
 	c''2 b'4( ~ | 
 	b' a') g' | 
 	e'4. e'8 g' g' | 
 	b'2( a'4) | 
 	g'2. | 
 	d''4( e'') d'' | 
 	g''2 b'4 ~ | 
 	b' a' g' | 
 	c'' c'' b'( ~ | 
 	b' a') g' | 
 	e'2 g'4 | 
 	b'2 a'4 | 
 	g'2.\fermata 
  }

VerseOne = \lyricmode{
	O mis -- tress mine, where are you roam -- ing?
	O mis -- tress mine, where are you roam -- ing?
	O, stay and hear; your true love's com -- ing,
	\tag #'verseOne { That } \tag #'repeating { That __ } 
		can sing 
		\tag #'verseOne { both } \tag #'repeating { both __ } 
		high and low:
	Trip __ no fur -- ther, pret -- ty sweet -- ing;
	Jour -- neys end in __ lov -- ers meet -- ing,
	Ev -- ery wise man's son  doth know.
}

VerseTwo = \lyricmode{
	What \tag #'verseTwo { is } \tag #'repeating { is __ } 
		love? 'tis __ not here -- af -- ter;
	What \tag #'verseTwo { is } \tag #'repeating { is __ } 
		love? 'tis __ not here -- af -- ter;
	Pre -- sent mirth hath pre -- sent laugh -- ter;
	What's to come is __ still un -- sure:
	In __ de -- lay there lies no plen -- ty;
	Then come kiss me, sweet and twen -- ty,
	Youth's __ a stuff will not  en -- dure.
}

expressiveMarks = { 	
	\override Hairpin.to-barline = ##f
 	| \tag #'Piano { s4\mf s2 } \tag #'Vocalist { s2. } %  1
 	| s2. %  2
 	| \tag #'Piano { s4 s4\> s4 } \tag #'Vocalist { s2. } %  3
 	| \tag #'Piano { s2.\! } \tag #'Vocalist { s2. } %  4
 	| s4\mf s2 %  5
 	| s2. %  6
 	| \tag #'verseOne { s4 s4\< s4 } \tag #'verseTwo { s2. } %  7
 	| \tag #'verseOne { s4\! s4 s4 } \tag #'verseTwo { s2. } %  8
 	| s4 \p s2 %  9
 	| s2. % 10
 	| s2. % 11
 	| s2. % 12
 	| s4\cresc s4\! s4 % 13
 	| s2. % 14
 	\override Hairpin.to-barline = ##t 
 	| s4 s4\< s4 % 15
 	| s4\> s2 % 16
 	| s4\f s2 % 17
 	| s2. % 18
 	| s2. % 19
 	| s2 s4\dim % 20
 	| s4\! s2 % 21
 	| s2. % 22
 	| s2. % 23
 	| s2. % 24
 	| s4\f s2 % 25
 	| s2 \tag #'verseOne { s4\p } \tag #'verseTwo { s4 } % 26
 	| s4 \tag #'verseOne { s4 } \tag #'verseTwo { s4\p } s4 % 27
 	| s2 s4\cresc % 28
 	| s4\! s2 % 29
 	| s4\< s4 s4 % 30
 	| s4^"rall."\! s4 s4\> % 31
 	| s4 s2\! % 32
}



PianoUpNotes = \relative c' {
  	\set doubleSlurs = ##t
	| <b d g>4 <d g b> <d g b> %  1
 	| <d fs a>2 <b e g>4~ %  2
 	| <b e g> << { \voiceOne b'4. a8 } 
 		\new Voice { \voiceTwo <d, fs>2 } >> %  3
 	| <g b,>2. %  4
 	| <b, d g>4 <d g b> <d b'> %  5
 	| <d a'>2 <b g'>4~ %  6
 	| <e g>4 << {\voiceOne b'4 cs } \new Voice {\voiceTwo g2 } >> %  7
 	| <fs d'>4 <fs d'>2 %  8
 	| <b, d g>4 <d g b>4 <d b'>4 %  9
 	| <d a'>2 <b g'>4~ % 10
 	| <e g>4 << {\voiceOne b'4 cs } \new Voice {\voiceTwo g2 } >> % 11
 	| <fs d'>4 <fs d'>2 % 12
 	| \tag #'verseOne { <f d'>4 <g e'>4 }
 		\tag #'verseTwo { <f d'>4( <g e'>4) }
 		\tag #'repeating { \slurDashed <f d'>4( <g e'>4) \slurSolid }
 		<g e'>4 % 13
 	| <g e'>2 <g b>4~ % 14
 	| <g b>4 <g d'> <g d'> % 15
 	| <fs d'>4 <fs d'>2 % 16
 	| <f d'>4( <g e'>4) <g d'>4 % 17
 	| <g g'>2 <d b'>4~ % 18
 	| <d b'>4 <fs a>4 <d g>4 % 19
 	| << {\voiceOne c'2 } 
 		\new Voice {\voiceTwo g4( e4) } >> <d b'>4~ % 20
 	| <d b'>4 <c a'>4 <d g>4 % 21
 	| << {\voiceOne e4. e8 } \new Voice {\voiceTwo e2 } >> <d g>4 % 22
 	| << {\voiceOne b'2 <fs a>4 } 
 		\new Voice {\voiceTwo d2~ d8 c8} >> % 23
 	| <b g'>2. % 24
 	| <f' d'>4( <g e'>4) <g d'>4 % 25
 	| <g g'>2 <d b'>4~ % 26
 	| <d b'>4 <fs a>4 <d g>4 % 27
 	| << {\voiceOne c'2} \new Voice {\voiceTwo g4 e4} >> <d b'>4~ % 28
 	| <d b'>4 <c a'>4 <d g>4 % 29
 	| e2 <d g>4 % 30 % The original has e2 with both up and down stems.
	| << {\voiceOne b'2 <fs a>4 } 
 		\new Voice {\voiceTwo d2~ d8 c8}>> % 31
 	| <b g'>2.\fermata % 32
	}
PianoDownNotes = { 
  	< g, g >2 g4 | %  1
  	d2 e4 ~ | %  2
  	e b, d | %  3
  	g,2. | %  4
  	g,2 g4 | %  5
  	< d fs >2 e4 ~ | %  6
  	e e2 | %  7
  	d2. | %  8
  	g,2 g4 | %  9
  	< d fs >2 e4 ~ | % 10
  	e e2 | % 11
  	d2. | % 12
  	\tag #'verseOne { d'4 c'} \tag #'verseTwo { d'4( c') } 
  		\tag #'repeating { \slurDashed d'4( c') \slurSolid } c'4 | % 13
  	c2 e4 ~ | % 14
  	e b,4. c8 | % 15
  	d2. | % 16
  	d'4( c') b | % 17
  	< g b >2 g4 ~ | % 18
  	g a b | % 19
  	e2 g4 ~ | % 20
  	g a b | % 21
  	c'2 b4 | % 22
  	d2. | % 23
  	g, | % 24
  	d'4( c') b | % 25
  	< g b >2 g4 ~ | % 26
  	g a b | % 27
  	e2 g4 ~ | % 28
  	g a b | % 29
  	c'2 b4 | % 30
  	d2. | % 31
  	g,\fermata | % 32
}

VocalistMusic = {
	\tempo "Allegro moderato."
	\time 3/4
	\key g \major
	\keepWithTag #'verseOne \VocalistNotes
	\keepWithTag #'verseTwo \VocalistNotes
	\bar "|."
	}

Words = { \removeWithTag #'repeating \VerseOne \removeWithTag #'repeating \VerseTwo }

PianoDownMusic = {
	\time 3/4
	\key g \major
	\keepWithTag #'verseOne \PianoDownNotes
	\keepWithTag #'verseTwo \PianoDownNotes
	}

PianoUpMusic = {
	\time 3/4
	\key g \major
	\keepWithTag #'verseOne \PianoUpNotes
	\keepWithTag #'verseTwo \PianoUpNotes
	}
	
\bookpart{
\score {
	<<

		\new Dynamics { 
			\keepWithTag #'(Vocalist verseOne) \expressiveMarks  
			\keepWithTag #'(Vocalist verseTwo) \expressiveMarks 
		}
		\new Staff = "vocalist" <<
			
			\set Staff.midiInstrument = #"flute"
			\new Voice = "vocalist" {
				\compressFullBarRests
				\clef treble
				\VocalistMusic
			}

		\new Lyrics \lyricsto "vocalist" { \Words }
		>>

		\new PianoStaff = "Piano" <<
			
			\set PianoStaff.midiInstrument = #"acoustic grand"
			\new Staff = "PianoUp" { \clef treble \PianoUpMusic }
			\new Dynamics  { 
				\keepWithTag #'(Piano verseOne) \expressiveMarks  
				\keepWithTag #'(Piano verseTwo) \expressiveMarks 
			}
			\new Staff = "PianoDown" { \clef bass \PianoDownMusic }
		>>
	>>
	\layout {  }
	\midi { \tempo 4 = 120 }
}}



\bookpart{
\score {
	\header { }
	<<
		\new Staff = "vocalist" <<
			
			\set Staff.midiInstrument = #"flute"
			\new Voice = "vocalist" {
				\compressFullBarRests
				\clef treble
				\time 3/4
				\key g \major
				\tempo "Allegro moderato."
				\repeat volta 2 { \keepWithTag #'repeating \VocalistNotes }
			}
			\new NullVoice = "VerseOneAligner" { 
				\keepWithTag #'verseOne \VocalistNotes 
			}
			\new NullVoice = "VerseTwoAligner" { 
				\keepWithTag #'verseTwo \VocalistNotes 
			}
		\new Lyrics \lyricsto "VerseOneAligner" { 
			\keepWithTag #'repeating \VerseOne }
		\new Lyrics \lyricsto "VerseTwoAligner" { 
			\keepWithTag #'repeating \VerseTwo }
		>>

		\new PianoStaff = "Piano" <<
			
			\set PianoStaff.midiInstrument = #"acoustic grand"
			\new Staff = "PianoUp" { 
				\clef treble \time 3/4
				\key g \major
				\repeat volta 2 { \keepWithTag #'repeating 
					\PianoUpNotes }
			}
			\new Staff = "PianoDown" { 
				\clef bass \time 3/4
				\key g \major
				\repeat volta 2 { \keepWithTag #'repeating \PianoDownNotes }
			}
		>>
	>>
	\layout {  }
}}
