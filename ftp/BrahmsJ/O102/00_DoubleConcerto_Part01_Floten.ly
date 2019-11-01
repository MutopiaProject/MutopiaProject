% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part01_Floten.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                           S E C T I O N  P A P E R                          #
%###############################################################################
\paper {
	ragged-last-bottom = ##f
	ragged-bottom = ##f
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
\include "./01-Mvt1/m01_v01_music_FloteI.ly"
\include "./02-Mvt2/m02_v01_music_FloteI.ly"
\include "./03-Mvt3/m03_v01_music_FloteI.ly"
\include "./01-Mvt1/m01_v02_music_FloteII.ly"
\include "./02-Mvt2/m02_v02_music_FloteII.ly"
\include "./03-Mvt3/m03_v02_music_FloteII.ly"
\addQuote "cueVoiceFloteImI" { \cueVoiceFloteImI }
\addQuote "cueVoiceFloteImII" { \cueVoiceFloteImII }
\addQuote "cueVoiceFloteImIII" { \cueVoiceFloteImIII }
\addQuote "cueVoiceFloteIImI" { \cueVoiceFloteIImI }
\addQuote "cueVoiceFloteIImII" { \cueVoiceFloteIImII }
\addQuote "cueVoiceFloteIImIII" { \cueVoiceFloteIImIII }
\include "./00-Common/DoubleConcerto_Format_Part01_Floten.ly"
%\include "./00-Common/DoubleConcerto_Format_temp.ly"
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
