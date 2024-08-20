%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    work                : Double Concerto for Violin and Violoncello 
%                          in A minor
%    Source              : Leipzig: Breitkopf & Härtel, 1926-27. Plate J.B. 14.
%    Type of score       : Score for Solo Violin
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
\include "./00-Common/DoubleConcerto_Format_Part08_SoloVln.ily"
\include "./01-Mvt1/m01_v16_music_SoloViolin.ily"
\include "./02-Mvt2/m02_v16_music_SoloViolin.ily"
\include "./03-Mvt3/m03_v16_music_SoloViolin.ily"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
#(set-global-staff-size 18)
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for Solo Violin"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Solo Violin"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatSoloViolinMvtI
			}
			\new Voice {
				\keepWithTag #'(soloViolin) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceSoloViolinMvtI
			}
			\new Voice {
				\timeMvtI \nameSoloViolinMvtI \musicSoloViolinMvtI
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
				\formatSoloViolinMvtII
			}
			\new Voice {
				\keepWithTag #'(soloViolin) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceSoloViolinMvtII
			}
			\new Voice {
				\timeMvtII \nameSoloViolinMvtII \musicSoloViolinMvtII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\vspace #2.5 \fill-line {
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
				\formatSoloViolinMvtIII
			}
			\new Voice {
				\keepWithTag #'(soloViolin) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceSoloViolinMvtIII
			}
			\new Voice {
				\timeMvtIII \nameSoloViolinMvtIII \musicSoloViolinMvtIII
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
