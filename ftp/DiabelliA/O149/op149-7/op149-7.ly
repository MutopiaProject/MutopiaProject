\version "2.16.1"
% $Revision: 1.2 $

\header {
  title = "28 melodische Übungsstücke"
  subtitle = "7."
  composer = "Anton Diabelli"
  opus = "Op 149"

  mutopiatitle = "28 melodische Übungsstücke (No. 7)"
  mutopiacomposer = "DiabelliA"
  mutopiaopus = "Op. 149"
  mutopiainstrument = "Piano Duet"
  source = "Unknown"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Alberto Simões"
  maintainerEmail = "ambs@cpan.org"
  maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-409"
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


primoMarciaDynamics =  {
  s1\f s1 s1 s1 s16\p s16_\markup\bold\italic{dolce} s8 s2.
  s1 s1\f s1
  s16\p s16_\markup\bold\italic{dolce} s8 s2.
  s1 s1 s1 s1 s1 s2 s8\< s4 s8\! s1\f
  s1\ff s1 s1 s2 s2_\markup{fine}
}

primoMarciaUp =  {
  \time 4/4
  \clef treble
  \relative c''' {
    \override Score.OttavaBracket   #'padding = #2
    \set tupletSpannerDuration = #(ly:make-moment 1 4)

    \ottava #1
    \repeat volta 2 {
      e4-3 f16( e d e) g4-5( c,)
      d8.-2[ e16 d8. e16] c8.-1 e16-3 g4-5
      d8.-2^^ e16 c4d8.^^ e16 c4
      f8.-4[ g16 e8.-3 g16] d4-2 r

      \times 2/3 { d8-2( fis e) d( e fis) g-5( fis e) } d r
      \times 2/3 { d8-2( fis e) d( e fis) g-5( fis e) } d r
      e4-3 e8. e16 d4 fis-4
      g-5 g8. g16 g4 r
    }
    \repeat volta 2 {
      d4-2 g8.-5 f16 e8.[ f16 d8. e16]
      c16-1( d e d c-1 d e f) g4-5 r
      d4-2 g8.-5 f16 e8.[ f16 d8. e16]
      c16-1( d e d c-1 d e f) g4-5 r

      f8-4 r d-2 r g2->
      e8-3 r c-1 r g'2->
      f8-4 r d r e-3 r c r
      d8.-2 g16-5 g8. g16 g4 r

      \times 2/3 { e8-3( g f) e( d c) d-2( f g) d( f g)
		   e-3( g f) e( d c) d-2( f g) d( f g)
		   c,-1( e-3 g-5) d-2( f-4 g-5) c,-1( e g) d-2( f g) }
      c,4-1 c8. c16 c4 r
    }
  }
}

primoMarciaDown =  {
  \time 4/4
  \clef treble
  \relative c'' {
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \set fingeringOrientations = #'(left)
    \repeat volta 2 {
      <e-3 g-1>2 <e g>
      <f-2 g-1>4 <f g> <e-3 g-1> <e g>
      <f g> <e g> <f g> <e g>
      f8-2 r e-3 r d4-4 r

      <d-4 fis-2> <d fis> <d-4 g-1> <d g>
      <d fis> <d fis> <d g> <d g>
      e-3 e8. e16 d4 fis-2
      g-1 g8. g16 g4 r
    }
    \repeat volta 2 {
      <f-2 g-1>4 <f g> <f g> <f g>
      <e-3 g-1> <e g> <e g> <e g>
      <f-2 g-1>4 <f g> <f g> <f g>
      <e-3 g-1> <e g> <e g> <e g>
      \times 2/3 {
	d8-4( f-2 g-1) d( f g) d( f g) d( f g)
	c,-5( e-3 g-1) c,( e g) c,( e g) c,( e g)
	d8-4( f-2 g-1) d( f g) c,-5( e-3 g-1) c,( e g)
      }
      d8.-4 g16 g8. g16 g4 r

      <c,-5 e-3 g-1> <c e g> <d-4 f-2 g-1>2->
      <c-5 e-3 g-1>4 <c e g> <d-4 f-2 g-1>2->
      <c e g>4 <d f g> <c e g> <d f g>
      <c-5 e-3 g-1> <c e g>8. <c e g>16 <c e g>4 r4
    }
  }
}

secondoMarciaDynamics =  {
  s1\f s1 s1 s1
  s1\p s1 s1\f s1
  s1\p s1s1 s1
  s1 s1 s2 s8\< s4 s8\! s1\f
  s1\ff s1 s1 s2 s2_\markup{fine}
}

secondoMarciaUp =  {
  \time 4/4
  \clef bass
  \relative c' {
    \set fingeringOrientations = #'(left)
    \accidentalStyle "modern"
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \repeat volta 2 {
      <g c-3 e-5>4 <g c e>8. <g c e>16 <g c e>4 <g c e>
      <g b-2 f'-5> <g b f'> <g c e> <g c e>
      <g b f'>^^ <g c e> <g b f'>^^ <g c e>
      \clef treble
      <g g'>8 <g g'>16 <g g'> <g g'>8 <g g'> <g g'> d'-.-3 b-.-2 g-1-.
      \clef bass
      <c-4 d-5> <c d> <c d> <c d> <b-3 d-5> <b d> <b d> <b d>
      <c d> <c d> <c d> <c d> <b d> <b d> <b d> <b d>
      \times 2/3 { c-4( b c a-2 b c) b-3( d b a-2 d c)}
      b4 \clef treble	<b-1 d-2 g-5>8. <b d g>16 <b d g>4 r
    }
    \repeat volta 2 {
      \clef treble
      <b-2 f'-5>8( g-1 <b d f> g)  <b d f>( g <b d f> g)
      <c-3 e-5>( g <c e> g)        <c e>( g <c e> g)
      <b-2 d-4 f-5>( g <b d f> g)  <b d f>( g <b d f> g)
      <c-3 e-5>( g <c e> g)        <c e>( g <c e> g)

      \times 2/3 {
	f'-5( d-3 g,) f'( d g,)  f'( d g,)  f'( d g,)
	e'-4( c-2 g) e'( c g) e'( c g) e'( c g)
	f'-5( d-3 g,) f'( d g,) e'-4( c-2 g) e'( c g)
      }
      <b-2 d-3 g-5>8.[ g'16 g8. g16] g8.[ f16 e8. d16]
      c4 <g c e-4 g-5>8. <g c e g>16 <g d' f-4 g-5>2->
      <g c e g>4 <g c e g>8. <g c e g>16 <g d' f g>2->
      <g c e g>8 r <g d' f g> r <g c e g>8 r <g d' f g> r
      <g c e g>4 <g c e g>8. <g c e g>16 <g c e g>4 r
    }
  }
}

secondoMarciaDown =  {
  \time 4/4
  \clef bass
  \relative c, {
    \accidentalStyle "modern"
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \repeat volta 2 {
      <c c'>4 <c c'>8. <c c'>16 <c c'>4 <c c'>
      <g g'> <g g'> <c c'> <c c'>
      <g g'> <c c'> <g g'> <c c'>
      <b b'>8 r <c c'> r <g g'> r r4

      <d' d'> r g8-3 r b-2 r
      <d, d'>4 r g8-3 r b-2 r
      \times 2/3 { c-1( b c a-4 b c) } d4 d,
      g-3 <g d' g>8. <g d' g>16 <g d' g>4 r
    }
    \repeat volta 2 {
      g4-1 r g, r
      c-3 r c-3^^ e-2^^
      g r g, r
      c-3 r c-3^^ e-2^^
      g r <g, g'> <g g'>8. <g g'>16
      <g g'>4 r <g g'> <g g'>8. <g g'>16
      <g g'>8 r <b b'> r <c c'> r <e e'> r
      <g g'>8.[ <g g'>16 <g g'>8. <g g'>16] <g g'>8.[ <f f'>16 <e e'>8. <d d'>16]
      <c c'>4 c'8.-3 c16-2 c8-1( b a b)
      c4-1 c8.-3 c16-2 c8-1( b a b)
      c-1-. g-4-. b-2-. g-4-.  c-. g-. b-. g-.
      c4-1 <c, c'>8. <c c'>16 <c c'>4 r
    }
  }
}

\score{
  \context PianoStaff  <<
    \set PianoStaff.instrumentName = "Secondo   "
    \context Staff = "up"   \secondoMarciaUp
    \context Dynamics = "dynamics" \secondoMarciaDynamics
    \context Staff = "down" \secondoMarciaDown
  >>
  \layout { }
  \header { piece = "Marcia." }
}


\score{
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Primo     "
    \context Staff = "up"   \primoMarciaUp
    \context Dynamics = "dynamics" \primoMarciaDynamics
    \context Staff = "down" \primoMarciaDown
  >>
  \layout { }
  \header { piece = "Marcia." }
}


\score{
  \context PianoStaff  <<
    \context Staff = "up"   <<
      \applyMusic #unfold-repeats \primoMarciaUp
      \applyMusic #unfold-repeats \secondoMarciaUp
    >>
    \context Staff = "down" <<
      \applyMusic #unfold-repeats \primoMarciaDown
      \applyMusic #unfold-repeats \secondoMarciaDown
    >>
  >>
  \midi {
    \tempo 4 = 120
  }
}


%%%% TRIO %%%%

primoTrioDynamics =  {
  s1\p s1 s1 s4 s8\< s2 s8\! s1\f
  s1 s1 s1
  s16\p s16_\markup\bold\italic{dolce} s8 s2.
  s1 s1 \crescTextCresc s1\< s1 s4 \crescHairpin s8\< s2 s8\! s1\f s1_\markup{Da Capo al fine}
}

primoTrioUp =  {
  \time 4/4
  \clef treble
  \key ees \major
  \relative c''' {
    \override Score.OttavaBracket   #'padding = #2
    \ottava #1
    \repeat volta 2 {
      c8-1 r ees-3 r g-5 r f-.-4 ees-.-3
      d-2 r f r g r f-.-4 d-.
      ees-3 r d r c r d-. ees-.
      d-2 r g8. g16 g4 g4
      c,8-1 r ees8.-3 ees16 g4-5-> f8-. ees-.

      d r f8. f16 g4-> f8-.-4 d-.
      ees4-3 c8. c16 d4-2 g
      c,-1 c8. c16 c4 r
    }
    \repeat volta 2 {
      ees4-3 ees8. ees16 ees8.( f32 ees) d8-. ees-.
      f4.-4->( g8) f4 r8 ees-3
      d-2-. ees-. f-. ees-. d-. ees-. f-. d-.
      ees4.-3->( f8) g4 r
      g-5 f8. f16 f4 ees8. ees16
      ees4-3 d8. d16 c4 d
      ees-3 d8. c16 d4-2 g8. g16
      c,4-1 c8. c16 c4 r
    }
  }
}

primoTrioDown =  {
  \time 4/4
  \clef treble
  \key ees \major
  \relative c'' {
    \repeat volta 2 {
      c8-5 r ees-3 r g-1 r f-.-2 ees-.-3
      d-4 r f r g r f-.-2 d-.
      ees-3 r d r c r d-. ees-.
      d-4 r g8. g16 g4 g4
      c,8-5 r ees8.-3 ees16 g4-1-> f8-. ees-.

      d r f8. f16 g4-> f8-.-2 d-.
      ees4-3 c8. c16 d4-4 g
      c,-5 c8. c16 c4 r
    }
    \repeat volta 2 {
      ees4-3 ees8. ees16 ees8.( f32 ees) d8-. ees-.
      f4.-2->( g8) f4 r8 ees-3
      d-4-. ees-. f-. ees-. d-. ees-. f-. d-.
      ees4.-3->( f8) g4 r
      g-1 f8. f16 f4 ees8. ees16
      ees4-3 d8. d16 c4 d
      ees-3 d8. c16 d4-4 g8. g16
      c,4-5 c8. c16 c4 r
    }
  }
}

secondoTrioDynamics =  {
  s1\p s1 s1 s4 s8\< s2 s8\! s1\f
  s1 s1 s1 s1\p s1
  s1 s1 \crescTextCresc s1\< s2 \crescHairpin s8\< s4 s8\! s1\f s1_\markup{Da Capo al fine}
}

secondoTrioUp =  {
  \time 4/4
  \key ees \major
  \clef treble
  \relative c' {
    \set fingeringOrientations = #'(left)
    \accidentalStyle "modern"
    \repeat volta 2 {
      <c-1 ees-3>8-. g'-. g-. g-. c,-1-. g'-. g-. g-.
      <b,-1 d-2> g' g g <d-2 f-4> g g g
      r <c,-1 ees-3 g> r <b-1 d-2 g> r <c-1 ees-3 g> r <c ees g>
      <b-1 d-2 g> r <g g'>8. <g g'>16 <g g'>4 <g g'>
      <c-1 ees-3>8.[ g'16 g8. g16] c,8.-1[ g'16 g8. g16]

      <b,-1 d-2>8.[ g'16 g8. g16] <d-2 f-4>8.[ g16 g8. g16]
      r8 <c,-1 ees-3> r <c e> r <c-2 d-3> r <b-1 d-3 g-5>
      <c-2 ees-4>4 <c ees>8. <c ees>16 <c ees>4 r
    }
    \repeat volta 2 {
      g8-1( bes-2 ees-4 bes) g8( bes ees bes)
      aes-1( bes-2 f' bes,) aes( bes f' bes,)
      aes-1( bes-2 d-4 bes) aes( bes d bes)
      g8-1( bes-2 ees-4 bes) g8( bes ees bes)
      g8-1( d'-3 f-5 d) g,8( c-2 ees-4 c)
      g( b-2 d-4 b) r c r <aes-1 c-2 d-3>
      <g c-2 ees-4>8.[ <g g'>16 <g g'>8. <g g'>16] r8 <g c-2 d-3 g> r <g b-2 d-3 g>
      <g c-2 ees-4>4 c8.-3 c16-2 c4-1 r
    }
  }
}

secondoTrioDown =  {
  \time 4/4
  \key ees \major
  \clef bass
  \relative c, {
    \accidentalStyle "modern"
    \repeat volta 2 {
      c4-5 r ees-3 r
      g-1 r b-3 r
      c8-2 r f-1 r ees-2 r c-3 r
      g-5 r <g, g'>8. <g g'>16 <g g'>4 <g g'>4
      <c c'>4 r <ees ees'> r
      <g g'> r <b, b'> r
      <c c'>8 r <a a'> r <f f'> r <g g'> r
      <c c'>4 <c c'>8. <c c'>16 <c c'>4 r
    }
    \repeat volta 2 {
      e4-. bes'-2-. ees-1-. bes-.-4
      d-.-2 bes-.-4 d-. bes-.
      f'-.-1 bes,-.-4 f'-. bes,-.
      ees-2-. bes-4-. ees-. bes-.
      b-3-. g-.-5 c-2-. g-.
      f'-1-. g,-5-. <aes-4 ees'-2>8 r f-5 r
      g4-4 r g8-2 r <g, g'> r
      <c c'>4 <c c'>8. <c c'>16 <c c'>4 r
    }
  }
}

\score{
  \context PianoStaff  <<
    \set PianoStaff.instrumentName = "Secondo   "
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
