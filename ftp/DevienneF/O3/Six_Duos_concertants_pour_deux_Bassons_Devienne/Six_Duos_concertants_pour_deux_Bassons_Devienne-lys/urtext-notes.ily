\tocItem version.notes \markup "Notes"

\markup {
  \left-column {
    \fill-line { \bold { Notes } }
    \wordwrap {
      Minimal interpretation of source\footnote\super"1" "1. Paris: Sieber, n.d. https://imslp.org/wiki/Special:ImagefromIndex/651669/hfjn",
      but represented in modern
      notation. Performers will likely want to add additional dynamics and articulations.
    }
    \vspace #1
    \wordwrap {
      I've tried to limit changes in pitches to only those
      which, to me, where clearly printing errors. My judgement
      was primarily based on listening to the score. If something
      sounded off, I then checked the source, compared to similar passages,
      and used harmonic analysis to make a determination. I erred on the side
      of \italic { not } changing pitches whenever possible. The notes
      give the rationale for each pitch change.
    }
    \vspace #1
    \wordwrap {
      I've made the following changes to render this work in modern notation:
    }
  }
}
\markup {
  \left-column {
    \line {
      \vspace #1
      \hspace #3 \raise #0.5 \huge \musicglyph #"dots.dot"
      \hspace #2
      \override #'(line-width . 90)
      \wordwrap {
        Replaced classical quarter note rests (\musicglyph "rests.2classical") with modern notation (\musicglyph "rests.2"). 
      }
    }
    \line {
      \vspace #1
      \hspace #3 \raise #0.5 \huge \musicglyph #"dots.dot"
      \hspace #2
      \override #'(line-width . 90)
      \wordwrap {
	I often add triplet indications to the first few triplets in the piece so
	players aren't suprised. They are then omitted for the remainder of the piece, as in the
	source, so they don't create a distraction.
      }
    }
    \line {
      \vspace #1
      \hspace #3 \raise #0.5 \huge \musicglyph #"dots.dot"
      \hspace #2
      \override #'(line-width . 90)
      \wordwrap {
	Followed modern pratice of using ties when note durations cross
	'half measure' boundaries.
      }
    }
    \line {
      \vspace #1
      \hspace #3 \raise #0.5 \huge \musicglyph #"dots.dot"
      \hspace #2
      \override #'(line-width . 90)
      \wordwrap {
	I changed accidentals
	to minimize reading effort. I also removed courtesy accidentals; I find these
	are a distraction.
      }
    }
    \vspace #0.5
    \line {
      \hspace #3 \raise #0.5 \huge \musicglyph #"dots.dot"
      \hspace #2
      \override #'(line-width . 90)
      \wordwrap {
	Redundant time signatures and Clefs signs have been removed.
      }
    }
  }
}
