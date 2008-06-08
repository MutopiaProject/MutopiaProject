\version "2.11.46"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "14 Kanons "
        subtitle = "über die ersten acht Fundamentalnoten der Aria aus den Goldberg-Variationen"
        piece = "2. All' roverscio "
        mutopiatitle = "14 Canons - 2"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1087"
        mutopiainstrument = "Guitar"
        style = "Baroque"
        source = "Photocopy of Autograph"
	arranger = "Hajo Dezelski"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/01-1431"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


  
     voiceOne =  \relative c {
	     \set Staff.instrumentName = "Gitarre   "
	     \set Staff.midiInstrument = "acoustic guitar (nylon)"
	     \override NoteHead #'color = #red
	     s2 | % 1
	     s2 | % 2
	     s2 | % 3
	     s2 | % 4
	     r4 d'4 | % 5
	     g,4 a | % 6
	     b4 g | % 7
	     fis4 e | % 8
	     d4 d' | % 9 
	     g,4 a | % 10
	     b4 g | % 11
	     fis4 e | % 12
	     d4 d' | % 13 
	     g,4 a | % 14
	     b4 g | % 15
	     fis4 e | % 16
	     d2 \bar "|." 
     }

    voiceTwo =  \relative c {
	    \override NoteHead #'color = #blue
	    r4 d4 | % 1
	    e4 fis | % 2
	    g4 b | % 3
	    a4 g | % 4
	    d'4 r4 | % 5
	    r2 | % 6
	    r2 | % 7
	    r2 | % 8
	    r4 d,4 | % 9
	    e4 fis | % 10
	    g4 b | % 11
	    a4 g | % 12
	    d'4 d, | % 13
	    e4 fis | % 14
	    g4 b | % 15
	    a4 g | % 16
	    d'2  \bar "|."
    }

       gitarre = << \voiceOne \\ \voiceTwo >>
       
     \score {
        <<
	     \new Voice  { \clef "treble_8" \time 2/4 \key g \major \gitarre }
        >>
        \layout { }
        \midi { }
     }
