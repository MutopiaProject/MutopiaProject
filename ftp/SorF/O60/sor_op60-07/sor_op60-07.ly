\version "2.13.10"

%#(set-default-paper-size "a4")


\header {
        title = "25 Progressive Studies"
        subtitle = "Opus 60"
        piece = "No. 7"
        composer = "Fernando Sor"
        mutopiatitle = "25 Progressive Studies, No. 7"
        mutopiacomposer = "SorF"
        mutopiainstrument = "Guitar"
        style = "Baroque"
        source = "München: Verlag Gitarrefreund. 1915-17"
        comment = "From the Boije collection"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"

 footer = "Mutopia-2010/04/04-1747"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

% The score definition

melody =  \relative g {
  \stemUp
  \tieUp
  \slurUp
  \override Staff.NoteCollision
    #'merge-differently-headed = ##t
  \override Staff.NoteCollision
    #'merge-differently-dotted = ##t
  
	\repeat volta 2 {
		\partial 8
	 g8\segno | % 0
	 c,8 [ e-2 g ] | % 1
	 c8-1 [ e c ] | % 2
	 b8 [f'-1 d16-4 b] | % 3
	 c8-1 [e g,] | % 4
	 g8 [ e-2 g ] | % 5
	 c8-1 [ e e-4] | % 6
	 f8-1 [a,-2 b ] | % 7
	 c8 r8  | % 8
	}
	
	\repeat volta 2 { 
		s8 | % 0
		f8-1 [ cis-2 d-4 ] | % 9
		e8 [ b c-1 ] | % 10
		d8-4 [ g, b ] | %11
		\acciaccatura d8-4 c16. [ b32 c8 g8 ] | % 12
		f'4.-1 | % 13
		e8 [ b c-1 ] | % 14
	 	a8 [ d-4 b ] | % 15
	 	c8 \mark "Fine" r8 \break
	 
	}
	
	\repeat volta 2 {
		s8 | % 0
		a16-2 [c-1] f,8-3 [ a16 c ] | % 17
	 	bes16-4 [ c-1 g c-1 e,-2 c'-1 ]| % 18
	 	c,16 [c'-1] g16 [ c e,-2 c' ] | % 19
	 	f,16 [a-2 c8-1 ] c8 | % 20
	 	a16 [ c f, c' a c ] | % 21
	 	bes16 [ c g c e, c' ]  | % 22
	 	c,16 [ c' e,-2 c' g c ]  | % 23
	 	f,8-4 r8 | % 24
    }
    
    \repeat volta 2 {
    	a8-2 | % 0
     	a16. [ a32 a8 a8 ] | % 25
     	a16. [ a32 a8 a8 ]  | % 26
     	a8-2 [ d8-4 f8-1 ] | % 27
     	e8 [ cis8-3 a8-2 ] | % 28
     	a16. [ a32 a8 a8 ] | % 29
     	a16. [ a32 a8 a8 ] | % 30
     	<f^3 d'^4>8 [ <g e'>8 <gis^1 d'^4>8 ] | % 31
     	<a^2 cis^3>4 c8-1 | % 32
     	a16 [ c f, c' a c ] | % 33
     	bes16 [ c g c e, c' ] | % 34
     	c,16 [ c' g c e, c' ] | % 35
     	f,16 [ a c8 ] c8 ] | % 36
     	a16 [ c f, c' a c ] | %37
     	bes16-3 [ d-4 ] s8 d8 | % 39 
     	c16-1 [ e ] s8 e8 | % 40
     	<a, f'-1>8 r8\segno | % 41 
    }
    
    }

bass =  \relative c {
  \stemDown
  \tieDown
  \slurDown
 \set fingeringOrientations = #'(down)
	
	\repeat volta 2 {
	 s8 | % 0	
	 <c-3>4. ( | % 1
	 c4. ) | % 2
	 g'4. | % 3
	 c4.  | % 4
	 <c,-3>4. ( | % 5
	 c4.) | % 6
	 d4 g8 | % 7
	 c,4  | % 8
	}
	
	\repeat volta 2 { 
		g'8 ( | % 0	
		g4.) ( | % 9
		g4 ) r8 | % 10
		<f-3>4. | %11
		<e-2>4 r8 | % 12
		<g,-3>8 [ a <b-2> ]  | % 13
		<c-3>8 [ d <e-2> ]  | % 14
		<f-3>4 g8 | % 15
		c,8 s8 | % 16
	}
	
	\repeat volta 2 {
		<c'-1>8 | % 0
	 	a8 [ f a ] | % 17
	 	bes8 [ g <e-2> ] | % 18
	 	<c-3>4.  | % 19
	 	<f-3>4 s8 | % 20
	 	<a-2>8 [ <f-3> <a-2> ] | % 21
	 	bes8 [ <g-0> <e-2> ]   | % 22
	 	<c-3>4 s8  | % 23
	 	s4 | % 24
    }
    
    \repeat volta 2 {
    	s8 | % 0
    	a4.| % 25
     	a4. (  | % 26
     	<a a'>4. ) | % 27
     	<a a'>4. | % 28
     	a4.  | % 29
     	a4. ( | % 30
     	a4. ) | % 31
     	a4.  | % 32
     	<a'-2>8 [ <f-3> <a-2> ] | % 33
	 	<bes-4>8 [ <g-0> <e-2> ]   | % 34
	 	<c-3>4 s8 | % 35
	 	<f-3>4 s8 | % 36
	 	<a-2>8 [ <f-3> <a-2> ] | % 37
	 	bes8 [ g bes ]   | % 38
	 	c8 [ c, bes' ]   | % 39
	 	<f-3>8 s8
    }
    
    }

% The score definition
\score {
	\context Staff << 
        \time 3/8 
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
