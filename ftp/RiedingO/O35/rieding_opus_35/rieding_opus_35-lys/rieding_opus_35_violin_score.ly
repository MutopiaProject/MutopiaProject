\version "2.14.2"

\include "header.ly"
\include "rieding_opus_35_violin.ly"


\score {
 <<

 \new Staff = "one" {
 \violinOne
 }

 >>

 \layout { }
 \midi { }
}

\score {
    
 <<

 \new Staff = "two" {
 \violinTwo
 }

 >>

 \layout { }
 \midi { }
}

\score {
    
 <<

 \new Staff = "three" {
 \violinThree
 }

 >>

 \layout { }
 \midi { }
}

