% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Conductor_mvt3.ily
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    work                : Double Concerto for Violin and Violoncello 
%                          in A minor (1st movement)
%    Source              : Leipzig: Breitkopf & Härtel, 1926-27. Plate J.B. 14.
%    Type of score       : Score conductor mvt III
%    Typesetter          : Sébastien MANEN
%    Date of initiation  : Thursday 20 April 2023, 19:50
%
%###############################################################################
%#                          I N C L U D E   F I L E S                          #
%###############################################################################
\version "2.24.1"
\include "./00-Common/DoubleConcerto_Header.ily"
\include "./00-Common/DoubleConcerto_PaperConductors.ily"
\include "./00-Common/DoubleConcerto_timeMvt.ily"
\include "./00-Common/DoubleConcerto_LayoutConductors.ily"
\include "./00-Common/DoubleConcerto_NameStaff.ily"
\include "./00-Common/DoubleConcerto_Shortcuts.ily"
\include "./00-Common/DoubleConcerto_Format_Cond_Mvt3.ily"
\include "./00-Common/DoubleConcerto_Tempi.ily"
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
					\new Voice {
						\formatConductorMvtIII
					}
					\new Voice {
						\tempiMvtIII
					}
					\new Voice {
						\timeMvtIII \nameStaffImvtIII
						\partCombine \musicFloteIMvtIII \musicFloteIIMvtIII
					}
				>>
				\new Staff {
					\timeMvtIII \nameStaffIImvtIII
					\partCombine \musicOboeIMvtIII \musicOboeIIMvtIII
				}
				\new Staff {
					\timeMvtIII \nameStaffIIImvtIII
					\partCombine \musicKlarinetIMvtIII \musicKlarinetIIMvtIII
				}
				\new Staff {
					\timeMvtIII \nameStaffIVmvtIII
					\partCombine \musicFagottoIMvtIII \musicFagottoIIMvtIII
				}
				\new GrandStaff \with { \nameGdStaffImvtIII } <<
					\new Staff {
						\timeMvtIII \nameStaffVmvtIII
						\partCombine \musicHornIMvtIII \musicHornIIMvtIII
					}
					\new Staff \with { \layoutHorn } {
						\timeMvtIII \nameStaffVImvtIII
						\partCombine \musicHornIIIMvtIII \musicHornIVMvtIII
					}
				>>
				\new Staff {
					\timeMvtIII \nameStaffVIImvtIII
					\partCombine \musicTrumpetIMvtIII \musicTrumpetIIMvtIII
				}
				\new Staff {
					\timeMvtIII \nameStaffVIIImvtIII \musicPaukenMvtIII
				}
			>>
			\new Staff {
				\timeMvtIII \nameStaffIXmvtIII \musicSoloViolinMvtIII
			}
			\new Staff {
				\timeMvtIII \nameStaffXmvtIII \musicSoloCelloMvtIII
			}
			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff {
						\timeMvtIII \nameStaffXImvtIII 	\musicViolinIMvtIII
					}
					\new Staff {
						\timeMvtIII \nameStaffXIImvtIII \musicViolinIIMvtIII
					}
				>>
				\new Staff {
					\timeMvtIII \nameStaffXIIImvtIII \musicBratscheMvtIII
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtIII \nameStaffXIVmvtIII \musicVioloncellMvtIII
					}
					\new Staff {
						\timeMvtIII \nameStaffXVmvtIII \musicKontrabassMvtIII
					}
				>>
			>>
		>>
		\header {
			breakbefore = ##t
		}
		\layout {
%			\layoutTemp
		}
	}
}
