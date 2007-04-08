\version "2.0.1"
% $Revision: 1.5 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "11."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke"
    mutopiacomposer = "Anton Diabelli"
    mutopiaopus = "Opus 149-11"
    mutopiainstrument = "Piano, Piano"
    source = "If I could know..."
    style = "Classical"
    copyright = "MutopiaBSD"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
    lastupdated = "2004/Mar/06"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and released under the MutopiaBSD licence by " + \maintainer + ".} \\makebox[\\textwidth][c]{You should have received a copy of the licence with this music. If not, it is available at the above website.}}"
    footer = "Mutopia-2004/03/06-417"
}

primoDynamics = \notes {
    s2.\p s2. s4 s8\< s4 s8\! s4\> s8 s4\! s8 s2.\p s4 s8\< s4 s16 s16\!
    s2.\f s2. s2 s4\p s2. s2. s2.-\markup\italic{cresc.} s2.\f s2.\p
    s2. s2. s4 s4 s8 s8\p s4. s4.\sf s4. s4.\sf s8\< s8 s8\! s8\> s8 s8\! s4. s4.\pp s2.
}

primoUp = \notes {
    \time 6/8
    \clef treble
    \key bes \major
    \relative c''' {
	\modernAccidentals
	\repeat volta 2 {
	    g4-1 g8( bes-3 a-2 g)-1
	    d'4.(-5 a)-2
	    bes4-3 bes8 \acciaccatura{c8} bes( a g)
	    a4(-2 c16 bes a4) r8
	    bes4-3 bes8 bes( c bes)
	    bes4( g8 bes4) bes16(-3 c)

	    d4-5 d8 c(-4 d c)
	}
	\alternative {
	    { bes4 r8 r4 r8 }
	    { bes4.~bes8 r d }
	}
	\repeat volta 2 {
	    d4(-5 g,8)-1 g4 g8
	    g4( c8)-4 c4.--
	    bes4-3 bes8 bes( a) g
	    a4.~ a4 r8
	    g4-1 g8( bes-3 a g)

	    d'4.(-5 a)-2
	    bes4-3 bes8 a( bes a)
	}
	\alternative {
	    { g4.~g8 r d' }
	    { g,4. a8(-2 bes a) }
	}
	g4. a8( bes a)
	g4(-1 bes8-3 d4-5 bes8-3)
	g4-1 r8 g4 r8
	g2. \fermata \bar "|."
    }
}

primoDown = \notes {
    \time 6/8
    \clef treble
    \key bes \major
    \relative c'' {
	\modernAccidentals
	\repeat volta 2 {
	    g4-5 g8( bes-3 a g)
	    d'4.(-1 a)-4
	    bes4-3 bes8 \acciaccatura{c8} bes( a g)
	    a4(-4 c16 bes a4) r8
	    bes4-3 bes8 bes( c bes)
	    bes4( g8 bes4) bes16(-3 c)
	    
	    d4-1 d8 c(-2 d c)
	}
	\alternative {
	    { bes4 r8 r4 r8 }
	    { bes4.~bes8 r d }
	}
	\repeat volta 2 {
	    d4(-1 g,8)-5 g4 g8
	    g4( c8)-2 c4.--
	    bes4-3 bes8 bes( a) g
	    a4.~ a4 r8
	    g4-5 g8( bes-3 a g)

	    d'4.(-1 a)-4
	    bes4-3 bes8 a( bes a)
	}
	\alternative {
	    { g4.~g8 r d' }
	    { g,4.-5 a8(-4 bes a) }
	}
	g4. a8( bes a)
	g4(-5 bes8-3 d4-1 bes8-3)
	g4-5 r8 <g-5 bes-3>4 r8
	<g bes>2. \fermata \bar "|."
    }
}

secondoDynamics = \notes {
    s2.\p s2. s8\< s2 s8\! s8\> s2 s8\! s2.\p s8\< s2 s8\! s2.\f
    s4. s8-> s4 s2. s2.\p s2. s2.-\markup\italic{cresc.} s4.\f s8\> s8 s8\! s2.\p
    s2. s2. s2. s4. s4.\sf s4. s4.\sf s8\< s8 s8\! s8\> s8 s8\! s4. s4.\pp s2.
}

secondoUp = \notes {
    \time 6/8
    \clef bass
    \key bes \major
    \relative c' {
	\modernAccidentals
	\repeat volta 2 {
	    g8(-1 bes-3 d-5) g,( bes d)
	    a(-2 c-4 d)-5 a( c d)
	    g,(-1 bes-3 d-5) g,(-1 a-2 c)-4
	    fis,(-1 a-2 d)-5 fis,( a d)
	    g,(-1  bes-2 d)-4 aes(-1 bes-2 d)
	    g,(-1 bes-2 ees)-5 g,(-1 bes-2 des)-4
	    f,(-1 bes-3 d)-5 f,(-1 a-2 ees')-5
	}
	\alternative {
	    { f,(-1 bes-3 c)-4 <<  { d8(-5 c-4 a)-2 } \\ { fis4.-1 } >> }
	    { f8(-1 bes-3 d)-5 <d, bes'-4> r r }
	}
	\repeat volta 2 {
	    f(-1 g-2 d') f,( g d')
	    ees,(-1 g-2 ees') ees,( g ees')
	    g,(-1 bes-2 e)-5 g,( bes e)
	    <fis,-1 d'-4>4.(~ <fis d'>8 c'-3 a-2)
	    g(-1 bes-3 d-5) g,( bes d)

	    a(-2 c-4 d) a( c d)
	    g,(-1 bes-3 d) fis,(-2 c'-4 d)
	}
	\alternative {
	    { g,(-1 bes-3 d <g, bes>) r8 r8 }
	    { g(-1 bes-3 d) fis,(-2 c'-4 d) }
	}
	g,( bes d) fis,( c' d)
	g,(-1 bes-3 d)-5 g,( bes d)
	<g,-1 bes-3>4 r8 <g bes>4 r8
	<g bes>2. \fermata \bar "|."
    }
}

secondoDown = \notes {
    \time 6/8
    \clef bass   
    \key bes \major
    \relative c {
	\modernAccidentals
	\repeat volta 2 {
	    g,4 r8 g'4 r8
	    fis,4 r8 fis'4 r8
	    <g, g'>4 r8 <ees' ees'>4 r8
	    <d d'>4. ~ <d d'>4 r8
	    g4-2 r8 f4-3 r8
	    ees4-4 r8 e4 r8
	    f4 r8 <f, f'>4.
	}
	\alternative {
	    { <bes bes'>4 r8 <a a'>4 d8-2 }
	    { <bes bes'>4. ~ <bes bes'>8 r8 r8 }
	}
	\repeat volta 2 {
	    b4 r8 b'4 r8
	    c,4 r8 c'4 r8
	    cis,4 r8 cis'4 r8
	    d(-1 a-2 fis)-4 d4-5 r8
	    g,4 r8 g'4 r8
	    
	    fis,4 r8 fis'4 r8
	    <g, g'>4 r8 <d' d'>4 r8
	}
	\alternative {
	    { <g d>4. ~ <g d>8 r8 r8 }
	    { <g, g'>2. }
	}
	<g g'>2.
	<g g'>2.
	g8(-5 d'-2 g)-1 g,( d' g)
	<g, d' g>2. \fermata \bar "|."
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
    \header { piece = "Romanze. Andantino" }
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
    \header { piece = "Romanze. Andantino" }
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



