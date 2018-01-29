%#######################################################################
%#             G E N E R A L I T E S   E T   E N T E T E               #
%#######################################################################
\version "2.18.2"
#(set-global-staff-size 15)

\paper {
	ragged-last-bottom = ##f
	ragged-bottom = ##f
}
%-----------------------------------------------------------------------
\layout {
}
%-----------------------------------------------------------------------
\include "markup.ily"
\include "globals.ily"
\include "04_DvorakAmericanQuartet_Mvt4_Voix1.ily"
\include "04_DvorakAmericanQuartet_Mvt4_Voix2.ily"
\include "04_DvorakAmericanQuartet_Mvt4_Voix3.ily"
\include "04_DvorakAmericanQuartet_Mvt4_Voix4.ily"
%#######################################################################
%#       C O N S T R U C T I O N   D E   L A   P A R T I T I O N       #
%#######################################################################
\book{
  \include "../header.ily"
	\score {
		\new StaffGroup <<
			\new Staff << \globalMvtQuatre \MvtQuatreVoixUne >>
			\new Staff << \globalMvtQuatre \MvtQuatreVoixDeux >>
			\new Staff << \globalMvtQuatre \MvtQuatreVoixTrois >>
			\new Staff << \globalMvtQuatre \MvtQuatreVoixQuatre >>
		>>
		\header {
			%breakbefore = ##t
		}
		\layout {
		}
		\midi {
		}
	}
}
