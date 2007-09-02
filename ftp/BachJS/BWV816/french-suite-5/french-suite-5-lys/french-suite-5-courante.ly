\version "1.4.3"

\header {
  title        = "French Suite V: Courante"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 816"
  style        = "Baroque"
  copyright    = "Public Domain"
  enteredby    = "Joel Mayes"
  lastupdated  = "2001/July/10"
  date         = "1722"

  mutopiatitle       = "Courante"
  mutopiacomposer    = "J. S. Bach (1685-1750)"
  mutopiaopus        = "BWV 816"
  mutopiainstrument  = "Harpsichord, Piano"
  maintainer         = "Joel Mayes"
  maintainerEmail    = "joel_mayes@dingoblue.net.au"

  footer = "Mutopia-2007/09/02-99"
  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}

Global = {
   \notes
   \key g \major
   \time 3/4
   \partial 16
}

StaffUp = {
   \translator Staff = Upper
   \stemDown
   \tieDown
}

StaffDown = {
   \translator Staff = Lower
   \stemUp
   \tieUp
}

StaffDownII = {
   \translator Staff = Lower
   \stemDown
   \tieDown
}

VoiceI = \notes  \relative c'''  { \voiceOne
   \repeat volta 2 {
      g16
      g8 fis16 e d c b a b d a c
      b8 g b d g fis
      \stemBoth
      g16 a b g d f e d e a b c
      fis,8 d r16 e d c b d a d
      g, d' fis, d' g, d' c b a g f d'
      e, d' d, d' e, d' c b a g a c
      fis, e d e fis g a b c a d a
      b2 r8 b
      e16 fis g e b e fis g dis a' g fis
      g8 e g d cis a'
      d,16 e fis d a c b a b e fis g
      cis,8 a r a16 b cis d e cis
      d e a, cis d e a, d fis, d' a e'
      d e b cis d e b d g, d' b d
      cis d e cis g b a b fis d' e, cis'
      d8 cis16 b a g fis e
      \property Voice.noAutoBeaming = ##t  d8.
   }
   \repeat volta 2 {
      \stemUp
      fis'16
      \property Voice.noAutoBeaming = ##f
      fis4 \stemBoth r8 d16 e fis g a fis
      g8 fis16 e d c b a g b d f
      e d c b a fis' g a g fis g e
      dis8 b r b'16 a g fis e dis
      e8 fis16 dis e8 fis16 dis \stemUp e4~
      e2~ e8 a
      g fis4 e8~ e16 a, e' dis
      e2~ e8 e \stemBoth
      a,8 b16 cis d e fis g a fis g e
      fis g fis e d e fis g a b c a
      b fis g d e b c g a c e, g
      fis a d, e fis g a b c d e fis
      g a d, fis g a d, g b, g' d a'
      g a e fis g a e g c, g' e g
      fis g a fis c e d c b g' a, fis'
      g8 fis16 e d c b a g8.
   }
}

VoiceII = \notes \relative c''{ \voiceTwo
   \repeat volta 2 {
      s16
      \stemUp \shiftOn
      d8 s8 s2
      s2.*6
      \stemDown
      r16 g, fis e d \StaffDown c b a g b fis a
      g8 e g e b' b,
      e16 fis g e cis g' b, g' a, g' fis e 
      fis8 d fis d g e
      a g16 fis e d cis b a e' g, e'
      fis,8 e fis a d fis,
      g a b g e g
      a b cis d r g
      fis4 fis8 a \StaffUp d8.
   }
   \repeat volta 2 {
      r16
      <d'4 a> s2
      s2.*3
      s2 r8 b
      c8 d16 b c8 d16 b c8 c
      b a g4 fis
      r8 [c' b a] g r
      s2.*7
      s2 s8.
   }
}

VoiceIII = \notes \relative c''{ \voiceThree
   \stemDown
   \tieDown
   \repeat volta 2 {
      s16
      b4 s8 [d,8 g fis]
      g fis16 e d \StaffDownII c b a b d a c
      b8 g b g c a
      d c16 b a g fis e d fis c fis
      b,8 a b g a b
      c b c a b c
      d c16 b a g fis e d fis a d
      g,4 s2
      s2.*6
      s2 a4
      r8 d4.~ d8.
   }
   \repeat volta 2 {
      r16
      d'8 c16 b a g fis e d a' c, a'
      b,8 d g a b g
      c e c b c a
      b a16 g fis e dis cis b fis' a, fis'
      g, a fis a g a fis a g b e, g
      a b g b a b g b a c fis, a
      b8 cis16 dis e fis g a b8 b,
      e8 fis16 g a b cis dis e cis d b
      cis d cis b a g fis e d b' e, cis'
      d8 d,16 e fis g a b c d e fis
      g8 b, c e c a
      d c16 b a g fis e d a' c, a'
      \stemUp
      b,8 a b d g d
      c d e c a c
      d e fis g r c
      b4 [b8 d \StaffUp g8.]
   }
}

VoiceIV  = \notes \relative c' { \voiceFour
   \repeat volta 2 {
      r16
      g4 r8 s4.
      s2.*14
      s2 s8.
   }
   \repeat volta 2{
      s16
      s2.*14
      s2 d4
      r8 g4.~ g8.
   }
}

\score {
   \context PianoStaff <
      \context Staff = Upper <
         \Global
	 \clef treble
         \context Voice = i \VoiceI
         \context Voice = ii \VoiceII
         \context Voice = iii \VoiceIII
      >
      \context Staff = Lower <
         \Global
	 \clef bass
	 \context Voice = iv \VoiceIV
      >
   >
   \paper { }
   \midi { \tempo 4 = 132 }
}
