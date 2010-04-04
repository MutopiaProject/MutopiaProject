\version "2.13.10"

%#(set-default-paper-size "a4")


\header {
        title = "25 Progressive Studies"
        subtitle = "Opus 60"
        piece = "No. 9"
        composer = "Fernando Sor"
        mutopiatitle = "25 Progressive Studies, No. 9"
        mutopiacomposer = "SorF"
        mutopiainstrument = "Guitar"
        style = "Baroque"
        source = "München: Verlag Gitarrefreund. 1915-17"
        comment = "From the Boije collection"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"

 footer = "Mutopia-2010/04/04-1749"
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
		b4 c8 cis8 d4 b4 | % 4
		f'4\rest c4 e2 | % 5
		f4\rest b,4 f'2 | % 6
		r4 e4 r4 fis4 | % 7
		s4 g4 g,,4 g'4  | % 8
	}
	
	\repeat volta 2 { 
		f'2\rest f2 | % 9
		f2\rest e2  | % 10
		f4\rest d4 f2 | %11
		f4\rest c4 e2 | % 12
		f4\rest g2 fis4 | % 13
		f4\rest f2 e4 | % 14
	 	f4\rest d4.^4  b8 [ d^4 b ] | % 15
	 	c8 e4 c8 r2 | % 16 
	}    
    }

bassOne =  \relative g {
  \stemDown

	
	\repeat volta 2 {
		b8\rest g8 [ c g] e' [ g, c g ] | % 1
		b8\rest g8 [ b g] f' [ g, b g ] | % 2
		\stemUp
		c,8 [ g' ] \stemDown e' [ g, ] \stemUp e [ g ] \stemDown c [ g ] | % 3
		s1 | % 4
		b8\rest g8 [ c g] e' [ g, c g ]   | % 5
		b8\rest g8 [ b g] f' [ g, d' g, ] | % 6
		b8\rest g4 c c c8 | % 7
		b8\rest b8 [ g' b, ] s2 | % 8
	}
	
	\repeat volta 2 { 
		b8\rest g8 [ d' g,] f' [ g, d' g, ]| % 9
		b8\rest g8 [ c g] e' [ g, c g ] | % 10
		b8\rest g8 [ d' g,] f' [ g, d' g, ]  | %11
		b8\rest g8 [ c g] e' [ g, c e ]  | % 12
		\stemUp a,,8 [ cis' ] \stemDown g' [ cis, ] \stemUp d, [ cis' ] \stemDown d [ c ] | % 13
		\stemUp g8 [ b ] \stemDown f' [ b, ] \stemUp a [ b ] \stemDown c [ b ] | % 14
		\stemUp f8 [ a ] \stemDown d [ a ] s2 | % 15
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
		r8 g4. ( g8) g4 g8  | % 4
		c,1  | % 5
		g1 | % 6
		c2 d2 | % 7
		g2  s2  | % 8
	}
	
	\repeat volta 2 { 
		b,1_2 | % 9
		c1  | % 10
		b1  | %11
		c1  | % 12
		a2 d2  | % 13
		g2 a2 | % 14
		f2_3 g2 | % 15
		r4 g4 c,4 r4 | % 16
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
