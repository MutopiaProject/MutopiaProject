%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : parties séparées : Flûte 2                          *
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

Part = "Flauto II"
PartShort = "Fl2"

\include "Common/Paper-parts.ly"
\include "Common/Header_parts.ly"	% titres

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M1/DvorakSYMPH7M1_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Flauto_I_II.ly"

% Citations
\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Oboe_I_II.ly"
\addQuote scoreSgMaOboeI { \keepWithTag #'quoteFlautoII \quoteScoreSgMaOboeI }

staffSgMaFlautoII = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMaFlautoII}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M2/DvorakSYMPH7M2_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Flauto_I_II.ly"

% Citations
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Corno_I_II.ly"
\addQuote scoreSgMbFlautoI { \keepWithTag #'quoteFlautoII \quoteScoreSgMbFlautoI }
\addQuote scoreSgMbCornoI { \keepWithTag #'quoteFlautoII \quoteScoreSgMbCornoI }
\addQuote scoreSgMbCornoII { \keepWithTag #'quoteFlautoII \quoteScoreSgMbCornoII }

staffSgMbFlautoII = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMbFlautoII}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M3/DvorakSYMPH7M3_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Flauto_I_II.ly"

% Citations
% Flûte déja inclus
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Oboe_I_II.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Tromba_I_II.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-VioloncelloI.ly"
\addQuote scoreSgMcFlautoI { \keepWithTag #'quoteFlautoII \quoteScoreSgMcFlautoI }
\addQuote scoreSgMcOboeI { \keepWithTag #'quoteFlautoII \quoteScoreSgMcOboeI }
\addQuote scoreSgMcTrombaI { \keepWithTag #'quoteFlautoII \quoteScoreSgMcTrombaI }
\addQuote scoreSgMcVioloncello { \keepWithTag #'quoteFlautoII \quoteScoreSgMcVioloncello }


staffSgMcFlautoII = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMcFlautoII}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "DvorakSYMPH7M4/DvorakSYMPH7M4_Tempi_parts.ly"	% tempi
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Flauto_I_II.ly"

% Citations
% Flûte inclus
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Oboe_I_II.ly"
\addQuote scoreSgMdFlautoI { \keepWithTag #'quoteFlautoII \quoteScoreSgMdFlautoI }
\addQuote scoreSgMdOboeI { \keepWithTag #'quoteFlautoII \quoteScoreSgMdOboeI }


staffSgMdFlautoII = \new Staff \with {\consists "Page_turn_engraver"}{\voiceSgMdFlautoII}

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
    \staffSgMaFlautoII
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
    \staffSgMbFlautoII
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
    \staffSgMcFlautoII
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
    \staffSgMdFlautoII
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
