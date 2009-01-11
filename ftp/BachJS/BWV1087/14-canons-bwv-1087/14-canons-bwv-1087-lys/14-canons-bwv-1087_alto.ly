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



% fichier de sortie de l'adaptation pour Violons ALTOS
\book {
\header {
        title = "14 Kanons "
        subtitle = "über die ersten acht Fundamentalnoten der Aria aus den Goldberg-Variationen"
        subsubtitle = "Adaptation pour violons altos."
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
	
	  % canon 1 pour alto
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violaUN >>
           \new Staff << \global \violaUNAlto >>
        >>
		\header { piece = "1. Canon simplex"   }
        \layout { }
        % \midi { }
	 }
	
	% canon 2 pour alto
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violaDEUX >>
           \new Staff << \global \ViolaDEUXAlto >>
        >>
		\header { piece = "2. All' roverscio "  } 
        \layout { }
        % \midi { }
     }
	
	% canon 3 - pour altos
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinTROISAlto >>
           \new Staff << \global \violaTROIS >>
        >>
		\header { piece = "3. Canon motu recto e contrario "  } 
        \layout { }
       % \midi {  }
		}
		
	% canon 4 - pour altos
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinQuatreAlto >>
           \new Staff << \global \celloQuatreAlto >>
        >>
		\header { piece = "4. Canon motu contrario e recto " } 
        \layout { }
        % \midi {  }
		}
	% canon 5 - pour altos
	 \score {
        \new StaffGroup <<
          \new Staff << \global \violinCinqAAlto >>
           \new Staff << \global \violinCinqBAlto >>
		   \new Staff << \global \violaCinqAlto>>
		   \new Staff << \global \celloCinqAlto >>
        >>
		\header { piece = "5. Canon duplex a 4 voci  " } 
        \layout { }
        % \midi {  }
		}
	% canon 6 - pour altos
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinSixOneAlto >>
           \new Staff << \global \violinSixTwoAlto >>
		   \new Staff << \global \celloSixAlto >>
		>>
		\header { piece = "6. Canon simplex über besagtes Fundament a 3 voci  " } 
        \layout { }
        % \midi {  }
		}
	% canon 7 - pour altos
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneSeptAlto >>
           \new Staff << \global \violinTwoSeptAlto >>
           \new Staff << \global \celloSeptAlto >>
		>>
		\header {  piece = "7. Canon simplex über besagtes Fundament a 3 voci " } 
        \layout { }
       % \midi {  }
		}
		
	% canon 8 - pour altos
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneHuitAlto >>
           \new Staff << \global \violaHuitAlto >>
           \new Staff << \global \celloHuitAlto >>
		>>
		\header {  piece = "8. Canon simplex a 3 voci, il soggetto in Alto " } 
        \layout { }
       % \midi {  }
		}
	
	% canon 9 - pour altos
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneNeufAlto >>
           \new Staff << \global \violinNeufAlto >>
           \new Staff << \global \celloNeufAlto >>
		>>
		\header {  piece = "9. Canon in unisono post semifusam a 3 voci " } 
        \layout { }
      %  \midi {  }
		}
	
	% canon 10 - pour altos
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneDixAlto >>
           \new Staff << \global \violinTwoDixAlto >>
           \new Staff << \global \violaDixAlto >>
		   \new Staff << \global \celloDixAlto >>
		>>
		\header {  piece = "10. Canon alio modo per sincopationes et per ligaturas a 2 voci "} 
        \layout { }
        % \midi {  }
		}
	% canon 11 - pour altos
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneOnzeAlto >>
           \new Staff << \global \violinTwoOnzeAlto >>
           \new Staff << \global \violinThreeOnzeAlto >>
		   \new Staff << \global \violaOnzeAlto >>
		   \new Staff << \global \celloOnzeAlto >>
		>>
		\header {  piece = "11. Canon duplex über Fundament a 5 voci "} 
        \layout { }
        % \midi {  }
		}
	
		% canon 12 - pour altos
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneDouzeAlto >>
           \new Staff << \global \violinTwoDouzeAlto >>
           \new Staff << \global \violinThreeDouzeAlto >>
		   \new Staff << \global \violaDouzeAlto >>
		   \new Staff << \global \celloDouzeAlto >>
		>>
		\header {  piece = "12. Canon duplex über besagte Fundamental-Noten a 5 voci "} 
        \layout { }
       % \midi {  }
		}
		
		% canon 13 - pour altos
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneTreizeAlto >>
           \new Staff << \global \violinTwoTreizeAlto >>
           \new Staff << \global \violinThreeTreizeAlto >>
		   \new Staff << \global \violinFourTreizeAlto >>
		   \new Staff << \global \violaTreizeAlto >>
		   \new Staff << \global \celloTreizeAlto >>
		>>
		\header {  piece = "13. Canon triplex a 6 voci  "} 
        \layout { }
       % \midi {  }
		}
			
		% canon 14 - pour altos
	 \score {
        \new StaffGroup <<
           \new Staff << \global \violinOneQuatorzeAlto >>
           \new Staff << \global \violinTwoQuatorzeAlto >>
           \new Staff << \global \violaQuatorzeAlto >>
		   \new Staff << \global \celloQuatorzeAlto >>
		>>
		\header {  piece = "14. Canon a 4 voci per Augmentationem et Diminutionem  "} 
        \layout { }
        % \midi {  }
		}
}
	 
	 
