\version "2.16.1"
% $Revision: 1.3 $

\header {
  title = "28 melodische Übungsstücke"
  subtitle = "10."
  composer = "Anton Diabelli"
  opus = "Op 149"

  mutopiatitle = "28 melodische Übungsstücke (No. 10)"
  mutopiacomposer = "DiabelliA"
  mutopiaopus = "Op. 149"
  mutopiainstrument = "Piano Duet"
  source = "Unknown"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Alberto Simões"
  maintainerEmail = "ambs@cpan.org"
  maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-416"
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
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
  }
}

primoDynamics =  {
  s1\f s1 s1 s1 s1 s1
  s1 s1 s1 s1 s1 s1
  s1\p-\markup\italic{dolce} s1 s1 s1 s1 s1 s1
  s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
  s1 s1 s1 s1 s1 s1 s1 s1-\markup\italic{cresc.}
  s1 s2 s2\sf s2 s2\sf s1\f s1 s1 s1
}

primoUp =  {
  \time 2/2
  \clef treble
  \key g \major
  \relative c''' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      b2-3^^ d-5^^
      g,2.(-1^^ a8 b
      c4-4) c8( b a4) d
      d2(-5 b)-3
      a4-2( b8 a g4) d'-.
      a4-2( b8 a g4) d'-.

      c8(-4 b a c b-3 a g b)
      a4-2-. d4.(-5 cis8 b cis)
      d8(-5 a-2 b cis d a b cis
      d a b cis d a b cis
      d2) d4. d8 d1
    }
    \repeat volta 2 {
      a2(-2 b4 a
      d-5 c b a)
      g2-1 c8(-4 b a b)
      g2 c8( b a b)
      a2(-2 b4 a
      d c b a)
      g2-1 c8(-4 b a b)

      g1-1
      b2(-3 c4. b8)
      b2.( a4)
      g2.( a4)
      b2 r
      g2(-1 \acciaccatura{b8-3} a4.-2 g8)
      g2 g
      g2.( c4-4)
      c1
      b2(-3 c4 b

      a2.) a4
      b2(-3 c4 b
      a2.) a4
      a2.(-2 b4)
      c(-4 d)-5 d-. d-.
      b8(-3 c d c b c a-2 b)
      g4-1-. a-. b-. g-.
      a2.(-2 b4)

      c4(-4 d)-5 d-. d-.
      g,-1-. b-3-. d2-5
      g,4-. b-. d2
      g,8(-1 d' a-2 d g, d' a d
      g, d' a d g, d' a d)
      g,2-1 g4. g8
      g1
    }
  }
}

primoDown =  {
  \time 2/2
  \clef treble
  \key g \major
  \relative c'' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      s1
      b2-3^^ d^^
      c4-2 c8( b a4) d4
      d2(-1 b-3)
      \set fingeringOrientations = #'(left)
      <c-2 d-1>4 <c d> <b-3 d-1> <b d>
      <c d> <c d> <b d> <b d>
      <a-4 d>2 <g-5 d>
      <a-4 d>4-. d4.(-1^^ cis8 b cis)
      d(-1 a-4 b cis d a b cis
      d a b cis d a b cis
      d2) d4. d8 d1
    }
    \repeat volta 2 {
      c4(-2 d-1 c d)
      c( d c d)
      b(-3 d-1 b d)
      b( d b d)
      c(-2 d-1 c d)
      c( d c d)
      b(-3 d-1 b d)

      b(-3 d b-3 g)-5
      b2(-3 c4. b8)
      b2.( a4)
      g2.( a4)
      b2 r
      g2(-1 \acciaccatura{b8-3} a4.-2 g8)
      g2 g
      g2.( c4-2)
      c1
      b2(-3 c4 b

      a2.) a4
      b2(-3 c4 b
      a2.) a4
      <a-4 c-2>( d <a c> d)
      <a c>( d <a c> d)
      <g,-5 b>( d' <g, b> d')
      <g, b>( d' <g, b> d')
      <a-4 c-2>( d <a c> d)

      <a c>( d <a c> d)
      g,-5-. b-3-. d2-1
      g,4-. b-. d2
      <b-3 d-1>4 <c-2 d-1> <b d> <c d>
      <b d> <c d> <b d> <c d>
      <b d>2 <b d>4. <b d>8
      <b d>1
    }
  }
}

secondoDynamics =  {
  s1\f s1 s1 s1 s1 s1
  s1 s1 s1 s1 s1 s1
  s1\p-\markup\italic{dolce} s1 s1 s1 s1 s1 s1 s1 s1
  s1 s1 s1 s1 s1 s1 s1 s1 s1
  s1 s1 s1 s1 s1 s1 s1-\markup\italic{cresc.} s1
  s2 s2\sf s2 s2\sf s1\f s1 s1 s1
}

secondoUp =  {
  \time 2/2
  \clef treble
  \key g \major
  \relative c' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      g2-1^^ b-2^^
      \set fingeringOrientations = #'(left)
      d-3^^ <g, d'-3 f-5>
      <g c e-4>4 <g c e> <a c d-3 fis-5> <a c d fis>
      <b d-2 g-5> <b d g> <b d g> <b d g>
      c8(-1 d-2 fis-4 d) b(-1 d-2 g-5 d)
      c8(-1 d fis-4 d) b(-1 d g-5 d)
      a(-1 d-4 c d) g,( d'-4 b d)
      a( fis'-4 d fis) a,( g'-5 e g)
      <a, d fis-4>8 r <a e' g-5> r <a d fis> r <a e' g> r
      <a d fis> r <a e' g> r <a d fis> r <a e' g> r
      <a d fis>2 <a d fis>4. <a d fis>8
      <a d fis>1
    }
    \repeat volta 2 {
      <fis'-3 a-5>4( d-1 <fis a> d)
      <fis a>( d <fis a> d)
      g(-4 d-1 g d)
      g( d g d)
      <fis-3 a-5>( d <fis a> d)
      <fis a>( d <fis a> d)
      g(-4 d-1 g d)
      g(-5 b,-2 d-3 b)-2
      a(-1 b fis'-5 b,)

      a(-1 b-2 dis-4 b)
      g(-1 b-2 e-5 b)
      g( b e b)
      g(-1 b-2 f'-5 b,)
      g( b f' b,)
      g(-1 c-3 e-5 c)
      g( c e c)
      gis(-1 d'-4 e-5 d)
      c(-3 e a,-1 e')

      gis,(-1 d'-4 e d)
      c(-3 e a,-1 e')
      \clef bass
      r <fis,-2 c'-4 d-5> r <fis c' d>
      r <fis c' d>  r <fis c' d>
      r <g-1 b-3 d-5> r <g b d>
      r <g b d> r <g b d>
      r <fis-2 c' d>  r <fis c' d>
      r <fis c' d>  r <fis c' d>

      b8(-3 d g,-1 d' fis,-2 c'-4 d c)
      b(-3 d g,-1 d' fis,-2 c'-4 d c)
      <g-1 b-3 d-5> r \clef treble <c d fis-4> r <b d g-5> r <c d fis> r
      <b d g> r <c d fis> r <b d g> r <c d fis> r
      <b-1 d-2 g-5>2 <b d g>4. <b d g>8
      <b d g>1
    }
  }
  \pageBreak
}

secondoDown =  {
  \time 2/2
  \clef bass
  \key g \major
  \relative c {
    \accidentalStyle "modern"
    \repeat volta 2 {
      s1
      <g, g'>
      <g g'>
      <g g'>
      r4 d'4-5 g-2 r4
      r4 d4 g r4

      fis4-3 r4 g-2 r
      d-5 fis-3 a2-1
      \set fingeringOrientations = #'(left)
      <d,-3 a'-1>8 r <a-5 a'-1> r <d a'>8 r <a a'> r
      <d-3 a'-1>8 r <a-5 a'-1> r <d a'>8 r <a a'> r
      d8(-5 d'-1 cis-2 d-1 a-2 d-1 fis,-4 a-2)
      d,1-5
    }
    \repeat volta 2 {
      <d d'>2 r
      <d d'> r
      <g d'-2 g> r
      <g d' g> r
      <d d'> r
      <d d'> r
      <g d' g> r
      <g d' g> r
      <dis dis'> r

      <b b'> r
      <e e'> r
      <e e'> r
      d'4-2 r g,-5 r
      d' r g, r
      c-1 r g-2 r
      e-4 r c r
      e r e' r
      a,-3 r c-2 r
      e r e, r
      a-3 r c-2 r
      d r d, r
      d' r d, r
      g-3 r d'-1 r
      b-2 r g-3 r
      d' r d, r
      d' r d, r

      g-3 r <d d'>2
      <g-3 d'>4 r <d d'>2
      <g d'>8 r <d d'> r <g d'> r <d d'> r
      <g d'> r <d d'> r <g d'> r <d d'> r
      g8( g'-1 fis-2 g d-2 g b,-4 d-2)
      g,1
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
  \header { piece = "Allegro." }
}


\score{
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Primo     "
    \context Staff = "up"   \primoUp
    \context Dynamics = "dynamics" \primoDynamics
    \context Staff = "down" \primoDown
  >>
  \layout { }
  \header { piece = "Allegro." }
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
