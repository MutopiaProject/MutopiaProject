\version "2.16.1"
% $Revision: 1.4 $

\header {
  title = "28 melodische Übungsstücke"
  subtitle = "15."
  composer = "Anton Diabelli"
  opus = "Op 149"

  mutopiatitle = "28 melodische Übungsstücke (No. 15)"
  mutopiacomposer = "DiabelliA"
  mutopiaopus = "Op. 149"
  mutopiainstrument = "Piano Duet"
  source = "Unknown"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Alberto Simões"
  maintainerEmail = "ambs@cpan.org"
  maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"

 footer = "Mutopia-2013/01/06-464"
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
    \override StaffGrouper #'staff-staff-spacing #'padding = #6
  }
}

primoDynamics =  {
  s4\p-\markup\italic{dol} s1 s1 s2 s8 s8\< s8 s8\! s8\> s4 s8\! s4 s4\p
  s4 s4 s8 s16\< s4 s16\! s4\> s4\! s8 s16\< s4 s16\! s2 s4 s16\< s8 s16\! s2.\f
  s4\p s1 s1 s1 s1-\markup\italic{cresc. poco a poco}
  s1 s1 s1\f s2 s4 s4\p
  s2 s8 s16\< s4 s16\! s8\> s4 s8\! s8 s16\< s4 s16\! s2 s4 s16\< s8 s16\! s2.\f
  s4 s4 s2.\f s1 s1 s1\ff s1\p-\markup\italic{dolce} s1 s2 s2\pp s1
}

primoUp =  {
  \time 4/4
  \clef treble
  \key d \major
  \relative c''' {
    \override Score.OttavaBracket   #'padding = #2
    \ottava #1
    \accidentalStyle "modern"
    \partial 4
    \repeat volta 2 {
      fis8.(-3 e16)-2
      e4( d) r8 fis8(-3 a8. g16)
      fis4( e) r8 e(-2 g8. fis16)
      e4( d) r8 e(-2 fis8. g16)
      fis4.(-3 g16 fis) e8 r fis8.(-3 e16)

      e4(-2 d) r8 d16([-1 e] fis[ g a-5 g)]
      fis4(-3 e) r8 e16([-2 fis] a[-5 g fis e)]
      d8[-1-. e16(-2 fis] \appoggiatura{a16-5} g8[-4-> fis16 e)]
      \appoggiatura{g16-4} fis8[(-3-> e16 d]) e(-2 a)-5 a-. a-.
      \set Timing.measureLength = #(ly:make-moment 3 4)
      a2( d,8-5) r
    }
    \repeat volta 2 {
      \set Timing.measureLength = #(ly:make-moment 1 4)
      fis8.(-3 e16)
      \set Timing.measureLength = #(ly:make-moment 4 4)
      e8.( fis16) e4 r8 e8(-2 fis8.[ e16)]
      e8.( fis16) e4 r4 g8.(-4 fis16)
      fis8.(-3 g16) fis4 r8 fis8( g8.[ fis16)]
      fis8.(-3 g16) fis4 r fis8.(-3 fis16)

      fis8([ e)] e8.([-2 fis16)] a8.([-5 g16)] fis8.([-3 e16)]
      fis8.([-3 g16] fis4) r8 d8-1 d8.([ e16)]
      fis4-- d8.( e16) fis4-- d8.( e16)
      fis2.\fermata fis8.(-3 e16)

      e4(-2 d) r8 d16[(-1 e] fis[ g a-5 g)]
      fis4(-3 e) r8 e16[(-2 fis] a[-5 g fis e)]
      d8[-1-. e16(-2 fis] \appoggiatura{a16-5} g8[-4-> fis16 e)]
      \appoggiatura{g16-4} fis8[(-3-> e16 d]) e(-2 a)-5 a-. a-.
      \set Timing.measureLength = #(ly:make-moment 3 4)
      a2( d,8)-1 r
    }
    \set Timing.measureLength = #(ly:make-moment 1 4)
    r4
    \set Timing.measureLength = #(ly:make-moment 4 4)
    r4 d8.(-1 e16 fis4) r
    r d8.(-1 fis16-3 g4)-4 r
    r d8.( fis16 g4) r
    g8.([-4 a32 g)] fis8-. r e-2-. r a-. r
    d,4-1 fis8.(-3 g16) a4 e8.(-2 fis16)
    d4-1 fis8.(-3 g16) a4 e8.(-2 fis16)
    d4-1 r d d
    d2 r2\fermata \bar "|."
  }
}

primoDown =  {
  \time 4/4
  \clef treble
  \key d \major
  \relative c'' {
    \accidentalStyle "modern"
    \partial 4
    \repeat volta 2 {
      fis8.(-3 e16)-2
      e4( d) r8 fis8(-3 a8. g16)
      fis4( e) r8 e(-4 g8. fis16)
      e4( d) r8 e(-4 fis8. g16)
      fis4.(-3 g16 fis) e8 r fis8.(-3 e16)

      e4(-4 d) r8 d16([-5 e] fis[ g a-1 g)]
      fis4(-3 e) r8 e16([-4 fis] a[-1 g fis e)]
      d8[-5-. e16(-4 fis] \appoggiatura{a16-1} g8[-2-> fis16 e)]
      \appoggiatura{g16-2} fis8[(-3-> e16 d]) e(-4 a)-1 a-. a-.
      \set Timing.measureLength = #(ly:make-moment 3 4)
      a2( d,8-5) r
    }
    \repeat volta 2 {
      \set Timing.measureLength = #(ly:make-moment 1 4)
      fis8.(-3 e16)
      \set Timing.measureLength = #(ly:make-moment 4 4)
      e8.( fis16) e4 r8 e8(-4 fis8.[ e16)]
      e8.( fis16) e4 r4 g8.(-2 fis16)
      fis8.(-3 g16) fis4 r8 fis8( g8.[ fis16)]
      fis8.(-3 g16) fis4 r fis8.(-3 fis16)

      fis8([ e)] e8.([-4 fis16)] a8.([-1 g16)] fis8.([-3 e16)]
      fis8.([-3 g16] fis4) r8 d8-5 d8.([ e16)]
      fis4-- d8.( e16) fis4-- d8.( e16)
      fis2.\fermata fis8.(-3 e16)

      e4(-4 d) r8 d16[(-5 e] fis[ g a-1 g)]
      fis4(-3 e) r8 e16[(-4 fis] a[-1 g fis e)]
      d8[-5-. e16(-4 fis] \appoggiatura{a16-1} g8[-2-> fis16 e)]
      \appoggiatura{g16-2} fis8[(-3-> e16 d]) e(-4 a)-1 a-. a-.
      \set Timing.measureLength = #(ly:make-moment 3 4)
      a2( d,8)-5 r
    }
    \set Timing.measureLength = #(ly:make-moment 1 4)
    r4
    \set Timing.measureLength = #(ly:make-moment 4 4)
    r4 d8.(-5 e16 fis4) r
    r d8.(-5 fis16-3 g4)-2 r
    r d8.( fis16 g4) r
    g8.([-2 a32 g)] fis8-. r e-4-. r a-. r
    d,4-5 fis8.(-3 g16) a4 e8.(-4 fis16)
    d4-5 fis8.(-3 g16) a4 e8.(-4 fis16)
    d4-5 r d d
    d2 r2\fermata \bar "|."
  }
}

secondoDynamics =  {
  s4 s1\p s1 s2 s8\< s4 s8\! s8\> s4 s8 s8\! s8\p s4
  s2 s8\< s4 s8\! s8\> s4 s8\! s2 s2 s8 s8\< s8 s8\! s16 s2\f s8 s16
  s4 s1\p s1 s1 s1-\markup\italic{cresc. poco a poco}
  s1 s1 s1\f s1
  s4\p s8 s8\< s4 s8 s8\! s8\> s4 s8 s8\! s8 s4 s4 s8 s8\< s8 s8\! s16 s2\f s4 s8 s16
  s4\f s1 s1 s1 s1\ff
  s1\p s1 s1\pp s1
}

secondoUp =  {
  \time 4/4
  \clef bass
  \key d \major
  \relative c {
    \accidentalStyle "modern"
    \set fingeringOrientations = #'(left)
    \partial 4
    \repeat volta 2 {
      r4
      fis8(-1 a-2 d-5 a) fis( a d a)
      g(-1 a-2 cis-4 a) g( a cis a)
      fis(-1 b-3 d-5 b) g(-1 b-2 e-5 b)-2
      d([-4 a] d[-3 e16 d)] cis8-2 \clef treble a([-1 a'8.-5 g16)]

      g8(-5 a, fis'-4 a,) <d-2 fis-4>( a <d fis> a)
      <cis-2 g'-5>( a <cis g'> a) <cis g'>( a <cis g'> a)
      r8 <b d fis-4> r <b e g-5> r <a d fis-4> r <a cis g'-5>
      \set Timing.measureLength = #(ly:make-moment 3 4)
      r16 <a cis-2 g'>(-. <a cis g'>-. <a cis g'>-.
      <a cis g'>-. <a cis g'>-. <a cis g'>-. <a cis g'>)-.
      <a d-2 fis-4>8 r
    }
    \repeat volta 2 {
      \set Timing.measureLength = #(ly:make-moment 1 4)
      r4
      \set Timing.measureLength = #(ly:make-moment 4 4)
      r4 e'8.([-2-> fis16] e8) r r4
      r4 e8.([-2-> fis16] e8) r r4
      r4 fis8.([-2-> g16] fis8) r r4
      r4 fis8.([-2-> g16] fis8) r r4

      r8 <b, e-3> r <b dis fis-4> r <b e g-5> r <b e-3>
      ais16(-1 cis-2 fis-5 cis) ais( cis fis cis) b( d fis d) b( d fis d)
      ais(-1 cis-2 fis cis) b(-1 d-3 fis d) ais(-1 cis-2 fis cis) b(-1 d-3 fis d)
      <ais-1 cis-2 fis-5>2.\fermata r4

      \clef bass
      fis8(-1 a-2 d-5 a) fis( a d a)
      g(-1 a-2 cis-4 a) g( a cis a)
      r8 <fis-1 d'-5> r <g b-2 e-5> r <a d-3 fis-5> r <a cis-2 g'-5>
      \clef treble
      r16 <a cis-2 g'>([-. <a cis g'>-. <a cis g'>16]-.
      <a cis g'>16[-. <a cis g'>-. <a cis g'>-. <a cis g'>16)]-. <a d-2 fis-4>8 r
    }
    \set Timing.measureLength = #(ly:make-moment 1 4)
    d8.(-3 c16)
    \set Timing.measureLength = #(ly:make-moment 4 4)
    c16-2 <a-1 d-3 fis-5> <a d fis> <a d fis> <a d fis> <a d fis> <a d fis> <a d fis>
    <a d fis>8 r c8.(-3 b16)  b16[-2 <g-1 d'-3 g-5> <g d' g> <g d' g>16]
    <g d' g>16[ <g d' g> <g d' g> <g d' g>16] <g d' g>8 r b8.(-3 bes16)
    bes16[-2 <g-1 d'-3 g-5> <g d' g> <g d' g>16]
    <g d' g>16[ <g d' g> <g d' g> <g d' g>16]
    <g d' g>8 r b8.(-3 a16)-2
    a8-1 <a-1 cis-2 e-4 g-5> r <b-1 d-3 fis-5> r <b-1 d-3 e-4> r <a-1 cis-2 e-5>

    \clef bass
    fis16(-1 a-2 d-5 a) fis( a d a) g(-1 a-2 cis-4 a) g( a cis a)
    fis16(-1 a-2 d-5 a) fis( a d a) g(-1 a-2 cis-4 a) g( a cis a)
    fis16(-1 a-2 d-5 a) fis( a d a) fis( a d a) fis( a d a)
    <fis a d>2-. r\fermata \bar "|."
  }
}

secondoDown =  {
  \time 4/4
  \clef bass
  \key d \major
  \relative c, {
    \accidentalStyle "modern"
    \partial 4
    \repeat volta 2 {
      r4
      d r d' r
      a, r a' r
      b,8 r b' r g, r g' r
      a, r a' r a, r r4

      d4 r d' r
      a, r a' r
      b8-2 r g-4 r a-3 r a r
      \set Timing.measureLength = #(ly:make-moment 3 4)
      r16 <a-1 e'-5>(-. <a e'>-. <a e'>-.
      <a e'>-. <a e'>-. <a e'>-. <a e'>)-. <d-3 fis-2>8 r
    }
    \repeat volta 2 {
      \set Timing.measureLength = #(ly:make-moment 1 4)
      r4
      \set Timing.measureLength = #(ly:make-moment 4 4)
      << {gis,8-4 <b-3 d-2 e-1> <b d e> <b d e> gis <b d e> <b d e> <b d e>} \\
	 {gis2 gis2} >>
      << {a8-5 <cis-3 e-1> <cis e> <cis e> a <cis e> <cis e> <cis e>} \\
	 {a2 a2} >>
      << {ais8-5 <cis-4 e-2 fis-1> <cis e fis> <cis e fis> ais <cis e fis> <cis e fis> <cis e fis>} \\
	 {ais2 ais2} >>
      << {b8-5 <d-3 fis-2> <d fis> <d fis> b <d fis> <d fis> <d fis>}\\
	 {b2 b2} >>

      <g g'>8 r <fis fis'> r <e e'> r <g g'> r
      <fis fis'> r <fis fis'> r <fis fis'> r <fis fis'> r
      <fis fis'> r <b-3 fis'> r <fis fis'> r <b fis'> r
      <fis fis'>2.\fermata r4

      d4 r d' r
      a, r a' r
      b8-2 r a-4 r a-3 r a r
      r16 <a-5 e'-1>16([-. <a e'>-.  <a e'>16]-.
      <a e'>16[-.  <a e'>-.  <a e'>-.  <a e'>16)]-. <d-3 fis-2>8 r
    }
    \set Timing.measureLength = #(ly:make-moment 1 4)
    <d, d'>8.( <c c'>16)
    \set Timing.measureLength = #(ly:make-moment 4 4)
    <c c'>2( <c c'>8) r <c c'>8.( <b b'>16)
    <b b'>2( <b b'>8) r <b b'>8.( <bes bes'>16)
    <bes bes'>2( <bes bes'>8) r <bes bes'>8.( <a a'>16)
    <a a'>8 r <b b'> r <g g'> r <a a'> r

    <d d'>4 <d a' d> <d a' d> <d a' d>
    <d a' d> <d a' d> <d a' d> <d a' d>
    <d a' d> a'-2 fis-3 a-2
    <d a' d>2 r\fermata \bar "|."
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
  \header { piece = "Andante cantabile." }
}


\score{
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Primo"
    \context Staff = "up"   \primoUp
    \context Dynamics = "dynamics" \primoDynamics
    \context Staff = "down" \primoDown
  >>

  \layout { }
  \header { piece = "Andante cantabile." }
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
    \tempo 4 = 70
  }
}
