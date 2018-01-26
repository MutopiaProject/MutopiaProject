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
%-----------------------------------------------------------------------
\include "globals.ily"
\include "markup.ily"
\include "01_DvorakAmericanQuartet_Mvt1_Voix1.ily"
\include "02_DvorakAmericanQuartet_Mvt2_Voix1.ily"
\include "03_DvorakAmericanQuartet_Mvt3_Voix1.ily"
\include "04_DvorakAmericanQuartet_Mvt4_Voix1.ily"

%#######################################################################
%#       C O N S T R U C T I O N   D E   L A   P A R T I T I O N       #
%#######################################################################
\book{
  \include "../header.ily"
	\score {
		{
			\new Staff << \globalMvtUn \MvtUnVoixUne >>
		}
		\header {
		    %breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #5
					I
				}
			}
		}
		\layout {
		}
		\midi {
		}
	}
	\score {
		{
			\new Staff << \globalMvtDeux \MvtDeuxVoixUne >>
		}
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #5
					II
				}
			}
		}
		\layout {
		}
		\midi {
		}
	}
	\score {
		{
			\new Staff << \globalMvtTrois \MvtTroisVoixUne >>
		}
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #5
					III
				}
			}
		}
		\layout {
		}
		\midi {
		}
	}
	\score {
		{
			\new Staff << \globalMvtQuatre \MvtQuatreVoixUne >>
		}
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #5
					IV
				}
			}
		}
		\layout {
		}
		\midi {
		}
	}
}
