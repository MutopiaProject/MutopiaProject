% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part14_Kontrabass.ily
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
\include "./01-Mvt1/m01_v22_music_Kontrabass.ily"
\include "./02-Mvt2/m02_v22_music_Kontrabass.ily"
\include "./03-Mvt3/m03_v22_music_Kontrabass.ily"
\include "./00-Common/DoubleConcerto_Format_Part14_Kontrabass.ily"
\addQuote "cueVoiceKtbmI" { \cueVoiceKtbmI }
\addQuote "cueVoiceKtbmII" { \cueVoiceKtbmII }
\addQuote "cueVoiceKtbmIII" { \cueVoiceKtbmIII }
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
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceXXII
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceXXII \musicKontrabassMvtI
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
				\formatMvtIIVoiceXXII
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceXXII \musicKontrabassMvtII
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
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIIVoiceXXII
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceXXII \musicKontrabassMvtIII
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
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
}
