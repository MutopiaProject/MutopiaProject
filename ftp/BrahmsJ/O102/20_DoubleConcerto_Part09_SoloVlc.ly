%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    work                : Double Concerto for Violin and Violoncello 
%                          in A minor
%    Source              : Leipzig: Breitkopf & Härtel, 1926-27. Plate J.B. 14.
%    Type of score       : Score for Solo Cello
%    Typesetter          : Sébastien MANEN
%    Date of initiation  : Thursday 20 April 2023, 19:50
%
%###############################################################################
%#                          I N C L U D E   F I L E S                          #
%###############################################################################
\version "2.24.1"
\include "./00-Common/DoubleConcerto_Header.ily"
\include "./00-Common/DoubleConcerto_Shortcuts.ily"
\include "./00-Common/DoubleConcerto_PaperParts.ily"
\include "./00-Common/DoubleConcerto_LayoutParts.ily"
\include "./00-Common/DoubleConcerto_timeMvt.ily"
\include "./00-Common/DoubleConcerto_NameVoice.ily"
\include "./00-Common/DoubleConcerto_CueVoice.ily"
\include "./00-Common/DoubleConcerto_Tempi.ily"
\include "./00-Common/DoubleConcerto_Format_Part09_SoloVlc.ily"
\include "./01-Mvt1/m01_v17_music_SoloCello.ily"
\include "./02-Mvt2/m02_v17_music_SoloCello.ily"
\include "./03-Mvt3/m03_v17_music_SoloCello.ily"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
#(set-global-staff-size 18)
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for Solo Cello"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Solo Cello"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatSoloCelloMvtI
			}
			\new Voice {
				\keepWithTag #'(soloCello) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceSoloCelloMvtI
			}
			\new Voice {
				\timeMvtI \nameSoloCelloMvtI \musicSoloCelloMvtI
			}
		>>
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #4
					I
				}
			}
		}
		\layout {
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatSoloCelloMvtII
			}
			\new Voice {
				\keepWithTag #'(soloCello) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceSoloCelloMvtII
			}
			\new Voice {
				\timeMvtII \nameSoloCelloMvtII \musicSoloCelloMvtII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\vspace #2.8 \fill-line {
					\fontsize #4
					II
				}
			}
		}
		\layout {
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatSoloCelloMvtIII
			}
			\new Voice {
				\keepWithTag #'(soloCello) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceSoloCelloMvtIII
			}
			\new Voice {
				\timeMvtIII \nameSoloCelloMvtIII \musicSoloCelloMvtIII
			}
		>>
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #4
					III
				}
			}
		}
		\layout {
		}
	}
}
