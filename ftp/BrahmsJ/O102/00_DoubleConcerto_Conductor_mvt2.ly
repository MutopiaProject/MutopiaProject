% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Conductor_mvt2.ly
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
%\include "/media/Documents/Partitions/lilypond/markup.ly"
\include "./00-Common/DoubleConcerto_timeMvt.ly"
\include "./00-Common/DoubleConcerto_Conductor_option.ly"
\include "./00-Common/DoubleConcerto_VoiceName.ly"
\include "./00-Common/DoubleConcerto_markup.ly"
\include "./02-Mvt2/m02_v01_music_FloteI_C.ly"
\include "./02-Mvt2/m02_v02_music_FloteII_C.ly"
\include "./02-Mvt2/m02_v03_music_OboeI_C.ly"
\include "./02-Mvt2/m02_v04_music_OboeII_C.ly"
\include "./02-Mvt2/m02_v05_music_KlarinetI_C.ly"
\include "./02-Mvt2/m02_v06_music_KlarinetII_C.ly"
\include "./02-Mvt2/m02_v07_music_FagottoI_C.ly"
\include "./02-Mvt2/m02_v08_music_FagottoII_C.ly"
\include "./02-Mvt2/m02_v09_music_HornI_C.ly"
\include "./02-Mvt2/m02_v10_music_HornII_C.ly"
\include "./02-Mvt2/m02_v11_music_HornIII_C.ly"
\include "./02-Mvt2/m02_v12_music_HornIV_C.ly"
\include "./02-Mvt2/m02_v13_music_TrumpetI_C.ly"
\include "./02-Mvt2/m02_v14_music_TrumpetII_C.ly"
\include "./02-Mvt2/m02_v16_music_SoloViolin.ly"
\include "./02-Mvt2/m02_v17_music_SoloCello.ly"
\include "./02-Mvt2/m02_v18_music_ViolinI.ly"
\include "./02-Mvt2/m02_v19_music_ViolinII.ly"
\include "./02-Mvt2/m02_v20_music_Bratsche.ly"
\include "./02-Mvt2/m02_v21_music_Violoncell.ly"
\include "./02-Mvt2/m02_v22_music_Kontrabass.ly"
%\include "./00-Common/00_DoubleConcerto_Format_Cond_Mvt2.ly"
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
				"Movement 2"
			}
		}
	}
	\score {
		<<
			\new StaffGroup <<
				\new Staff <<
%					\new Voice {
%						\formatConductorMvtII
%					}
					\new Voice {
						\timeMvtII \generalOptions \conductorOptions
						\nameVoiceI
						\partcombine \musicFloteIMvtII \musicFloteIIMvtII
%						\musicFloteIIMvtII
					}
				>>
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameVoiceIII
					\partcombine \musicOboeIMvtII \musicOboeIIMvtII
%					\musicOboeIMvtII
				}
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameVoiceV
					\partcombine \musicKlarinetIMvtII \musicKlarinetIIMvtII
%					\musicKlarinetIIMvtII
				}
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameVoiceVII
					\partcombine \musicFagottoIMvtII \musicFagottoIIMvtII
%					\musicFagottoIIMvtII
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameVoiceIX
						\partcombine \musicHornIMvtII \musicHornIIMvtII
%						\musicHornIIMvtII
					}
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameVoiceXI
						\partcombine \musicHornIIIMvtII \musicHornIVMvtII
%						\musicHornIVMvtII
					}
				>>
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameVoiceXIII
					\partcombine \musicTrumpetIMvtII \musicTrumpetIIMvtII
%					\musicTrumpetIIMvtII
				}
			>>
			\new Staff {
				\timeMvtII \generalOptions \conductorOptions
				\nameVoiceXVI
				\musicSoloViolinMvtII
			}
			\new Staff {
				\timeMvtII \generalOptions \conductorOptions
				\nameVoiceXVII
				\musicSoloCelloMvtII
			}
			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameVoiceXVIII
						\musicViolinIMvtII
					}
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameVoiceXIX
						\musicViolinIIMvtII
					}
				>>
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameVoiceXX
					\musicBratscheMvtII
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameVoiceXXI
						\musicVioloncellMvtII
					}
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameVoiceXXII
						\musicKontrabassMvtII
					}
				>>
			>>
		>>
		\header {
			breakbefore = ##t
		}
		\layout {
			\context {
				%\Staff \RemoveEmptyStaves
				\Staff
				\override TupletBracket #'bracket-visibility = ##f
				\override Hairpin.to-barline = ##f
				\RemoveEmptyStaves
			}
		}
	}
}
