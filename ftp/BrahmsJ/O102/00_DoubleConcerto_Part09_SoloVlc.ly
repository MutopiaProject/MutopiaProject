% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part09_SoloVlc.ly
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
\include "./00-Common/DoubleConcerto_timeMvt.ly"
\include "./00-Common/DoubleConcerto_Parts_option.ly"
\include "./00-Common/DoubleConcerto_VoiceName.ly"
\include "./00-Common/DoubleConcerto_markup.ly"
\include "./00-Common/DoubleConcerto_cueVoice.ly"
\include "./01-Mvt1/m01_v17_music_SoloCello.ly"
\include "./02-Mvt2/m02_v17_music_SoloCello.ly"
\include "./03-Mvt3/m03_v17_music_SoloCello.ly"
\include "./00-Common/DoubleConcerto_Format_temp.ly"
%\include "./00-Common/DoubleConcerto_Format_Part09_SoloVlc.ly"
\addQuote "cueVoiceSoloVlcmI" { \cueVoiceSoloVlcmI }
\addQuote "cueVoiceSoloVlcmII" { \cueVoiceSoloVlcmII }
\addQuote "cueVoiceSoloVlcmIII" { \cueVoiceSoloVlcmIII }
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
			%system-count = #69
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
			%system-count = 17
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
