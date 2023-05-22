% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part08_SoloVln.ily
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
\include "./01-Mvt1/m01_v16_music_SoloViolin.ily"
\include "./02-Mvt2/m02_v16_music_SoloViolin.ily"
\include "./03-Mvt3/m03_v16_music_SoloViolin.ily"
\include "./00-Common/DoubleConcerto_Format_Part08_SoloVln.ily"
\addQuote "cueVoiceSoloVlnmI" { \cueVoiceSoloVlnmI }
\addQuote "cueVoiceSoloVlnmII" { \cueVoiceSoloVlnmII }
\addQuote "cueVoiceSoloVlnmIII" { \cueVoiceSoloVlnmIII }
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for SoloVln"
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
				\formatMvtIVoiceXVI
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceXVI \musicSoloViolinMvtI
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
				\formatMvtIIVoiceXVI
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceXVI \musicSoloViolinMvtII
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
				\formatMvtIIIVoiceXVI
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceXVI \musicSoloViolinMvtIII
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
