\version "2.4.0"
% $Revision: 1.1 $

\header {
     title = "28 melodische Übungsstücke"
     subtitle = "26."
     composer = "Anton Diabelli"
     opus = "Op 149"

     mutopiatitle = "28 melodische Übungsstücke"
     mutopiacomposer = "Anton Diabelli"
     mutopiaopus = "Opus 149-26"
     mutopiainstrument = "Piano, Piano"
     source = "If I could know..."
     style = "Classical"
     copyright = "Creative Commons Attribution-ShareAlike 2.0"
     maintainer = "Alberto Simões"
     maintainerEmail = "ambs@cpan.org"
     maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
     lastupdated = "2005/May/14"

footer = "Mutopia-2005/05/15-559"
tagline = "\\raisebox{5mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& "+ \maintainer + " 2005.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

primoDynamics =  {
     s8\ff s1 s1 s1
     s1 s1 s1 s1 s2 s4 s8
     s8\p s1 s1 s2 s8\< s4 s8\! s2\f s4 s8 s8\ff
}

primoUp =  {
     \time 4/4
     \clef treble
     \key c \major
     \relative c''' {
         \override Score.OttavaBracket   #'padding = #2
	#(set-octavation 1)
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    \partial 8 a16(-1 b)-2
	    c4-3 r8 c16( b) a4 r8 a16( b)
	    c8[-. b-. a-1-. c]-.-3 e4-.-5 r8 a,16(-1 b)
	    c4 r8 c16(-3 b) a4 r8 b16(-2 c)

	    b8-2-. d16(-4 c) b8-. d16( c) b4 r8 a16(-1 b)
	    c4 r8 c16(-3 b) a4 r8 a16(-1 b)
	    c8[-. b-. a-1-. c]-.-3 e4-5 r8 c16(-3 d)
	    e4 r8 b16(-2 c) d4 r8 a16([-1 b)]
	    \partial 8*7 c8[-3-. e-5-. c-. e]-. c4 r8
	}
	\repeat volta 2 {
	    \partial 8 b16(-2 c)
	    d4 r8 d16(-4 c) b4 r8 a16(-1 b)
	    c8-. c16(-3 d) e4-> c8-. c16( d) e4->
	    d4-4 r8 c16( b) c4-3 r8 b16( a)
	    b8[-2-. e-.-5 b-. e]-. b4 r8 a16(-1 b)

	    c4 r8 c16(-3 b) a4 r8 a16(-1 b)
	    c8[-. b-. a-. b]-. c4 r8 a16(-1 b)
	    c8-. c16(-3 d) e8-. d16(-4 c) b8-. b16(-2 c) d8[-. c16(-3 b)]
	    \partial 8*7 a8[-.-1 c-.-3 a-. c]-. a4 r8
	}
     }
}

primoDown =  {
     \time 4/4
     \clef treble
     \key c \major
     \relative c'' {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(down)
	\repeat volta 2 {
	    \partial 8 a16(-5 b)-4
	    c4-3 r8 c16( b) a4 r8 a16( b)
	    c8[-. b-. a-5-. c]-.-3 e4-.-1 r8 a,16(-5 b)
	    c4 r8 c16(-3 b) a4 r8 b16(-4 c)


	    b8-4-. d16(-2 c) b8-. d16( c) b4 r8 a16(-5 b)
	    c4 r8 c16(-3 b) a4 r8 a16(-5 b)
	    c8[-. b-. a-5-. c]-.-3 e4-1 r8 c16(-3 d)
	    e4 r8 b16(-4 c) d4 r8 a16([-5 b)]
	    \partial 8*7 c8[-3-. e-1-. c-. e]-. c4 r8
	}
	\repeat volta 2 {
	    \partial 8 b16(-4 c)
	    d4 r8 d16(-4 c) b4 r8 a16(-5 b)
	    c8-. c16(-3 d) e4-> c8-. c16( d) e4->
	    d4-2 r8 c16( b) c4-3 r8 b16( a)
	    b8[-4-. e-.-1 b-. e]-. b4 r8 a16(-5 b)

	    c4 r8 c16(-3 b) a4 r8 a16(-5 b)
	    c8[-. b-. a-. b]-. c4 r8 a16(-5 b)
	    c8-. c16(-3 d) e8-. d16(-2 c) b8-. b16(-4 c) d8[-. c16(-3 b)]
	    \partial 8*7 a8[-.-5 c-.-3 a-. c]-. a4 r8
	}
     }
}

secondoDynamics =  {
     s8 s1\ff s1 s1 s1
     s1 s1 s1 s2 s4 s8
     s8 s1\p s1 s2 s8 s8\< s8 s8\! s2\f s8\< s4 s8\!
     s1\ff s1 s1 s4 s8 s2
}

secondoUp =  {
     \time 4/4
     \clef bass
     \key c \major
     \relative c {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    \partial 8 r8
	    r8 <e a-3 c-5>[ <e a c> <e a c>] r <e a c>[ <e a c> <e a c>]
	    r8 <e a c> r <e a c> r8 <e a c>[ <e a c> <e a c>]
             r8 <c'-3 e-5>[-. <a-1 c-3>-. <c e>]-. r <c e>[-. <a c>-. <c e>]-.
             <gis-1 b-2 e-5> r <gis b e> r <gis b e> e'16-3 e-2 e8-1 e-2

             r8 <e, a-3 c-5>[ <e a c> <e a c>] r <e a c>[ <e a c> <e a c>]
             r8 <e a c> r <e a c> r <e a c>[ <e a c> <e a c>]
             r8 <g c-2 e-4>16 <g c e> <g c e>8 <g c e> r <g d'-3 f-5>16 <g d' f> <g d' f>8[ <g d' f>]
             \partial 8*7 <g c-2 e-4>8 r <g c e> r <g c e>4 r8
	}
         \repeat volta 2 {
	    \partial 8 r8
	    r8 <g-1 b-2 d-4 f-5>[ <g b d f> <g b d f>] r <g d'-3 f-5>[ <g d' f> <g d' f>]
             r8 <g c-2 e-4>[ <g c e> <g c e>] r <g c e>[ <g c e> <g c e>]
             r8 <e gis-2 d'-5>[ <e gis d'> <e gis d'>] r <e a-2 c-4>[ <e a c> <e a c>]
             <e-1 gis-2 b-3> r <e-1 gis-2 b-3 e-5> r <e gis b e> <e e'>16 <e e'> <e e'>8[ <e e'>]

             r8 <e a-3 c-5>[ <e a c> <e a c>] r8 <e a c>[ <e a c> <e a c>]
             r8 <dis-1 a'-3 c-5>[ <dis a' c> <dis a' c>] r <dis a' c>[ <dis a' c> <dis a' c>]
             r8 <e-1 a-3 c-5> r <e a c> r <e-1 gis-2 d'-5> r <e gis d'>
             \partial 8*7 <e-1 a-3 c-5> r <e a c> r <e a c>4 r8
	}
     }	
}	

secondoDown =  {
     \time 4/4
     \clef bass
     \key c \major
     \relative c, {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    \partial 8 r8
	    <a a'>4 r <a a'> r
	    <a a'>8 r <a a'> r <a a'>4 r
	    <a a'>4 r <a a'> r
	    <e' e'>8 r <e-5 gis-3 b-2 e-1> r <e gis b e>4 r

             <a, a'>4 r <a a'> r
             <a a'>8 r <a a'> r <a a'>4 r
             <g g'>4 r <g g'> r
             \partial 8*7 <c c'>8 r <c-5 e-4 g-2 c-1> r <c e g c>4 r8
	}
	\repeat volta 2 {
	    \partial 8 r8
	    g'4-2 r g r
	    c-1 r c r
	    b-2 r a-3 r
	    e8 r e r e r r4
	
	    <a, a'>4 r <a a'> r
	    <f f'> r <f f'> r
	    <e e'>8 r <e e'> r <e e'> r <e e'> r
	    \partial 8*7 <a a'> r <a c e a> r <a c e a>4 r8
	}
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
     \header { piece = "Alla Turca. Allegro." }
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
     \header { piece = "Alla Turca. Allegro."}
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


