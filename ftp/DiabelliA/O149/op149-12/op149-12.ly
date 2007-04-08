\version "2.0.1"
% $Revision: 1.1 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "12."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke"
    mutopiacomposer = "Anton Diabelli"
    mutopiaopus = "Opus 149-12"
    mutopiainstrument = "Piano, Piano"
    source = "If I could know..."
    style = "Classical"
    copyright = "MutopiaBSD"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
    lastupdated = "2004/Mar/07"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and released under the MutopiaBSD licence by " + \maintainer + ".} \\makebox[\\textwidth][c]{You should have received a copy of the licence with this music. If not, it is available at the above website.}}"
    footer = "Mutopia-2004/03/07-418"
}

primoDynamics = \notes {
    s2.\p s4 s2\f s2.\p s2. s2. s2. 
    s2 s16\< s8 s16\! s4\> s4\! s4 s2.\p s2. s2. s2. s2.
    s2. s2.\f s2. s2.\ff s2. s2 s4\pp s2.
}

primoUp = \notes {
    \time 3/4
    \clef treble
    \key f \major
    \relative c'' {
	\modernAccidentals
	\repeat volta 2 {
	    f4(-1 a-3 g)-2
	    g8( f) f4 r
	    g(-2 bes-4 a)
	    a8( g) g4 r
	    a8.(-3 bes16 c4 f,)-3
	    bes8(-4 a) g4 r

	    a8.([ bes32 a)] g8([ c)] c16([ b a b)]
	    b4( c) r 
	}
	\repeat volta 2 {
	    a4(-3 bes a)
	    a8( g f4) r
	    f(-1 g f)
	    f8( bes)-4 bes4 r
	    bes8.(-4 a16 g4 c)

	    a16(-3 bes g a) f4 r
	    c'8-5-. b-. c-. bes-. a-. g-.
	    g4( f) r
	}
	bes8.-4 bes16 a4 r
	g8.-2 g16 f4 r
	g8-2-. r bes-4-. r a(-3 g)
	g4( f) r \fermata \bar "|."
    }
}

primoDown = \notes {
    \time 3/4
    \clef treble
    \key f \major
    \relative c'' {
	\modernAccidentals
	\repeat volta 2 {
	    a8(-3 c-1 a c bes-2 c)-1
	    bes( a) a(-3 c-1 a-3 f)-5
	    g(-4 c bes-2 c a-3 c)
	    a(-3 g) g(-4 c bes g)
	    a(-3 c a c a c)
	    g(-4 c bes-2 c bes c)

	    a4-3 g8([-4 c)] c16(-1 b a b)
	    b4(-2 c) r
	}
	\repeat volta 2 {
	    a4(-3 bes a)
	    a8(-3 g f4) r
	    f(-5 g f)
	    f8(-5 bes)-2 bes4 r
	    bes8.(-2 a16 g4 c)-1

	    <a-3 c-1>2 r4
	    c8-1-. b-. c-. bes-. a-. g-4-.
	    g4(-4 f) r
	}
	bes8.-2 bes16 a4 r
	g8.-4 g16 f4 r
	g8-4-. r bes-2-. r a(-3 g)
	g4(-4 f)-5 r \fermata \bar "|."
    }
}

secondoDynamics = \notes {
    s2.\p s4 s2\f s2.\p s2. s2. s2. s4 s8\< s4 s8\!
    s8\> s8 s8\! s4. s2.\p s2. s2. s2. s2. s4. s4.\f
    s2. s2. s2.\ff s2. s2 s4\pp s2.
}

secondoUp = \notes {
    \time 3/4
    \clef bass
    \key f \major
    \relative c' {
	\modernAccidentals
	\repeat volta 2 {
	    f8(-5 c-2 f c e-4 c)
	    <c-2 e-4>( f)-5 f(-5 c-3 a-2 f)
	    e'(-5 c-3 g-1 c-5 f,-2 c'-5)
	    << { c4-5 } \\ { f,8[(-2 e])-1 } >> <e c'>8 e([-2 g-1 c)]-2
	    f8(-4 c-2 f c f c)
	    e(-4 c-2 e c e c)
	    c(-2 d <c e-4>4 <d f-5>)

	    << { <d f-5>4( <c e-4>8) } \\ { g4.} >> c8([-2 <b-1 d-3> <bes-2 e-4>)]
	}
	\repeat volta 2 {
	    \property Voice.fingeringOrientations = #'(left)
	    <a-1 e'-5>8( g-2 e-1 g-2 e g)
	    f(-1 a-2 d-5 a-2 <f d'> a)
	    <a-2 ees'-5>( f <a ees'> f <a ees'> f)
	    <bes-3 d-5>( f <bes d> f <bes d> f)
	    e'(-5 c-3 bes c <bes-2 e-5> c)
	    <a-1 f'-5>( c-3 <a f'> c-3 a-2 f)

	    <e g bes-4 c-5>8 r <e g bes c> r <e bes' c>4
	    << { c'4.-5 } \\ { <e,-1 bes'-3>4( <f-1 a-3>8) } >> a8([-2 c-3 f-5)]
	}
	\clef treble
	<c g'-4>8.[ <c g'>16] <c f-3>8[ c16-2-. c-2-.] b(-2 c-3 d-4 c)-3
	\clef bass
	<g-1 bes-2 e-5>8.[ bes16] a8[ a16-2-. a-1-.] gis(-2 a-3 bes-4 a)-3
	d8-5-. r <bes d>-. r <e,-1 bes'-3 c-4>4
	<< {c'2} \\ {<e, bes'>4( <f-1 a-2>) } >> r4 \fermata \bar "|."
    }
}

secondoDown = \notes {
    \time 3/4
    \clef bass   
    \key f \major
    \relative c, {
	\modernAccidentals
	\repeat volta 2 {
	    <f f'>4 r c'-2
	    f,2-5 r4
	    c4-2 e-3 f-2
	    c c' r
	    f,-3 a-2 c-1
	    c, c' c,
	    f8-2 d-4 g(-1 fis g g,)

	    c([ c' c,)] << {e'([-2 f-1 g)]-2} \\ {c,4.-4} >>
	}
	\repeat volta 2 {
	    <cis, cis'>4 r <cis cis'>
	    <d d'> d8(-5 f-4 a-2 d)
	    <c, c'>4 r <c c'>
	    <bes bes'> bes8(-5 d-3 f-2 bes)-1
	    <c, c'>4 r <c c'>
	    f-3 r8 c'8([-1 a-2 f]-3

	    c)-. r <c c'> r <c c'>4
	    f,8[ f' f,] r r4	    
	}
	<e' e'>8. <e e'>16 <f f'>4 r
	<cis cis'>8. <cis cis'>16 <d d'>4 r
	<bes bes'>8-. r <g g'> r <c c'>4
	<f, f'>2 r4 \fermata \bar "|."
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
    \header { piece = "Andante." }
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
    \header { piece = "Andante." }
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



