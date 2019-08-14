% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_midi_Mvt2.ly
% Generated on : Friday 02 August 2019, 19:28:01
\include "./../02-Mvt2/m02_v01_music_FloteI.ly"
\include "./../02-Mvt2/m02_v02_music_FloteII.ly"
\include "./../02-Mvt2/m02_v03_music_OboeI.ly"
\include "./../02-Mvt2/m02_v04_music_OboeII.ly"
\include "./../02-Mvt2/m02_v05_music_KlarinetI.ly"
\include "./../02-Mvt2/m02_v06_music_KlarinetII.ly"
\include "./../02-Mvt2/m02_v07_music_FagottoI.ly"
\include "./../02-Mvt2/m02_v08_music_FagottoII.ly"
\include "./../02-Mvt2/m02_v09_music_HornI.ly"
\include "./../02-Mvt2/m02_v10_music_HornII.ly"
\include "./../02-Mvt2/m02_v11_music_HornIII.ly"
\include "./../02-Mvt2/m02_v12_music_HornIV.ly"
\include "./../02-Mvt2/m02_v13_music_TrumpetI.ly"
\include "./../02-Mvt2/m02_v14_music_TrumpetII.ly"
\include "./../02-Mvt2/m02_v16_music_SoloViolin.ly"
\include "./../02-Mvt2/m02_v17_music_SoloCello.ly"
\include "./../02-Mvt2/m02_v18_music_ViolinI.ly"
\include "./../02-Mvt2/m02_v19_music_ViolinII.ly"
\include "./../02-Mvt2/m02_v20_music_Bratsche.ly"
\include "./../02-Mvt2/m02_v21_music_Violoncell.ly"
\include "./../02-Mvt2/m02_v22_music_Kontrabass.ly"
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
			\tempo 4 = 80
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
			\tempo 4 = 80
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
			\tempo 4 = 80
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
			\tempo 4 = 80
			\context {
				\Voice
				\remove "Dynamic_performer"
			}
		}
	}
}
