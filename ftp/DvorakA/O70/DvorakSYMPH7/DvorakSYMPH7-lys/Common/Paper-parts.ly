%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Dimension et paramètres papiers, a inclure dans les fichiers        *
  * des parties séparées                                                *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%}

\include "Common/Version.ly"

\paper {
  % #(set-default-paper-size "a4")

  %% Marges
  bottom-margin = 6\mm  % marge inférieure
  two-sided = ##t       % active les variables pour impression recto-verso
  inner-margin = 9\mm   % marge intérieure
  outer-margin = 12\mm  % marge extérieure

  #(define page-breaking ly:page-turn-breaking) % autorise le saut de page sur les silences
  print-page-number = ##f                       % évite la numérotation des premières pages

  %% Dimensions horizontales par défaut
  indent = 28\mm              % retrait à gauche du premier système (par défaut largeur de la page/14)
  short-indent = 0\mm         % retrait à gauche de tous les systèmes
  horizontal-shift = 0.0      % retrait à droite de tous les systèmes

  %% Dimensions verticales
  system-system-spacing = #'((basic-distance . 12) (minimum-distance . 12) (padding . 2) (stretchability . 60))

  % dimensions entre systèmes
  last-bottom-spacing = #'((basic-distance . 0) (minimum-distance . 10) (padding . 0) (stretchability . 0))
  ragged-bottom = ##f         % empêche la justification verticale des pages sauf la dernière si mis à ##t (défaut ##f)
  ragged-last = ##f           % empêche la justification du dernier système si mis à ##t (défaut ##f)
  ragged-last-bottom = ##f    % force la justification verticale de la dernière page si mis à ##f (défaut ##t)
  ragged-right = ##f          % empêche la justification à droite de la ligne si mis à ##t (défaut ##f)

  % headers
  reference = \markup {
    \fill-line {
      \concat {
        \abs-fontsize #8 {
          \thisCatalogIdentification \PartShort \thisRevision
        }
      }
    }
  }

  firstCopyRight = \markup {
    \line {
      \override #'(line-width . 20)
      \center-column {
         \vspace #0 \thisBigTitle \reference \fromproperty #'header:copyright
      }
    }
  }

  thisPart = \markup {
    \left-align
    \column
    \center-align {\fontsize #3 \bold \Part}
  }

#(define (not-last-page layout props arg)
    (if (not (book-last-page? layout props))
         (interpret-markup layout props arg)
        empty-stencil))

  print-page-number = ##t

  evenHeaderMarkup = \markup {
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

  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        {
          " "
        }
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

  evenFooterMarkup = \markup {
    \column {
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #first-page \firstCopyRight
      }
      %% Ajout footer sur toutes les pages SAUF la toute première
      %% et la toute dernière page
      \center-column {
        \on-the-fly #not-first-page \on-the-fly #not-last-page
        { \thisBigTitle }
         \on-the-fly #not-first-page \on-the-fly #not-last-page
        { \reference }
      }
      %% Fin footer ajouté
      \fill-line {
        %% Tagline header field only on last page.
        \on-the-fly #last-page \fromproperty #'header:tagline
      }
    }
  }

  oddFooterMarkup = \markup {
    \column {
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #first-page \firstCopyRight
      }
      %% Ajout footer sur toutes les pages SAUF la toute première
      %% et la toute dernière page
      \center-column {
        \on-the-fly #not-first-page \on-the-fly #not-last-page
        { \thisBigTitle }
         \on-the-fly #not-first-page \on-the-fly #not-last-page
        { \reference }
      }
      %% Fin footer ajouté
      \fill-line {
        %% Tagline header field only on last page.
        \on-the-fly #last-page \fromproperty #'header:tagline
      }
    }
  }
}
