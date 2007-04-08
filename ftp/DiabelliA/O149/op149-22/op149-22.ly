\version "2.4.0"
% $Revision: 1.2 $

\header {
     title = "28 melodische Übungsstücke"
     subtitle = "22."
     composer = "Anton Diabelli"
     opus = "Op 149"

     mutopiatitle = "28 melodische Übungsstücke"
     mutopiacomposer = "Anton Diabelli"
     mutopiaopus = "Opus 149-22"
     mutopiainstrument = "Piano, Piano"
     source = "If I could know..."
     style = "Classical"
     copyright = "Creative Commons Attribution-ShareAlike 2.0"
     maintainer = "Alberto Simões"
     maintainerEmail = "ambs@cpan.org"
     maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
     lastupdated = "2005/May/12"

footer = "Mutopia-2005/05/15-555"
tagline = "\\raisebox{5mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& "+ \maintainer + " 2005.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

primoDynamics =  {
     s2\p s2 s2 s2 s8\< s4 s8\! s2\f s2 s2
     s2\p s2 s2 s2 s8 s4-\markup\italic{cresc.} s8 s2 s2\f s2 s2
     s2\f s2 s2 s2 s2 s2 s2 s2
}

primoUp =  {
     \time 2/4
     \clef treble
     \key a \major
     \relative c''' {
         \override Score.OttavaBracket   #'padding = #2
	#(set-octavation 1)
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a8[(-1 cis-3 e-5 d]-4	    cis4 b)
	    a8[( cis-3 e-5 d]	    cis4 b)
	    a8[(-1 b cis e]-5 b[-2 e cis-3 e] b[ e cis e] b[-2 e-5 d-4 b])
	}
	\repeat volta 2 {
	    cis8([-3 a b cis]  e4-5 d~-> d8) a[-1-. a-. b]-.
	    d4(-4 cis~-> cis8[) b(-2 cis b] e4)-5 e
	    e8\([ cis-3 \acciaccatura e8-5 d8-4 b]\)
	}
	\alternative{
	    { a2 }
	    { a4 r }
	}
	b8([-2 e-5 d-4 b)]   a2-1
	b8([-2 e-5 d-4 b)]   a[-1-. cis-3-. e-5-. cis]-.
	a[-. cis-. e-. cis]-.    a4  r   cis-3   r    a2-1\fermata \bar"|."
     }
}

primoDown =  {
     \time 2/4
     \clef treble
     \key a \major
     \relative c'' {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    r2 a8([-5 cis-3 e-1 d]-2  cis4 b)
             a8([-5 cis-3 e-1 d] cis[-3 b a cis])
             e4-1 <cis-3 e-1> <b-4 e-1> <cis e> <b e> r
	}
	\repeat volta 2 {
	    cis8([-3 a b cis]  e4-1 d~-> d8) a[-5-. a-. b]-.
	    d4(-2 cis~-> cis8[) b(-4 cis b] e4)-1 e
	    e8\([ cis-3 \acciaccatura e8-1  d8-2 b\)]
	}
	\alternative {
	    { a2 }
	    { a8([-5 e'-1 cis-3 e)] }
	}
	<b-4 d e>4 r
	a8[(-5 e'-1 cis-3 e])
	<b-4 d e>4 r
	a8[-5-. cis-3-. e-1-. cis]-.
	a8[-. cis-. e-. cis]-.
	a4 r <cis-3 e-1> r <a-5 cis-3>2 \fermata \bar "|."
     }
}

secondoDynamics =  {
     s2\p s2 s2 s2 s8\< s4 s8\! s2\f s2 s2
     s2\p s2 s2 s2 s2-\markup\italic{cresc.} s2 s2\f s2
     s2 s2\f s2 s2 s2 s2 s2 s2 s2
}

secondoUp =  {
     \time 2/4
     \clef bass
     \key a \major
     \relative c' {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <a-1 cis-3>8[( e' <gis,-1 b-2> e'])
	    <a,-1 cis-3>8[( e' <gis,-1 d'-4> e'])
	    <a, cis>8[( e' <gis, d'-4> e'])
	    <a, cis>8[( e' <gis, d'-4> e'])
	    <a, cis-3>[( e'-5 cis a])
	    r8 <gis-1 b-2 e-5> r <a-1 cis-3 e-5>
	    r8 <gis b e> r <a cis e>
	    <gis b e>4 r
	}
         \repeat volta 2 {
	    g'8([-5 a, g' a,)]
	    fis'([-4 a, fis' a,)]
	    f'([-5 a, f' a,)]
	    e'([-4 a, e' a,)]
	    <dis-3 fis-5>([ a <dis fis> a)]
	    <b-2 d-4 e-5>([ gis <b d e> gis)]
	    <a-1 cis-3 e-5>8 r <gis b d e> r
	}
	\alternative {
	    { <cis-3 e-5>([ a-1 <cis e> a)] }
	    { r8 <a-1 cis-3>[-. <cis e>-. <a cis>]-. }
	}
	r8 <gis d'-4 e-5>[ <gis d' e> <gis d' e>]
         r8 <a cis>[-. <cis e>-. <a cis>]-.
	r8 <gis d' e>[ <gis d' e> <gis d' e>]
         <a-1 cis-3>[-. e'-. <a, cis>-. e']-.
         <a, cis>[-. e'-. <a, cis>-. e']-.
         <a, cis>4 r <a-1 cis-3 e-5> r <e a cis>2 \fermata \bar"|."
     }	
}	

secondoDown =  {
     \time 2/4
     \clef bass
     \key a \major
     \relative c {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <a-3 e'>2 <a e'> <a e'> <a e'> <a e'>
	    <e e'>8 r <a e'> r	    <e e'>8 r <a e'> r
	    <e e'>4 r
	}
	\repeat volta 2 {
	    a4-3 r a-2 r a-3 r a-2 r <a, a'>2 <a a'> <a a'>8 r <e' e'> r
	}
	\alternative {
	    {<a e'>2}
	    {a8-2 r r4}
	}
	<e e'>2    a8 r8 r4
	<e e'>2->
	a4-2 r8 \times 2/3 { e16(-5 fis gis) }
	a4-2 r8 \times 2/3 { e16(-5 fis gis) }
	a4 r <a, a'> r <a a'>2 \fermata \bar "|."
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
     \midi { \tempo 4 = 80 }
}


