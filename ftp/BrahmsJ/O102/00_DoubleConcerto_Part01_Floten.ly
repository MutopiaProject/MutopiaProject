% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part01_Floten.ily
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
\include "./01-Mvt1/m01_v01_music_FloteI.ily"
\include "./02-Mvt2/m02_v01_music_FloteI.ily"
\include "./03-Mvt3/m03_v01_music_FloteI.ily"
\include "./01-Mvt1/m01_v02_music_FloteII.ily"
\include "./02-Mvt2/m02_v02_music_FloteII.ily"
\include "./03-Mvt3/m03_v02_music_FloteII.ily"
\addQuote "cueVoiceFloteImI" { \cueVoiceFloteImI }
\addQuote "cueVoiceFloteImII" { \cueVoiceFloteImII }
\addQuote "cueVoiceFloteImIII" { \cueVoiceFloteImIII }
\addQuote "cueVoiceFloteIImI" { \cueVoiceFloteIImI }
\addQuote "cueVoiceFloteIImII" { \cueVoiceFloteIImII }
\addQuote "cueVoiceFloteIImIII" { \cueVoiceFloteIImIII }
\include "./00-Common/DoubleConcerto_Format_Part01_Floten.ily"
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
			"Flote"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceI
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceI \musicFloteIMvtI
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
				\formatMvtIIVoiceI
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceI \musicFloteIMvtII
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
				\formatMvtIIIVoiceI
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceI \musicFloteIMvtIII
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
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceII
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceII \musicFloteIIMvtI
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
				\formatMvtIIVoiceII
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceII \musicFloteIIMvtII
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
				\formatMvtIIIVoiceII
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceII \musicFloteIIMvtIII
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
