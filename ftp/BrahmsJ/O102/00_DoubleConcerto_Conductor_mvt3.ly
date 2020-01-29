% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Conductor_mvt3.ily
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    Artwork             : Double Concerto for Violin and Violoncello 
%                          in A minor (3rd movement)
%    Opus                : 102
%    Year of composition : 1887
%    Source              : Breitkopf and Härtel, 1926-27
%
%###############################################################################
%#                          I N C L U D E   F I L E S                          #
%###############################################################################
%\include "/media/Documents/Partitions/lilypond/markup.ily"
\include "./00-Common/DoubleConcerto_markup.ily"
\include "./00-Common/DoubleConcerto_Header.ily"
\include "./00-Common/DoubleConcerto_Paper.ily"
\include "./00-Common/DoubleConcerto_timeMvt.ily"
\include "./00-Common/DoubleConcerto_Conductor_option.ily"
\include "./00-Common/DoubleConcerto_StaffName.ily"
\include "./00-Common/DoubleConcerto_Format_Cond_Mvt3.ily"
%\include "./00-Common/DoubleConcerto_Format_temp.ily"
\include "./03-Mvt3/m03_v01_music_FloteI_C.ily"
\include "./03-Mvt3/m03_v02_music_FloteII_C.ily"
\include "./03-Mvt3/m03_v03_music_OboeI_C.ily"
\include "./03-Mvt3/m03_v04_music_OboeII_C.ily"
\include "./03-Mvt3/m03_v05_music_KlarinetI_C.ily"
\include "./03-Mvt3/m03_v06_music_KlarinetII_C.ily"
\include "./03-Mvt3/m03_v07_music_FagottoI_C.ily"
\include "./03-Mvt3/m03_v08_music_FagottoII_C.ily"
\include "./03-Mvt3/m03_v09_music_HornI_C.ily"
\include "./03-Mvt3/m03_v10_music_HornII_C.ily"
\include "./03-Mvt3/m03_v11_music_HornIII_C.ily"
\include "./03-Mvt3/m03_v12_music_HornIV_C.ily"
\include "./03-Mvt3/m03_v13_music_TrumpetI_C.ily"
\include "./03-Mvt3/m03_v14_music_TrumpetII_C.ily"
\include "./03-Mvt3/m03_v15_music_Pauken_C.ily"
\include "./03-Mvt3/m03_v16_music_SoloViolin_C.ily"
\include "./03-Mvt3/m03_v17_music_SoloCello_C.ily"
\include "./03-Mvt3/m03_v18_music_ViolinI_C.ily"
\include "./03-Mvt3/m03_v19_music_ViolinII_C.ily"
\include "./03-Mvt3/m03_v20_music_Bratsche_C.ily"
\include "./03-Mvt3/m03_v21_music_Violoncell_C.ily"
\include "./03-Mvt3/m03_v22_music_Kontrabass_C.ily"
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { 
			\abs-fontsize #12 \sans
			\center-column {
				\vspace #10
				"Movement 3"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor - 3rd movement"
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
						\formatConductorMvtIII
					}
					\new Voice {
						\timeMvtIII \generalOptions \conductorOptions
						\nameStaffImvtIII
						\partcombine \musicFloteIMvtIII \musicFloteIIMvtIII
%						\musicFloteIMvtIII
					}
				>>
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameStaffIImvtIII
					\partcombine \musicOboeIMvtIII \musicOboeIIMvtIII
%					\musicOboeIIMvtIII
				}
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameStaffIIImvtIII
					\partcombine \musicKlarinetIMvtIII \musicKlarinetIIMvtIII
%					\musicKlarinetIIMvtIII
				}
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameStaffIVmvtIII
					\partcombine \musicFagottoIMvtIII \musicFagottoIIMvtIII
%					\musicFagottoIIMvtIII
				}
				\new GrandStaff \with { \nameGdStaffImvtIII } <<
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptions
						\nameStaffVmvtIII
						\partcombine \musicHornIMvtIII \musicHornIIMvtIII
%						\musicHornIIMvtIII
					}
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptionsHorn
						\nameStaffVImvtIII
						\partcombine \musicHornIIIMvtIII \musicHornIVMvtIII
%						\musicHornIVMvtIII
					}
				>>
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameStaffVIImvtIII
					\partcombine \musicTrumpetIMvtIII \musicTrumpetIIMvtIII
%					\musicTrumpetIIMvtIII
				}
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameStaffVIIImvtIII
					\musicPaukenMvtIII
				}
			>>
			\new Staff {
				\timeMvtIII \generalOptions \conductorOptions
				\nameStaffIXmvtIII
				\musicSoloViolinMvtIII
			}
			\new Staff {
				\timeMvtIII \generalOptions \conductorOptions
				\nameStaffXmvtIII
				\musicSoloCelloMvtIII
			}
			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptions
						\nameStaffXImvtIII
						\musicViolinIMvtIII
					}
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptions
						\nameStaffXIImvtIII
						\musicViolinIIMvtIII
					}
				>>
				\new Staff {
					\timeMvtIII \generalOptions \conductorOptions
					\nameStaffXIIImvtIII
					\musicBratscheMvtIII
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptions
						\nameStaffXIVmvtIII
						\musicVioloncellMvtIII
					}
					\new Staff {
						\timeMvtIII \generalOptions \conductorOptions
						\nameStaffXVmvtIII
						\musicKontrabassMvtIII
					}
				>>
			>>
		>>
		\header {
			breakbefore = ##t
		}
		\layout {
%			system-count = #52
%			\context {
%				\Staff \RemoveEmptyStaves
%			}
		}
	}
}
