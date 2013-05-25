
\header {
 title = "Vals no. 9"
 composer = "J. Brahms (1833-1897)"
 opus = "Op. 39"
 mutopiatitle = "Vals no. 9"
 mutopiacomposer = "BrahmsJ"
 mutopiaopus = "O 39"
 mutopiainstrument = "Guitar"
 source = "Transcribed"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "P. Bozzo"
 maintainerEmail = "bozzo@mclink.it"
 lastupdated = "2002/Sep/13"

 tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
 footer = "Mutopia-2002/09/13-265"
}

\version "1.6.0.uu1"

StaffAVoiceA = \notes\relative c' {
	\clef violin
	\key g \major
	\time 3/4 
	\property Staff.instrument = #"Solo guitar"
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	\property Staff.transposing = -12
	                   
	s4 s \stemUp e'^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$"
	\repeat "volta" 2 {
		b4^"0" r g'^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$ 1" \glissando | dis!^"1" r fis^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$" \glissando |   % 4
		b,^"0" r b'^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$ 4" \glissando  | e,^"4" r c' |   % 6
		\property Voice.TextSpanner \set #'type = #'dotted-line
		\property Voice.TextSpanner \set #'edge-height = #'(0 . 1.5)
		\property Voice.TextSpanner \set #'edge-text = #'("C7 " . "")
		dis,!\spanrequest \start "text" r b' \spanrequest \stop "text"| d,!^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){3}\end{picture}$ 4" r a'^"1" |   % 8
		c, f! b, | < gis!2^"1" b^"0" > e'4 
	}
	
	\repeat "volta" 2 {
		\property Voice.TextSpanner \set #'edge-text = #'("C1 " . "")
		c4^"2" r g'^"4" | c,\spanrequest \start "text" r f!\spanrequest \stop "text" |   % 12
		bes,!^"3" r bes'!^"4" | a^"4" r a^"2" ~ |   % 14
		a b,! a'^"2" ~ | a b,! a'^"4" ~ |   % 16
		\property Voice.TextSpanner \set #'edge-text = #'("C2 " . "")
		a\spanrequest \start "text" dis,!\spanrequest \stop "text" b'^"4" ~ | \property Voice.TextSpanner \set #'edge-text = #'("C4 " . "") b\spanrequest \start "text" e,\spanrequest \stop "text" e'^"4" |   % 18
		c^"1" a a | fis r d'!^"4" |   % 20
		b^"1" r g | 
	}
	\alternative {
		{
			e4 r c'^"4"\glissando | ais!^"4" r b |   % 23
			\property Voice.TextSpanner \set #'edge-text = #'("C4 " . "")
			gis!\spanrequest \start "text" r a\spanrequest \stop "text" | fis g! e |   % 25
			< b2 dis! > e4 
		}
		{
			e4 r g^"1" 
		}
	}
	ais,!4^"2" r fis'^"4" | a,!^"3" r e' |   % 29
	\property Voice.TextSpanner \set #'edge-text = #'("C7 " . "")
	g,\spanrequest \start "text" c'^"2" fis,^"1" | < b,,2. fis' dis'! fis\fermata\spanrequest \stop "text"  >
	\bar "|." 
}
StaffAVoiceB = \notes\relative c' {
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	                   
	s2.
	\repeat "volta" 2 {
		\stemDown e,4 < e' g > r a, < a'_4 c_2 > r e, < e' g > r c_2 < e_1 a_1 > r b_1 < fis'_3 a_1 > r e, < e'_3 gis!_2 > r < a, e' > < d2 a' > e,4 e' r
	}
	\repeat "volta" 2 {
		bes!_1 < e_3 g!_0 > r a, f'! r c_2 e_1 r c_1 < fis!_2 c'_3 > r dis!_3 fis r e, s s fis < b a' > r gis! b' r a, e'' r d,! < a' c > r d, < g b > r
	}
	\alternative {
		{
			c, < g' b > r cis,!_1 < cis'!_3 e_2 > r dis,! < fis b > r < e b' > < c2 ais'! > b4 fis' r
		}
		{
			c, < g' b > r 
		}
	}
 	< cis,! g' > e r dis!_1 b_2 r c! <a2 e''> r4 b'2\fermata 
}
StaffA = \simultaneous {
	\context Voice="StaffAVoiceA" \StaffAVoiceA
	\context Voice="StaffAVoiceB" \StaffAVoiceB
}
\score {
	\simultaneous {
		\context Staff="Solo guitar" \StaffAVoiceA
		\context Staff="Solo guitar" \StaffAVoiceB
		}
	\paper {
	       }
}
\score {
	\simultaneous {
		\apply #unfold-repeats \StaffAVoiceA
		\apply #unfold-repeats \StaffAVoiceB
		}
\midi {\tempo 4=136}
}
