\version "2.16.1"
% $Revision: 1.14 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "1."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke (No. 1)"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Op. 149"
    mutopiainstrument = "Piano Duet"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-389"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
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

dynamics =  {
    s1\f
    s1 s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1 s1
}

primoUp =  {
    \time 4/4
    \clef treble
    \relative c''' {
	\ottava #1
	\override Score.OttavaBracket   #'padding = #3
	\repeat volta 2 {
	    c2-1( d-2   e-3 c-1)
	    d-2( e-3 f-4 d-2)
	    e-3( f-4 g-5 f-4 e-3 d-2 c1-1)
	}
	\repeat volta 2 {
	    d2-2( e f-4 d) e-3( f g-5 e)
	    f-4( e d-2 c d-2 e d1)

	    e2-3( f g-5 c,-1 f-4 d-2 e-3 c-1)
	    d-2( e f-4 d-2 e-3 d-2 c1-1)
	}
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \relative c'' {
	\repeat volta 2 {
	    c2-5( d-4   e-3 c-5)
	    d-4( e-3 f-2 d-4)
	    e-3( f-2 g-1 f-2 e-3 d-4 c1-5)
	}
	\repeat volta 2 {
	    d2-4( e f-2 d) e-3( f g e)
	    f( e d c d e d1)

	    e2-3( f g-4 c,-5 f-2 d-4 e-3 c-5)
	    d-4( e f-2 d-4 e-3 d-4 c1-5)
	}
    }
}

secondoUp =  {
    \time 4/4
    \clef bass
    \relative c' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <g e'-4 g>2   <g b-2 g'>
	    <g c-2 g'>    <g e'-4 g>
	    <g g'>      <g g'>
	    <g g'>      <g g'>
	    <g c-2 g'>    <g b-2 g'>
	    <g c-2 g'>(   <a-1 d-3 f-5>
	    <g-1 c-2 e-4>     <g-1 b-2 f'-5>
	}
	\alternative {
	    { <g-1 c-2 e-4>1) } {  <g-1 c-2 e-4>1 }
	}
	\repeat volta 2 {
	    <g-1 b-2 d-3>2( <g c-2 e-4>
	    <g d'-3 f-5> <g-1 b-2>)

	    <g c-2 e-4>( <g b-2 f'-5>
	    <g c-2 g'-5> <g c-2 e-4>)

	    <g d'-3 f-5>( <g c-3 e-5>
	    <g b-2 d-4>   <g-1 c-3>
	    <b-2 d-4>     <c-3 e-5>
	    <b-2 d-4>1)

	    <g c-3 e-5>2( <g b-2 f'-5>
	    <bes c-2 g'-5> <bes c-2 e-4>
	    <c-2 f-5> <a-1 d-3>
	    <gis b-2 e-5> <a c-3 e-5>)

	    <a-2 d-5>( <g-1 a-2 cis-4>
	    <f-1 a-2 d-5> <a-1 d-3 f-5>
	    <g-1 c-2 e-4> <g-1 b-2 f'-5>
	}
	\alternative {
	    { <g-1 c-3 e-5>1) } { <g-1 c-3 e-5>1 }
	}
    }
    \pageBreak
}

secondoDown =  {
    \time 4/4
    \clef bass
    \relative c, {
	\set fingeringOrientations = #'(down)
	\repeat volta 2 {
	    c4-.-3 e-.-2  g-.-1 g,-.
	    c-.-3  e-.-2  g-.-1 c-.-2
	    b-.-3  g-.    c-.-2 g-.
	    d'-.-1 g,-.-5 b-.-1 g-.-2
	    c,-.-5 c'-.-2 d-.-1 d,-.-5
	    e-.-4  e'-.-2 f-.-1 f,-.-2
	    g-.-1  g,-.   g-.   g'-.
	}
	\alternative {
	    { c,-.-5 c'-.-2 g-.-1 e-.-2 }
	    { c-.-3  g'-.-1 e-.-2 c-.-3 }
	}
	\repeat volta 2 {
	    g-.-5  g'-.-1 e-.-4  g-.-2
	    d-.-5  d'-.   g,-.-5 g'-.
	    c,,-.  c'-.-1 d-.-2  d,-.-5
	    e-.-4  e'-.-1 c-.-2  c,-.
	    b'-.-1 b,-.-5 c-.-4  c'-.-1
	    f-.-2  f,-.-4 e-.-5  e'-.-1
	    g,-.-5 g'-.-1 e-.-2  c-.-3
	    g-.-1  d-.-2  b-.    g-.
	    c-.-5  c'-.-1 d-.-2  d,-.-5
	    e-.-4  e'-.-1 g-.-2  g,-.-5
	    a-.-4  a'-.-1 f-.-2  f,-.-4
	    e-.-5  e'-.-1 a,-.-2 a,-.-5
	    f'-.-2 f'-.-1 e-.-2  e,-.-4
	    d-.-5  d'-.-1 f,-.-2 f,-.-5
	    g-.-4  g'-.-1 g-.    g,-.-5
	}
	\alternative {
	    { c-.-3 g'-.-1 e-.-2 c-.-3 }
	    {
		\set fingeringOrientations = #'(left)
		<c-5 c'-1>1
	    }
	}
	\bar "|."
    }
}



\score{
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Secondo   "
	\context Staff = "up"   \secondoUp
	\context Dynamics = "dynamics" \dynamics
	\context Staff = "down" \secondoDown
    >>

    \layout { }
    \header { piece = "Andante." }
}


\score{
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo     "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \dynamics
	\context Staff = "down" \primoDown
    >>

    \layout { }
    \header { piece = "Andante." }
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
    \tempo 4 = 110
    }

}
