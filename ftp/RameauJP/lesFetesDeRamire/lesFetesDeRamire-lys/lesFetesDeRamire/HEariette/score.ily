\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff = "dessus" << 
        \global
        \instrumentName \markup \instruments { "Flûtes et" violons }
        \notemode {
          \includeNotes "dessus-debut"
          \break
          <<
            \new Staff \with { \remove "Time_signature_engraver" 
                               alignAboveContext = "dessus" }
            << 
              \key sol \minor \solUn
              s1^"Flutes"
              \includeNotes "flutes-fin"
            >>
            <<
              s1^\markup { \concat { P \super rs } violons }
              \includeNotes "violon1-fin"
            >>
            \new Staff \with { \remove "Time_signature_engraver" 
                               alignBelowContext = "dessus" }
            <<
              \key sol \minor
              s1^\markup { \concat { 2 \super es } violons }
              \includeNotes "violon2-fin"
            >>
          >>
        }
      >>
      \newStaff <<
        \global \includeNotes "haute-contre"
        \instrumentName \markup "Haute-contre"
      >>
      \newStaff <<
        \global \includeNotes "taille"
        \instrumentName \markup Taille
      >>
    >>
    \newStaffWithLyrics <<
      \characterName \markup \instruments \smallCaps { "La meme" Grace }
      \global \includeNotes "grace"
    >> \includeLyrics "paroles"
    \newStaff <<
      \instrumentName \markup \instruments { Basse Continue }
      \global \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 160 4) } }
}
