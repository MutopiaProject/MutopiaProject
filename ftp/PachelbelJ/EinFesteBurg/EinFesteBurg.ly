\version "2.16.2"

\paper {
  #(set-paper-size "letter" 'landscape)
  ragged-last-bottom = ##f
}

     
\header {
  title = "Ein feste Burg ist unser Gott"
  mutopiatitle = "Ein feste Burg ist unser Gott"
  composer = "Johann Pachelbel"
  mutopiacomposer = "PachelbelJ"
  source = "Breitkopf und Härtel, 1903"
  mutopiainstrument = "Organ"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Kevin DallaSanta"

 footer = "Mutopia-2014/01/07-1898"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

right = \relative c'' {
  \key d \major
  
  %% Fugue
  
  R1*3 | r4 a a a | d,4. e8 fis4 g~ | g fis e e |
  d8 e fis g a g16 fis e8 fis |
  
  << \new Voice {
       \voiceOne
       r2 r4 d' | d d a4. b8 cis4 d2 cis4 | b b a4. b8
       cis4 fis2 e8 d | cis4  d2 cis4 | d2~ d8 cis b4 | a2 r | R1*3 |
       a'2 a4 a | d,4. e8 fis4 g~ | g fis e e \mordent | 
       d4. cis16 b cis2 | b a4. b8 | cis b cis d e4 d8 cis |
       b4 cis d4. e8 | cis4. d8 b4. cis8 | ais fis b2 a4~ |
       a g2 fis4 | e2 fis8 e fis g | a4 b cis, d |
       e fis gis a~ | a gis a fis | g2 fis4 b~ | b a2 g4~ |
       g fis e e | d d' d d | a4. b8 cis4 d~ | d cis b b |
       a4. b8 gis4 a b8 cis d4. cis16 b cis4~ |
       
       %% Chorale
       cis b a b |
       a16 d a fis b d b g a a b cis d fis e d |
       cis d e d cis b cis gis a g' fis e d fis e d |
       e a g fis e cis d e fis g e fis d e cis d |
       b e d cis b gis a b cis d e d cis a b cis |
       d fis e fis d e cis d b d cis b e d cis b |
       cis e d e cis d b cis a d cis d cis8. \mordent b16 |
       cis d cis b cis a b cis d cis d b cis b cis d |
       e d e cis d cis d e fis g e fis d fis e d |
       e fis d e cis e d cis d e cis d b d cis b |
       cis d b cis a b g a fis fis' e fis d cis b a |
       b a b cis d a b a g b a b g fis g e |
       fis a g a fis d' cis d e d e cis d fis e fis |
       g4~ g16 fis g e fis4~ fis16 e fis d |
       e4~ e16 d e cis d4. cis8\laissezVibrer |
       cis4\repeatTie b a2~ |
       a16 fis g a d, d' cis b a e fis gis a cis b a |
       gis b a gis a b cis a d e cis d b d cis b |
       cis4 d16 fis e d cis d e d cis d b cis |
       a e fis g fis a fis d e8 a d,16 cis d e |
       fis d e fis g fis g e fis a g a fis fis' e d |
       cis4~ cis16 cis b cis d4~ d16 d cis d |
       e4~ e16 e d e fis g fis e fis d e fis |
       e8 d16 e cis e d cis d8 b16 cis d b cis a |
       b8 gis16 a b a b gis a e' d e cis e d e |
       fis4~ fis16 a g fis e4~ e16 g fis e |
       d2~ d16 fis e fis d e cis b |
       cis e d e cis d b cis a a' g fis e fis e d |
       cis a' g fis e fis e d cis d cis b cis a b gis |
       a gis a b cis a b cis d e fis e d e cis d |
       b a b cis d cis d e cis d e d cis d b cis |
       d e fis e d e cis d b d cis d b d cis b |
       ais cis b ais b4~ b16 b ais gis ais b gis ais |
       b a b cis d cis d b cis b cis d e d e cis |
       d fis e d e cis d e fis g e fis d fis e d |
       e fis d e cis e d cis d e cis d b d cis b |
       cis d b cis a b g a fis fis' e fis d cis b a |
       b a b cis d a b a g b a b g fis g e |
       fis d e fis g a b cis d a b c b a g a |
       fis d e fis g4 fis8 g fis e | <d fis>1 \bar "|." }
     
     \new Voice {
       \voiceFour
       

       g4. fis16 e fis2~ | fis8 e d e16 fis e4 fis8 gis |
       a g fis b16 a gis8 fis16 gis a4~ | a g4. fis16 e fis4 |
       e cis' b2| a a4. g8 | fis e fis g a4 g8 fis | e4 fis g fis8 e |
       fis2~ fis8 e16 d e8 fis | g2 fis e d |
       R1 | s2 d4 b8 e16 d | cis8 a d fis g fis16 g e8 a16 g |
       fis8 e fis g a e a4~ | a g2 fis4 | e2~ e8 a fis4 |
       gis a4. b8 g4~ | g8 a fis4. g8 e4~ | e d cis4. d8 |
       b2 cis8 a d4~ | d cis d d~ | d d a4. b8 | cis4 d2 cis4 |
       b b cis a b cis d2 | cis4 fis b, e | cis d2 cis4 |
       d8 e fis g a \change Staff = "lower" \stemUp a, b4
       \change Staff = "upper" \stemDown cis d g fis | gis a2 g4 |
       fis2 e |
       
       %% Chorale
       d4. e8 fis4 e | d4. e8 fis4 g |
       fis8 d g d fis2 | e4. d8 cis4 d | a'2. fis4 | gis2 a~ |
       a gis | a4. g8 fis4 e8. d16 |
       e fis e d e cis d e fis e fis d e d e fis |
       g fis g e fis e fis g a4 b~ | b a2 gis4 | a8 g fis e d2~ |
       d2. cis4 | d4~ d16 fis e fis g fis g e fis a g a |
       b a b g a4~ a16 g a fis g4~ |
       g16 fis g e fis4~ fis16 e fis d e4 |
       d4. e8 fis16 g fis e fis cis d e | d2 cis | d4 cis b2 |
       r16 e d e fis8 g a4 e8 d |
       cis4 d cis16 e cis \change Staff = "lower" \stemUp a b a b g |
       a fis g a b a b \change Staff = "upper" \stemDown cis d2 |
       r16 e d e fis4~ fis16 fis e fis g4 |
       r16 e fis gis a4~ a16 b a g a fis g a |
       g8 fis16 g e g fis e fis8 d16 e fis d e cis |
       d8 b16 cis d cis d b e4 a~ |
       a16 fis g a b4~ b16 e, fis gis a4~ |
       a16 b a b fis a gis fis gis2 | a4 e8 d cis4 r16 a' g fis |
       e fis e d cis d cis \change Staff = "lower" \stemUp b a
       \change Staff = "upper" \stemDown fis' e d e cis d b |
       cis b cis d e cis d e fis4. e8 |
       d16 cis d e fis e fis gis a4. g8 | fis2. e4~ |
       e d16 e d e cis2 |
       d16 cis d e fis e fis d e d e fis g fis g e |
       fis a g fis g4 a b~ | b a2 gis4 | a8 g fis e d2~ |
       d2. cis4 | \change Staff = "upper" \stemDown d8
       \change Staff = "lower" \stemUp c b a16 g fis4 g |
       a b16 a b g a8 b a g |
       
     }
     
     \new Voice {
       \voiceTwo
       s1*4 | s4 a'4 g2~ | g4 fis e2 | }
     >>
  
     
  
}

left = \relative c' {
  \key d \major
  \clef "bass"
  
  %% Fugue
  
  d2 d4 d | a4. b8 cis4 d~ | d cis b b | a4. b8 cis b cis a |
  b4 cis d b8 e cis a d2 cis4 | d4. cis16 b cis4. d8 |
  e d16 cis b8 cis d a d cis | b2 cis4 d | a b e4. fis8 |
  d b e d cis4 d | 
  << { a s4 s2 | s1 | d1 | cis4 d2 cis4 | d2~ d8 cis4 d8 |
       e2. d4~ | d cis2 b4 | cis b8 cis d a d cis |
       b a b \change Staff = "upper" \stemDown cis s2
       \stemUp \change Staff = "lower" R1*2 | d2 d4 d |
       a4. b8 cis4 d~ | d cis b b | a2 g | fis1 | g4. e8~ e4 fis8 g |
       a1 | R1 }
     \\
     { R1 | a2 a4 a | d,4. e8 fis4 g~ | g fis e e | d8 e fis d a'2 |
       e8 fis g e b'4. a8 | gis e a e fis d g4~ | g2 fis |
       g d4 r | R1*7 | r2 a2 | a4 a d,4. e8 | fis4 g2 fis4 |
       e d e2~ | e a | R1*2 | a'2 a4 a | d,4. e8 fis4 g~ |
       g fis e d | e2 e'~ | e4 d2 cis4 | b2 a4. g8 | }
  >>
  
  %% Chorale
  \repeat volta 2 {
    << { fis4 g d'2 } \\ { r2 d,_\markup{Ped.} } >>
    d d | a2. b4 | cis2 d~ | d cis | b b | a1 | r | r2 d |
    cis b | a b | g4 fis e2 | d1 | R1 |
    << { r2 r4 a''8. g16 } \\ {r1 } >>
  }
  << { fis4 g d' r4 } \\ {r2 d,, } >>
  fis4. g8 a2 | b4 a2 gis4 | a1 | R1 | r2 d, |
  a' b | cis d | R1 | r2 cis d cis | b1 | a | R1 | r2 b
  b a | b g | fis1 | R1 | r2 d' | cis b | a b | g4 fis e2 |
  d1~ | d~ | <d a''> \bar "|."  
}


\score {
  \new PianoStaff <<
  \set PianoStaff.instrumentName = #"Organ"
  \new Staff = "upper" \right
  \new Staff = "lower" \left
  >>
  \layout {
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
  \midi {}
}
