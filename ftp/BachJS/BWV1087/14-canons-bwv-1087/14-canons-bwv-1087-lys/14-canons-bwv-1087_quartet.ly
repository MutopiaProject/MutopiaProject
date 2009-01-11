\version "2.10.33"

\paper {
     page-top-space = #0.0
    indent = 0.0
    line-width = 18.0\cm
     ragged-bottom = ##t
     ragged-last-bottom = ##f
}

 #(set-default-paper-size "a4")

 #(set-global-staff-size 19)


     global= {
       \time 2/4
       \key g \major
     }

 \include "canon-1.ly"
 \include "canon-2.ly"
 \include "canon-3.ly" 
 \include "canon-4.ly" 
 \include "canon-5.ly" 
 \include "canon-6.ly" 
 \include "canon-7.ly"
 \include "canon-8.ly"  
 \include "canon-9.ly"  
 \include "canon-10.ly"  
 \include "canon-11.ly"
 \include "canon-12.ly"
 \include "canon-13.ly"
 \include "canon-14.ly"


\book {

\header {
        title = "14 Kanons "
        subtitle = "über die ersten acht Fundamentalnoten der Aria aus den Goldberg-Variationen"
        
        mutopiatitle = "14 Canons"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1087"
        mutopiainstrument = "Violin, Viola, Cello"
        style = "Baroque"
        source = "Photocopy of Autograph"
        copyright = "Public Domain"
        maintainer = "Moulun Stéphane"
        maintainerEmail = ""
	
 footer = "Mutopia-2009/01/07-1620"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
     % canon 1
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violaUN >>
           \new Staff << \global \celloUN >>
        >>
		\header { piece = "1. Canon simplex" }
        \layout { }
        \midi { }
	 }
	
	% canon 2
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violaDEUX >>
           \new Staff << \global \celloDEUX >>
        >>
		\header { piece = "2. All' roverscio " } 
        \layout { }
        \midi { }
     }
	% canon 3
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinTROIS >>
           \new Staff << \global \violaTROIS >>
        >>
		\header { piece = "3. Canon motu recto e contrario " } 
        \layout { }
        \midi {  }
		}
	% canon 4
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinQuatre  >>
           \new Staff << \global \celloQuatre >>
        >>
		\header { piece = "4. Canon motu contrario e recto " } 
        \layout { }
        \midi {  }
		}
	
	% canon 5
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinCinqA >>
           \new Staff << \global \violinCinqB >>
		   \new Staff << \global \violaCinq >>
		   \new Staff << \global \celloCinq >>
        >>
		\header { piece = "5. Canon duplex a 4 voci  " } 
        \layout { }
        \midi {  }
		}
	% canon 6
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinSixOne >>
           \new Staff << \global \violinSixTwo >>
		   \new Staff << \global \celloSix >>
		>>
		\header { piece = "6. Canon simplex über besagtes Fundament a 3 voci  " } 
        \layout { }
        \midi {  }
		}
		
	% canon 7
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneSept >>
           \new Staff << \global \violinTwoSept >>
           \new Staff << \global \celloSept >>
		>>
		\header {  piece = "7. Canon simplex über besagtes Fundament a 3 voci " } 
        \layout { }
        \midi {  }
		}
	
	% canon 8
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneHuit >>
           \new Staff << \global \violaHuit >>
           \new Staff << \global \celloHuit >>
		>>
		\header {  piece = "8. Canon simplex a 3 voci, il soggetto in Alto " } 
        \layout { }
        \midi {  }
		}
	
	% canon 9
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneNeuf >>
           \new Staff << \global \violinNeuf >>
           \new Staff << \global \celloNeuf >>
		>>
		\header {  piece = "9. Canon in unisono post semifusam a 3 voci " } 
        \layout { }
        \midi {  }
		}
		
	% canon 10
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneDix >>
           \new Staff << \global \violinTwoDix >>
           \new Staff << \global \violaDix >>
		   \new Staff << \global \celloDix >>
		>>
		\header {  piece = "10. Canon alio modo per sincopationes et per ligaturas a 2 voci "} 
        \layout { }
        \midi {  }
		}
	
	% canon 11
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneOnze >>
           \new Staff << \global \violinTwoOnze >>
           \new Staff << \global \violinThreeOnze >>
		   \new Staff << \global \violaOnze >>
		   \new Staff << \global \celloOnze >>
		>>
		\header {  piece = "11. Canon duplex über Fundament a 5 voci "} 
        \layout { }
        \midi {  }
		}
		
		% canon 12
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneDouze >>
           \new Staff << \global \violinTwoDouze >>
           \new Staff << \global \violinThreeDouze >>
		   \new Staff << \global \violaDouze >>
		   \new Staff << \global \celloDouze >>
		>>
		\header {  piece = "12. Canon duplex über besagte Fundamental-Noten a 5 voci "} 
        \layout { }
        \midi {  }
		}
		
		% canon 13
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneTreize >>
           \new Staff << \global \violinTwoTreize >>
           \new Staff << \global \violinThreeTreize >>
		   \new Staff << \global \violinFourTreize >>
		   \new Staff << \global \violaTreize >>
		   \new Staff << \global \celloTreize >>
		>>
		\header {  piece = "13. Canon triplex a 6 voci  "} 
        \layout { }
        \midi {  }
		}
		
		% canon 14
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneQuatorze >>
           \new Staff << \global \violinTwoQuatorze >>
           \new Staff << \global \violaQuatorze >>
		   \new Staff << \global \celloQuatorze >>
		>>
		\header {  piece = "14. Canon a 4 voci per Augmentationem et Diminutionem  "} 
        \layout { }
        \midi {  }
		}
}

