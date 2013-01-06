\version "2.16.1"
% $Revision: 1.3 $

\header {
  title = "28 melodische Übungsstücke"
  subtitle = "8."
  composer = "Anton Diabelli"
  opus = "Op 149"

  mutopiatitle = "28 melodische Übungsstücke (No. 8)"
  mutopiacomposer = "DiabelliA"
  mutopiaopus = "Op. 149"
  mutopiainstrument = "Piano Duet"
  source = "Unknown"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Alberto Simões"
  maintainerEmail = "ambs@cpan.org"
  maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-410"
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
  s2.\p s2. s2. s2.
  s4\< s4 s4\!
  s4\> s4 s4\!
  s2.\p s2.
  s2.\f s2.
  s2.\p s2.
  s2.\f s2.
  s2.\ff s2.
  s2.\p s2. s2. s2.
  s4\< s4 s4\! s4\> s4 s4\!
  s2.\p s2. s2.
  s2._\markup\bold\italic{dolce}
  s2. s2. s2. s2. s2. s2. s2 s4_\markup\bold\italic{dim.}
  s2. s2. s2.\f s2.
}

primoUp =  {
  \time 3/4
  \clef treble
  \key g \major
  \relative c''' {

    \repeat volta 2 {
      b4-3( c-4 d-5)
      d2-5( a4-2)
      g-1( a-2 b-3)
      b2-3( a4-2)
      b-3( c d)
      d2-5( c4)
      b-3( c a)
      g2 r4
    }
    \repeat volta 2 {
      a4-2( d-5 cis
      d2 a4)
      a-. a-. a-.
      a2.
      a4-2( d-5 cis
      d2 a4)
      a-.-2 b-. cis-.
      d2.

      b4-3( c d)
      d2-5( a4-2)
      g-1( a b)
      b2-3( a4)
      b-3( c d)
      d2-5( c4)
      b-3( c a)
    }
    \alternative {
      { g2 r4}
      { g4 r r}
    }
    d'-5 d d
    d2 c8( b)
    a2-2 c8-4( b)
    g-1 r g( a b c)
    d4 d d
    d2 c8( b)
    a2-2 c8-4( b)
    g4 r c8-4( a-2)
    g4-1 r c8( a)
    g4 r r
    g-4 g-3 g-2 g2.-1\fermata
    \bar "|."
  }
}

primoDown =  {
  \time 3/4
  \clef treble
  \key g \major
  \relative c'' {
    \repeat volta 2 {
      b4-3( c-2 d-1)
      d2-1( a4-4)
      g-5( a-4 b-3)
      b2-3( a4-4)
      b-3( c d)
      d2-1( c4)
      b-3( c a)
      g2 r4
    }
    \repeat volta 2 {
      a4-4( d-1 cis
      d2 a4)
      a-. a-. a-.
      a2.
      a4-4( d-1 cis
      d2 a4)
      a-.-4 b-. cis-.
      d2.

      b4-3( c d)
      d2-1( a4-4)
      g-5( a b)
      b2-3( a4)
      b-3( c d)
      d2-1( c4)
      b-3( c a)
    }
    \alternative {
      { g2 r4}
      { g4 r r}
    }
    d'-1 d d
    d2 c8( b)
    a2-4 c8-2( b)
    g-5 r g( a b c)
    d4 d d
    d2 c8( b)
    a2-4 c8-2( b)
    g4 r c8-2( a-4)
    g4-5 r c8( a)
    g4 r r
    \set fingeringOrientations = #'(left)
    <g-5 b-3 d-1>	<g b d>	<g b d>
    <g b d>2.\fermata
    \bar "|."
  }
}

secondoDynamics =  {
  s2.\p s2. s2. s2.
  s4\< s4 s4\!
  s4\> s4 s4\!
  s2.\p s2.
  s2.\f s2.
  s2.\p s2.
  s2.\f s2.
  s2.\ff s4\> s4 s4\!
  s2.\p s2. s2. s2.
  s4\< s4 s4\! s4\> s4 s4\!
  s2.\p s2. s2.
  s2. s2. s2. s2. s2. s2. s2. s2  s4_\markup\bold\italic{dim.}
  s2. s2. s2.\f s2.
}

secondoUp =  {
  \time 3/4
  \clef bass
  \key g \major
  \relative c' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      g8-1( d'-5 a-2 d b-3 d)
      fis,-2( c'-4 d-5 c fis,-2 c'-4)
      b-3( d-5 a-2 d g,-1 d')
      g,-1( d' cis d fis,-2 d'-5)
      g,-1( d' fis,-2 d'-5 f,-1 g-2)
      e-1( g-2 gis-3 e-1 a-4 e)
      g-2( d'-5 a-2 d-5 <fis,-2 c'-4> d'-5)
      <g,-1 b-3>2 r4
    }
    \clef treble
    \repeat volta 2 {
      <d'-2 fis-4>8( a <d fis> a <e'-3 g-5> a,)
      <d-2 fis-4>( a <d fis> a <d fis> a)
      <cis-2 e-4>( a <d-2 fis-4> a <e'-3 g-5> a,)
      <cis-2 eis-4>( a <cis eis> a <d-2 fis-4>4)

      <d-2 fis-4>8( a <d fis> a <e'-3 g-5> a,)
      <d-2 fis-4>( a <d fis> a <d fis> a)
      <cis-2 g'-5>( a <d-2 g-5> a <e'-3 g-5> a,)
      <a d-2 fis-4> d-5([ cis-4 d-5 c-4 a-2)]

      \clef bass
      g-1( d' a-2 d b-3 d)
      fis,-2( c'-4 d-5 c fis, c')
      b-2( d a d g, d')
      g,-1( d' cis d fis,-2 d')
      g,-1( d' fis,-2 d' f,-1 g-2)
      e-1( g-2 gis-3 e-1 a-4 e)
      g-2( d'-5 a-2 d <fis,-2 c'-5> d')
    }
    \alternative {
      { <g,-1 b-3>2 r4 }
      { <g-1 b-3>8( d' <g, b> d' <g, b> d') }
    }
    <fis,-1 a-2>8( d' <g,-1 b-2> d' <a-2 c-4> d)
    <g,-1 b-2>( d' <g, b> d' <g, b> d')
    <fis,-1 c'-4>( d' <fis, c'> d' <fis, c'> d')
    <g,-1 b-3>( d' <g, b> d' <g, b> d')
    <fis,-1 a-2>8( d' <g,-1 b-2> d' <a-2 c-4> d)
    <g,-1 b-2>( d' <g, b> d' <g, b> d')
    <fis,-1 c'-4>( d' <fis, c'> d' <fis, c'> d')
    <g,-1 b-3>4 r <fis-2 a-3>8( c')
    <g-1 b-4>4 r <fis-2 a-3>8( c')
    <g-1 b-4>2.
    \set fingeringOrientations = #'(left)
    <d-1 g-2 b-4 d-5>4^^ <d g b d>^^ <d g b d>^^
    <d g b d>2.\fermata
    \bar "|."
  }
}

secondoDown =  {
  \time 3/4
  \clef bass
  \key g \major
  \relative c {
    \accidentalStyle "modern"
    \repeat volta 2 {
      g4-3 r r
      <d d'> r r
      <d d'>2.
      <d d'>2.
      g4-4 a b
      c-1 c, c'
      d, d' d,
      r8 g-1([ d-2 b-1] g-5) r
    }
    \repeat volta 2 {
      d'4-5 fis-3 a-2
      <d, d'>2.
      a'4-2 r a
      <d, d'>2.
      d4-5 fis-3 a-2
      <d, d'>2.
      <a a'>4 r <a a'>(
      <d d'>) r r
      g-3 r r
      <d d'> r r
      <d d'>2.
      <d d'>2.
      g4-4 a b
      c c, c'
      d, d' d,
    }
    \alternative {
      { r8 g-1([ d-2 b-4] g-5) r }
      { g'4-3 b-2 g-3 }
    }
    d-5 r r
    g-3 b-2 g
    <d d'> r <d d'>
    g-3 b-2 g
    d r r
    g-3 b-2 g
    <d d'> r <d d'>
    g8-3( b-2 d4-1) <d, d'>
    g8( b d4) <d, d'>
    g-1 d-2 b-4
    g-5^^ b-4^^ d-2^^
    <g, g'>2.\fermata
    \bar "|."
  }
}


\score{
  \context PianoStaff  <<
    \set PianoStaff.instrumentName = "Secondo "
    \context Staff = "up"   \secondoUp
    \context Dynamics = "dynamics" \secondoDynamics
    \context Staff = "down" \secondoDown
  >>
  \layout { }
  \header { piece = "Moderato." }
}

\score{
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Primo   "
    \context Staff = "up"   \primoUp
    \context Dynamics = "dynamics" \primoDynamics
    \context Staff = "down" \primoDown
  >>
  \layout {}
  \header { piece = "Moderato." }
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
