% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part04_Fagotte.ily
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
%\include "./00-Common/DoubleConcerto_Format_temp.ily"
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
			%system-count = 38
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
			%system-count = 9
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
			%system-count = 26
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
			%system-count = #35
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
			system-count = #9
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
			system-count = #25
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
}
