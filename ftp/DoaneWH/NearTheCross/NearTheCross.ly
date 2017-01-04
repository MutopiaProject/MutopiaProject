\version "2.18.2"

#(set-global-staff-size 22)

global = 
{
	\key f \major
	\time 6/4
	\set Staff.autoBeaming = ##f
}

\paper
{
	top-margin = 1\cm
	line-width = 18.0\cm
	markup-system-spacing.basic-distance = #16
}

\header
{
	title = \markup \raise #2.5 "Near the Cross"
	poet = "Frances Jane (Fanny) Crosby, 1869"
	composer = "William Howard Doane"
	meter = "76.76. and Refrain"
	mutopiatitle = "Near the Cross"
	mutopiacomposer = "DoaneWH"
	mutopiapoet = "F. J. Crosby (1820-1915)"
	mutopiainstrument = "Voice and Piano"
	date = "1869"
	source = "CyberHymnal"
	style = "Hymn"
	license = "Public Domain"
	maintainer = "Jefferson dos Santos Felix"
	maintainerEmail = "jsfelix@gmail.com"

 footer = "Mutopia-2016/11/01-495"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}


refText = \markup { \bold \italic { "" \raise #1.2 "Refrain" } }

gmult = #6

\layout {
  \context {
    \Lyrics {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
      #`((basic-distance . ,(* 3 gmult))
         (padding . ,(* 0.25 gmult)))
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
      #`((minimum-distance . ,(* 0.5 gmult))
         (padding . ,(* 0.17 gmult)))
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #(* 0.2 gmult)
    }
  }
}

soprano = \relative c''
{
	%% SOPRANO NOTES %%
	a2 bes4 a2 g4 f2 d4 d2. c2 f4 f2 a4 a2. g \break
	a2 bes4 a2 g4 f2 d4 d2. c2 f4 f2 e4 g2. f \bar "||" \break
	a2^\refText c4 c2. bes2 d4 d2. c2 d4 c2 a4 a2. g \break
	a2 bes4 a2 g4 f2 d4 d2. c2 f4 f2 e4 g2. f \bar "|."
}

alto = \relative c'
{
	%% ALTO NOTES %%
	f2 f4 f2 e4 d2 <<{s4 s2.}\\{d4 d2.}>> a2 c4 c2 f4 f2. e
	f2 f4 f2 e4 d2 <<s4\\d>> bes2. a2 c4 c2 c4 e2. <<s\\f>>
	f2 f4 f2. f2 f4 f2. f2 f4 f2 f4 f2. e
	c2 d4 c2 cis4 d2 <<s4\\d>> bes2. a2 c4 c2 c4 e2. <<s\\f>>
}

tenor = \relative c'
{
	%% TENOR NOTES %%
	c2 d4 c2 bes4 a2 bes4 bes2. a2 a4 a2 c4 c2. c
	c2 d4 c2 bes4 a2 bes4 f2. f2 a4 a2 g4 bes2. a
	c2 a4 a2. d2 s4 s2. a2 bes4 a2 c4 c2. c
	a2 s4 a2 a4 a2 bes4 f2. f2 a4 a2 g4 bes2. a
}

bass = \relative c
{
	%% BASS NOTES %%
	f2 f4 f2 c4 d2 bes4 bes2. f'2 f4 f2 f4 c2. c
	f2 f4 f2 c4 d2 bes4 bes2. c2 c4 c2 c4 c2. f
	f2 f4 f2. bes2 <<{bes4 bes2.}\\{bes4 bes2.}>> f2 f4 f2 f4 c2. c
	f2 <<g4\\f>> f2 e4 d2 bes4 bes2. c2 c4 c2 c4 c2. f
}

verseOne = \lyrics
{
	\set stanza = "1. "
	Je -- sus, keep me near the cross,
	There a pre -- cious fon -- tain
	Free to all, a heal -- ing stream
	Flows from Cal -- vary's moun -- tain.

		% Refrain
		In the cross, in the cross,
		Be my glo -- ry e -- ver;
		Till my rap -- tured soul shall find
		Rest be -- yond the ri -- ver.
}

verseTwo = \lyrics
{
	\set stanza = "2. "
	Near the cross, a trem -- bling soul,
	Love and mer -- cy found me;
	There the bright and morn -- ing star
	Sheds its beams a -- round me.
}

verseThree = \lyrics
{
	\set stanza = "3. "
	Near the cross! O Lamb of God,
	Bring its scenes be -- fore me;
	Help me walk from day to day,
	With its sha -- dows o'er me.
}

verseFour = \lyrics
{
	\set stanza = "4. "
	Near the cross I'll watch and wait
	Hop -- ing, trus -- ting e -- ver,
	Till I reach the gold -- en strand,
	Just be -- yond the ri -- ver.
}

\score
{
	<<
		\context Voice = SA 
		<<
			\override Score.BarNumber.break-visibility = #all-invisible
			\stemUp
			\global
			\soprano
			\alto
		>>
		\context Lyrics = sopranoLyrics { s1 }
		\lyricsto "SA" \context Lyrics = sopranoLyrics 
		<<
			\verseOne
			\verseTwo
			\verseThree
			\verseFour
		>>
		\context Voice = TB 
		<<
			\clef bass
			\stemDown
			\global
			\tenor
			\bass
		>>
	>>
	
	\layout { indent = 0.0\cm }
	
  \midi {
    \tempo 4 = 112
    }


} 
