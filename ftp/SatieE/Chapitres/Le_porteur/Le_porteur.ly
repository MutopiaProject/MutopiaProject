\version "2.19.21"
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
  mutopiastyle       = "Modern"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2015/06/23-2026"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

% ------------------------------
% --- Changes from the score ---
% ------------------------------

% Beat 24: a'8 -> a'8.
% Beat 44: gs'8 -> gs'8.
% Last chord: missing bass clef in left hand

% ----------------
% --- Preamble ---
% ----------------

\markup {
  \column {
    \line { \hspace #40 Il les porte sur le dos. Son air }
    \line { \hspace #38 est narquois et rempli de certitude. }
    \line { \hspace #40 Sa force étonné les petits enfants. }
    \line { \hspace #40 Nous le voyons alors qu'il trans- }
    \line { \hspace #38 porte une pierre énorme, cent fois }
    \line { \hspace #38 plus grosse que lui \italic { (c'est une pierre } }
    \line { \hspace #38 \italic { ponce.) } }
    \line { \null }
  }
}

% -------------------
% --- Definitions ---
% -------------------

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

octaveUp = {
  \ottava #1
  \set Staff.ottavation = #"8"
}

octaveOff = \ottava #0

% --- Put nonmusical text into variables
phraseJambes = "En traînant les jambes"
textJambes = -\markup { \phraseJambes }
phraseEchappe = "Il sent que la pierre lui échappe: elle va tomber" 
textEchappe = _\markup { \phraseEchappe }
phraseTombe = "Ça y est: elle tombe"
textTombe = ^\markup { Ça y est: \italic { elle tombe } }

% --- Musical text
phraseAvecMal = "Avec beaucoup de mal"
avec_mal = -\markup { \italic \phraseAvecMal }
phraseAttendez = "Attendez"
attendez = -\markup { \italic \phraseAttendez }
phrasePeniblement = "Péniblement et par à coups"
peniblement = -\markup { \italic \phrasePeniblement }
phraseArret = "Arrêt"
arret = -\markup { \italic \phraseArret }

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
  s2 |
  
  \barNumberCheck #9
  g,16 c! a! f g c a _\fermata f |
  g16 c a f g _\fermata c a f |
  g16 f ef f g f ef f |
  \time 3/4
  g16 f _\fermata ef f g f ef f g f ef _\fermata f |
  
  \barNumberCheck #13
  \time 2/4
  a8-. d-. a8.-. a16-. |
  a8-. d-. a4-.-- |
  f16 ( a c f a8 f16 c |
  a8 f16 a c4 ) |
  
  \barNumberCheck #17
  \time 3/4
  b16 ( ^\< e cs a \! gs cs as \fermata fs e ^\f a fs d ) |
  \time 2/4
  s2 |
  s2 |
  
  \barNumberCheck #20
  \time 2/4
  a'16 ( d b g _\fermata a d b g |
  a16 _\fermata d b g a d _\fermata b g |
  a16 g _\fermata f g a _\fermata g f g |
  \time 3/4
  a16 g f _\fermata g a g f g a _\fermata g f g |
  \time 2/4
  cs16 b a b es ds cs! ds |
  e!16 a! fs d! g! c! a f ) |
  
  \barNumberCheck #26
  \octaveUp
  b8-. \textEchappe e-. b8.-. b16-. |
  b8-. e-. b4-. |
  \time 3/4
  g16 ( b d g b8 g16 d b8 g16 b _\fermata ) |
  \time 2/4
  \octaveOff g, ( <b cs f> g _\fermata <b cs f> g4-. ) |
  s2 |
  s2 |
  <bs, fs' gs>2^> \textTombe
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
  s2 |
  
  \barNumberCheck #9
  s2 * 3 |
  \time 3/4
  s2. |
  
  \barNumberCheck #13
  \time 2/4
  d,='16 g \textJambes e c d g e c |
  d16 g e c d g e c |
  d c bf c d c bf c |
  d c bf c d g e c |
  
  \barNumberCheck #17
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  s2 |
  
  \barNumberCheck #20
  s2 * 3 |
  \time 3/4
  s2. |
  s2 |
  s2 |
  
  \barNumberCheck #26
  s2 |
  s2 |
  \time 3/4
  s2. |
  \time 2/4
  s2 * 4
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
  s2 |
  
  \barNumberCheck #9
  s2 * 3 |
  \time 3/4
  s2. |
  
  \barNumberCheck #13
  \time 2/4
  s2 * 4 |
  
  \barNumberCheck #17
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  s2 |
  
  \barNumberCheck #20
  s2 * 3 |
  \time 3/4
  s2. |
  s2 |
  s2 |
  
  \barNumberCheck #26
  s2 |
  s2 |
  \time 3/4
  s2. |
  \time 2/4
  s2 * 4
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
  s2 |
  
  \barNumberCheck #9
  \clef bass
  <f,,, f'>2 ~ ( ^\pp |
  q2 |
  <b! b'!>2 ~ |
  \time 3/4
  q4 <f' f'> <df df'>_> ) |
  \time 2/4
  
  \barNumberCheck #13
  s2 * 4 |
  
  \barNumberCheck #17
  \time 3/4
  \staffUp <e''=' gs>8_. [ \staffDown \stemUp gs,^. ]
    \staffUp \stemDown <cs es>_. [ \staffDown \stemUp es,^. ]
    \staffUp \stemDown <a cs>_. \staffDown \stemUp cs,^. \stemNeutral |
  \time 2/4
  s2 | 
  s2 |
  
  \barNumberCheck #20
  \time 2/4
  <g,! g'!>2 ~ ( |
  q2 |
  <cs cs'>2 ~ |
  \time 3/4
  q4 <g' g'> <ef ef'>_> ) |
  \time 2/4
  \staffUp \stemDown gs''8_. e_. gs!8._. gs16_. |
  <a cs>8_. \staffDown \stemUp cs,^. 
    \staffUp \stemDown <c' e>_. \staffDown \stemUp e,^. \stemNeutral |
    
  \barNumberCheck #26
  \clef treble
  \stemDown
  e16 ( a fs d e a fs d |
  e16 a fs d e a fs d |
  \time 3/4
  e16 d c d e d c d e d c d |
  \time 2/4
  f ef f ef f4_. ) |
  s2 |
  s2 |
  \clef bass
  <d,, as' e'!>2_>
}

% --- Includes musical terms
dynamics = {
  \time 2/4
  s4 \avec_mal s |
  s2 |
  \time 3/4
  s16 s \f s8 s4 \< s8 s16 \! s \break |
  \time 2/4 
  s4 s \p \> |
  s2 |
  s4 s \! |
  s2 \attendez |
  s2 |
  
  \barNumberCheck #9
  s2 \peniblement |
  s2 \break |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #13
  \time 2/4
  s2 * 4 |
  
  \barNumberCheck #17
  \time 3/4
  s2. |
  \time 2/4
  s2 \attendez |
  s2 |
  
  \barNumberCheck #20
  s2 \pp |
  s2 |
  s2 |
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  s2 |
  
  \barNumberCheck #26
  s2 \pp |
  s2 |
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  s2 \arret |
  s2 |
  s2 \ff |
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
  \pageBreak
}

lower = {
  \global
  \clef bass
  <<
    \new Voice { \voiceThree \lowerMiddle }
    \new Voice { \voiceFour \lowVoice }
  >>
  \pageBreak
}

\paper {
  % --- Set these to false after all editing is finished
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f
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
      \new Staff ="upper" \upper
      \new Staff = "lower" \lower
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
    \line { Preamble: }
    \line { \hspace #2 He carries them on his back. }
    \line { \hspace #2 His manner is sly and full of certainty. }
    \line { \hspace #2 His strength amazes small children. }
    \line { \hspace #2 We see him carrying a huge stone, one hundred times his size (it's pumice.) }
    \line { \null }
    \line { Musical Terms: }
    \line { \hspace #2 \bold { \phraseAvecMal } - Very painfully }
    \line { \hspace #2 \bold { \phraseAttendez } - Wait }
    \line { \hspace #2 \bold { \phrasePeniblement } - Painfully and jerkily }
    \line { \hspace #2 \bold { \phraseArret } - Stop }
    \line { \null }
    \line { Nonusical Terms: }
    \line { \hspace #2 \bold { \phraseJambes } - Dragging his legs }    
    \line { \hspace #2 \bold { \phraseEchappe } - He feels the rock will slip: it's falling }
    \line { \hspace #2 \bold { \phraseTombe } - That's it: it falls }
  }
}
