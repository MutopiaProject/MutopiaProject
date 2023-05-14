% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part03_Klarinetten.ily
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    work                : Double Concerto for Violin and Violoncello 
%                          in A minor (1st movement)
%    Source              : Leipzig: Breitkopf & Härtel, 1926-27. Plate J.B. 14.
%    Type of score       : Score for Klarinete
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
\include "./00-Common/DoubleConcerto_Format_Part03_Klarinetten.ily"
\include "./01-Mvt1/m01_v05_music_KlarinetI.ily"
\include "./02-Mvt2/m02_v05_music_KlarinetI.ily"
\include "./03-Mvt3/m03_v05_music_KlarinetI.ily"
\include "./01-Mvt1/m01_v06_music_KlarinetII.ily"
\include "./02-Mvt2/m02_v06_music_KlarinetII.ily"
\include "./03-Mvt3/m03_v06_music_KlarinetII.ily"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for Klarinetten"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Klarinetten"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatKlarinetIMvtI
			}
			\new Voice {
				\keepWithTag #'(klarinetI) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceKlarinetIMvtI
			}
			\new Voice {
				\timeMvtI \nameKlarinetIMvtI \musicKlarinetIMvtI
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
				\formatKlarinetIMvtII
			}
			\new Voice {
				\keepWithTag #'(klarinetI) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceKlarinetIMvtII
			}
			\new Voice {
				\timeMvtII \nameKlarinetIMvtII \musicKlarinetIMvtII
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
				\formatKlarinetIMvtIII
			}
			\new Voice {
				\keepWithTag #'(klarinetI) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceKlarinetIMvtIII
			}
			\new Voice {
				\timeMvtIII \nameKlarinetIMvtIII \musicKlarinetIMvtIII
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
				\formatKlarinetIIMvtI
			}
			\new Voice {
				\keepWithTag #'(klarinetII) \tempiPartMvtI
			}
			\new Voice {
				\InCueContext \cueVoiceKlarinetIIMvtI
			}
			\new Voice {
				\timeMvtI \nameKlarinetIIMvtI \musicKlarinetIIMvtI
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
				\formatKlarinetIIMvtII
			}
			\new Voice {
				\keepWithTag #'(klarinetII) \tempiPartMvtII
			}
			\new Voice {
				\InCueContext \cueVoiceKlarinetIIMvtII
			}
			\new Voice {
				\timeMvtII \nameKlarinetIIMvtII \musicKlarinetIIMvtII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\vspace #3 \fill-line {
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
				\formatKlarinetIIMvtIII
			}
			\new Voice {
				\keepWithTag #'(klarinetII) \tempiPartMvtIII
			}
			\new Voice {
				\InCueContext \cueVoiceKlarinetIIMvtIII
			}
			\new Voice {
				\timeMvtIII \nameKlarinetIIMvtIII \musicKlarinetIIMvtIII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\vspace #2.3 \fill-line {
					\fontsize #4
					III
				}
			}
		}
		\layout {
		}
	}
}
