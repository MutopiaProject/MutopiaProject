\version "2.24.1"

\header {
  date = "1772"
  style = "Classical"
  source = "Mozarts Werke; Breitkopf und Härtel, 1882"
  composer = "W.A. Mozart"
  opus = "KV 136"
  title = "Divertimento in D"
  subtitle = "I"

  maintainer = "YTG123"
  maintainerEmail = "ytg1234 (at) pm (dot) me"
  license = "Creative Commons Attribution-ShareAlike 4.0 International"

  properEmail = "ytg1234@pm.me"

  mutopiatitle = "Divertimento in D"
  mutopiaopus = "KV 136"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Orchestra: Violins, Viola, Cello"

  footer = "Mutopia-2023/04/02"
  
  copyright =  \markup {
	\override #'(baseline-skip . 0 ) \right-column {
	  \sans \bold \with-url #"https://www.mutopiaproject.org" {
		\abs-fontsize #9  "Mutopia " \concat {
		  \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "
		}
	  }
	}
	\override #'(baseline-skip . 0 ) \center-column {
	  \abs-fontsize #11.9 \with-color #grey \bold {
		\char ##x01C0 \char ##x01C0
	  }
	}
	\override #'(baseline-skip . 0 ) \column {
	  \abs-fontsize #8 \sans \concat {
		" Typeset using " \with-url #"https://lilypond.org" "LilyPond"
		" by " \with-url #(string-append "mailto:" properEmail) \maintainer " " \char ##x2014 " "
		\footer
	  }
	  \concat {
		\concat {
		  \abs-fontsize #8 \sans {
			" Licensed under "
			\with-url #"https://creativecommons.org/licenses/by-sa/4.0/" "CC BY-SA 4.0"
			" by the typesetter " \char ##x2014 " free to distribute, modify, and perform"
		  }
		} \abs-fontsize #13 \with-color #white \char ##x01C0
	  }
	}
  }
 tagline = ##f
}
