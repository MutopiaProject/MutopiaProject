\paper{ papersize = "letter" 
	linewidth = 165 \mm
	indent = 8 \mm
%	interscoreline = 4.0 \mm
}


\include "english.ly"
\version "2.1.31"
#(set-global-staff-size 16)

\header {
  title = "Sally in Our Alley"
  composer = "Henry Carey (1687?-1743)"
  poet = "H. Carey"
  instrument = "Voice and Piano"
  opus = ""
  source = ""
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "3/10/2004"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/03/10-432"
}
  
melody = \notes\relative c' {
	\key bf\major \time 3/4 \partial 4.
 	f8^\markup {\column <\bold \large "Andante" \dynamic p >} f bf 
 	bf4( a8) bf ef c | bf4( a8) r bf4 | g8 f f4.^\markup { \italic "dim." } ef8 |
 		d bf' r^\p f f bf |
 	bf4( a8) bf ef c | bf4( a8) r bf4 | g8 f f4.^\markup { \italic "dim." } ef8 |
 		d8 bf' r f f d |
 	f4. af8 g ef | g d' ef8. d16 c8. bf16 | a8 c r^\f f,\fermata ef\fermata d\fermata |
 	d4( c8) d ef d | d4( c) r8^\f c'16 d | ef8 g, bf(^\markup { \italic "dim." } a4) f8 |
 	f8 bf4 \bar "|."
}


textA = \lyrics {  
	Of all the girls that are so smart There's none like pret -- ty Sal -- ly;
	She is the dar -- ling of my heart __ And she lives in our al -- ley.
	There's ne'er a la -- dy in this land, That's half so sweet as Sal -- ly;
	She is the dar -- ling of my heart __ And she lives down in __ our al -- ley.
}

textB = \lyrics { 
	Of all the days that's in the week, I dear -- ly love but one day; 
	And that's the day __ that comes be -- twixt __ 
	A Sat -- ur -- day and Mon -- day.
	For then I'm drest in all my best, To walk a -- broad with Sal -- ly;
	She is the dar -- ling of my heart __ And she lives down in __ our al __ ley.
}


upper = \notes\relative c' {
	\key bf\major \time 3/4 \partial 4.
 	<<{f8 f( bf)}\\{ s8 d,4}>> <c f bf>4( <c f a>8) <f bf>( <g ef'> <ef c'>) |
 		<c f bf>4( <c f a>8) r <f bf>4 | g8( f) f4. ef8 |
 		<bf d> <d bf'> r <<{f8 f( bf)}\\{ s8 d,4}>> |
 	<c f bf>4( <c f a>8) <f bf>( <g ef'> <ef c'>) |
 		<c f bf>4( <c f a>8) r <f bf>4 | g8( f) f4. ef8 |
 		<bf d> <d bf'> r f f( d) |
 	<d f>4. <<{af'8 g ef}\\{bf4.}>> | g'8 <f d'> <ef ef'>8. <f d'>16 <<{c'8. bf16}\\{g4}>> |
 		<<{a8[ c]}\\{f,4}>> r8 f\fermata[ ef\fermata d\fermata] |
 	<d bf>4( <c a>8) <d bf>( <ef c> <d bf>) | <d bf>4( <c a>) r8 <<{c'16 d}\\{g,8}>> |
 		<g ef'>8 <g ef> <<{bf8(\( a4) f8\)}\\{ef2}>> | <ef f>8 <d bf'>4
	
}

lower = \notes\relative c' {
	\key bf\major \time 3/4 \partial 4.
	r8^\markup {\column <\bold \large "Andante" \dynamic p >} bf4
	f4. d8([ c ef)] | f4 f,8 r d'4 | <<{bf'4 a2^\markup { \italic "dim." }}\\
		{ef8 d f4( f,)}>> | <bf f'>8[ bf] bf, r^\p bf''4 |
	f4( ef8[ d] c[ d16 ef)] | f4. r8 g4 | <<{bf4( a2)^\markup { \italic "dim." }}\\
		{ef8( d) c4( f,)}>> | bf4( bf,8) r d''( bf) |
	bf([ af f d^\markup { \italic "cresc." }] ef) g | <<{bf4 c8 bf g c}\\{ef,8([ d c) d] ef e}>> |
		<<{c'8[ a]}\\{f4}>> r8 <d bf'>^\f_\fermata[ <c a'>_\fermata <bf bf'>_\fermata] |
	f'4( f8) d( c d) | f2 r8^\f <ef c'>16( <d b'>) | 
		<c c'>4 <f c'>4.^\markup { \italic "dim." } <f a>8 | <f a>8 <bf bf,>4
}

\score {
  <<
      \context Voice = mel {
	  \autoBeamOff
	  \melody
      }
		\lyricsto mel \new Lyrics \lyrics { \set stanza = "1." \textA }
		\lyricsto mel \new Lyrics \lyrics { \set stanza = "2." \textB }
		
					
      \context PianoStaff <<
	  \context Staff = upper \upper
	  \context Staff = lower <<
	      \clef bass
	      \lower
	  >>
      >>
  >>
  \paper {
      \context { \RemoveEmptyStaffContext }
  }  
  \midi { \tempo 4=60 }  
}
