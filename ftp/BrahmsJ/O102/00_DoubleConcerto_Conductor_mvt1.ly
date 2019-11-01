% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Conductor_mvt1.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                           S E C T I O N  P A P E R                          #
%###############################################################################
\paper {
	ragged-last-bottom = ##t
	ragged-bottom = ##t
	system-separator-markup = \slashSeparator
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
%\include "/media/Documents/Partitions/lilypond/markup.ly"
\include "./00-Common/DoubleConcerto_timeMvt.ly"
\include "./00-Common/DoubleConcerto_Conductor_option.ly"
\include "./00-Common/DoubleConcerto_VoiceName.ly"
\include "./00-Common/DoubleConcerto_markup.ly"
\include "./01-Mvt1/m01_v01_music_FloteI_C.ly"
\include "./01-Mvt1/m01_v02_music_FloteII_C.ly"
\include "./01-Mvt1/m01_v03_music_OboeI_C.ly"
\include "./01-Mvt1/m01_v04_music_OboeII_C.ly"
\include "./01-Mvt1/m01_v05_music_KlarinetI_C.ly"
\include "./01-Mvt1/m01_v06_music_KlarinetII_C.ly"
\include "./01-Mvt1/m01_v07_music_FagottoI_C.ly"
\include "./01-Mvt1/m01_v08_music_FagottoII_C.ly"
\include "./01-Mvt1/m01_v09_music_HornI_C.ly"
\include "./01-Mvt1/m01_v10_music_HornII_C.ly"
\include "./01-Mvt1/m01_v11_music_HornIII_C.ly"
\include "./01-Mvt1/m01_v12_music_HornIV_C.ly"
\include "./01-Mvt1/m01_v13_music_TrumpetI_C.ly"
\include "./01-Mvt1/m01_v14_music_TrumpetII_C.ly"
\include "./01-Mvt1/m01_v15_music_Pauken.ly"
\include "./01-Mvt1/m01_v16_music_SoloViolin.ly"
\include "./01-Mvt1/m01_v17_music_SoloCello.ly"
\include "./01-Mvt1/m01_v18_music_ViolinI.ly"
\include "./01-Mvt1/m01_v19_music_ViolinII.ly"
\include "./01-Mvt1/m01_v20_music_Bratsche.ly"
\include "./01-Mvt1/m01_v21_music_Violoncell.ly"
\include "./01-Mvt1/m01_v22_music_Kontrabass.ly"
%\include "./00-Common/DoubleConcerto_Format_Cond_Mvt1.ly"
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
				"Movement 1"
			}
		}
	}
	\score {
		<<
			\new StaffGroup <<
				\new Staff <<
%					\new Voice {
%						\formatConductorMvtI
%					}
					\new Voice {
						\timeMvtI \generalOptions \conductorOptions
						\nameVoiceI
						\partcombine \musicFloteIMvtI \musicFloteIIMvtI
%						\musicFloteIIMvtI
					}
				>>
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameVoiceIII
					\partcombine \musicOboeIMvtI \musicOboeIIMvtI
%					\musicOboeIIMvtI
				}
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameVoiceV
					\partcombine \musicKlarinetIMvtI \musicKlarinetIIMvtI
%					\musicKlarinetIIMvtI
				}
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameVoiceVII
					\partcombine \musicFagottoIMvtI \musicFagottoIIMvtI
%					\musicFagottoIMvtI
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameVoiceIX
						\partcombine \musicHornIMvtI \musicHornIIMvtI
%						\musicHornIIMvtI
					}
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameVoiceXI
						\partcombine \musicHornIIIMvtI \musicHornIVMvtI
%						\musicHornIVMvtI
					}
				>>
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameVoiceXIII
					\partcombine \musicTrumpetIMvtI \musicTrumpetIIMvtI
%					\musicTrumpetIIMvtI
				}
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameVoiceXV
					\musicPaukenMvtI
				}
			>>
			\new Staff {
				\timeMvtI \generalOptions \conductorOptions
				\nameVoiceXVI
				\musicSoloViolinMvtI
			}
			\new Staff {
				\timeMvtI \generalOptions \conductorOptions
				\nameVoiceXVII
				\musicSoloCelloMvtI
			}
			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameVoiceXVIII
						\musicViolinIMvtI
					}
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameVoiceXIX
						\musicViolinIIMvtI
					}
				>>
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameVoiceXX
					\musicBratscheMvtI
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameVoiceXXI
						\musicVioloncellMvtI
					}
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameVoiceXXII
						\musicKontrabassMvtI
					}
				>>
			>>
		>>
		\header {
			breakbefore = ##t
		}
		\layout {
			\context {
				\Staff
				\override TupletBracket #'bracket-visibility = ##f
				\override Hairpin.to-barline = ##f
				\RemoveEmptyStaves
			}
		}
	}
}
