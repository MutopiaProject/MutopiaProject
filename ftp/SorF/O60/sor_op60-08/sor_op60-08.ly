\version "2.13.10"

%#(set-default-paper-size "a4")


\header {
        title = "25 Progressive Studies"
        subtitle = "Opus 60"
        piece = "No. 8"
        composer = "Fernando Sor"
        mutopiatitle = "25 Progressive Studies, No. 8"
        mutopiacomposer = "SorF"
        mutopiainstrument = "Guitar"
        style = "Baroque"
        source = "München: Verlag Gitarrefreund. 1915-17"
        comment = "From the Boije collection"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"

 footer = "Mutopia-2010/04/04-1748"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

% The score definition

melody =  \relative e' {
  \stemUp
  \tieUp
  \slurUp
  \override Staff.NoteCollision
    #'merge-differently-headed = ##t
  \override Staff.NoteCollision
    #'merge-differently-dotted = ##t
  
	\repeat volta 2 {
		f2\rest e2 | % 1
		f2\rest f2 | % 2
		r4 e2 c4 | % 3
		r4 b4 d2-4 | % 4
		f2\rest e2 | % 5
		f2\rest f2-1 | % 6
		r4 e4 r4 fis4-3 | % 7
		g2.-4 r4  | % 8
	}
	
	\repeat volta 2 { 
		f2\rest <d f-4>2 | % 9
		f2\rest <c e>2  | % 10
		f2\rest <d f>2 | %11
		f2\rest e4 g4-4 | % 12
		r4 <cis,^2 g'^4>2 fis4-2| % 13
		r4 <b, f'-1>4 r4 <c e>4 | % 14
	 	r4 <a d-4>4 r4 b4 | % 15
	 	c4 < g e'>4 <e c'>4 r4 | % 16 
	}    
    }

bassOne =  \relative g {
  \stemDown

	
	\repeat volta 2 {
		b4\rest g4 c2 | % 1
		b4\rest g4 b2  | % 2
		s4 c2 s4 | % 3
		s1 | % 4
		b4\rest g4 c g  | % 5
		b4\rest g4 b d_4 | % 6
		s4 c4 s4 c4 | % 7
		b2. s4  | % 8
	}
	
	\repeat volta 2 { 
		b4\rest g2 g4 | % 9
		b4\rest g2 g4  | % 10
		b4\rest g2 g4  | %11
		b4\rest g4 c2  | % 12
		s2. d8_3 c8_1  | % 13
		s1 | % 14
		s1 | % 15
		s1 | % 16
	}
	    
    }
    
bassTwo =  \relative c {
  \stemDown
  \tieDown
  \slurDown
	
	\repeat volta 2 {
		c1 | % 1
		d1  | % 2
		c2 e2 | % 3
		g2. g4 | % 4
		c,1  | % 5
		g1_3 | % 6
		c2_3 d2 | % 7
		r4 g4 g,4_3 s4  | % 8
	}
	
	\repeat volta 2 { 
		<b-2>1 | % 9
		c1  | % 10
		b1  | %11
		c1  | % 12
		a2 d2  | % 13
		g2 a2_2 | % 14
		f2_3 g2 | % 15
		c,2. s4 | % 16
	}
	    
 }

 bass = << \bassOne \\ \bassTwo >>
 
% The score definition
\score {
	\context Staff << 
        \time 4/4 
        \clef "treble_8" 
        \key c \major  
        \set Staff.midiInstrument ="acoustic guitar (nylon)"
        \context Voice = "melodie" { \melody }
        \context Voice = "basso"   { \bass  }
    >>
	\layout { }
 	 \midi { 
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
     }
}
