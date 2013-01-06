\version "2.16.1"
% $Revision: 1.7 $

\header {
  title = "28 melodische Übungsstücke"
  subtitle = "3."
  composer = "Anton Diabelli"
  opus = "Op 149"

  mutopiatitle = "28 melodische Übungsstücke (No. 3)"
  mutopiacomposer = "DiabelliA"
  mutopiaopus = "Op. 149"
  mutopiainstrument = "Piano Duet"
  source = "Unknown"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Alberto Simões"
  maintainerEmail = "ambs@cpan.org"
  maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-403"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
%  annotate-spacing = ##t
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
    \override StaffGrouper #'staff-staff-spacing #'padding = #4
    \override StaffGrouper #'staff-staff-spacing #'basic-distance = #20
  }
}

primoDynamics =  {

  s2\p s2 s2 s4\> s4\! s2 s2 s2 s2
  s2\f s2 s2 s2 s2 s2 s2 s2
  s2\p s8\> s8\! s4 s2 s8\> s8\! s4 s2 s8\< s4 s8\! s4\sf s4 s2\p s2\mf s2
  s2 s2 s2\f s2 s2 s2 s2\p s2 s2 s2
  s2\p s2 s2 s2 s2 s2 s8 s8\< s4 s2 s2\f s2
  s2 s2\p s8\> s8\! s4 s2 s8\> s8\! s4 s2 s2 s2 s2\f s2

}

primoUp =  {
  \time 2/4
  \clef treble
  \relative c''' {
    \ottava #1
    \override Score.OttavaBracket #'padding = #2
    \repeat volta 2 {
      c4-1( e-3	g-5 e	f-4 d	g2)
      e4-3( c   f-4 e     d e   d2)

      r8 c-1 r e-3
      r g-5 r e
      r f-4 r d
      r g-5 r f
      r e-3 r g
      r d-2 r g
      r c,-1 r e-3
      c4 r
    }
    \repeat volta 2 {
      e-3 e
      f-4( e8 d)
      c4-1( d
      e2)
      d4-2 d
      e8-3( d c d)
      e2-3(
      f4 d)

      r8 c-1 r e-3
      r g-5 r e
      r f-4 r d
      r g-5 r f
      r e-3 r g
      r d-2 r g
      r c,-1 r e-3
      c4 r
    }

    f-4( e f g)
    g-5( e8) r
    e4-3( c8) r
    d4-2-. d-.
    \grace{d16[( e])} f4-4^^( e8) d-.
    c-1-. d-. e-. f-.
    g4-5-- r

    r8 f4->-4( e8)
    r f4->( g8)
    r e4-3->(  g8)
    r c,4-1->( e8)

    d4-2 d8. d16(
    e4) e
    g4-5( f8.) d16-2
    c4( e8.-3) f16
    g4( f8.) d16-1
    c4-1( e8.-3) f16
    g4-5( f8.-4) d16-2
    c4-1-. e-3-.
    c-. e-.
    c-1 r
    c-3 r
    c2-2\fermata
    \bar "|."
  }
}

primoDown =  {
  \time 2/4
  \clef treble
  \relative c'' {
    \repeat volta 2 {
      c4-5( e-3	g-1 e	f-2 d	g2)
      e4-3( c   f-2 e     d e     d2)

      c8-5 r e-3 r
      g-1 r e r
      f-2 r d r
      g-1 r f r
      e-3 r g r
      d-4 r g r
      c,-5 r e-3 r
      c4 r
    }
    \repeat volta 2 {
      e-3 e
      f-2( e8 d)
      c4-3( d
      e2)
      d4-4 d
      e8-3( d c d)
      e2-3(
      f4 d)

      c8-5 r e-3 r
      g-1 r e r
      f-2 r d r
      g-1 r f r
      e-3 r g r
      d-4 r g r
      c,-5 r e-3 r
      c4 r
    }

    f-2( e f g)
    g-1( e8) r
    e4-3( c8) r
    d4-4-. d-.
    \grace{d16[( e])} f4-2^^( e8) d-.
    c-5-. d-. e-. f-.
    g4-1-- r

    f4-2( e f g e-3 g c,-5 e)

    d4-4 d8. d16(
    e4) e
    g4-1( f8.) d16-4
    c4-4( e8.-3) f16
    g4( f8.) d16-4
    c4-5( e8.) f16
    g4-1( f8.-2) d16-4
    c4-5-. e-3-.
    c-. e-.
    c r
    \set fingeringOrientations = #'(left)
    <c-1 e-3 g-5> r
    <c e g>2\fermata
    \bar "|."
  }
}

secondoDynamics =  {
  s2\p s2 s2 s2 s2 s2 s2 s2
  s2\f s2 s2 s2 s2 s2 s2 s2
  s2\p s2 s2 s2 s2 s8\< s4 s8\! s8\sf\> s4 s8\!
  s2\p s2\mf s2 s2 s2 s2\f s2 s2 s2
  s2\p s2 s2 s2 s2\p
  s2 s2 s2 s2 s2 s2 s2\< s2\f s2 s2
  s2\p s2 s2 s2 s2 s2 s2 s2\f s2
}

secondoUp =  {
  \time 2/4
  \clef bass
  \relative c {
    \accidentalStyle "modern"
    \repeat volta 2 {
      e8-2([ g-3 c-5 g-1)]
      e'-5([ g,-1 c-3 g)]
      d'-4([ g, b-2 g)]
      d'-4([ g, d' g,)]
      c-3([ g e'-5 g,)]
      g'-4([ g, c-3 g)]
      b-2([ g c-3 g)]
      b-2([ g g'-5 f-4)]

      \clef treble
      e-3([ g-5 c,-1 g')]
      e-3([ g c,-1 g')]
      d-2([ g b,-1 g')]
      d-2([ g d  g)]
      c,-1([ g' c, g')]
      <b,-1 f'-4>([ g' <b, d f> g')]
      <c,-1 e-3>([ g' <c, e> g')]
      <c, e>4 r
      \clef bass
    }
    \repeat volta 2 {
      c8-3([ e-5 c-3 a)]
      b-2([ d-4 b-2 e-5)]
      a,-1([ e' b-2 e)]
      c-3([ e a,-1 e')]
      \clef treble
      a,([ d-2 a'-5 d,)]
      a([ a' a, a')]
      gis-4([ b, e-2 gis-4)]
      g-5([ b, f'-4 b,)]
      e-3([ g c,-1 g')]
      e([ g c, g')]
      d-2([ g b,-1 g')]
      d-2([ g d g)]
      c,-1([ g' c, g')]
      <b,-1 f'-4>([ g' <b, d f> g')]
      <c,-1 e-3>([ g' <c, e> g')]
      <c, e>4 r
      \clef bass
    }
    d8-4([ g, cis-3 g)]
    d'-4([ g, b-2 g)]
    e'_>-4([ g, c-2 g)]
    g'_>-5([ g, e'-4 g,)]

    <b-2 f'-5>([ g <b f'> g)]
    <b f'>([ g <b f'> g)]
    <c-3 e-5>([ g <c e> g)]
    <c e>([ g <c e> g)]

    d'-4([ g, cis g)]
    d'-4([ g, b-2 g)]

    r g-1([ <c-3 e-5> g)]
    r a-1([ <c-3 e-5> a)]

    \set fingeringOrientations = #'(left)
    r <a-1 c-2 d-4> r <a c d>
    r <g-1 c-3 e-5> r <g c e>
    r <g-1 b-2 f'-5> r <g b f'>

    r <g-1 c-3 e-5>-.([ <g c e>-. <g c e>-.)]
    r <g-1 b-2 f'-5>-.([ <g b f'>-. <g b f'>-.)]
    r <g c e>-.([ <g c e>-. <g c e>)-.]
    r <g b f'>-.([ <g b f'>-. <g b f'>-.)]

    <c-2 e-4>([ g g'-5 g,)]
    e'-4([ g, g'-5 g,)]
    e'4-4 r
    <g,-1 c-3 e-5> r
    <g  c e>2\fermata
    \bar "|."
  }
}

secondoDown =  {
  \time 2/4
  \clef bass
  \relative c, {
    \repeat volta 2 {
      c4 r
      c'-1 r
      g-2 r
      b-1 g-2
      c,( c' b-2 c g-4) g-3 g-2 r

      c, r c' r g-2 r b-1 g-2
      <c, c'>( <e e'> <g g'> <g, g'> <c c'>)
      <c c'> <c c'> r
    }
    \repeat volta 2 {
      a'2-2( gis a4) r
      a-3 c-2
      <f, f'>2
      <f f'>4 <f f'>
      <e e'>2(
      <d d'>4) <g, g'>
      <c c'> r
      <c c'> r
      <g g'> r
      <b b'> <g g'>
      <c c'>( <e e'>
      <g g'> <g, g'>
      <c c'>) <c c'>
      <c c'> r
    }
    g'-2 r
    g r
    c r
    <c, c'> r
    g g'
    g, g'-2
    <c, c'> r
    c-3 e-2
    <g, g'> r
    <g  g'> r
    <c  c'> r
    <a  a'> r
    <f f'>8 r <fis fis'>8 r
    <g g'>  r <g g'> r
    <g g'>  r <g g'> r
    <c c'>4 r
    <g g'> r
    <c c'> r
    <g g'> r
    c8 r c' r
    c, r c' r
    c,4 r
    \set fingeringOrientations = #'(left)
    <c-1 g'-2 c> r
    <c g' c>2\fermata
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
  \layout { }
  \header { piece = "Moderato." }
}

\score{
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Primo    "
    \context Staff = "up"   \primoUp
    \context Dynamics = "dynamics" \primoDynamics
    \context Staff = "down" \primoDown
  >>
  \layout { }
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
