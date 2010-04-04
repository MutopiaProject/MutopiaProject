\version "2.13.10"

%#(set-default-paper-size "a4")


\header {
        title = "25 Progressive Studies"
        subtitle = "Opus 60"
        piece = "No. 6"
        composer = "Fernando Sor"
        mutopiatitle = "25 Progressive Studies, No. 6"
        mutopiacomposer = "SorF"
        mutopiainstrument = "Guitar"
        style = "Baroque"
        source = "München: Verlag Gitarrefreund. 1915-17"
        comment = "From the Boije collection"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"

 footer = "Mutopia-2010/04/04-1746"
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
	 e' [b d-4 c-1] | % 1
	 b8 a-2 r8 d8-4 | % 2
	 c8-1 b r8 g'8-4 | % 3
	 f8-1 e r8 g,8 | % 4
	 e'8 [ b d c ] | % 5
	 b a r8 d-4 | % 6
	 c8-1 b r8 e16. [ b32 ] | % 7
	 c4 r8  | % 8
	}
	
	\repeat volta 2 { 
		g8 | % 0
		g'8-4 ( f-1) r8 d8-4 | % 9
		f8-1  e-0 r8 c8 | % 10
		e8 d-4 r8 b8 | %11
		d8-4 ( c-1) r8 e8 | % 12
		d8-4 cis-2 r8 e8-0| % 13
		g8-4 f4-1 d8-4 ( | % 14
	 	d8) c4 b8 | % 15
	 	c4-1 \mark "Fine" r8 \break
	 
	}
	
	\repeat volta 2 {
		e8 | % 0
		e8 c4-1 a8-3 | % 17
	 	gis8-1 b r8 d8-4 | % 18
	 	b8 gis-1 r8 e'8 | % 19
	 	d8-4 c-1 r8 e8 | % 20
	 	f4 e | % 21
	 	d4-4 c-1  | % 22
	 	b4 a-3 | % 23
	 gis8-1 b r8 \break
    }
    
    \repeat volta 2 {
    	e8 | % 0
     	e8 gis,4-1 e'8 | % 25
     	e8 a,4-1 e'8 | % 26
     	e8 b4 e8 | % 27
     	e8 c4-1 e8 | % 28
     	g8-4 ( [f-1) d-4 b] | % 29
     	gis4 a8-2 c-1 | % 30
     	b8 f'-1 (e8) gis,-1 | % 31
     	a4-3 r8\segno | % 32 
    }
    
    }

bass =  \relative c {
  \stemDown
  \tieDown
  \slurDown
 \set fingeringOrientations = #'(down)
	
	\repeat volta 2 {
	 s8 | % 0	
	 <c-3>2 | % 1
	 r4 f4 | % 2
	 r4 g4 | % 3
	 r4 <c,-3>4 (  | % 4
	 c2 ) | % 5
	 r4 <f-3>4 | % 6
	 r4 <g-0>4 | % 7
	 r8 g8 c,8  | % 8
	}
	
	\repeat volta 2 { 
		s8 | % 0	
		r4 g'4 | % 9
		r4 g4 | % 10
		r4 g4 | %11
		r4 c,4 | % 12
		r4 a4 | % 13
		d4 <f-3> | % 14
		g4 <g,-3> | % 15
		<c-4>8 <e_2 g>8 c8 | % 16
	}
	
	\repeat volta 2 {
		r8 | % 0
	 	r4 a4 | % 17
	 	r4 <e'-2>4 | % 18
	 	r4 e,4  | % 19
	 	r4 a4 | % 20
	 	r8 <a'-2>8 r8 g8 | % 21
	 	r8 <f-3>8 r8 <e-2>8   | % 22
	 	r8 d8 r8 <dis-1>8  | % 23
	 	<e-2>4 e,8 | % 24
    }
    
    \repeat volta 2 {
    	r8 | % 0
    	r4 d'4 | % 25
     	r4 <c-2>4  | % 26
     	r4 <gis-3>4 | % 27
     	r4 a4 | % 28
     	d2  | % 29
     	r8 <e-2>8 <f-3>4  | % 30
     	d4 <e-2>4 | % 31
     	a,8 [e'_2 a,]  | % 32
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
