\paper{ papersize = "letter" 
	linewidth = 165 \mm
	indent = 8 \mm
%	interscoreline = 4.0 \mm
}

\include "english.ly"
\version "2.1.30"
#(set-global-staff-size 16)

\header {
  title = "The Blue Alsatian Mountains"
  subtitle = ""
  subsubtitle =""
  composer = "Stephen Adams (1844-1913)"
  arranger = "(pen name of Michael Maybrick)"
  poet = "Claribel (Charlotte Arlington Barnard) "
  instrument = "Voice and Piano"
  opus = ""
  source = ""
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "3/25/2004"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/03/25-440"
}



hpuI = \once \override Staff.Hairpin #'extra-offset = #'(0 . +1)
hpuII = \once \override Staff.Hairpin #'extra-offset = #'(0 . +2)
hpdI = \once \override Staff.Hairpin #'extra-offset = #'(0 . -1)
hpdII = \once \override Staff.Hairpin #'extra-offset = #'(0 . -2)
hpdIIa = \once \override Staff.Hairpin #'extra-offset = #'(0 . -2.5)
cresc = \markup { \italic "cresc." }
dim = \markup { \italic "dim." }
  
melody = \notes\relative c' {
	\key d\major \time 3/4
	
%% 1-3
	r2.^\markup {\bold \large "Waltz tempo"} | r4 fs g | a2 a4 | 
%% 4-6
	b2 d4  |a2. | fs4 d e | 
%% 7-9	
	fs2 fs4 | fs( e) d | a'2. ~ | 
%% 10-12
	a4 fs g | a2 a4 | b2 d4 |   
%% 13-15
	a2. | fs4 fs4. gs8 | a4( gs) fs | 
%% 16-18
	cs'2 cs4 | cs2. ~ | cs4 cs cs | 
%% 19-21
	e( cs) a | b2 cs4 | a2 r4 | 
%% 22-24
	r a gs | g2^\< a4 | cs2 b4\! | 
%% 25-27
	a2.^\> | fs4 a gs\! | g2 a4 | 
%% 28-30
	cs2 b4 | a2. | r4 fs4.^\f gs8 | 
%% 31-33
	a4( gs) fs^\cresc | cs'2 cs4 | a2.^\dim | 
%% 34-36
	fs4 fs4.^\f gs8 | a4( gs) fs | cs'2 cs4 | 
%% 37-39
	cs2. ~ | cs2\fermata d4^\f | d2 d4 | 
%% 40-42
	cs2 b4 | cs2. ~ | cs2 cs4 | 
%% 43-45
	cs2 cs4 | b2 a4 | b2. ~ | 
%% 46-48
	b4 fs^\cresc g | a2 b4 | cs2 d4 | 
%% 49-51
	fs2.^\ff | d4 fs, g | a( gs) a^> | 
%% 52-54
	b^> cs2^>\fermata | d2. ~ | d4 r r  \bar "|."
}

textA = \lyrics { 
	By the blue Al -- sa -- tian moun -- tains,
	Dwelt a maid -- en young __ and fair, __ 
	like the care -- less flow -- ing foun -- tains,
	Were the rip -- ples of her hair, __
	Were the rip -- ples of her hair;
	An -- gel mild her eyes so  win -- ing,
	An -- gel bright her hap -- py smile,
	When be -- neath the foun -- tains spin -- ning,
	You could hear her song the while __
	A -- d\'e, A -- d\'e, A -- d\'e, __
	Such songs will pass a -- way __
	Tho' the blue Al -- sa -- tian moun -- tains
	seem to watch and wait al -- way. __ 
	
}	

textB = \lyrics { 
	By the blue Al -- sa -- tian moun -- tains,
	Dwelt a stran -- ger in __ the spring, __
	And he lin -- ger'd by the foun -- tains, 
	Just to hear __ the maid -- en sing, __
	Just to hear __ the maid -- en sing;
	Just to whis -- per in the moon -- light, 
	Words the sweet -- est she had known,
	Just to charm a -- way the hours __ _
	Till her heart was all his own __
	A -- d\'e, A -- d\'e, A -- d\'e, __
	Such dreams may pass a -- way __
	But the blue Al -- sa -- tian moun -- tains
	seem to watch and wait al -- way. __ 
	
	
}

textC = \lyrics { 
	By the blue Al -- sa -- tian moun -- tains,
	Ma -- ny spring -- times bloom'd and pass'd, __
	And the maid -- en in the foun -- tains, 
	Saw she lost __ her hopes at last, __
	_ She lost __ her hopes at last;
	And she with -- ered like the flow -- er
	That is wait -- ing for the rain,
	She will nev -- er see the stran -- ger,
	Where the foun -- tains fall a -- gain __
	A -- d\'e, A -- d\'e, A -- d\'e, __
	The years have passed a -- way __
	But the blue Al -- sa -- tian moun -- tains
	seem to watch and wait al -- way. __
	
}


dynamics = \notes { 
%% meas. 1-5
	s4\mf s2 | s2.*4
%% meas 6-10
	s2.*5
%% meas 11-15
	s2.*5
%% meas 16-20
	s2.*5
%% meas 21-25
	s2.*2 s4\< s2 s2 s4\! s4\> s2
%% meas 26-30
	s2 s4\! s2.*3 s4 s4\f s4
%% meas 31-35
	s4 s4^\cresc s4 s2. s2.^\dim s4 s4\f s4 s2.
%% meas 36-40
	s2.*2 s2 s4\f s2.*2
%% meas 41-45
	s2.*5
%% meas 46-50
	s4 s4^\cresc s4 s2.*2 s2.\ff s2.
%% meas 51-54
	s2.*4
	
}

upper = \notes\relative c' {
	\key d\major \time 3/4
	
%% 1-4
	r2. | r4 fs g | <<{a2( a4 b2 d4)}\\{fs,2. g2.}>> |
%% 5-6
	<a fs>2.( | fs4 d e) |
%% 7-9	
	fs2( fs4 | fs e d) | <cs a'>2. ~ |
%% 10-12
	 <cs a'>4 fs g | <<{a2( a4 b2 d4)}\\{fs,2. g2.}>> |
%% 13-15
	<a fs>2.( | fs4) fs4. gs8 | a4( gs) fs |
%% 16-18
	cs'2 <cs gs es>4 | <cs a fs>2.( | <cs a>4) cs cs |
%% 19-21
	<<{<e cs e,>( cs a b2 cs4)}\\{s2. <gs d>2.}>> | <a e cs>2 r4 |
%% 22-24
	r <a fs>( <gs es>) | <g e>2( <a fs>4 | <cs a>2 <b g>4) |
%% 25-27
	<a fs>2.( | fs4 <a fs> <gs es>) |<g e>2( <a fs>4 |
%% 28-30
	<cs a>2 <b g>4) | <a fs>2. | r4 fs4.( gs8) |
%% 31-33
	a4( gs) fs | <<{cs'2 cs4}\\{<gs es>2.}>> | <a fs>2.( |
%% 34-36
	fs4) fs4.( gs8) | a4( gs) fs | <es gs cs>2 <es gs cs>4 |
%% 37-38
	<fs a cs>2.( | <e g cs>2)\fermata d'4 | 
%% 39-42
	<<{d2( d4 cs2 b4)}\\{fs2. fs}>> | <g cs>2. ~ <g cs>2 <<{cs4(
%% 43-45
	cs2 cs4 b2 a4)}\\{s4 g2. g2.}>> | <b g>2.( |
%% 46-48
	<a fs>4) fs( g) | <<{a2( b4 cs2 d4)}\\{fs,2. g2 fs4}>> |
%% 49-51
	<a d fs>2.( | <fs a d>4) fs( g) | <a fs>( <gs es>) <a fs>^> |
%% 52-54
	<b g d>^> <cs g e>2^>\fermata | <d a fs>2. ~ | <d a fs>4 r r |
}
	
lower = \notes\relative c {
	\key d\major \time 3/4
	
%% 1-3
	d4 <fs a d> <fs a d> | d <fs a d> <fs a d> | d <fs a d> <fs a d> |
%% 4-6
	g, <g' b d> <g b d> | d <fs a d> <fs a d> | a, <fs' a d> <fs a d> |
%% 7-9
	d <fs a d> <fs a d> | a, <fs' a> <fs a> | a, <e' g a> <e g a> |
%% 10-12
	a, <e' g a> <e g a> | d <fs a d> <fs a d> | g, <g' b d> <g b d> | 
%% 13-15
	d <fs a d> <fs a d> | a, fs'4. gs8 | a4 gs fs |
%% 16-18
	cs'2 cs,4 | fs r r | <f f,>2.( |
%% 19-21
	<e e,>4) r r | e( e,2 | a4) a' a |
%% 22-24
	a a a | a, a' a | a a a |
%% 25-27
	a, a' a | a a a | a, a' a |
%% 28-30 
	a a a | d a fs | d fs4.( gs8) |
%% 31-33
	a4( gs) fs | cs2 cs4 | <fs fs,>2. ~ |
%% 34-36
	<fs fs,>4 fs4.( gs8) | a4( gs) fs | cs2 cs4 |
%% 37-39
	<fs fs,>2. | a,2_\fermata r4 | d <fs a d> <fs a d> |
%% 40-42
	a, <fs' a d> <fs a d> | e <g a> <g a> | a, <g' a> <g a> |
%% 43-45
	e <g a> <g a> | a, <e' g cs> <e g cs> | a,_> b_> cs_> |
%% 46-48
	d r r | d <fs a> <es gs> | a, <e'! g!> <d fs> |
%% 49-51
	a a' a | a a a | <fs d a> r r |
%% 52-54
	e a,2_\fermata | d4( a fs | d) r r |
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
	  \context Dynamics = dynamics \dynamics
	  \context Staff = lower <<
	      \clef bass
	      \lower
	  >>
%	  \context Dynamics=pedal \pedal
     >>
     
  >>
	\paper {
    \context {
      \type "Engraver_group_engraver"
      \name Dynamics
      \alias Voice % So that \cresc works, for example.
      \consists "Output_property_engraver"
      
      minimumVerticalExtent = #'(-1 . 1)
      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")
      
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "Dynamic_engraver"
      \consists "Text_engraver"

      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic
      \override DynamicText #'extra-offset = #'(0 . 2.5)
      \override Hairpin #'extra-offset = #'(0 . 2.5)

      \consists "Skip_event_swallow_translator"

      \consistsend "Axis_group_engraver"
    }
    \context {
      \PianoStaffContext
      \accepts Dynamics
      \override VerticalAlignment #'forced-distance = #7
    }
  }
  \midi {
  	\tempo 4=120
    \context {
      \type "Performer_group_performer"
      \name Dynamics
      \consists "Piano_pedal_performer"
      \consists "Span_dynamic_performer"
      \consists "Dynamic_performer"
    }
    \context {
      \PianoStaffContext
      \accepts Dynamics
    }
  }
}
