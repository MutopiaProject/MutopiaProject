\version "2.12.2"

\include "Flute1MvtI.lyi"
\include "Flute2MvtI.lyi"
\include "CelloMvtI.lyi"
\include "Oboe1MvtI.lyi"
\include "Oboe2MvtI.lyi"
\include "Violin1MvtI.lyi"
\include "Violin2MvtI.lyi"
\include "Horn1MvtI.lyi"
\include "Horn2MvtI.lyi"
\include "Horn3MvtI.lyi"
\include "Bassoon1MvtI.lyi"
\include "Bassoon2MvtI.lyi"
\include "ViolaMvtI.lyi"
\include "Clarinet1MvtI.lyi"
\include "Clarinet2MvtI.lyi"
\include "TimpaniMvtI.lyi"
\include "BassMvtI.lyi"
\include "Trumpet1MvtI.lyi"
\include "Trumpet2MvtI.lyi"
\include "defs.lyi"

#(set-global-staff-size 14)
%#(set-default-paper-size "a3")

instrument = "Orchestra"

\book
{
  \include "Header.lyi"
  \score
  {
    <<
      \new StaffGroup
      <<
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Flutes"
          \set Staff.shortInstrumentName = "Fl."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \fluteOneMvtI}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \fluteTwoMvtI}
          >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Oboes"
          \set Staff.shortInstrumentName = "Ob."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \oboeOneMvtI}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \oboeTwoMvtI}
          >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = \markup {
            \column { "Clarinets"
                      \line { "in B" \smaller \flat} } }
          \set Staff.shortInstrumentName = "Cl."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \clarinetOneMvtI}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \clarinetTwoMvtI}
          >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bassoons"
          \set Staff.shortInstrumentName = "Bs."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \bassoonOneMvtI}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \bassoonTwoMvtI}
          >>
        }
      >>
      \new StaffGroup
      <<
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = \markup {
            \column { "Horns I,II"
                      \line { "in E" \smaller \flat} } }
          \set Staff.shortInstrumentName = "Hn."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \hornOneMvtI}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \hornTwoMvtI}
          >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = \markup {
            \column { "Horn III"
                      \line { "in E" \smaller \flat} } }
          \set Staff.shortInstrumentName = "Hn.III"
          \hornThreeMvtI
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = \markup {
            \column { "Trumpets"
                      \line { "in E" \smaller \flat} } }
          \set Staff.shortInstrumentName = "Tr."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \trumpetOneMvtI}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \trumpetTwoMvtI}
          >>
        }
      >>
      \new Staff
      {
        #(set-accidental-style 'modern)
        \set Staff.instrumentName = "Timpani"
        \set Staff.shortInstrumentName = "Ti."
        \timpaniMvtI
      }
      \new StaffGroup
      <<
        \new GrandStaff
        <<
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = "Violin I"
            \set Staff.shortInstrumentName = "Vl.I"
            \violinOneMvtI
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = "Violin II"
            \set Staff.shortInstrumentName = "Vl.II"
            \violinTwoMvtI
          }
        >>
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Viola"
          \set Staff.shortInstrumentName = "Va."
          \violaMvtI
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Cello"
          \set Staff.shortInstrumentName = "Vc."
          \celloMvtI
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bass"
          \set Staff.shortInstrumentName = "Cb."
          << \bassMvtI \outlineMvtI >>
        }
      >>
    >>
    \header { piece = \MvtI }
    \layout
    {
      \context { \RemoveEmptyStaffContext }
    }
  }

  \score
  {
    \unfoldTremolos
    <<
      \new Staff
      {
        \set Staff.midiInstrument = "flute"
        <<
          \fluteOneMvtI
          \fluteTwoMvtI
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "oboe"
        <<
          \oboeOneMvtI
          \oboeTwoMvtI
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "clarinet"
        <<
          \clarinetOneMvtI
          \clarinetTwoMvtI
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "bassoon"
        <<
          \bassoonOneMvtI
          \bassoonTwoMvtI
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        <<
          \hornOneMvtI
          \hornTwoMvtI
          \hornThreeMvtI
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "trumpet"
        <<
          \trumpetOneMvtI
          \trumpetTwoMvtI
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "timpani"
        \timpaniMvtI
      }
      \new Staff
      {
        \set Staff.midiInstrument = "string ensemble 1"
        <<
          \violinOneMvtI
          \violinTwoMvtI
          \violaMvtI
          \celloMvtI
          << \bassMvtI \outlineMvtI >>
        >>
      }
    >>
    \midi
    {
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

