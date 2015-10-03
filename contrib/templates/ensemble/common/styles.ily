%{
  ***********************************************************************
  *                                                                     *
  * Spacing, paper, and titles parameters.                              *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

% The variables \thisInstrName,\thisPart, \thisIdentifier, and \thisTempo
% MUST be defined ahead of the insertion of this file.

\include "version.ily"

\header {
  title = \markup { \abs-fontsize #20 \concat { \thisWork \hspace #1.5 \thisTonality } }
  subtitle = \markup { \center-column { \abs-fontsize #18 \lower #2
                       \concat { \char ##x2014 \hspace #2
                                 \thisIdentifier         %-------------------- to be defined ahead of file insertion
                                 \hspace #2 \char ##x2014
  } } }
  composer = \markup \center-column {\abs-fontsize #12 \thisComposer}
  opus = \markup \center-column {\abs-fontsize #12 \lower #0 \thisOpus}
  piece = \markup { \abs-fontsize #14 \raise #1 { \hspace #20
                                             \thisTempo  %-------------------- to be defined ahead of file insertion
  } }
}

\paper {
  inner-margin = 12\mm             % marge intérieure
  outer-margin = 9\mm              % marge extérieure
  top-margin = 12.6\mm             % marge supérieure
  bottom-margin = 8\mm             % marge inférieure
  print-page-number = ##t          % évite la numérotation des premières pages
  two-sided = ##t                  % active les variables pour impression recto-verso

  %#(define page-breaking ly:page-turn-breaking) % autorise le saut de page sur les silences
  
  %% Default horizontal spacing (Fr: Dimensions horizontales par défaut)
  indent = 20\mm              % left indent for first system (Fr: retrait à gauche du premier système (par défaut largeur de la page/14)
  short-indent = 0\mm         % left indent for rest of systems - change according to printer (Fr: retrait à gauche de tous les systèmes)
  horizontal-shift = 0.0      % right indent for all systems (Fr: retrait à droite de tous les systèmes)
 
  ragged-bottom = ##f         % empêche la justification verticale des pages sauf la dernière si mis à ##t (défaut ##f)
  ragged-last = ##f           % empêche la justification du dernier système si mis à ##t (défaut ##f)
  ragged-last-bottom = ##f    % force la justification verticale de la dernière page si mis à ##f (défaut ##t)
  ragged-right = ##f          % empêche la justification à droite de la ligne si mis à ##t (défaut ##f)
  
  % détermine l’espacement entre le dernier système d’une partition et le premier système de la partition suivante,
  % en l’absence de titrage ou markup qui les sépare.
  score-system-spacing = #'((basic-distance . 14) (minimum-distance . 8) (padding . 1) (stretchability . 80)) % 120 par défaut

  % détermine l’espacement entre un titre ou un markup de premier niveau, et le système qui le suit.
  markup-system-spacing = #'((basic-distance . 8) (padding . 1.5) (stretchability . 15))	% 30 par défaut

  % détermine l’espacement entre le dernier système et le titre ou markup de haut niveau qui le suit.
  score-markup-spacing = #'((basic-distance . 12) (padding . 0.5) (stretchability . 40))	% 60 par défaut

  % détermine l’espacement entre deux titres ou markups de premier niveau.
  markup-markup-spacing = #'((basic-distance . 1) (padding . 0.5))

  % détermine l’espace entre le haut de la surface imprimable et le milieu du premier système en l’absence de titre
  % ou markup de premier niveau en haut de page.
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1))

  % détermine l’espace entre le haut de la surface imprimable et le premier titre ou markup de premier niveau
  % en l’absence de système en haut de page.
  top-markup-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 1))
  
  %% Vertical spacing (Dimensions verticales)
  system-system-spacing = #'((basic-distance . 12) (minimum-distance . 12) (padding . 2) (stretchability . 60))
  
  %% Spacing between footer and last system on page
  last-bottom-spacing = #'((basic-distance . 11) (minimum-distance . 10) (padding . 1) (stretchability . 0))
  
  %----------------------------------Header Settings
  thisPart = \markup { \center-column { \fontsize #3 \bold
                       \Part                   %---------------- to be defined ahead of file insertion
             } }

  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        { \abs-fontsize #10 \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string }
        { \center-column {
            \lower #1 \fontsize #-1 \thisPart } %---------------- to be defined earlier this file
        }
        { " " }
   } } }

  evenHeaderMarkup = \markup {
    \column {
      \fill-line { 
        { " " }
        { \center-column {
            \lower #1 \fontsize #-1 \thisPart } %---------------- defined earlier this file
        }
        { \abs-fontsize #10 \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string }
   } } }
  
  %----------------------------------Footer Settings
  referenceFooter = \markup {
    \fill-line { \abs-fontsize #10 \concat {
                     \thisBigTitle              %---------------- /common/variables.ily
                     \hspace #0.4 \char ##x2014 \hspace #0.4 
                     \thisInstrName             %---------------- defined ahead of file insertion
  } } }
               
  evenFooterMarkup = \markup {  \override #'( baseline-skip . 0.5 )
    \column { 
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #part-first-page \fromproperty #'header:copyright
      }
      %% Added footer for all pages except first
      \fill-line { \on-the-fly #not-part-first-page {
                                                     \referenceFooter  %--- defined earlier this file
                                                    }
  } } }

  oddFooterMarkup = \markup { \override #'( baseline-skip . 0.5 )
    \column { 
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #part-first-page \fromproperty #'header:copyright
      }
      %% Added footer for all pages except first
      \fill-line { \on-the-fly #not-part-first-page { \referenceFooter }
  } } }
  
}   %--end \paper definition
  
