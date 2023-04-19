% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part09_SoloVlc.ily
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    Artwork             : Double Concerto for Violin and Violoncello 
%                          in A minor (1st movement)
%    Opus                : 102
%    Year of composition : 1887
%    Source              : Breitkopf and Härtel, 1926-27
%
%###############################################################################
%#                          I N C L U D E   F I L E S                          #
%###############################################################################
\version "2.20.0"
\include "./00-Common/DoubleConcerto_Header.ily"
\include "./00-Common/DoubleConcerto_PaperParts.ily"
\include "./00-Common/DoubleConcerto_timeMvt.ily"
\include "./00-Common/DoubleConcerto_Parts_option.ily"
\include "./00-Common/DoubleConcerto_VoiceName.ily"
\include "./00-Common/DoubleConcerto_markup.ily"
\include "./00-Common/DoubleConcerto_cueVoice.ily"
\include "./01-Mvt1/m01_v17_music_SoloCello.ily"
\include "./02-Mvt2/m02_v17_music_SoloCello.ily"
\include "./03-Mvt3/m03_v17_music_SoloCello.ily"
\include "./00-Common/DoubleConcerto_Format_Part09_SoloVlc.ily"
\addQuote "cueVoiceSoloVlcmI" { \cueVoiceSoloVlcmI }
\addQuote "cueVoiceSoloVlcmII" { \cueVoiceSoloVlcmII }
\addQuote "cueVoiceSoloVlcmIII" { \cueVoiceSoloVlcmIII }
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for SoloVlc"
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
				\formatMvtIVoiceXVII
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceXVII \musicSoloCelloMvtI
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
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIVoiceXVII
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceXVII \musicSoloCelloMvtII
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
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIIVoiceXVII
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceXVII \musicSoloCelloMvtIII
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
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
}
