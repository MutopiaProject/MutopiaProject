%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  *                                                                     *
  * Parts : Continuo                                                    *
  *                                                                     *
  * *******************************                                     *
  * *   Main file                 *                                     *
  * *******************************                                     *
  *                                                                     *
  ***********************************************************************
%}

% #(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)
\include "common/version.ily"
\include "common/variables.ily"

\include "common/definitions.ily"
\include "common/parts-dimension.ily"

Part = "Continuo"
PartShort = "Continuo"

\include "common/mutopia-header.ily"

\include "common/parts-header.ily"
\include "common/parts-paper.ily"

%---------------MOVEMENTS 
%------- -------First Mov: Allegro
\include "mov1/mov1-music.ily"
  \bookpart {
    \header { piece = \markup { \fontsize #2 \raise #1 { \hspace #20 \tempoMovI } }  }
    \markup {\fill-line {\fontsize #3 \lower#7 \bold \concat { \char ##x2014 "  I  " \char ##x2014 } } }
    \include "common/parts-continuo-staff.ily"
  }

%---------------Second Mov: Larghetto
\include "mov2/mov2-music.ily"
  \bookpart {
    \header { piece = \markup { \fontsize #2 \raise #1 { \hspace #20 \tempoMovII } }  }
    \markup {\fill-line {\fontsize #3 \lower#7 \bold \concat { \char ##x2014 "  II  " \char ##x2014 } } }
    \include "common/parts-continuo-staff.ily"
  }

%--------------Third Mov: Allegro ma non tanto
\include "mov3/mov3-music.ily"
  \bookpart {
    \header { piece = \markup { \fontsize #2 \raise #1 { \hspace #20 \tempoMovIII } }  }
    \markup {\fill-line {\fontsize #3 \lower#7 \bold \concat { \char ##x2014 "  III  " \char ##x2014 } } }
    \include "common/parts-continuo-staff.ily"
  }
