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

 footer = "Mutopia-2008/10/09-1569"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

primoDynamics =  {
    s1\p s1 s1 s1 s1 s1
	\setTextCresc s2 s2\< s1 s2\! \setHairpinCresc s8\< s4 s8\! s2 s2 s1 s1
	s4\f s4\p s2 s4\f s4\p s2 s1 s1 s4\f s4\p s2 s4\f s4\p s2 
	s1-\markup{\italic{dolce}} s1 s1 s1 s1 s1
	s2-\markup{\italic{cresc.}} s8\< s4 s8\! s1\f s1 s4 s4\> s4 s4\! s1 s1
	s1 s1 s1 s4 s8\< s4 s8\! s4\f s1 s2 s4 s4\p
	s1 s4 s4\< s4 s4\! s1\f s1 s1 s4 s4\ff s2
}

primoUp =  {
    \time 4/4
    \clef treble
    \key g \major
    \relative c''' {
        \override Score.OttavaBracket   #'padding = #2
		#(set-octavation 1)
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(left)

		\repeat "volta" 2 {
			% line 1
			g4-1 d'8.(-5 b16-3 g8)-1 r8 r4
			r4  d'8.(-5 b16-3 g8) r8 b(-3 g)
			d'2-5-> a4(-2 c8-4 b)-3
			g4-1 r r2
			r4 d'8.(-5 b16-3 g8) r r4
			r4 d'8.( b16 g8) r b4-3-.

			% line 2
			b4( a) r a-2-.
			b( a) r a-2-.
			a4. a8 b[(-3 a b cis])
			d4-5 r4 r8 a[(-2-.\f cis-4-. a])-.
			d4-5 r4 r8 a[(-2-. cis-4-. a])-.
			d4-5 d d r			
		}

		% linha 3
		d4.(-5 c8-4 a4)-2 r4
		d4.(-5 b8-3 g4)-1 r4
		c4-4 c b( c8 d)
		a4.(-2 b8 a4) r
		d4.(-5 c8-4 a4)-2 r4
		d4.( bes8-3 g4)-1 r4
		
		% linha 4
		bes4.(-3-> c8 bes4) r
		bes4.(-> c8 bes4) r
		bes4-3 bes8[ bes] c[( bes) c( bes)]
		bes2(-> g4) r
		g4.(-1 aes8 g4) r
		g4.( aes8 g4) r

		% linha 5
		g4.(-1 a8) bes4(-3 a8 g)
		d'4-5 r bes(-3 a8 g)
		d'4 r bes(-3 a8 g)
		d'4 r r2
		r4 d8.(-5\p b16-3 g8)-1 r8 r4
		r4 d'8.( b16 g8) r8 r4

		% linha 6
		d'2-5-> a4(-2 c8-4 b)-3
		g4-1 r r2
		r4 d'8.(-5 b16-3 g8) r r4
		r4 d'8.( b16 g8) r g4-1-.
		a-2 a c(-4 b8 a)
		g4 r r g-1-.

		% line 7
		a4( g) r g-.
		a( g) r g-.
		c4.-4 c8 d[(-5 c b a])
		g4-1 r r8 d'[\sf-.-5 a-2-. b-.]
		g4 r r8 d'[\sf-.-5 a-2-. b-.]
		g4-1 b-3-. g-1 r
		
		\bar "|."
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \key g \major
    \relative c'' {
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(left)

		\repeat "volta" 2 {
			% linha 1
			<g-5 b-3>8([ d'-1 <g, b> d']) <g, b>([ d' <g, b> d'])
			<g, b>([ d' <g, b> d']) <g, b>([ d' <g, b> d'])
			<a-4 c-2>([ d-1 <a c> d]) <a c>([ d <a c> d])
			<g,-5 b-3>8([ d'-1 <g, b> d']) <g, b>([ d' <g, b> d'])
			<g, b>([ d' <g, b> d']) <g, b>([ d' <g, b> d'])
			<g, b>([ d' <g, b> d']) <g, b> r b4-3-.

			% line 2
			b4( a) r a-4-.
			b( a) r a-4-.
			a4. a8 b[(-3 a b cis])
			d4-1 a8.-4\f a16 a4 cis8-2-. a-.-4
			d4-1 a8.-4 a16 a4 cis8-2-. a-.-4
			d4-1 d d r			
		}

		% linha 3
		d4.(-1 c8-2 a4)-4 r4
		d4.(-1 b8-3 g4)-5 r4
		c4-2 c b( c8 d)
		a4.(-4 b8 a4) r
		d4.(-1 c8-2 a4)-4 r4
		d4.( bes8-3 g4)-5 r4

		% linha 4
		bes4.(-3-> c8 bes4) r
		bes4.(-> c8 bes4) r
		bes4-3 bes8[ bes] c[( bes) c( bes)]
		bes2(-> g4) r
		g4.(-5 aes8 g4) r
		g4.( aes8 g4) r

		% linha 5
		g4.(-5 a8) bes4(-3 a8 g)
		d'4-1 r bes(-3 a8 g)
		d'4 r bes(-3 a8 g)
		d'4 d8. d16 d4 d
		<g,-5 b-3>8[(\p d'-1 <g, b> d'] <g, b>[ e' <g, b> e'])
		<g, b>8[( d' <g, b> d'] <g, b>[ e' <g, b> e'])

		% line 6
		<a,-4 c-2>[( d-1 <a c> d] <a c>[ d <a c> d])
		<g,-5 b-3>8[(\p d'-1 <g, b> d'] <g, b>[ e' <g, b> e'])
		<g, b>8[( d' <g, b> d'] <g, b>[ e' <g, b> e'])
		<g, b>8[( d' <g, b> d']) <g, b> r g4-5-.
		a4-4 a c(-2 b8 a)
		g4 r r g-5-.

		% line 7
		a4( g) r g-.
		a( g) r g-.
		c4.-2 c8 d[(-1 c b a])
		g4-5 d'8.\sf d16 d4 a8-.-4 b-.
		g4-5 d'8.\sf d16 d4 a8-.-4 b-.
		g4-5 <g-5 b-3 d-1>-> <g b d>-. r
		
		\bar "|."
    }
}

secondoDynamics =  {
	s4\f s4\p s2 s1 s2 s8\< s4 s8\! s8\> s4 s8\! s2 s4\f s4\p s2 s1
	\setTextCresc s4 s4\< s2 s1 s2\! \setHairpinCresc s8\< s4 s8\! s2\f s2 s1 s1
	s8\f s8\p s4 s2 s8\f s8\p s4 s2 s1 s1 s8\f s8\p s4 s2 s8\f s8\p s4 s2
	s1-\markup{\italic{dolce}} s1 s1 s1 s1 s1
	s2-\markup{\italic{crec.}} s8\< s4 s8\! s1\f s1 s2 s8\> s4 s8\! s4\f s4\p s2 s1
	s2 s8\< s4 s8\! s8\> s4 s8\! s2 s4\f s4\p s2 s4\< s2 s4\! s1\f s2 s2\p
	s2 s4\< s4 s2 s4 s4\! s1\f s1 s1 s4 s2\ff s4
}

secondoUp =  {
    \time 4/4
    \clef bass
    \key g \major
    \relative c' {
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(left)

		\repeat "volta" 2 {
			% line 1
			g2-3\trill \acciaccatura{ fis16[ g] } b8([-5 d, g b)]
			g2-3\trill \acciaccatura{ fis16[ g] } b8([-5 d, g b)]
			fis([-2 a-4 c-5 a] fis[ d fis d])
			g[(-2 b-4 d-5 b] g) r r4
			g2-3\trill \acciaccatura{ fis16[ g] } b8([-5 d, g b)]
			g2-3\trill \acciaccatura{ fis16[ g] } b8([-5 e,-1 g-3 b)]-5

			% line 2
			e,[(-1 g-2 cis-5 g]) e[( g cis-5 g])-1
			fis([-2 a-3 d-5 a]) fis[( a d a])
			g[(-2 a-1 cis-2 e]-4 g[-5 e-3 c-2 e])
		     \clef treble
			fis[(-4 a, d-2 fis]) g[(-5 cis,-2 e-3 g])
			fis[(-4 a, d-2 fis]) g[(-5 cis,-2 e-3 g])
			fis4-4 <a, d fis> <a d fis> r			
		}

		% line 3
		c8[(-1 d-3 fis-5 d]) c[( d fis d])
		b([-2 d-3 g-5 d] b[-2 d-3 b-2 g])
		\clef bass
		fis([-2 a-3 d-5 a]) g[(-1 b-4 d b])
		fis([-2 a-3 d-5 a] fis[-2 a-3 fis d])
		\clef treble
		c'[(-2 d-3 fis d)] c[(-1 d-3 fis d])
		bes([-2 d-3 g-5 d] bes[-2 d-3 bes-2 g])

		% line 4
		aes[(-2 bes-3 f'-5 bes,]) aes[( bes f' bes,])
		g[(-1 bes-3 ees-5 bes]) g[( bes ees bes])
		aes[(-2 bes-3 d-5 bes]) aes[( bes d bes])
		g[(-1 bes-2 ees-4 bes]) ees[( bes g bes])
		g[(-1 b-2 f'-5 b,]) g[( b f' b,])
		g[( c-2 ees-4 c]) g[( c ees c])

		% line 5
		g[( bes-2 e-5 bes]) g([ bes e-5 bes])-3
		\clef bass
		fis[(-2 a-3 d-5 a]) g([-1 bes-4 d bes])
		fis[(-2 a-3 d-5 a]) g([-1 bes-4 d bes])
		fis[(-2 d' <a-2 c-4> d] <g,-1 b-3>[ d' <fis,-1 a-2> d'])
		g,2-3\trill \acciaccatura{ fis16[ g] } b8([-5 d, g b)]
		g2-3\trill \acciaccatura{ fis16[ g] } b8([-5 d, g b)]

		% line 6
		fis([-2 a-4 c-5 a] fis[ d fis d])
		g[(-2 b-4 d-5 b] g) r r4
		g2-3\trill \acciaccatura{ fis16[ g] } b8([-5 d, g b)]
		g2-3\trill \acciaccatura{ fis16[ g] } b8([-5 e,-1 g-2 b)]-4
		e,[(-1 g-2 a-3 e']) fis,([-2 a-3 c-4 d])-5
		g,[(-1 b-3 d-5 b]) g[(-1 b-2 d-4 b])
		
		% line 7
		g[(-1 b-2 f'-5 b,]) g[( b f' b,])
		g[(-1 c-3 e-5 c]) g[( c e c])
		a[( c-2 ees-3 fis-4]) a,[( c ees fis])
		b,[(-1 d-5 b-3 g])-1 c([-4 fis,-2 c' d])
		b[(-3 g-1 b d]) c[(-4 fis,-2 c' d])
		b4-3 <g b d-5>-. <g b d>-. r

		\bar "|."
    }	
}	

secondoDown =  {
    \time 4/4
    \clef bass   
    \key g \major
    \relative c {
		#(set-accidental-style 'modern)
		\set fingeringOrientations = #'(left)

		\repeat "volta" 2 {
			% line 1
			g2.-1 d4-3-.
			g2. d4-.
			d1-5\sf
			g2-2~g8[ d(-5 g-2 b])-1
			g2.-2 d4-.
			g2.-2 e4-.-4			
			
			% line 2
			a2-1 a,4-. r
			a'2 a,4-. r
			a'2 a,4-. a'
			d,-3 r a a'
			d,-3 r a a'
			d,-3 <d d'> <d d'> r
		}

		% line 3
		d2. d'4
		d,2. d'4
		d,4 d' d, d'
		d, d' d, r
		d2. d'4
		d,2. d'4
		
		% line 4
		<d, d'>-. bes'-.-2 <d, d'>-. bes'-.
		<ees, ees'>-. bes'-.-2 <ees, ees'>-. bes'
		<< { r4 bes bes bes } \\ { bes,1 } >>
		<< { r4 ees' ees ees } \\ { ees,1 } >>
		<< { r4 d' d d } \\ {d,1 } >>
		<< { r4 c' c c } \\ {c,1 } >>

		% line 5
		<< { r4 cis' cis cis } \\ {cis,1} >>
		d4 d' d, d'
		d, d' d, d'
		d,1
		g2.-2 d4-.-5
		g2. d4-.
		
		% line 6
		d1\sf
		g2-2 ~ g8[ d(-5 g-2 b])-1
		g2.-2 d4-.
		g2.-2 e4-3-.
		c2-5 d
		g4-1 g-3 g-2 g-1
		
		% line 7
		<< { r4 g g g } \\ { g,1 } >>
		<< { r4 g' g g } \\ { g,1 } >>
		<< { r4 g' g g } \\ { g,1 } >>
		<g g'>4 r d' d'
		g,-3 r d d'
		g,-3 <g, g'> <g g'> r

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

		piece = "Allegro moderato."
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

		piece = "Allegro moderato."
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
