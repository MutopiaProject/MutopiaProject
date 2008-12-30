\version "2.10.10"

\header {
filename = "AnSylvia.ly"
enteredby = "Peter Chubb"
composer = "Franz Schubert"
opus = "D.891"
poet = "Original text by William Shakespeare"
piece = "German text by Eduard von Bauernfeld"
date = "1826"
title = "An Sylvia"
subtitle = "(Who Is Sylvia)"

mutopiatitle = "An Sylvia (Who is Sylvia)"
mutopiacomposer = "SchubertF"
mutopiapoet = "W. Shakespeare (German by E. v. Bauernfeld)"
mutopiainstrument = "Voice and Piano"
mutopiaopus = "D. 891"
style = "Classical"
source = "Unknown"
copyright = "Public Domain"
maintainer = "Peter Chubb"

 footer = "Mutopia-2008/10/19-28"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\version "2.10.10"

#(set-global-staff-size 16)

pianoRH =  \relative c'  {
	 \clef "G"
%1
	 < b[ d g>8\pp-.( <b d g>-. <b d g>-. <b d g>)-.]
	 < b[ d g>8-.( <b d g>-. <b d g>-. <b d g>)-.]
	 |
%2
	 << c[ d \once \override TextScript #'padding = #2 g_\markup { \italic "simile" } \< >> <c, d g> <c d fis> <c d fis>]
	 < c[ d fis> <  c d fis > <c d fis>\! <c d fis>]
%3
	 |
	 < d[ f gis>\> <d f gis> <d f gis> <d] f gis>\!
	 < c[ e a> <c e a> <e a c> <e a c>] 
	 |
%4
	 < d[ a' b> <d a' b> <d g! b> <d g b>] 
	 < d[ g a> <d g a> <d fis a> <d fis a>] |

	 \break
%5
	 \repeat volta 2 {
		< b[ d g  >(\pp_. <b d g>_. <b d g>_. <b d g>)_.]
		< b[ d g>(_. <b d g>_. <b d g>_. <b d g>)_.]
		|
%6
		< c[ d g> <c d g> <c d fis> <c d fis>]
		< c[ d fis> <c d fis> < a c dis fis> <a c dis fis>]
		|
%7
		< g[ c e g> <g c e g> <g c e g> <g c e g >] 
		< g[ c e g> <g c e g>  <g c e> <g c e>]
		|
%8
		< g[ c e> <g c e> <g b d> <g b d>]
		< g[ b d> <g b d> <g b d> <g b d>]
		|
%9
		< fis[ a d> <fis a d> <fis a d> <fis a d>]
		< g[ b d> <g b d> <g b d> <g b d>]
		|
%10
		<g[ a c d>\> <g a c d> <fis a c d> <fis] a c d>\!
		<g[ b d> <g b d> <g b d> <g] b d>
		|
%11
		< g[ a c d> <g a c d> <fis a c d> <fis a c d>]
		< g[ b d> <g b d>] < b[ d g> <b d g>]
		|
%12
		<d fis b>[ <d fis b><d fis b><d fis b>]
		<d fis b>[ <d fis b><d fis b><d fis b>]
		|
%13
		< e[ fis b> <e fis b> < e fis ais> <e fis ais>]
		< e[ fis ais> <e fis ais> <d fis b> <d fis b>]
		|
%14
		< cis[ g' a!> <cis g' a> <cis a' g> <cis a' g>]
		< cis[ g' a> <cis g' a> < e g a> <e g a>]
		|
%15
		< e[ g a> <e g a> <d fis a> <d fis a>]
		< d[ fis a> <d fis a> <d fis a> <d fis a>]
		|
%16
		< d[ fis a> <d fis a> <d fis a> <d fis a>]
		< d[ fis a  >\< <d fis a> <d fis a> <  d fis a > \!]
		|
%17
		<d[ a' c>\> <d a' c> <d a' c> <d] a' c>\!
		<d[ a' c> <d a' c> <d a' c> <d] a' c>
		|
%18
		<d[ g a c>\> <d g a c> <d g a c> <d] g a c>
		<d[ fis a c> <d fis a c>\pp <d fis a c> <d] fis a c>
		|
%19
		< d[ g b> <d g b> <d g b> <d g b>]
		< d[ g b> <d g b> <d g b> <g b>]
		|
%20
		< e[ g c> <e g c> <e gis c> <e gis c>]
		< e[ a c> <e a c> <e b' c> < e b' c>]
		|
%21
		< e[ c'> <e c'> <e a c> <e a c>]
		< e[ a c> <e a c> <e a c> <e a c>]
		|
%22
		< d[ a' c> <d a' c> <d a'> <d a'>]
		< d[ a' d> <d a' d> <d a' c> <d a' c>]
		|
%23
		< b[ d b'> <b d b'> <b d a'> <b d a'>]
		< b[ d g  >\< <b d g> <b d fis> <  b d fis  > \!]
		|
%24
		<b[ d e>\> <b d e> <gis b e> <gis] b e>\!
		<a[ c e> <a c e> <e' a> <e a>]
		|
%25
		<d[ a' c> <d a' c> <d a' c> <d] a' c>
		<d[ a'> <d a'>\> <c d fis> <c] d fis>\p
		|
%26
		< b[ d g> <b d g> <b d g> <b d g>]
		< b[ d g> <b d g> <b d g> <b d g>]
		|
%27
		< c[ d g > <c d g > <c d fis  > <c d fis >]
		< c[ d fis  >\< <c d fis ><  c d fis  > <c d fis >\!]
		|
%28
		<d[ f gis>\> <d f gis> <d f gis> <d] f gis>\!
		<c[ e a> <c e a> <e a c> <e] a c>
%29
		< d[ a' b> <d a' b> <d g! b> <d g b>]
		< d[ g a> <d g a> < d fis! a> <d fis a>]
	}
%30
	<b d g>2 r2
	\bar "|."
}

pianoLH =  \relative c  {
	\clef "F"
	g4-. d-. r  g8.[( g16] |  a4)-. d,-. r  a'8.[( a16] |
%3
	 b4)-.  d,8.[( d16]  c'4)-.  d,8.[ d16] |
%4
	d'4-. d,-. d'-.  d,8.[( d16 ] 
	\repeat volta 2 {
%5
		 g4)-. d_. r4  g8.[( g16] |
%6
		 a4)-. d,-. r4  a'8.[( a16] |
%7
		 c4)-. c,-. r  e8.[( e16] |
%8
		 g4)-. g,-. r4  b'8.[( b16] | 
%9
		 d4)-. c-. b-. g-. |
%10
		d2(->  g4) r4 \clef "G" |
%11
		d'''2->(  b4) r4 \clef "F" |
%12
		b,,4-. fis-. r  b8.[( b16] |
%13
		 cis4)-. fis,4-. r4  d'8.[( d16] |
%14
		 e4)-. a,4-. r  cis8.[( cis16] |
%15
		 d4)-. d,4-. r4  d'8.[( d16] |
%16
		 fis4)-. d-. a-. d-.  |
%17
		fis,4.( a8  d4) r4 \clef "G" |
%18
		e''2->(  d4) r4 \clef "F" |
%19
		g,,,4-. b-. r  g8.[( g16 ] |
%20
		 c4)-. e-. r  gis,8.[( gis16] |
%21
		 a4)-. c-. r  g!8.[( g16 ] |
%22
		 fis4)-. d'-. r  fis,,8.[( fis16] |
%23
		 g4)-. g'-. r  b,8.[( b16] |
%24
		 c4)-. c'-. r  c,8.[( c16] |
%25
		 d4)-. d'-. r  d,8.[( d16] |
%26
		 g4)-. d-. r  g8.[( g16] |
%27
		 a4)-. d,-. r  a'8.[( a16] |
%28
		 b4)  d,8.[( d16]  c'4)-.  d,8.[ d16] |
%29
		d'4-. d,-. d'-.  d,8.[( d16 ]
	}
%30
	 g2) r2 \bar "|."

}

tune =   \relative c''  {
	% Put dynamics over the stave.
	\dynamicUp
	\autoBeamOff
	\skip 1*4
	\repeat volta 2 {
%5
		b2. g4 |
%6
		g( fis) << { r2 } \\ { r4 a4 } >> |
%7
		g2. e4 |
%8
		e4(  d) r4 \< g |
%9
		fis a g  b\! |
%10
		d2 b4 r4 |
%11
		r1 |
%12
		d2. b4 |
%13
		b4(  ais) r  cis8[( b)] |
%14
		a!2. e4 |
%15
		g4( fis) r4 \< d4 |
%16
		a' fis c'  a\! | 
%17
		e'4.( \>  c8)  a4\! r |
%18
		r1 |
%19
		d2. << { b8( g8) } \\ { b8[ g8] } >> |
%20
		\slurDotted
		fis4(  e)		\slurSolid
		<< { r2 } \\ { r4 e4 } >> |
%21
		c'2.  b16[( a g  fis)] |
%22
		e4( d) << { r2 } \\ { r4 d4 } >> |
%23
		d2 d'2 |
%24
		e2 e,2 |
%25
		fis2. \>  g8[(  a)] |
%26
		 g2\! r2 |
%27
		r1 | r1 | r1
	}
	r1 \bar "|."
}

fourbars = \lyricmode { \skip 1*4 }

verseOne = \lyricmode {
	Who2. is4 | Syl __ via, \skip 2 |
	What2. is4 | she,2 __ \skip 4 That4 |
	all our swains com- |
	mend2 her?4 " " |
	" "1 |
	Ho2. __ ly,4 |
	fair,2  \skip 4 and4 |
	wise2. is4 |
	she2 \skip 4 The4 |
	heav'ns4 such grace did |
	lend2 her4 \skip 4 | \skip 1 |
	That2. a4 __  |
	do __ red \skip 2 |
	She2. might4 |
	be,2 \skip 2 |
	That2 a __ |
	do __ red |
	she2. might4 | be.2 \skip 2 |
}

verseTwo = \lyricmode {
	Is2. she4 | kind,2 \skip 4 as4 |
	she2. is4 |fair?2 \skip 4 For4 |
	beau- ty lives with | kind2 __ ness4 \skip 4 | \skip 1 |
	To2. her4 |eyes2 \skip 4 doth4 | Love 2. re4 __ |
	pair,2 \skip 4 To4 | help him of his | blind-2 ness4 \skip 4 |
	\skip 1 |
	And2. be-8 ing | help'd2 __ \skip 4  in4 __ | ha-2. bits4 |
	there,2 \skip 4 And4 |
	be-2 ing | help'd in __ | ha2. __ bits4 | there.2 \skip 2 |
}

verseThree = \lyricmode {
	Then2. to4 | Syl-4 via \skip 2 |
	let2. us4 | sing,2 \skip 4 That4 |
	Syl- via is ex __ | cell2 __ ing4 \skip 4 | \skip 1 |
	She2. ex4 __ | cels2 \skip 4 each4 | mor2. __ tal4 |
	thing,2 \skip 4 Up-4 | on the dull earth | dwell-2 ing4
	\skip 4 | \skip 1 |
	To2. her4 | gar- lands \skip 2 | let2. us4 |
	bring,2 \skip 2 | To her | gar __ lands | let2. us4 |
	bring.2 \skip 2 |
}


%% 
%% German Words -- syllabification may be incorrect (entered by
%% someone who knows no German!)
origVerseOne = \lyricmode {
	Was2. ist4 | Sil-4 via, \skip 2 |
	sag-2. et4 | an,2 \skip 4 
	Daß4 | 
	sie die wie- te | Flur2 preist?4 \skip 4 | \skip 1|
	Schön2.  und4 | zart2 \skip 4 seh'-4 | ich2. sie4 |
	nah'n,2 \skip 4 Auf4 |
	Him-  melsg- gunst " und" | Spur2 weist,4 \skip 4 | \skip 1
	Daß2. ihr4 | al- les \skip 2 |
	un-2. ter4 | tan.2 \skip 2 |
	Daß2 ihr | al- les | un-2.  ter4 | tan2 \skip 2 |
}

origVerseTwo = \lyricmode {
	Ist2. sie4 | schön2 __ \skip 4 und4 |  gut2. da-4 | zu?2 \skip 4
	Reiz4| labt wie mil- de | Kind-2 heit4 \skip 4 | \skip 1 |
	Ihr-2. em4 | Aug'-2 \skip 4 eilt4 | A-2. mor4 |
	zu,2 \skip 4
	Dort4 | heilt er sein- e | Blind-2 heit,4 \skip 4 | \skip 1 |
	Und2. ver-4 | weilt2 \skip 4 in4 | süß-2. er4
	Ruh'.2 \skip 2 |
	Und2 ver-2 | weilt in | süß-2. er4| Ruh'.2 \skip 2 |
}

origVerseThree = \lyricmode {
	Dar2. __  um4 | Sil- via, \skip 2 | tön',2.  o4 |
	Sang,2 \skip 4
	Der4 | hold- en Sil- via | Ehr-2 en4 \skip 4 | \skip 1 |
	Je2. den4 | Reiz2 \skip 4  be-4 |siegt2. sie4 | lang,2 \skip 4
	Den4 | Er- de kann ge- | wäh-2 ren4 \skip 4 | \skip 1 |
	Krän-2. ze4 | ihr2 \skip 4 und4 | Sai-2. ten4
	|klang!2 \skip 2
	Krän-2 ze | ihr und | Sai-2. ten-4 |klang!2 \skip 2 |
}

global =  {
	\key g \major
	\time 2/2
	\override Staff.TimeSignature   #'style = #'C
}

Piano = \context GrandStaff = "piano" {
	\set GrandStaff.instrumentName = "Piano"
	\set GrandStaff.midiInstrument = "acoustic grand"
	<< 
	     \context Staff=RH {\global \pianoRH }
 	     \context Staff=LH {\global \pianoLH }
	>>
}


Vocals = <<
	\context Staff = "vocal" << 
		% something that stands out over the piano
		\set Staff.midiInstrument = "flute"

		 {\clef "G2" \global\tune}

% Uncomment one of these.  It looks silly with both.
		      \new Lyrics { \fourbars \verseOne }
		      \new Lyrics { \fourbars \verseTwo }
		      \new Lyrics { \fourbars \verseThree }
		      %\new Lyrics { \fourbars \origVerseOne }
		      %\new Lyrics { \fourbars \origVerseTwo }
		      %\new Lyrics { \fourbars \origVerseThree }

	>>
>>


\score {
	<<
		% \transpose c' aes for basses (Key Eflat).
		% (range bes to c'')
		% \transpose c d for original (in A.)
		% Untransposed range: d' to e''
		 \transpose c d <<
		      \Vocals
		      \Piano
		>>
	>>

	\layout {
	% Try to fit onto two A4 pages
		%indent = 0.0\mm
		%line-width = 18.0\cm
		%textheight = 26.0\cm
		%gourlayMaxmeasures=15.0

		% Eliminate voice parts with no notes
		\context { \RemoveEmptyStaffContext }
		\context { \Score \override VerticalAxisGroup #'remove-first = ##t }

		% number bars at score level, not per-staff
		\context {
			\Score
			barColumnPriority = "0"
			marginBreakPriority = "-4"
			skipBars = 1
			\consists "Mark_engraver"
			\consists "Bar_number_engraver"
		}
}
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }


}

