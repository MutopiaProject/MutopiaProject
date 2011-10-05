\version "2.14.2"

\include "Definitions.lyi"

\include "Notes_Trombone1_Movement1.lyi"
\include "Notes_Trombone2_Movement1.lyi"
\include "Notes_Trombone3_Movement1.lyi"
\include "Notes_Trombone4_Movement1.lyi"
\include "Notes_Trombone1_Movement2.lyi"
\include "Notes_Trombone2_Movement2.lyi"
\include "Notes_Trombone3_Movement2.lyi"
\include "Notes_Trombone4_Movement2.lyi"
\include "Notes_Trombone1_Movement3.lyi"
\include "Notes_Trombone2_Movement3.lyi"
\include "Notes_Trombone3_Movement3.lyi"
\include "Notes_Trombone4_Movement3.lyi"

#(set-global-staff-size 14)
#(ly:set-option 'point-and-click #f)

\paper
{
  #(define page-breaking ly:minimal-breaking)
  %ragged-last-bottom = ##f
}

instrument = "Full Score"
\include "Header.lyi"


\book 
{
  \score
  {
    \context StaffGroup {
      <<
        \new Staff {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 1"
          \set Staff.midiInstrument = #"trombone"
          << \clef alto \outlineMvtI \TromOneMvtOne >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 2"
          \set Staff.midiInstrument = #"trombone"
          << \clef alto \outlineMvtI \TromTwoMvtOne >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 3"
          \set Staff.midiInstrument = #"trombone"
          << \clef tenor \outlineMvtI \TromThreeMvtOne >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 4"
          \set Staff.midiInstrument = #"trombone"
          << \clef bass \outlineMvtI \TromFourMvtOne >>
        }
      >>
    }
    \header { piece = \MvtI }
    \layout { }
    \midi {
      \context { \Score tempoWholesPerMinute = #(ly:make-moment 54 2) }
    }
  }

  
  \score
  {
    \context StaffGroup {
      <<
        \new Staff {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 1"
          \set Staff.midiInstrument = #"trombone"
          << \clef alto \outlineMvtII \TromOneMvtTwo >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 2"
          \set Staff.midiInstrument = #"trombone"
          << \clef alto \outlineMvtII \TromTwoMvtTwo >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 3"
          \set Staff.midiInstrument = #"trombone"
          << \clef tenor \outlineMvtII \TromThreeMvtTwo >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 4"
          \set Staff.midiInstrument = #"trombone"
          << \clef bass \outlineMvtII \TromFourMvtTwo >>
        }
      >>
    }
    \header { piece = \MvtII }
    \layout { }
    \midi {
      \context { \Score tempoWholesPerMinute = #(ly:make-moment 66 2) }
    }
  }
  
  
  \score
  {
    \context StaffGroup {
      <<
        \new Staff {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 1"
          \set Staff.midiInstrument = #"trombone"
          << \clef alto \outlineMvtIII \TromOneMvtThree >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 2"
          \set Staff.midiInstrument = #"trombone"
          << \clef alto \outlineMvtIII \TromTwoMvtThree >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 3"
          \set Staff.midiInstrument = #"trombone"
          << \clef tenor \outlineMvtIII \TromThreeMvtThree >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Trom 4"
          \set Staff.midiInstrument = #"trombone"
          << \clef bass \outlineMvtIII \TromFourMvtThree >>
        }
      >>
    }
    \header { piece = \MvtIII }
    \layout { }
    \midi {
      \context { \Score tempoWholesPerMinute = #(ly:make-moment 52 2) }
    }
  }

}
