% -*- coding: utf-8 -*-
\version "2.10.16"

\include "defs.ly"
\include "1.ly"
\include "2.ly"
\include "3.ly"
\include "4.ly"
\include "5.ly"
\include "6.ly"
\include "7.ly"
\include "8.ly"
\include "9.ly"
\include "10.ly"
\include "11.ly"
\include "12.ly"
\include "13.ly"
\include "14.ly"
\include "15.ly"
\include "16.ly"
\include "17.ly"
\include "18.ly"
\include "19.ly"
\include "20.ly"


\header {

% -*- Mutopia Project-*--*- -*- -*- -*- -*- 
mutopiatitle = "100 Etudes"
 mutopiacomposer = "SittH"
 mutopiaopus = "32"
 mutopiainstrument = "Violin"
 date = "19th C"
 source = "Schirmer, 1907"
 style = "Romantic"
 copyright = "Creative Commons Attribution-ShareAlike 2.5"
 maintainer = "Erasmo Fernandes"
 maintainerEmail = "erasmo@violinista.org"
 maintainerWeb = "http://erasmo.info"
 lastupdated = "2007/Feb/13"
% -*- -*- -*- -*- -*- -*- -*- -*- -*- -*- -*- -*- 

title = "Hans Sitt"
subtitle  = "100 Etudes, Op. 32"
subsubtitle = "Book 1"
oddheader = "Hans Sitt - 100 Etudes, Op. 32 - book 1"
copyright =  \markup \center-align \fontsize #-3 {\line { Published under the \with-url #"http://creativecommons.org/licenses/by-sa/2.5" Creative Commons Attribution-ShareAlike license} \line { "Last update:" \lastupdated }    } 
 footer = "Mutopia-2007/02/19-929"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}


\layout {

#(set-global-staff-size 19)
}

\paper {
print-page-number = ##t
topmargin = 1 \mm
bottommargin= 4 \mm
foot-separation = 4 \mm

oddHeaderMarkup = \markup {
 \line {
 \hspace #42 \on-the-fly #not-first-page \fontsize #-3 \fromproperty #'header:oddheader
 \hspace #35 \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string

    }
}


evenHeaderMarkup = \markup {
    \line {
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      \hspace #42 \on-the-fly #not-first-page \fontsize #-3 \fromproperty #'header:oddheader
  
    }
}


oddFooterMarkup = \markup {
     \line {
      \hspace #55 \on-the-fly #first-page \tiny \fromproperty #'header:copyright

    } 
      \hspace #-10 \on-the-fly #not-first-page \on-the-fly #not-last-page \tiny \with-url #"http://mutopiaproject.org"  "http://mutopiaproject.org"
      \hspace #8  \on-the-fly #last-page \fontsize #-5 \fromproperty #'header:tagline 

  }

evenFooterMarkup = \oddFooterMarkup
} 




\book {

\score {

{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "1" \hspace #1  }
\um
}

\midi {
tempoWholesPerMinute = #(ly:make-moment 82 4)
}

\layout {  }
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "2" \hspace #1  }
\dois
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 90 4)
}
\layout { }
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "3" \hspace #1  }
\tres
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 90 4)
}
\layout { }
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "4" \hspace #1  }
\quatro
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 90 4)
}
\layout { }
}

\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "5" \hspace #1  }
\cinco
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 98 4)
}
\layout { }
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "6" \hspace #1  }
\seis
}

\midi {
tempoWholesPerMinute = #(ly:make-moment 90 4)
}
\layout { }
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "7" \hspace #1  }
\sete
}

\midi {
tempoWholesPerMinute = #(ly:make-moment 82 4)
}
\layout { }
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "8" \hspace #1  }
\oito
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 90 4)
}
\layout { }
}



\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "9" \hspace #1  }
  \nove
 }
\midi {
tempoWholesPerMinute = #(ly:make-moment 90 4)
}
\layout { }
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "10" \hspace #1  }
\dez
}

\midi {
tempoWholesPerMinute = #(ly:make-moment 104 4)
}
\layout { }
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "11" \hspace #1  }
\onze
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 98 4)
}
\layout { }
}

\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "12" \hspace #1  }
\doze
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 94 4)
}
\layout { }
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "13" \hspace #1  }
\treze
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 84 4)
}
\layout { }
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "14" \hspace #1  }
\quatorze
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 94 4)
}
\layout {
  ragged-last = ##t
}
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "15" \hspace #1  }
\quinze
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 156 8)
}
\layout { }
}


\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "16" \hspace #1  }
\dezesseis
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 90 4)
}
\layout {
  ragged-last = ##t
}

}



\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "17" \hspace #1  }
\dezessete
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 98 4)
}
\layout { }
}

\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "18" \hspace #1  }
\dezoito
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 92 4)
}
\layout { }
}



\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "19" \hspace #1  }
\dezenove
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 88 4)
}
\layout {
  ragged-last = ##t
}
}

\score {
{\set Staff.instrumentName = \markup { \fontsize #6.0 \bold "20" \hspace #1  }
\vinte
}
\midi {
tempoWholesPerMinute = #(ly:make-moment 156 8)
}
\layout {
  ragged-last = ##t
}
}

}


