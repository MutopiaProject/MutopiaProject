%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : parties séparées : Hautois 2                        *
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

Part = "Oboe II"
PartShort = "Ob2"

\include "Common/Paper-parts.ly"
\include "Common/Header_parts.ly"	% titres

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M1/DvorakSYMPH7M1_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Oboe_I_II.ly"

% Citations
\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Clarinetto_I_II.ly"
\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Fagotto_I_II.ly"
\addQuote scoreSgMaClarinettoI { \keepWithTag #'quoteOboeII \quoteScoreSgMaClarinettoI }
\addQuote scoreSgMaFagottoI { \keepWithTag #'quoteOboeII \quoteScoreSgMaFagottoI }

staffSgMaOboeII = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMaOboeII}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M2/DvorakSYMPH7M2_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Oboe_I_II.ly"

% Citations

\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Flauto_I_II.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Corno_I_II.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Violoncello.ly"
\addQuote scoreSgMbFlautoI { \keepWithTag #'quoteOboeII \quoteScoreSgMbFlautoI }
\addQuote scoreSgMbCornoI { \keepWithTag #'quoteOboeII \quoteScoreSgMbCornoI }
\addQuote scoreSgMbCornoII { \keepWithTag #'quoteOboeII \quoteScoreSgMbCornoII }
\addQuote scoreSgMbVioloncello { \keepWithTag #'quoteOboeII \quoteScoreSgMbVioloncello }

staffSgMbOboeII = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMbOboeII}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M3/DvorakSYMPH7M3_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Oboe_I_II.ly"

% Citations
% Hautbois déjà inclus
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Clarinetto_I_II.ly"
\addQuote scoreSgMcOboeI { \keepWithTag #'quoteOboeII \quoteScoreSgMcOboeI }
\addQuote scoreSgMcClarinettoI { \keepWithTag #'quoteOboeII \quoteScoreSgMcClarinettoI }

staffSgMcOboeII = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMcOboeII}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M4/DvorakSYMPH7M4_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Oboe_I_II.ly"

% Citations
% Hautbois déjà inclus
\addQuote scoreSgMdOboeI { \keepWithTag #'quoteOboeII \quoteScoreSgMdOboeI }


staffSgMdOboeII = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMdOboeII}

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
    \staffSgMaOboeII
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
    \staffSgMbOboeII
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
    \staffSgMcOboeII
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
  \markup {\fill-line {\fontsize #3 \lower#7 \bold "IV"}}
  \noPageBreak
  \score {
    \keepWithTag #'partScore
    \staffSgMdOboeII
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
