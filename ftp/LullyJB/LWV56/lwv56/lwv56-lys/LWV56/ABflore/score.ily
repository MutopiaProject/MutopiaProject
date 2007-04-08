\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \characterName \markup Flore
      \scoreInit \global 
      \basDessus \includeNotes "flore" 
    >> \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \header {
    acte = "Prologue"
    sceneDescription = \markup \justify {
      La scène représente sur le devant un lieu champêtre,
      et dans l'enfoncement un rocher percé à jour, à travers
      duquel on voit la mer en éloignement. 
      Flore paraît au milieu du théâtre, accompagnée de
      Vertumne, dieu des arbres et des fruits, et de Palaemon,
      dieu des eaux. Chacun de ces dieux conduit une troupe de
      divinités; l'un mène à sa suite des Dryades et des
      Sylvains; et l'autre des Dieux des fleuves et des 
      Naïades. 
      Flore chante ce récit pour inviter Vénus à descendre
      en terre.
    }
    breakbefore = #(break-before?)
  }
  \layout { indent = \largeindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
