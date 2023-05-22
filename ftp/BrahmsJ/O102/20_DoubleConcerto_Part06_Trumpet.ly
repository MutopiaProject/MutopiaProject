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
\include "./00-Common/DoubleConcerto_Format_Part06_Trumpet.ily"
\include "./01-Mvt1/m01_v13_music_TrumpetI.ily"
\include "./02-Mvt2/m02_v13_music_TrumpetI.ily"
\include "./03-Mvt3/m03_v13_music_TrumpetI.ily"
\include "./01-Mvt1/m01_v14_music_TrumpetII.ily"
\include "./02-Mvt2/m02_v14_music_TrumpetII.ily"
\include "./03-Mvt3/m03_v14_music_TrumpetII.ily"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for Trumpet"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Trumpet"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatTrumpetIMvtI
			}
			\new Voice {
				\keepWithTag #'(trumpetI) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceTrumpetIMvtI
			}
			\new Voice {
				\timeMvtI \nameTrumpetIMvtI \musicTrumpetIMvtI
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
				\formatTrumpetIMvtII
			}
			\new Voice {
				\keepWithTag #'(trumpetI) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceTrumpetIMvtII
			}
			\new Voice {
				\timeMvtII \nameTrumpetIMvtII \musicTrumpetIMvtII
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
				\formatTrumpetIMvtIII
			}
			\new Voice {
				\keepWithTag #'(trumpetI) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceTrumpetIMvtIII
			}
			\new Voice {
				\timeMvtIII \nameTrumpetIMvtIII \musicTrumpetIMvtIII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\vspace #1.8 \fill-line {
					\fontsize #4
					III
				}
			}
		}
		\layout {
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatTrumpetIIMvtI
			}
			\new Voice {
				\keepWithTag #'(trumpetII) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceTrumpetIIMvtI
			}
			\new Voice {
				\timeMvtI \nameTrumpetIIMvtI \musicTrumpetIIMvtI
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
				\formatTrumpetIIMvtII
			}
			\new Voice {
				\keepWithTag #'(trumpetII) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceTrumpetIIMvtII
			}
			\new Voice {
				\timeMvtII \nameTrumpetIIMvtII \musicTrumpetIIMvtII
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
				\formatTrumpetIIMvtIII
			}
			\new Voice {
				\keepWithTag #'(trumpetII) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceTrumpetIIMvtIII
			}
			\new Voice {
				\timeMvtIII \nameTrumpetIIMvtIII \musicTrumpetIIMvtIII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\vspace #1.81 \fill-line {
					\fontsize #4
					III
				}
			}
		}
		\layout {
		}
	}
}
