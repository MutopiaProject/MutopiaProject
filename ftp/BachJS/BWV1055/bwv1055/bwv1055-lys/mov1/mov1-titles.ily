%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  *                                                                     *
  *                                                                     *
  * Allegro - Movement n°1                                              *
  * Titles definition                                                   *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}
\include "common/version.ily"
\header {
  title = \markup {\fontsize #3 \concat { \thisWork \hspace #1 \thisTonality } }
  subtitle = \markup {
    \left-align
    \column
    \center-align {\fontsize #4 \lower #3 \concat { \char ##x2014 "  I  " \char ##x2014 } }
 }
  composer = \markup \center-column {\fontsize #4 \thisComposer}
  opus = \markup \center-column {\fontsize #3 \lower #0 \thisOpus}
  piece = \markup { \fontsize #5 \raise #1 { \hspace #20 \tempoMovI } }
}
