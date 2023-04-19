% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part03_Klarinetten.ily
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
\include "./01-Mvt1/m01_v05_music_KlarinetI.ily"
\include "./02-Mvt2/m02_v05_music_KlarinetI.ily"
\include "./03-Mvt3/m03_v05_music_KlarinetI.ily"
\include "./01-Mvt1/m01_v06_music_KlarinetII.ily"
\include "./02-Mvt2/m02_v06_music_KlarinetII.ily"
\include "./03-Mvt3/m03_v06_music_KlarinetII.ily"
\include "./00-Common/DoubleConcerto_Format_Part03_Klarinetten.ily"
\addQuote "cueVoiceKlarImI" { \cueVoiceKlarImI }
\addQuote "cueVoiceKlarImII" { \cueVoiceKlarImII }
\addQuote "cueVoiceKlarImIII" { \cueVoiceKlarImIII }
\addQuote "cueVoiceKlarIImI" { \cueVoiceKlarIImI }
\addQuote "cueVoiceKlarIImII" { \cueVoiceKlarIImII }
\addQuote "cueVoiceKlarIImIII" { \cueVoiceKlarIImIII }
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
				\formatMvtIVoiceV
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceV \musicKlarinetIMvtI
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
				\formatMvtIIVoiceV
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceV \musicKlarinetIMvtII
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
				\formatMvtIIIVoiceV
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceV \musicKlarinetIMvtIII
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
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceVI
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceVI \musicKlarinetIIMvtI
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
				\formatMvtIIVoiceVI
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceVI \musicKlarinetIIMvtII
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
				\formatMvtIIIVoiceVI
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceVI \musicKlarinetIIMvtIII
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
