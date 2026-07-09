
\tocItem version.notes \markup "Notes"

\markup {
  \left-column {
    \fill-line { \bold { Notes } }
    \wordwrap {
      Minimal interpretation of source\footnote\super"1" "1. Paris: l'imprimerie du Conservatoire. https://imslp.org/wiki/6_Bassoon_Duets_(Ozi\\%2C_Étienne)",
      but represented in modern
      notation.
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
      \hspace #3 \raise #0.5 \huge \musicglyph #"dots.dot"
      \hspace #2
      \override #'(line-width . 90)
      \wordwrap {
	I often add triplet indications to the first few triplets in the piece so
	players aren't suprised. They are then omitted for the remainder of the piece, as in the
	source, so they don't create a distraction.
      }
    }
    \vspace #0.5
    \line {
      \hspace #3 \raise #0.5 \huge \musicglyph #"dots.dot"
      \hspace #2
      \override #'(line-width . 90)
      \wordwrap {
        \italic I replaced { Staccatissimo } articulations
        (\musicglyph #"scripts.ustaccatissimo") are with Staccatos
	when the source contains no staccato articulations.
      }
    }
    \vspace #0.5
    \line {
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
        The repeat structure of the source is often unclear: measures don't line
        up or are incomplete when the repeat is taken. I've interpreted this to mean
        that players were free to take extra time on the repeats. I've notated this
        by adding or taking away time from the start or end of repeats; this is indicated
        with a caesura. These caesuras can be either used or ignored.
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

\markup {
  \override #'(padding . 5)
  \vspace #2
  \fill-line {
    \center-column {
      \line \underline { Original Notation }
      \line { \musicglyph #"rests.2classical" }
      \line { rinf }
      \line { Dol }
      \line { + }
      \line { Tr }
    }
    \hspace #0.5
    \center-column {
      \line \underline { Replaced With }
      \line { \musicglyph #"rests.2" }
      \italic { rfz. }
      \italic { dolce }
      \line { \musicglyph #"scripts.prall" }
      \line { Trill symbol }
    }
    \hspace #0.5
    \center-column {
      \line  \underline { Comment }
      \override #'(line-width . 50)
      \wordwrap {
        Changed notation for quarter note rest.
      }
      \wordwrap {
        Notation 'rinf' interpreted as 'rinforzando'
      }
      \wordwrap {
        'Dol' interpreted as 'dolce'
      }
      \wordwrap {
        '+' interpreted as a prall.
      }
      \wordwrap {
        'Tr' interpreted as a trill.
      }
    }
  }
}

\markup {
  \vspace #2
  \center-column {
    \line { "I Duo" }
    \column {
      \wordwrap {
        Interpreted repeats, had to restructure so measures
        matched meters. For the Rondeau, my interpretation is
        repeat the first section, play the \bold { mineur } section
        once, then D.C. to fine. It's unclear to me whether the
        \bold { mineur } section should be repeated, and players
        may repeat it if they prefer. However, the notation
        is simplified without the repeat, so that's how I did it.
      }
    }
  }
}
\markup {
  \vspace #2
  \center-column {
    \line { "II Duo" }
    \column {
      \fill-line { \italic Siciliano }
      \wordwrap {
	Could only make sense of this
        by omitting repeat of the section labeled "mineur". Replaced use of segno with simpler
        'D.C'.
      }
    }
  }
}
\markup {
  \vspace #2
  \center-column {
    \line { "III Duo" }
    \column {
      \fill-line \italic { "Allegro" }
      \wordwrap {
	Removed unusual beaming where there was no indication it was needed.
      }
      \vspace #1
      \fill-line \italic {"Rondeau" }
      \wordwrap {
	Interpreted repeat structure
	as : repeat first section, play section labeled \bold { mineur } once,
	then D.S. to Fine.
      }
    }
  }
}
\markup {
  \vspace #2
  \column {
    \fill-line { "IV Duo" }
    \fill-line \italic { "Allegro Moderato" }
    \wordwrap {
      Staccato articulations indicate staccato in source, rather that
      staccatissimo.
    }
  }
}

\markup {
  \vspace #2
  \column {
    \fill-line { "VI Duo" }
    \fill-line  \italic {Andantino.}
    \wordwrap {
      The source score had measures that did not match the 2/4 meter. The intent seemed clear, so I
      added a note and corrected the score to match meter.
    }
    \vspace #0.5
    \wordwrap {
      Used multiple endings to make the repeats clearer at the expense of conciseness. Added
      fermatas and caesuras to allow meter to come out but
      not make transitions too abrupt; use of this added time is up to the player's discretion.
      Players may decide to add time in additional places.
    }
    \vspace #0.5
    \wordwrap {
      Both staccato and staccatissimo articulations are used in the source so they
      retained (instead of replacing staccatissimo with staccato).
    }
    \vspace #0.5
    \wordwrap {
      Added repeat bar at the end of the \bold {mineur/major} sections. The source only had
      a double bar, indicating the repeat included the following 3rd variation. Also Fixed multiple rhythmic errors as best as I could.
    }
  }
}
\markup {
  \vspace #1
  \column {
    \fill-line
    { \italic Rondeau.}
    \wordwrap {
      Tried to intepret repeats the best I could. The source didn't have a clear transition
      from the first section to the \bold mineur section.
    }
  }
}

