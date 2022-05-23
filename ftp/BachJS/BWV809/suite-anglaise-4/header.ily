\version "2.23.7"

\header {
  composer = "Johann Sebastian Bach (1685-1750)"
  date = "Around 1713 or 1714"

  footer = "Mutopia-2022/04/25-100"

  lastupdated = "2022 April 25"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainerEmail = "davide.madrisan@gmail.com"
  maintainerWeb = "https://github.com/madrisan/open-scores"

  % Extra Mutopia Information
  mutopiacomposer = "BachJS"
  mutopiacopyright = "Creative Commons Attribution-ShareAlike 4.0"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiamaintainer = "Davide Madrisan"
  mutopiaopus = "BWV 809"
  mutopiatitle = "Suite Anglaise no. 4 in F major"

  opus = "BWV 809"
  title = "Suite Anglaise 4"
  source = "Johann Christian Bach manuscript"
  style = "Baroque"

  copyright = \markup {
    \override #'(font-name . "DejaVu Sans, Bold")
    \override #'(baseline-skip . 0)
    \right-column {
      \with-url #"http://www.MutopiaProject.org" {
        \abs-fontsize #9  "Mutopia "
        \concat {
	  \abs-fontsize #12
	  \with-color #white "ǀ"
	  \abs-fontsize #9 "Project "
        }
      }
    }
    \override #'(font-name . "DejaVu Sans, Bold")
    \override #'(baseline-skip . 0 )
    \center-column {
      \abs-fontsize #11.9
      \with-color #grey
      \bold { "ǀ" "ǀ" }
    }
    \override #'(font-name . "DejaVu Sans,sans-serif")
    \override #'(baseline-skip . 0)
    \column {
      \abs-fontsize #8
      \concat {
	"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2022 ""by " \maintainer " — " \footer
      }
      \concat {
	\concat {
	  \abs-fontsize #8 {
	    \with-url #"http://creativecommons.org/licenses/by-sa/40/"
	               "Creative Commons Attribution ShareAlike 4.0 International License"
		       " — free to distribute, modify, and perform"
          }
	}
	\abs-fontsize #13 \with-color #white "ǀ"
      }
    }
  }
  tagline = ##f
}
