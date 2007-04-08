
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \scoreInit
      \global
      \petiteHauteContre \includeNotes #"petite-haute-contre"
    >> \includeLyrics #"paroles"
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header { 
    partie = "PREMIÈRE PARTIE"
    partieTexte = \markup \justify { 
      Une revendeuse accompagnée de deux crocheteurs,
      l'un son mari et l'autre son père, avec des crochets et des malles pleines
      d'habits, fait le récit.
    }
    titre = "Récit d'une revendeuse" 
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
