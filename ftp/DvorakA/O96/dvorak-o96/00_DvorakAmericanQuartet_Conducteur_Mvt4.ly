%#######################################################################
%#             G E N E R A L I T E S   E T   E N T E T E               #
%#######################################################################
\paper {
	ragged-last-bottom = ##f
	ragged-bottom = ##f
}
%-----------------------------------------------------------------------
\layout {
}
%-----------------------------------------------------------------------
global = {
	\version "2.18.2"
	\time 2/4
	\key f \major
	\set Score.markFormatter = #format-mark-box-numbers
	\compressFullBarRests
	\tempo "Vivace ma non troppo." 4 = 152
	#(set-global-staff-size 15)
}
%-----------------------------------------------------------------------
\include "markup.ly"
\include "04_DvorakAmericanQuartet_Mvt4_Voix1.ly"
\include "04_DvorakAmericanQuartet_Mvt4_Voix2.ly"
\include "04_DvorakAmericanQuartet_Mvt4_Voix3.ly"
\include "04_DvorakAmericanQuartet_Mvt4_Voix4.ly"
%#######################################################################
%#       C O N S T R U C T I O N   D E   L A   P A R T I T I O N       #
%#######################################################################
\book{
	\header {
	    title = "String Quartet No.12"
	    composer = "Antonín Dvořák (1841 – 1904)"
	    opus = "Op. 96"
	    copyright = "Public Domain"

	    %mutopia-specific headers:
	    mutopiatitle = "String Quartet No.12"
	    mutopiacomposer = "DvorakA"
	    mutopiapoet = ""
	    mutopiaopus = "O 96"
	    mutopiainstrument = "violin, viola, cello"
	    date = "1893"
	    source = "N. Simrock, 1894"
	    style = "Romantic"
	    maintainer = "Sébastien Manen"
	    maintainerEmail = "sebastien dot bugzilla at gmail dot com"
	    lastupdated = "2017/Nov/15"
        footer = "Mutopia-2006/12/18-584"
        copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
	}
	\score {
		\new StaffGroup <<
			\new Staff << \global \MvtQuatreVoixUne >>
			\new Staff << \global \MvtQuatreVoixDeux >>
			\new Staff << \global \MvtQuatreVoixTrois >>
			\new Staff << \global \MvtQuatreVoixQuatre >>
		>>
		\header {
			%breakbefore = ##t
		}
		\layout {
		}
		\midi {
		}
	}
}
