\version "2.10.10"
% $Revision: 1.4 $

\header {
    mutopiatitle = "Jugendfreuden - Sechs Sonatinen"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Opus 163-1"
    mutopiainstrument = "Piano Duet"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
    lastupdated = "2008/05/04"

 footer = "Mutopia-2008/10/09-1567"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

primoDynamics =  {
    % line 1
    s2\f s2 s2\p s2 s2\f s2 s2\p s2
	% line 2 
	s2\f s2 s2 s2 s2\p s2 s4\< s2 s4\! s2\f
	% line 3
	s2 s2\p s2 s2\f s2 s2 s2 s2 s2 s8\f s8\p s4 s2 s2 s2 s8\f s8\p s4
	% line 4
	s2 s2\f s2 s2 s2 s2\ff s2 s2\p s2
	% line 5
	s2\f s2 s2\p s2 s2\f s2 s2 s2 s2
	% line 6
	s2 s2\sf s2 s2\p s2 s2 s2 s2 s2 s8\sf s8\> s8 s8\! s8
	% line 7
	s2\f s2 s2 s2 s2 s2 s2 s2\ff s2
}

primoUp =  {
    \time 2/4
    \clef treble
    \key c \major
    \relative c''' {
        \override Score.OttavaBracket   #'padding = #2
   	    #(set-octavation 1)
	    #(set-accidental-style 'modern)
	    \set fingeringOrientations = #'(left)

		% line 1
		\repeat volta 2 {
			\grace{e16[(-3 f]-4} g4)-5 c,8[-1-. d]-2-.
			e8-3 r c-1 r
			d[-2-. f-. e-. d]-.
			e[-3-. d-. c]-. r
			\grace{e16[(-3 f]-4} g4)-5 c,8[-1-. d]-.
			e8-3 r c r
			d[-2-. f-. e-. d]-.
			c4-1-- r
		}
		% line 2
		\repeat volta 2 {
			\grace{d16[( e]} f4)-4 d8[-2-. f]-.
			e8-3 r c r
			\grace{e16[( f]} g4)-5 e8[-. g]-.
			f-4 r d r
			d4-2 d8[ d]
			d[( e] d4)
			d4-2 d8[ d]
			d[( e] d4)
			e4(-3 fis8[ g])

			% line 3
			g4( d)-2
			d d8[ d]
			e4( d)
			e(-3 fis8[ g])
			g4( d)-2
			e8[( d e d])
			g4-5 r
			r2
			r2
			g4-5 g8[-. g]-.
			e[-.-3 d]-. c4
			r2
			r2
			g4-5 g8[-. g]-.

			% line 4
			e'8[-3-. d]-. c4
			g'8[-.-5 f-. e-. c]-1-.
			g'8[-.-5 f-. e-. c]-1-.
			d4-2 r
			r2
			\grace{e16[(-3 f]-4} g4)-5 c,8[-1-. d]-.
			e r c r
			d[-2-. f-. e-. d]-.
			e[-3-. d-. c]-. r

			% line 5
			\grace{e16[( f]} g4)-5 c,8[-1-. d]-.
			e r c r
			d[-2-. f-. e-. d]-.
			c4-- r
		}
		c-1 e8[-3-. g]-5-.
		g r f r
		d4-2 e8[-. f]-.
		f r e r
		c4-1 d8[-. e]-.

		% line 6
		e8 r d r
		\grace{d16[(-2 e]-3} f4)-4 e8[-. d]-.
		c4 r
		c8[(-1 e)-3 e( g])-5
		g4( f)
		d8[(-2 e) e( f])
		f4(-4 e)
		c8[(-1 d) d(-2 e])
		e4(-3 d)
		\grace{d16[(-2 e]-3} f4)(-4 e8[) d]

		% line 7
		c8[-1-. g'-5-. f-4-. d]-2-.
		c[-. g'-. f-4-. d]-2-.
		c8.[-1 g'16-5 g8. g16]
		g8.[ g16 g8. g16]
		c,8-1 r e-3 r
		c r e r
		c4 r
		e-3 r
		c-1 r\fermata

		\bar "|."
   }
}

primoDown =  {
    \time 2/4
    \clef treble
    \key c \major
    \relative c'' {
	    #(set-accidental-style 'modern)
	    \set fingeringOrientations = #'(left)

		% line 1
		\repeat volta 2 {
			\grace{e16[(-3 f]-2} g4)-1 c,8[-5-. d]-4-.
			e8-3 r c-5 r
			d[-4-. f-. e-. d]-.
			e[-3-. d-. c]-. r
			\grace{e16[(-3 f]-2} g4)-1 c,8[-5-. d]-.
			e8-3 r c r
			d[-4-. f-. e-. d]-.
			c4-5-- r
		}
		\repeat volta 2 {
			\grace{d16[( e]} f4)-2 d8[-4-. f]-.
			e8-3 r c r
			\grace{e16[( f]} g4)-1 e8[-. g]-.
			f-2 r d r
			d4-4 d8[ d]
			d[( e] d4)
			d4-4 d8[ d]
			d[( e] d4)
			e4(-3 fis8[ g])


			% line 3
			g4( d)-4
			d d8[ d]
			e4( d)
			e(-3 fis8[ g])
			g4( d)-4
			e8[( d e d])
			g4-1 r
			r2
			r2
			g4-1 g8[-. g]-.
			e[-.-3 d]-. c4
			r2
			r2
			g4-1 g8[-. g]-.

			% line 4
			e'8[-3-. d]-. c4
			g'8[-.-1 f-. e-. c]-5-.
			g'8[-.-1 f-. e-. c]-5-.
			d4-4 r
			r2
			\grace{e16[(-3 f]-2} g4)-1 c,8[-5-. d]-.
			e r c r
			d[-4-. f-. e-. d]-.
			e[-3-. d-. c]-. r

			% line 5
			\grace{e16[( f]} g4)-1 c,8[-5-. d]-.
			e r c r
			d[-5-. f-. e-. d]-.
			c4-- r
		}
		c-5 e8[-3-. g]-1-.
		g r f r
		d4-4 e8[-. f]-.
		f r e r
		c4-1 d8[-. e]-.

		% line 6
		e8 r d r
		\grace{d16[(-4 e]-3} f4)-2 e8[-. d]-.
		c4 r
		c8[(-5 e)-3 e( g])-1
		g4( f)
		d8[(-4 e) e( f])
		f4(-2 e)
		c8[(-5 d) d(-4 e])
		e4(-3 d)
		\grace{d16[(-4 e]-3} f4)(-2 e8[) d]

		% line 7
		c8[-5-. g'-1-. f-2-. d]-4-.
		c[-. g'-. f-2-. d]-4-.
		c8.[-5 g'16-1 g8. g16]
		g8.[ g16 g8. g16]
		c,8-5 r e-3 r
		c r e r
		c4 r
		<c-5 e-3 g-1> r
		<c-5 e-3> r\fermata

		\bar "|."
    }
}

secondoDynamics =  {
	% line 1
    s2\f s2 s2\p s2 s2\f s2 s2\p s2
	% line 2
	s2\f s2 s2 s2 s2\p s2 s8\< s4 s4 s4 s8\! s2\f s2
	% line 3
	s2\p s2 s2\f s2 s2 s2 s2\f s2 s2\p s2
	% line 4
	s2\f s2 s2\p s2 s2\f s2 s8\< s4 s4 s4 s8\! s2\ff s2
	% line 5
	s2\p s2 s2\f s2 s2\p s2 s2\f s2 s2 s2
	% line 6
	s2 s2 s2 s2 s2\p s2 s2 s2 s2 s2
	% line 7
	s2 s2\f s2 s2 s2 s2 s2 s2 s2\ff s2
}

secondoUp =  {
    \time 2/4
    \clef treble
    \key c \major
    \relative c '{
		#(set-accidental-style 'modern)
	   	\set fingeringOrientations = #'(left)

		% line 1
		\repeat volta 2 {
			<c-1 e-3>8[-. g'-. <c, e>-. g']-.
			<c, e>8[-. g'-. <c, e>-. g']-.
			<b,-1 f'-4>[-. g'-. <b, f'>-. g']-.
			<c,-1 e-3>[-. g'-. <c, e>-. g']-.
			<c, e>8[-. g'-. <c, e>-. g']-.
			<c, e>8[-. g'-. <c, e>-. g']-.
			<b,-1 f'-4>[-. g'-. <b, f'>-. g']-.
			<c,-1 e-3>[ g'-. <c, e>]-. r
		}
		% line 2
		\repeat volta 2 {
			<b-2 d-4>[-. g-. <b d>-. g]-.
			<c e-3>[-. g-. <c e>-. g]-.
			<cis-2 e-4>[-. a-. <cis e>-. a]-.
			<d-3 f-5>[-. a-. <d f>-. a]-.
			a[(-1 d-2 fis-4 d])
			g,[( d'-2 g-5 d])
			c[(-1 d-2 fis-4 d])
			b[( d-2 g-5 d])
			r <g, c-3 e-5> r <g c e>
			r <g b-2 d-4> r <g b d>

			% line 3
			r <a-1 c-2 d-3 fis-5> r <a c d fis>
			r <b d-2 g-5> r <b d g>
			r <g c-3 e-5> r <g c e>
			r <g b-2 d-4> r <g b d>
			r <a-1 c-2 d-3 fis-5> r <a d fis>
			<b d-2 g-5>4 r
			<g g'> <g g'>8[ <g g'>]
			f'8[-4-. e]-. d4
			<g, b-2 d-4>8 r <g b d> r
			<g c e-5>4 r

			% line 4
			<g g'>4 <g g'>8[ <g g'>]
			f'[-4-. e]-3-. d4-2
			<g, b d-4>8 r <g b d> r
			<g c e-5>4 r
			<b-1 d-2>8[-. g'-. <c,-1 e-3>-. g']-.
			<b, d-2>[-. g'-. <c, e-3>-. g']-.
			<b, d-2>[-. g'-. fis-4-. g]-.
			f[-4-. g-. d-2-. g]-.
			<c,-1 e-3>[-. g'-. <c, e>-. g']-.
			<c, e>[-. g'-. <c, e>-. g']-.

			% line 5
			<b,-1 f'-4>[-. g'-. <b, f'>-. g']-.
			<c,-1 e-3>[-. g'-. <c, e>-. g']-.
			<c, e>[-. g'-. <c, e>-. g']-.
			<c, e>[-. g'-. <c, e>-. g']-.
			<b,-1 f'-4>[-. g'-. <b, f'>-. g']-.
			<c,-1 e-3>[-. g'-. <c, e>]-. r
		}
	   	\set fingeringOrientations = #'(right)
		r <bes-1 c-2 e-4> r <bes c e>
		r <a-1 c-2 f-5> r <a c f>
		r <aes-1 b-2 d-3 f-5> r <aes b d f>
		r <g c-2 e-4> r <g c e>

		% line 6
		r <a c-2 e-4> r <a c e>
		r <a d-3 f-5> r <a d f>
		r <g b-2 f'-5> r <g b f'>
		r <g c-3 e-5> r <g c e>
		r <bes c e-4> r <bes c e>
		r <a c f-5> r <a c f>
		r <aes b-2 f'-5> r <aes b f'>
		r <g c-2 e-4> r <g c e>
		r <a c e-4> r <a c e>
		r <a d-3 f-5> r <a d f>

		% line 7
		r <g b-2 f'-5> r <g b f'>
		r <g c-3 e-5> r <g b-2 f'-5>
		r <g c e> r <g b f'>
		<c-3 e-5>[-. g-. <b-2 d-4 f-5>-. g]-.
		<c e>[-. g-. <b d f>-. g]-.
		<g c-3 e-5> r <g e'-4 g-5> r
		<g c e-4> r <g e'-4 g-5> r
		<g c e-4>4 r
		<g c e g-5> r
		<g c e-4> r\fermata

		\bar "|."
    }	
}	

secondoDown =  {
    \time 2/4
    \clef bass   
    \key c \major
    \relative c, {
		#(set-accidental-style 'modern)
	 	\set fingeringOrientations = #'(left)

		% line 1
		\repeat volta 2 {
			<c g' c>4 r
			c8 r c' r
			g4-2 r
			c r
			<c, g' c> r
			c8 r c' r
			g-2 r g r
			c4 r
		}
		% line 2
		\repeat volta 2 {
			<g, g'>4 r
			<c c'> r
			<a a'> r
			<d d'> r
			c'2(	b	a	g)-5
			<c, c'>8 r <c c'> r
			<d d'> r <d d'> r

			% line 3
			<d d'>8 r <d d'> r
			g-2 r g r
			<c, c'> r <c c'> r
			<d d'> r <d d'> r
			<d d'> r <d d'> r
			<g, g'>4 r
			r2
			<b'-3 d-1>8[( g <b d> g])
			<d'-2 f-1>[( g, <d' f> g,])
			<c-3 e-2>[( g-5 <c e> g])

			% line 4
			<c e>[( g <c e> g])
			<b-3 d-1>[( g <b d> g])
			<d'-2 f-1>[( g, <d' f> g,])
			<c-3 e-2>[( g <c e> g])
			<g g'>8 r <g g'> r
			<g g'> r <g g'> r
			<g g'>[ g'-1-. fis-2-. g]-.
			f[-2-. g-. d-4-. g]-.
			<c,, g' c>4 r
			c8 r c' r

			% line 5
			g4-2 r
			c r
			<c, g' c> r
			c8 r c' r
			g-2 r g r
			c4 r
		}
		<c, c'>8 r <c c'> r
		<c c'> r <c c'> r
		<c c'> r <c c'> r
		<c c'> r <c c'> r

		% line 6
		<a a'> r <a a'> r
		<f f'> r <f f'> r
		<g g'> r <g g'> r
		<c c'> r <c c'> r
		c'-2 r c-1 r
		c-2 r c-1 r
		c r c r
		c r c r
		a-2 r a r
		f-4 r f r

		% line 7
		g8-3 r g-2 r
		<c, c'> r g'-2 r
		<c, c'> r g' r
		<c, c'> r <g g'> r
		<c c'> r <g g'> r
		<c c'> r <c g' c> r
		<c g' c> r <c g' c> r
		<c g' c>4 r
		<c g' c> r
		<c g' c> r\fermata

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
	    subsubtitle = "I"
	    composer = "Anton Diabelli"
	    opus = "Op 163"


		piece = "Rondo. Allegro vivace." }
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
	    title = "JUGENDFREUDEN."
	    subtitle = "Sechs Sonatinen."
	    subsubtitle = "I"
	    composer = "Anton Diabelli"
	    opus = "Op 163"
		breakbefore = ##t
 		piece = "Rondo. Allegro vivace."
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


