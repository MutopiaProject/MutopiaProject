\version "2.18.2"
\language "english"

\header {
  title        = "Gnossienne"
  subtitle     = "No. 1"
  composer     = "Erik Satie (1866-1925)"
  dedication   = "à Roland MANUEL"
  style        = "Avant-garde"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2015-Jul-18"
  date         = "1890"
  source       = "EDITIONS SALABERT, 22, Rue Chauchat. Paris, 1913"

  mutopiatitle       = "Gnossienne No. 1"
  mutopiacomposer    = "SatieE"
  mutopiainstrument  = "Piano"
  mutopiastyle       = "Modern"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2015/07/23-2035"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

% -------------------
% --- Definitions ---
% -------------------

startGraceMusic = {
  <>
  \override Flag.stroke-style = #"grace"
}

stopGraceMusic = {
  \revert Flag.stroke-style
  <>
}

% -------------
% --- Music ---
% -------------

% --- Theme 1

themeOneHigh = \relative {
  r4 c''8 ( ef d4 c |
  \grace { c8 } b2 \grace { c8 } b!2 ) |
  r4 c8 ( ef d4 c |
  \grace { e8 } f2 \grace { e!8 } f2 ) |
  r4 c8 ( ef d4 c |
  \grace { c8 } b2 \grace { af8 } g2 |
  \grace { f8 } g4 \grace { f8 } g2 ~ g8 ) r |
  \grace { af8 } g4 \grace{ g8 } f4 ~ f2 ~ |
  f1 |
}

themeOneUpMid = \relative {
  \crossStaff {
    \repeat unfold 6 { s4 <c' f>2 q4 | }
  }
  s1 |
  \crossStaff {
    s4 <c f>2 q4 |
    s4 <c f>2 q4 |
  }
}

themeOneLowMid = \relative {
  \crossStaff {
    \repeat unfold 6 { af4\rest af2 af4 | }
  }
  af4\rest <ef g c>2 q4 |
  \crossStaff {
    af4\rest <<af2 \new Voice{\voiceOne \once \hideNotes af4 }>> af4 |
    af4\rest af2 af4 |
  }
}

themeOneLow = \relative {
  \repeat unfold 6 { f,1 | }
  c'1 |
  f,1 |
  f1 |  
}

% --- Theme 2

themeTwoHigh = \relative {
  \grace { af'8 } bf2 ( \grace { af8 } g2
  \grace { af8 } bf2 \grace { af8 } g2
  \grace { af8 } g4 \grace{ g8 } f4 ~ f2 ~ |
  f1 ) |
}

themeTwoUpMid = \relative {
  \crossStaff {
    s4 df'2 df4 |
    s4 df2 df4 |
    s4 <c f>2 q4 |
    s4 <c f>2 q4 |
  }
}

themeTwoLowMid = \relative {
  \crossStaff {
    af4\rest <f bf>2 q4 |
    af4\rest <f bf>2 q4 |
    af4\rest <<af2 \new Voice{\voiceOne \once \hideNotes af4 }>> af4 |
    af4\rest af2 af4 |
  }
}

themeTwoLow = \relative {
  bf,,1 |
  bf1 |
  f'1 |
  f1 |
}

% --- Theme 3

themeThreeHigh = \relative {
  r8 c'' ( d e f g b g |
  f4 \grace { g8 } f4 ~ f2 |
  \grace { g8 } f2 \grace { f8 } e2 |
  \grace { df!8 } c2 \grace { c8 } b2 |
  \grace { af8 } g4 \grace{ g8 } f4 ~ f2 ~ |
  f1 ) |
}

themeThreeUpMid = \relative {
  \crossStaff {
    \repeat unfold 6 { s4 <c' f>2 q4 | }
  }
}

themeThreeLowMid = \relative {
  \crossStaff {
    \repeat unfold 4 { af4\rest af2 af4 | }
    af4\rest <<af2 \new Voice{\voiceOne \once \hideNotes af4 }>> af4 |
    af4\rest af2 af4 |
  }
}

themeThreeLow = \relative {
  \repeat unfold 6 { f,1 | }
}

% --- Theme 4

themeFourHigh = \relative {
  r4 c''8 ( ef d4 c |
  \grace { c8 } b1 ) |
  r4 c8 ( ef d4 c |
  \grace { e8 } f1 ) |
}

themeFourUpMid = \relative {
  \crossStaff {
    \repeat unfold 4 { s4 <c' f>2 q4 | }
  }
}

themeFourLowMid = \relative {
  \crossStaff {
    \repeat unfold 4 { af4\rest af2 af4 | }
  }
}

themeFourLow = \relative {
  \repeat unfold 4 { f,1 | }
}

% --- Voices

highVoice = {
  \tempo "Lent"
  \themeOneHigh
  \themeOneHigh
  \themeTwoHigh
  \themeTwoHigh
  \themeThreeHigh
  \themeThreeHigh
  \themeTwoHigh
  \themeTwoHigh
  \themeFourHigh
  \themeFourHigh
  \themeTwoHigh
  \themeTwoHigh
  \themeThreeHigh
  \themeThreeHigh
  \themeTwoHigh
  \themeTwoHigh
}

upperMiddle = {
  \themeOneUpMid
  \themeOneUpMid
  \themeTwoUpMid
  \themeTwoUpMid
  \themeThreeUpMid
  \themeThreeUpMid
  \themeTwoUpMid
  \themeTwoUpMid
  \themeFourUpMid
  \themeFourUpMid
  \themeTwoUpMid
  \themeTwoUpMid
  \themeThreeUpMid
  \themeThreeUpMid
  \themeTwoUpMid
  \themeTwoUpMid
}

lowerMiddle = {
  \themeOneLowMid
  \themeOneLowMid
  \themeTwoLowMid
  \themeTwoLowMid
  \themeThreeLowMid
  \themeThreeLowMid
  \themeTwoLowMid
  \themeTwoLowMid
  \themeFourLowMid
  \themeFourLowMid
  \themeTwoLowMid
  \themeTwoLowMid
  \themeThreeLowMid
  \themeThreeLowMid
  \themeTwoLowMid
  \themeTwoLowMid
}

lowVoice = {
  \themeOneLow
  \themeOneLow
  \themeTwoLow
  \themeTwoLow
  \themeThreeLow
  \themeThreeLow
  \themeTwoLow
  \themeTwoLow
  \themeFourLow
  \themeFourLow
  \themeTwoLow
  \themeTwoLow
  \themeThreeLow
  \themeThreeLow
  \themeTwoLow
  \themeTwoLow
}

% --- Dynamics, text, and musical terms

dynamicsHigh = {
  % Theme One
  \repeat unfold 2 {
    s1 * 5 |
    s2 \> s |
    s4 s2. \! |
    s1 * 2 |
  }
  % Theme Two
  s1 ^ "Très luisant (Shinning)" |
  s1 |
  s1 \break |
  s1 * 5 |
  % Theme Three
  s1 ^ "Questionnez (Questioning)" |
  s1 * 5 |
  s1 * 6 |
  % Theme Two
  s1 * 4 |
  s1 * 4 |
  \break
  % Theme Four
  s1 ^ "Du bout de la pensée (From the tip of the thought)" |
  s1 * 3 |
  s1 * 4 |
  % Theme Two
  s1 * 4 |
  s1 * 4 |
  % Theme Three
  s1 ^ "Postulez en vous-même (Wonder about yourself)" |
  s1 * 5 |
  s1 ^ "Pas à Pas (Step by Step)" |
  s1 * 5 |
  % Theme Two
  s1 * 4 |
  s1 ^ "Sur la langue (On the tip of the tongue)" |
  s1 * 3 |
}

dynamics = {
  % Theme One
  \repeat unfold 2 {
    s1 \p |
    s1 * 6 |
    s1 \f |
    s1 |
  }
  % Theme Two
  s1 \f |
  s1 * 3 |
  s1 \f |
  s1 * 3 |
  % Theme Three
  s1 * 6 |
  s1 * 6 |
  % Theme Two
  s1 \f |
  s1 * 3 |
  s1 * 4 |
  % Theme Four
  s1 * 4 |
  s1 * 4 |
  % Theme Two
  s1 * 4 |
  s1 * 4 |
  % Theme Three
  s1 * 6 |
  s1 * 6 |
  % Theme Two
  s1 \f |
  s1 * 3 |
  s1 * 4 |
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key f \minor
  \time 4/4
  \hide Staff.BarLine
  \hide Score.SpanBar
}

upper = {
  \global
  \clef treble
  <<
    \new Voice { \voiceOne \highVoice }
    \new Voice { \voiceTwo \upperMiddle }
  >>
  \undo \hide Staff.BarLine
  \undo \hide Score.SpanBar
  \bar "|."
}

lower = {
  \global
  \clef bass
  <<
    \new Voice { \voiceTwo \lowerMiddle }
    \new Voice { \voiceFour \lowVoice }
  >>
  \undo \hide Staff.BarLine
  \undo \hide Score.SpanBar
  \bar "|."
}

\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #11       %-pads music from copyright block
  
  % --- Set these to false after all editing is finished
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f
}

\score {
  \new PianoStaff \with { instrumentName = #"Piano" } <<
    \new Dynamics { \global \dynamicsHigh }
    \new Staff = "upper" \upper
    \new Dynamics { \global \dynamics }
    \new Staff = "lower" \lower
  >>
  \layout { 
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  } 
}

\include "articulate.ly"

\score {
  \articulate <<
    \new PianoStaff <<
      \new Staff ="upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \midi { 
    \tempo 4 = 100
  }
}
