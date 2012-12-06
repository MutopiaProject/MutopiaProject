\version "2.16.1"
% $Revision: 1.2 $

\header {
  title = "28 melodische Übungsstücke"
  subtitle = "9."
  composer = \markup{\smallCaps "Anton Diabelli"}
  opus = \markup{\smallCaps "Opus 149-9"}

  mutopiatitle = "28 melodische Übungsstücke"
  mutopiacomposer =  "DiabelliA"
  mutopiaopus = "Op 149"
  mutopiainstrument = "Piano, Piano"
  source = "If I could know..."
  style = "Classical"
  copyright = "MutopiaBSD"
  maintainer = "Alberto Simões"
  maintainerEmail = "ambs@cpan.org"
  maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
  lastupdated = "2004/Mar/02"

  tagline = "\\parbox{\\paper-width}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and released under the MutopiaBSD licence by " + \maintainer + ".} \\makebox[\\textwidth][c]{You should have received a copy of the licence with this music. If not, it is available at the above website.}}"
  footer = "Mutopia-2004/03/02-415"
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
  s2.\p s2. s2. s2. s2. s8\< s2 s8\! s2.\f s2.
  s2.\p s4._> s4. s2. s2. s2. s4._> s4. s2.\f s2.
  s2.\p s2. s2.\sf s2. s4 s8\< s4 s8\!
  s2.\f s4 s8\< s4 s8\! s4.\p s8_> s4 s4 s8 s8_> s4 s4.\pp
  s4._\markup\italic{rall.} s2. s2.
}

primoUp =  {
  \time 6/8
  \clef treble
  \key g \major
  \relative c''' {
    \repeat volta 2 {
      g4-1( a8-2 b4-3 c8-4)
      d4.-5( b)
      c4(-4 d8 b4 d8)
      a4.( d4) r8
      g,4-1( a8 b4 c8)
      d4.( b)
      a4-2 a8 a([ b) cis]-.
      d4 d8 d4 r8
    }
    \repeat volta 2 {
      c4(-4 b8 c4 a8-2)
      d4.(-5 b)-3
      a4(-2 b8 c4 a8)
      g4.(-1 b)
      c4(-4 b8 c4 a8)
      d4.(-5 b)-3
      a8([-2 b a] d[-5 c a)]
      g4-1 b8 g4 r8
    }
    g4-1 g8 g([ a) b-.]
    c4.-4 c8([ d c)]
    b4.-3 b8([ c b)]
    a4.-2 a8([ b) c-.]
    d4-5 d8 d([ c a)]
    b4-3 b8 d([ b-3 g-1])
    a4-2 a8 d([ c-4 a-2])
    g4( d'8) a8([-2 b a)]
    g4( d'8) a8([ b a)]
    g4.(-1 b)-3
    g4.( b)
    g2. \fermata
    \bar "|."
  }
}

primoDown =  {
  \time 6/8
  \clef treble
  \key g \major
  \relative c'' {
    \repeat volta 2 {
      g4-5( a8-4 b4-3 c8-2)
      d4.-1( b)
      \set fingeringOrientations = #'(left)
      <c-2 d>4. <b-3 d>
      <a-4 d>~ <a d>4 r8
      g4-5( a8 b4 c8)
      d4.( b)
      a4-4 a8 a[( b) cis]
      d4 d8 d4 r8
    }
    \repeat volta 2 {
      c4(-2 b8 c4 a8)
      d4.(-1 b)-3
      \set fingeringOrientations = #'(left)
      <c-2 d-1>4. <c d>
      <b-3 d-1>4. <b d>
      c4(-2 b8 c4 a8)
      d4.(-1 b-3)
      <c-2 d-1>4. <c d>
      <b-3 d-1>4 <b d>8 <b d>4 r8
    }
    g4-5 g8 g([ a) b-.]
    c4.-2 c8([ d c)]
    b4.-3 b8([ c b)]
    a4.-4 a8([ b) c-.]
    d4-1 d8 d([ c a)]
    b4-3 b8 d([ b-3 g-5])
    a4-4 a8 d([ c-2 a-4])
    g4( d'8) a8([-4 b a)]
    g4( d'8) a8([ b a)]
    g4.(-5 b)-3
    g4.( b)
    g2. \fermata
    \bar "|."
  }
}

secondoDynamics =  {
  s2.\p s2. s2. s2. s2. s8\< s2 s8\! s2.\f s2.
  s2.\p s8\> s8 s8\! s4. s2. s2. s2. s8\> s8 s8\! s4. s2.\f s2.
  s2.\p s2. s2.\sf s2. s8\< s2 s8\! s2.\f s8\< s2 s8\! s4.\p s4._>
  s4. s4._> s4\pp s4._\markup\italic{rall.} s2. s2.
}

secondoUp =  {
  \time 6/8
  \clef bass
  \key g \major
  \relative c' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      b8-4( d-5 fis,-2 g-1 d' a-2)
      b-3( d b g-1 d' g,)
      a-2( d a g-1 d' g,)
      fis-2( d' a-3 fis-2 a-3 d)
      b(-4 d fis,-2 g-1 d' a-2)
      b(-3 d b g-1 d' g,)

      fis(-2 d' fis, g-1 cis-4 g)
      fis(-2 a-3 fis-2 <fis-2 a-3 d-5>4) r8
    }
    \repeat volta 2 {
      a8(-3 d gis,-2 a-3 d fis,-2)
      b-4( d b g-1 d' g,)
      r8 <fis-2 c'-4 d-5> <fis c' d> r8 <fis c' d> <fis c' d>
      r8 <g-1 b-4 d-5> <g b d> r8 <g b d> <g b d>

      a8(-3 d gis,-2 a-3 d fis,-2)
      b-4( d b g-1 d' g,)
      r8 <fis-2 c'-4 d-5> <fis c' d> r8 <fis c' d> <fis c' d>
      r8 <g-1 b-4 d-5> <g b d> r8 <g b d> <g b d>
    }
    g8-1( d'-4 f-5) g,( d' f)
    g,-1( c-3 e-5) g,( c e)
    gis,-2( d'-4 e-5) gis,( d' e)
    a,-1( c-3 e-5) a,( c e)

    a,-1( c-3 d-4) a( c d)
    g,-1( b-2 d-4) g,( b d)
    fis,-1( c'-3 d-4) fis,( c' d)
    <g,-1 b-2>( d' b) << { c8-3( d-4 c-3) } \\ { fis,4. } >>
    <g-1 b-2>8( d' b) << { c8-3( d c) } \\ { fis,4. } >>
    <g-1 b-2>8( d'-4 b g b d)
    b(-2 d-4 b g b d)
    <g, b d-4>2.  \fermata
    \bar "|."
  }
}

secondoDown =  {
  \time 6/8
  \clef bass
  \key g \major
  \relative c {
    \accidentalStyle "modern"
    \repeat volta 2 {
      g4 r8 r4 r8
      g,4. g'
      fis-4( g4)-3 b8
      d4.-1 d,4 r8
      g4 r8 r4 r8
      g,4. g'4.

      a4.-2 <a, a'>
      d4-3 <d d'>8 <d d'>4 r8
      d4. d'
      g,, g'
      <d d'>4 r8 <d d'>4 r8
      g4-2 r8 g4 r8
      d4. d'
      g,, g'
      <d d'>4 r8 <d d'>4 r8
      g4-2 <g, g'>8 <g g'>4 r8
    }
    g4 r8 g'4 r8
    c,4 r8 c'4 r8
    e,4 r8 e'4 r8
    a,,4 r8 a'4 r8

    fis,4 r8 <fis fis'>4 r8
    <g g'>4 r8 <b b'>4 r8
    <d d'>4 r8 d4 r8
    g4-2 r8 <d d'>4.
    g4-2 r8 <d d'>4.
    <g, g'>2.
    <g g'>2.
    <g g'>2. \fermata
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
  \header { piece = \markup{\smallCaps "Allegretto."} }
}


\score{
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Primo  "
    \context Staff = "up"   \primoUp
    \context Dynamics = "dynamics" \primoDynamics
    \context Staff = "down" \primoDown
  >>

  \layout { }
  \header { piece = \markup{\smallCaps "Allegretto."} }
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
