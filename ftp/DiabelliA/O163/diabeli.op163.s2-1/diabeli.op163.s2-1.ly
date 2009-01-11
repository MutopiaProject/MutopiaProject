\version "2.10.10"
% $Revision: 1.4 $

\header {
    mutopiatitle = "Jugendfreuden - Sechs Sonatinen"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Opus 163-2"
    mutopiainstrument = "Piano Duet"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
    lastupdated = "2008/05/18"

 footer = "Mutopia-2008/10/09-1568"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

primoDynamics =  {
    s1\ff s1 s1 s1 s1 s8 s8\p s4 s2
	s1 s1 s1 s1 s1
	s1 s8-\markup{\italic{cresc.}} s8 s4 s2 s1 s1
	s4 s2\f s4 s1\p s1 s8\< s2 s4 s8\! s4\f s8 s8\p s2
	s4\f s4\p s2 s4 s4-\markup{\italic{cresc.}} s2 s4 s2\f s4 s4\fz s8 s8-\markup{\italic{rall.}} s8\> s4 s8\!
}

primoUp =  {
    \time 2/2
    \clef treble
    \key g \major
    \relative c''' {
        \override Score.OttavaBracket   #'padding = #2
		#(set-octavation 1)
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(left)

		% 1
		g2-1 b4.-3 c8-4
		d2-5 r4 b4
		c-4 b8. b16 a4-. d-.
		b-3-. g-. r2
		r1
		r8 g([-1 b-3 c]) d4( g,)
		
		% 2
		g2 g4 g~
		g8 g[(-1 b-3 c)] d4 d
		d4.(-5-> c8-4 a4)-2 d8. d16
		d4.(-> b8-3 g4)-1 d'8. d16
		d4.(-> c8-4 a4)-2 d8. d16
		
		% 3
		d4.(-> b8-3 g)-1 g([ b-3 d)]
		c8-4-. g([ b-3 d)] c-4-. g([ b-3 d)]
		c8.([-4 d16] b8.[-3 c16] a8.[-2 b16] g8.[-1 b16])-3
		a4-2 a8. a16 d8[(-5 c-4 a-2 b])

		% line 4
		g4 b8.-3 b16 b4 b
		b4.(-3 c8 b4) b
		b4.( c8 b4) b
		c4.(-4 b8 a4) g8[-. a]-.
		b4-3 r8 b-. c4( b8)[ ais]

		% line 5
		b4 r8 b8-. d[(-5 c) b ais]-2
		b4-3 g8.-^-1 a16 b4 g8.-^ a16
		b4 b8. b16 b4 b4
		d4.(-5 c8-4 a4)-2 c8[(-4 b)]

		\bar "|."
    }
}

primoDown =  {
    \time 2/2
    \clef treble
    \key g \major
    \relative c'' {
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(left)

		% 1
		g2-5 b4.-3 c8-2
		d2-1 r4 b4
		c-2 b8. b16 a4-. d-.
		b-3-. g-. r2
		r1
		r8 g([-5 b-3 c]) d4( g,)

		% 2
		g2 g4 g~
		g8 g[(-2 b-3 c)] d4 d
		d4.(-1-> c8-2 a4)-4 d8. d16
		d4.(-> b8-3 g4)-5 d'8. d16
		d4.(-> c8-2 a4)-4 d8. d16

		% 3
		d4.(-> b8-3 g)-5 g([ b-3 d)]
		c8-2-. g([ b-3 d)] c-2-. g([ b-3 d)]
		c4-2-^ b4-^ a-^ g-5-^
		a4-4 a8. a16 d8[(-1 c-2 a-4 b])

		% line 4
		g4 b8.-3 b16 b4 b
		b4.(-3 c8 b4) b
		b4.( c8 b4) b
		c4.(-2 b8 a4) g8[-. a]-.
		b4-3 r8 b-. c4( b8)[ ais]

		% line 5
		b4 r8 b8-. d[(-1 c) b ais]-4
		b4-3 g8.-^-5 a16 b4 g8.-^ a16
		b4 b8. b16 b4 b4
		d4.(-1 c8-2 a4)-4 c8[(-2 b)]

		\bar "|."
    }
}

secondoDynamics =  {
    s1\ff s1 s1 s2 s8 s8\p s4 s1 s1
	s1 s1 s1 s1 s1 s1
    s4-\markup{\italic{cresc.}} s4 s2 s1 s1 s4 s4\f s2 s1\p
	s1 s2 s8\< s4 s8\! s4\f s2\p s4
	s16\f s16\p s8 s4 s2 s1-\markup{\italic{cresc.}} s4 s4\f s2 s2\fz s2-\markup{\italic{rall.}}
}

secondoUp =  {
    \time 2/2
    \clef bass
    \key g \major
    \relative c' {
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(up)

		% 1
		g2-1 b4.-3 c8
		d2 r4 b-3
		c-4 b8. b16 a4-. d-.
		b-.-3 g-. r8 g[(-3 fis-2 g-3)]
		<g-1 c-4>2( <g b>4 <g ais>)
		<g-1 b-3>2~<g b>8 << {g8[( b-3 d-5)]} \\ {g,4.} >>

		% 2
		<< {d'4(-5 c) c8[(-4 b) b(-3 ais)]} \\ {g2 g4 g} >>
		<g b>2~<g b>8 d[( g-2 b-4)]
		c[(-5 b c a]-2 d[-5 c b a)]
		b[(-3 ais b g] e'[-5 d-4 b-2 g)]
		c[(-4 b c a] d[-5 c b a)]
		b[(-3 ais b d] b[) b(-1 d-2 f)]-4
		
		% 3
		e4(-3  <d-2 f-4> <c e> <d f>
		<c-1 e-3>) d-2-^ c-1-^ b-3-^
		<g a cis-4>2-^ <fis-2 a-3 c-5>-^
		<g-1 b-4>4 b8.-3 b16-2 <a b dis-4>4 <g b e-5>
		a16([-1 b fis'-5 b,] a[ b fis' b,] a[ b fis' b,] a[ b fis' b,])
		
		% 4
		g16[(-1 b-2 e b] g[ b e b] g[ b e b] e,[-1 b'-2 e b])
		fis[(-1 c'-3 e c] fis,[ c' e c] fis,[-1 a-2 e'-5 a,] fis[ a e' a,])
		fis([ b-2 dis-4 fis)] dis([-2 fis-4 dis fis] e[-3 g-5 e g] e[ g e g])
		
		% 5
		dis([-2 fis-4 dis fis] dis[ fis dis fis]) e[(-3 g-5 e g] e[ g e g])
		fis([-4 dis-2 b dis])-4 e[(-5 b-2 g-1 b]) dis[(-4 b-2 fis b]) e[(-5 b-2 g b])
		<fis b dis-4>4 <fis b dis>8. <fis b dis>16 <fis b dis>4 <fis b dis>
		<fis-2 c'-4 d-5>2 <d-1 fis-2 c'-5>2
		
		\bar "|."
    }	
}	

secondoDown =  {
    \time 2/2
    \clef bass   
    \key g \major
    \relative c, {
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(up)

		% 1
		<g g'>2 <b b'>4. <c c'>8
		<d d'>2 r4 <b b'>4
		<c c'>4 <b b'>8. <b b'>16 <a a'>4-. <d d'>-.
		<b b'>-. <g g'>-. r2
		<g' e'-1>2( <g e'-2>4 <g cis-3>)
		<g d'-2>2. <g f'-1>4

		% 2
		<g e'>2^\markup { \finger "2-1"} ( <g d'>4 <g cis>)
		<g d'-2>2~<g d'>8 r8 r4
		<< { d'1 } \\ { fis,4(-3 d-5 fis d)} >>
		<< { d'1 } \\ { g,4(-2 d-5 g d)} >>
		<< { d'1 } \\ { fis,4(-3 d fis d)} >>
		<< { d'2. } \\ { g,4(-2 d g)} >> <g, g'>4

		% 3
		g8[( g' g, g'] g,[ g' g, g')]
		g,[( g' g, g'] g,[ g' g, g')]
		g,[( g' g, g'] g,[ g' g, g')]
		g,4 <g' g'>-^ <fis fis'>-^ <e e'>-^
		<dis dis'>8 r <b b'> r <dis dis'> r <b b'> r

		% 4
		<e e'>8 r <b b'> r <e e'> r <g, g'> r
		<a a'> r <a a'> r <c c'> r <c c'> r
		<b b'> r b'-1 r b-2 r b-1 r

		% 5
		<b, b'> r b'-1 r b-2 r b-1 r
		<b, b'> r <e-3 b'> r <b b'> r <e b'> r
		<b b'>4 fis'-2-^ dis-3-^ b-4-^
		a2->-5 d-2

		\bar "|."
    }
}




\paper {
	printallheaders=##t
}

\score{
    \context PianoStaff  <<
		\set PianoStaff.instrumentName = "Secondo     " 
		\context Staff = "up"   \secondoUp
		\context Dynamics = "dynamics" \secondoDynamics
		\context Staff = "down" \secondoDown
    >>
    \layout {
		\context {
		    \type "Engraver_group"
		    \name Dynamics
		    \consists "Output_property_engraver"
      
		    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
      
		    \consists "Script_engraver"
		    \consists "Dynamic_engraver"
		    \consists "Text_engraver"
	    
		    \override TextScript #'font-size = #2
		    \override TextScript #'font-shape = #'italic
		    \override DynamicText #'extra-offset = #'(0 . 2.0)
		    \override Hairpin #'extra-offset = #'(0 . 2.0)
	    
		    \consists "Skip_event_swallow_translator"
	    
		    \consists "Axis_group_engraver"
		}
		\context {
		    \PianoStaff
		    \accepts Dynamics
		    \override VerticalAlignment #'forced-distance = #7
		}
    }
    \header {
	    title = "JUGENDFREUDEN."
	    subtitle = "Sechs Sonatinen."
	    subsubtitle = "II"
	    composer = "Anton Diabelli"
	    opus = "Op 163"

		piece = "Andante maestoso."
	}
}

  

\score{    
    \context PianoStaff <<
		\set PianoStaff.instrumentName = "Primo     " 
		\context Staff = "up"   \primoUp
		\context Dynamics = "dynamics" \primoDynamics
		\context Staff = "down" \primoDown
    >>
    \layout {
		\context {
	    	\type "Engraver_group"
	    	\name Dynamics
	    	\consists "Output_property_engraver"
      
	    	\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
      
		    \consists "Script_engraver"
		    \consists "Dynamic_engraver"
		    \consists "Text_engraver"
	    
		    \override TextScript #'font-size = #2
		    \override TextScript #'font-shape = #'italic
		    \override DynamicText #'extra-offset = #'(0 . 2.0)
		    \override Hairpin #'extra-offset = #'(0 . 2.0)
	    
		    \consists "Skip_event_swallow_translator"
	    
		    \consists "Axis_group_engraver"
		}
		\context {
		    \PianoStaff
		    \accepts Dynamics
		    \override VerticalAlignment #'forced-distance = #7
		}
    }
    \header { 
		breakbefore = ##t
		
		title = "JUGENDFREUDEN."
	    subtitle = "Sechs Sonatinen."
	    subsubtitle = "II"
	    composer = "Anton Diabelli"
	    opus = "Op 163"

		piece = "Andante maestoso."
	}
}



\score{
    \context PianoStaff  <<
		\context Staff = "up"   <<
		    \applyMusic #unfold-repeats \primoUp
		    \applyMusic #unfold-repeats \secondoUp
		>>
		\context Staff = "down" <<
		    \applyMusic #unfold-repeats \primoDown
		    \applyMusic #unfold-repeats \secondoDown
		>>
    >>    
	\midi {
    	\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
