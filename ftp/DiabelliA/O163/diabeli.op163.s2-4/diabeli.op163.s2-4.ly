\version "2.10.10"
% $Revision: 1.5 $

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

 footer = "Mutopia-2008/10/09-1571"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

primoDynamics =  {
	s4\p s1 s1 s1 s1 s1
	s1 s1 s1 s8\< s2. s8\! s1\f s1 s2 s4 s4\p
	%%
	s1 s1 s1 s1 s1
	s1 s1 s1 s1 s1
	s1 s1 s2-\markup{\italic{cresc.}} s8 s8\< s8 s8\! s1\f s1
	s2 s4 s4\p s1 s1 s1 s1
	s2 s4 s4\p s1 s1 s1 s1
	s1 s2 s8 s8\< s8 s8\! s1\f s2 s8 s4.\p s1 s1
	s1 s4 s2\f s4 s1 s1\ff s1 s1
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

		% line 1
		\repeat "volta" 2 {
			\partial 8*2 <g-1 b-3>8[-. <a-2 c-4>]-. 
			<b-3 d-5> r <g-1 b-3> r <a-2 c-4> r a-2 r
			b-3 r g4-1-> r8 g[-. a-. b]-.
			c-4 r a r b-3 r g r
			a-2 r d4-5-> r <g,-1 b-3>8[-. <a c-4>]-.
			<b d-5> r <g b-3> r <a c-4> r a-2 r

			% line 2
			b8-3 r g4-1-> r8 g[-. a-. b]-.
			a8-2 r a r a r a r
			a4(-2 d8)-5 r r d[-. cis-. b]-.
			a8-2 r a r a4( b8 cis)
			d-. r a8([-2 b16 cis]) d8-. r a8([-2 b16 cis])
			d4 r r2
			r2 r4			
		}
		g,8[-1-. b]-3-.

		%% line 3 (page 2)
		d8-5 r b-3 r b r g r
		g r c4->-4 r8 c[-. b-. c]-.
		d8-5 r b r b-3 r g r
		g8 r c4->-4 r8 c[-. d-. c]-.
		b8-3 r b r d-5 r b r
		
		%% line 5
		c-4 r a4->-2 r8 a[-. b-. c]-.
		b-3 r b r d r b r
		c-4 r a4-2-> r8 a[-. a-. b]-.
		c8 r a-2 r d-5 r c r
		bes-3 r g4-1-> r8 g[-. g-. a]-.

		%% line 6
		bes8 r bes r c r bes r
		bes r g4-1-> r8 g[-. g-. a]-.
		bes8 r g r bes[(-3 c16 bes] a8[) g]-.
		a8-2 r d4-5-> r8 bes8[-3-. a-. g]-.
		a r d4-5-> r8 bes[-3-. a-. g]-.
		
		%% line 7
		d'4-5 r r <g, b-3>8[-. <a c-4>]
		<b d-5> r <g b-3> r <a c-4> r a-2 r
		b-3 r g4->-1 r8 g[-. a-. b]-.
		c8-4 r a r b-3 r g r
		a-2 r d4->-5 r <g, b-3>8[-. <a c-4>]-.

		%% Folha 3
		%% line 8
		d4-5 r r <g, b-3>8[-. <a c-4>]-.
		<b d-5> r <g b-3> r <a c-4> r a-2 r
		b-3 r g4-1-> r8 g[-. a-. b]-.
		c-4 r a r b-3 r g r
		a-2 r d4->-5 r <g, b-3>8[-. <a c-4>]-.
		
		%% line 9
		<b d-5> r <g b-3> r <a c-4> r a-2 r
		b-3 r g4-1-> r8 g[-. a-. b]-.
		c-4 r c r b r a r
		g4 r r8 d'[-5-. c-. b]-.
		a-2 r a r a r a r
		b4(-3-> d8) r r d[-5-. c-. b]-.
		
		%% line 10 
		a8-2 r d-5 r a r d r
		g,-1 r d'([-5 c16-4 a])-2 g8-1 r d'([ c16 a])
		g8 r <a-2 c-4 d-5> r <g-1 b-3 d-5> r <a-2 c-4 d-5> r
		g[-1-. b-3-. d-5-. b]-.-3 g[-1-. b-. d-. b]-.
		g4 r <g-1 b-3 d-5> r
		g1-1 \fermata

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

		\repeat "volta" 2 {
			% line 1
			\partial 8*2 <g-5 b-3>8[-. <a-4 c-2>]-. 
			<b-3 d-1> r <g-5 b-3> r <a-5 c-2> r a-2 r
			b-3 r g4-5-> r8 g[-. a-. b]-.
			c-2 r a r b-3 r g r
			a-4 r d4-1-> r <g,-5 b-3>8[-. <a-4 c>]-.
			<b-3 d> r <g-5 b> r <a-4 c> r a-5 r
			
			% line 2
			b8-3 r g4-5-> r8 g[-. a-. b]-.
			a8-4 r a r a r a r
			a4(-4 d8)-1 r r d[-. cis-. b]-.
			a8-4 r a r a4( b8 cis)
			d-. r a8([-4 b16 cis]) d8-. r a8([-4 b16 cis])
			d4 r r2
			r2 r4			
		}
		g,8[-5-. b]-3-.

		%% line 3 (page 2)
		d8-1 r b-3 r b r g r
		g r c4->-2 r8 c[-. b-. c]-.
		d8-1 r b r b-3 r g r
		g8 r c4->-2 r8 c[-. d-. c]-.
		b8-3 r b r d-1 r b r
		
		%% line 5
		c-2 r a4->-4 r8 a[-. b-. c]-.
		b-3 r b r d r b r
		c-2 r a4-4-> r8 a[-. a-. b]-.
		c8 r a-4 r d-1 r c r
		bes-3 r g4-5-> r8 g[-. g-. a]-.

		%% line 6
		bes8 r bes r c r bes r
		bes r g4-5-> r8 g[-. g-. a]-.
		bes8 r g r bes[(-3 c16 bes] a8[) g]-.
		a8-4 r d4-1-> r8 bes8[-3-. a-. g]-.
		a r d4-1-> r8 bes[-3-. a-. g]-.
		
		%% line 7
		d'4-1 r r <g,-5 b-3>8[-. <a-4 c-2>]
		<b-3 d-1> r <g-5 b-3> r <a-4 c-2> r a-4 r
		b-3 r g4->-5 r8 g[-. a-. b]-.
		c8-2 r a r b-3 r g r
		a-4 r d4->-1 r <g,-5 b-3>8[-. <a-4 c-2>]-.

		%% Folha 3
		%% line 8
		d4-1 r r <g,-5 b-3>8[-. <a-4 c-2>]-.
		<b-3 d-1> r <g-5 b-3> r <a-4 c-2> r a-4 r
		b-3 r g4-5-> r8 g[-. a-. b]-.
		c-2 r a r b-3 r g r
		a-4 r d4->-1 r <g,-5 b-3>8[-. <a-4 c-2>]-.
		
		%% line 9
		<b-3 d-1> r <g-5 b-3> r <a-4 c-2> r a-4 r
		b-3 r g4-5-> r8 g[-. a-. b]-.
		c-2 r c r b r a r
		g4 r r8 d'[-1-. c-. b]-.
		a-4 r a r a r a r
		b4(-3-> d8) r r d[-1-. c-. b]-.
		
		%% line 10 
		a8-4 r d-1 r a r d r
		g,-5 r d'([-1 c16-2 a])-4 g8-5 r d'([ c16 a])
		g8 r <a-4 c-2 d-1> r <g-5 b-3 d-1> r <a-4 c-2 d-1> r
		g[-5-. b-3-. d-1-. b]-.-3 g[-5-. b-. d-. b]-.
		g4 r <g-5 b-3 d-1> r
		<g-5 b-3>1 \fermata


		\bar "|."
    }
}

secondoDynamics =  {
    s4 s1\p s1 s1 s1 s1 s1 
    s1 s1 s8\< s2. s8\! s1\f s2 s8\> s4 s8\! s1\p
	% 
	s1 s1 s1 s1 s1
	s1 s1 s1 s1 s1
	s1 s1 s2-\markup{\italic{cresc.}} s8\< s4 s8\! s1\f s1
	s8 s8\> s4 s4 s8 s8\! s1\p s1 s1 s1
	%
	s8 s8\> s4 s4 s8 s8\! s1\p s1 s1 s1
	s1 s2 s8\< s4 s8\! s1\f s4 s2\p s4 s1 s1
	s1 s1\f s4 s4\fz s4 s4\fz s1\ff s1 s1
}

secondoUp =  {
    \time 2/2
    \clef bass
    \key g \major
    \relative c' {
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(up)

		\partial 8*2 r4
		\repeat "volta" 2 {
			g8[-.-1 d'-.-5 b-.-3 d]-. fis,[-2-. d'-5-. c-4-. b]-.
			g[-.-1 d'-.-5 b-.-3 d]-. g,[-. d'-. b-. d]-.
			a[-2-. d-5-. c-4-. d]-. g,[-1-. d'-. b-3-. d]-.
			fis,[-2-. d'-. a-3-. d]-. fis,[-2-. c'-5-. b-4-. a]-3-.
			g[-1-. d'-5-. b-3-. d]-. fis,[-2-. d'-5-. c-4-. d]-.
			g,[-1-. d'-. b-3-. d]-. g,[-. d'-. b-. d]-.
			
			% line 2
			g,[-1-. cis-5-. a-3-. cis]-. g[-. cis-. a-. cis]-.
			fis,[-2-. d'-5-. a-3-. d]-. fis,[-. d'-. a-. d]-.
			g,[-1-. cis-5-. a-3-. cis]-. e,[-1-. a-4-. g-. a]-.
			fis[-2-. a-4-. <e-1 g-3>-. a]-4-. fis[-. a-. <e g>-. a]-.
			fis[-2-. d( fis a]-3 d[-5 c-4 a-2 d])
			g,[-1-. d'-5-. b-3-. d]-. g,[-. d'-4-. b-2-. d]-.
		}

		% Scan 2, line 1
		g,[-. f'-5-. d-3-. f]-. g,[-. f'-. d-. f]-.
		g,[-. e'-4-. c-2-. e]-. g,[-. e'-. c-. e]-.
		g,[-. f'-5-. d-3-. f]-. g,[-. f'-. d-. f]-.
		g,[-. e'-4-. c-2-. e]-. g,[-. e'-.-5 c-.-3 e]-.
		gis,[-2-. e'-5-. d-. e]-. gis,[-2-. e'-. d-. e]-.
		
		% Scan 2, line 2
		a,[-1-. e'-5-. c-3-. e]-. a,[-. e'-. c-. e]-.
		gis,[-2-. e'-5-. d-. e]-. gis,[-2-. e'-. d-. e]-.
		a,[-1-. e'-5-. c-3-. e]-. a,[-1-. ees'-4-1 c-2-. ees]-.
		a,[-1-. d-5-. c-4-. d]-. fis,[-2-. d'-. a-3-. d]-.
		g,[-1-. d'-. bes-3-. d]-. g,[-. d'-. bes-. d]-.

		% Scan 2, line 3
		aes[-2-. d-. bes-3-. d]-. aes[-. d-. bes-. d]-.
		g,[-1-.  ees'-5-. bes-3-. ees]-. g,[-. ees'-. bes-. ees]-.
		g,[-1-. cis-4-. bes-3-. cis]-. g[-. c-5-. a-3-. c]-.
		fis,[-2-. d'-. a-3-. d]-. g,[-1-. d'-. bes-3-. d]-.
		fis,[-2-. d'-. a-3-. d]-. g,[-1-. d'-. bes-3-. d]-.
		
		% Scan 2, line 4
		<fis,-2 a-3 d-5>8-. d[(-1 fis-2 a]-3 d[-5 c b a])
		g8[-1-. d'-5-. b-3-. d]-. fis,[-2-. d'-. c-4-. d]-.
		g,[-1-. d'-. b-3-. d]-. g,[-. d'-. b-. d]-.
		a[-2-. d-. c-4-. d]-. g,[-1-. d'-. b-3-. d]-.
		fis,[-2-. d'-. a-3-. d]-. fis,[-2-. c'-5-. b-. a]-.

		% Scan 3, line 1
		<fis-2 a-3 d-5>8-. d[(-1 fis-2 a]-3 d[-5 c b a])
		g[-1-. d'-5-. b-3-. d]-. fis,[-2-. d'-. c-4-. d]-.
		g,[-1-. d'-. b-3-. d]-. g,[-. d'-. b-. d]-.
		a[-2-. d-. c-4-. d]-. g,[-1-. d'-. b-3-. d]-.
		fis,[-2-. d'-. a-3-. d]-. fis,[-2-. c'-5-. b-. a]-.

		% Scan 3, line 2
		g[-1-. d'-. b-3-. d]-. fis,[-2 d'-. c-4-. d]-.
		g,[-1-. d'-. b-3-. d]-. g,[-. d'-. b-. d]-.
		g,[-1-. c-4-. g-. c]-. <g-1 b-3>[-. d'-. <fis,-2 c'-4>-. d']-.
		<g,-1 b-3>[-. d'-. <g, b>-. d']-. <g, b>[-. d'-. <g, b>-. d']-.
		<fis,-2 c'-4>[-. d'-. <fis, c'>-. d']-. <fis, c'>[-. d'-. <fis, c'>-. d']-.
		<g,-1 b-3>[-. d'-. <g, b>-. d']-. <g, b>[-. d'-. <g, b>-. d']-.

		% Scan 3, line 3
		<fis,-2 c'-4>[-. d'-. <fis, c'>-. d']-. <fis, c'>[-. d'-. <fis, c'>-. d']-.
		<g,-1 b-3>[-. d'-. <fis,-2 c'-4>-. d']-. <g, b>[-. d'-. <fis, c'>-. d']-.
		<g,-1 b-3> r d'[(-5 c16-4 a])-2 g8-1-. r d'[( c16 a])
		g8-. r <g b d-5> r <g b d> r <g b d> r
		<g b d>4 r <g b d> r 
		<g b d>1 \fermata

		\bar "|."
    }	
}	

secondoDown =  {
    \time 2/2
    \clef bass   
    \key g \major
    \relative c {
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(down)

		\partial 8*2 r4
		\repeat "volta" 2 {
			% line 1
			g8-2 r r4 d8 r r4
			g8-2 r r4 g8 r r4
			fis8-3 r r4 g8-2 r r4
			d8 r r4 d'8 r r4
			g,8-2 r r4 d8 r r4
			g8-2 r r4 g8 r r4
			
			% line 2
			e8 r r4 e8 r r4
			d8 r r4 d8 r r4
			e8-4 r r4 a8 r r4
			<d,-3 a'>8 r <a-5 a'> r <d a'> r <a a'> r
			<d-3-. a'>8[ d(-5 fis-3 a-2] d[-1 c-2 a-4 d-1])
			g,8-5 r r4 r2
		}

		\set fingeringOrientations = #'(down)
		% Scan 2, line 1
		g,8 r r4 g'8 r r4
		g,8 r r4 g'8 r r4
		g,8 r r4 g'8 r r4
		c,8 r r4 c'8 r r4
		e,8 r r4 e'8 r r4
		
		% Scan 2, line 2
		a,8-3 r8 r4 c8-2 r r4
		e8 r r4 e,8 r r4
		a8 r r4 g8 r r4
		fis8 r r4 d8 r r4
		g8-2 r r4 g8-1 r r4
		
		% Scan 2, line 3
		f8-2 r r4 bes,8 r r4
		ees8-3 r r4 ees8 r r4
		ees8 r r4 ees8 r r4
		d8-4 r r4 <d d'>4 r
		<d d'> r <d d'> r
		
		% Scan 2, line 4
		<d d'>8-.
		d8[( fis-3 a]-2 d[-1 c b a])-1
		g8-2 r r4 d8 r r4
		g8 r r4 g8 r r4
		fis8-3 r r4 g8 r r4
		d8 r r4 d'8 r r4
		
		% Scan 3, line 1
		<d, d'>8-. d[( fis-3 a]-2 d[-1 c b a])-1
		g8-2 r r4 d8 r r4
		g8 r r4 g8 r r4
		fis8-3 r r4 g8 r r4
		d8 r r4 d'8 r r4

		% Scan 3, line 2
		g,8-2 r r4 d8 r r4
		g8-1 r r4 f8-2 r r4
		e8-3 r ees-4 r d-5 r d r
		g8-3 r r4 b8 r r4
		d8-1 r r4 d,8 r r4
		g8-3 r r4 b8 r r4
		
		% Scan 3, line 3
		d8-1 r r4 d,8 r r4
		g8-3 r d r g r d r
		g8 r <d-5 fis-3 a-2 d-1> r <g-4 b-2 d-1> r <d fis a d> r
	    <g b d> r <g b d> r <g b d> r <g b d> r
		<g b d>4 r <g, g'> r
		<g g'>1\fermata

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

		piece = "Rondo. Allegro moderato."
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

		piece = "Rondo. Allegro moderato."
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
