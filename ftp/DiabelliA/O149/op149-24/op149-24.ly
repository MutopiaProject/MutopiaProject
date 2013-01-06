\version "2.16.1"
% $Revision: 1.1 $

\header {
     title = "28 melodische Übungsstücke"
     subtitle = "24."
     composer = "Anton Diabelli"
     opus = "Op 149"

     mutopiatitle = "28 melodische Übungsstücke (No. 24)"
     mutopiacomposer = "DiabelliA"
     mutopiaopus = "Op. 149"
     mutopiainstrument = "Piano Duet"
     source = "Unknown"
     style = "Classical"
     copyright = "Creative Commons Attribution-ShareAlike 3.0"
     maintainer = "Alberto Simões"
     maintainerEmail = "ambs@cpan.org"
     maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-557"
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
    \override StaffGrouper #'staff-staff-spacing #'padding = #5
    \override StaffGrouper #'staff-staff-spacing #'basic-distance = #16
  }
}

primoDynamics =  {
     s4\p s1 s4\> s4\! s2 s2 s4\> s4\! s1 s4\> s4\! s2 s4\> s4\! s2
     s4\< s4 s4 s4\! s4\> s4 s4\!   s4\p s1 s1 s2 s8\< s4 s8\! s4\f s2
s4\p
     s1 s4\> s4\! s2 s4 s4 s4 s16\> s16\! s8 s4 s2 s4 s4\sf s4 s4\sf s2
s2\pp s1
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
	  \set Timing.measureLength = #(ly:make-moment 1 4)
	    e8.(-5 c16)-3
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    b4(-2 a)-1 r8 a[-. b-. c]-.
	    c4( b) r8 b[-2-. b-. c]-.
	    d4( b-2 e4.-5 d8)
	    d4( c) r8 c[-3-. b-. c]-.
	    d4.( c8 b[) d-.-4 c-. d]-.
	    e4.(-5 d8 c[) c-. b-. c]-.

	    a8[-.-1 b-. c-. d]-. d[(-4 c) c(-3 b)]
	    \set Timing.measureLength = #(ly:make-moment 3 4)
	    d2(-4 c8) r
	}
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 4)
	    c8.-3 c16
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    d4( c) r8 c[-. c-. c]-.
	    c4(-3 a) r8 a[-.-1 a-. b]-.
	    c4.( b8 a8[)-. a-. a( b)]
	    b4(-2 e)-5 r e8.( c16)-3

	    b4(-2 a) r8 a[-1-. b-. c]-.
	    c4( b) r8 d[-4-. c-. b]-.
	    a[-1-. b-. c-. d]-. e([-5 b]-2 d8.-4 c16)
	}
	\alternative{
	    { \set Timing.measureLength = #(ly:make-moment 3 4)
	      a2(-1 a8) r
	      \set Timing.measureLength = #(ly:make-moment 4 4)
	    }
	    { a8-1 r \acciaccatura{b16[-2 c-3]} d8(-4 c16 b a8) r
	      \acciaccatura{b16[ c]} d8( c16 b }
	}
	a4)-1 r a a a2 r\fermata \bar "|."
     }
}

primoDown =  {
     \time 4/4
     \clef treble
     \key c \major
     \relative c'' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 4)
	    e8.(-1 c16)-3
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    b4(-4 a)-5 r8 a[-. b-. c]-.
	    c4( b) r8 b[-4-. b-. c]-.
	    d4( b-4 e4.-1 d8)
	    d4( c) r8 c[-3-. b-. c]-.
	    d4.( c8 b[) d-.-2 c-. d]-.
	    e4.(-1 d8 c[) c-. b-. c]-.

	    a8[-.-5 b-. c-. d]-. d[(-2 c) c(-3 b)]
	    \set Timing.measureLength = #(ly:make-moment 3 4)
	    d2(-2 c8) r
	}
	\repeat volta 2 {
	    \set Timing.measureLength = #(ly:make-moment 1 4)
	    c8.-3 c16
	    \set Timing.measureLength = #(ly:make-moment 4 4)
	    d4( c) r8 c[-. c-. c]-.
	    c4(-3 a) r8 a[-.-5 a-. b]-.
	    c4.( b8 a8[)-. a-. a( b)]
	    b4(-4 e)-1 r e8.( c16)-3

	    b4(-4 a) r8 a[-5-. b-. c]-.
	    c4( b) r8 d[-2-. c-. b]-.
	    a[-5-. b-. c-. d]-. e([-1 b]-4 d8.-2 c16)
	}
	\alternative{
	    { \set Timing.measureLength = #(ly:make-moment 3 4)
	      a2(-5 a8) r
	      \set Timing.measureLength = #(ly:make-moment 4 4)
	    }
	    { a8-5 r   \acciaccatura{b16[-4 c-3]} d8(-2 c16 b a8) r
\acciaccatura{b16[ c]} d8( c16 b }
	}
	a4)-5 r <a-5 c-3> <a c> <a c>2 r\fermata \bar "|."
     }
}

secondoDynamics =  {
     s4 s1\p s1 s1 s1 s1  s1 s2 s8\< s4 s8\! s8 s8\> s4 s8\! s8
     s4 s8 s4\p s8 s2 s1 s8 s8\< s4 s8\! s8 s4
     s1\f s1\p s1 s2 s2\sf s4 s2
     s4 s4\sf s4 s4\sf s2 s2\pp s2 s2
}

secondoUp =  {
     \time 4/4
     \clef bass
     \key c \major
     \relative c' {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 4)
	    r4
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    r8 <a c-3 e-5>([-. <a c e>-. <a c e>]-. <a c e>)-. r r4
	    r8 <a b-2 f'-5>([-. <a b f'>-. <a b f'>]-. <a b f'>) r r4
             r8 <b-2 d-4 e-5>([-. <b d e>-. <b d e>]-. <b d e>)-. r r4
	    r8 <a c-3 e-5>([-. <a c e>-. <a c e>]-. <a c e>)-. r r4
             r8 <b-2 f'-5>([-. <b f'>-. <b f'>]-. <b f'>)-. r r4

             r8 <g c e-4>([-. <g c e>-. <g c e>]-. <g c e>)-. r r4
             <a d f-5>8 r r4 <g c e-4>8 r <g d' f-5> r
	    \set Timing.measureLength = #(ly:make-moment 3 4)
             r8 <g b-2 f'-5>[(-. <g b f'>-. <g b f'>]-. <g c e>) r
	}
         \repeat volta 2 {
	    \set Timing.measureLength = #(ly:make-moment 1 4)
	    r4
	    \set Timing.measureLength = #(ly:make-moment 4 4)
	    r8 <g-1 bes-2 c-3 e-5>[(-. <g bes c e>-. <g bes c e>]-. <g bes c e>)-. r r4
             r8 <a c-2 f-5>[(-. <a c f>-. <a c f>]-. <a c f>)-. r r4
             r8 <a-1 d-4>[(-. <a d>-. <a d>]-. <a d>)-. r r4

             r8 <gis-2 b-3 e-5>[(-. <gis b e>-. <gis b e>]-. <gis b e>)-. r r4
             r8 <a c-3 e-5>[(-. <a c e>-. <a c e>]-. <a c e>)-. r r4
             r8 <a b-2 f'-5>[(-. <a b f'>-. <a b f'>]-. <a b f'>)-. r r4
             <a c-3 e-5>8 r r4 <gis-2 d'-4 e-5>2
	}
	\alternative {
	    { \set Timing.measureLength = #(ly:make-moment 3 4)
	      r8 <a c-3 e-5>([-. <a c e>-. <a c e>]-. <a c e>)-. r
	      \set Timing.measureLength = #(ly:make-moment 4 4)
            }
	    { <a-1 c-3>(-. e')-.   <gis,-2 b-3 d-4 e-5>4 <a c>8(-. e') <gis, b d e>4 }
	}
         <a-1 c-3>4 r <a c e-5> <a c e>       <a c e>2  r \fermata\bar"|."
     }
     \pageBreak
}

secondoDown =  {
     \time 4/4
     \clef bass
     \key c \major
     \relative c {
	\accidentalStyle "modern"
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	  \set Timing.measureLength = #(ly:make-moment 1 4)
	    r4
	  \set Timing.measureLength = #(ly:make-moment 4 4)
	    r8 <a-5 c'-1>[(-. <a c'>-. <a c'>]-. <a c'>)-. r r4
             r8 <a-5 d-2 f-1>[(-. <a d f>-. <a d f>]-. <a d f>)-. r r4
             r8 <gis-5 b-3 e-1>[(-. <gis b e>-. <gis b e>]-. <gis b e>)-. r r4
             r8 <a-4 c-2 e-1>[(-. <a c e>-. <a c e>]-. <a c e>)-. r r4
             r8 <g d' g>[(-. <g d' g>-. <g d' g>]-. <g d' g>)-. r r4

             r8 <c, c'>[(-. <c c'>-. <c c'>]-. <c c'>)-. r r4
             f8-3 r r4 g8-2 r g r
             \set Timing.measureLength = #(ly:make-moment 3 4)
             r8 <g, g'>([-. <g g'>-. <g g'>]-. <c c'>)-. r
	}
         \repeat volta 2 {
            \set Timing.measureLength = #(ly:make-moment 1 4)
	    r4
            \set Timing.measureLength = #(ly:make-moment 4 4)
	    r8 c'[(-.-2 c-. c]-. c)-. r r4
             r8 f[(-. f-. f]-. f)-. r r4
	    r8 <f, f'>[(-. <f f'>-. <f f'>]-. <f f'>)-. r r4

	    r8 <e e'>[(-. <e e'>-. <e e'>]-. <e e'>)-. r r4
             r8 <a c-4 e-2>[(-. <a c e>-. <a c e>]-. <a c e>)-. r r4
             r8 <d, d'>[(-. <d d'>-. <d d'>]-. <d d'>)-. r r4
             <e e'>8 r r4 <e b' e>2
         }
         \alternative {
             { \set Timing.measureLength = #(ly:make-moment 3 4)
	       r8 <a c e>[(-. <a c e>-. <a c e>]-. <a c e>)-. r
               \set Timing.measureLength = #(ly:make-moment 4 4)
               }
             { a8-2 r <e e'>4( <a e'>8) r <e e'>4( }
	}
         <a e'>4) r <a, a'>4 <a a'>      <a a'>2 r \fermata \bar"|."
     }
}

\score{
     \context PianoStaff  <<
	\set PianoStaff.instrumentName = "Secondo     "
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
     \header { piece = "Andante Cantabile."}
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
