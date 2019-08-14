% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Conductor_mvt3.ly
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
\include "./00-Common/DoubleConcerto_Conductor_option.ly"
\include "./00-Common/DoubleConcerto_VoiceName.ly"
\include "./00-Common/DoubleConcerto_markup.ly"
\include "./03-Mvt3/m03_v01_music_FloteI.ly"
\include "./03-Mvt3/m03_v02_music_FloteII.ly"
\include "./03-Mvt3/m03_v03_music_OboeI.ly"
\include "./03-Mvt3/m03_v04_music_OboeII.ly"
\include "./03-Mvt3/m03_v05_music_KlarinetI.ly"
\include "./03-Mvt3/m03_v06_music_KlarinetII.ly"
\include "./03-Mvt3/m03_v07_music_FagottoI.ly"
\include "./03-Mvt3/m03_v08_music_FagottoII.ly"
\include "./03-Mvt3/m03_v09_music_HornI.ly"
\include "./03-Mvt3/m03_v10_music_HornII.ly"
\include "./03-Mvt3/m03_v11_music_HornIII.ly"
\include "./03-Mvt3/m03_v12_music_HornIV.ly"
\include "./03-Mvt3/m03_v13_music_TrumpetI.ly"
\include "./03-Mvt3/m03_v14_music_TrumpetII.ly"
\include "./03-Mvt3/m03_v15_music_Pauken.ly"
\include "./03-Mvt3/m03_v16_music_SoloViolin.ly"
\include "./03-Mvt3/m03_v17_music_SoloCello.ly"
\include "./03-Mvt3/m03_v18_music_ViolinI.ly"
\include "./03-Mvt3/m03_v19_music_ViolinII.ly"
\include "./03-Mvt3/m03_v20_music_Bratsche.ly"
\include "./03-Mvt3/m03_v21_music_Violoncell.ly"
\include "./03-Mvt3/m03_v22_music_Kontrabass.ly"
\include "./00-Common/00_DoubleConcerto_Format_Cond_Mvt3.ly"
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
				"Movement 3"
			}
		}
	}
	\score {
		<<
			\new StaffGroup <<
				\new Staff <<
%					\new Voice {
%						\formatConductorMvtIII
%					}
					\new Voice {
						\timeMvtIII \generalOptions \conductorOptions
						\nameVoiceI
						\partcombine \musicFloteIMvtIII \musicFloteIIMvtIII
					}
				>>
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameVoiceIII
					\partcombine \musicOboeIMvtIII \musicOboeIIMvtIII
				}
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameVoiceV
					\partcombine \musicKlarinetIMvtIII \musicKlarinetIIMvtIII
				}
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameVoiceVII
					\partcombine \musicFagottoIMvtIII \musicFagottoIIMvtIII
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptions
						\nameVoiceIX
						\partcombine \musicHornIMvtIII \musicHornIIMvtIII
					}
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptions
						\nameVoiceXI
						\partcombine \musicHornIIIMvtIII \musicHornIVMvtIII
					}
				>>
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameVoiceXIII
					\partcombine \musicTrumpetIMvtIII \musicTrumpetIIMvtIII
				}
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameVoiceXV
					\musicPaukenMvtIII
				}
			>>
			\new Staff {
				\timeMvtIII \generalOptions \conductorOptions
				\nameVoiceXVI
				\musicSoloViolinMvtIII
			}
			\new Staff {
				\timeMvtIII \generalOptions \conductorOptions
				\nameVoiceXVII
				\musicSoloCelloMvtIII
			}
			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptions
						\nameVoiceXVIII
						\musicViolinIMvtIII
					}
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptions
						\nameVoiceXIX
						\musicViolinIIMvtIII
					}
				>>
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameVoiceXX
					\musicBratscheMvtIII
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptions
						\nameVoiceXXI
						\musicVioloncellMvtIII
					}
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptions
						\nameVoiceXXII
						\musicKontrabassMvtIII
					}
				>>
			>>
		>>
		\header {
			breakbefore = ##t
		}
		\layout {
		}
	}
}
