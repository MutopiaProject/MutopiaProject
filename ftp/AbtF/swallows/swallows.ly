\paper{ papersize = "letter" 
	linewidth = 165 \mm
	indent = 8 \mm
%	interscoreline = 4.0 \mm
}

\include "english.ly"
\version "2.1.30"
#(set-global-staff-size 16)

\header {
  title = "When the Swallows Homeward Fly"
  subtitle = ""
  subsubtitle ="(Agathe)"
  composer = "Franz Abt (1819-1885)"
  poet = ""
  instrument = "Voice and Piano"
  opus = "c. 1846"
  source = ""
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  mutopiacomposer = "AbtF"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "3/22/2004"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/03/22-439"
}

%% text is attributed in different sources to
%% G. F. Graham, C. Herlossoln, and Franz Abt.
%% An early Austrailian edition claims Graham.

hpuI = \once \override Staff.Hairpin #'extra-offset = #'(0 . +1)
hpuII = \once \override Staff.Hairpin #'extra-offset = #'(0 . +2)
hpdI = \once \override Staff.Hairpin #'extra-offset = #'(0 . -1)
hpdII = \once \override Staff.Hairpin #'extra-offset = #'(0 . -2)
hpdIIa = \once \override Staff.Hairpin #'extra-offset = #'(0 . -2.5)
cresc = \markup { \italic "cresc." }
dim = \markup { \italic "dim." }
  
melody = \notes\relative c' {
	\key g\major \time 3/4
	\partial 4 b8.^\markup {\column <\bold {\large "Andantino"} \dynamic mf >} c16
%% 1-3
	d4. g8^\< b8.\!^\> a16\! | g2 a8 e | d4\( d16\) g( fs e) d8. c16 |
%% 4-6
	b4 r b8 ds | e4.^\cresc e8 fs8. b,16 | g'2 g16( b) g( e) | 
%% 7-9	
	d8. a16 fs'4.^\dim e8 | d4 r d8. e16 | fs4. d8^cresc fs g |
%% 10-12
	a2 fs8. g16 | a4. gs8^\< a b\! | c2.^\f |  
%% 13-15
	b2^\mf \times 2/3 {\stemUp a8( b a)} \stemBoth | g2 d4 | 
		d(^\< e8 fs) g( a)\!
%% 16-18
	b2 r4 | e,^\mf b'4. a8 | d,2 g4 |
%% 19-21
	fs4^\< g a\! | b2. | d4.(^\f c8) e, a |
%% 22-24
	a2 g4 | fs b4.^\dim a8 | g2 \bar "|."
}

textA = \lyrics {  
	When the swal -- lows home -- ward fly, __ 
	When the ro -- _ -- ses scat -- ter'd lie,
	When from neith -- er hill nor dale,
	Chants the silv' -- ry night -- in -- gale,
	In these words my bleed -- ing heart,
	Would to thee its grief im -- part.
	When I __ thus thy im -- age lose,
	Can I, ah! can I e'er know re -- pose,
	Can __ I, ah! can I e'er know re -- pose.
}	

textB = \lyrics { 
	When the white swan south -- ward roves,
	To seek at noon the or -- ange groves,
	When the red tints of the west,
	Prove the sun is gone to rest,
	In these words my bleed -- ing heart,
	Would to thee its grief im -- part.
	When I __ thus thy im -- age lose,
	Can I, ah! can I e'er know re -- pose,
	Can __ I, ah! can I e'er know re -- pose.
}

textC = \lyrics { 
	My poor heart, why do you cry,
 	Once al -- so you in peace will lie!
	All things on this earth must die;
 	Will then we meet, you and I?
 	My heart asks with bod -- ing pain
 	Will faith join us once a -- gain?
  	My heart asks with bod -- ing pain
 	Will faith __ _ join us once a __ -- _ gain?
	Af -- ter to -- day's bit -- ter part -- ing pain.
}


dynamics = \notes { s4
	s4.\mf s8\< s8.\!\> s16\! | s2.*3 |
%% meas. 5
	s4^\cresc s2 | s2. | s4 s4^\dim s4 | s2.| s4 s4_\cresc s4 |
%% meas 10
	s2.| s4. s8\< s8 s8\! | s4\f s4\> s4\! | s4\mf s2 | s2. |
%% meas 15
	s4\< s4 s4\! | s2. | s4\mf s2 | s2. | s4\< s4 s4\! |
%% meas 20
	s2. | s4\f s2 | s2. | s4 s4_dim s4 | s2
	
}

upper = \notes\relative c' {
	\key g\major \time 3/4
	\partial 4 b8. c16
%% 1-3
	<d b>4.( <g b,>8 <b d,>8. <a c,>16) | <g b,>2( <fs c>8 e) |
		<d b>4( d16 g fs e d8. c16) |
%% 4-6
	b4 r b8 ds | e4.( e8 fs8. b,16) | g'2 g16( b g e) |
%% 7-9	
	\slurUp d8.( a16 fs'4. e8) | \slurBoth d4 r d8.( e16) |
		<fs d>4.( d8[ fs g)] |
%% 10-12
	<a d,>2 fs8. g16 | <a fs>4.( gs8 a b) | <c fs, d>2. | 
		
%% 13-15
	<b g d>2 \times 2/3 {<a c,>8 <b d,> <a c,>} |<g b,>2 <d b>4 | 
		<<{d4( e8 fs g a)}\\{c,2 s4}>> | 
%% 16-18
	<d g b>2 r4 | <<{e4( b'4. a8)}\\{c,2.}>> | d2( g4) |
%% 19-21
	fs( <g e> <a fs>) | <b g>2.| <d a e>4.( c8 e, a) |
%% 22-24
	<<{a2( g4)}\\{b,2.}>> | <c fs>4( <d b'>4. <c a'>8) | <b g'>2
	
	
}
	
lower = \notes\relative c {
	\key g\major \time 3/4
	r4
%% 1-3
	g8( d' g d g d) | g,( d' g d g d) | d,( d' g d fs d) | 
%% 4-6
	g,( d' g d g <a fs>) | <g e>( b, <g' e> b, <a' ds,> b,) |
		e,( e' <g b> e <g b> e) 
%% 7-9
	a,( d <fs a> d) <cs' g>([ a,)] | 
		d, <d' fs a> <d fs a> <d fs a> <d fs a> <d fs a> | 
		<d fs a> <d fs a> <d fs a> <d fs a> d e |
%% 10-12
	fs <d fs a> <d fs a> <d fs a> <d fs a> <d fs a> |
		<d fs a> <d fs a> <d fs a> <d es> <d fs> <d g!> |
		<d a'> <d fs a> <d fs a> <d fs a> <d fs a> <d fs a>
%% 13-15
	g,( d' g d fs d) | d,( d' g d g d) | d,( d' <fs a> d <fs a> d)
%% 16-18
	g,( d' g d g d) | c <e a> <e a> <e a> <e a> <e a> |
		d <g b> <g b> <g b> <g b> <g b> |
%% 19-21
	d( d' cs a c a) | g,( d' g d b g) | c,( e' <a c> e <a c> e)
%% 22-24
	d,( d' g d g d) | d,( d' fs d fs d) | g4( g,)

	
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
