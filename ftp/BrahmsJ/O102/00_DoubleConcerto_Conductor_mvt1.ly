% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Conductor_mvt1.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    Artwork             : Double Concerto for Violin and Violoncello 
%                          in A minor (1st movement)
%    Opus                : 102
%    Year of composition : 1887
%    Source              : Breitkopf and Härtel, 1926-27
%
%###############################################################################
%#                          I N C L U D E   F I L E S                          #
%###############################################################################
%\include "/media/Documents/Partitions/lilypond/markup.ly"
\include "./00-Common/DoubleConcerto_Header.ly"
\include "./00-Common/DoubleConcerto_Paper.ly"
\include "./00-Common/DoubleConcerto_timeMvt.ly"
\include "./00-Common/DoubleConcerto_Conductor_option.ly"
\include "./00-Common/DoubleConcerto_StaffName.ly"
\include "./00-Common/DoubleConcerto_markup.ly"
\include "./00-Common/DoubleConcerto_Format_Cond_Mvt1.ly"
%\include "./00-Common/DoubleConcerto_Format_temp.ly"
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
\include "./01-Mvt1/m01_v15_music_Pauken_C.ly"
\include "./01-Mvt1/m01_v16_music_SoloViolin_C.ly"
\include "./01-Mvt1/m01_v17_music_SoloCello_C.ly"
\include "./01-Mvt1/m01_v18_music_ViolinI_C.ly"
\include "./01-Mvt1/m01_v19_music_ViolinII_C.ly"
\include "./01-Mvt1/m01_v20_music_Bratsche_C.ly"
\include "./01-Mvt1/m01_v21_music_Violoncell_C.ly"
\include "./01-Mvt1/m01_v22_music_Kontrabass_C.ly"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { 
			\abs-fontsize #12 \sans
			\center-column {
				\vspace #10
				"Movement 1"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor - 1st movement"
		}
	}
	\score {
		<<
			\new StaffGroup <<
				\new Staff <<
					\new Voice {
						\formatConductorMvtI
					}
					\new Voice {
						\timeMvtI \generalOptions \conductorOptions
						\nameStaffImvtI
						\partcombine \musicFloteIMvtI \musicFloteIIMvtI
%						\musicFloteIIMvtI
					}
				>>
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameStaffIImvtI
					\partcombine \musicOboeIMvtI \musicOboeIIMvtI
%					\musicOboeIIMvtI
				}
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameStaffIIImvtI
					\partcombine \musicKlarinetIMvtI \musicKlarinetIIMvtI
%					\musicKlarinetIIMvtI
				}
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameStaffIVmvtI
					\partcombine \musicFagottoIMvtI \musicFagottoIIMvtI
%					\musicFagottoIMvtI
				}
				\new GrandStaff \with { \nameGdStaffImvtI } <<
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameStaffVmvtI
						\partcombine \musicHornIMvtI \musicHornIIMvtI
%						\musicHornIIMvtI
					}
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameStaffVImvtI
						\partcombine \musicHornIIIMvtI \musicHornIVMvtI
%						\musicHornIVMvtI
					}
				>>
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameStaffVIImvtI
					\partcombine \musicTrumpetIMvtI \musicTrumpetIIMvtI
%					\musicTrumpetIIMvtI
				}
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameStaffVIIImvtI
					\musicPaukenMvtI
				}
			>>
			\new Staff {
				\timeMvtI \generalOptions \conductorOptions
				\nameStaffIXmvtI
				\keepWithTag #'score \musicSoloViolinMvtI
			}
			\new Staff {
				\timeMvtI \generalOptions \conductorOptions
				\nameStaffXmvtI
				\musicSoloCelloMvtI
			}
			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameStaffXImvtI
						\musicViolinIMvtI
					}
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameStaffXIImvtI
						\musicViolinIIMvtI
					}
				>>
				\new Staff {
					\timeMvtI \generalOptions \conductorOptions
					\nameStaffXIIImvtI
					\musicBratscheMvtI
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameStaffXIVmvtI
						\musicVioloncellMvtI
					}
					\new Staff {
						\timeMvtI \generalOptions \conductorOptions
						\nameStaffXVmvtI
						\musicKontrabassMvtI
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
