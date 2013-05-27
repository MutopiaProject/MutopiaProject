\paper{ papersize = "letter" 
	linewidth = 165 \mm
	indent = 8 \mm
%	interscoreline = 4.0 \mm
}

\include "english.ly"
\version "2.1.30"
#(set-global-staff-size 16)

\header {
  title = "The Loreley"
  subsubtitle =""
  composer = "F. Silcher (1789-1860)"
  poet = "Heinrich Heine (1823)"
  instrument = "Voice and Piano"
  opus = "circ. 1837"
  source = ""
  copyright = "Public Domain"
  mutopiacomposer = "SilcherF"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "4/3/2004"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/04/03-438"
}

hpuI = \once \override Staff.Hairpin #'extra-offset = #'(0 . +1)
hpuII = \once \override Staff.Hairpin #'extra-offset = #'(0 . +2)
hpdI = \once \override Staff.Hairpin #'extra-offset = #'(0 . -1)
hpdII = \once \override Staff.Hairpin #'extra-offset = #'(0 . -2)
hpdIIa = \once \override Staff.Hairpin #'extra-offset = #'(0 . -2.5)
cresc = \markup { \italic "cresc." }
dim = \markup { \italic "dim." }
  
melody = \notes\relative c'' {
	\key d\major \time 6/8
	\partial 8 a8^\markup {\column <\bold {\large "Andante"} \dynamic mf >} 
%% 1-3
	a8. b16 a8 d cs b | a4. g4 g8 | fs4^\< fs8\! e^\> d e\! |
%% 4-6
	fs4. ~ fs8 r a | a8.^\mf( b16) a8 d cs b | a4. g4 g8 | 
%% 7-9	
	fs4 fs8 a( g) e | d4. ~ d8 r fs | e8.( cs16) e8 a e a |
%% 10-12
	cs4.^\cresc b4 b8 | a4 a8 gs( a) b | a4.^\dim ~ a4 a8 |
%% 13-15
	a8.( b16) a8 d( cs) b | a4( fs'8) e4 e8 | d4 d8 cs( b) cs |
%% 16-18
	d4. ~ d8 r \bar "|."
}

textA = \lyrics {  
	I know not what spell is en -- chant -- ing, 
	That makes me sad -- ly in -- clined, __
	An old __ strange leg -- end is haunt -- ing, 
	And will not leave __ my mind; __ 
	The day -- light slow -- ly is go -- ing,
	And calm -- ly flows __ the Rhine, __ 
	The moun -- tain's peak is glow -- ing,
	In eve -- ning's mel -- low shine.
}

textB = \lyrics { 
	The fair -- _ -- est maid is re -- clin -- ing,
	In daz -- zling beau -- _ -- ty there, __
	Her gild -- ed rai -- ment is shin -- ing,
	She combs her gold -- en hair; __
	With gold -- en comb __ _ she's comb -- ing,
	And as she combs __ she sings, __
	Her song __ a -- midst the gloam -- ing,
	A weird en -- chant -- ment brings. __
}

textC = \lyrics { 
	The boat -- _ -- man in __ _ his bo -- som,
	Feels pain -- ful long -- _ -- ings stir, __
	He sees __ not dan -- ger be -- fore him, 
	But ga -- zes up __ at her; __
	The wat -- ers sure __ _ must swal -- low, 
	The boat and him __ ere long, __
	And thus __ is seen the pow -- er,
	Of cru -- el Lor-e -- ley's song. __
}

upper = \notes\relative c'' {
	\key d\major \time 6/8
	\partial 8 a8
%% 1-3
	<a fs>8.( b16 a8 <d b> cs b) | <a fs>4.( <g e>4) g8 | 
		<fs d>4 fs8 <e cs>( d e) |
%% 4-6
	<fs d>4. ~ <fs d>8 r a | <a fs>8.( <b g>16 <a fs>8 <d b> <cs a> <b g>) |
		<a fs>4.( <g e>4) g8 |
%% 7-9	
	<fs d>4( fs8 <a cs,>\( g\) e) | d4. ~ d8 r fs | <e cs>8.( cs16 e8 <a e> e a) |
%% 10-12
	<<{cs4.( b4 b8)}\\{<fs d>2._\cresc}>> | <<{a4( a8 gs a b)}\\{<e, cs>4. <e d>}>> |
		<<{a4. ~ a4 a8}\\{cs,8 <e cs> <fs d> <g! e> <fs d> <e cs>}>>
%% 13-15
	<a fs>8.( b16 <a fs>8 <d b> <cs a> <b g>) | 
		<a fs>4( <fs' a,>8 <e b g>4 <e b g>8) | 
		<<{d4( d8_\dim cs b cs)}\\{<a fs>4. <g e>4.}>>
	
	<d' fs, d>4. ~ <d fs, d>8 r
}
	
lower = \notes\relative c {
	\key d\major \time 6/8
	r8^\markup {\column <\bold \large "Andante" \dynamic mf >}
%% 1-3
	d8( fs a) d,( g b) | d,( fs a) g,( b e) | a,( d a') a,( e' cs) |
%% 4-6
	d( fs a) d,( fs a) | d,(^\mf fs a) d,( g b) | d,( fs a) g,( b e) |
%% 7-9
	a,( d a') a,( e' cs) | <fs d>( a, d d,) r r | a'( e' a) cs,( a' e) |
%% 10-12
	d( fs b) d,( fs d) | e( a e) e( b' e,) | <e a,>2.^\dim
%% 13-15
	d,8( fs a) d,(^\cresc g b) | d( fs a) g,( b g) | a( d fs) a,( e' a,) |

	d( a fs d) r
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
