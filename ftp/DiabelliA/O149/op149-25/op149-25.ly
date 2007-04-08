\version "2.4.0"
% $Revision: 1.2 $

\header {
     title = "28 melodische Übungsstücke"
     subtitle = "25."
     composer = "Anton Diabelli"
     opus = "Op 149"

     mutopiatitle = "28 melodische Übungsstücke"
     mutopiacomposer = "Anton Diabelli"
     mutopiaopus = "Opus 149-25"
     mutopiainstrument = "Piano, Piano"
     source = "If I could know..."
     style = "Classical"
     copyright = "Creative Commons Attribution-ShareAlike 2.0"
     maintainer = "Alberto Simões"
     maintainerEmail = "ambs@cpan.org"
     maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
     lastupdated = "2005/May/14"

footer = "Mutopia-2005/05/15-558"
tagline = "\\raisebox{5mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& "+ \maintainer + " 2005.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

primoDynamics =  {
     s1\p s1 s4 s4 s8 s8\< s8 s8\! s1\f
     s1\p s4 s4-\markup\italic{cresc.} s2 s1\f s1
     s1\f s1 s1 s1
     s1\p s8\< s8 s2 s8 s8\! s1\f s1
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
	    c16(-3 d b c) a8-. r c16(-3 d b c) a8-. r
	    d16(-4 e c d) b8-. r d16(-4 e c d) b8-. r
	    c16(-3 e b-2 e a,-1 e' b-2 e) c(-3 e b-2 e c-3 e a,-1 e')
	    b(-2 c d c b-2 c d c) b(-2 c d c e-5 d c b)

	    c16(-3 d b c) a8-. r c16( d b c) a8-. r
	    d16(-4 e c d) b8-. r d16( e c d) b8-. r
	    e16(-5 d c d c-3 d e c) d(-4 c b c b-2 c d b)
	    c(-3 d c b c-3 e-5 c e) c4-- r
	}
	\repeat volta 2 {
	    <d-4 e-5>8-. <c e>-. <b e>-. <c e>-. <d e>-. <c e>-. <d e>-. <b-2 e-5>-.
	    <c-3 e-5>-. <b e>-. <a e'>-. <b e>-. <c e>-. <b e>-. <c e>-. <a-1 e'-1>-.
	    <b-2 e-5>-. <d e>-. <c e>-. <a-1 e'-5>-. <b e>-. <d e>-. <c e>-. <a-1 e'-5>-.
	    <b-2 e-5>-. <c e>-. <b e>-. <c e>-. <b e>-. b16(-2 c e-5 d c b)

	    c16(-3 d b c) a8-. r c16( d b c) a8-. r
	    d16(-4 e c d) b8-. r d16( e c d) b8-. r
	    c16(-3 e d c b-2 d c b a-1 c b a b-2 e-5 b e
	    a,-1 e'-5 c-3 b-2 a-1 e' c b a4)-- r
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
	    c8[-3 b-. a]-. r c[-. b a]-. r
	    d[-2 c-. b]-. r d[-. c-. b]-. r
	    c[-3-. b-. a-. b]-. c[-. b-. c-.-3 a]-.-5
	    b16(-4 c d c b-4 c d c) b8-4 r r4

	    c8[-3 b-. a]-. r c[-. b a]-. r
	    d[-2 c-. b]-. r d[-. c-. b]-. r
	    <c-3 e-1> r <c e> r <b-4 d-2> r <b d> r
	    <c-3 e-1> r <c e> r <c e>4-- r
	}
	\repeat volta 2 {
	    d16(-2 e-1 c-3 e b-4 e c-3 e d-2 e c-3 e d-2 e b-4 e)
	    c(-3 e b-4 e a,-4 e' b-4 e c-3 e b-4 e c-3 e a,-5 e')
	    b(-4 e d-2 e c-3 e a,-5 e') b(-4 e d-2 e c-3 e a,-5 e')
	    b(-4 e c-3 e b-4 e c-3 e) b8-4-. r r4

	    c8[-3 b-. a]-. r c[-. b a]-. r
	    d[-2 c-. b]-. r d[-. c-. b]-. r
	    <c-3 e-1>8 r <b-4 d-2> r <a-5 c-3> r <b d> r
	    <a-5 c-3> r <a c> r <a c>4-- r
	}
     }
}

secondoDynamics =  {
     s1\p s1 s8\< s4 s4 s4 s8\! s1\f
     s1\p s4 s8 s2-\markup\italic{cresc.} s8 s1\f s1
     s1\f s1 s1 s1
     s1\p s8\< s4 s4 s4 s8\! s1\f s1
}

secondoUp =  {
     \time 4/4
     \clef treble
     \key c \major
     \relative c' {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    e8[-3-. d-2-. c]-1-. r e[-. d-. c]-. r
	    b[-4-. a-3-. gis]-.-2 r b[-. a-. gis]-. r
	    e'[-3-. d-. c-. d]-. e[-. d-. e-. c]-.
	    <gis-2 b-3 e-5>4 <gis b e> <gis b e> r

	    e'8[-3-. d-. c]-. r e[-. d-. c]-. r
	    f[-4-. e-. d]-. r f[-. e-. d]-. r
	    g16(-5 f e f e f g e) f(-4 e d e d e f d)
	    e(-3 f e d e g e g) e4-- r
	}
	\repeat volta 2 {
	    b8[-4-. a-. gis-. a]-. b[-. a-. b-. gis]-.-2
	    e'[-5-. d-. c-. d]-. e[-. d-. e-5-. c]-5-.
	    <gis-2 e'-5>[-. b-3-. <a-1 e'-5>-. c]-4-. <gis e'>[-. b-. <a e'>-. c]-.
             <gis-2 b-3 e-5>[-. <a-1 c-4 e-5>-. <gis b e>-. <a c e>]-. <gis b e>8 r r4

             e'8[-3-. d-. c]-. r e[-. d-. c]-. r
             b[-4-. a-. gis]-. r b[-. a-. gis]-. r
             r <a c-3 e-5> r <a b-2 f'-5> r <a c-3 e-5> r <gis-2 d'-4 e-5>
	    <a-1 c-3 e-5> r <a c e> r <a c e>4-- r
	}
     }	
}	

secondoDown =  {
     \time 4/4
     \clef bass
     \key c \major
     \relative c {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a4-3 r8 e'8-. a,4 r8 e'-.
	    e,4 r8 e'-. e,4 r8 e'-.
	    << { a,8 e' e e a, e' e e } \\ { a,2-3 a } >>
	    e8[ e' e, e'] e,4 r

	    a4-5 r8 e'8-2-. a,4 r8 e'8-.
	    g,4-5 r8 g'8-1-. g,4 r8 g'8-.
	    c,8[-3-. g'-. c,-. g']-. g,[-. g'-. g,-. g']-.
	    c,[-3-. g'-. c,-. g']-. c,4-- r
         }
	\repeat volta 2 {
	    << { e,8 e' e e e, e' e e } \\ { e,2 e } >>
	    << { a8 e' e e a, e' e e } \\ { a,2 a } >>
	    e8[ e' a,-3 e']	    e,8[ e' a,-3 e']
	    <e, e'>8[-. <a-3 e'>-. <e e'>-. <a e'>]-.
             <e e'>8 r r4

             a4-3 r8 e'8-. a,4 r8 e'-.
             e,4 r8 e'-. e,4 r8 e'-.
             a,-4 r d-2 r e r e, r
             a[-3-. e'-. a,-. e']-. a,4-- r
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
     \header { piece = "Allegro." }
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
     \header { piece = "Allegro."}
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


