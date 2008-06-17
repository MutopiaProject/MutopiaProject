\version "2.11.46"

\header {
  title        = "French Suite V: Gavotte"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 816"
  style        = "Baroque"
  copyright    = "Public Domain"
  enteredby    = "Joel Mayes"
  lastupdated  = "2001/July/08"
  date         = "1722"

  mutopiatitle       = "French Suite no. 5 in G major"
  mutopiacomposer    = "BachJS"
  mutopiaopus        = "BWV 816"
  mutopiainstrument  = "Harpsichord, Piano"
  mutopiasource      = "Unknown"
  maintainer         = "Joel Mayes"
  maintainerEmail    = "joel_mayes@dingoblue.net.au"

 footer = "Mutopia-2008/06/17-99"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

Global =  {
  \override Staff.TimeSignature   #'style = #'C
  \time 2/2
  \key g \major
  \partial 2
}

StaffDown = {
  \change Staff = Lower
}

StaffUp = {
  \change Staff = Upper
}

VoiceI =  \relative c''' { \voiceOne 
  \repeat volta 2 {
    b4 g
    d e8 fis g4 e
    b2 e4 c
    a4 b8 c d b c a
    c b a g b'4 g
    e e8 fis g4 e
    cis d8 e fis d g e
    fis d a'4 g8 fis e fis d2
  }
  \repeat volta 2 {
    a4 d
    fis2 g8 fis e d
    g4\arpeggio d b' g
    e fis8 g a4 fis
    dis2 b8 cis dis e
    fis g fis e dis e fis g
    a b a g fis g a b
    c a b4 e, fis8 dis
    e2 b4 e
    g2 c,8 b a g 
    f' d e4 fis,!8 g a b
    c a b c d c d e
    a,2 c'4 a
    fis fis8 g a4 fis
    d d8 e fis g a fis 
    g e a4 fis4.\prall g8
    g2
  }
}

VoiceII =  \relative c'' { \voiceTwo
  \repeat volta 2 { 
    d4 b
    a2 b4 g
    fis2 g4 a
    fis r a r
    g r d' b
    cis cis8 d e4 cis
    a1~
    a4 d2 cis4
    d2
  }
  \repeat volta 2 {
    \stemUp
    s4 \shiftOn a
    d2 s2
    d4\arpeggio r \stemDown \shiftOff d b
    g a8 b c4 a
    fis2 b4 fis
    dis dis8 e fis4 dis
    \StaffDown
    b b8 cis d4 b
    \StaffUp
    \set PianoStaff.followVoice = ##f    
    s2 g'4 a
    g2 g4 b
    d2 s2
    s1*2
    fis,2 a'4 d,
    c2 c4 a
    fis2 c'2
    b4 c a2
    b2
  }
}

VoiceIII =  \relative c' {
  \repeat volta 2 {
    g4 g'
    fis fis, e e'
    d d, c c'
    d a fis d
    g d g,8 d' e fis
    g a g fis e d e fis
    g a b cis d4 cis
    d fis,8 g a4 a,
    d2
  }
  \repeat volta 2 {
    d'4 a
    g8 fis e d a'4 c
    b8 c b a g a b g
    c d c b a b c a
    b4 b,4 s2
    s1*2
    g'8 fis g a b4 b,
    e b e,8 fis g a
    b c d e f g a b
    c d c b a g fis e
    d c b a g a b c
    d a fis a d, e fis g
    a b a g fis g a b
    c d c b a b c d 
    e4 c d d,
    g2
  }
}

Extra =  \relative c' {
  \stemDown
  \repeat volta 2 {
    s2
    s1*7
    s2
  }
  \repeat volta 2 {
    fis4 fis
    a2 s2
    g4\arpeggio s2.
    s1*8
    s2
  }
}

\score {
  \context PianoStaff <<
    \set PianoStaff.followVoice = ##t
    \set PianoStaff.connectArpeggios = ##t
    \context Staff = Upper <<
      \Global
      \clef treble
      \context Voice = "i" \VoiceI
      \context Voice = "ii" \VoiceII
      \context Voice = "xtra" \Extra
    >>
    \context Staff = Lower <<
      \Global
      \clef bass
      \context Voice = "iii" \VoiceIII
    >>
  >>
  \layout { }
  \midi { }
}
