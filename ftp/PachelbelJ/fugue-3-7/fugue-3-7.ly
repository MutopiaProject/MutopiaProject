\version "2.18.0"

\header {
  title =  "Fugues on the Magnificat"
  mutopiatitle =  "Fugues on the Magnificat III. 7."
  subtitle =	"III. 7."
  source = "Wien: Artaria, 1901 (Denkmaler der tonkunst in Osterreich; v. 17)"
  composer = "Johann Pachelbel"
  mutopiacomposer = "PachelbelJ"
  mutopiainstrument = "Piano"
  style = "Baroque"
  enteredby = "Steve Dunlop"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Steve Dunlop"
  % updated by Francisco Vila <paconet.org@gmail.com>, 2014
  % Music: public domain; Fingering copyright 2004 Steven J. Dunlop and licensed via GFDL and CC-ASAL
  maintainerWeb = "http://www.nerstrand.net/"
  lastupdated = "2014/2/19"

 footer = "Mutopia-2014/02/25-420"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

% Note: The editorially added notes from the Artaria edition have been included
% and are marked as such only in the comments below.
%
% This was originally written for organ with the implied intent
% of playing the lowest notes on the bass clef on the pedalboard
%
% The Artaria score is difficult to play without a pedalboard
% due to the confusing transitions where a voice must move
% to a different hand.  I have made changes in the stem direction
% and choice of staff for several passages, particularly in the
% middle voices, and added fingering, in order to make the score
% more playable at the keyboard.
%
% Organists will find that the bass clef stem-down notes are the
% same as in the Artaria edition and thus can be played accordingly
% on an instrument with pedals.  A few adjustments to the input
% would yield a three-staff organ score if desired

trebleOne = \relative c'' {
  s1 s s s s |
  d4 b-3 c16-4 d c b a b c a |
  b16 c b a g a b g a4 d, |
  % measure 8
  g2 ~ g16 a g fis g8 d' |
  c16 d c b a b c d b4 c |
  a4 d g, c ~ |
  %m11
  c4 b c r |

  c,16 d e d c d c b c d c d e-4 f e f |
  %m13
  d16-1 e d e f g f g e f e f g4 |
  fis4 g e a | d, g2 fis4 | g r r2 |
  % measure 17
  s1 s s
  % m20
  b2 a |
  % m 21
  g4 b c c16 d a c | b4 r16 g c8 d2-5 |
  %m 23
  r16 g,-1 a b c-1 d e f g g, c b a d c d |
  b4 c a2 | g4 c2 b4 |
  r16 c r d r e r d r c r b r a r g
  fis4 g2 fis4^\parenthesize\trill | g1\fermata
}

trebleTwo = \relative c'' {
  s1 s |
  g4-4 e f16 g f e d e f d |
  e16 f e d c-2 d e c d4 g, | c4.-3 d8-1 e fis g-1 a16-3 g |
  %m6
  fis4-1 g a8-2 g fis4 g s2. |
  s2 c,4 d | e fis g2 c,4 f b, e |
  %m11
  f4. e16 d e8 g16 f e f e-1 d-3 |
  s1
  % m13
  s2.. b8 | a4 g g c | fis, b c4. b16 a | b8 d16 c b c a b c4. s8
  % m 17
  r2 g''4 e |
  f16 g f e d e f d
  e16 f e d c d e c |
  d4 g, c16 d c b a b c a |
  % m 20
  r4 g2 fis4
  % m 21
  g2 ~ g16 a e g f4 ~ | f16 g d f e4 r16 d-1 e-2 f-3 e8.^\trill s16
  %m 23
  s1 | g4 g2 f?4 ~ | f e f2 |
  e8 f g f e d c b | a4 d8 b a2 | <b d>1
}

bassOne = \relative c' {
  s1 s s s s s |
  r4 b-1 c-1 ~ c8 b16-1 a-2 b4-1 c-1 s2
  %m9
  c4-2 d2
  \once \override Fingering.padding = #2
  g,4-2 | % original: c'4 d'4 r2
  %m10
  \once \override Fingering.padding = #1.5
  a2-1
  \once \override Fingering.padding = #2
  g4-1
  \once \override Fingering.padding = #1.5
  a4-1 ~ | % original: r1
  a8 g16 a g4 ~ g4. f8
  e8 f e d e f g4 |
  %m13
  f8 g a b c4. s8
  s1 s
  s2..
  \once \override Fingering.padding = #2
  b8-1 |
  %m17
  \once \override Fingering.padding = #0
  a8-3 b-2 c-1 d16-2 c-1
  \override Fingering.padding = #2
  b4-2
  c4-1 ~ | c
  b4-1 c2 ~ | c4 b a2 |
  %m20
  d4 b c16 d c b a b c a |
  %m21
  s1 s2... d16 | e2. fis4
  s1 s s s s
}

bassTwo = \relative c' {
  d4 b c16 d c b a b c a |
  b16 c b a g a b g a4-1 d, |
  g8-1 a16-3 b c4 a b c8 b a-1 g f4 e8 d |
  e4 a8 b-4 c d e4 d e c d-1 g,2.-3
  f4_4 ~ f e_5 a-2 b-1
  % m 9
  r2 g4-2 e-4 |
  f16-3 g f e d e f d e-3 f e d c-5 d e c |
  d4 g, c2 | s1 s d4 b c16 d c b a b c a
  %m15
  b16 c b a g a b g a4 d, |
  g4 g'8 f? e c16-5 d-4 e-1 f-4
  \once \override Fingering.padding = #1.5
  g16-3 e |
  %m17
  \once \override Fingering.padding = #1
  f2-5
  \once \override Fingering.padding = #1.5
  g4-4
  \once \override Fingering.padding = #1.5
  a4-3 | d,
  \once \override Fingering.padding = #1.5
  g4-2 c, e8 c | g'2. fis4 | g2 r
  %m21
  b16 c b a g a b g a4-1 d,-5 | g c2 b4-4 | c4. d8 e4 r |
  %m24
  g,4 e f16 g f e d e f d
  %m25
  e16 f e d c d e c d4 g, | c1 ~ |
  c16 c d c b8 e c16 e d c d8 d, | g1\fermata
}

\score {
  \new GrandStaff <<
    \new Staff <<
      \clef treble
      \key c \major
      \time 4/4
      \new Voice {
        \voiceOne
        \trebleOne
        \bar "|."
      }
      \new Voice {
        \voiceTwo
        \override Fingering.direction = #UP
        \trebleTwo
      }
    >>
    \new Staff <<
      \clef bass
      \key c \major
      \time 4/4
      \new Voice {
        \voiceOne
        \bassOne
      }
      \new Voice {
        \voiceTwo
        \override Fingering.direction = #UP
        \bassTwo
      }
    >>
  >>

  \layout {
    \context {
      \Score
      \override SpacingSpanner.shortest-duration-space = #1.4
    }
  }


  \midi {
    \tempo 4 = 48
  }
}

\paper {
  top-system-spacing #'basic-distance = #16
  top-markup-spacing #'basic-distance = #16
  ragged-last-bottom = ##f
  last-bottom-spacing #'basic-distance = #16
}
