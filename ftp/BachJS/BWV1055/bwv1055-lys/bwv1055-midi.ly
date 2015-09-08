%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  *                                                                     *
  * Generates midi files                                                *
  *                                                                     *
  * *******************************                                     *
  * *   Main file                 *                                     *
  * *******************************                                     *
  *                                                                     *
  ***********************************************************************
%}

#(ly:set-option 'relative-includes #t)
\include "common/version.ily"

\include "common/definitions.ily"

\include "mov1/mov1-music.ily"
\book {
  \bookOutputName "bwv1055-mov1-allegro"
  \include "mov1/mov1-midi.ily"
}

\include "mov2/mov2-music.ily"
\book {
  \bookOutputName "bwv1055-mov2-larghetto"
  \include "mov2/mov2-midi.ily"
}

\include "mov3/mov3-music.ily"
\book {
  \bookOutputName "bwv1055-mov3-allegro-manontanto"
  \include "mov3/mov3-midi.ily"
}