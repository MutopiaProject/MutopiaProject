\version "2.24.3"
\pageBreak
\markuplist \table-of-contents
\pageBreak


\header {
  title = \markup \center-column {
    \line { Six Duos pour deux bassons }
  }
  composer = "Étienne Ozi"
  maintainer = "Patrick Paulson"
  maintainerEmail = "patrick_paulson@3rivers-ashtanga.org"
  lastupdated = "2026/Mar/07"
  version = "1.1.0"
  mutopiatitle = "Six Duos pour deux bassons"
  mutopiacomposer = OziE
  mutopiainstrument = "2 Bassoons"
  source = "l'imprimerie du Conservatoire, n.d."
  style = "Classical"
  license = "Public Domain"
  maintainerEmail = "patrick@3rivers-ashtanga.org"
}


\tocItem \markup "Preface"

\tocItem \markup "Preface"

\markup {
  \left-column {
    \fill-line { \bold { Preface } }
    \wordwrap {
      From \override #'(padding . 0.1) \auto-footnote "Wikipedia"
      "https://en.wikipedia.org/wiki/Étienne_Ozi"  we know Ozi lived from 1754 to 1813. His
      \italic { Nouvelle Méthode de Basson }, published in 1803, was
      a complete method for the bassoon, and his methods were
      adopted by the Paris Conservatory. I've not found a date for Ozi's
      \italic { Six Duos pour deux bassons }.
    }
    \vspace #1
    \wordwrap {
      This \bold { Facsimile } Edition is my attempt to render the
      scanned
      \override #'(padding . 0.1) \auto-footnote "source" "Paris: l'imprimerie du Conservatoire. https://imslp.org/wiki/6_Bassoon_Duets_(Ozi\\%2C_Étienne)"
      using \override #'(padding . 0.1) \auto-footnote "Lilypond" "https://lilypond.org"  as closely as possible, with
      typos and no interpretation. It's purpose is to allow performes to 
      easily compare the Urtext Edition to the original source.
    }
    \vspace #1
    \fill-line {
      \hspace #1
      \right-column {
        \line { Patrick Paulson}
        \line { patrick_paulson@3rivers-ashtanga.org}
        \line { March, 2026}
      }
    }
  }
}


tocVersionItem = \tocItem version "Facsimile"

tocVersionItem = {}
tocPlayerItem = \tocItem version.player  "Second Player"

%%%duetOne = \score { s4 }
%%%duetTwo = \score { s4}
%%%duetThree=  \score { s4 }
%%%duetFour= \score { s4}
%%%duetFive= \score { s4 }
%%%duetSix= \score {s4}

%%%duetOne = {}
%%%duetTwo = { }
%%%duetThree=  {  }
%%%duetFour =  { }
%%%duetFive =  {}
%%%duetSix = {}

\include "duet1SrcPlayer2.ily"
\include "duet2SrcPlayer2.ily"
\include "duet3SrcPlayer2.ily"
\include "duet4SrcPlayer2.ily"
\include "duet5SrcPlayer2.ily"
\include "duet6SrcPlayer2.ily"
%%%
\duetOne
\duetTwoFirstMovement
\duetTwoSecondMovement
\duetThree
\duetFour
\pageBreak
\duetFive
\duetSix


\tocItem version.notes \markup "Notes"

\markup {
  \override #'(padding . 3)
  \left-column {
    \line { Notes }
    \wordwrap {
      \hspace #5 This is an attempt to reproduce the source
      \override #'(padding . 0.1) \auto-footnote "score" "Paris: l'imprimerie du Conservatoire. https://imslp.org/wiki/6_Bassoon_Duets_(Ozi\\%2C_Étienne)"
      with minimal interpretation using  \override #'(padding . 0.1) \auto-footnote "Lilypond" "https://lilypond.org" for engraving. I had to 'abuse' Lilypond to reproduce errors in the source, making free use of cadendas and spacer rests.
    }
    \vspace #1
    \wordwrap {
      \hspace #5
      I've made the following changes to render this work in using Lilypond:
    }
  }
}

\markup {
  \left-column {
    \line {
      \hspace #3 \raise #0.5 \huge \musicglyph #"dots.dot"
      \hspace #2
      \override #'(line-width . 90)
      \wordwrap {
	Some annotations that appear above the staff in the source are rendered below
	the staff, and vice versa.
      }
    }
    \vspace #0.5
    \line {
      \hspace #3 \raise #0.5 \huge \musicglyph #"dots.dot"
      \hspace #2
      \override #'(line-width . 90)
      \wordwrap {
	Connecting beams may not match source; some beams are too difficult to
	replicate with Lilypond.
      }
    }
    \vspace #0.5
    \line {
      \hspace #3 \raise #0.5 \huge \musicglyph #"dots.dot"
      \hspace #2
      \override #'(line-width . 90)
      \wordwrap {
	Clef markings and time signatures aren't repeated unless necessary.
	Lilypond doesn't format them the same
	way as the source, so it was easier to omit them. (Everything in source
	was in bass clef, anyways).
      }
    }
    \vspace #0.5
    \line {
      \hspace #3 \raise #0.5 \huge \musicglyph #"dots.dot"
      \hspace #2
      \override #'(line-width . 90)
      \wordwrap {
	I've tried to replicate the weird repeat marks as much as possible, but sometimes
	Lilypond didn't co-operate.
      }
    }
  }
}



\markup {
  \vspace #2
  \center-column {
    \line { "II Duo" }
    \column {
      \fill-line \italic {Finale}
      \wordwrap {
	MM. 108-111: added slur to disambiguate ties and slurs
	in source. Source { \italic could } be interpreted as
	all slurs and no ties, but that doesn't seem to be the intent.
      }
    }
  }
}
