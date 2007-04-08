\version "2.4.0"
% $Revision: 1.1 $

\header {
     title = "28 melodische Übungsstücke"
     subtitle = "21."
     composer = "Anton Diabelli"
     opus = "Op 149"

     mutopiatitle = "28 melodische Übungsstücke"
     mutopiacomposer = "Anton Diabelli"
     mutopiaopus = "Opus 149-21"
     mutopiainstrument = "Piano, Piano"
     source = "If I could know..."
     style = "Classical"
     copyright = "Creative Commons Attribution-ShareAlike 2.0"
     maintainer = "Alberto Simões"
     maintainerEmail = "ambs@cpan.org"
     maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
     lastupdated = "2005/May/09"

footer = "Mutopia-2005/05/15-554"
tagline = "\\raisebox{5mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& "+ \maintainer + " 2005.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

primoDynamics =  {
     s4\f s4\p s4 s4  s4\> s4\! s2 s4\> s4\! s2 s1
     s4\f s4\p s2 s1 s2 s8\< s4 s8\!   s2\f s8\> s4 s8\! s2\f s8 s8\> s8 s8\!
     s4\f s4\p s8 s8\< s8 s8\! s2 s8 s8\< s8 s8\! s4\f s4\p s8 s8\< s8 s8\! s1
     s1-\markup\italic{cresc.} s2 s8 s8\p\< s8 s8\! s1 s1\f
     s2\p s2-\markup\italic{dolce} s1 s1 s1\pp s4 s8 s16 s16\ff s2
}

primoUp =  {
     \time 4/4
     \clef treble
     \key a \major
     \relative c''' {
         \override Score.OttavaBracket   #'padding = #2
	#(set-octavation 1)
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <cis-3 e-5>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis e>4( <b d>) r b8.(-2 d16)-4
	    <b d>4( <a cis>) r a8.( cis16)
	    b4.(-2 d16 cis b8) r r4

	    <cis-3 e-5>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis-3 e-5>4( <b d>2 <a-1 cis-3>4(
             b4.)-2 b8 b( cis16 b) a8. b16
	}
	\alternative {
	    { cis2 e8(-5 d b-2 e) }
	    { cis2~cis8 cis-.( cis-. cis-.)}
	}
	\repeat volta 2 {
	    d4.-4 d16( cis) b8 <b-2 d-4 e-5>(-. <b d e>-. <b d e>)-.
	    <cis-3 e-5>4.-> <b d>16( <a cis>) <a cis>8 a(-.-1 b-. cis)-.
	    d4.-4 d16( cis) b8 <b-2 d-4 e-5>(-. <b d e>-. <b d e>)-.
	    <cis-3 e-5>4.-> <b d>16( <a cis>) <a cis>8 r <a-1 cis-3>-. <b d>-.

	    <cis e>4( <b d>8. <a cis>16) <a cis>8 <a cis> <b d> <cis e>
	    <cis e>4(-> <b d>4) r8 b-2 cis d
	    d4(-4-> cis8[) r16 cis] e8.(-5-> d16 cis16-3 d b-2 cis)
	}
	\alternative {
	    { a2-1 r8 a8(-. b-. cis)-. }
	    { a2   r8 <b-2 d-4>( <cis e> <b d>) }
	}
	<a cis>2 r8 b(-2 cis-3 b)-2
	a-1-. b(-> cis b) a-. b(-> cis b)
	a8 r cis8.(-3-> a16)-1 a8 r8 cis8.(-> a16)
	a4 r8. a16-1 a2\fermata \bar"|."
     }
}

primoDown =  {
     \time 4/4
     \clef treble
     \key a \major
     \relative c'' {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <cis-1 e-3>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis e>4( <b d>) r b8.(-4 d16)-2
	    <b d>4( <a cis>) r a8.( cis16)
	    b4.(-4 d16 cis b8) r r4

	    <cis-1 e-3>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis-1 e-3>4( <b d>2 <a-3 cis-5>4(
             b4.)-4 b8 b( cis16 b) a8. b16
	}
	\alternative {
	    { cis2 e8(-1 d b-4 e) }
	    { cis2~cis8 cis-.( cis-. cis-.)}
	}
	\repeat volta 2 {
	    d4.-2 d16( cis) b8 <b-4 d-2 e-1>(-. <b d e>-. <b d e>)-.
	    <cis-3 e-1>4.-> <b d>16( <a cis>) <a cis>8 a(-.-5 b-. cis)-.
	    d4.-2 d16( cis) b8 <b-4 d-2 e-1>(-. <b d e>-. <b d e>)-.
	    <cis-3 e-1>4.-> <b d>16( <a cis>) <a cis>8 r <a-5 cis-2>-. <b d>-.

	    <cis e>4( <b d>8. <a cis>16) <a cis>8 <a cis> <b d> <cis e>
	    <cis e>4(-> <b d>4) r8 b-4 cis d
	    d4(-2-> cis8[) r16 cis] e8.(-1-> d16 cis16-3 d b-4 cis)
	}
	\alternative {
	    { a2-5 r8 a8(-. b-. cis)-. }
	    { a2   r8 <b-4 d-2>( <cis e> <b d>) }
	}
	<a cis>2 r8 b(-2 cis-1 b)-2
	a-3-. b(-> cis b) a-. b(-> cis b)
	a8 r <cis-3 e-1>8.(-> <a-5 cis-3>16) <a cis>8 r8 <cis e>8.(-> <a cis>16)
	<a cis>4 r8. <a cis e>16-1 <a cis e>2\fermata \bar"|."
     }
}

secondoDynamics =  {
     s8\f s8\p s4 s2 s1 s1
     s2 s8\< s4 s8\! s8\f s8\p s4 s2 s8\< s4 s8\! s8\> s4 s8\!
     s8\f s8\p s4 s4 s16\< s8 s16\! s16\> s8 s16\! s4 s16\< s8 s8 s8 s16\!
     s8\f s8\p s4 s4 s16\< s8 s16\!
     s8\f s8\p s4 s4 s16\< s8 s16\! s16\> s8 s16\! s4 s16\< s8 s8 s8 s16\!
     s8\f s8\p s4 s4 s16\< s8 s16\!
     s16\> s8 s16\! s4 s4 s4 s1-\markup\italic{cresc.} s2 s4 s16\p\< s8 s16\!
     s1 s1\f s1\p s1 s8 s8\sf s4 s8 s8\sf s4 s1\pp s4 s8 s16 s16\ff s2
}

secondoUp =  {
     \time 4/4
     \clef bass
     \key a \major
     \relative c' {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a16(-1 cis-3 e-5 cis) a( cis e cis) a( cis e cis) a( cis e cis)
	    ais(-2 cis-3 e-5 cis) b(-1 d-4 e-5 d) b( d e d) gis,(-2 d'-4 e-4 d)
	    b(-1 d-4 e-5 d) a(-1 cis-3 e-5 cis) a( cis e cis) a( cis e cis)

	    gis(-2 b-3 e-5 b) gis(-2 e' a,-1 e')
	    gis,(-2 e' <gis,-2 b-3> e' <a,-1 cis-3> e' <gis,-2 d'-4> e')
	    a,(-1 cis-3 e-5 cis) a( cis e cis) a( cis e cis) a( cis e cis)
	    ais(-2 cis-3 e-5 cis) b(-2 d-4 b d) b( d b d) a(-1 cis-3 a cis)

	    a(-1 b-2 fis'-5 b,) a( b fis' b,) a( b fis' b,) fis(-1 fis' fis, fis')
	}
	\alternative {
	    { gis,(-1 cis-3 eis-5 cis) gis( cis eis cis) gis( d'-3 e-4 d) gis,( d' e d) }
	    { gis,( cis-3 eis-5 cis)  gis( cis eis cis) <gis cis eis>8 r r4}
	}
	\repeat volta 2 {
	    fis16(-1 b-2 d-4 b) fis( b d b) gis(-1 b-2 e-5 b) gis( b e b)
	    a(-1 cis-3 e-5 cis) a( cis e cis) a( e' cis-3 e b-2 e a,-1 e')
	    fis,( b-2 d-3 fis-5) fis,( b d fis) gis,(-1 b-2 d-3 e)-4 gis,( b d e)

	    a,(-1 cis-2 e-4 cis) a( cis e cis) a( cis e cis) a( cis e cis)
	    a( e'-3 g-5 e) a,( e' g e) a,( e' g e) a,( e' g e)
	    ais,(-1-> e'-3 g-5 e) b( d-2 fis-4 d) b( fis'-4 d-2 fis cis-2 fis b,-1 fis')

	    fis4(->-3 e8[) r16 e] gis8.(-4-> fis16 e fis d e)-4
	}
	\alternative {
	    { cis(-2 a-1 e'-4 cis)-2 a8 r8 r2}
	    { cis16(-2 a-1 e'-5 cis-4 a-2 e a cis) e( e, e' e, e' e, e' e,)}
	}
	cis'16(-4 a-2 e'-5 cis-4 a-2 e a cis) e( e, e' e, e' e, e' e,)
	a(-2 e' e, e' e, e' e, e') a,(-2 e' e, e' e, e' e, e')
	a,(-2 cis-4 e-5 cis) a( cis e cis) a(-1 cis-3 e-5 cis) a( cis e cis)
	a4 r8. <a cis e>16 <a cis e>2\fermata\bar"|."
     }	
}	

secondoDown =  {
     \time 4/4
     \clef bass
     \key a \major
     \relative c {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a8-5 r cis-3 r e-1 r r4
	    e,8 r e'4-> r e,8 r8
	    a,8 r a'4-> r cis-2
	
	    e4 e, e'8(-1 <d-2 e> <cis-3 e> <b-4 e>)
	    a8-5 r cis r e r r4
	    e,8 r <e e'>4 <eis eis'> <fis fis'>

	    <d d'>8 <d'-3 fis-2>[(-. <d fis>-. <d fis>])-. <d fis> r <d, d'> <d d'>
	}
         \alternative {
	    { <cis cis'>2 <b b'>8 r <e e'> r }
	    { <cis cis'>8 r cis' r cis, r r4 }
	}
         \repeat volta 2 {
	    d8 r d' r e,-2 r r4
	    a8-5 r cis-3 r e r r4
	    b,8 r b' r e, r r4

	    a8-5 r cis-3 r e r r4
	    a,,8 r a' r a r a r
	    d,8 r d' r d, r r4

	    r8 e8 e' e <e, b' e>2
	}		
         \alternative{
	    { a4-3 r16 a(-1 e-2 cis-3 a8) r8 r4}
	    { a'8-3 r r4 r4 e4->-5 }
	}
	a4-2 r r  e
         a8 r e4 a8 r e4
         a8 r r4 a8 r r4
         a4 r8. <a, a'>16 <a a'>2\fermata\bar"|."
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
     \header { piece = "Andante amoroso." }
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
     \header { piece = "Andante amoroso."}
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



