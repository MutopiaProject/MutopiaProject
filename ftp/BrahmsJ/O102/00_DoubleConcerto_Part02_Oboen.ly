% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part02_Oboen.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                           S E C T I O N  P A P E R                          #
%###############################################################################
\paper {
	ragged-last-bottom = ##t
	ragged-bottom = ##t
	bookTitleMarkup = \markup {
		\override #'(baseline-skip . 3.5)
		\column {
			\fill-line { 
				\fromproperty #'header:dedication
			}
			\override #'(baseline-skip . 3.5)
			\column {
				\fill-line {
					\huge \larger \larger \bold
					\fromproperty #'header:title
				}
				\fill-line {
					\large %\bold
					\fromproperty #'header:subtitle
				}
				\fill-line {
					\smaller %\bold
					\fromproperty #'header:subsubtitle
				}
				\fill-line {
					\fromproperty #'header:poet
					{ \large \bold \fromproperty #'header:instrument }
					\fromproperty #'header:composer
				}
				\fill-line {
					\fromproperty #'header:meter
					\fromproperty #'header:arranger
				}
			}
		}
	}
}
\include "./00-Common/DoubleConcerto_timeMvt.ly"
\include "./00-Common/DoubleConcerto_Parts_option.ly"
\include "./00-Common/DoubleConcerto_VoiceName.ly"
\include "./00-Common/DoubleConcerto_markup.ly"
\include "./00-Common/DoubleConcerto_cueVoice.ly"
\include "./01-Mvt1/m01_v03_music_OboeI.ly"
\include "./02-Mvt2/m02_v03_music_OboeI.ly"
\include "./03-Mvt3/m03_v03_music_OboeI.ly"
\include "./01-Mvt1/m01_v04_music_OboeII.ly"
\include "./02-Mvt2/m02_v04_music_OboeII.ly"
\include "./03-Mvt3/m03_v04_music_OboeII.ly"
\include "./00-Common/00_DoubleConcerto_Format_Oboen.ly"
\addQuote "cueVoiceOboeImI" { \cueVoiceOboeImI }
\addQuote "cueVoiceOboeImII" { \cueVoiceOboeImII }
\addQuote "cueVoiceOboeImIII" { \cueVoiceOboeImIII }
\addQuote "cueVoiceOboeIImI" { \cueVoiceOboeIImI }
\addQuote "cueVoiceOboeIImII" { \cueVoiceOboeIImII }
\addQuote "cueVoiceOboeIImIII" { \cueVoiceOboeIImIII }
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		title = \markup { \fontsize #5 \sans 
			\center-column {
				\vspace #10
				"Johannes Brahms"
				"1833 - 1897"
			}
		}
		subtitle = \markup { 
			\fontsize #5 \sans
			\center-column {
				\vspace #10
				"Double Concerto pour Violon et Violoncelle"
				"en la mineur Opus 102"
			}
		}
		subsubtitle = \markup { \fontsize #3 \sans
			\center-column {
				\vspace #10
				"Part for Oboen"
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceIII
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceIII \musicOboeIMvtI
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
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIVoiceIII
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceIII \musicOboeIMvtII
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
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIIVoiceIII
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceIII \musicOboeIMvtIII
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
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceIV
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceIV \musicOboeIIMvtI
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
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIVoiceIV
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceIV \musicOboeIIMvtII
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
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIIVoiceIV
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceIV \musicOboeIIMvtIII
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
		}
	}
}
