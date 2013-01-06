\version "2.16.1"
% $Revision: 1.2 $

\header {
  title = "28 melodische Übungsstücke"
  subtitle = "5."
  composer = "Anton Diabelli"
  opus = "Op 149"

  mutopiatitle = "28 melodische Übungsstücke (No. 5)"
  mutopiacomposer = "DiabelliA"
  mutopiaopus = "Op. 149"
  mutopiainstrument = "Piano Duet"
  source = "Unknown"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Alberto Simões"
  maintainerEmail = "ambs@cpan.org"
  maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-405"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

primoDynamics =  {
  s2.\p s2. s2. s2. s2.\f s2. s2. s2.
  s2.\p s2. s2. s8\< s2 s8\! s2.\f s2. s2. s2. s4. s4.\p s2. s2.
  s2. s4. s8\< s8 s8\! s2.\mf s2. s2. s4.\f s8\> s8 s8\! s4. s8\> s8 s8\! s2. s2. s2.
}

primoUp =  {
  \time 6/8
  \clef treble
  \relative c''' {
    \override Score.OttavaBracket   #'padding = #2
    \ottava #1
    \repeat volta 2 {
      e4.-3( g8-5[) f e]
      d4.-2( f8[) e d]
      c4-1 c8 c[( d e)]
      e4.-3( d)
      e-3( g8-5[) f e]
      d4.-2( f8[) e d]
      c4-1( e8) d4-2( g8-5)
      c,4-1 r8 r4 r8
    }
    \repeat volta 2 {
      d4.-2( e8[) d c]
      d4.-2( g4.)
      d4-2( f8) [e d c]
      d2.---2
      e4.-3( g8[) f e]
      d4.-2( f8[) e d]
      c4-1( e8) d4-2( g8)
    }
    \alternative {
      {c,4.-1( c4) r8}
      {c4-1 r8 c([ d e)]}
    }
    f4-4( c8-1) f4( c8)
    e4.---3 c8-1([ d e)]

    d4-2 d8 d([ e d)]
    c4.---1 c8([ d e)]
    f4-4( c8) f4( c8)
    e4.---3 c8-1([ d e)]
    d4-2 d8 d([ e d)]
    c4-1( e8-3) g-.-5[ d-.-2 e-.-3]
    c4( e8) g-.[ d-. e-.]
    c4-1 r8 e4^^-3 r8
    c4^^ r8 e4^^   r8
    c2.\fermata
    \bar "|."
  }
}

primoDown =  {
  \time 6/8
  \clef treble
  \relative c'' {
    \repeat volta 2 {
      e4.-3( g8-1[) f e]
      d4.-4( f8[) e d]
      c4-5 c8 c[( d e)]
      e4.-3( d)
      e-3( g8-1[) f e]
      d4.-4( f8-2[) e d]
      c4-5( e8-3) d4-4( g8)
      c,4-5 r8 r4 r8
    }
    \repeat volta 2 {
      d4.-4( e8[) d c]
      d4.-4( g4.)
      d4-4( f8) [e d c]
      d2.---4
      e4.-3( g8[) f e]
      d4.-( f8[) e d]
      c4-5( e8) d4-4( g8)
    }
    \alternative {
      {c,4.-5( c4) r8}
      {c4-5 r8 c([ d e)]}
    }
    f4-2( c8-5) f4( c8)
    e4.---3 c8-5([ d e)]

    d4-4 d8 d([ e d)]
    c4.---5 c8([ d e)]
    f4-2( c8-5) f4( c8)
    e4.---3 c8-5([ d e)]
    d4-4 d8 d([ e d)]
    c4-5( e8-3) g-.-1[ d-.-4 e-.-3]
    c4( e8) g-.[ d-. e-.]
    c4-5 r8 e4^^-3 r8
    c4^^ r8 e4^^   r8
    c2.\fermata
    \bar "|."
  }
}

secondoDynamics =  {
  s2.\p s2. s2. s2. s2.\f s2. s2. s2.
  s2.\p s2. s2. s8\< s2 s8\! s2.\f s2. s2. s2. s4. s4.\p
  s2. s2. s2. s4. s8\< s8 s8\! s2.\mf s2. s2. s4.\f s8\> s8 s8\! s4. s8\> s8 s8\! s2. s2. s2.
}

secondoUp =  {
  \time 6/8
  \clef bass
  \relative c' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      \clef treble
      c8-1( e-3 g-5) c,( e g)
      b,-1( f'-4 g-5)	b,( f' g)
      c,-1( e-3 g) c,( e g)
      c,( e g) b,-1( d-2 g)
      c,-1( e-3 g) bes,-1( e-3 g-5)
      f-4( d-2 a-1) aes-2( d-4 f-5)
      e-4( g, g'-5) << {f8-4( g f)}\\{b,4.-1} >>

      <c-2 e-3>8( g' e c4) r8
    }
    \repeat volta 2 {
      b8-1( d-2 g-5) c,-1( e-3 g-5)
      b,( d g) b,( d g)
      d( d g) c,( e g)
      b,( d g) f-4( b, g')
      c,-1( e-3 g) bes,-1( e-3 g)
      f-4( d-2 a) aes-2( d-4 f)
      e-4( g, g') << {f8-4( g f)}\\{b,4.-1} >>
    }
    \alternative {
      { <c-2 e-3>4. ~ <c e>4 r8 }
      { <c-2 e-3>8 <c e> <c e> <c-1 e-3 g-5> <c e g> <c e g> }
    }
    <c-1 f-4> <c f> <c f> <c f> <c f> <c f>
    <c-1 e-3> <c e> <c e> <c e> <c e> <c e>
    <a-2 c-4 d-5> <a c d> <a c d> <g-1 b-3 d-5> <g b d> <g b d>
    g-1( c-3 e-5) <c g'-2 bes-4> <c g' bes> <c g' bes>
    <c f-3 a-5> <c f a> <c f a> <c f-2 aes> <c f aes> <c f aes>
    <c-1 e-3 g-5> <c e g> <c e g> <c e g> <c e g> <c e g>
    <a c-2 fis-4> <a c fis> <a c fis> <g b f'> <g b f'> <g b f'>
    <g c-3 e-5>( c g)  <g b-2 f'-5> <g b f'> <g b f'>
    <g c e>( c g)  <g b f'> <g b f'> <g b f'>
    <g c-3 e-5>4 r8 <g e'-4 g-5>4 r8
    <g c-3 e-5>4 r8 <g e'-4 g-5>4 r8
    <g c-3 e-5>2.\fermata
    \bar "|."
  }
}

secondoDown =  {
  \time 6/8
  \clef bass
  \relative c {
    \accidentalStyle "modern"
    \repeat volta 2 {
      c4-3 r8 e4-2 r8
      g4-1 r8 g,4 r8
      c4-1 r8 c,4 r8
      g4-2 r8 g'4 r8
      <c, c'>4 r8 <cis cis'>4 r8
      <d d'>4 r8 <b b'>4 r8
      <c c'>4 r8 <g g'>4 r8
      <c c'>4. ~ <c c'>4 r8
    }
    \repeat volta 2 {
      g'4 r8 g'4 r8
      g,4 r8 r4 r8
      g4 r8 g'4 r8
      g,2.
      <c, c'>4 r8 <cis cis'>4 r8
      <d d'>4 r8 <b b'>4 r8
      <c c'>4 r8 <g g'>4 r8
    }
    \alternative {
      {<c c'>8( e g c4) r8}
      {<c, c'>4 r8 << {bes''4.-2( } \\ {c,4.(}>>}
    }
    <<{a'4.-4 aes4.-2)}\\{c,2.)} >>
    <<{g'2.-1( fis4.-2 f4.-1)} \\ {c2. c2.}>>
    <c-5 e-3>4 r8 <c, c'>4 r8
    <c c'>4 r8 <c c'>4 r8
    <c c'>4 r8 <c c'>4 r8
    <c c'>4 r8 <c c'>4 r8
    <c c'>4 r8 <g g'>8 <g g'> <g g'>
    <c c'>4 r8 <g g'>8 <g g'> <g g'>
    <c c'>8( g'-2 e-4 c-5 e g)
    c( g-2 e-4 c-5 e g)
    c2.\fermata
    \bar "|."
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
  \header { piece = "Allegretto." }
}


\score{
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Primo     "
    \context Staff = "up"   \primoUp
    \context Dynamics = "dynamics" \primoDynamics
    \context Staff = "down" \primoDown
  >>
  \layout { }
  \header { piece = "Allegretto." }
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
