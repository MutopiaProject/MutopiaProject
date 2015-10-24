\version "2.18.2"

%#(set-default-paper-size "letter")

\paper {
        top-margin = 8 \mm
        bottom-margin = 6 \mm
        left-margin = 18 \mm
        right-margin = 18 \mm
        
        top-markup-spacing.basic-distance = #10
        markup-system-spacing.basic-distance = #17
        top-system-spacing.basic-distance = #15
        last-bottom-spacing.padding = #8

        ragged-last-bottom = ##f
        ragged-bottom = ##f        
}

\header {
  title = \markup \center-column {
		\fontsize #1
		"Prelude No. 3"
	}
  subtitle = \markup \center-column {
                "in C minor"
                \null
	}
  composer = \markup \right-column {
	\fontsize #2
	 "Agustín Barrios (1885-1944)"
	}
  style = "Romantic"
  date = "1940"
  source = "Composer's manuscript"
  maintainer = "Steve Shorter"
  maintainerEmail = "steve (at) linuxsuite.org"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  mutopiatitle = "Prelude No. 3 in C minor"
  mutopiacomposer = "BarriosA"
  mutopiainstrument = "Guitar"
  moreInfo = "Preludio en Do menor - Agustín Barrios Mangoré"

 footer = "Mutopia-2015/10/24-1"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\include "voice1.ly"
\include "voice2.ly"
\include "voice3.ly"

global = {
  \key c \minor
  \clef "G_8" 
  \time 2/4
  \set Staff.instrumentName = "Guitar "
}

guitar = << \voiceone \\ \voicetwo \\ \voicethree >>

\score {
    \new Staff
      \with { midiInstrument = #"acoustic guitar (nylon)" }
      { \global \guitar }

    \layout { }

    \midi { \tempo 8 = 52 }

}

