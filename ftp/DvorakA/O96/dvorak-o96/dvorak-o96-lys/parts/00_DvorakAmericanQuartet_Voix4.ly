%#######################################################################
%#             G E N E R A L I T E S   E T   E N T E T E               #
%#######################################################################
\version "2.18.2"
#(set-global-staff-size 19)

\paper {
	ragged-last-bottom = ##f
	ragged-bottom = ##f
}
%-----------------------------------------------------------------------
\layout {
}
\include "globals.ily"
\include "markup.ily"
\include "01_DvorakAmericanQuartet_Mvt1_Voix4.ily"
\include "02_DvorakAmericanQuartet_Mvt2_Voix4.ily"
\include "03_DvorakAmericanQuartet_Mvt3_Voix4.ily"
\include "04_DvorakAmericanQuartet_Mvt4_Voix4.ily"
%#######################################################################
%#       C O N S T R U C T I O N   D E   L A   P A R T I T I O N       #
%#######################################################################
\book{
  \include "../header.ily"
	\score {
		{
			\new Staff << \globalMvtUn \MvtUnVoixQuatre >>
		}
		\header {
			%breakbefore = ##t
			piece = \pieceUn
		}
		\layout {
		}
		\midi {
		}
	}
	\score {
		{
			\new Staff << \globalMvtDeux \MvtDeuxVoixQuatre >>
		}
		\header {
			breakbefore = ##t
			piece = \pieceDeux
		}
		\layout {
		}
		\midi {
		}
	}
	\score {
		{
			\new Staff << \globalMvtTrois \MvtTroisVoixQuatre >>
		}
		\header {
			breakbefore = ##t
			piece = \pieceTrois
        }
		\layout {
		}
		\midi {
		}
	}
	\score {
		{
			\new Staff << \globalMvtQuatre \MvtQuatreVoixQuatre >>
		}
		\header {
			breakbefore = ##t
			piece = \pieceQuatre
		}
		\layout {
		}
		\midi {
		}
	}
}
