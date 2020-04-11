% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part04_Fagotte.ily
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
\include "./01-Mvt1/m01_v07_music_FagottoI.ily"
\include "./02-Mvt2/m02_v07_music_FagottoI.ily"
\include "./03-Mvt3/m03_v07_music_FagottoI.ily"
\include "./01-Mvt1/m01_v08_music_FagottoII.ily"
\include "./02-Mvt2/m02_v08_music_FagottoII.ily"
\include "./03-Mvt3/m03_v08_music_FagottoII.ily"
\include "./00-Common/DoubleConcerto_Format_Part04_Fagotte.ily"
\addQuote "cueVoiceFagImI" { \cueVoiceFagImI }
\addQuote "cueVoiceFagImII" { \cueVoiceFagImII }
\addQuote "cueVoiceFagImIII" { \cueVoiceFagImIII }
\addQuote "cueVoiceFagIImI" { \cueVoiceFagIImI }
\addQuote "cueVoiceFagIImII" { \cueVoiceFagIImII }
\addQuote "cueVoiceFagIImIII" { \cueVoiceFagIImIII }
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for Fagotte"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Fagotte"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceVII
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceVII \musicFagottoIMvtI
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
				\formatMvtIIVoiceVII
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceVII \musicFagottoIMvtII
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
				\formatMvtIIIVoiceVII
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceVII \musicFagottoIMvtIII
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
				\formatMvtIVoiceVIII
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceVIII \musicFagottoIIMvtI
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
				\formatMvtIIVoiceVIII
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceVIII \musicFagottoIIMvtII
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
				\formatMvtIIIVoiceVIII
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceVIII \musicFagottoIIMvtIII
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
