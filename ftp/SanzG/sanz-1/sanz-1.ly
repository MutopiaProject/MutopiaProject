\version "2.18.2"
\include "english.ly"

\header {
  instrument = "Classical Guitar"
  license = "Public Domain"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  title = "Preludio"
  composer = "Gaspar Sanz"
  opus = "1640-1710"
  mutopiainstrument = "Guitar"
  mutopiacomposer = "SanzG"
  license = "Public Domain"

  mutopiaopus = " "
  mutopiastyle = "Classical"
  mutopiasource = "Not Known"

 footer = "Mutopia-2014/12/14-380"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 8\mm
  top-markup-spacing.basic-distance = #6
  markup-system-spacing #'padding = #5
  markup-markup-spacing #'padding = #1.2
  last-bottom-spacing.basic-distance = #12
  top-system-spacing.basic-distance = #12
  bottom-margin = 10\mm
}

global =  {
  \time 2/2
  \key g\major
  \clef treble
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

up =  \relative c' {
  e8^\markup{"Andante poco sostenuto"} b' g' d, c8 c' b, a
  gs8 b' e d a,8 c' e a,,
  b8 d' g b,, cs e' a cs,,
  d8 d' fs c,! b d' g( fs)
  c,8 c' e b, a c' fs( e)
  b,8 ds' fs a, gs b e d,
  a'8 c e g,! fs d' a' fs,
  \tuplet 6/4 2 {
    g8\( b g' a,( g) f!\) e\( b' g' f,( e) d\)
    c8\( c' e \slurDown c,( b) a\) \slurUp gs\( b' e d c b\)
    a8\( c e g!( fs) e]\) b\( ds fs a g fs\)
  }
  e, b' g' e, fs d' a' fs,

  gs b e d a c e fs
  b, d fs gs a,, c' a' ds,
  e g! b cs d,, fs' d' gs,

  a,, a'' cs ds, e g! b cs
  cs, e a cs, d fs a b
  b, d g b, c! e g a
  a, c e a, b ds fs gs

  gs, b e gs, a c e fs
  fs, d' a' fs, g! b g' g,
  e b' g' e, fs d' a' fs,
  ds b' fs' ds, e b' g' e,

  cs e' a cs,, d! d' fs d,
  b d' g b,, c! c' e c,
  a c' e a,, b d' g b,,
  gs b' e gs,, a c' e fs

  g,,! b' g' a,, b ds' fs b,
  e, b' g' d,! c c' e b,
  a c' e a,, b' ds fs b,
  <g b g'>2^\fermata r2
}

down =  \relative c' {
  e4. d8 c4 b8( a)
  gs2 a4. a8
  b4. b8 cs4. cs8
  d4. c8 b2 \break
  c4. b8 a2
  b4. a'8 gs4. d8
  c4. g'8 fs4. fs8
  \override TupletBracket.transparent =##t
  \omit TupletNumber
  \tuplet 6/4 2 {
    g4 s8 a8 g f e4 s8 f8( e) d \break
    c4 s8 c8 b a gs4 s8 d''8( c) b
    a4 s8 g'8 fs e b4 s8 a'8( g) fs
  }
  e,4. e8 fs4. fs8 \break
  gs2 a
  b2 a,4. ds'8
  e2 d, \break
  a4. ds'8 e2
  cs4. cs8 d2
  b4. b8 c2
  a4. a8 b2 \break
  gs4. gs8 a2
  fs4. fs8 g4. g8
  e4. e8 fs4. fs8
  ds4. ds8 e4. e8 \break
  cs4. cs8 d4. d8
  b4. b8 c4. c8
  a4. a8 b4. b8
  gs4. gs8 a2 \break
  g4. a8 b4. b'8
  e,4. d8 c4. b8
  a4. a8 b2
  e,2 s2 \bar "|."
}

\score {
  {
    \global
    \context Staff <<
      \new Voice { \voiceOne \up }
      \new Voice { \voiceTwo \down }
    >>

    \set Staff.midiInstrument = "acoustic guitar (nylon)"
  }
  \layout { }

  \midi {
    \tempo 2 = 60
  }

}
