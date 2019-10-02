% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part05_Horn.ly
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
\include "./01-Mvt1/m01_v09_music_HornI.ly"
\include "./02-Mvt2/m02_v09_music_HornI.ly"
\include "./03-Mvt3/m03_v09_music_HornI.ly"
\include "./01-Mvt1/m01_v10_music_HornII.ly"
\include "./02-Mvt2/m02_v10_music_HornII.ly"
\include "./03-Mvt3/m03_v10_music_HornII.ly"
\include "./01-Mvt1/m01_v11_music_HornIII.ly"
\include "./02-Mvt2/m02_v11_music_HornIII.ly"
\include "./03-Mvt3/m03_v11_music_HornIII.ly"
\include "./01-Mvt1/m01_v12_music_HornIV.ly"
\include "./02-Mvt2/m02_v12_music_HornIV.ly"
\include "./03-Mvt3/m03_v12_music_HornIV.ly"
\include "./00-Common/00_DoubleConcerto_Format_Horn.ly"
\addQuote "cueVoiceHrnImI" { \cueVoiceHrnImI }
\addQuote "cueVoiceHrnImII" { \cueVoiceHrnImII }
\addQuote "cueVoiceHrnImIII" { \cueVoiceHrnImIII }
\addQuote "cueVoiceHrnIImI" { \cueVoiceHrnIImI }
\addQuote "cueVoiceHrnIImII" { \cueVoiceHrnIImII }
\addQuote "cueVoiceHrnIImIII" { \cueVoiceHrnIImIII }
\addQuote "cueVoiceHrnIIImI" { \cueVoiceHrnIIImI }
\addQuote "cueVoiceHrnIIImII" { \cueVoiceHrnIIImII }
\addQuote "cueVoiceHrnIIImIII" { \cueVoiceHrnIIImIII }
\addQuote "cueVoiceHrnIVmI" { \cueVoiceHrnIVmI }
\addQuote "cueVoiceHrnIVmII" { \cueVoiceHrnIVmII }
\addQuote "cueVoiceHrnIVmIII" { \cueVoiceHrnIVmIII }
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
				"Part for Horn"
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceIX
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceIX \musicHornIMvtI
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
				\formatMvtIIVoiceIX
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceIX \musicHornIMvtII
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
				\formatMvtIIIVoiceIX
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceIX \musicHornIMvtIII
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
				\formatMvtIVoiceX
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceX \musicHornIIMvtI
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
				\formatMvtIIVoiceX
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceX \musicHornIIMvtII
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
				\formatMvtIIIVoiceX
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceX \musicHornIIMvtIII
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
				\formatMvtIVoiceXI
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceXI \musicHornIIIMvtI
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
				\formatMvtIIVoiceXI
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceXI \musicHornIIIMvtII
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
				\formatMvtIIIVoiceXI
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceXI \musicHornIIIMvtIII
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
				\formatMvtIVoiceXII
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceXII \musicHornIVMvtI
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
				\formatMvtIIVoiceXII
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceXII \musicHornIVMvtII
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
				\formatMvtIIIVoiceXII
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceXII \musicHornIVMvtIII
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
