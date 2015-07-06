\version "2.19.21"
\language "english"

\header {
  title        = "Chapitres Tournés en Tous Sens"
  subtitle     = "Celle qui parle trop"
  composer     = "Erik Satie (1866-1925)"
  style        = "Avant-garde"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2015-May-15"
  date         = "1913"
  source       = "Paris: E. Demets, 1913. Plate E. 1113 D."

  mutopiatitle       = "Celle qui parle trop"
  mutopiacomposer    = "SatieE"
  mutopiainstrument  = "Piano"
  mutopiastyle       = "Modern"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2015/06/23-2025"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

% -------------------
% --- Definitions ---
% -------------------

octaveUp = { 
  \set Staff.ottavation = #"8va pour la main droite seulement"
  \once \override Staff.OttavaBracket.direction = #UP
  \set Voice.middleCPosition = #(- 6 5) % c'' 
}

octaveOff = {
  \unset Staff.ottavation
  \unset Voice.middleCPosition
}

shapeOne = \shape #'((-1 . 2.5) (0 . 2.5) (0 . 2) (0 . 2)) Slur

% --- Put nonmusical text into variables
phraseImpatience = "Marque d'impatience du pauvre mari" 
phrasePoorHusband = "Le pauvre mari (son thème)"
phraseListen = "Ecoute-moi"
phraseMsThing = "Madame Chose a un parapluie en os"
phraseMissMachin = 
  "Mademoiselle Machin épouse un homme qui est sec comme un coucou" 
phraseMissMachinOne = "Mademoiselle Machin épouse un homme"
phraseMissMachinTwo = "qui est sec comme un coucou"
phraseSpeak = "Laissez moi parler" 
phraseWoodHat = "J'ai envie d'un chapeau en acajou massif" 
phraseListenTwo = "Ecoute-moi donc!"
phrasePainSide = "La concierge a mal dans les côtés" 
phraseHusbandDies = "La mari se meurt d'epuisement" 
textImpatience = ^ \markup { \italic \phraseImpatience }
textSpeak = _ \markup { \whiteout \phraseSpeak }
textWoodHat = _ \markup { \whiteout \phraseWoodHat }
textPainSide = _ \markup { \whiteout \phrasePainSide }
textHusbandDies = ^ \markup { \whiteout \italic \phraseHusbandDies }

% --- Musical text
ral = \markup { \italic ralentir }
pLie = \markup { \dynamic p \italic lié }
ppFaint = \markup { \dynamic pp \italic { en un pauvre souffle } }
md = \markup { \italic m.d. }
ms = \markup { \italic m.s. }

% -------------
% --- Music ---
% -------------

highVoice = \relative c'' {
  \mark "Vif"
  s8 s <ef f> -. \textImpatience <df fs>8 -. s s |
  s2. |
  s8 s <ef f> -. <df fs> -. s s |
  s2. |
  a8 -3 _ \phraseListen a8 -2 a -1 a -3 a a |
  a8 a a a a a |
  a8 a a a a a |
  
  \barNumberCheck #8
  
  s8 s \octaveUp d,8 ( ^ \phrasePoorHusband g4 ) g8 |
  g4. -.-- ~ g4 g8 |
  fs4 a8 d4 d8 |
  d2. ( |
  b4 ) \octaveOff s8 s f -2 a | \break
  g8 f a g f a | 
  g8 f a g f a -5 |
  g8 ^ \phraseMsThing f8 e d e f |
  
  \barNumberCheck #16
  
  g8 f e d e f |
  g8 f e d e f |
  g8 g g g g g ^ \< |
  g8 g g g g g |
  g8 c -5 b _ \f a g f |
  e8 -3 f g e f g |
  d8 c b -3 a b ^ \> c |
  b8 c d b c d |
  
  \barNumberCheck #24
  
  c8 g -1 a bf a \! g |
  s2. ^ \phraseMissMachinOne |
  s2. |
  s2. ^ \phraseMissMachinTwo |
  s2. * 4 |
  
  \barNumberCheck #32
  
  s8 s bf ( d4 -. ) d8 -. |
  d4. -.-- ~ d4 ( d8 |
  c4 e8 g4 ) g8 -. |
  g2. ( |
  f4 ) s8 s4. |
  s8 s <ef' f> -. <df fs> -. s s |
  s2. |
  s8 s <ef f> -. <df fs> -. s s |
  
  \barNumberCheck #40
  
  s2. |
  a8 a a a a a |
  a8 a a a a a |
  a8 a a a a a |
  s8 s \octaveUp \shapeOne d,8 ( g4 ) g8 |
  g4. -.-- ~ g4 ( g8 |
  fs4 a8 d4 _ \ral ) d8 ( |
  d2. |
  
  \barNumberCheck #48
  
  b4 ) \octaveOff s8 s4. \fermata | \break
  s2. | s | s | s | s |
  
  \barNumberCheck #54
}

upperMiddle = \relative c'' {
  b8 -2 _ \pLie a8 g b a g |
  a8 \textSpeak c8 b b -3 d g, |
  b8 a g b a g |
  a8 c b b d g, |
  s4. s8 s <c, ef> -. |
  <df fs>8 -. s <c ef> -. <df fs> -. s <c ef> -. |
  <df fs>8 -. s s s4. |
  
  \barNumberCheck #8
  
  a'8 \textWoodHat c b b -3 d g, |
  c8 -3 d e d df c |
  a8 -5 d c b d g |
  fs8 -3 e d a' g fs 
  g8 -1 d b g s <bf, ds> -. |
  <c e>8 -. s <bf ds> -. <c e> -. s <bf ds> -. |
  <c e>8 -. s <bf ds> -. <c e> -. s <bf ds> -. |
  <c e>8 -. s s s4. |
  
  \barNumberCheck #16
  
  s2. * 8 | 
  
  \barNumberCheck #24
  
  s2. * 4 | 
  s4. ^ \< f8 ef df \! | 
  cf8 ^ \> df ef df s s \! |
  s2. | s |
  
  \barNumberCheck #32
  
  s2. | s | s | s | 
  s4. c8 _ \md f a |
  b8 _ \ms a g b a g |
  a8 c b b d g, |
  b8 _ \phraseListenTwo a g b a g |
  
  \barNumberCheck #40
  
  a8 c b b d g, |
  s4. s8 s <c, ef> -. |
  <df fs>8 -. s <c ef> -. <df fs> -. s <c ef> -. |
  <df fs>8 -. s s s4. |
  a'8 \textPainSide c b b d g, |
  c8 d e d df c |
  a8 d c b d g |
  fs8 e d a' g fs |
  
  \barNumberCheck #48
  
  g4 s8 s4. |
  s2. * 5 |
  
  \barNumberCheck #54
}

lowerMiddle = \relative c' {
  s2. * 7 | 
  \barNumberCheck #8
  s2. * 8 | 
  \barNumberCheck #16
  s2. * 8 |
  
  \barNumberCheck #24
  
  s2. |
  s4. s8 s <af cs> -. |
  <bf d>8 -. s <af cs> -. <bf d> -. s <af cs> -. | \break
  <bf d> -. s s s4. |
  s2. |
  s4. s8 af gf |
  d8 \pp d d d d d |
  d8 d d s s s |
  
  \barNumberCheck #32
  s2. * 8 |
  \barNumberCheck #40
  s2. * 8 |
  
  \barNumberCheck #48
  
  s2. |
  <<
    {
      s8 s d ( _ \ppFaint \textHusbandDies \mark "Lent (tres)" g4 g8 |
      g4. ~ g4 g8 |
      fs4 af8 d4 d8 |
      d2. |
      bf2 ) s4 |
      
      \barNumberCheck #54
      
    } \\ {
      s4. d,4. ~ |
      d2. |
      ds2. |
      e2. ~ |
      e2 s4 |
      
      \barNumberCheck #54      
    
    }
  >>
}

lowVoice = \relative c' {
  s2. * 7 | 
  \barNumberCheck #8
  s2. * 8 |
  \barNumberCheck #16
  
  s8 s <af cs> -. <bf c> -. s s |
  s8 s <af cs> -. <bf c> -. s s |
  s2. |
  s2. |
  s8 s8 <g, g,> ( <c c,>4 ) q8 -. |
  <c c,>4. -> ~ q4 q8 -. |
  <b b,>4 -. <d d,>8 -. <g g,>4 -. q8 -. |
  <g g,>2. -> ( |
  
  \barNumberCheck #24
  
  <e e,>4 ) s8 s4. |
  f8 \p f f f f f |
  f8 f f f f f |
  f8 f f f f f |
  f8 a cs -3 s4. |
  s2. |
  s8 s <fs,, fs,> -. <ef ef,> -. s <fs fs,> -. |
  <ef ef,> -. s s c' -5 d e |
  
  \barNumberCheck #32
  
  fs8 g fs e fs g |
  fs8 a d, a' g f |
  e8 -5 a -2 g e b' a |
  g8 f -1 e d c b |
  d8 f a s s s |
  s2. | s | s |
  
  \barNumberCheck #40
  
  s2. * 8 |
  
  \barNumberCheck #48
  
  s2. |
  s4. <c, g c,>4. ~ |
  q2. |
  <c af c,>2. |
  <c fs, c>2. ~ |
  q2. |
  
  \barNumberCheck #54
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key c \major
  \time 6/8
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
    \tempo 4. = 144
  }
}

% --------------------
% --- Translations ---
% --------------------

\markup {
  \column {
    \line { Translations by \with-url #"http://translate.google.com" {Google Translate} and some research }
    \line { \null }
    \line { Title: }
    \line { \hspace #2 \bold { Chapitres Tournés en Tous Sens } - Chapters Turned in All Directions }
    \line { \null }
    \line { Subtitle: }
    \line { \hspace #2 \bold { Celle qui parle trop } - The one who talks too much }
    \line { \null }
    \line { Bar 1: }
    \line { \hspace #2 \bold { Vif } - Lively }
    \line { \hspace #2 \bold { lié } - connected }
    \line { \hspace #2 \bold \phraseImpatience - Mark of impatience in the poor husband }
    \line { \null }
    \line { Bar 2: }
    \line { \hspace #2 \bold \phraseSpeak - [Husband] Let me speak }
    \line { \null }
    \line { Bar 8: }
    \line { \hspace #2 \bold \phraseWoodHat - [Wife] I want a hat made of solid mahogony }
    \line { \hspace #2 \bold { pour la main droite seulement } - for the right hand only }
    \line { \null }
    \line { Bar 15: }
    \line { \hspace #2 \bold \phraseMsThing - [Wife] Ms. Thing has an umbrella made of bone }
    \line { \null }
    \line { Bar 25: }
    \line { \hspace #2 \bold \phraseMissMachin - }
    \line { \hspace #2 [Wife] Miss Machin is marrying a man who is dry as a cuckcou }
    \line { \null }
    \line { Bar 39: }
    \line { \hspace #2 \bold \phraseListenTwo - [Husband] Listen to me! }
    \line { \null }
    \line { Bar 44: }
    \line { \hspace #2 \bold \phrasePainSide - [Wife] The concierge hurts in the sides }
    \line { \null }
    \line { Bar 49: }
    \line { \hspace #2 \bold { Lent (tres) } - Very slow }
    \line { \hspace #2 \bold \phraseHusbandDies - The husband dies of exhaustion }
    \line { \hspace #2 \bold { en un pauvre souffle } - in one faint breath }
  }
}
