\version "2.12.2"

\include "Flute1MvtIV.lyi"
\include "Flute2MvtIV.lyi"
\include "CelloMvtIV.lyi"
\include "Oboe1MvtIV.lyi"
\include "Oboe2MvtIV.lyi"
\include "Violin1MvtIV.lyi"
\include "Violin2MvtIV.lyi"
\include "Horn1MvtIV.lyi"
\include "Horn2MvtIV.lyi"
\include "Horn3MvtIV.lyi"
\include "Bassoon1MvtIV.lyi"
\include "Bassoon2MvtIV.lyi"
\include "ViolaMvtIV.lyi"
\include "Clarinet1MvtIV.lyi"
\include "Clarinet2MvtIV.lyi"
\include "TimpaniMvtIV.lyi"
\include "BassMvtIV.lyi"
\include "Trumpet1MvtIV.lyi"
\include "Trumpet2MvtIV.lyi"
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
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \fluteOneMvtIV}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \fluteTwoMvtIV}
          >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Oboes"
          \set Staff.shortInstrumentName = "Ob."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \oboeOneMvtIV}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \oboeTwoMvtIV}
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
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \clarinetOneMvtIV}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \clarinetTwoMvtIV}
          >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bassoons"
          \set Staff.shortInstrumentName = "Bs."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \bassoonOneMvtIV}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \bassoonTwoMvtIV}
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
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \hornOneMvtIV}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \hornTwoMvtIV}
          >>
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = \markup {
            \column { "Horn III"
                      \line { "in E" \smaller \flat} } }
          \set Staff.shortInstrumentName = "Hn.III"
          \hornThreeMvtIV
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = \markup {
            \column { "Trumpets"
                      \line { "in E" \smaller \flat} } }
          \set Staff.shortInstrumentName = "Tr."
          <<
            \new Voice {\voiceOne \dynamicUp \keepWithTag #'score \trumpetOneMvtIV}
            \new Voice {\voiceTwo \dynamicDown \keepWithTag #'score \trumpetTwoMvtIV}
          >>
        }
      >>
      \new Staff
      {
        #(set-accidental-style 'modern)
        \set Staff.instrumentName = "Timpani"
        \set Staff.shortInstrumentName = "Ti."
        \timpaniMvtIV
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
            \violinOneMvtIV
          }
          \new Staff
          {
            #(set-accidental-style 'modern)
            \set Staff.instrumentName = "Violin II"
            \set Staff.shortInstrumentName = "Vl.II"
            \violinTwoMvtIV
          }
        >>
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Viola"
          \set Staff.shortInstrumentName = "Va."
          \violaMvtIV
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Cello"
          \set Staff.shortInstrumentName = "Vc."
          \celloMvtIV
        }
        \new Staff
        {
          #(set-accidental-style 'modern)
          \set Staff.instrumentName = "Bass"
          \set Staff.shortInstrumentName = "Cb."
          << \bassMvtIV \outlineMvtIV >>
        }
      >>
    >>
    \header { piece = \MvtIV }
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
          \fluteOneMvtIV
          \fluteTwoMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "oboe"
        <<
          \oboeOneMvtIV
          \oboeTwoMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "clarinet"
        <<
          \clarinetOneMvtIV
          \clarinetTwoMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "bassoon"
        <<
          \bassoonOneMvtIV
          \bassoonTwoMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \hornOneMvtIV
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        <<
          \hornTwoMvtIV
          \hornThreeMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "trumpet"
        <<
          \trumpetOneMvtIV
          \trumpetTwoMvtIV
        >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "timpani"
        \timpaniMvtIV
      }
      \new Staff
      {
        \set Staff.midiInstrument = "string ensemble 1"
        <<
          \violinOneMvtIV
          \violinTwoMvtIV
          \violaMvtIV
          \celloMvtIV
          << \bassMvtIV \outlineMvtIV >>
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

