\version "2.19.20"
\language "english"

\header {
  title        = "Chapitres Tournés en Tous Sens"
  subtitle     = "Le porteur de grosses pierres"
  composer     = "Erik Satie (1866-1925)"
  style        = "Avant-garde"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2015-May-20"
  date         = "1913"
  source       = "Paris: E. Demets, 1913. Plate E. 1113 D."

  mutopiatitle       = "Le porteur de grosses pierres"
  mutopiacomposer    = "SatieE"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"
}

% -------------------
% --- Definitions ---
% -------------------



% --- Put nonmusical text into variables
phraseImpatience = "Marque d'impatience du pauvre mari" 
textImpatience = ^ \markup { \italic \phraseImpatience }


% --- Musical text
phraseAvecMal = "Avec beaucoup de mal"
avec_mal = \markup { \italic \phraseAvecMal }
phraseAttendez = "Attendez"
attendez = \markup { \italic \phraseAttendez }


% -------------
% --- Music ---
% -------------

highVoice = \relative c'' {
  \mark "Très lent"
  d8-. g-. d8.-. ^\< d16-. |
  d8-. g-. d4-.-- \! |
  \time 3/4
  bf16 ( d f bf <af d>8 bf16 f d8 bf!16 d ) |
  \time 2/4
  f4-> ( df |
  f4 df |
  f4 df ) |
  s2 |
}

upperMiddle = \relative c'' {
  a4 bf |
  c4 bf |
  \time 3/4
  s4 d s |
  \time 2/4
  <g, cf>4 af  |
  <g cf>4 af |
  <g cf>4 af \! |
  s2 |
}

lowerMiddle = \relative c' {
  \clef treble
  f4 ^\p ( gf |
  af4 af ) |
  \time 3/4
  g!4-> f!-.-- c'-.-- |
  \time 2/4
  f,4 ( ef |
  f4 ef |
  f4 ef ) |
  s2 |
}

lowVoice = \relative c' {
  ef4 ( e |
  f4 fs ) |
  \time 3/4
  d4-> ef-.-- e-.--
  \time 2/4
  df4-> ( cf |
  df4 cf |
  df4 cf ) |
  s2 |
}

% --- Includes musical terms
dynamics = {
  \time 2/4
  s4 -\avec_mal s |
  s2 |
  \time 3/4
  s16 s \f s8 s4 \< s8 s16 \! s |
  s4 s \p \> |
  s2 |
  s4 s \! |
  s2 -\attendez |
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key c \major
  \time 2/4
}

upper = {
  \global
  \clef treble
  <<
    \new Voice { \voiceOne \highVoice }
    \new Voice { \voiceTwo \upperMiddle }
  >>
}

lower = {
  \global
  \clef bass
  <<
    \new Voice { \voiceThree \lowerMiddle }
    \new Voice { \voiceFour \lowVoice }
  >>
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Dynamics \dynamics
    \new Staff = "lower" \lower
  >>
  \layout { 
    \context {
      \Score
      \hide BarLine
      \hide SpanBar
      \remove "Bar_number_engraver"
    }
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  } 
}

\include "articulate.ly"

\score {
  \articulate <<
    \new PianoStaff <<
      \new Staff \upper
      \new Staff \lower
    >>
  >>
  \midi { 
    \tempo 4 = 40
  }
}

% --------------------
% --- Translations ---
% --------------------

\markup {
  \column {
    \line { Translations by \with-url #"http://translate.google.com" { "Google Translate" } and some research }
    \line { \null }
    \line { Title: }
    \line { \hspace #2 \bold { Chapitres Tournés en Tous Sens } - Chapters Turned in All Directions }
    \line { \null }
    \line { Subtitle: }
    \line { \hspace #2 \bold { Le porteur de grosses pierres } - The carrier of large stones }
    \line { \null }
    \line { Musical Terms: }
    \line { \hspace #2 \bold { \phraseAvecMal } - Very painfully }
    \line { \hspace #2 \bold { \phraseAttendez } - Wait }
    \line { \null }
  }
}