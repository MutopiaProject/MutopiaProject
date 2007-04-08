\version "1.4.3"

\header {
  title        = "French Suite V: Allemande"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 816"
  style        = "Baroque"
  copyright    = "Public Domain"
  enteredby    = "Joel Mayes"
  lastupdated  = "2001/July/10"
  date         = "1722"

  mutopiatitle       = "Allemande"
  mutopiacomposer    = "J. S. Bach (1685-1750)"
  mutopiaopus        = "BWV 816"
  mutopiainstrument  = "Harpsichord, Piano"
  maintainer         = "Joel Mayes"
  maintainerEmail    = "joel_mayes@dingoblue.net.au"

  footer = "Mutopia-2001/07/10-99"
  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}

Global = {
   \notes
   \key g \major
   \time 4/4 \property Staff.TimeSignature \override #'style = #'C
   \partial 16
   \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
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
VoiceI = \notes \relative c'' { \voiceOne
   \repeat volta 2 {
      b16
      b8. c16 c8.-\prall b32 c d4~ d16 d fis g
      e g d g c, b c a' c, b a g b4~
      b16 e a, e' g, fis g e' g, fis e d e fis g fis
      g a g a a8.-\prall g32 a b4~ b16 b e dis
      e fis e fis fis8.-\prall e32 fis g4~ g16 fis e d
      cis e b e a, g' fis e fis a e a d, c b a
      b d a d g, d' fis, d' e, d' cis b cis e a, g'
      fis e fis d cis8.-\trill d16 d4~ d16 fis a c
      b8. a16 g fis e d g8. fis16 e d c? b
      cis a d a e' a, g' e f a, d e f d fis d
      g d bes' a gis d cis g' fis c b? e a, d g, cis
      d2~ d4..
   }
   \repeat volta 2 {
      s16
      \property Voice.NoteHead \override #'extra-offset = #'(0.5 . 0)
      \property Voice.Stem \override #'extra-offset = #'(0.5 . 0)
      \property Voice.Dots \override #'extra-offset = #'(0.5 . 0)
      \property Voice.Stem \override #'stem-end-position = #10
      <d8. a> s16 s2.
      \property Voice.NoteHead \revert #'extra-offset \property Voice.Stem \revert #'extra-offset
      \property Voice.Dots \revert #'extra-offset \property Voice.Stem \revert #'stem-end-position
      s1*3
      s2. r16 g fis a
      dis,8. e16~ e8 e16 dis e4~ e~
      e16 a, b g a fis g e' [g, e fis a] c4~
      c16 a b d f4~ f16 b, c e fis8 g
      a b e,8. a16 g e fis8 b, e
      fis,16 d g d a' d, c' a bes d, g a bes g b g
      c g ees' d cis g fis c' b f e? a d, g c, fis
      g2~ g4..
   }
}

VoiceIIa = \notes \relative c' { \voiceTwo
   \repeat volta 2 {
      \StaffDown
      s16
      g16 b \StaffUp  d g~ g g fis e r d fis g~ g4~
      g4. fis8 \StaffDown r b,8 d \StaffUp g
      e4 s2.
      s1*7
      s2 r8 r16 g fis8 e 8
      r16 g a e fis4~ fis4..
   }
   \repeat volta 2 {
      fis'16
      \property Voice.Beam \override #'staff-position = #-5
      \property Voice.Dots \override #'extra-offset = #'(0.5 . 0)
      fis8. g16 g8.-\prall fis32 g a4~ \property Voice.Beam \revert #'staff-position a16 c, d a
      b dis e g fis c b a' g dis e g c,8.-\mordent c16
      c a b e a,8.-\mordent a16 a fis g c f,8.-\mordent f16
      f dis e a g e fis b a fis g c b g a d?
      c a b d g8. g16 g b, c e a,4~
      a16 a g8 fis4 e'16 b g8~ g4
      s2 s8 fis8~ fis4
      r4 r16 c' d b g4 r16 d'8 d16~
      d d8 d16~ d b c8~ c8. a16~ a g8 g16
      s1*2
      r16 c, d a b4~ b4..
   }
}

VoiceIIb = \notes \relative c'' {
   \stemUp \tieUp
   \repeat volta 2{
      s16
      s1*11
      s8 a8~ a4~ a4..
   }
   \repeat volta 2 {
      s16
      s1*5      
      s4
      \property Voice.Rest \override #'extra-offset =#'(-1.25 . -5.0) 
      r16 a8. s16 b8.~ \shiftOn b4 \shiftOff
      s2 s8.  
      \property Voice.Stem \override #'thickness = #0.0
      \property Voice.NoteHead \override #'transparent  = ##t
      \property Voice.Beam \override #'thickness = #0.0
      \tieDown
      [a16~] 
      \shiftOn
      \property Voice.Stem \revert #'thickness
      \property Voice.NoteHead \revert #'transparent
      \property Voice.Beam \revert #'transparent
      a4
      \shiftOff
      \tieUp
      s1*3
      \stemDown
      s2 s8 e8 s4
      \stemUp
      s8 d8~ d4~
      \shiftOn d4..
   }
}

VoiceIII = \notes \relative c { \voiceThree
   \repeat volta 2 {
      s16
      s1*2
      r8 e a4 r8 fis a4
      d,8 g4 fis8 g4 r
      r8 e'4 dis8 e4 r
      r8 b cis4 d2~
      d8 c b a g4. e8
      d8. e16 fis8 g
      fis16 s g s a s fis s
      s1*3
      s4. d'8~ d4..
   }
   \repeat volta 2 {
      s16
      s2 fis,16 a c e d8 a
      g e4 dis8 e4 s4
      s1*2
      s4 r16 e g b~ b8 g c4
      b b~ b8. \stemDown b16 e cis d b
      cis4 s2.
      s1
      s2 r8 d,,4.
      s1 \stemUp
      s2 r8 r16 c'' b8 a
      s4 s8 g8~ g4.. 
   }
}
VoiceIV = \notes \relative c' { \voiceFour
   \repeat volta 2 {
      r16
      g4 a b4. b8
      c b a4 g~ g16 fis e d
      cis4. cis8 d4. c8
      b4 a r16 g b d g8 a16 b
      c8 g a b e16 b g b e,8 g
      a4. a8 d, e fis d 
      g2~ g8 e a, cis
      d g, a4 d16 d' e, d' fis, d' d, d'
      g, d' a d b d g, d' e, d' fis, d' g, d' e, d'
      a cis b d cis e a, cis d8 c bes a bes g e a d g, a4
      d4~ d16 cis d a d,4..
   }
   \repeat volta 2 {
      r16
      d fis a c b a b g fis4~ fis8 fis
      g c, a b e,4 r16 e' fis d?
      g8 g, r16 cis dis b e8 e, r16 a b g
      c8 cis d dis [e e,] [fis fis']
      g g, r4 c r8 a'
      [b e,] [b' b,] e4 s
      s r16 a b cis d4~ d16 a fis d
      g4~ g16 a b g c4~ c16 a b d
      fis, a g b c, e a, c d2~
      d16 fis e g fis a d,fis g8 fis ees d
      ees c a d g c, d4
      g4~ g16 fis g d g,4..
   }
}

\score {
   \context PianoStaff <
      \context Staff = Upper <
         \Global
	 \clef treble
         \context Voice = i \VoiceI
         \context Voice = iia \VoiceIIa
         \context Voice = iib \VoiceIIb
      >
      \context Staff = Lower <
         \Global
	 \clef bass
	 \context Voice = iii \VoiceIII
	 \context Voice = iv \VoiceIV
      >
   >
   \paper { }
   \midi { }
}
