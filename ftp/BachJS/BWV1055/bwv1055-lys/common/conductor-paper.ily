%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  * Paper dimensions and parameters, to be included in the              *
  * file for the Conductor's score                                      *
  *                                                                     *
  * Dimension et paramètres papiers, a inclure dans le fichier          *
  * de la partition directrice                                          *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"

\paper {
  two-sided = ##t          % enable the variable for two-sided printing / Fr: active les variables pour impression recto-verso
  inner-margin = 16\mm     % Fr: marge intérieure
  outer-margin = 9\mm      % Fr: marge extérieure
  top-margin = 12.6\mm     % Fr: marge supérieure
  bottom-margin = 8\mm  % Fr: marge inférieure

  oddHeaderMarkup = \markup {
    \abs-fontsize #10 {
      \bold \huge \fill-line {
        %% force the header to take some space, otherwise the
        %% page layout becomes a complete mess.
        " "
%        \on-the-fly #not-first-page \fromproperty #'header:instrument
        \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
 }}}
 
  evenHeaderMarkup = \markup {
    \abs-fontsize #10 {
      \bold \huge \fill-line {
        \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
%        \on-the-fly #not-first-page \fromproperty #'header:instrument
        " "
 }}}
 
 reference = \markup {
    \fill-line {
      \concat {
        \abs-fontsize #8 {
          \thisBigTitle \hspace #0.4 \char ##x2014 \hspace #0.4 
          \combinedPublicationName \hspace #0.4 \char ##x2014 \hspace #0.4
          \thisRevision
        }
      }
    }
  }
 
   evenFooterMarkup = \markup {  \override #'( baseline-skip . 0.5 )
    \column { 
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #part-first-page \fromproperty #'header:copyright
      }
      %% Added footer for all pages except first
      \fill-line { \on-the-fly #not-part-first-page { \reference } }
    }
  }

  oddFooterMarkup = \markup { \override #'( baseline-skip . 0.5 )
    \column { 
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #part-first-page \fromproperty #'header:copyright
      }
      %% Added footer for all pages except first
      \fill-line { \on-the-fly #not-part-first-page { \reference } }
    }
  }

  first-page-number = -1	% Takes into account 2 cover pages (Fr: Tient compte des 2 faces de la couverture)
  print-page-number = ##f	% avoids numbering of first pages (Fr: évite la numérotation des premières pages)

  %% Default horizontal dimensions (Fr: Dimensions horizontales par défaut)
  indent = 20\mm		% left indent for first system (Fr: retrait à gauche du premier système (par défaut largeur de la page/14))
  short-indent = 11\mm		% left indent for rest of systems - change according to printer (Fr: retrait à gauche de tous les systèmes - modifier en fonction de l'imprimante)
  % for the correct printing of instrument names (Fr: pour l'impression correcte des noms d'instrument)
  horizontal-shift = 0.0	% right indent for all systems (Fr: retrait à droite de tous les systèmes)

  %% Vertical dimensions (Fr: Dimensions verticales)

  % détermine l’espacement entre deux systèmes d’un même mouvement.
  system-system-spacing = #'((basic-distance . 13) (minimum-distance . 8) (padding . 1) (stretchability . 40))
    % 60 par défaut

  % détermine l’espacement entre le dernier système d’une partition et le premier système de la partition suivante,
  % en l’absence de titrage ou markup qui les sépare.
  score-system-spacing = #'((basic-distance . 14) (minimum-distance . 8) (padding . 1) (stretchability . 80))
    % 120 par défaut

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

  % détermine la distance entre le dernier système ou le dernier markup de haut niveau, et le bas de la surface imprimable.
  last-bottom-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1.5) (stretchability . 8))
    % 30 par défaut

  ragged-bottom = ##f		% empêche la justification verticale des pages sauf la dernière si mis à ##t (défaut ##f)
  ragged-last = ##f		% empêche la justification du dernier système si mis à ##t (défaut ##f)
  ragged-last-bottom = ##f	% force la justification verticale de la dernière page si mis à ##f (défaut ##t)
  ragged-right = ##f		% empêche la justification à droite de la ligne si mis à ##t (défaut ##f)
}
