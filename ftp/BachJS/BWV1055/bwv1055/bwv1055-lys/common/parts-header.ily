%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  * Parts: titles definition                                            *
  *                                                                     *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"

% Creation of top titles - the variable \Part MUST be defined ahead of the insertion of this file
% Création de l'en-pied - la variable \Part DOIT être définie précédemment

\header {
  title = \markup {\fontsize #1 \lower #4 \thisWork}
  subtitle = \markup {
    \left-align \lower #1
    \column
    \center-align {\fontsize #0 \lower #2 \thisOrchester \fontsize #1 \lower #3 \thisTonality}
  }
  composer = \markup \center-column {\fontsize #1.6 \lower #2 \thisComposer}
  arranger = \markup {\fontsize #0.8 \lower #1.5 \thisOpus}

}
