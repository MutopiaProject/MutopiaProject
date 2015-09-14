%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  * Spacing and paper variables, to be included in parts files          *
  *                                                                     *
  * Dimension et paramètres papiers, a inclure dans les fichiers        *
  * des parties séparées                                                *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}


% The variables \Part and \PartShort MUST be defined ahead of the insertion of this file
% These will be used for definition of HeaderMarkup and FooterMarkup respectively

\include "version.ily"

\paper {

  %% Margins (Marges)
  top-margin = 8 \mm
  bottom-margin = 6\mm  % marge inférieure
  two-sided = ##t       % active les variables pour impression recto-verso
  inner-margin = 9\mm   % marge intérieure
  outer-margin = 16\mm  % marge extérieure

  %#(define page-breaking ly:page-turn-breaking) % autorise le saut de page sur les silences
  print-page-number = ##f                       % évite la numérotation des premières pages



  %% Default horizontal spacing (Dimensions horizontales par défaut)
  indent = 28\mm              % retrait à gauche du premier système (par défaut largeur de la page/14)
  short-indent = 0\mm         % retrait à gauche de tous les systèmes
  horizontal-shift = 0.0      % retrait à droite de tous les systèmes

  %% Vertical spacing (Dimensions verticales)
  system-system-spacing = #'((basic-distance . 12) (minimum-distance . 12) (padding . 2) (stretchability . 60))

  % Spacing between systems (dimensions entre systèmes)
  last-bottom-spacing = #'((basic-distance . 11) (minimum-distance . 10) (padding . 1) (stretchability . 0))
 
  
  ragged-bottom = ##f         % empêche la justification verticale des pages sauf la dernière si mis à ##t (défaut ##f)
  ragged-last = ##f           % empêche la justification du dernier système si mis à ##t (défaut ##f)
  ragged-last-bottom = ##f    % force la justification verticale de la dernière page si mis à ##f (défaut ##t)
  ragged-right = ##f          % empêche la justification à droite de la ligne si mis à ##t (défaut ##f)

  % headers
  reference = \markup {
    \fill-line {
      \concat {
        \abs-fontsize #8 {
          \thisCatalogIdentification \PartShort \hspace #0.5 \thisRevision
        }
      }
    }
  }

  thisPart = \markup {
    \left-align
    \column
    \center-align {\fontsize #3 \bold \Part}
  }


  print-page-number = ##t

  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        {
          \abs-fontsize #10 \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string
        }
        {
          \center-column {
            \lower #2 \fontsize #-1 \thisPart
          }
        }
        {
          " "
        }
      }
    }
  }

  evenHeaderMarkup = \markup {
    \column {
      \fill-line { 
        { " " }
        {
          \center-column {
            \lower #2 \fontsize #-1 \thisPart
          }
        }
        {
          \abs-fontsize #10 \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string
        }
      }
    }
  }

  evenFooterMarkup = \markup { \override #'( baseline-skip . 0.5 )
    \column {
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #part-first-page \fromproperty #'header:copyright % \firstCopyRight
      }
      %% Added footer for all pages except first
      \fill-line { \on-the-fly #not-part-first-page { \thisBigTitle } }
      \fill-line { \on-the-fly #not-part-first-page { \reference } }
    }
  }

  oddFooterMarkup = \markup { \override #'( baseline-skip . 0.5 )
    \column {
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #part-first-page \fromproperty #'header:copyright % \firstCopyRight
      }
      %% Added footer for all pages except first
      \fill-line { \on-the-fly #not-part-first-page { \thisBigTitle } }
      \fill-line { \on-the-fly #not-part-first-page { \reference } }
    }
  }
    
}


