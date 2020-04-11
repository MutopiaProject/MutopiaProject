% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part12_Bratsche.ily
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                           S E C T I O N  P A P E R                          #
%###############################################################################
\paper {
	ragged-last-bottom = ##t
	ragged-bottom = ##t
	left-margin = 16 \mm
	bookTitleMarkup = \markup {
		\override #'(baseline-skip . 3.5)
		\column {
			\override #'(baseline-skip . 3.5)
			\column {
				\vspace #10
				\fill-line {
					\huge \larger \larger \bold
					\fromproperty #'header:composer
				}
				\vspace #10
				\fill-line {
					\large %\bold
					\fromproperty #'header:title
				}
				\vspace #10
				\fill-line {
					\smaller %\bold
					\fromproperty #'header:subtitle
				}
			}
		}
	}
	oddHeaderMarkup = \markup {
		\vspace #1
		\on-the-fly \not-first-page \fill-line {
			\null
			\center-column {
				\smaller \fromproperty #'header:subsubtitle
				\fromproperty #'header:instrument
				\vspace #2
			}
			\fromproperty #'page:page-number-string
		}
	}
	evenHeaderMarkup =  \markup {
		\vspace #1
		\on-the-fly \not-first-page \fill-line {
			\fromproperty #'page:page-number-string
			\center-column {
				\smaller \fromproperty #'header:subsubtitle
				\fromproperty #'header:instrument
				\vspace #2
			}
			\null
		}
	}
}
\version "2.20.0"
\include "./00-Common/DoubleConcerto_timeMvt.ily"
\include "./00-Common/DoubleConcerto_Parts_option.ily"
\include "./00-Common/DoubleConcerto_VoiceName.ily"
\include "./00-Common/DoubleConcerto_markup.ily"
\include "./00-Common/DoubleConcerto_cueVoice.ily"
\include "./01-Mvt1/m01_v20_music_Bratsche.ily"
\include "./02-Mvt2/m02_v20_music_Bratsche.ily"
\include "./03-Mvt3/m03_v20_music_Bratsche.ily"
\include "./00-Common/DoubleConcerto_Format_Part12_Bratsche.ily"
%\include "./00-Common/DoubleConcerto_Format_temp.ily"
\addQuote "cueVoiceBrmI" { \cueVoiceBrmI }
\addQuote "cueVoiceBrmII" { \cueVoiceBrmII }
\addQuote "cueVoiceBrmIII" { \cueVoiceBrmIII }
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		composer = \markup { \fontsize #5 \sans 
			\center-column {
				"Johannes Brahms"
				"1833 - 1897"
			}
		}
		title = \markup { 
			\fontsize #5 \sans
			\center-column {
				"Double Concerto pour Violon et Violoncelle"
				"en la mineur Opus 102"
			}
		}
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for Bratsche"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Bratsche"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceXX
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceXX \musicBratscheMvtI
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
			%system-count = #56
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIVoiceXX
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceXX \musicBratscheMvtII
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
			%system-count = #12
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIIVoiceXX
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceXX \musicBratscheMvtIII
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
			%system-count = #34
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
}
