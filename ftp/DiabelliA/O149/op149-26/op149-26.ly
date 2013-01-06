\version "2.16.1"
% $Revision: 1.1 $

\header {
     title = "28 melodische Übungsstücke"
     subtitle = "26."
     composer = "Anton Diabelli"
     opus = "Op 149"

     mutopiatitle = "28 melodische Übungsstücke (No. 26)"
     mutopiacomposer = "DiabelliA"
     mutopiaopus = "Op. 149"
     mutopiainstrument = "Piano Duet"
     source = "Unknown"
     style = "Classical"
     copyright = "Creative Commons Attribution-ShareAlike 3.0"
     maintainer = "Alberto Simões"
     maintainerEmail = "ambs@cpan.org"
     maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-559"
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
	\ottava #1
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    a16(-1 b)-2
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    c4-3 r8 c16( b) a4 r8 a16( b)
	    c8[-. b-. a-1-. c]-.-3 e4-.-5 r8 a,16(-1 b)
	    c4 r8 c16(-3 b) a4 r8 b16(-2 c)

	    b8-2-. d16(-4 c) b8-. d16( c) b4 r8 a16(-1 b)
	    c4 r8 c16(-3 b) a4 r8 a16(-1 b)
	    c8[-. b-. a-1-. c]-.-3 e4-5 r8 c16(-3 d)
	    e4 r8 b16(-2 c) d4 r8 a16([-1 b)]
	  \set Timing.measureLength = #(ly:make-moment 7 8)
	    c8[-3-. e-5-. c-. e]-. c4 r8
	}
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    b16(-2 c)
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    d4 r8 d16(-4 c) b4 r8 a16(-1 b)
	    c8-. c16(-3 d) e4-> c8-. c16( d) e4->
	    d4-4 r8 c16( b) c4-3 r8 b16( a)
	    b8[-2-. e-.-5 b-. e]-. b4 r8 a16(-1 b)

	    c4 r8 c16(-3 b) a4 r8 a16(-1 b)
	    c8[-. b-. a-. b]-. c4 r8 a16(-1 b)
	    c8-. c16(-3 d) e8-. d16(-4 c) b8-. b16(-2 c) d8[-. c16(-3 b)]
	  \set Timing.measureLength = #(ly:make-moment 7 8)
	    a8[-.-1 c-.-3 a-. c]-. a4 r8
	}
     }
}

primoDown =  {
     \time 4/4
     \clef treble
     \key c \major
     \relative c'' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(down)
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    a16(-5 b)-4
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    c4-3 r8 c16( b) a4 r8 a16( b)
	    c8[-. b-. a-5-. c]-.-3 e4-.-1 r8 a,16(-5 b)
	    c4 r8 c16(-3 b) a4 r8 b16(-4 c)


	    b8-4-. d16(-2 c) b8-. d16( c) b4 r8 a16(-5 b)
	    c4 r8 c16(-3 b) a4 r8 a16(-5 b)
	    c8[-. b-. a-5-. c]-.-3 e4-1 r8 c16(-3 d)
	    e4 r8 b16(-4 c) d4 r8 a16([-5 b)]
	  \set Timing.measureLength = #(ly:make-moment 7 8)
	    c8[-3-. e-1-. c-. e]-. c4 r8
	}
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    b16(-4 c)
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    d4 r8 d16(-4 c) b4 r8 a16(-5 b)
	    c8-. c16(-3 d) e4-> c8-. c16( d) e4->
	    d4-2 r8 c16( b) c4-3 r8 b16( a)
	    b8[-4-. e-.-1 b-. e]-. b4 r8 a16(-5 b)

	    c4 r8 c16(-3 b) a4 r8 a16(-5 b)
	    c8[-. b-. a-. b]-. c4 r8 a16(-5 b)
	    c8-. c16(-3 d) e8-. d16(-2 c) b8-. b16(-4 c) d8[-. c16(-3 b)]
	  \set Timing.measureLength = #(ly:make-moment 7 8)
	    a8[-.-5 c-.-3 a-. c]-. a4 r8
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
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    r8 <e a-3 c-5>[ <e a c> <e a c>] r <e a c>[ <e a c> <e a c>]
	    r8 <e a c> r <e a c> r8 <e a c>[ <e a c> <e a c>]
             r8 <c'-3 e-5>[-. <a-1 c-3>-. <c e>]-. r <c e>[-. <a c>-. <c e>]-.
             <gis-1 b-2 e-5> r <gis b e> r <gis b e> e'16-3 e-2 e8-1 e-2

             r8 <e, a-3 c-5>[ <e a c> <e a c>] r <e a c>[ <e a c> <e a c>]
             r8 <e a c> r <e a c> r <e a c>[ <e a c> <e a c>]
             r8 <g c-2 e-4>16 <g c e> <g c e>8 <g c e> r <g d'-3 f-5>16 <g d' f> <g d' f>8[ <g d' f>]
	  \set Timing.measureLength = #(ly:make-moment 7 8)
             <g c-2 e-4>8 r <g c e> r <g c e>4 r8
	}
         \repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    r8 <g-1 b-2 d-4 f-5>[ <g b d f> <g b d f>] r <g d'-3 f-5>[ <g d' f> <g d' f>]
             r8 <g c-2 e-4>[ <g c e> <g c e>] r <g c e>[ <g c e> <g c e>]
             r8 <e gis-2 d'-5>[ <e gis d'> <e gis d'>] r <e a-2 c-4>[ <e a c> <e a c>]
             <e-1 gis-2 b-3> r <e-1 gis-2 b-3 e-5> r <e gis b e> <e e'>16 <e e'> <e e'>8[ <e e'>]

             r8 <e a-3 c-5>[ <e a c> <e a c>] r8 <e a c>[ <e a c> <e a c>]
             r8 <dis-1 a'-3 c-5>[ <dis a' c> <dis a' c>] r <dis a' c>[ <dis a' c> <dis a' c>]
             r8 <e-1 a-3 c-5> r <e a c> r <e-1 gis-2 d'-5> r <e gis d'>
	  \set Timing.measureLength = #(ly:make-moment 7 8)
             <e-1 a-3 c-5> r <e a c> r <e a c>4 r8
	}
     }
}

secondoDown =  {
     \time 4/4
     \clef bass
     \key c \major
     \relative c, {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    <a a'>4 r <a a'> r
	    <a a'>8 r <a a'> r <a a'>4 r
	    <a a'>4 r <a a'> r
	    <e' e'>8 r <e-5 gis-3 b-2 e-1> r <e gis b e>4 r

             <a, a'>4 r <a a'> r
             <a a'>8 r <a a'> r <a a'>4 r
             <g g'>4 r <g g'> r
	  \set Timing.measureLength = #(ly:make-moment 7 8)
             <c c'>8 r <c-5 e-4 g-2 c-1> r <c e g c>4 r8
	}
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    g'4-2 r g r
	    c-1 r c r
	    b-2 r a-3 r
	    e8 r e r e r r4

	    <a, a'>4 r <a a'> r
	    <f f'> r <f f'> r
	    <e e'>8 r <e e'> r <e e'> r <e e'> r
	  \set Timing.measureLength = #(ly:make-moment 7 8)
	    <a a'> r <a c e a> r <a c e a>4 r8
	}
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
     \header { piece = "Alla Turca. Allegro." }
}


\score{
     \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo     "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
      >>
     \layout { }
     \header { piece = "Alla Turca. Allegro."}
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
       \tempo 4 = 80
     }
}
