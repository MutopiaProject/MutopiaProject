%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
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
\include "common/variables.ily"
\include "common/definitions.ily"

\include "mov1/music.ily"
\book {
  \bookOutputName \thisFilenameMovI      %-------- /common/variables.ily
  \include "mov1/midi.ily"
}

\include "mov2/music.ily"
\book {
  \bookOutputName \thisFilenameMovII     %-------- /common/variables.ily
  \include "mov2/midi.ily"
}

\include "mov3/music.ily"
\book {
  \bookOutputName \thisFilenameMovIII    %-------- /common/variables.ily
  \include "mov3/midi.ily"
}