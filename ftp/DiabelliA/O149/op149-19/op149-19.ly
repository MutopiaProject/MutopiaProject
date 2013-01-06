\version "2.16.1"
% $Revision: 1.3 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "19."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke (No. 19)"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Op. 149"
    mutopiainstrument = "Piano Duet"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-533"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
  % add space between composer and the first staff
  markup-system-spacing #'padding = #4
  ragged-bottom = ##t
}
\layout {
  \context {
    \Score
    % add space between staves in piano staff
    \override StaffGrouper #'staff-staff-spacing #'padding = #8
    \override StaffGrouper #'staff-staff-spacing #'basic-distance = #16
  }
}

primoDynamics =  {
  \override DynamicTextSpanner #'style = #'none
    s8\p s2 s2\sf s4\sf s16\< s8 s16\! s4\f s8 s8\p s2 s2\sf s2 s4 s8
    s8\p s2 s2 s2 s2 s8\< s4 s4 s4 s8\! s2\f s4 s8
    s8\p s2\sf s2\p s2\sf s2\p \once\crescTextCresc  s2\< s8\< s4 s8\! s2\ff s2
}

primoUp =  {
    \time 2/4
    \clef treble
    \key f \major
    \relative c'''' {
        \override Score.OttavaBracket   #'padding = #2
	\ottava #1
	\accidentalStyle "modern"
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    a8-5-.
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	    g[-4-. f-3-. e-2-. d]-1-.
	    e8.(-2 f16)-3 d8-1-. f-.
	    e8.(-2 f16 d-1 e f g)
	    a4---5 r8 a-5-.
	    g[-. f-. e-. e]-.-1
	    e8.(-2 f16) d8-. f-.
	    e8(-2 g16-4 f e8[ f16 e])
	  \set Timing.measureLength = #(ly:make-moment 3 8)
	    d4-- r8
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	}
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    d8-1-.
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	    e8[-2-. e-. d-. e]-.
	    f8.(-3 g16 f8) f-.
	    g8[-4-. g-. f-. g]-.
	    a4---5 r8 a-.
	    g8[-4-. g-. a-. e]-.-2
	    f8.(-3 e16 d8) d-.
	    e[-2-. g-4-. f-. e]-.
	  \set Timing.measureLength = #(ly:make-moment 3 8)
	    d4-- r8
	}
	\set Timing.measureLength = #(ly:make-moment 1 8)
	d8-.
	\set Timing.measureLength = #(ly:make-moment 2 4)
	f8.(-3 e16 d8) d-.
	a'4(-5 d,8) d-.
	f8.(-3 e16 d8) d-.
	a'4.-- d,8-.
	f8.(-3 e16 d8) d-.
	d8-. d16( e) f8-. f16(-3 g)
	a8.-> a16-. a8-. a-.
	d,4---1 r \bar "|."
    }
}

primoDown =  {
    \time 2/4
    \clef treble
    \key f \major
    \relative c''' {
	\accidentalStyle "modern"
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	    r8 a[-1-. g-2-. f]-3-.
	    g8[-2-. a-.-1 f-.-3 a]-.
	    g8[-. a-. f-.-3 d]-.
	    e16(-4 f g f e8) r
	    r8 a[-1-. g-. f]-.
	    g8[-2-. a-. f-.-3 a]-.
	    g8.(-2 f16 e8[-4 f16 e])
	  \set Timing.measureLength = #(ly:make-moment 3 8)
	    d4-- r8
	}
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    d8-5-.
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	    e8[-4-. e-. d-. e]-.
	    f8.(-3 g16 f8) f-.
	    g8[-2-. g-. f-. g]-.
	    a4---1 r8 a-.
	    g8[-2-. g-. a-. e]-.-4
	    f8.(-3 e16 d8) d-.
	    e[-4-. g-2-. f-. e]-.
	  \set Timing.measureLength = #(ly:make-moment 3 8)
	    d4-- r8
	}
	\set Timing.measureLength = #(ly:make-moment 1 8)
	d8-.
	\set Timing.measureLength = #(ly:make-moment 2 4)
	f8.(-3 e16 d8) d-.
	a'4(-1 d,8) d-.
	f8.(-3 e16 d8) d-.
	a'4.-- d,8-.
	f8.(-3 e16 d8) d-.
	d8-. d16( e) f8-. f16(-3 g)
	a8.-> a16-. a8-. a-.
	d,4---5 r \bar "|."
    }
}

secondoDynamics =  {
  \override DynamicTextSpanner #'style = #'none
    s8\p s2 s2\sf s2\sf s4\f s8 s8\p s2 s2\sf
    s2 s2 s2\p s2 s2 s2 s2
    s8\< s4 s8\! s2\f s8 s4 s2\p s2\sf s2\p
    s2\sf s2\p \once\crescTextCresc s4\< s8\< s8 s4 s8 s8\! s2\ff s2
}

secondoUp =  {
    \time 2/4
    \clef treble
    \key f \major
    \relative c'' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    a8-5-.
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	    a[-. a-. a-. a]-.
	    <cis,-2 g'-4 a-5> <cis g' a> <d-1 f-3 a-5> r
	    <cis g' a> <cis g' a> <d f a> r
	    <cis-2 e-3 a-5>[ <cis e a> <cis e a>] a'-.
	    a[-. a-. a-. a]-.
	    <cis,-2 g'-4 a-5> <cis g' a> <d-1 f-3 a-5> r

            r8 <d e-2 bes'-5> r <cis-2 e-3 g-4 a-5>
	  \set Timing.measureLength = #(ly:make-moment 3 8)
            <d-1 f-3>[-. <f-3 a-5>-. <d-1 f-3>]-.
	}
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	    r <c g'-3 bes-5> r <c g' bes>
	    r <c f-2 a-4> r <c f a>
	    r <c e-2 bes'-5> r <c e bes'>
	    r <c f-3 a-5> r <c f a>
	    r <e-2 g-4 a-5> r <e g a>

	    r <d-1 f-3 a-5> r <d f a>
	    r <d-1 e-2 bes'-5> r <cis-2 g'-4 a-5>
	}
        \alternative {
	    { \set Timing.measureLength = #(ly:make-moment 3 8)
	      <d-1 f-3>8[-. <f a>-. <d f>]-.
              \set Timing.measureLength = #(ly:make-moment 2 4)
            }
	    { d16(-1 f-3 a-5 f d f a f) }
	}
        d(-1 f-3 gis-4 f d f gis f)
        d( f-3 a-5 f d f a f)

	d( f-3 gis-4 f d f gis f)
        d( f-3 a-5 f d f a f)
      	d( f-3 gis-4 f d f gis f)
        d( f-3 a-5 f d f a f)
        <d-1 e-2 a-5>8-. <d e a>16-. <d e a>-. <cis-2 e-3 a-5>8-. <cis e a>-.
	<d-1 f-3 a-5>4-- r \bar "|."
    }
    \pageBreak
}

secondoDown =  {
    \time 2/4
    \clef bass
    \key f \major
    \relative c {
	\accidentalStyle "modern"
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	    r2
	    <a-5 e'-1>8 <a e'> d8-2 r
	    <a e'>8 <a e'> d8 r
	    <a e'>8 <a e'> <a e'> r
	    r2
	    <a e'>8 <a e'> d8 r

	    g,8-5 r a r
	  \set Timing.measureLength = #(ly:make-moment 3 8)
	    d8[ d d]
	}
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 2 4)
	    c-2 r c r
	    c r c r
	    c r c r
	    f r f r
	    cis r cis r
	    d r d r
	    g,-5 r a r
	}
	\alternative {
	    { \set Timing.measureLength = #(ly:make-moment 3 8)
	      d8[ d d]
              \set Timing.measureLength = #(ly:make-moment 2 4)
		}
	    { d2 }
	}
	\set fingeringOrientations = #'(left)
	<d-5 f-3 gis-2 b-1>2
	<d-5 f-3 a-1>2

        <d-5 f-3 gis-2 b-1>2
	<d-4 f-3 a-1>2
	<b-4 d-2 f-1>2
        <a-5 d-2 f-1>2
	<a, a'>8-. <a a'>-. <a a'>-. <a a'>-.
	<d a' d>4-- r \bar "|."
    }
}

\score{
    \context PianoStaff  <<
	\set PianoStaff.instrumentName = "Secondo "
	\context Staff = "up"   \secondoUp
	\context Dynamics = "dynamics" \secondoDynamics
	\context Staff = "down" \secondoDown
    >>
    \layout {}
    \header { piece = "Allegretto." }
}


\score{
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
    >>
    \layout {}
    \header { piece = "Allegretto."}
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
