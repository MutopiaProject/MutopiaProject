\version "2.16.1"
% $Revision: 1.1 $

\header {
  title = "28 melodische Übungsstücke"
  subtitle = "12."
  composer = "Anton Diabelli"
  opus = "Op 149"

  mutopiatitle = "28 melodische Übungsstücke (No. 12)"
  mutopiacomposer = "DiabelliA"
  mutopiaopus = "Op. 149"
  mutopiainstrument = "Piano Duet"
  source = "Unknown"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Alberto Simões"
  maintainerEmail = "ambs@cpan.org"
  maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-418"
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
  }
}

primoDynamics =  {
  s2.\p s4 s2\f s2.\p s2. s2. s2.
  s2 s16\< s8 s16\! s4\> s4\! s4 s2.\p s2. s2. s2. s2.
  s2. s2.\f s2. s2.\ff s2. s2 s4\pp s2.
}

primoUp =  {
  \time 3/4
  \clef treble
  \key f \major
  \relative c'' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      f4(-1 a-3 g)-2
      g8( f) f4 r
      g(-2 bes-4 a)
      a8( g) g4 r
      a8.(-3 bes16 c4 f,)-3
      bes8(-4 a) g4 r

      a8.([ bes32 a)] g8([ c)] c16([ b a b)]
      b4( c) r
    }
    \repeat volta 2 {
      a4(-3 bes a)
      a8( g f4) r
      f(-1 g f)
      f8( bes)-4 bes4 r
      bes8.(-4 a16 g4 c)

      a16(-3 bes g a) f4 r
      c'8-5-. b-. c-. bes-. a-. g-.
      g4( f) r
    }
    bes8.-4 bes16 a4 r
    g8.-2 g16 f4 r
    g8-2-. r bes-4-. r a(-3 g)
    g4( f) r \fermata \bar "|."
  }
}

primoDown =  {
  \time 3/4
  \clef treble
  \key f \major
  \relative c'' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      a8(-3 c-1 a c bes-2 c)-1
      bes( a) a(-3 c-1 a-3 f)-5
      g(-4 c bes-2 c a-3 c)
      a(-3 g) g(-4 c bes g)
      a(-3 c a c a c)
      g(-4 c bes-2 c bes c)

      a4-3 g8([-4 c)] c16(-1 b a b)
      b4(-2 c) r
    }
    \repeat volta 2 {
      a4(-3 bes a)
      a8(-3 g f4) r
      f(-5 g f)
      f8(-5 bes)-2 bes4 r
      bes8.(-2 a16 g4 c)-1

      <a-3 c-1>2 r4
      c8-1-. b-. c-. bes-. a-. g-4-.
      g4(-4 f) r
    }
    bes8.-2 bes16 a4 r
    g8.-4 g16 f4 r
    g8-4-. r bes-2-. r a(-3 g)
    g4(-4 f)-5 r \fermata \bar "|."
  }
}

secondoDynamics =  {
  s2.\p s4 s2\f s2.\p s2. s2. s2. s4 s8\< s4 s8\!
  s8\> s8 s8\! s4. s2.\p s2. s2. s2. s2. s4. s4.\f
  s2. s2. s2.\ff s2. s2 s4\pp s2.
}

secondoUp =  {
  \time 3/4
  \clef bass
  \key f \major
  \relative c' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      f8(-5 c-2 f c e-4 c)
      <c-2 e-4>( f)-5 f(-5 c-3 a-2 f)
      e'(-5 c-3 g-1 c-5 f,-2 c'-5)
      << { c4-5 } \\ { f,8[(-2 e])-1 } >> <e c'>8 e([-2 g-1 c)]-2
      f8(-4 c-2 f c f c)
      e(-4 c-2 e c e c)
      c(-2 d <c e-4>4 <d f-5>)

      << { <d f-5>4( <c e-4>8) } \\ { g4.} >> c8([-2 <b-1 d-3> <bes-2 e-4>)]
    }
    \repeat volta 2 {
      \set fingeringOrientations = #'(left)
      <a-1 e'-5>8( g-2 e-1 g-2 e g)
      f(-1 a-2 d-5 a-2 <f d'> a)
      <a-2 ees'-5>( f <a ees'> f <a ees'> f)
      <bes-3 d-5>( f <bes d> f <bes d> f)
      e'(-5 c-3 bes c <bes-2 e-5> c)
      <a-1 f'-5>( c-3 <a f'> c-3 a-2 f)

      <e g bes-4 c-5>8 r <e g bes c> r <e bes' c>4
      << { c'4.-5 } \\ { <e,-1 bes'-3>4( <f-1 a-3>8) } >> a8([-2 c-3 f-5)]
    }
    \clef treble
    <c g'-4>8.[ <c g'>16] <c f-3>8[ c16-2-. c-2-.] b(-2 c-3 d-4 c)-3
    \clef bass
    <g-1 bes-2 e-5>8.[ bes16] a8[ a16-2-. a-1-.] gis(-2 a-3 bes-4 a)-3
    d8-5-. r <bes d>-. r <e,-1 bes'-3 c-4>4
    << {c'2} \\ {<e, bes'>4( <f-1 a-2>) } >> r4 \fermata \bar "|."
  }
  \pageBreak
}

secondoDown =  {
  \time 3/4
  \clef bass
  \key f \major
  \relative c, {
    \accidentalStyle "modern"
    \repeat volta 2 {
      <f f'>4 r c'-2
      f,2-5 r4
      c4-2 e-3 f-2
      c c' r
      f,-3 a-2 c-1
      c, c' c,
      f8-2 d-4 g(-1 fis g g,)

      c([ c' c,)] << {e'([-2 f-1 g)]-2} \\ {c,4.-4} >>
    }
    \repeat volta 2 {
      <cis, cis'>4 r <cis cis'>
      <d d'> d8(-5 f-4 a-2 d)
      <c, c'>4 r <c c'>
      <bes bes'> bes8(-5 d-3 f-2 bes)-1
      <c, c'>4 r <c c'>
      f-3 r8 c'8([-1 a-2 f]-3

      c)-. r <c c'> r <c c'>4
      f,8[ f' f,] r r4
    }
    <e' e'>8. <e e'>16 <f f'>4 r
    <cis cis'>8. <cis cis'>16 <d d'>4 r
    <bes bes'>8-. r <g g'> r <c c'>4
    <f, f'>2 r4 \fermata \bar "|."
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
  \header { piece = "Andante." }
}


\score{
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Primo"
    \context Staff = "up"   \primoUp
    \context Dynamics = "dynamics" \primoDynamics
    \context Staff = "down" \primoDown
  >>

  \layout { }
  \header { piece = "Andante." }
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
