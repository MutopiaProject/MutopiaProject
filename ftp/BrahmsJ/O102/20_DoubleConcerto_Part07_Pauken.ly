%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    work                : Double Concerto for Violin and Violoncello 
%                          in A minor
%    Source              : Leipzig: Breitkopf & Härtel, 1926-27. Plate J.B. 14.
%    Type of score       : Score for Trumpets
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
\include "./00-Common/DoubleConcerto_Format_Part07_Pauken.ily"
\include "./01-Mvt1/m01_v15_music_Pauken.ily"
\include "./03-Mvt3/m03_v15_music_Pauken.ily"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for Pauken"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Pauken"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatPaukenMvtI
			}
			\new Voice {
				\keepWithTag #'(pauken) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoicePaukenMvtI
			}
			\new Voice {
				\timeMvtI \namePaukenMvtI \musicPaukenMvtI
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
				\formatPaukenMvtIII
			}
			\new Voice {
				\keepWithTag #'(pauken) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoicePaukenMvtIII
			}
			\new Voice {
				\timeMvtIII \namePaukenMvtIII \musicPaukenMvtIII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\vspace #2.32 \fill-line {
					\fontsize #4
					III
				}
			}
		}
		\layout {
		}
	}
}
