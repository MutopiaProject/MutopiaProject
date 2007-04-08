\version "1.4.3"

\header {
  title        = "French Suite V: Gavotte"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 816"
  style        = "Baroque"
  copyright    = "Public Domain"
  enteredby    = "Joel Mayes"
  lastupdated  = "2001/July/08"
  date         = "1722"

  mutopiatitle       = "Gavotte"
  mutopiacomposer    = "J. S. Bach (1685-1750)"
  mutopiaopus        = "BWV 816"
  mutopiainstrument  = "Harpsichord, Piano"
  maintainer         = "Joel Mayes"
  maintainerEmail    = "joel_mayes@dingoblue.net.au"

  footer = "Mutopia-2001/07/10-99"
  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}

Global = \notes {
  \property Staff.TimeSignature \override #'style = #'C
  \time 2/2
  \key g \major
  \partial 2
}

StaffDown = {
  \translator Staff = Lower
}

StaffUp = {
  \translator Staff = Upper
}

VoiceI = \notes \relative c''' { \voiceOne 
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
    g4-\arpeggio d b' g
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
    g e a4 fis4.-\prall g8
    g2
  }
}

VoiceII = \notes \relative c'' { \voiceTwo
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
    d4-\arpeggio r \stemDown \shiftOff d b
    g a8 b c4 a
    fis2 b4 fis
    dis dis8 e fis4 dis
    \StaffDown
    b b8 cis d4 b
    \StaffUp
    \property PianoStaff.followVoice = ##f    
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

VoiceIII = \notes \relative c' {
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

Extra = \notes \relative c' {
  \stemDown
  \repeat volta 2 {
    s2
    s1*7
    s2
  }
  \repeat volta 2 {
    fis4 fis
    a2 s2
    g4-\arpeggio s2.
    s1*8
    s2
  }
}

\score {
  \context PianoStaff <
    \property PianoStaff.followVoice = ##t
    \property PianoStaff.connectArpeggios = ##t
    \context Staff = Upper <
      \Global
      \clef treble
      \context Voice = i \VoiceI
      \context Voice = ii \VoiceII
      \context Voice = xtra \Extra
    >
    \context Staff = Lower <
      \Global
      \clef bass
      \context Voice = iii \VoiceIII
    >
  >
  \paper { }
  \midi { }
}