% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_midi_Mvt2.ily
% Generated on : Friday 02 August 2019, 19:28:01
\include "./../00-Common/DoubleConcerto_markup.ily"
\include "./../02-Mvt2/m02_v01_music_FloteI_C.ily"
\include "./../02-Mvt2/m02_v02_music_FloteII_C.ily"
\include "./../02-Mvt2/m02_v03_music_OboeI_C.ily"
\include "./../02-Mvt2/m02_v04_music_OboeII_C.ily"
\include "./../02-Mvt2/m02_v05_music_KlarinetI_C.ily"
\include "./../02-Mvt2/m02_v06_music_KlarinetII_C.ily"
\include "./../02-Mvt2/m02_v07_music_FagottoI_C.ily"
\include "./../02-Mvt2/m02_v08_music_FagottoII_C.ily"
\include "./../02-Mvt2/m02_v09_music_HornI_C.ily"
\include "./../02-Mvt2/m02_v10_music_HornII_C.ily"
\include "./../02-Mvt2/m02_v11_music_HornIII_C.ily"
\include "./../02-Mvt2/m02_v12_music_HornIV_C.ily"
\include "./../02-Mvt2/m02_v13_music_TrumpetI_C.ily"
\include "./../02-Mvt2/m02_v14_music_TrumpetII_C.ily"
\include "./../02-Mvt2/m02_v16_music_SoloViolin_C.ily"
\include "./../02-Mvt2/m02_v17_music_SoloCello_C.ily"
\include "./../02-Mvt2/m02_v18_music_ViolinI_C.ily"
\include "./../02-Mvt2/m02_v19_music_ViolinII_C.ily"
\include "./../02-Mvt2/m02_v20_music_Bratsche_C.ily"
\include "./../02-Mvt2/m02_v21_music_Violoncell_C.ily"
\include "./../02-Mvt2/m02_v22_music_Kontrabass_C.ily"
\include "./../00-Common/DoubleConcerto_timeMvt.ily"
\include "./../00-Common/DoubleConcerto_VoiceName.ily"
%###############################################################################
%#                          B O O K    S E C T I O N                           #
%###############################################################################
\book {
	#(define output-suffix "groupeI")
	\score {
		<<
			\new StaffGroup <<
				\new Staff { \timeMvtII \musicFloteIMvtII }
				\new Staff { \timeMvtII \musicFloteIIMvtII }
				\new Staff { \timeMvtII \musicOboeIMvtII }
				\new Staff { \timeMvtII \musicOboeIIMvtII }
				\new Staff { \timeMvtII \musicKlarinetIMvtII }
				\new Staff { \timeMvtII \musicKlarinetIIMvtII }
				\new Staff { \timeMvtII \musicFagottoIMvtII }
				\new Staff { \timeMvtII \musicFagottoIIMvtII }
			>>
		>>
		\midi {
			\tempo 4 = 70
			\context {
				\Voice
				\remove "Dynamic_performer"
			}
		}
	}
}
\book {
	#(define output-suffix "groupeII")
	\score {
		<<
			\new StaffGroup <<
				\new Staff { \timeMvtII \musicHornIMvtII }
				\new Staff { \timeMvtII \musicHornIIMvtII }
				\new Staff { \timeMvtII \musicHornIIIMvtII }
				\new Staff { \timeMvtII \musicHornIVMvtII }
				\new Staff { \timeMvtII \musicTrumpetIMvtII }
				\new Staff { \timeMvtII \musicTrumpetIIMvtII }
			>>
		>>
		\midi {
			\tempo 4 = 70
			\context {
				\Voice
				\remove "Dynamic_performer"
			}
		}
	}
}
\book {
	#(define output-suffix "groupeIII")
	\score {
		<<
			\new StaffGroup <<
				\new Staff { \timeMvtII \musicSoloViolinMvtII }
				\new Staff { \timeMvtII \musicSoloCelloMvtII }
			>>
		>>
		\midi {
			\tempo 4 = 70
			\context {
				\Voice
				\remove "Dynamic_performer"
			}
		}
	}
}
\book {
	#(define output-suffix "groupeIV")
	\score {
		<<
			\new StaffGroup <<
				\new Staff { \timeMvtII \musicViolinIMvtII }
				\new Staff { \timeMvtII \musicViolinIIMvtII }
				\new Staff { \timeMvtII \musicBratscheMvtII }
				\new Staff { \timeMvtII \musicVioloncellMvtII }
				\new Staff { \timeMvtII \musicKontrabassMvtII }
			>>
		>>
		\midi {
			\tempo 4 = 70
			\context {
				\Voice
				\remove "Dynamic_performer"
			}
		}
	}
}
\book {
	#(define output-suffix "groupeV")
	\score {
		<<
			\new StaffGroup <<
				\new Staff { \timeMvtII \musicFloteIMvtII }
				\new Staff { \timeMvtII \musicFloteIIMvtII }
				\new Staff { \timeMvtII \musicOboeIMvtII }
				\new Staff { \timeMvtII \musicOboeIIMvtII }
				\new Staff { \timeMvtII \musicKlarinetIMvtII }
				\new Staff { \timeMvtII \musicKlarinetIIMvtII }
				\new Staff { \timeMvtII \musicFagottoIMvtII }
				\new Staff { \timeMvtII \musicFagottoIIMvtII }
				\new Staff { \timeMvtII \musicHornIMvtII }
				\new Staff { \timeMvtII \musicHornIIMvtII }
				\new Staff { \timeMvtII \musicHornIIIMvtII }
				\new Staff { \timeMvtII \musicHornIVMvtII }
				\new Staff { \timeMvtII \musicTrumpetIMvtII }
				\new Staff { \timeMvtII \musicTrumpetIIMvtII }
				\new Staff { \timeMvtII \musicSoloViolinMvtII }
				\new Staff { \timeMvtII \musicSoloCelloMvtII }
				\new Staff { \timeMvtII \musicViolinIMvtII }
				\new Staff { \timeMvtII \musicViolinIIMvtII }
				\new Staff { \timeMvtII \musicBratscheMvtII }
				\new Staff { \timeMvtII \musicVioloncellMvtII }
				\new Staff { \timeMvtII \musicKontrabassMvtII }
			>>
		>>
		\midi {
			\tempo 4 = 70
			\context {
				\Voice
				\remove "Dynamic_performer"
			}
		}
	}
}

