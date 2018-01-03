\version "2.18.2"

\score {
  <<
%  \spacing
    \new StaffGroup ="woodwinds" <<
      \new GrandStaff ="flutes" <<
        \new Staff = "flauti" <<
                \set Staff.midiInstrument = #"flute"
                \set Staff.instrumentName = \markup { \center-column { "Flauto I." } }
                \set Staff.shortInstrumentName = \markup { \center-column { "Fl." } }
                \theFlutes >>
           \new Staff = "flauti2" <<
               \set Staff.midiInstrument = #"flute"
               \set Staff.instrumentName = \markup { \center-column { "Flauto II." } }
               \theFlutessecond >>
        >> % end flutes
      \new Staff ="oboi" <<
        \set Staff.midiInstrument = #"oboe"
        \set Staff.instrumentName = \markup { \center-column { "2 Oboi" } }
        \set Staff.shortInstrumentName = \markup { \center-column { "Ob." } }
        \theOboes >>
      \new Staff = "clarinetti" <<
        \set Staff.midiInstrument = #"clarinet"
        \set Staff.instrumentName = \markup { \center-column { "2 Clarinetti" "in A" } }
        \set Staff.shortInstrumentName = \markup { \center-column { "Cl." } }
        \theClarinets >>
      \new Staff = "fagotti" <<
        \set Staff.midiInstrument = #"bassoon"
        \set Staff.instrumentName = \markup { \center-column { "2 Fagotti" } }
        \set Staff.shortInstrumentName = \markup { \center-column { "Fg." } }
        \theBassoons >>
    >> % end woodwinds

   \new StaffGroup ="brass" <<
      \new GrandStaff = "horns" <<
                \new Staff = "corni_first" <<
                        \set Staff.midiInstrument = #"french horn"
                        \set Staff.instrumentName = \markup { \center-column { "Corni in F" "I  II" } }
                        \set Staff.shortInstrumentName = \markup { \center-column { "Cor." } }
                        \theHornsfirst >>
                \new Staff = "corni_second" <<
                        \set Staff.midiInstrument = #"french horn"
                        \set Staff.instrumentName = \markup { \center-column { "III IV" } }
                        \theHornssecond >>
                >>
                \new Staff = "trumpet" <<
                        \set Staff.midiInstrument = #"trumpet"
                        \set Staff.instrumentName = \markup { \center-column { "2 Trombe" "in D" } }
                        \set Staff.shortInstrumentName = \markup { \center-column { "Trbe." } }
                        \theTrumpets >>
    >>

    \new StaffGroup ="timpani_group" <<
      \new Staff ="timpani" <<
        \set Staff.midiInstrument = #"timpani"
        \set Staff.instrumentName = \markup { \center-column { "Timpani" "in A-D" } }
        \set Staff.shortInstrumentName = \markup { \center-column { "Timp." } }
        \theTimpani
        >>
    >>

     \new StaffGroup ="solo_group" <<
      \new Staff ="solo" <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrumentName = \markup { \center-column { Violino Solo } }
        \set Staff.shortInstrumentName = \markup { \center-column { "V.S." } }
        \theSolo
        >>
    >>

    \new StaffGroup ="strings" <<
        \new GrandStaff = "upper_strings" <<
                \new Staff = "violin_one" <<
                        \set Staff.midiInstrument = #"string ensemble 1"
                                \set Staff.instrumentName = \markup { \center-column { "Violino I" } }
                                \set Staff.shortInstrumentName = \markup { \center-column { "Vl." } }
                                \theFirstViolins >>
                        \new Staff = "violin_two" <<
                                 \set Staff.midiInstrument = #"string ensemble 1"
                                 \set Staff.instrumentName = \markup { \center-column { "Violino II" } }
                                 \theSecondViolins >>
                >>
                \new Staff = "viola" <<
                        \set Staff.midiInstrument = #"string ensemble 1"
                        \set Staff.instrumentName = \markup { \center-column { "Viola" } }
                        \set Staff.shortInstrumentName = \markup { \center-column { "Vla." } }
                        \theViolas >>
                \new GrandStaff = "lower_strings" <<
                        \new Staff = "violincello" <<
                                \set Staff.midiInstrument = #"string ensemble 1"
                                \set Staff.instrumentName = \markup { \center-column { "Violoncello" } }
                                \set Staff.shortInstrumentName = \markup { \center-column { "Vc." } }
                                \theCellos >>

                        \new Staff ="contrabass" <<
                        \set Staff.midiInstrument = #"contrabass"
                        \set Staff.instrumentName = \markup { \center-column { "Contrabasso" } }
                        \set Staff.shortInstrumentName = \markup { \center-column { "B." } }
                        \theBass >>
          >>
        >>
  \context Staff = "solo" \barlines
 >>


  \midi {
    \tempo 4 = 126
    }


  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
}
