%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    work                : Double Concerto for Violin and Violoncello 
%                          in A minor (1st movement)
%    Source              : Leipzig: Breitkopf & Härtel, 1926-27. Plate J.B. 14.
%    Type of score       : Score for Flote
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
\include "./00-Common/DoubleConcerto_Format_Part01_Floten.ily"
\include "./01-Mvt1/m01_v01_music_FloteI.ily"
\include "./02-Mvt2/m02_v01_music_FloteI.ily"
\include "./03-Mvt3/m03_v01_music_FloteI.ily"
\include "./01-Mvt1/m01_v02_music_FloteII.ily"
\include "./02-Mvt2/m02_v02_music_FloteII.ily"
\include "./03-Mvt3/m03_v02_music_FloteII.ily"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup {
			\abs-fontsize #12 \sans
			\center-column {
				"Part for Floten"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Flöte"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatFloteIMvtI
			}
			\new Voice {
				\keepWithTag #'(floteI) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceFloteIMvtI
			}
			\new Voice {
				\timeMvtI \nameFloteIMvtI \musicFloteIMvtI
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
				\formatFloteIMvtII
			}
			\new Voice {
				\keepWithTag #'(floteI) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceFloteIMvtII
			}
			\new Voice {
				\timeMvtII \nameFloteIMvtII \musicFloteIMvtII
			}
		>>
		\header {
			breakbefore = ##f
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
				\formatFloteIMvtIII
			}
			\new Voice {
				\keepWithTag #'(floteI) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceFloteIMvtIII
			}
			\new Voice {
				\timeMvtIII \nameFloteIMvtIII \musicFloteIMvtIII
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
	\score {
		\new Staff <<
			\new Voice {
				\formatFloteIIMvtI
			}
			\new Voice {
				\keepWithTag #'(floteII) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceFloteIIMvtI
			}
			\new Voice {
				\timeMvtI \nameFloteIIMvtI \musicFloteIIMvtI
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
				\formatFloteIIMvtII
			}
			\new Voice {
				\keepWithTag #'(floteII) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceFloteIIMvtII
			}
			\new Voice {
				\timeMvtII \nameFloteIIMvtII \musicFloteIIMvtII
			}
		>>
		\header {
			breakbefore = ##f
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
				\formatFloteIIMvtIII
			}
			\new Voice {
				\keepWithTag #'(floteII) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceFloteIIMvtIII
			}
			\new Voice {
				\timeMvtIII \nameFloteIIMvtIII \musicFloteIIMvtIII
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
