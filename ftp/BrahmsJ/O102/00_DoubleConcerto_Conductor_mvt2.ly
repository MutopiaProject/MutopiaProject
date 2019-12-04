% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Conductor_mvt2.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    Artwork             : Double Concerto for Violin and Violoncello 
%                          in A minor (2nd movement)
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
%\include "./00-Common/DoubleConcerto_Format_Cond_Mvt2.ly"
\include "./00-Common/DoubleConcerto_Format_temp.ly"
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
\include "./02-Mvt2/m02_v16_music_SoloViolin_C.ly"
\include "./02-Mvt2/m02_v17_music_SoloCello_C.ly"
\include "./02-Mvt2/m02_v18_music_ViolinI_C.ly"
\include "./02-Mvt2/m02_v19_music_ViolinII_C.ly"
\include "./02-Mvt2/m02_v20_music_Bratsche_C.ly"
\include "./02-Mvt2/m02_v21_music_Violoncell_C.ly"
\include "./02-Mvt2/m02_v22_music_Kontrabass_C.ly"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { 
			\abs-fontsize #12 \sans
			\center-column {
				\vspace #10
				"Movement 2"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor - 2nd movement"
		}
	}
	\score {
		<<
			\new StaffGroup <<
				\new Staff <<
					\new Voice {
						\displayFilterVoice 
					}
					\new Voice {
						\formatConductorMvtII
					}
					\new Voice {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffImvtII
						\partcombine \musicFloteIMvtII \musicFloteIIMvtII
%						\musicFloteIIMvtII
					}
				>>
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffIImvtII
					\partcombine \musicOboeIMvtII \musicOboeIIMvtII
%					\musicOboeIMvtII
				}
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffIIImvtII
					\partcombine \musicKlarinetIMvtII \musicKlarinetIIMvtII
%					\musicKlarinetIIMvtII
				}
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffIVmvtII
					\partcombine \musicFagottoIMvtII \musicFagottoIIMvtII
%					\musicFagottoIIMvtII
				}
				\new GrandStaff \with { \nameGdStaffImvtII } <<
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffVmvtII
						\partcombine \musicHornIMvtII \musicHornIIMvtII
%						\musicHornIIMvtII
					}
					\new Staff {
						\timeMvtII \generalOptions \conductorOptionsHorn
						\nameStaffVImvtII
						\partcombine \musicHornIIIMvtII \musicHornIVMvtII
%						\musicHornIVMvtII
					}
				>>
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffVIImvtII
					\partcombine \musicTrumpetIMvtII \musicTrumpetIIMvtII
%					\musicTrumpetIIMvtII
				}
			>>
			\new Staff {
				\timeMvtII \generalOptions \conductorOptions
				\nameStaffVIIImvtII
				\musicSoloViolinMvtII
			}
			\new Staff {
				\timeMvtII \generalOptions \conductorOptions
				\nameStaffIXmvtII
				\musicSoloCelloMvtII
			}
			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffXmvtII
						\musicViolinIMvtII
					}
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffXImvtII
						\musicViolinIIMvtII
					}
				>>
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffXIImvtII
					\musicBratscheMvtII
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffXIIImvtII
						\musicVioloncellMvtII
					}
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffXIVmvtII
						\musicKontrabassMvtII
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
