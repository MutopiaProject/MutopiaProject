\version "2.8.0"

#(ly:set-option 'point-and-click #f)
#(set-global-staff-size 20)

moveFingering = #(define-music-function (parser location shift) (pair?)
#{
	\once \override Fingering #'extra-offset = $shift
#})

moveStringNumber = #(define-music-function (parser location shift) (pair?)
#{
	\once \override StringNumber #'extra-offset = $shift
#})

moveSlur = #(define-music-function (parser location shift) (pair?)
#{
	\once \override Voice.Slur #'extra-offset = $shift
#})

barre = #(define-music-function (parser location padding text shorten) (number? string? pair?)
#{
	\once \override TextSpanner #'dash-fraction = #'()
	\once \override TextSpanner #'font-shape = #'upright
	\once \override TextSpanner #'edge-height = #'(0 . 1)
	\once \override TextSpanner #'padding = #$padding
	\once \override TextSpanner #'edge-text = #`( ,$text . "")
	\once \override TextSpanner #'shorten-pair = $shorten
#})

rightAlignMark = #(define-music-function (parser location text padding ) (string? number?)
#{
	\once \override Score.RehearsalMark #'padding = #$padding
	\once \override Score.RehearsalMark #'self-alignment-X = #right
	\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\mark \markup { \fontsize #-2 $text }

#})

			
\header
{
	mutopiatitle = "Adelita"
	mutopiacomposer = "TarregaF"
	mutopiainstrument = "Guitar"
	source = "Boije Collection, Statens musikbibliotek - The Music Library of Sweden"
	style = "Romantic"
	maintainer = "Stewart Holmes"
	lastupdated = "2006/August/26"

	title = "Adelita"
	composer = "Francisco Tárrega (1852-1909)"
		
	tagline = \markup 	{ \center-align
					\fontsize #-3.5
					{
						\center-align
						{
							\fill-line {  "" "Copyright © 2006" "" "Typeset by Stewart Holmes" "" }
							\fill-line { "" "Music from The Mutopia Project (www.mutopiaproject.org)" "" "Licensed under the Creative Commons Attribution-ShareAlike 2.5 License" "" }
							\fill-line { "" "Engraving by GNU Lilypond (www.lilypond.org)" "" "http://creativecommons.org/licenses/by-sa/2.5." "" }
						}
					}
				}
	copyright = "Creative Commons Attribution-ShareAlike 2.5"
	footer = "Mutopia-2006/08/21-808"
}

top = \relative c
{
	\set fingeringOrientations = #'(left)
	\set stringNumberOrientations= #'(down)
		
	\bar "|:"
	
	<e''-4>8 ( \moveFingering #'(-1.3 . 0) \slurUp <dis-3>) <c-1>2 |
	<d-4>8 ( \slurUp <c-2> ) <fis,-1\2>2 |
	<c'-3>8 ( \slurUp <b-1> ) \moveFingering #'(-1.3 . 0) <dis,-2\3>4 <g-3> | \break
	\slurDown
	\slurDashed
	
	\textSpannerDown	
	\override TextSpanner #'edge-text = #(cons (markup #:teeny #:finger #:circle "2" ) "")
	\override TextSpanner #'dash-fraction = #'()
	\override TextSpanner #'font-shape = #'upright
	\override TextSpanner #'edge-height = #'(0 . 1)
	\override TextSpanner #'extra-offset = #'(0 . 0.5)
	\override TextSpanner #'shorten-pair = #'(-1 . -1)
	
	\appoggiatura { <fis-1\2>16 ( [<g>] } <fis>8 ) [<e-3\3>] <b-0> [<e-2>\startTextSpan] <g-2>\stopTextSpan [<b-1>] |
	\slurSolid
	<e> ( \slurUp <dis> ) <c>2 | % bar 5
	<d>8 ( \slurUp <c> ) <fis,>2 |
	<c'>8 ( \slurUp <b> ) <dis,>4 <g> |
	
	<g,-2 b e-3>2 r4 | \bar ":|:"
	
	\key e \major
	
	<gis'-1>4. <b-4>8 <e,-\tweak #'extra-offset #'(0 . 0.5) -2 cis-3>8 [<fis-4\2>] | % bar 9
	<gis>4. <b>8 <e, cis >8 [<fis>] |
	\once \override Arpeggio #'extra-offset = #'(0.8 . 0)
	\arpeggioBracket \moveFingering #'(-0.5 . -0.5) <gis e-1 b >8\arpeggio [<b-4>] <e-4> [<dis-3>] \slurDown \slurDashed \appoggiatura { \moveSlur #'(0 . -0.9) dis16-3 ([e-4] } <dis>8) [<cis-3>] |
	
	\slurDown \slurDashed \appoggiatura { \moveSlur #'(0 . -0.5) cis16-3 ([dis-4] } cis8) [<b-1>] <a-4\2> [<fis-1>] \moveStringNumber #'(0 . -2.5) <dis-1\3> [<b-3\4>] |
	\set stringNumberOrientations= #'(up)
	\moveStringNumber #'(0 . 2) <gis-1\4>4. \moveFingering #'(0.25 . 0) <b-4>8 <e cis-2>4 | % bar 13
	\moveStringNumber #'(0 . 2) <gis,-4\4>8 [<b-0>] \set stringNumberOrientations= #'(down) <gis'-2\2> [<dis-1\3>] \slurUp \slurDashed \appoggiatura { \stemDown e16-2\3 ([fis-4] } \set fingeringOrientations = #'(up) \moveFingering #'(-0.2 . -0.7) \stemUp <e>8.) [<ais,>16] |
	\set fingeringOrientations = #'(left)
	<b-3>8 <cis-\tweak #'extra-offset #'(0 . 0.5) -2 a-3>8 \moveStringNumber #'(0 . 1.5) \set stringNumberOrientations= #'(up) <b-\tweak #'extra-offset #'(0 . 0.5) -1\3 gis-3\4>4 <dis-4 a>4 |
	<e b gis-1>2 r4 |
	
	\bar ":|"
}

bass = \relative c
{
	\set fingeringOrientations = #'(left)
	\set stringNumberOrientations= #'(down)
	
	e,2. | a | <b-1> | \break
	e, | e | a | \break
	b2 e,4\rest | e\rest e e\rest | e2 a4 | \break
	e2 a4 | e2 \moveFingering #'(0 . -0.5) <e''-1 fis,-1>4 | <dis-3 a-1 b,-1>2 c,4\rest | \break 
	e,2 a4 | e2  <ais' c,>4 | \set stringNumberOrientations = #'(left) <b,\6>8 a\rest a4\rest <b fis'-3> | e e, a\rest |
}

middle = \relative c
{
	\set fingeringOrientations = #'(left)
	\set stringNumberOrientations= #'(down)
		
	s2 <g''-\tweak #'extra-offset #'(0 . 0.5) -2\2 e-3\3>4 | 
	s2 \moveStringNumber #'(0 . -1) <e-\tweak #'extra-offset #'(0 . 0.5) -3\3 c-4\4>4 |
	s2 <dis a-1>4 | \break
	s2. |
	s2 <g e>4 |
	s2 <e c>4 |
	s2 <dis a >4 |
	s2. |
	s4 <e-2 b gis-3>4 s4 |
	s4 <e b gis >4 s4 |
	s2. |
	s |
	s4 <e-0 b-0>4 \stemUp \set stringNumberOrientations = #'(left) \moveStringNumber #'(-1.5 . 0) <e,-1\4>8 <fis-4> \stemDown |
	s2. | s | s |
}

dynamics =
{
	\override DynamicLineSpanner #'padding = #6.5
	\once \override TextScript #'padding = #4
	s2.^\markup { \bold "Lento" }\p | s | s\mp | s4\< s8 s8\! s4\> | s2.\p |
	s | s | s
	
	\rightAlignMark "Fine" #3.5
	| \bar ":|"
	
	s2.\mf | s | s2\< s8 s\! | s2\> s8 s\! | s2\< s8 s\! | s2. | s \> | 
	s4\! s2 
	
	\rightAlignMark "D.C. al Fine" #5.9 | \bar ":|"
}

barring = 
{
	\textSpannerUp
	
	s2. | s2. |
	
	\barre #6.5 "CVII" #'(-5 . -3.5)
	
	s2\startTextSpan s4\stopTextSpan|
	s2. |
	s | s | s | \once \override TextScript #'padding = #3.5  s^\markup { "IV" }
	
	\barre #7.5 "CIV" #'(-2 . -3)
	
	s\startTextSpan | s2. | s8 s\stopTextSpan s4  
	
	\barre #7.5 "CIX" #'(-8 . -2.5)
	
	s8\startTextSpan s\stopTextSpan |
	
	\barre #7.5 "CVII" #'(-11.5 . -6.5)
	
	s2\startTextSpan s8 s\stopTextSpan |
	s2. |
	s4 
	
	\barre #5.5 "CVII" #'(-5 . -2)
	
	s8\startTextSpan s\stopTextSpan
	
	\barre #5.5 "CVIII" #'(-7 . -3.5)
	
	s8\startTextSpan s\stopTextSpan |
	s2 
	
	\barre #3 "CII" #'(-5 . -1)
	
	s8\startTextSpan s\stopTextSpan | s2. |
}

thescore = \score
{
	<<
		\context Staff = guitar
		{
			\set Staff.midiInstrument = "acoustic guitar (nylon)"
	
			\clef "G_8"
			\time 3/4
			\key e \minor
			
			<<
				\context Voice = "1" { \voiceOne \top }
				\context Voice = "2" { \voiceTwo \bass }
				\context Voice = "4" { \voiceFour \middle }
				\context Voice = "3" { \voiceThree << \dynamics \\ \barring >> }
			>>
		}
	>>
	
	\midi
	{
		\tempo 4=70
	}
	\layout {}
}

\book
{
	\paper
	{
		ragged-last-bottom = ##f
		ragged-bottom = ##f
		line-width = 180\mm		
		left-margin = 15\mm
		indent = 0\mm
		top-margin = 0\mm
	}
		
	\score
	{
		\thescore 
	}
}
