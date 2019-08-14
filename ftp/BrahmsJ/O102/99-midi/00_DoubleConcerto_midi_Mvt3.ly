% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_midi_Mvt3.ly
% Generated on : Friday 02 August 2019, 19:28:01
\include "./../03-Mvt3/m03_v01_music_FloteI.ly"
\include "./../03-Mvt3/m03_v02_music_FloteII.ly"
\include "./../03-Mvt3/m03_v03_music_OboeI.ly"
\include "./../03-Mvt3/m03_v04_music_OboeII.ly"
\include "./../03-Mvt3/m03_v05_music_KlarinetI.ly"
\include "./../03-Mvt3/m03_v06_music_KlarinetII.ly"
\include "./../03-Mvt3/m03_v07_music_FagottoI.ly"
\include "./../03-Mvt3/m03_v08_music_FagottoII.ly"
\include "./../03-Mvt3/m03_v09_music_HornI.ly"
\include "./../03-Mvt3/m03_v10_music_HornII.ly"
\include "./../03-Mvt3/m03_v11_music_HornIII.ly"
\include "./../03-Mvt3/m03_v12_music_HornIV.ly"
\include "./../03-Mvt3/m03_v13_music_TrumpetI.ly"
\include "./../03-Mvt3/m03_v14_music_TrumpetII.ly"
\include "./../03-Mvt3/m03_v15_music_Pauken.ly"
\include "./../03-Mvt3/m03_v16_music_SoloViolin.ly"
\include "./../03-Mvt3/m03_v17_music_SoloCello.ly"
\include "./../03-Mvt3/m03_v18_music_ViolinI.ly"
\include "./../03-Mvt3/m03_v19_music_ViolinII.ly"
\include "./../03-Mvt3/m03_v20_music_Bratsche.ly"
\include "./../03-Mvt3/m03_v21_music_Violoncell.ly"
\include "./../03-Mvt3/m03_v22_music_Kontrabass.ly"
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
				\new Staff { \timeMvtIII \musicFloteIMvtIII }
				\new Staff { \timeMvtIII \musicFloteIIMvtIII }
				\new Staff { \timeMvtIII \musicOboeIMvtIII }
				\new Staff { \timeMvtIII \musicOboeIIMvtIII }
				\new Staff { \timeMvtIII \musicKlarinetIMvtIII }
				\new Staff { \timeMvtIII \musicKlarinetIIMvtIII }
				\new Staff { \timeMvtIII \musicFagottoIMvtIII }
				\new Staff { \timeMvtIII \musicFagottoIIMvtIII }
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
				\new Staff { \timeMvtIII \musicHornIMvtIII }
				\new Staff { \timeMvtIII \musicHornIIMvtIII }
				\new Staff { \timeMvtIII \musicHornIIIMvtIII }
				\new Staff { \timeMvtIII \musicHornIVMvtIII }
				\new Staff { \timeMvtIII \musicTrumpetIMvtIII }
				\new Staff { \timeMvtIII \musicTrumpetIIMvtIII }
				\new Staff { \timeMvtIII \musicPaukenMvtIII }
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
				\new Staff { \timeMvtIII \musicSoloViolinMvtIII }
				\new Staff { \timeMvtIII \musicSoloCelloMvtIII }
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
				\new Staff { \timeMvtIII \musicViolinIMvtIII }
				\new Staff { \timeMvtIII \musicViolinIIMvtIII }
				\new Staff { \timeMvtIII \musicBratscheMvtIII }
				\new Staff { \timeMvtIII \musicVioloncellMvtIII }
				\new Staff { \timeMvtIII \musicKontrabassMvtIII }
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
