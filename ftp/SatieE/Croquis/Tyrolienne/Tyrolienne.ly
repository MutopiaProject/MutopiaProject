\version "2.19.21"
\language "english"

\header {
  title        = "Croquis & Agaceries D'un Gros Bonhomme En Bois"
  subtitle     = "Tyrolienne torque"
  composer     = "Erik Satie (1866-1925)"
  style        = "Avant-garde"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2015-May-30"
  date         = "1913"
  source       = "Paris: Demets, 1913. Plate E. 1789 D."

  mutopiatitle       = "Tyrolienne turque"
  mutopiacomposer    = "SatieE"
  mutopiainstrument  = "Piano"
  mutopiastyle       = "Modern"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2015/06/23-2024"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


% ------------------------------
% --- Changes from the score ---
% ------------------------------


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

% --- Musical text
lent = "Avec précaution et lent "
gosier = "Dans le le gosier"
chaud = "Un peu chaud"
yeux = "Du bout des yeux et retenu d'avance"
expression = "Beaucoup d'expression et plus lent"
impassible = "Impassible"
encore = "Encore"
saignant = "peu saignant"
retardez = "retardez"

% -------------
% --- Music ---
% -------------

highVoice = \relative {
  \tempo \lent
  s2. * 4 |
  
  \barNumberCheck #5
  r4 g'?8 _\gosier ( b d4 ) |
  r4 g,8 (c e4 ) |
  r4 f8 ( g? f g |
  e4 ) e8 ( d c4 ) |
  r4 g8 ( b d4 ) |
  r4 g,8 ( c e4 ) |
  g,!8 ( a g fs g e' |
  
  \barNumberCheck #12
  c4 _\chaud ) r e8 ( c |
  b8 d g4 ) g8 ( f |
  e8 g c4 ) e8 ( c |
  g'8 g, e' g g, e' |
  d8 c e4 ) e,8 ( c |
  b8 d g4 ) g8 ( f |
  e8 g c4 ) e8 ( c |
  g8 f' b g, f' b |
  c,4 ) g8 ( e' c4 ) |
  
  \barNumberCheck #21
  s2. * 4 |
  
  \barNumberCheck #25
  g,8 ^\expression (g' g, g' a,-> a' |
  b,8-> b' b, b' b, b' |
  g,8-> g' g, g' a,-> a' |
  b,8-> b' b, b' a,-> a' |
  g,8-> g' g, g' fs,-> fs' |
  e,8-> e' e, e' fs,-> fs' |
  g,8-> g' g, g' a,-> a' |
  fs,8-> fs' fs, fs' d,-> d' |
  
  \barNumberCheck #33
  g,8 g' g, g' a,-> a' |
  b,8-> b' b, b' b, b' |
  g,8-> g' g, g' a,-> a' |
  b,8-> b' b, b' a,-> a' |
  g,8-> g' g, g' fs,-> fs' |
  e,8-> e' e, e' a,-> a' |
  fs,8-> fs' fs, fs' d,-> d' |
  g,8 b d g b' d, |
  g,4 ~ g8 ) r r4 |
  
  \barNumberCheck #42
  s4 s ^\impassible s |
  s2. * 3 |
  
  \barNumberCheck #46
  r4 g,?8 ^\encore ( b d4 ) |
  r4 g,8 (c e4 ) |
  r4 f8 ( g? f g |
  e4 ) e8 ( d c4 ) |
  r4 g8 ( b d4 ) |
  r4 g,8 ( c e4 ) |
  g,!8 ( a g fs g e' |
  
  \barNumberCheck #53
  c4 _\saignant ) r e8 ( c |
  b8 d g4 ) g8 ( f |
  e8 g c4 ) e8 ( c |
  g'8 g, e' g g, e' |
  d8 c e4 ) e,8 ( c |
  b8 d g4 ) g8 ( f |
  e8 g c4 ) e8 _( c |
  g8 f' b \octaveUp d f d |
  c4 e,8 g' c,4 ) |
}

upperMiddle = \relative c'' {
  s2. * 4 |
  
  \barNumberCheck #5
  s2. |
  s2. |
  s4 <b, d gs> q |
  s4 << { \shiftOn <c e a>4 <c e> }
        \new Voice { \voiceTwo s4 ( b'8 a ) } 
     >> |
  s2. * 3 |
  
  \barNumberCheck #12
  s2. * 5 |
  f!8 ( a g f e d ) |
  s2. |
  s2. |
  s2 <g c e>4-.-- |
  
  \barNumberCheck #21
  s2. * 4 |
  
  \barNumberCheck #25
  s2. * 8 |
  
  \barNumberCheck #33
  s2. * 7 |
  s4 r <a c d> |
  <g b d>4-> ~ q8 r r4 |
  
  \barNumberCheck #42
  s2. * 4 |
  
  \barNumberCheck #46
  s2. |
  s2. |
  s4 <b, d gs> q |
  s4 << { \shiftOn <c e a>4 <c e> }
        \new Voice { \voiceTwo s4 ( b'8 a ) } 
     >> |
  s2. * 3 |
  
  \barNumberCheck #53
  s2. * 5 |
  f!8 ( a g f e d ) |
  s2. |
  s2. |
  s2 <g' c e>4-.-- |
}

lowerMiddle = \relative c' {
  \repeat unfold 4 { r4 << { g8 ( b f'4 ) } \\ { s4 <g, c> } >> | }
  
  \barNumberCheck #5
  s4 << { <gs f'>4 <gs! f'> } \\ { d'4 ( c8 b ) } >> |
  s4 << { <c e>4 q } \\ { a4 ( b8 a ) } >> |
  s2. |
  s2. |
  s4 << { <d f>4 q } \\ { c4 ( as8 b ) } >> |
  s4 << { <c e>4 q } \\ { b4 ( gs8 a ) } >> |
  s4 <f a d> <g b e> |
  
  \barNumberCheck #12
  s2. |
  s2. |
  s4 <c e>2 |
  s2. * 3 |
  s4 <c e>2 |
  s4 <b f'>2 |
  s2. |
  
  \barNumberCheck #21
  s8 a s a s c |
  s8 a s a s e' |
  s8 a, s a s c |
  s8 a s a s e' |
  
  \barNumberCheck #25
  s2. * 8 |
  
  \barNumberCheck #33
  <e, g c>4 s s |
  s2. * 8 |
  
  \barNumberCheck #42
  \repeat unfold 4 { r4 << { g8 ( b f'4 ) } \\ { s4 <g, c> } >> | }
  
  \barNumberCheck #46
  s4 << { <gs f'>4 <gs! f'> } \\ { d'4 ( c8 b ) } >> |
  s4 << { <c e>4 q } \\ { a4 ( b8 a ) } >> |
  s2. |
  s2. |
  s4 << { <d f>4 q } \\ { c4 ( as8 b ) } >> |
  s4 << { <c e>4 q } \\ { b4 ( gs8 a ) } >> |
  s4 <f a d> <g b e> |
  
  \barNumberCheck #53
  s2. |
  s2. |
  s4 <c e>2 |
  s2. * 3 |
  s4 <c e>2 |
  s4 <b f'>2 |
  s2. |
}

lowVoice = \relative c, {
  \repeat unfold 4 { <g g'>4-. r <f f'>-. | }
  
  \barNumberCheck #5
  <g g'>4-> s2 |
  g'?4-. s2 |
  g4-. s2 |
  g4-. s2 |
  g4-. s2 |
  g4-. s2 |
  g,!4-. s2 |
  
  \barNumberCheck #12
  c8 ( g' e' g c e |
  \staffUp f!8 a g f e d ) | \staffDown
  c,4-. fs ( g ) |
  e,4-. <g' b e> q |
  c,,4-. <g'' c e> q |
  s2. |
  c,4-. fs ( g ) |
  df4-. af' ( g ) |
  c,4-. <g' c e>-. s |
  
  \barNumberCheck #21
  \autoBeamOff
  <a,, a'>8^. ^\yeux [ a''^. ] <a,, a'>^. [ a''^. ] <c,, c'>^. [ c''^. ] |
  <a,, a'>8^. [ a''^. ] <a,, a'>^. [ a''^. ] <e, e'>^. [ e''^. ] |
  <a,,, a'>8^. [ a''^. ] <a,, a'>^. [ a''^. ] <c,, c'>^. [ c''^. ] |
  <a,, a'>8^. [ a''^. ] <a,, a'>^. [ a''^. ] <e, e'>^. [ e''^. ] |
  \autoBeamOn
  
  \barNumberCheck #25
  <g,,, g'>4 r <f'' g b d>-. |
  <e g b e>4-> r r |
  <g,, g'>4-> r <fs'' a cs e>-. |
  <f! a b ds>4-> r r |
  <e,, e'>4-> r <d''! e gs b>-. |
  <a e' c'>4-> r <af' c d>-. |
  <bf d>4-> r <es, b'! cs>-. |
  <fs a cs>4-> r <f! af b>-. |
  
  \barNumberCheck #33
  <g,, g'>4-> r <f'' g b d>-. |
  <e g b e>4-> r r |
  <g,, g'>4-> r <fs'' a cs e>-. |
  <f! a b ds>4-> r r |
  <e,, e'>4-> r <d''! e gs b>-. |
  <a e' c'>4-> r r |
  d,,8 ( d' a' d fs a |
  <g,, g'>4-> ) s s |
  s2. |
  
  \barNumberCheck #42
  <g g'>4-. r <f! f'!>-. |
  \repeat unfold 3 { <g g'>4-. r <f f'>-. | }
  
  \barNumberCheck #46
  <g g'>4-> s2 |
  g'?4-. s2 |
  g4-. s2 |
  g4-. s2 |
  g4-. s2 |
  g4-. s2 |
  g,!4-. s2 |
  
  \barNumberCheck #53
  c8 ( g' e' g c e |
  \staffUp f!8 a g f e d ) | \staffDown
  c,4-. fs ( g ) |
  e,4-. <g' b e> q |
  c,,4-. <g'' c e> q |
  s2. |
  c,4-. fs ( g ) |
  df4-. af' ( g ) |
  c,4-. <g' c e>-. s |
}

% --- Includes musical terms
dynamics = {
  s8 \p s8 s2 |
  s2. * 3 |
  
  \barNumberCheck #5
  s2. * 7 |
  
  \barNumberCheck #12
  s2. * 9 |
  
  \barNumberCheck #21
  s2. * 4 |
  
  \barNumberCheck #25
  s2. * 8 |
  
  \barNumberCheck #33
  s2. * 9 |
  
  \barNumberCheck #42
  s2. * 4 |
  
  \barNumberCheck #46
  s2. * 7 |
  
  \barNumberCheck #53
  s2. * 6 |
  s2 s4 -\retardez |
  s2. |
  s2. |
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key c \major
  \time 3/4
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
  %top-margin = 8\mm                              %-minimum top-margin: 8mm
  %top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
  %markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
  %top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  %last-bottom-spacing.basic-distance = #11       %-pads music from copyright block
  
  % --- Set these to false after all editing is finished
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f
}

\score {
  \new PianoStaff \with {
    %\override StaffGrouper.staff-staff-spacing.padding = #5
  } <<
    \new Staff = "upper" \upper
    \new Dynamics { \global \dynamics }
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
    \tempo 4 = 120
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
    \line { \hspace #2 \bold { Croquis & Agaceries D'un Gros Bonhomme En Bois } - Sketch & Teasing Of A Big Wooden Man }
    \line { \null }
    \line { Subtitle: }
    \line { \hspace #2 \bold { Tyrolienne turque } - Turkish Tyrolean }
    \line { \null }
    \line { Musical Terms: }
    \line { \hspace #2 \bold \lent - Carefully and slowly }
    \line { \hspace #2 \bold \gosier - In the throat }    
    \line { \hspace #2 \bold \chaud - A little hot }
    \line { \hspace #2 \bold \yeux - After the eye and held in advance }
    \line { \hspace #2 \bold \expression - Very expressively and slower }
    \line { \hspace #2 \bold \impassible - Impassive }
    \line { \hspace #2 \bold \encore - Again }
    \line { \hspace #2 \bold \saignant - Slightly bloody }
  }
}
