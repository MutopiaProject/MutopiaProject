\version "2.16.1"
% $Revision: 1.1 $

\header {
    title = "28 melodische Übungsstücke"
    subtitle = "16."
    composer = "Anton Diabelli"
    opus = "Op 149"

    mutopiatitle = "28 melodische Übungsstücke (No. 16)"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Op. 149"
    mutopiainstrument = "Piano Duet"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-520"
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
    s8 s8-\markup\bold{1} s8 s8 s8 s8\p
    s4. s4. s8 s8-\markup\bold{1} s8 s4. s4. s4. s8 s8-\markup\bold{1} s8
    s4. s4. s4. s8\< s4 s4 s8\! s4.\f s4.

    s8 s8-\markup\bold{1} s8 s8 s8 s8\pp s4.
    s4.  s8 s8-\markup\bold{1} s8 s4. s4.
    s4.  s8 s8-\markup\bold{1} s8 s4. s4. s4. s4.

    s8\< s8 s8\! s4.\f s8 s8\> s8\! s8 s8-\markup\bold{1} s8
    s4 s8\p s4. s4. s8 s8-\markup\bold{1} s8 s4. s4.

    s4.  s8 s8-\markup\bold{1} s8 s4. s8\< s4 s4 s8\! s4.\f
    s4. s4. s4. s4.
}

primoUp =  {
    \time 3/8
    \clef treble
    \key d \major
    \relative c''' {
        \override Score.OttavaBracket   #'padding = #2
	\ottava #1
	\accidentalStyle "modern"
	\repeat volta 2 {
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r8 fis-3-.
	    fis4.(->
	    e8)-2 r r
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r8 e8-.
	    e4.(-2->
	    d8) r8 r
	    r4 r8 % queria por uma pausa generica... :)

	    r8 r8 fis-3
	    fis4 e8
	    a4-5 e8-2
	    f4 e8
	    gis4-4 e8
	    a4.~ a4 r8
	}
	\repeat volta 2 {
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r a-.-5
	    a4.(->

	    g8) r r
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r g-.-4
	    g4.(->
	    f8) r r
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r a-.-5
	    a4.(->
	    g8) r r
	    f-.-3 r f-.

	    g8[-4-. f-. g]-.
	    a4.(-5
	    a8[) g-4 e-2]
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r fis-.-3
	    fis4.(->
	    e8) r r
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r e-2-.
	    e4.(->

	    d8) r r
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r8 fis-3
	    fis4-> e8
	    e4 e8
	    a4.(-5
	    a8[) e-2 fis]
	    d4.-1 ~
	}
	\alternative {
	    { d4 r8}
	    { \set Timing.measureLength = #(ly:make-moment 2 8)
	      d4 \bar "|."}% FIXME!!! ligadura deve ser prolongada para ambas as repetições
	}
    }
}

primoDown =  {
    \time 3/8
    \clef treble
    \key d \major
    \relative c'' {
	\accidentalStyle "modern"
	\repeat volta 2 {
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r8 fis-3-.
	    fis4.(->
	    e8)-4 r r
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r8 e8-.
	    e4.(-4->
	    d8) r8 r
	    r4 r8 % queria por uma pausa generica... :)

	    r8 r8 fis-3
	    fis4 e8
	    a4-1 e8-4
	    f4 e8
	    gis4-2 e8
	    a4.~ a4 r8
	}
	\repeat volta 2 {
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r a-.-1
	    a4.(->

	    g8) r r
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r g-.-2
	    g4.(->
	    f8) r r
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r a-.-1
	    a4.(->
	    g8) r r
	    f-.-3 r f-.

	    g8[-2-. f-. g]-.
	    a4.(-1
	    a8[) g-2 e-4]
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r fis-.-3
	    fis4.(->
	    e8) r r
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r e-4-.
	    e4.(->

	    d8) r r
	    r4 r8 % queria por uma pausa generica... :)
	    r8 r8 fis-3
	    fis4-> e8
	    e4 e8
	    a4.(-1
	    a8[) e-4 fis]
	    d4.-5 ~
	}
	\alternative {
	    { d4 r8}
	    { \set Timing.measureLength = #(ly:make-moment 2 8)
	      d4  \bar "|."} % FIXME!!! ligadura deve ser prolongada para ambas as repetições
	}
    }
}

secondoDynamics =  {
    s4.\p s4. s4. s4. s4. s4. s4. s4. s4.
    s4. s4. s4. s8\< s4 s4 s8\! s4.\f s4.
    s4.\pp s4.
    s4. s4. s4. s4. s4. s4. s4. s4. s4. s4.
    s4. s8 s8\< s8\! s4.\f s8\> s8 s8\! s4.\p s4. s4. s4. s4. s4.
    s4. s4. s4. s4. s8\< s4 s4 s8\! s4.\f s4. s4. s4. s4
}

secondoUp =  {
    \time 3/8
    \clef treble
    \key d \major
    \relative c' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <d fis a>16[-5-. <d fis a>]-.  <d fis a>8-. <d eis gis>-4-.
	    <d fis a>-.-5 <d g b>-.-5 <d fis a>-.-5
	    r <cis-2 g'-4 a-5> <cis g' a>
	    r <cis g' a> <cis g' a>
	    <e-1 g-4 a-5>16[-. <e g a>] <e g a>8-. <dis-2 fis-3 a-5>-.
            <e-1 g-4 a-5>-. <fis-3 a-5>-. <e-2 g-4 a-5>-.
	    r <a, fis'-4 a-5> <a fis' a>
            r <a fis' a> <a fis' a>
            <d fis-3 a-5>16[-. <d fis a>]-. <d fis a>8-. <d eis gis-4>-.

            <d fis a-5>-. <d g b-5>-. <d fis a-5>-.
            r <cis e-2 a-5> <cis e a>
            r <cis e a> <cis e a>
            r <b d-2 gis-5> <b d gis>
            r <b d-2 e-3 gis-5> <b d e gis>
            r <cis e-2 a-5> <cis e a>
            << { a'4.-5 } \\ { <cis,-1 e-2>8( <d-1 fis-3> <e-2 g-4>) } >>
         }
	\repeat volta 2 {
	    <c f-3 a-5>16[-. <c f a>]-. <c f a>8-. <b f'-3 g-4>-.
            <c f-2 a-4>-. <d f bes-5>-. <c f a-4>-.

	    r8 <bes e-2 a-5> <bes e a>
	    r8 <bes e-2 g-4> <bes e g>
            <bes c-2 g'-5>16[-. <bes c g'>]-.  <bes c g'>8-. <a c fis-4>-.
	    <bes c g'-5>-. <c a'-5>-. <bes c g'-5>-.
            r8 <a c-2 g'-5> <a c g'>
            r8 <a c-2 f-4> <a c f>
            <c f-3 a>16[-. <c f a>]-. <c f a>8-. <b f'-3 gis-4>-.
            <c f-2 a-4>-. <d f bes-5>-. <c f a-4>-.
            r8 <a cis-2 g'-5> <a cis g'>
            r8 <a cis g'> <a cis g'>

            r8 <a d-3 f-5> <a d f>
	    r8 <d-1 g-4> <d g>
            <cis-2 e-3 a-5>-. <d-1 f-3 a-5>-. <dis-2 fis-3 a-5>-.
            <e-1 g-4 a-5>4.
	    <d fis-3 a-5>16[-. <d fis a>]-.  <d fis a>8-. <d eis gis-4>-.
            <d fis a-5>-. <d g b-5>-. <d fis a-5>-.
            r8 <cis-2 g'-4 a-5> <cis g' a>
            r8 <cis g' a> <cis g' a>
            <e-1 g-4 a-5>16[-. <e g a>]-.  <e g a>8-. <dis-2 fis-3 a-5>-.
            <e-1 g-4 a-5>-. <fis-3 a-5>-. <e-2 g-4 a-5>-.

	    r8 <a, fis'-4 a-5> <a fis' a>
            r8 <a fis' a> <a fis' a>
            <d-1 fis-3 a-5>16[-. <d fis a>]-. <d fis a>8-. <d eis gis-4>-.
            <d fis a-5>-. <d g b-5>-. <d fis a-5>-.
            r8 <d e gis-4> <d e gis>
            r8 <d e gis> <d e gis>
            r8 <a cis-2 g'-5>16[ <a cis g'>] <a cis g'>8
            r8 <a cis g'> <a cis g'>
            r8 <a d fis-4> <a d fis>
        }
	\alternative {
	    { <a d fis>8[ <a a'> <a a'>] }

	    { \set Timing.measureLength = #(ly:make-moment 2 8)
	      <a d fis>4-- \bar "|."}
	}
    }
}

secondoDown =  {
    \time 3/8
    \clef bass
    \key d \major
    \relative c, {
	\accidentalStyle "modern"
	\repeat volta 2 {
	    <d d'>4 r8
	    <d d'>4 r8
	    <a' a'>4 r8
            <a a'>4 r8
	    <a, a'>4 r8
            <a a'>4 r8
	    <d d'>4 r8
	    <d d'>4 r8
	    <d d'>4 r8
	    <d d'>4 r8
	    <e e'>4 r8
	    <e e'>4 r8
	    <e e'>4 r8
	    <e e'>4 r8
	    <a, a'>8[ r <a a'>]
            <a a'>4 r8
	}
	\repeat volta 2 {
	    <f' f'>4 r8
	    <f  f'>4 r8

	    <c c'>4 r8
	    <c c'>4 r8
	    <c c'>4 r8
	    <c c'>4 r8
	    <f f'>4 r8
	    <f f'>4 r8
	    <f f'>4 r8
	    <f f'>4 r8
	    <e e'>4 r8
	    <e e'>4 r8

	    <d d'>4 r8
	    <bes bes'>4 r8
	    <a a'>8 <a a'> <a a'>
	    <a a'>4.
	    <d d'>4 r8
	    <d d'>4 r8
	    <a' a'>4 r8
	    <a a'>4 r8
	    <a, a'>4 r8
	    <a a'>4 r8

            <d d'>4 r8
            <d d'>4 r8
            <d d'>4 r8
            <d d'>4 r8
            <b b'>4 r8
            <b b'>4 r8
            <a a'>4 r8
            <a a'>4 r8
	    <d d'>8[ r <d d'>]
        }
	\alternative {
	    { <d d'>4 r8 }
	    { \set Timing.measureLength = #(ly:make-moment 2 8)
	      <d d'>4 \bar "|."}
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
    \header { piece = "Scherzo. Allegro vivace." }
}


\score{
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo     "
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
    >>
    \layout { }
    \header { piece = "Scherzo. Allegro vivace."}
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



%%%% TRIO %%%%


primoTrioDynamics =  {
    s8\p s4. s4. s4. s4. s4. s4. s4. s4. s4. s4.
    s4. s8\< s8 s8\! s4.\f s4. s4. s4
    s8\p s4. s4. s4. s4. s4.
    s4. s4. s4. s4 s4.-\markup\italic{cresc.} s8 s8\< s8 s8\! s4. s4\f
    s1._\markup{Scherzo da Capo senza replica.}
}


primoTrioUp =  {
    \time 3/8
    \clef treble
    \key g \major
    \relative c''' {
	\ottava #1
	\accidentalStyle "modern"
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    d8-1-.
	  \set Timing.measureLength = #(ly:make-moment 3 8)
	    g-4-. g-. g-.
	    g-. g-. g-.
	    g(-. fis g)
	    d4.
	    d8-. d-. d-.
	    d-. d-. d-.
	    d(-1 fis-3 g)
	    a4 d,8-1-.
	    g8-4-. g-. g-.
	    g-. g-. g-.

	    g( fis g)
	    d4.
	    a'8-5-. a-. a-.
	    a-. a-. a-.
	    d,4.( d8) r
	}
	\repeat volta 2 {
	    \set Timing.measureLength = #(ly:make-moment 1 8)
	    d8-.
	    \set Timing.measureLength = #(ly:make-moment 3 8)
	    a'4-5-> d,8-.
	    a'4-> d,8-.
	    d-. e-. fis-.
	    g-.-4 fis-. g-.
	    a-.-5 d,4-1->

	    a'8-. d,4->
	    d8-1-. e-. fis-.
	    g-.-4 fis-. g-.
	    e4-2 e8
	    e4 e8
	    e4( a8)
	    a4.-5
	    g8-4 fis g
	    a e-2 fis
	    g4.(
	}
	\alternative{
	    { \set Timing.measureLength = #(ly:make-moment 2 8)
	      g8) r8 }
	    { g8 r8 r8 \bar "|."}
	}
    }
}

primoTrioDown =  {
    \time 3/8
    \clef treble
    \key g \major
    \relative c'' {
	\accidentalStyle "modern"
	\repeat volta 2 {
	    \set Timing.measureLength = #(ly:make-moment 1 8)
	    d8-5-.
	    \set Timing.measureLength = #(ly:make-moment 3 8)
	    g-2-. g-. g-.
	    g-. g-. g-.
	    g(-. fis g)
	    d4.
	    d8-. d-. d-.
	    d-. d-. d-.
	    d(-5 fis-3 g)
	    a4 d,8-5-.
	    g8-2-. g-. g-.
	    g-. g-. g-.

	    g( fis g)
	    d4.
	    a'8-1-. a-. a-.
	    a-. a-. a-.
	    d,4.( d8) r
        }
	\repeat volta 2 {
	    \set Timing.measureLength = #(ly:make-moment 1 8)
	    d8-.
	    \set Timing.measureLength = #(ly:make-moment 3 8)
	    a'4-1-> d,8-.
	    a'4-> d,8-.
	    d-. e-. fis-.
	    g-.-2 fis-. g-.
	    a-.-1 d,4-5->

	    a'8-. d,4->
	    d8-5-. e-. fis-.
	    g-.-2 fis-. g-.
	    e4-4 e8
	    e4 e8
	    e4( a8)
	    a4.-1
	    g8-2 fis g
	    a e-4 fis
	    g4.(
	}
	\alternative{
	    { \set Timing.measureLength = #(ly:make-moment 2 8)
	      g8) r8 }
	    { g8 r8 r8 \bar "|."}
	}
    }
}

secondoTrioDynamics =  {
    s8 s4.\p s4. s4. s4. s4. s4. s4. s4. s4. s4.
    s4. s8\< s8 s4\! s4.\f s4. s4. s4
    s8 s4.\p s4. s4. s4. s4.
    s4. s4. s4. s4.-\markup\italic{cresc.} s4. s4. s4. s4\f
    s1._\markup{Scherzo da Capo senza replica.}
}

secondoTrioUp =  {
    \time 3/8
    \clef bass
    \key g \major
    \relative c' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 3 8)
	    <g-1 b-3>-. <a c>-. <b d>-.
	    <a-1 c-3>-. <b d>-. <c e>-.
	    r8 <g b d-5> <g b d>
	    r8 <g b d> <g b d>
	    <fis-1 a-2>-. <g-1 b-3>-. <a c>-.
	    <g-1 b-3>-. <fis-2 a-4>-. <e g>-.
	    r8 <fis-2 a-3 d-5> <fis a d>
	    r8 <fis-2 a-3 c-4 d> <fis a c d>
	    <g-1 b-3>-. <a c>-. <b d>-.
	    <a-1 c-3>-. <b d>-. <c e>-.

	    r8 <g b d-5> <g b d>
	    \clef treble
	    <b-1 d-2>-. <d-2 g-4>-. <g-4 b-5>
	    <fis-3 a-5>-. <e g-4>-. <d fis-3>-.
	    \clef bass
	    <g,-1 e'-5> <a-1 fis'-5> <g-1 e'-5>
	    <fis-2 a-3 d-5>[ <fis a d> <fis a d> ]
	     \set Timing.measureLength = #(ly:make-moment 2 8)
	    <fis a d>8 r8
	     \set Timing.measureLength = #(ly:make-moment 3 8)
	}
        \repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 3 8)
	    <fis-2 a-3>-. <g-1 b-4>-. <a-3 c-5>-.
	    <fis a>-. <g b>-. <a c>-.
	    r8 <g b-3 d-5> <g b d>
	    r8 <g-1 b-4 d-5> <g b d>
	    <fis-2 a-3>-. <g-1 b-4>-. <a-3 c-5>-.

	    <fis a>-. <g b>-. <a c>-.
	    r8 <g-1 b-3 d-5> <g b d>
	    r8 <g-2 b-4 d> <g b d>
	    r8 <g c-3 e-5> <g c e>
	    r8 <gis-2 d'-4 e-5> <gis d' e>
	    r8 <a c-3 e-5> <a c e>
	    r8 <a c e> <a c e>
	    r8 <b-3 d-5> <b d>
	    r8 <a-2 c-4 d-5> <a c d>
	    <g-1 b-3 d-5>[ <g b d> <g b d>]
	}
        \alternative {
	    { \set Timing.measureLength = #(ly:make-moment 2 8)
	      <g b d>8 r8 }
	    { <g b d>8 r8 r8 }
	}
   }
}

secondoTrioDown =  {
    \time 3/8
    \clef bass
    \key g \major
    \relative c {
	\accidentalStyle "modern"
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 3 8)
	    g4-3 r8
	    g4 r8
	    g4 r8
	    g4 r8
	    d'4 r8
	    d4 r8
	    <d, d'>4 r8
	    <d d'>4 r8
	    g4-3 r8
	    g4 r8

	    g4 r8
	    g4 r8
	    a4-2 r8
	    a4 r8
	    d8[-. a-.-2 fis]-.-3
	    \set Timing.measureLength = #(ly:make-moment 2 8)
	    d8 r8
	    \set Timing.measureLength = #(ly:make-moment 3 8)
	}
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 8)
	    r8
	  \set Timing.measureLength = #(ly:make-moment 3 8)
	    d'4 r8
	    d4 r8
	    g,4-2 r8
	    g4 r8
	    d'4 r8
	    d4 r8
	    g,4-2 r8
	    g4 r8
	    <c, c'>4 r8
	    <b d'>4 r8
	    <a a'>4 r8
	    <c c'>4 r8
	    <d d'>4 r8
	    <d d'>4 r8
	    g[-1-. d-2-. b]-4-.
	}
	\alternative {
	    { \set Timing.measureLength = #(ly:make-moment 2 8)
	      g8 r8 }
	    { g8 r8 r8 \bar "|."}
	}
    }
}

\score{
    \context PianoStaff  <<
	\set PianoStaff.instrumentName = "Secondo     "
	\context Staff = "up"   \secondoTrioUp
	\context Dynamics = "dynamics" \secondoTrioDynamics
	\context Staff = "down" \secondoTrioDown
    >>
    \layout { }
    \header { piece = "Trio." }
}


\score{
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo     "
	\context Staff = "up"   \primoTrioUp
	\context Dynamics = "dynamics" \primoTrioDynamics
	\context Staff = "down" \primoTrioDown
    >>

    \layout { }
    \header { piece = "Trio." }
}



\score{
    \context PianoStaff  <<
	\context Staff = "up"   <<
	    \applyMusic #unfold-repeats \primoTrioUp
	    \applyMusic #unfold-repeats \secondoTrioUp
	>>
	\context Staff = "down" <<
	    \applyMusic #unfold-repeats \primoTrioDown
	    \applyMusic #unfold-repeats \secondoTrioDown
	>>
    >>

  \midi {
    \tempo 4 = 120
    }

}


%%%% END TRIO
