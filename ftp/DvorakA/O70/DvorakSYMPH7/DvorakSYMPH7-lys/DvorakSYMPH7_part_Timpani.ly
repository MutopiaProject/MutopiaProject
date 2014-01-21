%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : parties séparées : Timbales                         *
  *                                                                     *
  * ******************************                                      *
  * *   Fichier principal        *                                      *
  * ******************************                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"
\include "Common/Fonctions.ly"
\include "Common/Variables.ly"

\include "Common/Declarations.ly"
\include "Common/Dimension-parts.ly"

Part = "Timpani"
PartShort = "Tp"

\include "Common/Paper-parts.ly"
\include "Common/Header_parts.ly"	% titres

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M1/DvorakSYMPH7M1_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Timpani.ly"

% Citations
\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Flauto_I_II.ly"
\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Violino_I.ly"
\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Trombone_III.ly"
\addQuote scoreSgMaFlautoI { \keepWithTag #'quoteTimpani \quoteScoreSgMaFlautoI }
\addQuote scoreSgMaViolinoI { \keepWithTag #'quoteTimpani \quoteScoreSgMaViolinoI }
\addQuote scoreSgMaTromboneIII { \keepWithTag #'quoteTimpani \quoteScoreSgMaTromboneIII }

staffSgMaTimpani = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMaTimpani}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M2/DvorakSYMPH7M2_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Timpani.ly"

% Citations
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Corno_I_II.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Trombone_III.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Violoncello.ly"
\addQuote scoreSgMbCornoI { \keepWithTag #'quoteTimpani \quoteScoreSgMbCornoI }
\addQuote scoreSgMbCornoII { \keepWithTag #'quoteTimpani \quoteScoreSgMbCornoII }
\addQuote scoreSgMbTromboneIII { \keepWithTag #'quoteTimpani \quoteScoreSgMbTromboneIII }
\addQuote scoreSgMbVioloncello { \keepWithTag #'quoteTimpani \quoteScoreSgMbVioloncello }

staffSgMbTimpani = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMbTimpani}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M3/DvorakSYMPH7M3_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Timpani.ly"

% Citations
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Flauto_I_II.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Corno_I_II.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Tromba_I_II.ly"
\addQuote scoreSgMcFlautoI { \keepWithTag #'quoteTimpani \quoteScoreSgMcFlautoI }
\addQuote scoreSgMcCornoI { \keepWithTag #'quoteTimpani \quoteScoreSgMcCornoI }
\addQuote scoreSgMcTrombaI { \keepWithTag #'quoteTimpani \quoteScoreSgMcTrombaI }

staffSgMcTimpani = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMcTimpani}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M4/DvorakSYMPH7M4_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Timpani.ly"

% Citations
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Violino_I.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Trombone_I_II.ly"
\addQuote scoreSgMdViolinoI { \keepWithTag #'quoteTimpani \quoteScoreSgMdViolinoI }
\addQuote scoreSgMdTromboneI { \keepWithTag #'quoteTimpani \quoteScoreSgMdTromboneI }

staffSgMdTimpani = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMdTimpani}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{
  On peut forcer manuellement l'espacement horizontal en insérant dans les layouts le texte suivant :
  \context {
        \Score
        \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 16)
      }
  La valeur de 16 est correcte pour les mouvements 1 et 4, 32 pour le second mouvement, et 8 pour le 3ième mouvement
%}

% Partition proprement dite

\book {
  \label #'MvmtI
  \markup {\fill-line {\fontsize #3 \lower#7 \bold "I"}}
  \noPageBreak
  \score {
    \keepWithTag #'partScore
    \staffSgMaTimpani
    \layout {
      \context {
        \Score
        \override RehearsalMark #'after-line-breaking =
        #(lambda (grob)
           (let* ((parent (ly:grob-parent grob X))
                  (elts (ly:grob-array->list (ly:grob-object parent 'elements)))
                  (symbols (filter identity (map (lambda (elt)
                    (ly:grob-property elt 'break-align-symbol #f))
                     elts))))
             (and (= (ly:item-break-dir grob) RIGHT)
                  (not (memq 'staff-bar symbols))
                  (ly:grob-translate-axis! grob (interval-length
              (ly:grob-extent parent parent X)) X))
               (ly:side-position-interface::move-to-extremal-staff grob)))
      }
      \context {
        \CueVoice
        \override TupletBracket #'bracket-visibility = ##f
      }
    }
    \midi {
    }
  }

  \label #'MvmtII
  \markup {\fill-line {\fontsize #3 \lower#7 \bold "II"}}
  \noPageBreak
  \score {
    \keepWithTag #'partScore
    \staffSgMbTimpani
    \layout {
      \context {
        \Score
        \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 16)
        \override RehearsalMark #'after-line-breaking =
        #(lambda (grob)
           (let* ((parent (ly:grob-parent grob X))
                  (elts (ly:grob-array->list (ly:grob-object parent 'elements)))
                  (symbols (filter identity (map (lambda (elt)
                    (ly:grob-property elt 'break-align-symbol #f))
                     elts))))
             (and (= (ly:item-break-dir grob) RIGHT)
                  (not (memq 'staff-bar symbols))
                  (ly:grob-translate-axis! grob (interval-length
              (ly:grob-extent parent parent X)) X))
               (ly:side-position-interface::move-to-extremal-staff grob)))
      }
      \context {
        \CueVoice
        \override TupletBracket #'bracket-visibility = ##f
      }
    }
    \midi {
    }
  }

  \label #'MvmtIII
  \markup {\fill-line {\fontsize #3 \lower#7 \bold "III"}}
  \noPageBreak
  \score {
    \keepWithTag #'partScore
    \new GrandStaff \staffSgMcTimpani
    \layout {
      \context {
        \Score
        \override RehearsalMark #'after-line-breaking =
        #(lambda (grob)
           (let* ((parent (ly:grob-parent grob X))
                  (elts (ly:grob-array->list (ly:grob-object parent 'elements)))
                  (symbols (filter identity (map (lambda (elt)
                    (ly:grob-property elt 'break-align-symbol #f))
                     elts))))
             (and (= (ly:item-break-dir grob) RIGHT)
                  (not (memq 'staff-bar symbols))
                  (ly:grob-translate-axis! grob (interval-length
              (ly:grob-extent parent parent X)) X))
               (ly:side-position-interface::move-to-extremal-staff grob)))
      }
      \context {
        \CueVoice
        \override TupletBracket #'bracket-visibility = ##f
      }
    }
    \midi {
    }
  }

  \label #'MvmtIV
  \markup {\fill-line {\fontsize #3 \lower#7 \bold "IV "}}
  \noPageBreak
  \score {
    \keepWithTag #'partScore
    \staffSgMdTimpani
    \layout {
      \context {
        \Score
        \override RehearsalMark #'after-line-breaking =
        #(lambda (grob)
           (let* ((parent (ly:grob-parent grob X))
                  (elts (ly:grob-array->list (ly:grob-object parent 'elements)))
                  (symbols (filter identity (map (lambda (elt)
                    (ly:grob-property elt 'break-align-symbol #f))
                     elts))))
             (and (= (ly:item-break-dir grob) RIGHT)
                  (not (memq 'staff-bar symbols))
                  (ly:grob-translate-axis! grob (interval-length
              (ly:grob-extent parent parent X)) X))
               (ly:side-position-interface::move-to-extremal-staff grob)))
      }
      \context {
        \CueVoice
        \override TupletBracket #'bracket-visibility = ##f
      }
    }
    \midi {
    }
  }
}
