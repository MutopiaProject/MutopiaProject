%{
  *                                                    *
  * Generates midi files                                                *
  *                                                                     *
%}

#(ly:set-option 'relative-includes #t)
\include "../common/version.ily"
\include "../common/variables.ily"
\include "../common/definitions.ily"

\include "../01_allegro/music.ily"
\book {
  \bookOutputName \thisFilenameMovI      %-------- /common/variables.ily
  \include "../01_allegro/midi.ily"
}



\include "../02_andante/music.ily"
\book {
  \bookOutputName \thisFilenameMovII     %-------- /common/variables.ily
  \include "../02_andante/midi.ily"
}

\include "../03_allegretto/music.ily"
\book {
  \bookOutputName \thisFilenameMovIII    %-------- /common/variables.ily
  \include "../03_allegretto/midi.ily"
}

\include "../04_allegro/music.ily"
\book {
  \bookOutputName \thisFilenameMovIV    %-------- /common/variables.ily
  \include "../04_allegro/midi.ily"
}



















