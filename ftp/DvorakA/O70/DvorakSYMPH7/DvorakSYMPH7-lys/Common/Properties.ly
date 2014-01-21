%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Fichier commun de propriétés, à insérer en tête des autres fichiers	*
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

\tag #'partScore {
  \override Voice.Hairpin #'minimum-length = #2			
        % auparavant 4
        % Si trop court, ajouter -\tweak #'minimum-lenght = #xx devant le soufflet
}
# (set-accidental-style 'modern )
\set Score.skipBars = ##t					% Rassemble les mesures vides dans les parties séparées
\override Score.PaperColumn #'keep-inside-line = ##t		% garde le texte dans les marges
\override Score.NonMusicalPaperColumn #'keep-inside-line = ##t	% garde le texte non musical dans les marges
\override Score.Hairpin #'after-line-breaking = ##t		% Le soufflet continue après un saut de système
\set Score.markFormatter = #format-mark-box-letters		% Marques d'avancement automatiques
% Le soufflet s'arrête sur la première note et non sur la barre de mesure
\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)	% extension verticale des nuances
\override TextScript #'Y-extent = #'(-1.5 . 1.5)		% extension verticale des textes des nuances
%\override TextScript #'extra-offset = #' (0 . -1)		% abaisse le texte au dessus de la portée
\override Score.BarNumber #'font-size = #1			% Augmente la dimension des numéros de mesure
\override Score.BarNumber #'padding = #1.8			% Augmente la distance des numéros de mesure
\override MultiMeasureRest #'expand-limit = #9			% groupe les silences multimesures de plus de 9 mesures
                                                                % en 1 bloc
\override Voice.MultiMeasureRest #'minimum-length = #12		% Taille minimum pour les silences multi-mesure
\override Score.FootnoteItem #'annotation-line = ##f		% Supprime la liaison entre la note référencée et le *
\dynamicLineSpannerStandard
%	== \override DynamicLineSpanner #'staff-padding = #1	% Alignement (min) des nuances par rapport à la portée
\tupletBracketFalse
%	== \override TupletBracket #'bracket-visibility = ##f	% empêche les crochets au dessus des tuplets
\hairpinToBarLineFalse
%	== \override Hairpin #'to-barline = ##f			% Le soufflet s'arrête sur la première note et non
                                                                % sur la barre de mesure
\dynamicSpannerOff						% Empêche les tirets lors d'un cresc - - - ou dim - - -
%	== {\override DynamicTextSpanner #'style = #'none}
\stretchDynamicText                                             %impose une largeur physique (minimale) aux dynamiques
%       == \once \override DynamicText #'extra-spacing-width = #'(0 . 0)
\override Score.RehearsalMark #'break-align-symbols = #'(clef)
\tag #'partScore {
  \override Score.BarNumber #'self-alignment-X = #-1
}
