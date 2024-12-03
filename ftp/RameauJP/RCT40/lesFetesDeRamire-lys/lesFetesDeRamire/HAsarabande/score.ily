\score {
  \new StaffGroup <<
    \new Staff = "dessus" << 
      \global
      %%{ s4 s2.*13 s2 \break }
      \instrumentName \markup \instruments { "Flûtes et" violons }
      \notemode {
        \includeNotes "dessus-debut"
        \bar "" \break
        <<
          \new Staff \with { \remove "Time_signature_engraver" 
                             alignAboveContext = "dessus" }
          << 
            \key do \minor \solUn
            s2.^"Flutes"
            { \includeNotes "flutes" \custosNote sol''4 s2.*4 }
          >>
          \new Staff \with { \remove "Time_signature_engraver" 
                             alignAboveContext = "dessus" }
          <<
            \key do \minor \solUn
             s2.^\markup { \concat { P \super rs } violons }
             { \includeNotes "violon1" \custosNote sol''4 s2.*4 }
          >>
          <<
            s2.^\markup { \concat { 2 \super es } violons }
            { \includeNotes "violon2"
              << s2.*0^"Tous" \includeNotes "dessus-fin" >> }
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
      \instrumentName \markup "Taille"
    >>
    \newStaff <<
      \global \includeNotes "basse"
      \instrumentName \markup "Basses"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
