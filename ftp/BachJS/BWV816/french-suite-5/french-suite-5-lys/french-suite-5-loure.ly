\header {
  title        = "French Suite V: Loure"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 816"
  style        = "Baroque"
  copyright    = "Public Domain"
  enteredby    = "Joel Mayes"
  lastupdated  = "2001/Jul/07"
  date         = "1722"

  mutopiatitle       = "Loure"
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
  \time 6/4
  \partial 8*3
  \property PianoStaff.connectArpeggios = ##t
}

StaffUp = {
  \translator Staff = Upper
  \stemDown
}

StaffDown = {
  \translator Staff = Lower
  \stemUp
}

NoCut = {
  \property Grace.Stem \override #'flag-style = #'()
}
VoiceI = \notes \relative c'' { \voiceOne
  \repeat volta 2 {
    d8 b4
    \grace { \NoCut a8} g2.~ g4. a8 b4
    a2.~ a4. b8 c4
    d4. g8 e4 c4.-\prall b8 c16 a b8
    b4.-\prall a8 g4 g4.\arpeggio b8 d4
    g4.-\mordent a8 b4 \grace{ \NoCut d,8} c4. e8 a4
    dis,16 e fis g a c b a g a fis8 g2.~
    g4. e8 fis 4 a, b cis 
    d2.~ d4.
  }
  \repeat volta 2 {
    a'8 fis4
    \grace { \NoCut e8} d2.~ d4. e8 fis4
    g2.~ g4. a8 b4
    c16 b a gis a8. e16 f4 \grace { \NoCut c8} b4. f'8 e4
    c4.-\prall b8 a4 a4~ a16 c b a e'4
    fis,4. a8 c4~ <c d,>~ d,16 fis e d b'4
    a4. e'8 a4~ a~ a16 a g fis g4
    c,16 b a g fis e' d c d4 d, e fis g2.~ g4.
  }
}

VoiceXa = \notes \relative c' {
  \shiftOn
  \repeat volta 2 {
   s4.
    s1.*3
    s2. d4.\arpeggio s4.
    s2. a'2 s4
    s1.*2
    a2.~ a4.
  }
  \repeat volta 2 {
    s4.
    s1.
    \property Voice.Rest \override #'extra-offset = #'(0.0 . -5.0)
    \stemUp \tieUp \shiftOff
    r8 [d8 b g] s1
    \property Voice.Rest \revert #'extra-offset
    s1.*5
    \shiftOn
    d2.~ d4.
  }
}
VoiceXb = \notes \relative c'' {
  \repeat volta 2 {
    s4.
    s1.*7
    s1 s8
    }
  \repeat volta 2{
    \stemUp
    \tieUp
    s4.
    s1.
    s4
    \property Voice.Stem \override #'thickness = #0.0
    \property Voice.NoteHead \override #'transparent  = ##t
    b4 ~
    \property Voice.Stem \revert #'thickness
    \property Voice.NoteHead \revert #'transparent
    \shiftOnn
    b~ b4  s2
    s1.*5
    s1 s8
  }
}

VoiceXc = \notes \relative c'' {
  \repeat volta 2 {
    s4.
    s1.*7
    s1 s8
    }
  \repeat volta 2{
    \stemUp
    \tieUp
    s4.
    s1.
    s8
    \property Voice.Stem \override #'thickness = #0.0
    \property Voice.NoteHead \override #'transparent  = ##t
    \property Voice.Dots \override #'transparent = ##t
    d4.~
    \property Voice.Stem \revert #'thickness
    \property Voice.NoteHead \revert #'transparent
    \property Voice.Dots \revert #'transparent
    \shiftOn
    d4~ d4 s2
    s1.*5
    s1 s8
    }
}
VoiceII = \notes \relative c' { \voiceTwo
  \repeat volta 2 {
    s4.
    \StaffDown \stemDown r4 r8 d8 b4 \grace { \NoCut a8} g4. fis8 g16 b \StaffUp d g
    fis2.~ fis4. g8 a4~
    a g2~ g4 fis 2
    g2. b,4.\arpeggio s
    s2. e2 s4
    s2. r4 r8 e'8 cis4 \grace{ \NoCut b8} a2. g4 fis e
    fis2.~ fis4.
  }
  \repeat volta 2 {
     s4.
     r4 r8 a fis4~ fis4. g8 a4
     \tieDown
     d,4. g8~ g4~ g4 s2
     \tieBoth
     r4 r a~ a2 gis4
     a2 s1
     s1.
     s2. b2.
     s2. c,4 b a
     b2.~ b4.
   }
}

VoiceIII = \notes \relative c { \voiceThree
  \repeat volta 2 {
    r8 r4
    s1.
    r4 r8
    a fis4 \grace { \NoCut e8} d4. d'8 c4
    b e c a16 c b a d4 d,4
    g b d g2 r4
    r16 g, a b c d e fis g b a g g4~ g16 b a g fis g e8
    fis4 dis b \stemDown r16 e g fis e d cis d e cis d e
     fis,2 s4 s \stemBoth g a
    d4. a8 fis4 d4.
  }
  \repeat volta 2 { \stemDown
  s4.
  s1.
  s2. f'2.
  e4 f d e2.
  r4 e c a b c
  \stemBoth
  d,8 a' d e16 fis e8 fis16 g fis8 g16 a d,8 fis \stemDown \tieDown g4~
 [ g8 g fis e dis e] dis e16 fis s2
  r4 r8 fis c4 b c d
  g,4. b8 d4 g4.

  }
}

VoiceXd = \notes \relative c {
  \stemUp
  \repeat volta 2 {
  s4.
  s1.*6
  r8 [a b cis d e] fis4 s2
  s1 s8
  }
  \repeat volta2 {
    r8 r4
    \stemUp \tieUp
    s2. c'2.
    b4. d8 d4~ d4. c8 d4~
    d c b~ b b e
    a,2. s2.
    s1 s4 r8 b
    c4 s2. b,8 dis e fis16 g
    a2.~ a4 g s
    s1 s8
  }
}


\score {
  \context PianoStaff <
    \context Staff = Upper <
      \Global
      \clef treble
      \context Voice = i \VoiceI
      \context Voice = ia \VoiceXa
      \context Voice = ib \VoiceXb
      \context Voice = ic \VoiceXc
      \context Voice = ii \VoiceII
    >
    \context Staff = Lower <
      \Global
      \clef bass
      \context Voice = iiia \VoiceIII
      \context Voice = iiib \VoiceXd
    >
  >
  \paper { }
  \midi { }
}
