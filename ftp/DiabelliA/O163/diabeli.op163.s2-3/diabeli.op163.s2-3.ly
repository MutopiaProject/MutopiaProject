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

 footer = "Mutopia-2008/10/09-1570"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

primoDynamics =  {
    s2.\p s2. s2. s2. s2. s2. s2.\f s2.
	s2.\p s2. s2. s2. s2. s2. s2.\f s2.
	s2.\p s2. s2. s2. s4\< s4 s4\! s4.\fz s8\> s8 s8\! s2.\p s2.
	s2.-\markup{\italic{dolce}} s2. s2. s4 s8\fz s8\> s8 s8\! s4 s8\fz s8\> s8 s8\! s2 s4\pp s2. s2.
}

primoUp =  {
    \time 3/4
    \clef treble
    \key c \major
    \relative c''' {
        \override Score.OttavaBracket   #'padding = #2
		#(set-octavation 1)
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(up)

		% line 1
		<e-3 g-5>4-> <c-1 e> r
		<e g>-> <c e> r
		g'4.(-5-> f8[-4 d-2 g])
		e4-3 c r
		<e-3 g-5>4-> <c-1 e> r
		<e g>-> <c e> r
		g'4(-5 fis g8 fis)
		e4 r r

		% line 2
		<e-3 g-5>4-> <c-1 e-3> r
		<e g>-> <c e> r
		g'4.(-5-> f8[-4 d-2 g])
		e4-3 c r
		<e-3 g-5>4-> <c-1 e-3> r
		<e g>-> <c e> r
		g'4(-5 fis g8 fis)
		e4 r r
		
		% line 3
		\repeat "volta" 2 {
			f4-4 d r8 g-5
			e4-3 c r8 e
			f4-4 d r8 g
			e4-3 c r8 c
			e4-3-. e-. e-.
			g4.(-5-> f8[) e-. d]-.
			c8.(-1 d16) e8[(-3 f) d(-2 e)]
			c4-1 r r
		}
		
		% line 4
		d4-2 d f8([-4 e])
		c4 r r
		d4-.-2 d8([ f-4 e d])
		c r f4.(-4 d8)-2
		c r f4.(-4 d8)
		c4 r <e-3 g-5>
		<c-1 e-3> r <e g>
		<c e>2. \fermata
		
		\bar "|."
    }
}

primoDown =  {
    \time 3/4
    \clef treble
    \key c \major
    \relative c'' {
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(down)

		% line 1
		<e-3 g-1>4-> <c-5 e-3> r
		<e g>-> <c e> r
		g'4.(-1-> f8[-2 d-4 g])
		e4-3 c r
		<e-3 g-1>4-> <c-5 e-3> r
		<e g>-> <c e> r
		g'4(-1 fis g8 fis)
		e4 r r

		% line 2
		<e-3 g-1>4-> <c-5 e-3> r
		<e g>-> <c e> r
		g'4.(-1-> f8[-2 d-4 g])
		e4-3 c r
		<e-3 g-1>4-> <c-5 e-3> r
		<e g>-> <c e> r
		g'4(-1 fis g8 fis)
		e4 r r

		% line 3
		\repeat "volta" 2 {
			f4-2 d r8 g-1
			e4-3 c r8 e
			f4-2 d r8 g
			e4-3 c r8 c
			e4-3-. e-. e-.
			g4.(-1-> f8[) e-. d]-.
			c8.(-5 d16) e8[(-3 f) d(-4 e)]
			c4-5 r r
		}

		% line 4
		d4-4 d f8([-2 e])
		c4 r r
		d4-.-4 d8([ f-2 e d])
		c r f4.(-2 d8)-4
		c r f4.(-2 d8)
		c4 r <e-3 g-1>
		<c-5 e-3> r <e g>
		<c e>2. \fermata


		\bar "|."
    }
}

secondoDynamics =  {
    s2.\p s2. s2.\sf s2. s2. s2. s2.\f s8\> s2 s8\!
	s2.\p s2. s2.\sf s2. s2. s2. s2.\f s8\> s2 s8\!
	s2.\p s2. s2. s2. s4 s8\< s4 s8\! s2. s2.\p s2.
	s2.-\markup{\italic{dolce}} s8\< s8 s8\! s8\> s8 s8\! s2. s2. s2. s2.\pp s2. s2.
}

secondoUp =  {
    \time 3/4
    \clef treble
    \key c \major
    \relative c' {
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(up)

		% line 1
		r4 <e g-5>-> <c e-3>
		r <e g>-. <c e>
		b8[(-2 d-3 f-5 d b d])
		c[-2 e(-4 g-5 e c g])
		c-2 r <e g-5>4-> <c e-3>
		r <e g>-> <c e>
		<e-3 g-5>8([ b <dis-2 a'-5> b <dis a'> b])
		<e-3 g-5>([ b e-3 g-5 f-4 b,-1])

		% line 2
		r4 <e g-5>-> <c e-3>
		r <e g>-. <c e>
		b8[(-2 d-3 f-5 d b d])
		c[-2 e(-4 g-5 e c g])
		c-2 r <e g-5>4-> <c e-3>
		r <e g>-> <c e>
		<e-3 g-5>8([ b <dis-2 a'-5> b <dis a'> b])
		<e-3 g-5>([ b <e g> b <e g> b])

		\repeat "volta" 2 {
			<b-2 d-4>([ g <b-2 f'-5> g <b f'> g])
			<c-2 e-4>([ g <e'-4 g-5>-> g, <c-3 e-5> g])
			<b-2 d-4>([ g <b-2 f'-5> g <b f'> g])
			<c-2 e-4>([ g <e'-4 g-5>-> g, <c-3 e-5> g])
			<bes-2 g'-5>([ c-1 <bes g'> c <bes g'> c])
			<< { e4.(-5 d8[-3 e-4 f])-5 } \\ { bes,8[(\fz cis]-3 a)-1 r r4} >>
			e'8[(-4 g, g'-5 g, <b-2 f'-5> g])
			<c-2 e-4>[( g g'-5-> e-4 c-2 g])
		}

		<b-2 f'-5>8[( g <b f'> g <b f'> g])
		<c-2 e-4>[( g g' e-4 c g])
		<b-2 f'-5>8[( g <b f'> g <b f'> g])
		<< { \set fingeringOrientations = #'(up)
		     <c-3 e-5>8[( g <d'-4 f-5>-> b-1 <d-4 f-5>-> b-1 ]) } \\ { s4 aes-2 aes } >>
		<< { \set fingeringOrientations = #'(up)
		     <c-3 e-5>8[( g <d'-4 f-5>-> b-1 <d-4 f-5>-> b-1 ]) } \\ { s4 aes-2 aes } >>
		<c-2 e-4>8[( g c e-4 g e])
		c[( g c e-4 g e])
		<g,-1 c-3 e-5>2.\fermata

		\bar "|."
    }	
}	

secondoDown =  {
    \time 3/4
    \clef bass   
    \key c \major
    \relative c, {
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(down)

		\override Staff.NoteCollision #'merge-differently-headed = ##t
		\override Staff.NoteCollision #'merge-differently-dotted = ##t
		% line 1
		<< { c8[ c'(-1 g-2 c g c]) } \\ { c,2. } >>
		<< { c8[ c'( g c g c]) } \\ { c,2. }  >>
		<c g' c>2.
		<c g' c>2.
		<< { c8[ c'(-1 g-2 c g c]) } \\ { c,2. } >>
		<< { c8[ c'( g c g c]) } \\ { c,2. }  >>
		<< { b4( b') } \\ { b,2 } >> <b b'>4
		<e e'> r d'8(-1 g,)-2

		% line 2
		<< { c,8[ c'(-1 g-2 c g c]) } \\ { c,2. } >>
		<< { c8[ c'( g c g c]) } \\ { c,2. }  >>
		<c g' c>2.
		<c g' c>2.
		<< { c8[ c'(-1 g-2 c g c]) } \\ { c,2. } >>
		<< { c8[ c'( g c g c]) } \\ { c,2. }  >>
		<< { b4( b') } \\ { b,2 }>> <b b'>4
		e4(-5 g8[-4 b)]-2 c-1 r

		\repeat "volta" 2 {
			<< { g,4 g' g } \\ { g,2. } >>
			<< { g4 g' g } \\ { g,2. } >>
			<< { g4 g' g } \\ { g,2. } >>
			<< { c4 c' c } \\ { c,2. } >>
			<< { c4 c' c } \\ { c,2. } >>
			<< { f4 f' f } \\ { f,2. } >>
			g2^\markup { \finger "4-1"}  <g, g'>4
			c2-3 e4-2
		}
		
		g4 g, g'
		c,2-3 e4-2
		g g, g'
		<< { c,4 c' c } \\ { c,2. } >>
		<< { c4 c' c } \\ { c,2. } >>
		<c g'-2 c>2 <c g' c>4
		<c g' c>2 <c g' c>4
		<c g' c>2. \fermata

		\bar "|."
    }
}




\paper {
	printallheaders=##t
}

\score{
    \context PianoStaff  <<
		\set PianoStaff.instrumentName = "Secondo" 
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

		piece = "Andantino cantabile."
	}
}

  

\score{    
    \context PianoStaff <<
		\set PianoStaff.instrumentName = "Primo" 
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

		piece = "Andantino cantabile."
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
