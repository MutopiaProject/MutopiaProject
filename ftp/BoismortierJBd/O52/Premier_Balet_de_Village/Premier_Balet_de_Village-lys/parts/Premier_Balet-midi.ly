%{
  *                          
  * Generates midi parts, all movements
  *                                                                     
%}

#(ly:set-option 'relative-includes #t)

\version "2.18.2"
\include "../common/mutopia-header.ily"
\include "../common/variables.ily"
\include "../common/definitions.ily"


\include "../01/music.ily"
\book {
\bookOutputName \thisFilenameMovI
\include "../01/midi.ily"
}

\include "../02/music.ily"
\book {
\bookOutputName \thisFilenameMovII
\include "../02/midi.ily"
}

\include "../03/music.ily"
\book {
\bookOutputName \thisFilenameMovIII
\include "../03/midi.ily"
}

