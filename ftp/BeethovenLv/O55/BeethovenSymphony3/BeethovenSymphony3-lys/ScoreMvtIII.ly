\version "2.12.2"

\include "Flute1MvtIII.lyi"
\include "Flute2MvtIII.lyi"
\include "CelloMvtIII.lyi"
\include "Oboe1MvtIII.lyi"
\include "Oboe2MvtIII.lyi"
\include "Violin1MvtIII.lyi"
\include "Violin2MvtIII.lyi"
\include "Horn1MvtIII.lyi"
\include "Horn2MvtIII.lyi"
\include "Horn3MvtIII.lyi"
\include "Bassoon1MvtIII.lyi"
\include "Bassoon2MvtIII.lyi"
\include "ViolaMvtIII.lyi"
\include "Clarinet1MvtIII.lyi"
\include "Clarinet2MvtIII.lyi"
\include "TimpaniMvtIII.lyi"
\include "BassMvtIII.lyi"
\include "Trumpet1MvtIII.lyi"
\include "Trumpet2MvtIII.lyi"
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
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \fluteOneMvtIII}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \fluteTwoMvtIII}
          >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Oboes"
          \set Staff.shortInstrumentName = "Ob."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \oboeOneMvtIII}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \oboeTwoMvtIII}
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
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \clarinetOneMvtIII}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \clarinetTwoMvtIII}
          >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bassoons"
          \set Staff.shortInstrumentName = "Bs."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \bassoonOneMvtIII}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \bassoonTwoMvtIII}
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
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \hornOneMvtIII}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \hornTwoMvtIII}
          >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = \markup {
            \column { "Horn III"
                      \line { "in E" \smaller \flat} } }
          \set Staff.shortInstrumentName = "Hn.III"
          \hornThreeMvtIII
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = \markup {
            \column { "Trumpets"
                      \line { "in E" \smaller \flat} } }
          \set Staff.shortInstrumentName = "Tr."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \trumpetOneMvtIII}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \trumpetTwoMvtIII}
          >>
        }
      >>
      \new Staff
      {
          #(set-accidental-style 'modern)
        \set Staff.instrumentName = "Timpani"
        \set Staff.shortInstrumentName = "Ti."
        \timpaniMvtIII
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
            \violinOneMvtIII
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = "Violin II"
            \set Staff.shortInstrumentName = "Vl.II"
            \violinTwoMvtIII
          }
        >>
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Viola"
          \set Staff.shortInstrumentName = "Va."
          \violaMvtIII
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Cello"
          \set Staff.shortInstrumentName = "Vc."
          \celloMvtIII
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bass"
          \set Staff.shortInstrumentName = "Cb."
          << \bassMvtIII \outlineMvtIII >>
        }
      >>
    >>
    \header { piece = \MvtIII }
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
          \fluteOneMvtIII
          \fluteTwoMvtIII
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "oboe"
        <<
          \oboeOneMvtIII
          \oboeTwoMvtIII
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "clarinet"
        <<
          \clarinetOneMvtIII
          \clarinetTwoMvtIII
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "bassoon"
        <<
          \bassoonOneMvtIII
          \bassoonTwoMvtIII
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        <<
          \hornOneMvtIII
          \hornTwoMvtIII
          \hornThreeMvtIII
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "trumpet"
        <<
          \trumpetOneMvtIII
          \trumpetTwoMvtIII
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "timpani"
        \timpaniMvtIII
      }
      \new Staff
      {
        \set Staff.midiInstrument = "string ensemble 1"
        <<
          \violinOneMvtIII
          \violinTwoMvtIII
          \violaMvtIII
          \celloMvtIII
          << \bassMvtIII \outlineMvtIII >>
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

