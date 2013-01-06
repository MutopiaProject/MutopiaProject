\version "2.16.1"
% $Revision: 1.7 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "2."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke (No. 2)"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Op. 149"
    mutopiainstrument = "Piano Duet"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-402"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
%  annotate-spacing = ##t
  % add space between composer and the first staff
  markup-system-spacing =
  #'((basic-distance . 24)
  (minimum-distance . 12)
  (padding . 1)
  (stretchability . 30))

  system-system-spacing =
  #'((basic-distance . 22)
  (minimum-distance . 16)
  (padding . 1)
  (stretchability . 60))

  top-margin = #16
}

\layout {
  \context {
    \Score
    % add space between staves in piano staff
    \override StaffGrouper #'staff-staff-spacing #'padding = #5
    \override StaffGrouper #'staff-staff-spacing #'basic-distance = #20
  }
}

primoDynamics =  {
    s1\p s4\< s2 s4\!
    s1\p s1
    s4\< s2 s4\!
    s4\> s2 s4\!
    s4\< s2 s4\!
    s1\f
    s2\f s2\p s1
    s2\f s2\p s1
    s1 s1
    s1\f s1 s1\p
    s4\< s2 s4\! s1\p s1
    s4\< s2 s4\! s4\> s2 s4\! s1\p s1
}

primoUp =  {
    \time 4/4
    \clef treble
    \relative c''' {
	\ottava #1
        \override Score.OttavaBracket   #'padding = #2
        \repeat volta 2 {
	    e2-3( d-2)      c-1( d4 e)
	    f2-4( e4 c)   e2-3( d)
	    e-3( f4 g)    g2-5( d-2)
	    c-1( d4 e)    e2-3( d)
        }
        \repeat volta 2 {
	    f-4( e4 f)    d2-2( e4 f)
	    g2-5( f4 g)   e2-3( f4 g)
	    f2-4( e4 d)   e2-3( d4 c)
	    d-2( g-5 e-3 c-1)   d1

	    e2-3( d)      c-1( d4 e)
	    f2-4( e4 c)   e2-3( d)
	    e-3( f4 g)    g2-5( f4-4 d-2)
	    c2-1( e4-3 d)   c1
        }
	\bar "|."
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \relative c'' {
        \repeat volta 2 {
	    e2-3( d-4)      c-5( d4 e)
	    f2-2( e4 c)   e2-3( d)
	    e-3( f4 g)    g2-1( d-4)
	    c-5( d4 e)    e2-3( d)
        }
        \repeat volta 2 {
	    f-2( e4 f)    d2-4( e4 f)
	    g2-1( f4 g)   e2-3( f4 g)
	    f2-2( e4 d)   e2-3( d4 c)
	    d-4( g-1 e-3 c-5)   d1-4

	    e2-3( d)      c-5( d4 e)
	    f2-2( e4 c)   e2-3( d)
	    e-3( f4 g)    g2-1( f4-2 d-4)
	    c2-5( e4-3 d)   c1
        }
	\bar "|."
    }
}

secondoDynamics =  {
    s1\p s4\< s2 s4\!
    s1\p s1
    s4\< s2 s4\!
    s4\> s2 s4\!
    s4\< s2 s4\!
    s1\f
    s4\f s2.\p s1
    s4\f s2.\p s1
    s1 s1
    s1\f s1 s1\p
    s4\< s2 s4\! s1\p s1
    s4\< s2 s4\! s4\> s2 s4\! s1\p s1
}

secondoUp =  {
    \time 4/4
    \clef bass
    \relative c' {
	\repeat volta 2 {
	    g'4( g, g' g,)
	    g'( g, b-2 c)
	    d-4( g, c-3 g)
	    c-4( g b-3 g)
	    c-4( g-1) g-.-2 g-.-1
	    b-3( g b g)
	    c-4( g b c)
	    c-3( g b-2 g)
	}
	\repeat volta 2 {
	    d'-4( g, c d)
	    b-3( g c-3 d)
	    e-5( g, d' e)
	    c-3( g d-4 e)
	    d-4( g c-4 b)
	    c-4( g-1 f-3 e-2)
	    g-1( d'-5 c-4 g-1)
	    b1-2
	    \clef treble
	    g'4( g, g' g,)
	    g'( g,) <g g'> <g g'>
	    <d'-3 g> g, <c-2 g'> g
	    \clef bass
	    c-4( g b-3 g)
	    c-4( g b-3 bes-2)
	    a-1( cis-2 d-3 f)
	    e-4( g, <b-2 f'-5> g)
	}
	\alternative{
	    {
		\set fingeringOrientations = #'(left)
		<g-1 c-3 e-5>1
	    }
	    { <g c e>1 }
	}
	\bar "|."
    }
    \pageBreak
}

secondoDown =  {
    \time 4/4
    \clef bass
    \relative c, {
	\set fingeringOrientations = #'(down)
	\repeat volta 2 {
	    c2-4( f-1
	    e-2 d4 c)
	    b2( c4-4 e-2
	    g1)
	    c,2-5( d4 e f1-2)
	    e2-1( d4-2 c-3 g2 g')
	}
	\repeat volta 2 {
	    g,( g')
	    g,( g')
	    g,( g')
	    g,( g')

	    <g, g'>1
	    <g g'>1

	    <b b'>2( <c c'>4) <e e'>
	    <g-. g'> <f-. f'> <e-. e'> <d-. d'>

	    <c c'>2( <f f'>
	    <e e'> <d d'>4 <c c'>)
	    <b b'>2( <c c'>4 e-3 g1-1)

	    c,-2( <f, f'>)
	    <g g'>2 <g g'>
	}
	\alternative {
	    { <c c'>4( g'-2 e-1 c-2) }
	    { <c c'>1 }
	}
	\bar "|."
    }

}

\score{
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Secondo   "
	\context Staff = "up"   \secondoUp
	\context Dynamics = "dynamics" \secondoDynamics
	\context Staff = "down" \secondoDown
    >>

    \layout {}
    \header { piece = "Andante Cantabile." }
}


\score{
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo     "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
    >>

    \layout {}
    \header { piece = "Andante Cantabile." }
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
    \tempo 4 = 120
    }
}
