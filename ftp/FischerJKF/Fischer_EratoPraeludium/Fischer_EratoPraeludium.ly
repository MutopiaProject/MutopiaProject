\include "deutsch.ly"

\header{
filename = 	  "Fischer_EratoPraeludium.ly"
title = 	  "Muse of poetry"
subtitle =	  "Erato"
subsubtitle =	  "Praeludium"
opus =            "Muse of poetry, erotic poetry in particular (Erato)"
composer = 	  "J. K. F. Fischer"
style =	          "Baroque"
maintainer = 	  "Rune Zedeler"
maintainerEmail = "rz@daimi.au.dk"
copyright = 	  "Public Domain"
mutopiatitle =    "Erato Praeludium"
mutopiacomposer = "FischerJKF"
mutopiainstrument = "Harpsichord, Piano"
source =          "Unknown"

 footer = "Mutopia-2013/02/21-128"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.0"

su = { \change Staff = up}
sd = { \change Staff = down}

melone =  \relative c'' {
  r16 e16 h a g h g fis e dis e fis g \voiceOne fis g a |
  h4 ~ h16 dis e fis g8. fis16 e4 ~ |
  e16 e d cis d4 ~ d16 d c  h c8. c16 |
  h4 ~ h16 a h c d g d c h d c h |
  \oneVoice a4 ~ a16 d a fis g 4 ~ g16 g fis e |
  fis a fis d s4 r16 d' a fis d fis d a |
  \voiceOne r16 d d fis fis a a c c a' a fis fis c c a |
  h2 ~ h16 h a g a c e, g |
  \oneVoice fis4 d' ~ d16 d c h c e g, h |
  a e cis e a,4 r16 c'! h a h d g, h |
  a4 g ~ g16 g fis e fis4 ~ |
  fis16 fis g a \voiceOne g4 ~ g16 g f e f e a fis |
  dis fis dis h h'4 ~ h16 h a g a4 ~ |
  a16 a g fis g8. g16 fis4 fis8. fis16 |
  e1 \bar "|."
}
meltwo =  \relative c' {
  r4
  \override VoiceFollower   #'style = #'dashed-line
  r16
  e16 h a g h g fis e \su \voiceTwo dis'! e fis |
  g4 ~ g16 fis g a h8. a16 g4 |
  fis4 ~ fis16 fis g a g4 ~ g16 e d8 |
  d4 ~ d16 fis g a h8. a16 g8 \sd \voiceOne d |
  cis16 e cis a d4 ~ d16 d cis h cis4 |
  d a16 d a fis s2 |
  \su s1 |
  \voiceTwo r16 g' g d d h h d e4 \showStaffSwitch \sd \voiceOne c4 ~ \hideStaffSwitch|
  c16 c h a h d fis, a g2 ~ |
  g4 ~ g16 g fis e fis4 g |
  fis16 c' h a h d g, h a4 ~ a16 a h c |
  h4 ~ h16 \su \voiceTwo e d! e c2 |
  h4 r16 dis e fis e4 ~ e8 fis |
  dis4 ~ dis16 dis e8 ~ e16 cis dis e dis8. dis16 |
  s1
}
melthree =  \relative c {
  \voiceTwo e1 |
  \oneVoice r16 e16 h a g h g fis e dis' e fis g fis g e |
  h'4. h8 e,4 e,8 fis |
  g16 g' d c h d h a g4. g'8 |
  \voiceTwo g4 fis e2 |
  d2 d2 |
  fis1 |
  g2 c, |
  d e |
  cis d |
  d1 |
  dis4 e
  <<
    {a2 | fis4 g ~ g8 e c'4 | h2 ~ h4 ~ h16 h a8 ~ | a16 a h a gis a
  fis a gis2}
    \\ {a,2 ~ | a4 g c ~ c16 c h a | h2 ~ h | <e, e'>1}
  >>
}


\score {

\context PianoStaff
 
<<
  \set PianoStaff.instrumentName = \markup {\huge \italic 1.}
  \set PianoStaff.midiInstrument = "harpsichord"
  \context Staff = "up"   <<
    \time 4/4 \key e \minor \clef G \melone>>
  \context Staff = "down" <<
    \time 4/4 \key e \minor \clef F \meltwo \melthree>>
>>

  \midi {
    \tempo 4 = 60
    }


  \layout {
     \context { % change horizontal spacing to fit onto a page
       \Score
       \override SpacingSpanner
        #'common-shortest-duration = #(ly:make-moment 1 8)
     }
     %line-width = 18.0 \cm
  }
}
