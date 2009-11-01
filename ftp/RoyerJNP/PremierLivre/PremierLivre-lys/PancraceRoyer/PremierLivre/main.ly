\include "PancraceRoyer/PremierLivre/common.ily"

\bookpart {
  \header {
    title = \markup \center-column { "Premier Livre" "de pièces pour clavecin" }
    notes = \markup \column {
      \line { Document original :}
      \hspace #1
      \wordwrap {
        Joseph-Nicolas-Pancrace Royer (ca. 1705–1755),
        \italic { Pièces pour clavecin, premier livre, }
        Gravé par Labassé, Paris, 1746.
      }
    }
  }
  \paper { #(define page-breaking ly:minimal-breaking) }
  %% Title page
  \markup \null
  \pageBreak

  %% notes
  \markup \null
  \pageBreak

  %% Table of contents
  \markup \vspace #6
  \markuplines \table-of-contents
  \markup \vspace #10
}

\bookpart {
  \paper { page-count = 2 }
  \piece "La Majestueuse"
  \includeScore "LaMajestueuse"
}
\bookpart {
  \paper { page-count = 2 }
  \piece "La Zaïde"
  \includeScore "LaZaide"
}
\bookpart {
  \paper { page-count = 1 }
  \piece "Les Matelots"
  \includeScore "LesMatelots"
}
\bookpart {
  \paper { page-count = 1 }
  \includeScore "Tambourin"
  \markup \null %% TODO: remove this hack
}
\bookpart {
  \paper { page-count = 2 }
  \piece "L'Incertaine"
  \includeScore "LIncertaine"
}
\bookpart {
  \paper { page-count = 2 }
  \piece "L'Aimable"
  \includeScore "LAimable"
}
\bookpart {
  \paper { page-count = 1 }
  \piece "La Bagatelle"
  \includeScore "LaBagatelle"
}
\bookpart {
  \paper { page-count = 1 }
  \includeScore "SuiteDeLaBagatelle"
}
\bookpart {
  \paper { page-count = 1 }
  \piece "La Remouleuse"
  \includeScore "LaRemouleuse"
  \markup \null %% TODO: remove this hack
}
\bookpart {
  \paper { page-count = 1 }
  \piece "Les tendres Sentiments"
  \includeScore "LesTendresSentiments"
  \markup \vspace #1 %% TODO: remove this hack
}
\bookpart {
  \markup\null
}
\bookpart {
  \piece "Le Vertigo"
  \includeScore "LeVertigo"
  \markup \vspace #2 %% TODO: remove this hack
}
\bookpart {
  \paper { page-count = 2 }
  \piece "Allemande"
  \includeScore "Allemande"
}
\bookpart {
  \paper { page-count = 2 }
  \piece "La Sensible"
  \includeScore "LaSensible"
}
\bookpart {
  \paper { page-count = 1 }
  \piece "La Marche des Scythes"
  \includeScore "LaMarcheDesScythes"
}
\bookpart {
  \markup\null
  %% tagline
}