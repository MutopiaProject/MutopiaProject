\score {
  <<
    \new StaffGroupNoBar <<
      \new InnerStaffGroup <<
        \newHaraKiriStaff << \global \dessus \includeNotes "sagesse-instr-dessus1" >>
        \newHaraKiriStaff << \global \dessus \includeNotes "sagesse-instr-dessus2" >>
        \newHaraKiriStaff << \global \taille \includeNotes "sagesse-instr-taille" >>
      >>
      \new ChoirStaff <<
        \newStaffWithLyrics <<
          \characterMark "Suite de la Sagesse"
          \global \voixDessus \includeNotes "sagesse-dessus"
        >> \includeLyrics "sagesse-paroles1"
        \newStaffWithLyrics <<
         \global \basDessus \includeNotes "sagesse-bas-dessus"
        >> \includeLyrics "sagesse-paroles1"
        \newStaffWithLyrics <<
         \global \voixHauteContre \includeNotes "sagesse-haute-contre"
        >> \includeLyrics "sagesse-paroles3"
      >>
      \newStaff << 
        \global \quinte \includeNotes "sagesse-basse-continue"
        \includeFigures "sagesse-chiffres"
      >>
    >>
    \new StaffGroupNoBar <<
      \new InnerStaffGroup <<
        \newStaff << \global \dessus \includeNotes "violons-dessus" >>
        \newStaff << \global \hauteContre \includeNotes "violons-haute-contre" >>
        \newStaff << \global \taille \includeNotes "violons-taille" >>
        \newStaff << \global \quinte \includeNotes "violons-quinte" >>
        \newStaff << \global \basse \includeNotes "violons-basse" >>
      >>
      \new ChoirStaff <<
        \newStaffWithLyrics <<
          \characterMark "Suite de la Gloire"
          \global \voixDessus \includeNotes "gloire-dessus"
        >> \includeLyrics "gloire-paroles"
        \newStaffWithLyrics <<
          \global \voixHauteContre \includeNotes "gloire-haute-contre"
        >> \includeLyrics "gloire-paroles"
        \newStaffWithLyrics <<
          \global \voixTaille \includeNotes "gloire-taille"
        >> \includeLyrics "gloire-paroles"
        \newStaffWithLyrics <<
          \global \basse \includeNotes "gloire-basse"
        >> \includeLyrics "gloire-paroles"
      >>
      \newStaff << 
        \global \basse \includeNotes "gloire-basse-continue"
        \includeFigures "gloire-chiffres"
      >>
    >>
  >>
  \layout { indent = \noindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 240 4) } }
}
