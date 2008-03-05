\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << %\newHaraKiriStaff <<
        \instrumentName \markup \center-align { "Deux flûtes" seules }
        \set Staff.shortInstrumentName = "Fl"
        \global \includeNotes "flute"
      >>
      \newHaraKiriStaff <<
        \instrumentName \markup \center-align {
          \line { Violon I  \small { dans } }
          \line \small { deux premiers dessus } }
        \set Staff.shortInstrumentName = "Vl 1"
        \global \includeNotes "violon1"
      >>
      \newHaraKiriStaff <<
        \instrumentName \markup \center-align {
          \line { Violon II \small { dans } }
          \line \small { deux seconds dessus } }
        \set Staff.shortInstrumentName = "Vl 2"
        \global \includeNotes "violon2"
        \once \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 4)
      >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup \center-align {
        \line { \smallCaps Aricie ou }
        \line { une bergère }
      }
      \global \includeNotes "bergere"
    >> \includeLyrics "paroles"
    \newHaraKiriStaff <<
      \instrumentName \markup \center-align {
        \line { Violons \small { dans le } }
        \line \small { reste des dessus }
      }
      \set Staff.shortInstrumentName = "Vls"
      \global \includeNotes "violon3"
    >>
    \newHaraKiriStaffB <<
      \set Staff.shortInstrumentName = "BC"
      { s4 s2.*55 \break }
      \global \includeNotes "basse"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
