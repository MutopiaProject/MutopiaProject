\version "2.13.10"

%#(set-default-paper-size "a4")


\header {
        title = "25 Progressive Studies"
        subtitle = "Opus 60"
        piece = "No. 12"
        composer = "Fernando Sor"
        mutopiatitle = "25 Progressive Studies, No. 12"
        mutopiacomposer = "SorF"
        mutopiainstrument = "Guitar"
        style = "Baroque"
        source = "München: Verlag Gitarrefreund. 1915-17"
        comment = "From the Boije collection"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"

 footer = "Mutopia-2010/04/04-1752"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

% The score definition

melody =  \relative d' {
  \stemUp
  \tieUp
  \slurUp
  \override Staff.NoteCollision
    #'merge-differently-headed = ##t
  \override Staff.NoteCollision
    #'merge-differently-dotted = ##t
  
	\repeat volta 2 {
		d8-3
		b8 [ g'-4 fis-2 f-1 ] | % 1
		e4. e8 | % 2
		d8-1 [ e-4 d-1 c-4 ] | % 3
		b4-0 fis'8\rest d8-3 | % 4
		b8 [ g'-4 e d-3 ] | % 5
		cis4.-2 cis8-2 | % 6
		d-2 [ dis-4 ] e-0 [ cis-2]  | % 7
		d4-3 r8  | % 8
	}
	
	\repeat volta 2 { 
		d8  | % 0
		dis8-4 [ e ] f-1 [ fis-2 ] | % 9
		g8-3 [ a-1 ] ais-2 [ b-3 ]   | % 10
		c-4 [ a-1 ] b-3 [ g-2 ] | %11
		fis-1 [ a-4 ] d,-2 r8 | % 12
		dis,16 [ d'-2 e, d' ] eis, [ d' fis, d' ] | % 13
		g,16 [ d' a d ] ais [ d b d ]  | % 14
	 	c16 [ d a d ] b [ d g, d' ]  | % 15
	 	fis,16 [ d' a d ] d,8 [ d'8 ]  | % 16 
		b8 [ g'-3 ] fis-2 f-1 ] | % 17
		e8-0 [ a-4 gis-2 g-1 ]  | % 18
 		fis8-1 [ d-2 ] e [ fis-2 ] | % 19
		g8-4 [ a-4 ] b-4 [ g, ]   | % 20
	    c8-1 [ d-4 e fis-2 ]  | % 21
	    g4-4 e8 [ <a,^2 c^1>] | % 22
	    b16. [ g32 d'8-4 ( ] d16) [ c-1 a-2 fis-4 ] | % 23
	}
	    \alternative {
	    	{ g4 g8\rest s8}
	    	{ g4. g8\rest \bar "|."}
	    }
	 	 
    }

bass =  \relative g {
  \stemDown

	
	\repeat volta 2 {
		g8\rest | % 0
		g2 | % 1
		g8\rest c8_1 [ a_2 g ] | % 2
		fis2_2 | % 3
		g8_0 [ d ] g4 | % 4
		g2 | % 5
		e8\rest bes'8_3 [ a_1 g ] | % 6
		fis4_3 g8_0 [ a_1 ] | % 7
		d,8_0 [ a' ] d,8  | % 8
	}
	
	\repeat volta 2 { 
		g8\rest 
		d2 ( | % 9
		d2 ) | % 10
		d4 d4 | %11
		d4. d8  | % 12
		dis8_1 [ e_1 ] eis_1 [fis_3 ] | % 13
		g8_0 [ a_1 ] ais_1 [b_3 ] | % 14
		c8_4 [ a_1 ] b_3 [g ] | % 15
	 	fis8_3 [ a_1 ] d,4 | % 16 
		g2 | % 17
		c2  | % 18
 		d,4 cis'8_1 [ c_1 ] | % 19
		b8 [ a_1 ] g [ f_3 ]   | % 20
	    e8_2 [ d cis_3 c_3 ]  | % 21
	    b8_1 [ g'8 ] c,4_3 | % 22
	    d4 d8 r8 | % 23
	}
	    \alternative {
	    	{r8 d8 g,8 s8 }
	    	{r8 d'8 g,8 s8 \bar "|."}
	    }
    
}
    
 
% The score definition
\score {
	\context Staff << 
        \time 2/4 
        \clef "treble_8" 
        \key g \major  
        \partial 8
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
