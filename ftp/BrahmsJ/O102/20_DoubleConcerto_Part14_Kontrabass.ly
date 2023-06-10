%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    work                : Double Concerto for Violin and Violoncello 
%                          in A minor
%    Source              : Leipzig: Breitkopf & Härtel, 1926-27. Plate J.B. 14.
%    Type of score       : Score for Kontrabass
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
\include "./00-Common/DoubleConcerto_Format_Part14_Kontrabass.ily"
\include "./01-Mvt1/m01_v22_music_Kontrabass.ily"
\include "./02-Mvt2/m02_v22_music_Kontrabass.ily"
\include "./03-Mvt3/m03_v22_music_Kontrabass.ily"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for Kontrabaß"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Kontrabass"
		}
	}
	\pageBreak
	\markup {
		\vspace #24 
		\abs-fontsize #20
		\fill-line {
			\center-column {
				\line { "This page is left blank" }
				\line { "to optimize the turns" }
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatKontrabassMvtI
			}
			\new Voice {
				\keepWithTag #'(kontrabass) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceKontrabassMvtI
			}
			\new Voice {
				\timeMvtI \nameKontrabassMvtI \musicKontrabassMvtI
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
				\formatKontrabassMvtII
			}
			\new Voice {
				\keepWithTag #'(kontrabass) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceKontrabassMvtII
			}
			\new Voice {
				\timeMvtII \nameKontrabassMvtII \musicKontrabassMvtII
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
				\formatKontrabassMvtIII
			}
			\new Voice {
				\keepWithTag #'(kontrabass) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceKontrabassMvtIII
			}
			\new Voice {
				\timeMvtIII \nameKontrabassMvtIII \musicKontrabassMvtIII
			}
		>>
		\header {
			breakbefore = ##f
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
