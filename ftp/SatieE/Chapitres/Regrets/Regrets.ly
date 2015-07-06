\version "2.18.2"
\language "english"

\header {
  title        = "Chapitres Tournés en Tous Sens"
  subtitle     = "Regrets des Enfermés (Janas at Latude)"
  composer     = "Erik Satie (1866-1925)"
  style        = "Avant-garde"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2015-May-24"
  date         = "1913"
  source       = "Paris: E. Demets, 1913. Plate E. 1113 D."

  mutopiatitle       = "Regrets des Enfermés (Janas et Latude)"
  mutopiacomposer    = "SatieE"
  mutopiainstrument  = "Piano"
  mutopiastyle       = "Modern"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2015/06/24-2027"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

% -------------
% --- Notes ---
% -------------

% Because of Satie's dislike of time signatures and bar lines, some of the
% rhythms and phrasings are ambiguous.  I have attempted to make the 
% engraving as well as the MIDI file look and sound as I might interpret
% the phrasing.  Other interpretations are also valid.

% ------------------------------
% --- Changes from the score ---
% ------------------------------

% Bar 28: Added bass clef 
% Bar 36: Changed f,4 to f,8
% Bar 38: Change last beat s8 to r8

% -------------------
% --- Definitions ---
% -------------------

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

% --- Put nonmusical text into variables
textOmbre = "Ils sont assis dans l'ombre" 
textReflect = "Ils réfléchissent"
textMarin = "Jonas dit: Je suis le Latude marin"
textFrancais = "Latude dit: Je suis le Jonas français"
textSoleil = "Il leur semble qu'ils voient le bon vieux soleil"
textSortir = "Ils ne pensent qu'à sortir"

% --- Musical text
modere = "Soyez modéré"
sortez = "Sortez"
apparent = "Apparent"
dehors = "Dehors"
sombre = "Sombre"
temps = \markup { \center-column { "Temps court" (espace) } }
phraseRetenant = "en retenant"
retenant = \markup { \italic { \phraseRetenant } }
phraseImpression = "Elargissez votre impression"
impression = \markup { \italic { \phraseImpression } }

% -------------
% --- Music ---
% -------------

highVoice = \relative c' {
  \tempo \modere
  \autoBeamOff
  \partial 8 s8
  s2 * 4 |
  
  \barNumberCheck #5
  <d f bf>8-. ^\textOmbre s <e g>-. s |
  <d f d'>8-. s <c ef g>-. s |
  <d f bf>8-. s <e? g>-. s |
  <d f d'>8-. s <c ef g>-. s |
  <a c a'>8-. s <g bf d>-. s |
  <a c a'>8-. s <g bf d>-. s |
  <a c a'>8-. s <g bf d>-. s |
  <a c a'>8-. s <g bf d>-. s |
  
  \barNumberCheck #13
  s8 a' ( c [ d ] |
  e!4 a |
  e8 [ f? e d ] |
  c4 b |
  a8 ) \bar "" \break
  
  \barNumberCheck #17
  s s4 ^\textReflect |
  s2 |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #21
  \time 2/4
  <ds, fs ds'>8-. s <cs e gs>-. s |
  <ds fs ds'>8-. s <cs e gs>-. s |
  <ds fs ds'>8-. s <cs e gs>-. s |
  \time 3/4
  <ds fs ds'>8-. s <cs e gs>-. \bar ""
  
  \barNumberCheck #24
  c'!8 ( e [ f! ] |
  \time 2/4
  g4 c |
  g8 [ a! g f ] |
  e?4 d |
  c8 ) \bar ""
  
  \barNumberCheck #28
  f,8 ^\pp ( ef [ d ] |
  c8 ) f ( ef [ d ] |
  c8 ) f ( ef [ d ] |
  c8 ) f ( ef [ d ] |
  c8 ) \bar ""
  
  \barNumberCheck #32
  s8 ^\textMarin s4 |
  bf'4-> a-> |
  g4-> f-> |
  e4-> c-> |
  <f, a d>8 \bar ""
  
  \barNumberCheck #36
  s8 ^\textFrancais s4
  <a cs e>8-. r <a d f>-. r |
  <bf d f bf>4-> s |
  \time 3/4
  <c g' c>8-. r <f a d f>-. r <g c e g>-. r |
  
  \barNumberCheck #40
  \time 2/4
  <fs' a fs'>8-. ^\pp s <e g b>-. s |
  <d f! d'>8-. ^\< s <c? ef g>-. s |
  <bf df bf'>8-. s <af cf ef>-. s |
  <fs a! fs'>8-. s \! <e! g! b!>-. s |
  <fs a fs'>8-. s <e g b>-. s |
  <fs a fs'>8-. s <e g b>-. \bar ""
  
  \barNumberCheck #45
  s8 |
  s2 * 3 |
  \time 3/4
  s4 s8 \bar ""
  
  \barNumberCheck #49
  \clef bass
  ef,,8 ( g [ af ] |
  \time 2/4
  bf4 ef |
  bf8 [ c bf af ] |
  g4 f |
  ef8 ) s4. |
  
  \barNumberCheck #54
  \clef treble
  fs''8 ^\f [ fs fs gs ] ( |
  fs4 cs ) |
  \clef bass
  <e,? gs cs>8-. r <es as cs>-. r |
  <e! gs cs>8-. r <es as cs>-. r |
  e'8 ( [ ds cs fs ] |
  ds8 [ cs ] b ) r |
  
  \barNumberCheck #60
  \clef treble
  s8 s ^\< s4 |
  <g''? b>8-. s <a cs>-. s \! |
  <b d>2-> |
  <c! e>8-. s <b d>-. s |
  <a c?>8-. s <g! b>-. s |
  <f! a>8-. s <e g>-. s |
  <d f!>8-. s8 s4 |
  s8 \bar "" \break
  
  \barNumberCheck #67
  g, ^\textSortir \p ( b [ c ] |
  d4 g ^\< |
  d8 [ e d c ] \! |
  b4 a |
  b2-> ) ^\f |
  
  \barNumberCheck #72
  s2 ^\impression |
  s2 * 3 |
}

upperMiddle = \relative c'' {
  \partial 8 s8
  s2 * 4 |
  
  \barNumberCheck #5
  s2 * 8 |
  
  \barNumberCheck #13
  s2 |
  c4 ( c |
  b?4 b |
  gs4 a |
  a8 ) \bar "" \break
  
  \barNumberCheck #17
  s s4 |
  s2 |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #21
  \time 2/4
  s2 * 3 |
  \time 3/4
  s4 s8 \bar ""
  
  \barNumberCheck #24
  s8 s4 |
  \time 2/4 
  f'4 f |
  df4 c |
  bf2 |
  bf8 \bar ""
  
  \barNumberCheck #28
  s8 s4 |
  s2 * 3 |
  s8 \bar ""
  
  \barNumberCheck #32
  s8 s4 |
  s8 <d,? f> s <c f> |
  s8 <c e> s <a d> |
  s8 <bf c> s <e, bf'!> |
  s8 \bar ""
  
  \barNumberCheck #36
  s8 s4 |
  s2 |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #40
  \time 2/4
  cs''4 ( b |
  a4 g |
  f?4 ef |
  df4 cf |
  df4 cf |
  df4 cf8 ) \bar ""
  
  \barNumberCheck #45
  s8 |
  s2 * 3 |
  \time 3/4
  s4 s8 \bar ""
  
  \barNumberCheck #49
  s8 s4 |
  \time 2/4  
  s2 * 4 |
  
  \barNumberCheck #54
  s2 * 4 |
  \clef bass
  <gs b>8-. s <e! a!>-. s |
  <fs b>8-. s <ds gs>8-. s |
  
  \barNumberCheck #60
  \clef treble
  r8 a'' ( cs d! |
  e4 fs |
  g!2-> ) |
  a8 ( [ gs g fs ] |
  f!8 [ e ds d ] |
  cs8 [ c b bf ] |
  a8 ) 
  
  \barNumberCheck #67
  s s4 |
  s2 |
  g4 gs |
  a b8 a |
  gs4 fs |
  gs2 |
  
  \barNumberCheck #72
  s2 * 4 |
}

lowerMiddle = \relative c' {
  \autoBeamOff
  \partial 8 s8
  <af d>4 ( <bf e> |
  <af d>4 <bf e> |
  <af d>4 <bf e> |
  <af d>4 <bf e>8 ) s8 |
  
  \barNumberCheck #5
  s2 * 8 |
  
  \barNumberCheck #13
  s2 |
  \clef treble
  g'4 ( fs |
  g4 fs |
  e4 f! |
  fs8 ) \bar "" \break
  
  \barNumberCheck #17
  \clef bass
  s8 <ef, af>4 ( |
  <f bf>4 <ef af> |
  <f bf>4 <ef af> |
  \time 3/4
  <f bf>4 <ef af> <f bf>8 ) s | \break
  
  \barNumberCheck #21
  \time 2/4
  s2 * 3 |
  \time 3/4
  s4 s8 \bar ""
  
  \barNumberCheck #24
  s8 s4 |
  \clef treble
  \time 2/4
  df''4 ( c |
  b!4 a!4 |
  g4 fs |
  g8 ) \bar ""
  
  \barNumberCheck #28
  s8 s4 |
  s2 * 3 |
  s8 \bar ""
    
  \barNumberCheck #32
  s8 s4 |
  s2 * 3 |
  s8 \bar ""
  
  \barNumberCheck #36
  s8 s4 |
  s2 |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #40
  \time 2/4
  s2 * 5 |
  s4 s8 \bar ""
  
  \barNumberCheck #45
  s8 ^\p |
  <cs,, fs>4 ( <d? g!>4 |
  <cs fs>4 <d? g!>4 |
  <cs fs>4 <d? g!>4 |
  \time 3/4
  <cs fs>4 <d g>8 ) \bar ""
  
  \barNumberCheck #49
  s8 s4 |
  \time 2/4
  s8 af, ( bf [ c ] |
  df8 ) af ( bf [ c ] |
  df8 ) af ( bf [ c ] |
  df8 ) af ( bf [ c ] |
  
  \barNumberCheck #54
  df8 ) s s4 |
  s2 * 5 |
  
  \barNumberCheck #60
  s4 s ^\textSoleil
  s2 * 6 |
  
  \barNumberCheck #67
  s2 |
  d''4 ef |
  f4 fs |
  e!8 s s4 |
  s2 |
  
  \barNumberCheck #72
  <g,! c f>2-.-- |
  <f a d>2-.-- |
  <e g c>2-.-- ~ |
  q4 s |
}

lowVoice = \relative c {
  \autoBeamOff
  \partial 8 c8 ( 
  e8 [ f ] g ) c, ( |
  e8 [ f ] g ) c, ( |
  e8 [ f ] g ) c, ( |
  e8 [ f ] g ) s |
  
  \barNumberCheck #5
  bf4 ( c |
  a4 g ) |
  bf4 ( c |
  a4 g |
  f4 ef |
  f4 ef |
  f4 ef |
  f4 ef ) |
  
  \barNumberCheck #13
  s2 |
  \clef treble
  c'4 ( d |
  e4 b |
  d2 |
  cs8 ) \bar "" \break
  
  \barNumberCheck #17
  \clef bass
  g,!8 ( b? [ c? ] |
  d8 ) g, ( b [ c ] |
  d8 ) g, ( b [ c ] |
  \time 3/4
  d8 ) g, ( b [ c ] d ) s |
  
  \barNumberCheck #21
  \time 2/4
  b'!4 ( a! |
  b4 a |
  b4 a |
  \time 3/4
  b4 a8 ) \bar ""
  
  \barNumberCheck #24
  s8 s4 |
  \clef treble
  \time 2/4
  bf'4 ( af |
  f4 ef |
  d?2 |
  e?8 ) \bar ""
  
  \barNumberCheck #28
  \clef bass
  s8 <g, b!>4 ( |
  <f a?>4 <g b> |
  <f a>4 <g b> |
  <f a>4 <g b> |
  <f a>8 ) \bar ""
  
  \barNumberCheck #32
  f,8 ^\p ( a [ bf ] |
  c4 f |
  c8 [ d c bf ] |
  a4 g |
  f8 ) \bar ""
  
  \barNumberCheck #36
  <d, d'>8-. <f f'>-. [ <g g'>-. ] |
  <a a'>8-. r <d d'> r |
  <g, g'>8-. [ <a a'>-. <g g'>-. <f f'>-. ] |
  \time 3/4
  <e e'>8-. r <d d'>-. r <c c'> r |
  
  \barNumberCheck #40
  \time 2/4
  s2 * 5 |
  s4 s8 \bar ""
  
  \barNumberCheck #45
  e'?8 ( |
  gs8 [ a ] b ) e, ( |
  gs8 [ a ] b ) e, ( |
  gs8 [ a ] b ) e, ( |
  \time 3/4 
  gs8 [ a ] b ) \bar ""
  
  \barNumberCheck #49
  s8 s4 |
  \time 2/4
  s2 * 4 |
  
  \barNumberCheck #54
  s4 <b'! d!> ( |
  <a? c?> <gs b> ) |
  <cs,, cs'>8-. r <as as'>-. r |
  <cs cs'>8-. r <as as'>-. r |
  <e! e'!>8-. s <a! a'!>-. s |
  <b b'>8-. s <gs gs'>-. r |
  
  \barNumberCheck #60
  s2 * 7 |
  
  \barNumberCheck #67
  s2 |
  b''4 ( c |
  d4 -\retenant b |
  e!4 b |
  e2-> ) |
  
  % \barNumberCheck #72
  \grace { c,,,8 [ g'! c ] } <c g'! c>2 |
  \grace { a,8 [ f' c' ] } <c f c'>2 |
  \grace { a,8 [ g' c ] } <c g' c>2 ~ |
  q4 s |
}

% --- Includes musical terms
dynamics = {
  \partial 8 s8 \pp 
  s2 * 4 | 
  
  \barNumberCheck #5
  s2 -\sortez
  s2 * 7 |
  
  \barNumberCheck #13
  s8 s \p s4 |
  s2 * 3 |
  s8 \bar ""
  
  \barNumberCheck #17
  s8 \pp s4 |
  s2 |
  s2 |
  \time 3/4
  s2. |
  
  \barNumberCheck #21
  \time 2/4
  s8 \p s -\apparent s4
  s2 |
  s2 |
  \time 3/4
  s4 s8 \bar ""
  
  \barNumberCheck #24
  s8 s4 |
  \time 2/4
  s2 * 3 |
  s8 \bar ""
    
  \barNumberCheck #28
  s8 s4 |
  s2 * 3 |
  s8 \bar ""
  
  \barNumberCheck #32
  s8 s4 |
  s2 |
  s4. s8 \>
  s2 |
  s8 \bar ""
  
  \barNumberCheck #36
  s8 \f s4 |
  s2 |
  s8 \< s4. |
  \time 3/4
  s2 s4 \! |
  
  \barNumberCheck #40
  \time 2/4
  s2 -\dehors |
  s2 * 4 |
  s4 s8 \bar ""
  
  \barNumberCheck #45
  s8 -\sombre |
  s2 * 3 |
  \time 3/4
  s4 s8
  
  \barNumberCheck #49
  s8 \pp s4 |
  \time 2/4
  s2 * 4 |
  
  \barNumberCheck #54
  s2 |
  s2 |
  s2 \pp |
  s2 |
  s2 \p \< |
  s2 \! |
  
  \barNumberCheck #60
  s8 s8 \f s4 |
  s2 |
  s2 |
  s2 \pp  |
  s2 |
  s2 |
  s8 s -\temps s4 |
  
  \barNumberCheck #67
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
    \tempo 4 = 80
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
    \line { \hspace #2 \bold { Regrets des Enfermés (Janas et Latude) } - Regrets of the Shut-ins (Janas and Latude) }
    \line { \null }
    \line { Musical Terms: }
    \line { \hspace #2 \bold \modere - Be moderate }
    \line { \hspace #2 \bold \sortez - Get out }
    \line { \hspace #2 \bold \apparent - Apparent }
    \line { \hspace #2 \bold \dehors - Outdoors }
    \line { \hspace #2 \bold \sombre - Dark }
    \line { \hspace #2 \bold { Temps court (espace) } - Short time (space) }
    \line { \hspace #2 \bold \phraseRetenant - Holding back }
    \line { \hspace #2 \bold \phraseImpression - Broaden your feeling }
    \line { \null }
    \line { Nonmusical Terms: }
    \line { \hspace #2 \bold \textOmbre - They sit in the shade }    
    \line { \hspace #2 \bold \textReflect - They reflect }
    \line { \hspace #2 \bold \textMarin - Jonas said, I am the sailor Latude }
    \line { \hspace #2 \bold \textFrancais - Latude said, I am the Frenchman Jonas }
    \line { \hspace #2 \bold \textSoleil - It seems to them that they see the good old sun }
    \line { \hspace #2 \bold \textSortir - They think only of getting out }
  }
}
