%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  *                                                                     *
  * Conductor's score                                                   *
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
\include "common/conductor-paper.ily"

\include "common/mutopia-header.ily"

\include "common/definitions.ily"
\include "common/conductor-dimension.ily"


\include "common/conductor-cover.ily"
%---------------- Cover
  \bookpart {
    \CoverA
  }
%---------------- Table of Contents
  \bookpart {
    \header { copyright = ##f }
    \paper {
      print-page-number = ##f
      two-sided = ##f
    }
    \PageToc
  }

%---------------MOVEMENTS 
%---------------First Mov: Allegro
  \include "mov1/mov1-music.ily"
  \bookpart {
    \include "mov1/mov1-titles.ily"
    \paper { print-page-number = ##t }
    \label #'MvmtI
    \include "common/conductor-staves.ily"
  }
%---------------Second Mov: Larghetto
  \include "mov2/mov2-music.ily"
  \bookpart {
    \include "mov2/mov2-titles.ily"
    \paper { print-page-number = ##t }
    \label #'MvmtII
    \include "common/conductor-staves.ily"
  }
%--------------Third Mov: Allegro ma non tanto
  \include "mov3/mov3-music.ily"
  \bookpart {
    \include "mov3/mov3-titles.ily"
    \paper { print-page-number = ##t }
    \label #'MvmtIII
    \include "common/conductor-staves.ily"
  }
