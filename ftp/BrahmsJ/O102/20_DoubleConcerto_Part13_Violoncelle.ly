%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    work                : Double Concerto for Violin and Violoncello 
%                          in A minor
%    Source              : Leipzig: Breitkopf & Härtel, 1926-27. Plate J.B. 14.
%    Type of score       : Score for Cello
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
\include "./00-Common/DoubleConcerto_Format_Part13_Violoncelle.ily"
\include "./01-Mvt1/m01_v21_music_Violoncell.ily"
\include "./02-Mvt2/m02_v21_music_Violoncell.ily"
\include "./03-Mvt3/m03_v21_music_Violoncell.ily"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for Violoncelle"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Violoncello"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatVioloncellMvtI
			}
			\new Voice {
				\keepWithTag #'(violoncell) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceVioloncellMvtI
			}
			\new Voice {
				\timeMvtI \nameVioloncellMvtI \musicVioloncellMvtI
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
				\formatVioloncellMvtII
			}
			\new Voice {
				\keepWithTag #'(violoncell) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceVioloncellMvtII
			}
			\new Voice {
				\timeMvtII \nameVioloncellMvtII \musicVioloncellMvtII
			}
		>>
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
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
				\formatVioloncellMvtIII
			}
			\new Voice {
				\keepWithTag #'(violoncell) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceVioloncellMvtIII
			}
			\new Voice {
				\timeMvtIII \nameVioloncellMvtIII \musicVioloncellMvtIII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\vspace #2 \fill-line {
					\fontsize #4
					III
				}
			}
		}
		\layout {
		}
	}
}
