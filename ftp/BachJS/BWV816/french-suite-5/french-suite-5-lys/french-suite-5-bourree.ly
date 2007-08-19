\header {
  title        = "French Suite V: Bourr\\'ee"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 816"
  style        = "Baroque"
  copyright    = "Public Domain"
  enteredby    = "Joel Mayes"
  lastupdated  = ""
  date         = "1722"

  mutopiatitle       = "Bourree"
  mutopiacomposer    = "J. S. Bach (1685-1750)"
  mutopiaopus        = "BWV 816"
  mutopiainstrument  = "Harpsichord, Piano"
  maintainer         = "Joel Mayes"
  maintainerEmail    = "joel_mayes@dingoblue.net.au"

  footer = "Mutopia-2007/08/19-99"
  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}

Global = {
  \notes
  \key g \major
  \property Staff.TimeSignature \override #'style = #'C
  \time 2/2
  \partial 4
}

VoiceI = \notes \relative c'' {
  \repeat volta 2 {
    b8 d g4.-\mordent a8 a4.-\prall g16 a
    b4 a8 b g4 d8 b
    e4 c8 a fis4 d'8 a
    c b a b g a b d
    g4.-\mordent a8 a4.-\prallprall g16 a
    b4 a8 b g4 a8 c
    b4 e,8 g a4 b,8 d
    g4 cis,8 e fis4  d8 fis
    b4 a g8 fis g e d2.
  }
  \repeat volta 2 {
    a'8 fis
    d4. e16 fis fis4.-\prallprall e16 fis
    g2. d8 g
    c4 dis,8 fis b4 e,8 g
    fis e dis cis b4 a'8 fis
    b,4 g'8 e ais,4 g'8 e
    a,4 fis'8 dis gis,4 f'8 dis
    e4 fis b, dis-\turn
    e2. g8 e
    b4. c8 c4.-\prallprall b16 c
    d4 b8 d g4 b8 g
    e4 a,8 c d4 gis,8 b
    c4 b8 c a4 d8 a 
    b4 g8 b e4 g8 b,
    c4 a8 c fis4 a8 c,
    d4 b8 d g4 b8 g
    a g fis e d4 g8 d
    e4 a,8 c d4 e,8 g
    c4 fis,8 a b4 g8 b
    d b g'4 b, a8-\prall g
    g2.
  }
}

VoiceII = \notes \relative c' {
  \repeat volta 2 {
    r4
    r8 d b g fis c' a fis 
    g b g d b d b g
    c g e' c d a fis' d
    g4 d b d
    g,8 d'' b g fis c' a fis
    g b g d b g' d b
    g b cis e fis, a d4
    e,8 g a cis d e fis d
    g e fis d a'4 a,
    d8 a fis a d,4
  }
  \repeat volta 2 {
    r4
    r8 d'' a fis d a' fis d
    b b' g d b d b g
    a c a fis g b g e
    b'4 cis dis8 fis b dis,
    e g b d, cis e b' cis,
    dis fis a c b e, gis b
    c e c a b4 b,
    e8 b g b e,4 r
    r8 e'' b g e g c, e
    b b' g d b d g, b
    c e f4 b,8 d e4
    a,8 c e g fis a fis d
    g d b d g, b d e
    a e c e a, c fis a
    b g d g b, d g b
    d e d c b d b g
    c, e fis a b, d g4
    a,8 c d fis g d b d
    g d b g d'4 d,
    g2.
  }
}

\score {
  \context PianoStaff <
    \context Staff = Upper {
      \Global
      \clef treble
      \context Voice = i \VoiceI
    }
    \context Staff = Lower {
      \Global
      \clef bass
      \context Voice = ii \VoiceII
    }
  >
  \paper { }
  \midi { }
}
