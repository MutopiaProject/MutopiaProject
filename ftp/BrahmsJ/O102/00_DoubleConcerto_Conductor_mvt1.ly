% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Conductor_mvt1.ily
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
%\include "/media/Documents/Partitions/lilypond/markup.ily"
\version "2.20.0"
\include "./00-Common/DoubleConcerto_Header.ily"
\include "./00-Common/DoubleConcerto_Paper.ily"
\include "./00-Common/DoubleConcerto_timeMvt.ily"
\include "./00-Common/DoubleConcerto_Conductor_option.ily"
\include "./00-Common/DoubleConcerto_StaffName.ily"
\include "./00-Common/DoubleConcerto_markup.ily"
\include "./00-Common/DoubleConcerto_Format_Cond_Mvt1.ily"
%\include "./00-Common/DoubleConcerto_Format_temp.ily"
\include "./01-Mvt1/m01_v01_music_FloteI_C.ily"
\include "./01-Mvt1/m01_v02_music_FloteII_C.ily"
\include "./01-Mvt1/m01_v03_music_OboeI_C.ily"
\include "./01-Mvt1/m01_v04_music_OboeII_C.ily"
\include "./01-Mvt1/m01_v05_music_KlarinetI_C.ily"
\include "./01-Mvt1/m01_v06_music_KlarinetII_C.ily"
\include "./01-Mvt1/m01_v07_music_FagottoI_C.ily"
\include "./01-Mvt1/m01_v08_music_FagottoII_C.ily"
\include "./01-Mvt1/m01_v09_music_HornI_C.ily"
\include "./01-Mvt1/m01_v10_music_HornII_C.ily"
\include "./01-Mvt1/m01_v11_music_HornIII_C.ily"
\include "./01-Mvt1/m01_v12_music_HornIV_C.ily"
\include "./01-Mvt1/m01_v13_music_TrumpetI_C.ily"
\include "./01-Mvt1/m01_v14_music_TrumpetII_C.ily"
\include "./01-Mvt1/m01_v15_music_Pauken_C.ily"
\include "./01-Mvt1/m01_v16_music_SoloViolin_C.ily"
\include "./01-Mvt1/m01_v17_music_SoloCello_C.ily"
\include "./01-Mvt1/m01_v18_music_ViolinI_C.ily"
\include "./01-Mvt1/m01_v19_music_ViolinII_C.ily"
\include "./01-Mvt1/m01_v20_music_Bratsche_C.ily"
\include "./01-Mvt1/m01_v21_music_Violoncell_C.ily"
\include "./01-Mvt1/m01_v22_music_Kontrabass_C.ily"
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
%					\new Voice {
%						\displayFilterVoice
%					}
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
