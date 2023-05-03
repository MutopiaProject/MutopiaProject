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
\version "2.24.1"
\include "./00-Common/DoubleConcerto_Header.ily"
\include "./00-Common/DoubleConcerto_PaperConductors.ily"
\include "./00-Common/DoubleConcerto_timeMvt.ily"
\include "./00-Common/DoubleConcerto_LayoutConductors.ily"
\include "./00-Common/DoubleConcerto_NameStaff.ily"
\include "./00-Common/DoubleConcerto_Shortcuts.ily"
\include "./00-Common/DoubleConcerto_Format_Cond_Mvt2.ily"
\include "./00-Common/DoubleConcerto_Tempi.ily"
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
						\tempiMvtII
					}
					\new Voice {
						\timeMvtII \nameStaffImvtII
						\partCombine \musicFloteIMvtII \musicFloteIIMvtII
					}
				>>
				\new Staff {
					\timeMvtII \nameStaffIImvtII
					\partCombine \musicOboeIMvtII \musicOboeIIMvtII
				}
				\new Staff {
					\timeMvtII \nameStaffIIImvtII
					\partCombine \musicKlarinetIMvtII \musicKlarinetIIMvtII
				}
				\new Staff {
					\timeMvtII \nameStaffIVmvtII
					\partCombine \musicFagottoIMvtII \musicFagottoIIMvtII
				}
				\new GrandStaff \with { \nameGdStaffImvtII } <<
					\new Staff {
						\timeMvtII \nameStaffVmvtII
						\partCombine \musicHornIMvtII \musicHornIIMvtII
					}
					\new Staff {
						\timeMvtII \nameStaffVImvtII
						\partCombine \musicHornIIIMvtII \musicHornIVMvtII
					}
				>>
				\new Staff {
					\timeMvtII \nameStaffVIImvtII
					\partCombine \musicTrumpetIMvtII \musicTrumpetIIMvtII
				}
			>>
			\new Staff {
				\timeMvtII \nameStaffVIIImvtII \musicSoloViolinMvtII
			}
			\new Staff {
				\timeMvtII \nameStaffIXmvtII \musicSoloCelloMvtII
			}
			\new StaffGroup <<
				\new GrandStaff <<
					\new Staff {
						\timeMvtII \nameStaffXmvtII \musicViolinIMvtII
					}
					\new Staff {
						\timeMvtII \nameStaffXImvtII \musicViolinIIMvtII
					}
				>>
				\new Staff {
					\timeMvtII \nameStaffXIImvtII \musicBratscheMvtII
				}
				\new GrandStaff <<
					\new Staff {
						\timeMvtII \nameStaffXIIImvtII \musicVioloncellMvtII
					}
					\new Staff {
						\timeMvtII \nameStaffXIVmvtII \musicKontrabassMvtII
					}
				>>
			>>
		>>
		\header {
			breakbefore = ##t
		}
		\layout {
			\context {
				\Score
				scriptDefinitions = #my-script-alist
			}
		}
	}
}
