% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part06_Trumpet.ly
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
\include "./01-Mvt1/m01_v13_music_TrumpetI.ly"
\include "./02-Mvt2/m02_v13_music_TrumpetI.ly"
\include "./03-Mvt3/m03_v13_music_TrumpetI.ly"
\include "./01-Mvt1/m01_v14_music_TrumpetII.ly"
\include "./02-Mvt2/m02_v14_music_TrumpetII.ly"
\include "./03-Mvt3/m03_v14_music_TrumpetII.ly"
\include "./00-Common/00_DoubleConcerto_Format_Trumpet.ly"
%\include "./00-Common/DoubleConcerto_Format_temp.ly"
\addQuote "cueVoiceTptImI" { \cueVoiceTptImI }
\addQuote "cueVoiceTptImII" { \cueVoiceTptImII }
\addQuote "cueVoiceTptImIII" { \cueVoiceTptImIII }
\addQuote "cueVoiceTptIImI" { \cueVoiceTptIImI }
\addQuote "cueVoiceTptIImII" { \cueVoiceTptIImII }
\addQuote "cueVoiceTptIImIII" { \cueVoiceTptIImIII }
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
				"Part for Trumpet"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Trumpet"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceXIII
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceXIII \musicTrumpetIMvtI
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
			%system-count = 22
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIVoiceXIII
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceXIII \musicTrumpetIMvtII
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
			%system-count = 4
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIIVoiceXIII
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceXIII \musicTrumpetIMvtIII
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
			%system-count = 19
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceXIV
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceXIV \musicTrumpetIIMvtI
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
			%system-count = #22
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIVoiceXIV
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceXIV \musicTrumpetIIMvtII
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
			%system-count = #4
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIIVoiceXIV
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceXIV \musicTrumpetIIMvtIII
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
			%system-count = #19
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
}
