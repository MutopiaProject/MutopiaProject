%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Dimension et paramètres papiers, a inclure dans le fichier          *
  * de la partition de poche                                            *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Impression en A5 mode livret - l'imprimante ajoute automatiquement des marges
\paper {
  two-sided = ##t      % active les variables pour impression recto-verso
  inner-margin = 6\mm  % marge intérieure
  outer-margin = 6\mm  % marge extérieure
  top-margin = 4\mm    % marge supérieure
  bottom-margin = 4\mm % marge inférieure

  oddHeaderMarkup = \markup {
    \abs-fontsize #5 {
      \bold \huge \fill-line {
        %% force the header to take some space, otherwise the
        %% page layout becomes a complete mess.
        " "
        \on-the-fly #not-first-page \fromproperty #'header:instrument
        \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
 }}}

  evenHeaderMarkup = \markup {
    \abs-fontsize #5 {
      \bold \huge \fill-line {
        \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
        \on-the-fly #not-first-page \fromproperty #'header:instrument
        " "
 }}}

  first-page-number = -1     % Tient compte des 2 faces de la couverture
  print-page-number = ##f    % évite la numérotation des premières pages

  %% Toutes les marges sont prises par défaut

  %% Dimensions horizontales par défaut
  indent = 20\mm         % retrait à gauche du premier système (par défaut largeur de la page/14)
  short-indent = 7\mm    % retrait à gauche de tous les systèmes - modifier en fonction de l'imprimante
  % pour l'impression correcte des noms d'instrument
  horizontal-shift = 0.0  % retrait à droite de tous les systèmes

  %% Dimensions verticales

  % détermine l’espacement entre deux systèmes d’un même mouvement.
  system-system-spacing = #'((basic-distance . 2) (minimum-distance . 2) (padding . 1) (stretchability . 15))%40
    % 60 par défaut

  % détermine l’espacement entre le dernier système d’une partition et le premier système de la partition suivante,
  % en l’absence de titrage ou markup qui les sépare.
  score-system-spacing = #'((basic-distance . 2) (minimum-distance . 2) (padding . 1) (stretchability . 25))%80
    % 120 par défaut

  % détermine l’espacement entre un titre ou un markup de premier niveau, et le système qui le suit.
  markup-system-spacing = #'((basic-distance . 0.5) (padding . 0.5) (stretchability . 15))  % 15 30 par défaut

  % détermine l’espacement entre le dernier système et le titre ou markup de haut niveau qui le suit.
  score-markup-spacing = #'((basic-distance . 0.5) (padding . 0.5) (stretchability . 25))   % 40 60 par défaut

  % détermine l’espacement entre deux titres ou markups de premier niveau.
  markup-markup-spacing = #'((basic-distance . 0.5) (padding . 0.5))

  % détermine l’espace entre le haut de la surface imprimable et le milieu du premier système en l’absence de titre
  %  ou markup de premier niveau en haut de page.
  top-system-spacing = #'((basic-distance . 0.5) (minimum-distance . 0) (padding . 0.5))

  % détermine l’espace entre le haut de la surface imprimable et le premier titre ou markup de premier niveau
  % en l’absence de système en haut de page.
  top-markup-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 1))

  % détermine la distance entre le dernier système ou le dernier markup de haut niveau, et le bas de la surface imprimable.
  last-bottom-spacing = #'((basic-distance . 0.5) (minimum-distance . 0) (padding . 0.5) (stretchability . 8))
    % 30 par défaut


  % Justification
  ragged-bottom = ##f       % empêche la justification verticale des pages sauf la dernière si mis à ##t (défaut ##f)
  ragged-last = ##f         % empêche la justification du dernier système si mis à ##t (défaut ##f)
  ragged-last-bottom = ##f  % force la justification verticale de la dernière page si mis à ##f (défaut ##t)
  ragged-right = ##f        % empêche la justification à droite de la ligne si mis à ##t (défaut ##f)
  system-separator-markup = \slashSeparator
  % markup inséré entre les systèmes, supprimer pour les parties
}

