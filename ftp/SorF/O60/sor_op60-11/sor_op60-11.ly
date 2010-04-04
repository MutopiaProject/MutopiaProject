\version "2.13.10"

%#(set-default-paper-size "a4")


\header {
        title = "25 Progressive Studies"
        subtitle = "Opus 60"
        piece = "No. 11"
        composer = "Fernando Sor"
        mutopiatitle = "25 Progressive Studies, No. 11"
        mutopiacomposer = "SorF"
        mutopiainstrument = "Guitar"
        style = "Baroque"
        source = "München: Verlag Gitarrefreund. 1915-17"
        comment = "From the Boije collection"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"

 footer = "Mutopia-2010/04/04-1751"
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
  %  	
		g8 \segno [ b d, ] g'4.-4 | % 1
        fis4. d,4 s8 | % 2
		g'4. s4.	 | % 3
		c,8-1 [ a-2 fis-4 ] d-0 [ a'-2 fis-4 ]   | % 4
		g8 [ b d, ] s4. | % 5
		fis'4.  d,8 [ c' a ] | % 6
		g8 [ b g'-4 ] ( e )[ c-1 a-2 ]   | % 7
		d,8 [ c'-1 fis-3 ] s4. | % 8
		d,8 [ a'-1 d-3 ] fis4.-2 | % 9
		d,8 [ g b ] e4. | % 10
		d,8 [ a'-1 cis-2 ] e [ g-4 e ] | % 11
		d8 [ fis-3 e-0 ] cis-2 [ (d-3) b ] | % 12
		d,8 [ a'-1 d-3 ] fis4.-2 | % 13
		d,8 [ gis-1 b-0 ] e4.-0 | % 14
		d,8 [ g-0 cis-1 ] e [ a-4 cis, ] | % 15
		<fis,-3 d'-2>4 r8 d''4 r8 | % 16
		b,8-2 [ d-1 d, ] b' [ d d, ] | % 17
		b'8 [ d d, ] a'-2 [ c-1 d, ] | % 18
		a'8 [ c d, ] a' [ c d, ] | % 19
		a'8 [ c d, ] g [ b d, ] | % 20
		g8 [ b d, ] b'-2 [ d-1 d, ] | % 21
		a'8-2 [ c-1 d, ] fis-4 [ a-2 d, ] | % 22
		g8 [ b d, ] a' [ c d, ] | % 23
		g8 [ b d, ] fis-3 [ a-1 d, ] | % 24
		b'8-2 [ d-1 d, ] b' [ d d, ] | % 25
		b'8 [ d d, ] ais'-2 [ cis-1 d, ] | % 26
		a'8-2 [ c-1 d, ] a' [ c d, ] | % 27
		a'8 [ c d, ] g [ b d, ] | % 28
		b'8-2 [ d-1 d, ] c'-3 [ e-4 d, ] | % 29
		b'8-2 [ d-1 d, ] ais'-2 [ cis-1 d, ] | % 30
		a'8-2 [ c-1 d, ] g [ b d, ] | % 31
		fis8 [ a-1 d, ~ ] d'8-2 r8 \segno s8 \bar "|." % 32
		
}
	


bass =  \relative g {
  \stemDown
		g2. | % 1
		fis'8-3 [ a,-2 c-1 ] s4 fis8  | % 2
	    g8 [ d, g ] b [ d-3 b ] | % 3
		s2.| % 4
		g4. g'4. | % 5
		fis8 [ a, c ] d,4. | % 6
		g4. s4.   | % 7
		d4. <g b g'-4>4 \mark "Fin." r8 \bar "||" % 8
		d2. | % 9
		d2. | % 10
		d2. ( | % 11
		d2.) | % 12
		d2. | % 13
		d2. | % 14
		d2. | % 15
		s4. d4 s8 | % 16
		b'4. b4. | % 17
		b4. a4. | % 18
		a4. a4. | % 19
		a4. g4. | % 20
		g4. b4. | % 21
		a4. fis4. | % 22
		g4. a4. | % 23
		g4. fis4. | % 24
		b4. b4. | % 25	
		b4. ais4. | % 26
		a4. a4. | % 27
		a4. g4. | % 28
		b4. c4. | % 29
		b4. ais4. | % 30
		a4. g4. | % 31
		fis4. d8 s4 | % 32
	    
    }

 
% The score definition
\score {
	\context Staff << 
        \time 6/8 
        \clef "treble_8" 
        \key g \major  
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
