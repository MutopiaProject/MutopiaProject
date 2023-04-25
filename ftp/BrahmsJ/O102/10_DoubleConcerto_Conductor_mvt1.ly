%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    work                : Double Concerto for Violin and Violoncello 
%                          in A minor (1st movement)
%    Source              : Leipzig: Breitkopf & Härtel, 1926-27. Plate J.B. 14.
%    Type of score       : Score conductor mvt I
%    Typesetter          : Sébastien MANEN
%    Date of initiation  : Thursday 20 April 2023, 19:50
%
%###############################################################################
%#                          I N C L U D E   F I L E S                          #
%###############################################################################
\version "2.22.1"
\include "./00-Common/DoubleConcerto_Header.ily"
\include "./00-Common/DoubleConcerto_PaperConductors.ily"
\include "./00-Common/DoubleConcerto_timeMvt.ily"
\include "./00-Common/DoubleConcerto_LayoutConductors.ily"
\include "./00-Common/DoubleConcerto_NameStaff.ily"
\include "./00-Common/DoubleConcerto_Shortcuts.ily"
\include "./00-Common/DoubleConcerto_Format_Cond_Mvt1.ily"
\include "./00-Common/DoubleConcerto_Tempi.ily"
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
				"Movement 1"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor - 1st movement"
		}
	}
	\score {
		<<
%			\new StaffGroup <<
%				\new Staff <<
%%					\new Voice {
%%						\formatConductorMvtI
%%					}
%					\new Voice {
%						\tempiMvtI
%					}
%					\new Voice {
%						\timeMvtI \nameStaffImvtI
%						\partCombine \musicFloteIMvtI \musicFloteIIMvtI
%					}
%				>>
%				\new Staff {
%					\timeMvtI \nameStaffIImvtI
%					\partCombine \musicOboeIMvtI \musicOboeIIMvtI
%				}
%				\new Staff {
%					\timeMvtI \nameStaffIIImvtI
%					\partCombine \musicKlarinetIMvtI \musicKlarinetIIMvtI
%				}
%				\new Staff {
%					\timeMvtI \nameStaffIVmvtI
%					\partCombine \musicFagottoIMvtI \musicFagottoIIMvtI
%				}
%				\new GrandStaff \with { \nameGdStaffImvtI } <<
%					\new Staff {
%						\timeMvtI \nameStaffVmvtI
%						\partCombine \musicHornIMvtI \musicHornIIMvtI
%					}
%					\new Staff {
%						\timeMvtI \nameStaffVImvtI
%						\partCombine \musicHornIIIMvtI \musicHornIVMvtI
%					}
%				>>
%				\new Staff {
%					\timeMvtI \nameStaffVIImvtI
%					\partCombine \musicTrumpetIMvtI \musicTrumpetIIMvtI
%				}
%				\new Staff {
%					\timeMvtI \nameStaffVIIImvtI
%					\musicPaukenMvtI
%				}
%			>>
%			\new Staff {
%				\timeMvtI \nameStaffIXmvtI
%				\keepWithTag #'score \musicSoloViolinMvtI
%			}
%			\new Staff {
%				\timeMvtI \nameStaffXmvtI
%				\musicSoloCelloMvtI
%			}
%			\new StaffGroup <<
%				\new GrandStaff <<
%					\new Staff {
%						\timeMvtI \nameStaffXImvtI
%						\musicViolinIMvtI
%					}
%					\new Staff {
%						\timeMvtI \nameStaffXIImvtI
%						\musicViolinIIMvtI
%					}
%				>>
%				\new Staff {
%					\timeMvtI \nameStaffXIIImvtI
%					\musicBratscheMvtI
%				}
%				\new GrandStaff <<
%					\new Staff {
%						\timeMvtI \nameStaffXIVmvtI
%						\musicVioloncellMvtI
%					}
%					\new Staff {
%						\timeMvtI \nameStaffXVmvtI
%						\musicKontrabassMvtI
%					}
%				>>
%			>>
		>>
		\header {
			breakbefore = ##t
		}
		\layout {
			\layoutTemp
		}
	}
}
