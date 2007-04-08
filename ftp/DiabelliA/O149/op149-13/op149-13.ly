\version "2.0.1"
% $Revision: 1.2 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "13."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke"
    mutopiacomposer = "Anton Diabelli"
    mutopiaopus = "Opus 149-13"
    mutopiainstrument = "Piano, Piano"
    source = "If I could know..."
    style = "Classical"
    copyright = "MutopiaBSD"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
    lastupdated = "2004/Mar/27"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and released under the MutopiaBSD licence by " + \maintainer + ".} \\makebox[\\textwidth][c]{You should have received a copy of the licence with this music. If not, it is available at the above website.}}"
    footer = "Mutopia-2004/03/27-419"
}

primoDynamics = \notes {
    s2\p s2 s2 s2 s2\p s2 s2\f s2    s2\mf s2 s2 s2
    s2-\markup\italic{cresc.} s2 s2\f s2 s2\p s2 s2 s2 s2\p s2 s2\f s2
    s2\p s2 s2\f s2 s2\p s2 s2\f s2 s2 s2 s2 s2
}

primoUp = \notes {
    \time 2/4
    \clef treble
    \key f \major
    \relative c''' {
	\modernAccidentals
	\repeat volta 2 {
	    a8([-3 bes-4 g-2 a]
	    f4-1 a)
	    g2-2->
	    c-5->
	    a8([-3 bes g a]
	    f4 a)
	    g8([-2 c-5 bes-4 g)]-2
	    f4-1 r
	}
	\repeat volta 2 {
	    g4(-2 a8 g)
	    c4-5-. g-2-.
	    b-4-. g-.
	    c(-5 g)

	    g4(-2 a8 g)
	    c4-5-. g-.
	    b8([-4 g-2 a b)]
	    c4 r
	    a8([-3 bes g a]
	    f4-1 a)
	    g2-2->
	    c-5->
	    c8([-5 bes-4 g-2 a]
	    f4-1 a)
	    g8([-2 c bes-4 g)]
	    f4-1 r
	}
	g4(-2 a8 g)
	f4(-1 a)-3
	c(-5 bes8-4 g)-2
	c4( a8-3 f)-1
	g4(-2 a8 g)
	f4(-1 a)-3
	c8([-5 bes-4 g-2 a)]
	f([-1 a-3 c-5 a)]
	f([-1 a c a)]
	f4-1 r
	a-2 r
	f2-1\fermata\bar "|."
    }
}

primoDown = \notes {
    \time 2/4
    \clef treble
    \key f \major
    \relative c'' {
	\modernAccidentals
	\repeat volta 2 {
	    c4(-1 bes-2
	    a-3 c)
	    bes(-2 c
	    bes g)-4
	    c(-1 bes
	    a c)
	    <bes-2 c-1> <bes c>
	    <a c> r
	}
	\repeat volta 2 {
	    g4(-4 a8 g)
	    c4-1-. g-.
	    b-2-. g-.
	    c(-1 g)

	    g4(-4 a8 g)
	    c4-1-. g-.
	    b8([-2 g-4 a b)]
	    c4 r
	    c(-1 bes
	    a-3 c)
	    bes(-2 c
	    bes g)
	    c(-1 bes
	    a c)
	    <bes-2 c-1> <bes c>
	    <a c> r
	}
	<bes-2 c-1>2
	<a-3 c-1>
	<bes c>4 <bes c>
	<a c> <a c>
	<bes c>2
	<a c>
	<bes c>4 <bes c>
	<a c> <a c>
	<a c> <a c>
	<a c> r
	<f-5 a-3 c-1> r
	<f a c>2 \fermata \bar "|."
    }
}

secondoDynamics = \notes {
    s2\p s2 s2 s2 s2\p s2 s2\f s2 s2\mf s2 s2 s2
    s2-\markup\italic{cresc.} s2 s2\f s2 s2\p s2 s2 s2 s2\p s2 s2\f s2
    s2\p s2 s2\f s2 s2\p s2 s2\f s2 s2 s2 s2 s2
}

secondoUp = \notes {
    \time 2/4
    \clef bass
    \key f \major
    \relative c' {
	\modernAccidentals
	\repeat volta 2 {
	    c4(-2 e-4
	    f-5 c)-2
	    e(-4 c-2
	    g c)
	    c(-2 e-4
	    f-5 c)-2
	    <bes-1 c-2 e-4> <bes c e>
	    <a-1 c-2 f-5> r
	}
	\repeat volta 2 {
	    <c-2 e-4>8([ g-1 <c e> g)]
	    <c e>8([ g <c e> g)]
	    <d'-3 f-5>([ g,-1 <d' f> g,)]
	    <c-2 e-4>8([ g-1 <c e> g)]
	    
	    <c e>([ g <c e> g)]
	    <c e>([ g <c e> g)]
	    <d'-3 f-5>([ g, <d' f> g,)]
	    <g c-2 e-4>[-. c(-3 b-2 c])-3
	     c4(-2 e-4
	     f c)
	     e(-4 c-2
	     g c)
	     c(-2 e-4
	     f c)
	     <bes c e-4> <bes c e>
	     <a-1 c-2 f-5> r
	 }
	    e'8([-5 c-3 bes-2 c)]
	    a([-1 c-3 f c)]
	    \property Voice.fingeringOrientations = #'(left)
	    <g-1 bes-2 c-3 e-5> r <g bes c e> r
	    <a-1 c-3 f-5> r <a c f> r
	    \property Voice.fingeringOrientations = #'(top)
	    e'([-5 c-3 bes c)]
	    a([-1 c-3 f c)]
	    \property Voice.fingeringOrientations = #'(left)
	    <g-1 bes-2 c-3 e-5> r <g bes c e> r
	    \property Voice.fingeringOrientations = #'(top)
	    f'([-5 c-2 a-1 c)]
	    f([ c a c)]
	    f4 r
	    <f, a c-4> r
	    <f a c>2 \fermata \bar "|."

    }
}

secondoDown = \notes {
    \time 2/4
    \clef bass   
    \key f \major
    \relative c, {
	\modernAccidentals
	\repeat volta 2 {
	    <f c' f>2 ~
	    <f c' f>
	    <f c' f>2 ~
	    <f c' f>
	    <f c' f>2 ~
	    <f c' f>
	    <c c'>4 <c c'>
	    <f f'> r
	}
	\repeat volta 2 {
	    <c g' c>4 r
	    <c g' c> r
	    <c g' c> r
	    <c g' c> r

	    <c g' c> r
	    <c g' c> r
	    <g g'> <g g'>
	    <c c'> r
	    <f c' f>2 ~
	    <f c' f>
	    <f c' f>2 ~
	    <f c' f>
	    <f c' f>2 ~
	    <f c' f>
	    <c c'>4 <c c'>
	    <f f'> r
	}
	<c c'> r
	<f f'> r
	c8 r c' r
	f, r f' r
	<c, c'>4 r
	<f f'> r
	<c c'>8 r <c c'> r
	<f c' f> r <f c' f> r
	<f c' f> r <f c' f> r
	<f c' f>4 r
	<f, f'>4 r
	<f f'>2\fermata \bar "|."
    }
}

\score{
    \context PianoStaff  <<
	\property PianoStaff.instrument = "Secondo     " 
	\context Staff = up   \secondoUp
	\context Dynamics = dynamics \secondoDynamics
	\context Staff = down \secondoDown
    >>
    \paper {
	\translator {
	    \type "Engraver_group_engraver"
	    \name Dynamics
	    \consists "Output_property_engraver"
      
	    minimumVerticalExtent = #'(-1 . 1)
      
	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"
	    
	    TextScript \override #'font-relative-size = #1
	    TextScript \override #'font-shape = #'italic
	    DynamicText \override #'extra-offset = #'(0 . 2.0)
	    Hairpin \override #'extra-offset = #'(0 . 2.0)
	    
	    \consists "Skip_event_swallow_translator"
	    
	    \consistsend "Axis_group_engraver"
	}
	\translator {
	    \PianoStaffContext
	    \accepts Dynamics
	    VerticalAlignment \override #'forced-distance = #7
	}
    }
    \header { piece = "Allegro." }
}
  

\score{    
    \context PianoStaff <<
	\property PianoStaff.instrument = "Primo     " 
	\context Staff = up   \primoUp
	\context Dynamics = dynamics \primoDynamics
	\context Staff = down \primoDown
    >>

    \paper {
	\translator {
	    \type "Engraver_group_engraver"
	    \name Dynamics
	    \consists "Output_property_engraver"
      
	    minimumVerticalExtent = #'(-1 . 1)
      
	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"
	    
	    TextScript \override #'font-relative-size = #1
	    TextScript \override #'font-shape = #'italic
	    DynamicText \override #'extra-offset = #'(0 . 2.0)
	    Hairpin \override #'extra-offset = #'(0 . 2.0)
	    
	    \consists "Skip_event_swallow_translator"
	    
	    \consistsend "Axis_group_engraver"
	}
	\translator {
	    \PianoStaffContext
	    \accepts Dynamics
	    VerticalAlignment \override #'forced-distance = #7
	}
    }
    \header { piece = "Allegro." }
}



\score{
    \context PianoStaff \notes <<
	\context Staff = up   <<
	    \apply #unfold-repeats \primoUp
	    \apply #unfold-repeats \secondoUp
	>>
	\context Staff = down <<
	    \apply #unfold-repeats \primoDown
	    \apply #unfold-repeats \secondoDown
	>>
    >>
    \midi { \tempo 4 = 120 }
}



