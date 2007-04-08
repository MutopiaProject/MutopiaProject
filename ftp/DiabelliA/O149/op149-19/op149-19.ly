\version "2.4.0"
% $Revision: 1.3 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "19."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke"
    mutopiacomposer = "Anton Diabelli"
    mutopiaopus = "Opus 149-19"
    mutopiainstrument = "Piano, Piano"
    source = "If I could know..."
    style = "Classical"
    copyright = "Creative Commons 2.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
    lastupdated = "2005/Feb/10"

    footer = "Mutopia-2005/02/12-533"
tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright "+ \maintainer + " 2005.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

primoDynamics =  {
    s8\p s2 s2\sf s4\sf s16\< s8 s16\! s4\f s8 s8\p s2 s2\sf s2 s4 s8
    s8\p s2 s2 s2 s2 s8\< s4 s4 s4 s8\! s2\f s4 s8
    s8\p s2\sf s2\p s2\sf s2\p s2-\markup\italic{cresc.} s8\< s4 s8\! s2\ff s2
}

primoUp =  {
    \time 2/4
    \clef treble
    \key f \major
    \relative c'''' {
        \override Score.OttavaBracket   #'padding = #2
	#(set-octavation 1)
	#(set-accidental-style 'modern)
	\repeat volta 2 {
	    \partial 8 a8-5-.
	    g[-4-. f-3-. e-2-. d]-1-.
	    e8.(-2 f16)-3 d8-1-. f-.
	    e8.(-2 f16 d-1 e f g)
	    a4---5 r8 a-5-.
	    g[-. f-. e-. e]-.-1
	    e8.(-2 f16) d8-. f-.
	    e8(-2 g16-4 f e8[ f16 e])
	    \partial 8*3 d4-- r8
	}
	\repeat volta 2 {
	    \partial 8 d8-1-.
	    e8[-2-. e-. d-. e]-.
	    f8.(-3 g16 f8) f-.
	    g8[-4-. g-. f-. g]-.
	    a4---5 r8 a-.
	    g8[-4-. g-. a-. e]-.-2
	    f8.(-3 e16 d8) d-.
	    e[-2-. g-4-. f-. e]-.
	    \partial 8*3 d4-- r8
	}
	\partial 8 d8-.
	f8.(-3 e16 d8) d-.
	a'4(-5 d,8) d-.
	f8.(-3 e16 d8) d-.
	a'4.-- d,8-.
	f8.(-3 e16 d8) d-.
	d8-. d16( e) f8-. f16(-3 g)
	a8.-> a16-. a8-. a-.
	d,4---1 r \bar "|."
    }
}

primoDown =  {
    \time 2/4
    \clef treble
    \key f \major
    \relative c''' {
	#(set-accidental-style 'modern)
	\repeat volta 2 {
	    \partial 8 r8
	    r8 a[-1-. g-2-. f]-3-.
	    g8[-2-. a-.-1 f-.-3 a]-.
	    g8[-. a-. f-.-3 d]-.
	    e16(-4 f g f e8) r
	    r8 a[-1-. g-. f]-.
	    g8[-2-. a-. f-.-3 a]-.
	    g8.(-2 f16 e8[-4 f16 e])
	    \partial 8*3 d4-- r8
	}
	\repeat volta 2 {
	    \partial 8 d8-5-.
	    e8[-4-. e-. d-. e]-.
	    f8.(-3 g16 f8) f-.
	    g8[-2-. g-. f-. g]-.
	    a4---1 r8 a-.
	    g8[-2-. g-. a-. e]-.-4
	    f8.(-3 e16 d8) d-.
	    e[-4-. g-2-. f-. e]-.
	    \partial 8*3 d4-- r8
	}
	\partial 8 d8-.
	f8.(-3 e16 d8) d-.
	a'4(-1 d,8) d-.
	f8.(-3 e16 d8) d-.
	a'4.-- d,8-.
	f8.(-3 e16 d8) d-.
	d8-. d16( e) f8-. f16(-3 g)
	a8.-> a16-. a8-. a-.
	d,4---5 r \bar "|."
    }
}

secondoDynamics =  {
    s8\p s2 s2\sf s2\sf s4\f s8 s8\p s2 s2\sf
    s2 s2 s2\p s2 s2 s2 s2
    s8\< s4 s8\! s2\f s8 s4 s2\p s2\sf s2\p
    s2\sf s2\p s4-\markup\italic{cresc.} s8\< s8 s4 s8 s8\! s2\ff s2
}

secondoUp =  {
    \time 2/4
    \clef treeble
    \key f \major
    \relative c'' {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    \partial 8 a8-5-.
	    a[-. a-. a-. a]-.
	    <cis,-2 g'-4 a-5> <cis g' a> <d-1 f-3 a-5> r
	    <cis g' a> <cis g' a> <d f a> r
	    <cis-2 e-3 a-5>[ <cis e a> <cis e a>] a'-.
	    a[-. a-. a-. a]-.
	    <cis,-2 g'-4 a-5> <cis g' a> <d-1 f-3 a-5> r

            r8 <d e-2 bes'-5> r <cis-2 e-3 g-4 a-5>
            \partial 8*3 <d-1 f-3>[-. <f-3 a-5>-. <d-1 f-3>]-.
	}
	\repeat volta 2 {
	    \partial 8 r8
	    r <c g'-3 bes-5> r <c g' bes>
	    r <c f-2 a-4> r <c f a>
	    r <c e-2 bes'-5> r <c e bes'>
	    r <c f-3 a-5> r <c f a>
	    r <e-2 g-4 a-5> r <e g a>

	    r <d-1 f-3 a-5> r <d f a>
	    r <d-1 e-2 bes'-5> r <cis-2 g'-4 a-5>
	}
        \alternative {
	    { \partial 8*3 <d-1 f-3>[-. <f a>-. <d f>]-. }
	    { d16(-1 f-3 a-5 f d f a f) }
	}
        d(-1 f-3 gis-4 f d f gis f)
        d( f-3 a-5 f d f a f)      

	d( f-3 gis-4 f d f gis f)
        d( f-3 a-5 f d f a f)
      	d( f-3 gis-4 f d f gis f)
        d( f-3 a-5 f d f a f)
        <d-1 e-2 a-5>8-. <d e a>16-. <d e a>-. <cis-2 e-3 a-5>8-. <cis e a>-.
	<d-1 f-3 a-5>4-- r \bar "|."
    }	
}	

secondoDown =  {
    \time 2/4
    \clef bass   
    \key f \major
    \relative c {
	#(set-accidental-style 'modern)
	\repeat volta 2 {
	    \partial 8 r8
	    r2
	    <a-5 e'-1>8 <a e'> d8-2 r
	    <a e'>8 <a e'> d8 r
	    <a e'>8 <a e'> <a e'> r
	    r2
	    <a e'>8 <a e'> d8 r

	    g,8-5 r a r
	    \partial 8*3 d8[ d d]
	}
	\repeat volta 2 {
	    \partial 8 r8
	    c-2 r c r
	    c r c r
	    c r c r
	    f r f r
	    cis r cis r
	    d r d r
	    g,-5 r a r
	}
	\alternative {
	    { \partial 8*3 d[ d d] }
	    { d2 }
	}
	\set fingeringOrientations = #'(left)
	<d-5 f-3 gis-2 b-1>2
	<d-5 f-3 a-1>2

        <d-5 f-3 gis-2 b-1>2
	<d-4 f-3 a-1>2
	<b-4 d-2 f-1>2
        <a-5 d-2 f-1>2
	<a, a'>8-. <a a'>-. <a a'>-. <a a'>-.
	<d a' d>4-- r \bar "|."
    }
}

\score{
    \context PianoStaff  <<
	\set PianoStaff.instrument = "Secondo     " 
	\context Staff = "up"   \secondoUp
	\context Dynamics = "dynamics" \secondoDynamics
	\context Staff = "down" \secondoDown
    >>
    \layout {
	\context {
	    \type "Engraver_group_engraver"
	    \name Dynamics
	    \consists "Output_property_engraver"
      
	    minimumVerticalExtent = #'(-1 . 1)
      
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
    \header { piece = "Allegretto." }
}
  

\score{    
    \context PianoStaff <<
	\set PianoStaff.instrument = "Primo     " 
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
    >>

    \layout {
	\context {
	    \type "Engraver_group_engraver"
	    \name Dynamics
	    \consists "Output_property_engraver"
      
	    minimumVerticalExtent = #'(-1 . 1)
      
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
    \header { piece = "Allegretto."}
}



\score{
    \context PianoStaff  <<
	\context Staff = "up"   <<
	    \applymusic #unfold-repeats \primoUp
	    \applymusic #unfold-repeats \secondoUp
	>>
	\context Staff = "down" <<
	    \applymusic #unfold-repeats \primoDown
	    \applymusic #unfold-repeats \secondoDown
	>>
    >>
    \midi { \tempo 4 = 70 }
}



