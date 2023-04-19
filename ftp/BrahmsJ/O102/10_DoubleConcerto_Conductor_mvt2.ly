% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Conductor_mvt2.ily
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
\version "2.20.0"
\include "./00-Common/DoubleConcerto_Header.ily"
\include "./00-Common/DoubleConcerto_Paper.ily"
\include "./00-Common/DoubleConcerto_timeMvt.ily"
\include "./00-Common/DoubleConcerto_Conductor_option.ily"
\include "./00-Common/DoubleConcerto_StaffName.ily"
\include "./00-Common/DoubleConcerto_markup.ily"
\include "./00-Common/DoubleConcerto_Format_Cond_Mvt2.ily"
\include "./02-Mvt2/m02_v01_music_FloteI_C.ily"
\include "./02-Mvt2/m02_v02_music_FloteII_C.ily"
\include "./02-Mvt2/m02_v03_music_OboeI_C.ily"
\include "./02-Mvt2/m02_v04_music_OboeII_C.ily"
\include "./02-Mvt2/m02_v05_music_KlarinetI_C.ily"
\include "./02-Mvt2/m02_v06_music_KlarinetII_C.ily"
\include "./02-Mvt2/m02_v07_music_FagottoI_C.ily"
\include "./02-Mvt2/m02_v08_music_FagottoII_C.ily"
\include "./02-Mvt2/m02_v09_music_HornI_C.ily"
\include "./02-Mvt2/m02_v10_music_HornII_C.ily"
\include "./02-Mvt2/m02_v11_music_HornIII_C.ily"
\include "./02-Mvt2/m02_v12_music_HornIV_C.ily"
\include "./02-Mvt2/m02_v13_music_TrumpetI_C.ily"
\include "./02-Mvt2/m02_v14_music_TrumpetII_C.ily"
\include "./02-Mvt2/m02_v16_music_SoloViolin_C.ily"
\include "./02-Mvt2/m02_v17_music_SoloCello_C.ily"
\include "./02-Mvt2/m02_v18_music_ViolinI_C.ily"
\include "./02-Mvt2/m02_v19_music_ViolinII_C.ily"
\include "./02-Mvt2/m02_v20_music_Bratsche_C.ily"
\include "./02-Mvt2/m02_v21_music_Violoncell_C.ily"
\include "./02-Mvt2/m02_v22_music_Kontrabass_C.ily"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { 
			\abs-fontsize #12 \sans
			\center-column {
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
						\formatConductorMvtII
					}
					\new Voice {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffImvtII
						\partcombine \musicFloteIMvtII \musicFloteIIMvtII
					}
				>>
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffIImvtII
					\partcombine \musicOboeIMvtII \musicOboeIIMvtII
				}
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffIIImvtII
					\partcombine \musicKlarinetIMvtII \musicKlarinetIIMvtII
				}
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffIVmvtII
					\partcombine \musicFagottoIMvtII \musicFagottoIIMvtII
				}
				\new GrandStaff \with { \nameGdStaffImvtII } <<
					\new Staff {
						\timeMvtII \generalOptions \conductorOptions
						\nameStaffVmvtII
						\partcombine \musicHornIMvtII \musicHornIIMvtII
					}
					\new Staff {
						\timeMvtII \generalOptions \conductorOptionsHorn
						\nameStaffVImvtII
						\partcombine \musicHornIIIMvtII \musicHornIVMvtII
					}
				>>
				\new Staff {
					\timeMvtII \generalOptions \conductorOptions
					\nameStaffVIImvtII
					\partcombine \musicTrumpetIMvtII \musicTrumpetIIMvtII
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
