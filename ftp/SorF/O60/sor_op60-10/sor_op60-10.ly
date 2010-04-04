\version "2.13.10"

%#(set-default-paper-size "a4")


\header {
        title = "25 Progressive Studies"
        subtitle = "Opus 60"
        piece = "No. 10"
        composer = "Fernando Sor"
        mutopiatitle = "25 Progressive Studies, No. 10"
        mutopiacomposer = "SorF"
        mutopiainstrument = "Guitar"
        style = "Baroque"
        source = "München: Verlag Gitarrefreund. 1915-17"
        comment = "From the Boije collection"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"

 footer = "Mutopia-2010/04/04-1750"
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
  \partial 4
	\repeat volta 2 {
		g4
		g'4-4 e c g | % 1
		b,8 [ d ] g [ b ] s2 | % 2
		e8 [ c g e ] c [ g' c e ] | % 3
		d8-4 [ ( b) ] g [ d ] g,4_2 g' | % 4
		g'4 e c g | % 5
		b,8 [ d ] g [ b ] d4-4 f4-1 | % 6
		e4 e,,8 [ g' ] f,-1 [ a' ] g,-3 [ b' ]  | % 7
		c,8-4 [ c' ] e,8-2 [ g ] c,4 \break | % 8
	}
	
	\repeat volta 2 { 
		g'4 | % 0
		g'8-4 [ ( e ) ] cis-2 [ e ] a,-1 [ cis] a, [ ( g''-4 ] | % 9
		g8 ) [ f-1 e-0 f-1 ] d4-4 b,8-2 [ d' ]  | % 10
		c,8 [ e' ] e, [ g'-4 ] d, [ f' ] c, [ e' ] | %11
		b,8 [ d'-4] c8-1 [ fis-3 ] g8-4 r8 f,, [ g'] | % 12
		r8 g8 [ c-1 e ] g-4 [ g g g ]  | % 13
		r8 a,-2 [ b-0 cis-3 ] e4-0 d | % 14
	 	g,,8 [ g' c e ] g,, [ d''-4 f-1 b, ]  | % 15
	 	c,8 [ c' g e' ] s2 | % 16 
	}    
    }

bass =  \relative g {
  \stemDown

	
	\repeat volta 2 {
		s4
		g'8 [ c, ] e [ g, ]  c [ e, ] g [ c, ]| % 1
		b2_2 d'4-4 f-1 | % 2
		s2 c,2 | % 3
		s1 | % 4
		g''8 [ c, ] e [ g, ] c [ e, ] g [ d ] | % 5
		b2-2 d'8 [ g, ] f'8 [ g, ] | % 6
		e'8 [ c ] e,,4 f_1 g_3   | % 7
		c4_4  e4_2 c4  | % 8
	}
	
	\repeat volta 2 { 
		s4 | % 0
		s2 a'4 a, | % 9
		d2. b4  | % 10
		c4 e d c | %11
		b4 a <g b'>8 s8 f4_1  | % 12
		e1  | % 13
		f2_1 a' | % 14
	 	g,2_3 g2_3  | % 15
	 	c2_4 c | % 16 
	}
	    
    }

 
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
