%#######################################################################
%#             G E N E R A L I T E S   E T   E N T E T E               #
%#######################################################################
\version "2.18.2"
#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 15)

\include "header.ily"

\paper {
	ragged-last-bottom = ##f
	ragged-bottom = ##f
}
%-----------------------------------------------------------------------
\layout {
}
%-----------------------------------------------------------------------
\include "parts/markup.ily"
\include "parts/globals.ily"
\include "parts/01_DvorakAmericanQuartet_Mvt1_Voix1.ily"
\include "parts/01_DvorakAmericanQuartet_Mvt1_Voix2.ily"
\include "parts/01_DvorakAmericanQuartet_Mvt1_Voix3.ily"
\include "parts/01_DvorakAmericanQuartet_Mvt1_Voix4.ily"

\include "parts/02_DvorakAmericanQuartet_Mvt2_Voix1.ily"
\include "parts/02_DvorakAmericanQuartet_Mvt2_Voix2.ily"
\include "parts/02_DvorakAmericanQuartet_Mvt2_Voix3.ily"
\include "parts/02_DvorakAmericanQuartet_Mvt2_Voix4.ily"

\include "parts/03_DvorakAmericanQuartet_Mvt3_Voix1.ily"
\include "parts/03_DvorakAmericanQuartet_Mvt3_Voix2.ily"
\include "parts/03_DvorakAmericanQuartet_Mvt3_Voix3.ily"
\include "parts/03_DvorakAmericanQuartet_Mvt3_Voix4.ily"

\include "parts/04_DvorakAmericanQuartet_Mvt4_Voix1.ily"
\include "parts/04_DvorakAmericanQuartet_Mvt4_Voix2.ily"
\include "parts/04_DvorakAmericanQuartet_Mvt4_Voix3.ily"
\include "parts/04_DvorakAmericanQuartet_Mvt4_Voix4.ily"

%#######################################################################
%#       C O N S T R U C T I O N   D E   L A   P A R T I T I O N       #
%#######################################################################
\book{
  \score {
    \new StaffGroup <<
      \new Staff << \globalMvtUn \MvtUnVoixUne >>
      \new Staff << \globalMvtUn \MvtUnVoixDeux >>
      \new Staff << \globalMvtUn \MvtUnVoixTrois >>
      \new Staff << \globalMvtUn \MvtUnVoixQuatre >>
    >>
    \header {
      piece = \pieceUn
      %breakbefore = ##t
    }
    \layout {
    }
    \midi {
    }
  }
  \score {
    \new StaffGroup <<
      \new Staff << \globalMvtDeux \MvtDeuxVoixUne >>
      \new Staff << \globalMvtDeux \MvtDeuxVoixDeux >>
      \new Staff << \globalMvtDeux \MvtDeuxVoixTrois >>
      \new Staff << \globalMvtDeux \MvtDeuxVoixQuatre >>
    >>
    \header {
      piece = \pieceDeux
      breakbefore = ##t
    }
    \layout {
    }
    \midi {
    }
  }
  \score {
    \new StaffGroup <<
      \new Staff << \globalMvtTrois \MvtTroisVoixUne >>
      \new Staff << \globalMvtTrois \MvtTroisVoixDeux >>
      \new Staff << \globalMvtTrois \MvtTroisVoixTrois >>
      \new Staff << \globalMvtTrois \MvtTroisVoixQuatre >>
    >>
    \header {
      piece = \pieceTrois
      breakbefore = ##t
    }
    \layout {
    }
    \midi {
    }
  }
  \score {
    \new StaffGroup <<
      \new Staff << \globalMvtQuatre \MvtQuatreVoixUne >>
      \new Staff << \globalMvtQuatre \MvtQuatreVoixDeux >>
      \new Staff << \globalMvtQuatre \MvtQuatreVoixTrois >>
      \new Staff << \globalMvtQuatre \MvtQuatreVoixQuatre >>
    >>
    \header {
      piece = \pieceQuatre
      breakbefore = ##t
    }
    \layout {
    }
    \midi {
    }
  }
}
