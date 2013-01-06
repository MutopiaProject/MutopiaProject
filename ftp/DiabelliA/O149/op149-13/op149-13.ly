\version "2.16.1"
% $Revision: 1.2 $

\header {
  title = "28 melodische Übungsstücke"
  subtitle = "13."
  composer = "Anton Diabelli"
  opus = "Op 149"

  mutopiatitle = "28 melodische Übungsstücke (No. 13)"
  mutopiacomposer = "DiabelliA"
  mutopiaopus = "Op. 149"
  mutopiainstrument = "Piano Duet"
  source = "Unknown"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Alberto Simões"
  maintainerEmail = "ambs@cpan.org"
  maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-419"
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
    \override StaffGrouper #'staff-staff-spacing #'basic-distance = #14
    % stretch measures slightly
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
  }
}

primoDynamics =  {
  s2\p s2 s2 s2 s2\p s2 s2\f s2    s2\mf s2 s2 s2
  s2-\markup\italic{cresc.} s2 s2\f s2 s2\p s2 s2 s2 s2\p s2 s2\f s2
  s2\p s2 s2\f s2 s2\p s2 s2\f s2 s2 s2 s2 s2
}

primoUp =  {
  \time 2/4
  \clef treble
  \key f \major
  \relative c''' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      a8([-3 bes-4 g-2 a]
      f4-1 a)
      g2-2->
      c-5->
      a8([-3 bes g a]
      f4 a)
      g8([-2 c-5 bes-4 g)]-2
      f4-1 r
    }
    \repeat volta 2 {
      g4(-2 a8 g)
      c4-5-. g-2-.
      b-4-. g-.
      c(-5 g)

      g4(-2 a8 g)
      c4-5-. g-.
      b8([-4 g-2 a b)]
      c4 r
      a8([-3 bes g a]
      f4-1 a)
      g2-2->
      c-5->
      c8([-5 bes-4 g-2 a]
      f4-1 a)
      g8([-2 c bes-4 g)]
      f4-1 r
    }
    g4(-2 a8 g)
    f4(-1 a)-3
    c(-5 bes8-4 g)-2
    c4( a8-3 f)-1
    g4(-2 a8 g)
    f4(-1 a)-3
    c8([-5 bes-4 g-2 a)]
    f([-1 a-3 c-5 a)]
    f([-1 a c a)]
    f4-1 r
    a-2 r
    f2-1\fermata\bar "|."
  }
}

primoDown =  {
  \time 2/4
  \clef treble
  \key f \major
  \relative c'' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      c4(-1 bes-2
      a-3 c)
      bes(-2 c
      bes g)-4
      c(-1 bes
      a c)
      <bes-2 c-1> <bes c>
      <a c> r
    }
    \repeat volta 2 {
      g4(-4 a8 g)
      c4-1-. g-.
      b-2-. g-.
      c(-1 g)

      g4(-4 a8 g)
      c4-1-. g-.
      b8([-2 g-4 a b)]
      c4 r
      c(-1 bes
      a-3 c)
      bes(-2 c
      bes g)
      c(-1 bes
      a c)
      <bes-2 c-1> <bes c>
      <a c> r
    }
    <bes-2 c-1>2
    <a-3 c-1>
    <bes c>4 <bes c>
    <a c> <a c>
    <bes c>2
    <a c>
    <bes c>4 <bes c>
    <a c> <a c>
    <a c> <a c>
    <a c> r
    <f-5 a-3 c-1> r
    <f a c>2 \fermata \bar "|."
  }
}

secondoDynamics =  {
  s2\p s2 s2 s2 s2\p s2 s2\f s2 s2\mf s2 s2 s2
  s2-\markup\italic{cresc.} s2 s2\f s2 s2\p s2 s2 s2 s2\p s2 s2\f s2
  s2\p s2 s2\f s2 s2\p s2 s2\f s2 s2 s2 s2 s2
}

secondoUp =  {
  \time 2/4
  \clef bass
  \key f \major
  \relative c' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      c4(-2 e-4
      f-5 c)-2
      e(-4 c-2
      g c)
      c(-2 e-4
      f-5 c)-2
      <bes-1 c-2 e-4> <bes c e>
      <a-1 c-2 f-5> r
    }
    \repeat volta 2 {
      <c-2 e-4>8([ g-1 <c e> g)]
      <c e>8([ g <c e> g)]
      <d'-3 f-5>([ g,-1 <d' f> g,)]
      <c-2 e-4>8([ g-1 <c e> g)]

      <c e>([ g <c e> g)]
      <c e>([ g <c e> g)]
      <d'-3 f-5>([ g, <d' f> g,)]
      <g c-2 e-4>[-. c(-3 b-2 c])-3
       c4(-2 e-4
       f c)
       e(-4 c-2
       g c)
       c(-2 e-4
       f c)
       <bes c e-4> <bes c e>
       <a-1 c-2 f-5> r
     }
      e'8([-5 c-3 bes-2 c)]
      a([-1 c-3 f c)]
      \set fingeringOrientations = #'(left)
      <g-1 bes-2 c-3 e-5> r <g bes c e> r
      <a-1 c-3 f-5> r <a c f> r
      \set fingeringOrientations = #'(top)
      e'([-5 c-3 bes c)]
      a([-1 c-3 f c)]
      \set fingeringOrientations = #'(left)
      <g-1 bes-2 c-3 e-5> r <g bes c e> r
      \set fingeringOrientations = #'(top)
      f'([-5 c-2 a-1 c)]
      f([ c a c)]
      f4 r
      \set fingeringOrientations = #'(left)
      <f, a c-4> r
      <f a c>2 \fermata \bar "|."
    }
    \pageBreak
  }

  secondoDown =  {
    \time 2/4
    \clef bass
    \key f \major
    \relative c, {
      \accidentalStyle "modern"
      \repeat volta 2 {
	<f c' f>2 ~
	<f c' f>
	<f c' f>2 ~
	<f c' f>
	<f c' f>2 ~
	<f c' f>
	<c c'>4 <c c'>
	<f f'> r
      }
      \repeat volta 2 {
	<c g' c>4 r
	<c g' c> r
	<c g' c> r
	<c g' c> r

	<c g' c> r
	<c g' c> r
	<g g'> <g g'>
	<c c'> r
	<f c' f>2 ~
	<f c' f>
	<f c' f>2 ~
	<f c' f>
	<f c' f>2 ~
	<f c' f>
	<c c'>4 <c c'>
	<f f'> r
      }
      <c c'> r
      <f f'> r
      c8 r c' r
      f, r f' r
      <c, c'>4 r
      <f f'> r
      <c c'>8 r <c c'> r
      <f c' f> r <f c' f> r
      <f c' f> r <f c' f> r
      <f c' f>4 r
      <f, f'>4 r
      <f f'>2\fermata \bar "|."
    }
  }

  \score{
    \context PianoStaff  <<
      \set PianoStaff.instrumentName = "Secondo"
      \context Staff = "up"   \secondoUp
      \context Dynamics = "dynamics" \secondoDynamics
      \context Staff = "down" \secondoDown
    >>
    \layout { }
    \header { piece = "Allegro." }
  }

  \score{
    \context PianoStaff <<
      \set PianoStaff.instrumentName = "Primo"
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
