\version "2.14.2"

\include "nederlands.ly"

\header {
  title = "Praeludium IX"
  subtitle = "Das Wohltemperierte Clavier, I"
  composer = "Johann Sebastian Bach"
  opus = "BWV 854"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Piano"
  date = "around 1722"
  source = "Breitkopf & Hartel, 1866"
  copyright = "Public Domain"
  maintainerEmail = "bilbo(one)(two)(nine) @ googlemail.com"
  style = "Baroque"
  mutopiainstrument = "Piano, Harpsichord"

 footer = "Mutopia-2011/10/01-1791"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = {
  \key e \major
  \time 12/8
  #(set-global-staff-size 16)
}

right = \relative c'' {
  \global
  e,8 gis b e dis e cis\prall b cis e4. | b8\prall a b e4. a,8 b cis b cis a |
  gis b e gis4.~ gis8 fis e dis e cis | dis2.~\prall dis8 e fis gis cis, e | 
  fis, ais cis fis e fis gis, b dis e4. | fis,8 ais cis e dis e fis, ais cis d4.~ |
  d8 e d cis d b ais\prall gis fis g' fis eis | e! dis d cis16 dis e8 ais, 
  << { b2.~ | b8 }
    \\
    {\stemUp \shiftOnn dis,2. | s8}
  >> 
  dis' fis b a b cis, eis gis b4.~ | b8 gis a a fis gis gis eis fis eis16 fis gis8 cis,|
  << {d2.~ d4.~ d8 d cis | cis4.~  cis8 b a gis a b~ b a gis |
      a4.~ a8 b gis a4.~ a8 b16 a gis fis|}
    \\
    {r8 b gis eis gis fis gis b a b4.~ | b8 a gis fis4.~ fis4. eis4. | fis4.~ fis4 e8 dis4. r4 r8 }
  >>
  gis 16 fis e fis gis a b a gis a b cis d cis b a gis fis e8 r8 r |
  a8 cis e a gis a fis\prall e fis a4. | e8\prall dis e a4. d,!8 e fis e fis dis |
  cis a b cis4.~ cis8 b a gis a fis | gis e fis gis4.~ gis8 a b cis fis, a|
  b, dis fis b a b cis, e gis a4. | b,8 dis fis a gis a b, dis fis g4.~ |
  g8 a g fis g e dis cis b c' b ais | a! gis g fis16 gis a8 dis, 
  << { e2.~ | e2.~ e4.~ e4 dis8|}
    \\
    {s2. | r8 gis, b d cis d cis4.~ cis4 c8 |}
  >>
  e1. \bar "|."
}

left = \relative c' <<
  \global
  \new Voice {
    \voiceOne
    r4. gis4. a4.~ a8 gis fis | gis4.~ gis8 a gis fis2. |
    e8 gis b s4. r8 r8 cis8 fis4. | s2. r8 r b,8 e4.~ |
    e4. dis2.~ dis8 cis b | ais2.~ ais4. b4.~ b8 cis d e2.~ e8 dis cis|
    \mergeDifferentlyDottedOn
    b4.~ b8 ais e'!  s2.| s2. r8 gis,8 b d b cis~|
    \mergeDifferentlyDottedOff
    cis4. b4. bis 4. cis4. | r8 d,8 eis gis b gis s2. | 
    s4. a,4. b4. cis4. | fis,8 a cis s2. s4.|
    s1. | r4. cis'4. d4.~ d8 cis b | 
    cis4.~ cis8 d cis b2. |
    a,8 cis e s4. r8 r fis8 b4. | e,,8 gis b s4. r8 r e8 a4.~ |
    a4. gis2.~ gis8 fis e | dis2.~ dis4. e4.~ |
    e8 fis g a2.~ a8 gis fis | 
    \mergeDifferentlyDottedOn
    e4.~ e8 dis a'! gis e gis a gis a | 
    \mergeDifferentlyDottedOff
    e2. a,8 cis e a gis a | <b gis>1. 
     
  }
  \new Voice {
    \voiceTwo
    \relative c {
      e1.~ | e2.~ e4. dis4. |
      \mergeDifferentlyDottedOn 
      e4. e'8 dis e ais,2.| b,8 dis fis b ais b e,2. |
      \mergeDifferentlyDottedOff
      fis1.~ | fis4.~ fis4 cis8 d4.~ d8 e fis|
      g2. fis4.~ fis8 gis ais | b4 eis,8 fis4. b,8 dis fis b a b |
      gis4.~ gis8 fis gis eis2. | fis4. d4. dis4. cis4. |
      b2. b'8 gis fis gis16 a b8 eis,! | fis4. s2. s4. |
      s4. fis8 e fis b, dis fis b a b | e,8 gis b e d cis b4 a8 gis16 d'! cis b a gis |
      a2.~ a2.~ | a2.~ a4. gis4. | s4. a8 gis a dis,!2. |
      s4. e8 dis e a,2. | b1.~ |
      b4.~ b4 fis8 g4.~ g8 a b | c2. b4.~ b8 cis dis | 
      e4 ais,8 b4. cis2. | gis2. a2. | e1. 
    }
  } \bar "|."
  
>>

\score {
  \new PianoStaff \with {
    instrumentName = ""
    shortInstrumentName = ""
  } <<
    \new Staff = "right" \with {
      midiInstrument = "harpsichord"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "harpsichord"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}


