\version "2.16.1"
% $Revision: 1.2 $

\header {
  title = "28 melodische Übungsstücke"
  subtitle = "14."
  composer = "Anton Diabelli"
  opus = "Op 149"

  mutopiatitle = "28 melodische Übungsstücke (No. 14)"
  mutopiacomposer = "DiabelliA"
  mutopiaopus = "Op. 149"
  mutopiainstrument = "Piano Duet"
  source = "Unknown"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Alberto Simões"
  maintainerEmail = "ambs@cpan.org"
  maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-462"
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
    % stretch measures slightly
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 16)
  }
}

primoAllegrettoDynamics =  {
  s2.\p s2. s2. s2.\f s2.\p
  s2. s2.\f s2.
  s2.\p s2. s2.
  s2. s2.-\markup\italic{cresc.} s2. s2.\f s4 s8\fz
  s8\> s8\! s8_\markup{\center-align Fine}
}

primoAllegrettoUp =  {
  \time 3/4
  \clef treble
  \key f \major
  \relative c'' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      f8-1-. f4-> a-3-> c8(-5-> ~
      c[ bes a bes] g4)-2
      f8-1-. f4-> a-3-> c8->
      g[-2-. c]-.  b[(-4 a16 b]) c8(-> bes16-4 g-2)
      f8-. f4-> a-3-> c8(-> ~

      c[ bes-4 a bes] g4)
      a8([-3-. c-. g-2-. bes-. a-3-. g-.)]
      f-1-. a16(-3 g) g4(-2-> f8) r
    }
    \repeat volta 2 {
      a8-3-. a4-> a4-> g8
      f-1-. a16(-3 g) f8-. g-. a4
      a8-3-. a4-> a4-> g8

      f-1-. a16(-3 g) f8-. g-. a4
      g8-2 c4-5-^ bes-4-^ g8-2-^
      f8-1-. a16(-3 g) f8-. a16( g) f8-. a-.
      g8-2 c4-5-^ bes-4-^ g8-2-^
      f-1-. a16(-3 g) g4( f8) r
    }
  }
}

primoAllegrettoDown =  {
  \time 3/4
  \clef treble
  \key f \major
  \relative c'' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      a8([-3 c-1 a c a c)]
      bes([-2 c bes c bes c)]
      a8([-3 c a c a c)]
      <g-4 c-1>8[ <g c> <g-4 b-2> <g b>8] <g-4 c-1> r
      a8([-3 c-1 a c a c)]

      bes([-2 c bes c bes c)]
      a8([-3-. c-1-. g-4-. bes-. a-3-. g-.)]
      a-3-. bes-. bes4(-> a8) r
    }
    \repeat volta 2 {
      g8(-4 a-3 g a g a)
      f(-5 a-3 f a f a)
      g(-4 a-3 g a g a)

      f(-5 a-3 f a f a)
      bes(-2 c-1 bes c bes c)
      a(-3 c-1 a c a c)
      bes(-2 c-1 bes c bes c)
      a-3-. c16(-1 bes) bes4(-2 a8) r
    }
  }
}

secondoAllegrettoDynamics =  {
  s2.\p s2. s2. s2.\f s2.\p
  s2. s2.\f s2.
  s2.\p s2.
  s2. s2. s2.-\markup{cresc.} s2. s2.\f s4
  s8\fz s8\> s8\! s8_\markup{\center-align Fine}
}

secondoAllegrettoUp =  {
  \time 3/4
  \clef bass
  \key f \major
  \relative c' {
    \accidentalStyle "modern"
    \set fingeringOrientations = #'(left)
    \repeat volta 2 {
      r8 <a-1 c-2 f-5> r <a c f> r <a c f>
      r8 <g-1 bes-2 c-3 e-5>8[ <g bes c e> <g bes c e> ] r <g bes c e>
      r8 <a c f> r <a c f> r <a c f>
      r8 <g c e-4>8[ <g d' f-5> <g d' f>8] <g c e> r
      r8 <a-1 c-2 f-5> r <a c f> r <a c f>
      r8 <g-1 bes-2 c-3 e-5>8[ <g bes c e> <g bes c e>8] r <g bes c e>
      r8 <a-1 c-2 f-5> r <bes-1 d-3> r <bes-1 c-2 e-4>
      <a c f-5>8[ <bes c e-4>8]	<bes c e>4(-> <a c f>8) r
    }
    \repeat volta 2 {
      r8 <g-1 a-2 e'-5> r <g a e'> r <g a e'>
      r8 <f-1 a-2 d-5>8[ <f a d> <f a d> <f a d> <f a d>8]

      r8 <g-1 a-2 e'-5> r <g a e'> r <g a e'>
      r8 <f-1 a-2 d-5>8[ <f a d> <f a d> <f a d> <f a d>8]
      r8 <bes-1 c-2 g'-5> r <bes c g'> r <bes c g'>
      r8 <a-1 c-2 f-5>8[ <a c f> <a c f> <a c f> <a c f>8]
      r8 <g-1 bes-2 c-3 e-5> r <g bes c e> r <g bes c e>
      <a-1 c-2 f-5>8[ <bes c e-4>8] <bes c e>4( <a c f>8) r
    }
  }
  \pageBreak
}

secondoAllegrettoDown =  {
  \time 3/4
  \clef bass
  \key f \major
  \relative c, {
    \accidentalStyle "modern"
    \repeat volta 2 {
      f8 r f' r f, r
      c'8-2 r r4 <c, c'>8 r
      f8 r f' r f, r
      g8-4 r <g, g'>8[ <g g'>8] <c c'> r
      f r f' r f, r

      c'-2 r r4 <c, c'>8 r
      <f f'> r <bes, bes'> r <c c'> r
      <f f'>8[ <c c'>8] <c c'>4(-> f8)-3 r
    }
    \repeat volta 2 {
      <cis cis'>8 r <a a'> r <cis cis'> r
      <d d'>4 r r

      <cis cis'>8 r <a a'> r <cis cis'> r
      <d d'>4 r r
      <e e'>8 r <c c'> r <e e'> r
      <f f'>4 r r
      <c c'>8 r <c c'> r <c c'> r
      <f c'>8[ <c c'>8] <c c'>4( <f c'>8) r
    }
  }
}

\score{
  \context PianoStaff  <<
    \set PianoStaff.instrumentName = "Secondo     "
    \context Staff = "up"   \secondoAllegrettoUp
    \context Dynamics = "dynamics" \secondoAllegrettoDynamics
    \context Staff = "down" \secondoAllegrettoDown
  >>
  \layout { }
  \header { piece = "Polonaise. Allegretto." }
}


\score{
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Primo     "
    \context Staff = "up"   \primoAllegrettoUp
    \context Dynamics = "dynamics" \primoAllegrettoDynamics
    \context Staff = "down" \primoAllegrettoDown
  >>

  \layout { }
  \header { piece = "Polonaise. Allegretto" }
}


\score{
  \context PianoStaff  <<
    \context Staff = "up"   <<
      \applyMusic #unfold-repeats \primoAllegrettoUp
      \applyMusic #unfold-repeats \secondoAllegrettoUp
    >>
    \context Staff = "down" <<
      \applyMusic #unfold-repeats \primoAllegrettoDown
      \applyMusic #unfold-repeats \secondoAllegrettoDown
    >>
  >>

  \midi {
    \tempo 4 = 120
  }


}

%%%% TRIO %%%%


primoTrioDynamics =  {
  s2.\p s2. s2. s2. s2.\f
  s2. s2. s2.
  s4 s2\p s2. s2.
  s2. s2.\ff s2. s2 s1_\markup{Polonaise da Capo al Fine.}
}


primoTrioUp =  {
  \time 3/4
  \clef treble
  \key aes \major
  \relative c''' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      c8-5-. aes-3-. f4.(-1 aes8)-3
      g8-2-. bes16(-4 aes-3 g8) bes16( aes g8) r
      c8-5-. bes-. g4.(-2 bes8)
      aes8-3-. c16(-5 bes-4 aes8)-3 c16( bes) aes8 r
      bes-4-. bes16( aes g4. aes16 bes)

      c8-5-. c16( bes aes4. c8)
      bes8-4-. bes4(-> f8)-1 aes16(-3 g f g)
      aes8-. c16( bes) bes4(-> aes8) r
    }
    \repeat volta 2 {
      r4 c8(-5 b16-4 c-5 g8)-2 r
      r4 aes8(-3 g16 aes f8) r
      r4 c'8(-5 b16 c g8) r

      r4 bes16(-4 aes g aes) f8-1 r
      f4.-1 f8[-. f-. f]-.
      f8-. f16(-1 g aes8)-. aes16(-3 bes c8)-. r
      g8-2-. g4-> bes8[-4-. aes-. g]-.
      f8-1-. aes16( g) g4(-2-> f8) r
    }
  }
}

primoTrioDown =  {
  \time 3/4
  \clef treble
  \key aes \major
  \relative c'' {
    \accidentalStyle "modern"
    \repeat volta 2 {
      c8-1-. aes-3-. f4.(-5 aes8)
      g8-4-. bes16(-2 aes-3 g8)-4 bes16( aes g8) r
      c8-1-. bes-. g4.(-4 bes8)
      aes8-3-. c16(-1 bes-2 aes8)-3 c16( bes) aes8 r
      bes-2-. bes16( aes g4. aes16 bes)

      c8-1-. c16( bes aes4. c8)
      bes8-2-. bes4(-> f8)-5 aes16(-3 g f g)
      aes8-. c16( bes) bes4(-> aes8) r
    }
    \repeat volta 2 {
      r4 c8(-1 b16-2 c-1 g8)-4 r
      r4 aes8(-3 g16 aes f8) r
      r4 c'8(-1 b16 c g8) r

      r4 bes16(-2 aes g aes) f8-5 r
      f4.-5 f8[-. f-. f]-.
      f8-. f16(-5 g aes8)-. aes16(-3 bes c8)-. r
      g8-4-. g4-> bes8[-2-. aes-. g]-.
      f8-5-. aes16( g) g4(-4-> f8) r
    }
  }
}

secondoTrioDynamics =  {
  s2.\p s2. s2. s2. s2.\f
  s2. s2. s2.
  s2.\p s2. s2.
  s2. s2.\ff s2. s2 s1_\markup{Polonaise da Capo al Fine.}
}

secondoTrioUp =  {
  \time 3/4
  \clef bass
  \key aes \major
  \relative c {
    \accidentalStyle "modern"
    \set fingeringOrientations = #'(left)
    \repeat volta 2 {
      r8 <f-1 aes-3 c-5>16 <f aes c> <f aes c>8 <f aes c> r <f aes c>
      r8 <g-2 bes-4 c-5>16 <g bes c> <g bes c>8 <g bes c> r <g bes c>
      r8 <e-1 g-2 bes-4 c-5>16 <e g bes c> <e g bes c>8 <e g bes c> r <e g bes c>
      r8 <f-1 aes-3 c-5>16 <f aes c> <f aes c>8 <f aes c> r <f-1 aes-2 c-4>
      r <ees g bes-3 des-5> r <ees g bes des> r <ees g bes des>

      r <ees aes c-4> r <ees aes c> r <ees aes c>
      r <f bes-3 des-5> r <f bes des> r <ees bes' des>
      <ees aes-3 c-5> <ees g-2 des'-5> <ees g des'>4(-> <aes c>8) r
    }
    \repeat volta 2 {
      c8(-5 b16 c) g4.-2 g8
      aes(-3 g16 aes) f4-1 r8 aes-3
      c8(-5 b16 c) g4.-2 g8

      bes16(-4 aes g aes) f4-1 r8 f
      ees'8-5 f,16 f ees'8-5-. des-4-. c-5-. bes-.
      aes[-3-. g]-. f[-1-. f16( g] aes8[ g16 f)]
      bes8-4 <f g-2 des'-5>16-. <f g des'>-. <f g des'>8-. <f g des'>-. r <e bes'-4 c-5>
      <f aes-3 c-5> <e bes'-4 c-5> <e bes' c>4(-> <f aes c>8) r
    }
  }
}

secondoTrioDown =  {
  \time 3/4
  \clef bass
  \key aes \major
  \relative c, {
    \accidentalStyle "modern"
    \repeat volta 2 {
      f8-2 r r4 f8 r
      e-3 r r4 e8 r
      <c c'> r r4 <c c'>8 r
      f-3 r r4 f8 r
      ees-4 r ees r ees r

      aes-2 r aes r aes r
      des,-5 r des r ees-4 r
      aes-2 ees-4 ees4(-> aes8) r
    }
    \repeat volta 2 {
      \set fingeringOrientations = #'(left)
      << { e8[-5 <bes'-2 c-1> <bes c> <bes c>8] e,[ <bes' c>8] } \\ { e,2 e4 } >>
      << { f8[-5 <aes-3 c-1> <aes c> <aes c>8] f[ <aes c>8] } \\ { f2 f4 } >>
      << { e8[-5 <bes'-2 c-1> <bes c> <bes c>8] e,[ <bes' c>8] } \\ { e,2 e4 } >>

      << { f8[-5 <aes-3 c-1> <aes c> <aes c>8] f[ <aes-3 c-2>8] } \\ { f2 f4 } >>
      <ees-5 ees'-1>4. des'8[-2-. c-1-. bes]-.
      aes[-3-. g]-4-. f[-5-. f16( g] aes8[ g16 f)]
      bes8-2 r <bes, bes'> r <c c'> r
      <f-3 c'> <c c'> <c c'>4(-> <f c'>8) r
    }
  }
}

\score{
  \context PianoStaff  <<
    \set PianoStaff.instrumentName = "Secondo"
    \context Staff = "up"   \secondoTrioUp
    \context Dynamics = "dynamics" \secondoTrioDynamics
    \context Staff = "down" \secondoTrioDown
  >>
  \layout { }
  \header { piece = "Polonaise. Trio." }
}


\score{
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Primo"
    \context Staff = "up"   \primoTrioUp
    \context Dynamics = "dynamics" \primoTrioDynamics
    \context Staff = "down" \primoTrioDown
  >>

  \layout { }
  \header { piece = "Polonaise. Trio." }
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
