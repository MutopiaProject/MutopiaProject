%{
  ***********************************************************************
  * BachJS - Violin Concerto No.1 in A minor                            *
  * typeset by Federico Bruni and Javier Ruiz-Alma                      *
  *                                                                     *
  *                                                                     *
  * Titles definition                                                   *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"

\header {
  title = \markup { \abs-fontsize #16 \concat { \thisWork \hspace #1.5 \thisTonality } }
  subtitle = \markup { \center-column { \abs-fontsize #14 \lower #1
                       \concat { \char ##x2014 \hspace #2
                                 \thisIdentifier         %-------------------- to be defined ahead of file insertion
                                 \hspace #2 \char ##x2014
             } } }
  composer = \markup \center-column {\abs-fontsize #12 \thisComposer}
  opus = \markup \center-column {\abs-fontsize #12 \lower #0 \thisOpus}
  piece = \markup { \abs-fontsize #14 \raise #1 { \hspace #13
                                             \thisTempo  %-------------------- to be defined ahead of file insertion
          } } }

