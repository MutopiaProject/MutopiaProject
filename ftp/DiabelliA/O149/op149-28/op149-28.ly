\version "2.4.0"
% $Revision: 1.1 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "28."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke"
    mutopiacomposer = "Anton Diabelli"
    mutopiaopus = "Opus 149-28"
    mutopiainstrument = "Piano, Piano"
    source = "If I could know..."
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 2.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
    lastupdated = "2005/May/15"

footer = "Mutopia-2005/05/21-564"
tagline = "\\raisebox{5mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& "+ \maintainer + " 2005.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

primoDynamics =  {
    s1\p s8\< s4 s4 s8\! s4 s1\p s8\< s4 s4 s8\! s4
    s4 s4-\markup\italic{cresc.} s2 s1 s1\ff s1
    s1\p s1 s4 s4-\markup\italic{cresc.} s2 s8\< s4 s4 s4 s8\!
    s1\f s1 s1\ff s1
}

primoUp =  {
    \time 4/4
    \clef treble
    \key g \major
    \relative c'' {
        \override Score.OttavaBracket   #'padding = #2
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    e8[-1-. b'-5-. g-3-. fis]-. e4 r
	    e8[-1-. fis-. g-. a]-. b4-5 r
	    fis8[-2 b-5-. a-. g]-. fis4 r
	    fis8[-2 g-. a-. fis]-. b4 r

	    g8[-3-. e16( fis] g8[)-. fis16(-2 g] a8)-. fis-. b4->-5
	    g8[-3-. e16( fis] g8[)-. fis16(-2 g] a8)-. fis-. b4->-5
	    g4-3 e8.-1 fis16 g4-^ e-^
	    b'2.-- r4
	}
	\repeat volta 2 {
	    a8[-.-4 b-. g-3-. a]-. fis4-2 r
	    g8[-.-3 a-. fis-2-. g]-. e4-1 r
	    a8[-. fis-. g-3-. e]-. a[-4-. fis-. g-.-3 e]-.
	    fis8[(-2 b)-5 b-. b]-. b[-.-5 a-. g-. fis]-2-.

	    g8[-3-. e16(-1 fis] g8[)-. fis16(-2 g] a8)-. fis-. b4->-5
	    g8[-3-. e16( fis] g8[)-. fis16(-2 g] a8)-. fis-. b4->-5
	    g4-3 e8.-1 g16-3 b4-5 b16( a g fis)
	    e4-.-1 g-3-. e-. r
	}
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \key g \major
    \relative c' {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <e-5 g-3 b-1>4 r e8[-.-5 b'-1-. g-3-. fis]-.
	    e4 r e8[-5-. fis-. g-. a]-.
	    b4-1 r fis8[-.-4 b-.-1 a-. g]-.
	    fis4 r fis8[-.-4 g-. a-. fis]-.

	    g8-3 r r fis16(-4 g a8)-. fis-. b4-1->
	    g8-3 r r fis16(-4 g a8)-. fis-. b4-1->
	    g4-3 e8.-5 fis16 g4-^ e-^ 
	    b'2.-- r4
	}
	\repeat volta 2 {
	    <fis-4 a-2 b-1>4 r fis8[-.-4 g-. a-. fis]-.
	    g4-3 r e8[-5-. fis-. g-. e]-.
	    fis[-4-. b-. g-.-3 b]-. fis[-4-. b-. g-.-3 b]-.
	    fis[(-4 b)-1 b-. b]-. b[-.-1 a-. g-. fis]-.-4

	    g8[-3-. e16(-5 fis] g8[)-. fis16(-4 g] a8)-. fis-. b4->-1
	    g8[-3-. e16( fis] g8[)-. fis16(-4 g] a8)-. fis-. b4->-1
	    g4-3 e8.-5 g16-3 b4-1 b16( a g fis)
	    e4-.-5 <e-5 g-3 b-1>-. <e g b>-. r
	}
    }
}

secondoDynamics =  {
    s1\p s8\< s4 s4 s4 s8\! s1\p s8\< s4 s4 s4 s8\! s1-\markup\italic{cresc.}
    s1 s1\ff s1 s1\p s1 s1-\markup\italic{cresc.}
    s8\< s4 s4 s4 s8\! s1\f s1 s1\ff s1
}

secondoUp =  {
    \time 4/4
    \clef bass
    \key g \major
    \relative c {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <e-1 g-3 b-5>8(-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>)-.
	    <e g b>(-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>-. <e g b>)-.
	    <fis-2 a-4 b-5>(-. <fis a b>-. <fis a b>-. <fis a b>-. 
                   <fis a b>-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <fis a b>(-. <fis a b>-. <fis a b>-. <fis a b>-. 
            <fis a b>-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <e-1 g-3 b-5>(-. <e g b>-. <e g b>-. <e g b>)-. 
            <fis-2 a-4 b-5>(-. <fis a b>-. <fis a b>-. <fis a b>)-.

	    <e-1 g-3 b-5>(-. <e g b>-. <e g b>-. <e g b>)-. 
            <fis-2 a-4 b-5>(-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <e-1 g-3 b-5>4 e8.-1 fis16 g4 e
	    b'8-5-. fis-3-. dis-2-. fis-3-. b,4-1 r
	}
	\repeat volta 2 {
	    <fis'-2 a-4 b-5>8(-. <fis a b>-. <fis a b>-. <fis a b>-.
	    <fis a b>-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <e-1 g-3 b-5>(-. <e g b>-. <e g b>-. <e g b>-.
	    <e g b>-. <e g b>-. <e g b>-. <e g b>)-.
	    r8 <fis a b> r <e g b> r <fis a b> r <e g b>

	    <dis-2 fis-3 b-5> b'-5 b b b <a b>-^ <g b>-^ <fis b>-^
	    <e-1 g-3 b-5>(-. <e g b>-. <e g b>-. <e g b>)-.
	    <fis-2 a-4 b-5>(-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <e g b>(-. <e g b>-. <e g b>-. <e g b>)-.
	    <fis a b>(-. <fis a b>-. <fis a b>-. <fis a b>)-.
	    <e-1 g-3 b-5>4 e8. g16-3 b4-5 b16(-5 a g fis)
	    e4-1 <e-1 g-3 b-5> <e g b> r
	}
    }	
}	

secondoDown =  {
    \time 4/4
    \clef bass   
    \key g \major
    \relative c, {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    e4-2 r r2
	    e4-2 b e r
	    dis-3 r r2
	    dis4-3 b dis r
	    e-2-. b-. dis-3-. b-.

	    e4-. b-. dis-. b-.
	    e4-2 e8.-4 fis16 g4 e
	    b'8-1-. fis-2-. dis-3-. fis-2-.
	    b,4-5 r
	}
	\repeat volta 2 {
	    dis4-3 r dis-. b-.
	    e-2 r e-. b-.
	    dis8-3 r e-2 r dis r e r

	    b8 b' b b b-1 <a-2 b>-^ <g-3 b>-^ <fis-4 b>-^
	    e4-2-. b-. dis-.-3 b-.
	    e-. b-. dis-. b-.
	    e4-2 e8.-4 g16-2 b4-1 b16(-1 a g fis)
	    e4-5 <e-5 g-3 b-1> <e g b> r
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
    \midi { \tempo 4 = 90 }
}



