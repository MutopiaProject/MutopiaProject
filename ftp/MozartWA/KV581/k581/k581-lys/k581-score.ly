%%% -*- LilyPond -*-

\version "2.10.10"

#(set-global-staff-size 13.8)

\include "defs.ly"

\include "clarinet-i.ly"
\include "violin1-i.ly"
\include "violin2-i.ly"
\include "viola-i.ly"
\include "cello-i.ly"

\score {
  <<
    \override Score.BarNumber #'padding = #3

    \context StaffGroup = "ensemble" <<

      \context Staff = "clarinet" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"clarinet"
	\set Staff.instrumentName = "Clarinetto in A."
	\set Staff.shortInstrumentName = "Cl."
	\transposition a 

	\time 4/4

	\clarinetFirstMov
	\context Voice = "markings" { \markingsI }
      >>

      \context Staff = violinI <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino I."
	\set Staff.shortInstrumentName = "Vl.I"

	\time 4/4

	\violinIFirstMov
      >>

      \context Staff = violinII <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino II."
	\set Staff.shortInstrumentName = "Vl.II"

	\time 4/4

	\violinIIFirstMov
      >>

      \context Staff = "viola" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"viola"
	\set Staff.instrumentName = "Viola."
	\set Staff.shortInstrumentName = "Vla"

	\time 4/4

	\violaFirstMov
      >>

      \context Staff = "cello" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Violoncello."
	\set Staff.shortInstrumentName = "Vc."

	\time 4/4

	\celloFirstMov
      >>
    >>
  >>
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }

  \layout { 
    indent = 2.5\cm 
    ragged-bottom = ##t 
  }
}

\include "clarinet-ii.ly"
\include "violin1-ii.ly"
\include "violin2-ii.ly"
\include "viola-ii.ly"
\include "cello-ii.ly"

\score {
  <<
    \override Score.BarNumber   #'padding = #3

    \context StaffGroup = "ensemble" <<

      \context Staff = "clarinet" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"clarinet"
	\set Staff.instrumentName = "Clarinetto in A."
	\set Staff.shortInstrumentName = "Cl."
	\transposition a 

	\time 3/4

	\clarinetSecondMov
	\context Voice = "markings" { \markingsII }
      >>

      \context Staff = violinI <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino I."
	\set Staff.shortInstrumentName = "Vl.I"

	\time 3/4

	\violinISecondMov
      >>

      \context Staff = violinII <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino II."
	\set Staff.shortInstrumentName = "Vl.II"

	\time 3/4

	\violinIISecondMov
      >>

      \context Staff = "viola" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"viola"
	\set Staff.instrumentName = "Viola."
	\set Staff.shortInstrumentName = "Vla"

	\time 3/4

	\violaSecondMov
      >>

      \context Staff = "cello" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Violoncello."
	\set Staff.shortInstrumentName = "Vc."

	\time 3/4

	\celloSecondMov
      >>
    >>
  >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 55 4)
    }
  }

  \layout { 
    indent = 2.5\cm 
    ragged-bottom = ##t 
  }
}

\include "clarinet-iii.ly"
\include "violin1-iii.ly"
\include "violin2-iii.ly"
\include "viola-iii.ly"
\include "cello-iii.ly"

\score {
  <<
    \override Score.BarNumber   #'padding = #3

    \context StaffGroup = "ensemble" <<

      \context Staff = "clarinet" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"clarinet"
	\set Staff.instrumentName = "Clarinetto in A."
	\set Staff.shortInstrumentName = "Cl."
	\transposition a 

	\time 3/4
	\partial 4

	\clarinetThirdMov
	\context Voice = "markings" { \markingsIII }
      >>

      \context Staff = violinI <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino I."
	\set Staff.shortInstrumentName = "Vl.I"

	\time 3/4
	\partial 4

	\violinIThirdMov
      >>

      \context Staff = violinII <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino II."
	\set Staff.shortInstrumentName = "Vl.II"

	\time 3/4
	\partial 4

	\violinIIThirdMov
      >>

      \context Staff = "viola" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"viola"
	\set Staff.instrumentName = "Viola."
	\set Staff.shortInstrumentName = "Vla"

	\time 3/4
	\partial 4

	\violaThirdMov
      >>

      \context Staff = "cello" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Violoncello."
	\set Staff.shortInstrumentName = "Vc."

	\time 3/4
	\partial 4

	\celloThirdMov
	\context Voice = "markings" { \markingsIIIbis }
      >>
    >>
  >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 140 4)
    }
  }

  \layout { 
    indent = 2.5\cm 
    ragged-bottom = ##t 
  }
}



\include "clarinet-iv.ly"
\include "violin1-iv.ly"
\include "violin2-iv.ly"
\include "viola-iv.ly"
\include "cello-iv.ly"

\score {
  <<
    \override Score.BarNumber   #'padding = #3

    \context StaffGroup = "ensemble" <<

      \context Staff = "clarinet" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"clarinet"
	\set Staff.instrumentName = "Clarinetto in A."
	\set Staff.shortInstrumentName = "Cl."
	\transposition a 

	\time 2/2

	\clarinetFourthMov
	\context Voice = "markings" { \markingsIV }
      >>

      \context Staff = violinI <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino I."
	\set Staff.shortInstrumentName = "Vl.I"

	\time 2/2

	\violinIFourthMov
      >>

      \context Staff = violinII <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino II."
	\set Staff.shortInstrumentName = "Vl.II"

	\time 2/2

	\violinIIFourthMov
      >>

      \context Staff = "viola" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"viola"
	\set Staff.instrumentName = "Viola."
	\set Staff.shortInstrumentName = "Vla"

	\time 2/2

	\violaFourthMov
      >>

      \context Staff = "cello" <<
	\set Staff.autoBeaming = ##f
	\set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Violoncello."
	\set Staff.shortInstrumentName = "Vc."

	\time 2/2

	\celloFourthMov
      >>
    >>
  >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 140 4)
    }
  }

  \layout { 
    indent = 2.5\cm 
    ragged-bottom = ##t 
  }
}
