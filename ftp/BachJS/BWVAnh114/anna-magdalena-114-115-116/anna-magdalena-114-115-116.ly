\version "2.10.33"

\paper {
% between-system-padding = #0.1
% between-system-space = #0.1
% ragged-last-bottom = ##f
ragged-bottom = ##t
}

% Les entêtes (header) sont intégrées dans les parties book lignes 298 et 384.

% musique du 114
CentQuatorzeA= \relative c' {
  \set Staff.midiInstrument = "viola"
  \time 3/4
  \key g \major

  \repeat volta 2 {
    d4 g,8[ a b c] |
    d4 g, g |
    e' c8\mordent [ d e fis] |
    g4 g, g |
    c4\mordent d8[ c b a] | \break
    b4 c8[ b a g] |
    fis4 g8[ a b g] |
    \grace b8  a2. |
    d4 g,8[ a b c] |
    d4 g, g | \break
    e'4 c8\mordent[ d e fis] |
    g4 g, g |
    c4\mordent d8[ c b a] |
    b4 c8[ b a g] |
    a4 b8[ a g fis] |
    g2. | \break
  }
  \repeat "volta" 2 {
    b'4 g8[ a b g] |
    a4 d,8[ e fis d] |
    g4 e8[ fis g d] |
    cis4 b8[ cis] a4 |
    a8[ b cis d e fis] | \break
    g4 fis e |
    fis a, cis |
    d2. |
    d4 g,8[ fis] g4 |
    e'4 g,8[ fis] g4 | \break
    d'4 c b |
    a8[ g fis g] a4 |
    d,8[ e fis g a b] |
    c4 b\prall a |
    b8[ d] g,4 fis |
    < g  d > 2.
	
  }
}



CentQuatorzeB =  \relative c' {
   \set Staff.midiInstrument = "viola"
  \time 3/4
  \key g \major

  \repeat "volta" 2 {
  < d, g >2
	a'4 |
    b2. |
    c2. |
    b2. |
    a2. |
    g2. |
    d'4 b g |
    d' d,8[ c' b a] |
    b2 a4 |
    g b g |
    c2. |
    b4 c8[ b a g] |
    a2 fis4 |
    g2 b4 |
    c d d, |
    g2 g4 |
  }
  \repeat "volta" 2 {
    g2. |
    fis2. |
    e4 g e |
    a2 a4 |
    a2. |
    b4 d cis |
    d fis, a |
    d d, c'! |
    b4~ <b d >2 |
    c4~ <c e >2  |
    b4 a g |
    d'2 r4 |
    d2  f,4
    e4 g fis |
    g b d, |
    g d g |
  }
  \pageBreak
}
% musique du 115
centQuinzeA =  \relative c'' {
  \set Staff.midiInstrument = "viola"
  \key g \minor
  \time 3/4

  \repeat volta 2 {
    bes4 a g |
    a d, d |
    g g,8[ a bes c] |
    d2. |
    ees4 f8[ ees d c] |
    d4 ees8[ d c bes] |
    c4 d8[ c bes c] |
    a2.\prall |
    bes'4 a\prall g |
    a d, d |
    g g,8[ a bes c] |
    d2. |
    f4\mordent g8[ f ees d] |
    ees4 f8[ ees d c] |
    d4 g c,\prall |
    < bes d> 2.  |
				}
  \repeat volta 2 { 
    d4 bes8[ c d e!] |
    f4 g a |
    bes g8[ a bes g] |
    a4 g8[ a] f4 |
    f,8[ g a bes c d] |
    ees4 d c |
    f bes, a |
    bes2. |
    g4 d'8[ c] d4 |
    g, ees'8[ d] ees4 |
    g,8[ d' fis, c' g bes] |
    a2 r4 |
    d,8[ e fis g a bes] |
    c4 bes a |
    bes8\prall[ c16 d] g,4 fis |
    < g d >2.  
				} 
  \pageBreak
}

centQuinzeB =  \relative c' {
  \set Staff.midiInstrument = "viola"
  \time 3/4
  \key g \minor

  \repeat volta 2 {
    g2. |
    f |
    ees |
    d4 d'8[ c bes a] |
    g2 a4 |
    bes2 g4 |
    a fis g |
    d d'8[ c bes a] |
    g2. |
    f |
    ees |
    d4 d'8[ c b a] |
    <d b>2 g,4 |
    c a f |
    bes ees, <f a> |
    bes bes2 |
  }
  \repeat volta 2 {
    bes2. |
    a4 g f |
    g e c |
    f2 r4 |
    a g f |
    g f ees |
    d ees f |
    bes d c |
    <d b>2. |
    c |
    bes4 a g |
    d' a8[ g fis e] |
    d2 r4 |
    ees' d c |
    bes c d |
    g g2 |
  }
}

% musique du 116
CentSeizeA = \relative c' { 
  \set Staff.midiInstrument = "viola"
  \key g \major
  \time 3/4

  \repeat volta 2 {
    g8[ b d g a, fis'] |
    g4 g, g |
    g8[ b d g a, fis'] |
    g4 g, g |
    e' e e8[ g] |
    d4 d d8[ g] |
    c,4 d8[ c b c] |
    a2. |
    g8[ b d g a, fis'] |
    g4 g, g |
    g8[ b d g a, fis'] |
    g4 g, g |
    e' d8[ c b a] |
    d4 c8[ b a g] |
    \times 2/3 { a( b )c } d,4 fis |
    g2. |
  }
  \repeat volta 2 {
    g8[ a b a g fis] |
    g4 e e |
    g'8[ fis e g fis e] |
    fis4 b, b |
    g'8[ fis e g fis e] |
    fis4 b, e |
    \times 2/3 { fis8( g )a } b,4 dis |
    e dis?8[ e] fis4 |
    g g8[ fis e d] |
    e4 e8[ d c b] |
    c4 c8[ b a g] |
    fis4 e8[ fis] d4 |
    a' d, d |
    b' d, d |
    c' d8[ c b c] |
    a2. |
    g8[ b d g a, fis'] |
    g4 g, g |
    g8[ b d g a, fis'] |
    g4 g, g |
    e' d8[ c b a] |
    d4 c8[ b a g] |
    a[ b] d,4 fis |
    g2.
  }
}

CentSeizeB = \relative c' { 
  \set Staff.midiInstrument = "viola"
  \key g \major
  \time 3/4

  \repeat volta 2 {
    g2 d4 |
    g8[ b d g d b] |
    g2 d4 |
    g8[ b d g d b] |
    c4 g' c, |
    b g' b, |
    a fis' g |
    d8[ e fis d e fis] |
    g2 d4 |
    g,8[ b d g d b] |
    g2 d'4 |
    g,8[ b d g d b] |
    c4 e g |
    b, d g |
    c, c d |
    g d g, |
  }
  \repeat volta 2 {
    e'4 dis b |
    e b e, |
    e' g b |
    b,8[ dis fis b fis dis] |
    e4 g b |
    b, a' g |
    a b b, |
    e2. |
    b4 d g |
    c, d e |
    a, b c |
    d a d, |
    fis'8[ d fis d fis d] |
    g[ d g d g d] |
    fis4 d g |
    d8[ e fis d e fis] |
    g2 d4 |
    g,8[ b d g d b] |
    g2 d'4 |
    g,8[ b d g d b] |
    c4 e g |
    b, d g |
    c,2 d4 |
    g d g, |
  }
}




% partition pour violons
\book {
 
\header {
title = "Menuet BWV Anh 114 à 116"
subtitle = \markup{\italic "Adaptation pour duo de violons ou de flûtes"}

composer =  \markup{\column {\line {"Johann Sebastian Bach (1685-1750)"} 
				} }
	mutopiatitle = "Menuet BWV Anh 114,115,116 pour violons ou altos"
 	mutopiacomposer = "BachJS"
 	mutopiainstrument = "Violin, Flute"
	mutopiaopus = "BWV Anh. 114, 115, 116"
 	source = "Bach-Gesellschaft"
 	style = "Baroque"
 	copyright = "Public Domain"
 	maintainer = "Moulun Stephane"
	maintainerEmail = ""
	maintainerWeb = ""
 	lastupdated = "2009/01/01"

 footer = "Mutopia-2009/01/07-1619"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
} %end header
 
% Anh114 Violons
		\score {
		     \new StaffGroup <<
		           \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef violin \transpose c c'
				   \CentQuatorzeA  >> 
		            \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef violin \transpose c c'
				   \CentQuatorzeB  >>  
				  
		        >>
		     \layout {  }
			 \header { piece = "BWV Anh 114" 
					 }
				}
		

% Anh115 Violons
		\score {
		     \new StaffGroup <<
		           \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef violin \transpose c c'
				   \centQuinzeA  >> 
		            \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef violin \transpose c c'
				   \centQuinzeB  >>  
				  
		        >>
		     \layout {  }
			 \header { piece = "BWV Anh 115" 
					 }
				}
		
				
% Anh116 Violons
		\score {
		     \new StaffGroup <<
		           \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef violin \transpose c c'
				   \CentSeizeA  >> 
		            \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef violin \transpose c c'
				   \CentSeizeB  >>  
				  
		        >>
		     \layout {  }
			 \header { piece = "BWV Anh 116" 
					 }
				}
		
		
		
		
}

% partition pour altos 

\book {

\header {
title = "Menuet BWV Anh 114 à 116"
subtitle = \markup{\italic "Adaptation pour duo de violons altos"}

composer =  \markup{\column {\line {"Johann Sebastian Bach (1685-1750)"} 
				} }
	mutopiatitle = "Menuet BWV Anh 114,115,116 pour violons ou altos"
 	mutopiacomposer = "BachJS"
 	mutopiainstrument = "Violin, Viola"
	mutopiaopus = "BWV Anh. 114, 115, 116"
 	source = "Bach-Gesellschaft"
 	style = "Baroque"
 	copyright = "Public Domain"
 	maintainer = "Moulun Stephane"
	maintainerEmail = ""
	maintainerWeb = ""
 	lastupdated = "2009/01/01"

 footer = "Mutopia-2009/01/07-1619"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
} %end header


% Anh114
		\score {
		     \new StaffGroup <<
		           \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef alto 
				   \CentQuatorzeA  >> 
		            \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef alto 
				   \CentQuatorzeB  >>  
				  
		        >>
		     \layout {  }
			 \header { piece = "BWV Anh 114" 
					 }
				}
		\score {
		     \new StaffGroup <<
		           \new Staff << \tempo 4= 96 \CentQuatorzeA  >> 
   	               \new Staff << \tempo 4= 96 \CentQuatorzeB  >>  
							 >>
		     \midi {  }
				}

% Anh115
		\score {
		     \new StaffGroup <<
		           \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef alto 
				   \centQuinzeA  >> 
		            \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef alto 
				   \centQuinzeB  >>  
				  
		        >>
		     \layout {  }
			 \header { piece = "BWV Anh 115" 
					 }
				}
		\score {
		     \new StaffGroup <<
		           \new Staff << \tempo 4= 96 \centQuinzeA  >> 
   	               \new Staff << \tempo 4= 96 \centQuinzeB  >>  
							 >>
		     \midi {  }
				}
				
% Anh116
		\score {
		     \new StaffGroup <<
		           \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef alto 
				   \CentSeizeA  >> 
		            \new Staff << \override Score.MetronomeMark #'padding = #3 
				   \tempo 4= 96 
				   \clef alto 
				   \CentSeizeB  >>  
				  
		        >>
		     \layout {  }
			 \header { piece = "BWV Anh 116" 
					 }
				}
		\score {
		     \new StaffGroup <<
		           \new Staff << \tempo 4= 96 \CentSeizeA  >> 
   	               \new Staff << \tempo 4= 96 \CentSeizeB  >>  
							 >>
		     \midi {  }
				}
		
		
		
}


