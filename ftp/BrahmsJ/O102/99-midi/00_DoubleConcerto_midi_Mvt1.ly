% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_midi_Mvt1.ly
% Generated on : Friday 02 August 2019, 19:28:01
\include "./../00-Common/DoubleConcerto_markup.ly"
\include "./../01-Mvt1/m01_v01_music_FloteI_C.ly"
\include "./../01-Mvt1/m01_v02_music_FloteII_C.ly"
\include "./../01-Mvt1/m01_v03_music_OboeI_C.ly"
\include "./../01-Mvt1/m01_v04_music_OboeII_C.ly"
\include "./../01-Mvt1/m01_v05_music_KlarinetI_C.ly"
\include "./../01-Mvt1/m01_v06_music_KlarinetII_C.ly"
\include "./../01-Mvt1/m01_v07_music_FagottoI_C.ly"
\include "./../01-Mvt1/m01_v08_music_FagottoII_C.ly"
\include "./../01-Mvt1/m01_v09_music_HornI_C.ly"
\include "./../01-Mvt1/m01_v10_music_HornII_C.ly"
\include "./../01-Mvt1/m01_v11_music_HornIII_C.ly"
\include "./../01-Mvt1/m01_v12_music_HornIV_C.ly"
\include "./../01-Mvt1/m01_v13_music_TrumpetI_C.ly"
\include "./../01-Mvt1/m01_v14_music_TrumpetII_C.ly"
\include "./../01-Mvt1/m01_v15_music_Pauken_C.ly"
\include "./../01-Mvt1/m01_v16_music_SoloViolin_C.ly"
\include "./../01-Mvt1/m01_v17_music_SoloCello_C.ly"
\include "./../01-Mvt1/m01_v18_music_ViolinI_C.ly"
\include "./../01-Mvt1/m01_v19_music_ViolinII_C.ly"
\include "./../01-Mvt1/m01_v20_music_Bratsche_C.ly"
\include "./../01-Mvt1/m01_v21_music_Violoncell_C.ly"
\include "./../01-Mvt1/m01_v22_music_Kontrabass_C.ly"
\include "./../00-Common/DoubleConcerto_timeMvt.ly"
\include "./../00-Common/DoubleConcerto_VoiceName.ly"
%###############################################################################
%#                          B O O K    S E C T I O N                           #
%###############################################################################
\book {
	#(define output-suffix "groupeI")
	\score {
		<<
			\new StaffGroup <<
				\new Staff { \timeMvtI \musicFloteIMvtI }
				\new Staff { \timeMvtI \musicFloteIIMvtI }
				\new Staff { \timeMvtI \musicOboeIMvtI }
				\new Staff { \timeMvtI \musicOboeIIMvtI }
				\new Staff { \timeMvtI \musicKlarinetIMvtI }
				\new Staff { \timeMvtI \musicKlarinetIIMvtI }
				\new Staff { \timeMvtI \musicFagottoIMvtI }
				\new Staff { \timeMvtI \musicFagottoIIMvtI }
			>>
		>>
		\midi {
			\tempo 2 = 60
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
				\new Staff { \timeMvtI \musicHornIMvtI }
				\new Staff { \timeMvtI \musicHornIIMvtI }
				\new Staff { \timeMvtI \musicHornIIIMvtI }
				\new Staff { \timeMvtI \musicHornIVMvtI }
				\new Staff { \timeMvtI \musicTrumpetIMvtI }
				\new Staff { \timeMvtI \musicTrumpetIIMvtI }
				\new Staff { \timeMvtI \musicPaukenMvtI }
			>>
		>>
		\midi {
			\tempo 2 = 60
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
				\new Staff { \timeMvtI \keepWithTag #'midi \musicSoloViolinMvtI }
				\new Staff { \timeMvtI \musicSoloCelloMvtI }
			>>
		>>
		\midi {
			\tempo 2 = 60
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
				\new Staff { \timeMvtI \musicViolinIMvtI }
				\new Staff { \timeMvtI \musicViolinIIMvtI }
				\new Staff { \timeMvtI \musicBratscheMvtI }
				\new Staff { \timeMvtI \musicVioloncellMvtI }
				\new Staff { \timeMvtI \musicKontrabassMvtI }
			>>
		>>
		\midi {
			\tempo 2 = 60
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
				\new Staff { \timeMvtI \musicFloteIMvtI }
				\new Staff { \timeMvtI \musicFloteIIMvtI }
				\new Staff { \timeMvtI \musicOboeIMvtI }
				\new Staff { \timeMvtI \musicOboeIIMvtI }
				\new Staff { \timeMvtI \musicKlarinetIMvtI }
				\new Staff { \timeMvtI \musicKlarinetIIMvtI }
				\new Staff { \timeMvtI \musicFagottoIMvtI }
				\new Staff { \timeMvtI \musicFagottoIIMvtI }
				\new Staff { \timeMvtI \musicHornIMvtI }
				\new Staff { \timeMvtI \musicHornIIMvtI }
				\new Staff { \timeMvtI \musicHornIIIMvtI }
				\new Staff { \timeMvtI \musicHornIVMvtI }
				\new Staff { \timeMvtI \musicTrumpetIMvtI }
				\new Staff { \timeMvtI \musicTrumpetIIMvtI }
				\new Staff { \timeMvtI \musicPaukenMvtI }
				\new Staff { \timeMvtI \keepWithTag #'midi \musicSoloViolinMvtI }
				\new Staff { \timeMvtI \musicSoloCelloMvtI }
				\new Staff { \timeMvtI \musicViolinIMvtI }
				\new Staff { \timeMvtI \musicViolinIIMvtI }
				\new Staff { \timeMvtI \musicBratscheMvtI }
				\new Staff { \timeMvtI \musicVioloncellMvtI }
				\new Staff { \timeMvtI \musicKontrabassMvtI }
			>>
		>>
		\midi {
			\tempo 2 = 60
			\context {
				\Voice
				\remove "Dynamic_performer"
			}
		}
	}
}
