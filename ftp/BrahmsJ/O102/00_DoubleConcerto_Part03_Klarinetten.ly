% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part03_Klarinetten.ly
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
\include "./01-Mvt1/m01_v05_music_KlarinetI.ly"
\include "./02-Mvt2/m02_v05_music_KlarinetI.ly"
\include "./03-Mvt3/m03_v05_music_KlarinetI.ly"
\include "./01-Mvt1/m01_v06_music_KlarinetII.ly"
\include "./02-Mvt2/m02_v06_music_KlarinetII.ly"
\include "./03-Mvt3/m03_v06_music_KlarinetII.ly"
\include "./00-Common/00_DoubleConcerto_Format_Klarinetten.ly"
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
				"Part for Klarinetten"
			}
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
