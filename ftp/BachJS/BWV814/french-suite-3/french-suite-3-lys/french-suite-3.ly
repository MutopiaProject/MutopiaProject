\version "2.18.2"

#(ly:set-option 'relative-includes #t)

\paper {
  line-width = 18.6\cm
  top-margin = 8\mm
  bottom-margin = 9\mm
  ragged-last-bottom = ##t
  ragged-bottom = ##t
  first-page-number = 0
  markup-system-spacing.basic-distance = #10
  last-bottom-spacing.padding = #2
}

\bookpart {

  \header { maintainer = "Knute Snortum and Joel Mayes" }
  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup { \fill-line { \center-column {
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null
	\line {\abs-fontsize #20 "J. S. Bach"}
	\null\null\null
	\line {\abs-fontsize #36 \bold "French Suite III"}
	\null\null\null
	\line {\abs-fontsize #20 "BWV 814"}
	\null\null\null\null
	\fill-line { \abs-fontsize #20 "For Piano or Harpsichord" }
	\null\null\null\null
	\null\null\null\null
        \fill-line { \abs-fontsize #14 "Transcribed and Engraved"}
        \null
        \fill-line { \abs-fontsize #14 "by"}
        \null
        \fill-line { \abs-fontsize #14 "Joel Mayes and Knute Snortum"}
	} } }
}


\include "./parts/bach-french-suite-3-allemande.ly"
\include "./parts/bach-french-suite-3-courante.ly"
\include "./parts/bach-french-suite-3-sarabande.ly"
\include "./parts/bach-french-suite-3-menuet.ly"
\include "./parts/bach-french-suite-3-trio.ly"
\include "./parts/bach-french-suite-3-gavotte.ly"
\include "./parts/bach-french-suite-3-gigue.ly"
