%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    work                : Double Concerto for Violin and Violoncello 
%                          in A minor
%    Source              : Leipzig: Breitkopf & Härtel, 1926-27. Plate J.B. 14.
%    Type of score       : Score for Horn
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
\include "./00-Common/DoubleConcerto_Format_Part05_Horn.ily"
\include "./01-Mvt1/m01_v09_music_HornI.ily"
\include "./02-Mvt2/m02_v09_music_HornI.ily"
\include "./03-Mvt3/m03_v09_music_HornI.ily"
\include "./01-Mvt1/m01_v10_music_HornII.ily"
\include "./02-Mvt2/m02_v10_music_HornII.ily"
\include "./03-Mvt3/m03_v10_music_HornII.ily"
\include "./01-Mvt1/m01_v11_music_HornIII.ily"
\include "./02-Mvt2/m02_v11_music_HornIII.ily"
\include "./03-Mvt3/m03_v11_music_HornIII.ily"
\include "./01-Mvt1/m01_v12_music_HornIV.ily"
\include "./02-Mvt2/m02_v12_music_HornIV.ily"
\include "./03-Mvt3/m03_v12_music_HornIV.ily"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for Horn"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Horn"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatHornIMvtI
			}
			\new Voice {
				\keepWithTag #'(hornI) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceHornIMvtI
			}
			\new Voice {
				\timeMvtI \nameHornIMvtI \musicHornIMvtI
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
				\formatHornIMvtII
			}
			\new Voice {
				\keepWithTag #'(hornI) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceHornIMvtII
			}
			\new Voice {
				\timeMvtII \nameHornIMvtII \musicHornIMvtII
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
				\formatHornIMvtIII
			}
			\new Voice {
				\keepWithTag #'(hornI) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceHornIMvtIII
			}
			\new Voice {
				\timeMvtIII \nameHornIMvtIII \musicHornIMvtIII
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
				\formatHornIIMvtI
			}
			\new Voice {
				\keepWithTag #'(hornII) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceHornIIMvtI
			}
			\new Voice {
				\timeMvtI \nameHornIIMvtI \musicHornIIMvtI
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
				\formatHornIIMvtII
			}
			\new Voice {
				\keepWithTag #'(hornII) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceHornIIMvtII
			}
			\new Voice {
				\timeMvtII \nameHornIIMvtII \musicHornIIMvtII
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
				\formatHornIIMvtIII
			}
			\new Voice {
				\keepWithTag #'(hornII) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceHornIIMvtIII
			}
			\new Voice {
				\timeMvtIII \nameHornIIMvtIII \musicHornIIMvtIII
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
				\formatHornIIIMvtI
			}
			\new Voice {
				\keepWithTag #'(hornIII) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceHornIIIMvtI
			}
			\new Voice {
				\timeMvtI \nameHornIIIMvtI \musicHornIIIMvtI
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
				\formatHornIIIMvtII
			}
			\new Voice {
				\keepWithTag #'(hornIII) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceHornIIIMvtII
			}
			\new Voice {
				\timeMvtII \nameHornIIIMvtII \musicHornIIIMvtII
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
				\formatHornIIIMvtIII
			}
			\new Voice {
				\keepWithTag #'(hornIII) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceHornIIIMvtIII
			}
			\new Voice {
				\timeMvtIII \nameHornIIIMvtIII \musicHornIIIMvtIII
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
	\score {
		\new Staff <<
			\new Voice {
				\formatHornIVMvtI
			}
			\new Voice {
				\keepWithTag #'(hornIV) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceHornIVMvtI
			}
			\new Voice {
				\timeMvtI \nameHornIVMvtI \musicHornIVMvtI
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
				\formatHornIVMvtII
			}
			\new Voice {
				\keepWithTag #'(hornIV) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceHornIVMvtII
			}
			\new Voice {
				\timeMvtII \nameHornIVMvtII \musicHornIVMvtII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\vspace #2.37 \fill-line {
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
				\formatHornIVMvtIII
			}
			\new Voice {
				\keepWithTag #'(hornIV) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceHornIVMvtIII
			}
			\new Voice {
				\timeMvtIII \nameHornIVMvtIII \musicHornIVMvtIII
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
