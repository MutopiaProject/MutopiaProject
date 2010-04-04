\version "2.13.10"

%#(set-default-paper-size "a4")


\header {
        title = "25 Progressive Studies"
        subtitle = "Opus 60"
        piece = "No. 13"
        composer = "Fernando Sor"
        mutopiatitle = "25 Progressive Studies, No. 13"
        mutopiacomposer = "SorF"
        mutopiainstrument = "Guitar"
        style = "Baroque"
        source = "München: Verlag Gitarrefreund. 1915-17"
        comment = "From the Boije collection"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"

 footer = "Mutopia-2010/04/04-1753"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

% The score definition

melodyOne =  \relative g {
  \stemUp
  \tieUp
  \slurUp
  \override Staff.NoteCollision
    #'merge-differently-headed = ##t
  \override Staff.NoteCollision
    #'merge-differently-dotted = ##t
  
	\repeat volta 2 {
		<g e'>8 [ <a f'> <g e'> d'^4 ] | % 1
		c8-1 [ b c b ] | % 2
		a8-2 [ c-1 b d-4 ] | % 3
		c8-1 [ e ] d4-4 | % 4
		e8 [ f e d-4 ] | % 5
		c8 [ b c d ] | % 6
		a8-2 [ f' ] b, [ d-4 ] | % 7
		c4-1 d4\rest  | % 8
		d4-4 f-1 | % 9
		e4 c | % 10
		b4 d-4 | % 11
		c4 e | % 12
		d4-4 f-1 | % 13
		e4 s8 d8-4 ( | % 14
		d8)  c4-1 fis8-3 | % 15
		g4-4 s4 | % 16
		e8 [ f e d ] | % 17
		c8 [ b c b ] | % 18
		a8 [ c ] b [ d ] | % 19
		c8 [ e ]  d4 ] | % 20
		e8 [ f  e d ] | % 21
		c8 [ e ] g4-4 | % 22
		g8-4 [ f-1 ] d-4 [ b-0 ] | % 23
		c4 s8 b8\rest | % 24
		
	}
}

melodyTwo =  \relative b, {
  \stemUp
  \tieUp
  \slurUp
  
	\repeat volta 2 {
		s2 | % 1
		s2 | % 2
		s2 | % 3
		s4 b8 [ g' ] | % 4
		c,8 [ a'_2 g f_3 ] | % 5
		s2 | % 6
		s2 | % 7
		s2  | % 8
		g8\rest g4 g8 | % 9
		g8\rest g4 g8 | % 10
		g8\rest g4 g8  | % 11
		g8\rest g4 g8  | % 12
		g8\rest g4 g8  | % 13
		g8\rest g8 gis4 | % 14
		a4. c8 | % 15
		b4 r8 g8 | % 16
		s2 | % 17
		s2 | % 18
		s2 | % 19
		s2 | % 20
		s2 | % 21
		e8 [ g ] bes4 | % 22
		a4. s8 | % 23
		e8 [ g ] e4 | % 24

	}
}

melody = << \melodyOne \\ \melodyTwo >>

bass =  \relative c {
  \stemDown

	
	\repeat volta 2 {

		c4 r8 f8_3 | % 1
		e8 [ d e g ] | % 2
		f8_3 [ a_2 g f_3 ] | % 3
		e8 [ c_3 ] b4_2 | % 4
		c4 r4 | % 5
		e8 [ d e c ]  | % 6
		f8_4 [ d ] g [ f_3 ] | % 7
		e8_2 [ g ] c,4 | % 8
		b4_2 d | % 9
		c4 e | % 10
		d4 f_3 | % 11
		e4 c_3 | % 12
		b4 d | % 13
		c4 b ( | % 14
		a4 d | % 15
		r8 g8 [ g g ] | % 16
		c,8 [ a' g f ] | % 17
		e8 [ d e g ] | % 18
		f8 [ a ] g [ f ] | % 19
		e8 [ c ]  b [ g'  ] | % 20
		c,8 [ a' ] g  [ f ] | % 21
		s4 r8 e8_2 | % 22
		f4._3 g8 | % 23
		c,4 c8 s8 | % 24

	}
	
	
    
}
    
 
% The score definition
\score {
	\context Staff << 
        \time 2/4 
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
