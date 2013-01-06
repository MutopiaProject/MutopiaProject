\version "2.16.1"
% $Revision: 1.1 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "17."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke (No. 17)"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Op. 149"
    mutopiainstrument = "Piano Duet"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-530"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
  % add space between composer and the first staff
  markup-system-spacing #'padding = #4
}
\layout {
  \context {
    \Score
    % add space between staves in piano staff
    \override StaffGrouper #'staff-staff-spacing #'padding = #5
  }
}

primoDynamics =  {
    \override DynamicTextSpanner #'style = #'none
    s2\p s2 s2 s2 s2 s2 s2 s2
    s2\f s2 s2 s2 s2 s2 s2 s2
    s2\p s2 s2 s2 \once\crescTextCresc s2\< s8\< s4 s8\! s2\f s2 s2
    s2\p s2 s2\f s2 s2\p s2
    s2\f s2 s2 s2 s2 s2
}

primoUp =  {
    \time 2/4
    \clef treble
    \key d \major
    \relative c''' {
        \override Score.OttavaBracket   #'padding = #2
	\ottava #1
	\accidentalStyle "modern"
	\repeat volta 2 {
	    d8-1-. d16( e-2 fis8)-.-3 fis16( g-4
            a8)-5-. a fis4->-3
	    a8-. g-4-. e4->-2
	    a8-. fis-3-. d4->-1
	    d8-1-. d16( e fis8)-.-3 fis16( g-4
            a8)-. a fis4->-3
	    a8-. g-4-. e(-2 g16-4 fis)-3
	    d8[-.-1 fis-. d]-. r
	}
	\repeat volta 2 {
	    a'8(-5 g16 fis e4)
	    g8(-4 fis16 e d4)
	    fis8-3-. fis16( g) fis8-. fis16( g)
	    fis8-. fis16( g) fis4
	    a8(-5 g16 fis e4)
	    g8(-4 fis16 e d4)
	    e8-2-. e16( fis) e8-. e-.
	    e-. a4(->-5 g16-4 e)-2

	    d8-1-. d16( e fis8)-3-. fis16( g
            a8)-.-5 a-. fis4-3->
            a8-. g-.-4 e4->
	    a8-.-5 fis-3-. d4-1->
	    d8-. d16(-1 e-2 fis8)-. e16(-2 fis-3
	    a8)-. g-. g8.(-4 fis16
            e8)-2 fis16(-3 g a g-4 e-2 fis)
	}
	\alternative{
	    { d8[-.-1 fis-3-. d]-. r }
	    { d4 r \bar "||"}
	}

	g8-4-. g16( fis e4)
	fis8-3-. fis16( e d4)
	<e-2 g-4 a-5>8[-. <e g a>-. <e g a>-. <e g a>]-.
	a16(-5 g fis e d4)-1
	g8-4-. g16( fis e4)
	fis8-3-. fis16( e d4)

	<e-2 g-4 a-5>8[-. <e g a>-. <e g a>-. <e g a>]-.
	<d-1 fis-3 a-5> r <e-2 g-4 a-5> r
	<d fis a> r <e g a> r
	<d-1 fis-3>4 r
	d-1 d
	d2\fermata \bar "|."
    }
}

primoDown =  {
    \time 2/4
    \clef treble
    \key d \major
    \relative c'' {
	\accidentalStyle "modern"
	\repeat volta 2 {
	    << { d8[-3 <fis-3 a-1>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { d8[ <fis a>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { e8[-4 <g-2 a-1>-. <g a>-. <g a>]-.} \\ { e2 } >>
	    << { d8[-3 <fis-3 a-1>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { d8[ <fis a>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { d8[ <fis a>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { e8[-4 <g-2 a-1>-. <g a>-. <g a>]-.} \\ { e2 } >>
	    <d-5 fis-3 a-1>8[-. <d fis a> <d fis a>] r
	}
	\repeat volta 2 {
	    a'8(-1 g16 fis e4)
	    g8(-2 fis16 e d4)
	    fis8-3-. fis16( g) fis8-. fis16( g)
	    fis8-. fis16( g) fis4
	    a8(-1 g16 fis e4)
	    g8(-2 fis16 e d4)
	    e8-4-. e16( fis) e8-. e-.
	    e-. a4(->-1 g16-2 e)-4

	    << { d8[-3 <fis-3 a-1>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { d8[ <fis a>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { e8[-4 <g-2 a-1>-. <g a>-. <g a>]-.} \\ { e2 } >>
	    << { d8[-3 <fis-3 a-1>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    d8-.-5 d16( e fis8)-.-3 e16(-4 fis
	    a8)-.-1 g-. g8.( fis16
            e8)-4 fis16( g a-1 g-2 e-4 fis)-3
	}
	\alternative{
	    { d8[-.-5 fis-3-. d]-.-5 r }
	    { d4 r \bar"||"}
	}


	g8-2-. g16( fis e4)
	fis8-3-. fis16( e d4)
	<e-1 g-2 a-4>8-. <e g a>-. <e g a>-. <e g a>-.
	a16(-1 g fis e d4)-5
	g8-2-. g16( fis e4)
	fis8-3-. fis16( e d4)


	<e-4 g-2 a-1>8[-. <e g a>-. <e g a>-. <e g a>]-.
	<d-5 fis-3 a-1> r <e-4 g-2 a-1> r
	<d fis a> r <e g a> r
	<d-5 fis-3>4 r
	<d-5 fis-3> <d fis>
	<d fis>2\fermata \bar "|."

    }
}

secondoDynamics =  {
  \override DynamicTextSpanner #'style = #'none
    s2\p s2 s2 s2 s2 s2 s2 s2
    s2\f s2 s2 s2 s2 s2 s2 s2 s2\p
    s2 s2 s2 \once\crescTextCresc s2\< s8 s8\< s8 s8\! s2\f s2 s2
    s2\p s2 s2\f s2 s2\p s2
    s2\f s2 s2 s2 s2 s2
}

secondoUp =  {
    \time 2/4
    \clef treble
    \key d \major
    \relative c' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <d-1 fis-3>8[-. a'-5-. <d, fis>-. a']-.
	    <d, fis>[-. a' <d, fis>-. a']-.
	    <cis,-2 g'-4>[-. a'-5-. <cis, g'>-. a']-.
	    <d,-1 fis-3>[-. a'-5-. <d, fis>-. a']-.
	    <d, fis>[-. a' <d, fis>-. a']-.
	    <d, fis>[-. a' <d, fis>-. a']-.
	    <cis,-2 g'-4>[-. a'-5-. <cis, g'>-. a']-.
	    <d,-1 fis-3>[-. <d a'-5>-. <d fis-3>]-. r
        }
	\repeat volta 2 {
            r8 <a e'-3 g-5>[ <a e' g> <a e' g>]
            r8 <a d-3 fis-5>[ <a d fis> <a d fis>]
            r8 <ais e'-4 fis-5> r <b d-3 fis-5>
            <ais cis-2 fis-5>[ <ais cis fis> <ais cis fis>] r
            r <a e' g-5>[ <a e' g> <a e' g>]
            r <a d fis-4>[ <a d fis> <a d fis>]
            r <d e gis-4> r <d e gis>
            <cis e-2 a-5>4 r
            <d-1 fis-3>8[-. a'-5-. <d, fis>-. a']-.

	    <d, fis>[-. a'-. <d, fis>-. a']-.
            <cis,-2 g'-4>[-. a'-.-5 <cis, g'>-. a']-.
	    <d,-1 fis-3>[-. a'-. <d, fis>-. a']-.
	    <c,-1 d-2 fis-4>[-. a'-5-. <c, d fis>-. a']-.
            <b, d-2>[-. g'-5-. <b, e-3>-. g']-.
            <d-2 e-3> r <a cis e-3 g-5> r
	}
	\alternative {
	    { <a d-2 fis-1>[-. <a d fis>-. <a d fis>]-. r }
	    { <d fis>-. a'16(-5 fis-4 d-2 fis-4 d-2 a)-1 \bar "||"}
	}
	r8 <a cis-2 g'-5> r <a cis g'>
	r  <a d-2 fis-4> r <a d fis>
	a16(-1 b cis d-1 e fis g a)-5
        <d,-1 fis-3>8[ a'-5 <d, fis> a']
        r8 <a, cis-2 g'-5> r <a cis g'>
        r8 <a d-2 fis-4> r <a d fis>

        a16(-1 b cis d-1 e fis g a)-5
        d,(-1 a'-5 fis-3 d-1 cis-2 a'-5 g-5 e)-2
        d(-1 a'-5 fis-3 d-1 cis-2 a'-5 gis-4 e)-2
        d4-1 r
        <a d-2 fis-4> <a d fis>
        <a d fis>2 \fermata \bar "|."
    }
}

secondoDown =  {
    \time 2/4
    \clef bass
    \key d \major
    \relative c {
	\accidentalStyle "modern"
	\repeat volta 2 {
	    d4-2 r
	    d r
	    a8 r a' r
	    d,, r d' r
	    <d, d'>4 r
	    <d d'>4 r
	    a8 r a' r
	    <d, d'>8[-. <d d'> <d d'>] r
	}
	\repeat volta 2 {
	    <cis cis'>2
	    <d d'>2
	    <cis cis'>8 r <b b'> r
	    <fis' fis'>8[ <fis fis'> <fis fis'>] r
            <cis cis'>2
            <d d'>2
            <b b'>8 r <b b'> r
            <a a'>4 r
            d'-2 r

            d4 r
            a8 r a' r
            d,, r d' r
            <d, d'>2
            <g g'>8 r <e e'> r
            <a a'> r <a, a'> r
        }
	\alternative {
            { <d d'>[-. <d d'>-. <d d'>]-. r }
	    { <d d'>8 r r4 \bar "||"}
	}
	a'8-5 r a r
	a r a r
        << { a[ <e'-2 g-1> <e g> <e g>] } \\ { a,2 } >>
        <d-3 fis-2>8 r d r
        a r a r
        a r a r

        << { a[ <e'-2 g-1> <e g> <e g>] } \\ { a,2 } >>
        <d-3 fis-2>8 r <a-5 e'-1> r
        <d fis> r <a e'> r
        <d fis>4 r
        <d, a' d>4 <d a' d>
        <d a' d>2 \fermata \bar "|."
    }
}

\score{
    \context PianoStaff  <<
	\set PianoStaff.instrumentName = "Secondo     "
	\context Staff = "up"   \secondoUp
	\context Dynamics = "dynamics" \secondoDynamics
	\context Staff = "down" \secondoDown
    >>
    \layout { }
    \header { piece = "Rondino. Allegro." }
}


\score{
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo     "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
    >>

    \layout { }
    \header { piece = "Rondino. Allegro."}
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
    \tempo 4 = 70
    }

}
