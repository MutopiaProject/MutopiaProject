\paper{ papersize = "letter" 
	linewidth = 165 \mm
	indent = 8 \mm
%	interscoreline = 4.0 \mm
}

\include "english.ly"
\version "2.1.30"
#(set-global-staff-size 16)

\header {
  title = "Do They Think of Me At Home?"
  subsubtitle =""
  composer = "Charles W. Glover (1797-1868)"
  poet = "J. E. Carpenter"
  instrument = "Voice and Piano"
  opus = "circ. 1851"
  source = ""
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "3/18/2004"
  mutopiacomposer = "GloverCW"
  mutopiaopus = ""

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/03/18-437"
}

hpuI = \once \override Staff.Hairpin #'extra-offset = #'(0 . +1)
hpuII = \once \override Staff.Hairpin #'extra-offset = #'(0 . +2)
hpdI = \once \override Staff.Hairpin #'extra-offset = #'(0 . -1)
hpdII = \once \override Staff.Hairpin #'extra-offset = #'(0 . -2)
hpdIIa = \once \override Staff.Hairpin #'extra-offset = #'(0 . -2.5)
  
melody = \notes\relative c'' {
	\key f\major \time 3/4
	\partial 4 a8^\markup {\column <\bold {\large "Andante" 
		\smaller \italic "With feeling"} \dynamic p >} bf
%% 1-3
	a4. g8 a g | f2 g8 f | e^\< d'4.\! c8^\> g\! |
%% 4-6
	a2 a8 bf | a4. g8 a g | f2 f8 g |
%% 7-9	
	\times 2/3 { \hpuI a8^\<( c,) bf'\!} a4.^\> g8\! | 
		f4. r8^\mf g f | e4. e8^\< f fs |
%% 10-12
	g2\! e8 c' | b4. d,8^\> f8. e16\! | c4( bf'!8)\fermata r^\p a bf |
%% 13-15
	a4. g8 a g |f2 g8 f | e4.^\< d'8\! c g |
%% 16-18
	a2 a8 bf | c4.^\< d8 a c\! | bf2^\mf a8 g |
%% 19-20
	f8^\> c a'4. g8\! | f2 \bar "|."
}

textA = \lyrics {  
	Do they think of me at home, Do they ev -- er think of me?
	I who shared their ev -- _'ry grief, I who min -- gled in their glee?
	Have their hearts grown cold and strange, To the one now doom'd to roam?
	I would give the world to know Do they think of me at home?
	I would give the world to know Do they think of me at home? 
}

textB = \lyrics { 
	Do they think of me at eve, Of the song I used to sing?
	Is the harp I struck un -- touch'd, Does a stran -- ger wake the string?
	Will no kind for -- giv -- ing word, Come a -- cross the rag -- ing foam?
	Shall I nev -- er cease to sigh  ``Do they think of me at home?"
	Shall I nev -- er cease to sigh  ``Do they think of me at home?"
}

textC = \lyrics { 
	Do they think of how I loved, In my hap -- py, ear -- ly days?
	Do they think of him who came, But could nev -- er win their praise?
	I am hap -- py by his side, And from mine he'll nev -- er roam.
	But my heart will sad -- ly ask, ``Do they think of me at home?"
	But my heart will sad -- ly ask, ``Do they think of me at home?"
}

upper = \notes\relative c'' {
	\key f\major \time 3/4
	\partial 4 <a f c>8(
		<bf f d>)
%% 1-3
	<a e c>4. <g e bf>8([ <a e c> <g e bf>)] | <f c a>2 <g c,bf>8( <f c a>) |
		\hpdI <e bf>8(_\< <d'bf e,>4.)\! \hpdII <c g e>8(_\> <g e>)\! |
%% 4-6
	<a f c>2 <a f c>8( <bf f d>) | <a e cs>4. g8([ <a e a,> g)] |
		<f d a>2 <f b,>8( <g f b,>) |
%% 7-9	
	\times 2/3 {\hpdI <a f c>8(_\< c, bf'!)\!} <<{\hpdII a4.(_\> g8\!)}\\{e2}>> | 
		f4. r8\mf <g e>( <f d>) | <e c>4. \hpdI <e c>8_\<[ <f d> <fs ds>] |
%% 10-12
	<g e>2\! <e c>8 <c' e, c> | <b f d>4. \hpdI <d,b!>8_\>[ <f b,>8. e16\!] |
		c4( bf'!8)\fermata r8\p <a e c> <bf f d> |
%% 13-15
	<a e c>4. <g e bf>8[ <a e c> <g e bf>] | <f c a>2 <g c,>8 <f c> |
		<e bf>4._\< <d' bf e,>8[ <c e,>\! <g e>] |
%% 16-18
	<a f c>2 <a f c>8 <bf f c> | <<{\hpdII c4._\< d8[ a c\!]}\\{<fs, d>2 <fs d>4}>> |
		<d g bf>2\mf <bf f'! a>8 <bf f'g> |
%% 19-20
	<<{\hpdI <a f'>8_\> c a'4.( g8)\!}\\{s4 <e bf>2}>> | <f c a>2
}
	
lower = \notes\relative c {
	\key f\major \time 3/4
	r4^\markup {\column <\bold \large "Andante" \dynamic p >}
%% 1-3
	<c c,>4 <c c,> r | f( f,) r | <c' c,> <c c,> r |
%% 4-6
	f( f,) r | <a a,>2 <cs cs,>4 | <d d,> <d d,>( <df df,>) |
%% 7-9
	<c c,> <c c'>4. <d bf'>8 | <f a>4( f,8) r r4 | <c' g'>2 <c g'>4 |
%% 10-12
	<c g'>2 <c g'>4 | <g g'> <g g'> <g g'> | <c e g>4.\fermata r8 r4 |
%% 13-15	
	<c c,>4 <c c,> r | f( f,) <e e'>8 <f f'> | <g g'>4( c) c |
%% 16-18
	f( f,) r | <d d'> <d d'> r | <g g'>2 <df df'>4 |
%% 19-20
	<c c'> <c c'>2 | <f f'>
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
  \midi { \tempo 4=76 }  
}
