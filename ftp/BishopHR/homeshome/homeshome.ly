\paper{ papersize = "letter" 
	linewidth = 175 \mm
	indent = 8 \mm
%	interscoreline = 18.0 \mm
}

\include "english.ly"
\version "2.1.30"
#(set-global-staff-size 17)

\header {
  title = "Home, Sweet Home"
  subsubtitle ="from Clari, the Maid of Milan (1821)"
  composer = "Sir Henry Rowley Bishop(1786-1855)"
  mutopiacomposer = "BishopHR"
  poet = "John Howard Payne (1792-1852)"
  instrument = "Voice and Piano"
  opus = "Cincinnati, 1852"
  source = ""
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "3/18/2004"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/03/18-435"
}
  
melody = \notes\relative c' {
	\key f\major \time 4/4 
	\partial 4 f8.^\markup {\column <\bold \large "Andante" \dynamic p >}( g16)
%% 1-3
	a4.( bf8) bf4.^\< c8 \!| c4.^\> a8 a4(\! c) | bf4.( a8) bf4 g |
%% 4-6
	a2. f8. g16 | a4.( bf8) bf4.^\< c8\! | c2^\> a4\! c |
%% 7-9	
	bf4.( a8) bf4 g | f2 r4 c'8\( c\) | f4.(^\mf e8) d4. c8 |
%% 10-12
	c2 a4 c | bf4.( a8) bf4^\> g\! | a2. c8\(^\< c\)\! |
%% 13-15
	f4.^\f( e8) d4. c8 | c2 a4 c | c bf2^\> g4\! |
%% 16-18
	f2. r4 | c'1^\p | bf2( g) |
%% 19-21
	f4^\< r g\! r | a2^\mf r4^\> c\! | f4.^\f( e8) d4. c8 |
%% 22-24
	c2 a4 c | bf4.^\>( a8) bf4 g\! | f2. \bar "|."
}

textA = \lyrics {  
	_'Mid pleas -- ures and pal -- a -- ces __ though __ we may roam,
	Be it ev -- er so hum -- ble there's no __ place like home.
	A __ _ charm __ from the skies seems to hal -- low us there,
	Which, _ seek __ thro' the world is ne'er met with else -- where.
}

textB = \lyrics { 
	I __ gaze __ on the moon as I __ tread __ the drear wild,
	And __ _ feel __ that my moth -- er now thinks __ of her child.
	As she looks __ on that moon from our own __ cot -- tage door,
	Thro' the wood -- bine whose fra -- grance shall cheer me no more.
%% chorus
	Home, Home, __ Home sweet home.
	There's no __ place like home,
	Oh, there's no __ place like home.
}

textC = \lyrics { 
	An __ ex -- ile from home, splen -- dor daz -- zles in vain,
	Oh __ _ give me my low -- ly thatch'd cot -- tage a -- gain.
	The __ _ birds __ sing -- ing gai -- ly that came __ at my call,
	Give me them __ and that peace of mind dear -- er than all.

}

upper = \notes\relative c' {
	\key f\major \time 4/4
	f8._\p^\markup {\bold \large "Andante"}( g16)
%% 1-3
	<a f>4.( bf8) <bf e,>4._\<( c8)\! | <c a>4._\>( a8) <a f>4(\! <c a>) |
		<bf e,>4.( a8 <bf e,>4 <g e>) |
%% 4-6
	<a f>2. f8.( g16) | <a f>4.( bf8) <bf e,>4.(_\< c8)\! | 
		<c a>2(_\>( <a f>4\!) <c a> |
%% 7-9
	<bf e,>4.( a8 <bf e,>4 <g e>) | f2 r4 c'8 ~ c |
		<<{<f a,>4.( <e c>8 <d bf>4. <c a>8)}\\{f,1_\mf}>> |
%% 10-12
	<f a c>2( a4 <a c>) | <<{bf4.( a8 bf4_\> g\!)}\\{e1}>> | 
		<a f c>2. <c f,>8(_\< c)\! |
%% 13-15
	<<{<f a,>4.( <e c>8 <d bf>4. <c a>8)}\\{f,1_\f}>> | 
		<<{<c' a>2( a4 <c a>)}\\{f,1}>> | <c' a>4( <bf e,>2_\> <g e bf>4)\!
%% 16-18
	<f c a>2. r4 | <f a c>1_\p | <d g bf>2( <d g>) |
%% 19-21
	<f c>4_\< r <g c,>\! r | <a f c>2_\mf r4_\> c\1\! |
		<<{<f a,>4.(_\f <e c>8 <d bf>4. <c a>8)}\\{f,1}>> |
%% 22-24
	<<{<c' a>2( a4 <c a>)}\\{f,1}>> | 
		\slurUp <bf e,>4.(_\> a8 <bf e,>4 <g e bf>)\! |
		<f c a>2.
}
	
lower = \notes\relative c {
	\key f\major \time 4/4
	r4
%% 1-3
	f,8( c' f c) g( c g' c,) | f,8( c' f c) f,( c' f c) | g( c g' c,) g( c g' c,) |
%% 4-6
	f,8( c' f c) f,8( c' f c) | f,8( c' f c) g( c g' c,) |f,8( c' f c) f,( c' f c) | 
%% 7-9
	g( c g' c,) c,( c' <e bf'> c) | <f a>( c a c f,4) r | 
		f8( c' <f a> c) bf( f' <bf d> f) |
%% 10-12
	f,( c' <f a> c) f,( c' <f a> c) | g( c g' c,) g( c <e bf'> c) |
		f,( c' f e d c a g)
%% 13-15	
	f( c' <f a> c) bf( f' <bf d> f) | f,( c' <f a> c) f,( c' <f a> c) |
		c,( c' g' c,) c,( c' g' c,) |
%% 16-18
	f( c a c f,4) r | r8 c'( f a c a f c) | r (bf d g bf g d bf) |
%% 19-21
	 <c f a>4 r <c e bf'> r | <f, f'>2 r | f8( c' <f a> c) (bf f' <bf d> f) |
%% 22-23
	 f,( c' <f a> c) f,( c' <f a> c) | c,( c' <e bf'> c) c,( c' g' c,) |
	 	f( c a c f,4)
}

\score {
  <<
      \context Voice = mel {
	  \autoBeamOff
	  \melody
      }
		\lyricsto mel \new Lyrics \lyrics { \set stanza = "1." \textA }
		\lyricsto mel \new Lyrics \lyrics { \set stanza = "2." \textB }
		\lyricsto mel \new Lyrics \lyrics { \set stanza = "3." \textC }
					
      \context PianoStaff <<
	  \context Staff = upper \upper
	  \context Staff = lower <<
	      \clef bass
	      \lower
	  >>
     >>
     
  >>
  \paper {
  }  
  \midi { \tempo 4=90 }  
}
