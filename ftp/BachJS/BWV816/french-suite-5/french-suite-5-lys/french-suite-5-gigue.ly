\version "1.4.3"

\header {
  title        = "French Suite V: Gigue"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 816"
  style        = "Baroque"
  copyright    = "Public Domain"
  enteredby    = "Joel Mayes"
  lastupdated  = "2001/Jul/07"
  date         = "1722"

  mutopiatitle       = "Gigue"
  mutopiacomposer    = "J. S. Bach (1685-1750)"
  mutopiaopus        = "BWV 816"
  mutopiainstrument  = "Harpsichord, Piano"
  maintainer         = "Joel Mayes"
  maintainerEmail    = "joel_mayes@dingoblue.net.au"

  footer = "Mutopia-2001/07/10-99"
  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}

Global =  {
  \notes
  \key g \major
  \time 12/16
  \partial 16
  \property Staff.autoBeamSettings \override
    #'(end * * * *) = #(make-moment 3 16)
}

StaffUp = { % Move voice to upper stave
            % VoiceI never moves stave so
            % alway have stems  down
  \translator Staff = Upper
  \stemDown
  \tieDown
}

StaffDown = { % Move VoiceII to lower stave
              % always have stems and ties up 
              % to avoid colision with VoiceIII
  \translator Staff = Lower
  \stemUp
  \tieUp
}

VoiceIIIDown = { % Return VoiceIII to lower stave
                 % always have stems down to avoid
                 % colision with VoiceII
  \translator Staff = Lower
  \stemDown
  \tieBoth
}

RDownI = {  % Shift rest down by one
  \property Voice.Rest \override #'extra-offset = #'(0.0 . -1.0)
  \property Voice.Dots \override #'extra-offset = #'(0.0 . -1.0)
}

RDownII = { % Shift rest down by two
  \property Voice.Rest \override #'extra-offset = #'(0.0 . -2.0)
  \property Voice.Dots \override #'extra-offset = #'(0.0 . -2.0)
}

RDownIII = { % Shift rest down by three
  \property Voice.Rest \override #'extra-offset = #'(0.0 . -3.0)
}

RUpI = {  % Shift rest up by one
  \property Voice.Rest \override #'extra-offset = #'(0.0 . 1.0)
  \property Voice.Dots \override #'extra-offset = #'(0.0 . 1.0)
}

RUpII = { % Shift rest up by two
  \property Voice.Rest \override #'extra-offset = #'(0.0 . 2.0)
  \property Voice.Dots \override #'extra-offset = #'(0.0 . 2.0)
}

RUpIIIxV = { % Shift rest up by 3.5
  \property Voice.Rest \override #'extra-offset = #'(0.0 . 3.5)
}

MRDownIII = { % Shift multi-bar rest down 3
  \property Voice.MultiMeasureRest \override #'extra-offset = #'(0.0 . -3.0)
}

RMRest = { % Revert multi-bar rests
  \property Voice.MultiMeasureRest \revert #'extra-offset
} 

RRest = { % Revert rests
  \property Voice.Rest \revert #'extra-offset
  \property Voice.Dots \revert #'extra-offset
}

VoiceI = \notes \relative c'' { \voiceOne
  \repeat volta 2 {
  d16 |
  g b fis g b d, g b fis g b d,
  e c g g'8 c,16 d b g g'8 b,16
  c d e d e c b d g b a g
  fis8 a16 a8 a16 a8 a16 a8 a16
  d, g b b g d d fis a a fis d
  [d8. cis-\prall] [d fis]
  g8 a16 b8 c16 b8 a16 g8 g16
  g2.~
  [g8. fis] g r16 \RUpII r \RRest d
  e g d e g b, c8. r16 r g'
  a c g a c e, fis a e fis a cis,
  d fis cis d fis a, b d cis d e b
  cis e d e fis cis d fis e fis a g
  a8 r16 cis, e g fis8 e16 fis8 g16
  fis8 e16 d8 d16 d4.~
  d4.~ d8. cis8 b16
  a8. b8 a16 g8. a8 g16
  fis8 g16 a8 b16 cis,8 d16 e8 fis16
  g8 a16 b8 cis16 d,8 e16 fis 8 g16
  a4.~ a~
  a16 g d d'8 g,16 a fis d d'8 fis,16
  g a b a b g fis a g a cis b
  cis e g g e cis a cis e g fis e
  fis e d d e cis
  \property Voice.noAutoBeaming = ##t
  <{d8.~}{s16 a8~}> <d a>
  \property Voice.noAutoBeaming = ##f
  }

  \repeat volta 2 {
  s16
  s2.*7
  r4. r8. r16 r g,
  fis d g fis d a' fis d g fis d a'
  fis a c d,8 b'16 g b d e,8 c'16
  a c e fis, d c b d g d g b
  e g b, c e g, a c fis c fis a
  dis, fis a, b dis fis, g b e b e g
  c, e gis, a c e a8 r16 \RUpI r8. \RRest
  r16 \RUpIIIxV r \RRest g16 fis8.~ fis8 g16 fis8.~
  fis g~ g a~
  a b~ b4.~
  b16 gis a f dis e c gis a f dis e
  dis fis a c b dis e fis g b, e dis
  e4.~ e~
  e8. \RUpII r \RRest r4.
  r8. r16 e d c a d c a e'
  c a d c a e' cis e g a,8 fis'16
  d fis a b,8 g'16 e g b cis, a' g
  fis d g fis d a' fis d g fis d a'
  fis a c d,8 b'16 e, g b c,8 a'16
  e fis a b,8 g'16 c, e g a, c e
  fis, a c d, fis a c8.~ c8 c16~
  c8.~ c8 c16~ c8.~ c16 a d~
  d8.~ d16 b e~ e8.~ e16 c fis
  g8.~ g16 f d e8. r16 a, c
  b a g g a fis
  \property Voice.noAutoBeaming = ##t
  <{g8.~}{s16 d8~}> <g8 d8>
  \bar "|."
  }
}

VoiceII = \notes \relative c'' { \voiceTwo
  \tieDown
  \repeat volta2 {
  s16
  s2.*2
  r4. r8. r16 r g
  d' fis cis d fis a, d fis cis d fis a,
  b g d d'8 g,16 a fis d d'8 fis,16
  g a b a b g fis a c e d c
  b8 d16 d8 d16 d8 d16 d8 b16
  g c e e c g g b d d b g
  [a8. a] g r 
  s2.*4
  s4. r8. r16 \RDownI r \RRest a 
  a8 a16 a8 fis16 d g b b g d
  d fis a a fis a e8. e8.~
  e8 d16~ d8.~ d8 cis16~ cis8.
  r16 d8~ d16 d8 r16 a8~ a16 a8
  r16 e'8~ e16 e8 r16 b8~ b16 b8
  r16 fis' cis d fis a, d fis cis d fis a,
  b8 r16 \RDownI r8.\RRest r r16 \RDownII r \RRest s
  \StaffDown [e,8. e] d8 r16 r8.
  s2.
  \StaffUp r16 r b'' a8 g16~ g a fis~ <d8 fis>
  }

  \repeat volta 2 {
  r16
  R2.*2
  r4. r8. r16 r \stemUp d
  b g c b g d' b g c b g d'
  b d f g,8 e'16 c e g a,8 f'16
  d f a b, g' f e8. r16 r c
  a c e c a c \StaffDown fis,8 d'16 b8 a16
  g b d b g b e,8 c'16 a8.~
  a8 b16 a8.~ a8 b16 a8.~
  a16 fis a fis d g e g b g e a
  fis a c a fis a g b d  b \StaffUp d g
  c, e g e c e \StaffDown fis, a c a c fis
  \StaffUp b, dis fis dis b dis \StaffDown e, g b \StaffUp g b e
  a, c e c a c \StaffUp e a c a fis a
  b8.~ b8 a16 b8.~ b8 a16
  b dis fis dis b e cis e g e cis fis
  dis fis a fis dis fis e g dis e g dis
  e8 r16 r8. r4.
  r r8. r16 \RDownII r \RRest a,
  g e a g e b' g e a g e b'
  gis b d e,8 c'16 a c e d,8 d'16
  b d f gis,8. r16 r f e8.~
  e8 f16 e8. f16 cis e cis a d
  b d fis d b e cis e g e cis e
  d8 b'16 a8 cis,16 d8 b'16 a8 cis,16
  d fis a fis d g c, e g e c fis
  b, d fis d b e a, c e c a c
  d \StaffDown a fis d8 r16 \StaffUp r \RDownII r \RRest b''16 a8.
  d,8 b'16 a8. d,16 fis a fis8.
  e16 g b g8. fis16 a c a8.
  r16 d b g8. r16 c a fis8.
  r16 r e d8 c16 r d b~ b8
  }
}

VoiceIII = \notes \relative c' { \voiceThree
  \repeat volta 2 {
  r16
  R2.*5
  r4. r8. \clef treble r8 d16
  g b fis g b d, g b fis g b d,
  e c g g'8 c,16 d  b g g'8 b,16
  c d e d e c \clef bass b d a b d g,
  c8 b16 c8 g16 a c g a c e,
  fis 8 e16 fis 8 a16 d fis cis d fis a,
  b d a b d fis, g8 e16 fis 8 g16
  a8 fis16 g8 a16 b8 cis16 d8 b16
  cis \StaffUp e a \VoiceIIIDown r8 a,,16 d fis cis d fis a,
  d fis cis d fis a, b g d d'8 g,16
  a fis d d'8 fis,16 g a b a b g
  fis g a g a fis e fis g fis g e
  d8 e16 fis8 g16 a8 b16 cis8 d16
  e,8 fis16 g8 a16 b8 cis16 d8 e16
  fis8 g16 fis8 e16 fis8 g16 fis8 d16
  d g b b g d d fis a a fis d
  [e8. cis8.] d8 e16 fis8 g16
  a cis a e a e cis e cis a b cis
  d8 g16 a8 a,16 \tieDown d,8.~ d8 \tieBoth
  }

  \repeat volta 2 {
  a''16
  fis d g fis d a' fis d g fis d a'
  fis a c d,8 b'16 g b d e,8 c'16
  a c e fis, d' c b g e g d b
  g8 e'16 d8 fis,16 g8 e'16 d8 fis,16
  g b d b g c a c e c a d
  b d f d b d c e g e c e
  fis,8. r16 r a b d fis d b d
  e,8. r16 r g a c e c a c 
  \tieDown d8.~ d8 cis16 d8.~ d8 cis16 \tieUp
  d8. r r4.
  \MRDownIII
  R2.*3
  \RMRest
  r4. r8. r16 r e
  dis b e dis b fis' dis b e dis b fis'
  dis fis a b,8 g'16 e g b cis,8 a'16
  fis a c dis, b' a g e b e b g
  c8.~ c16 b c a b c a b c
  fis, a c dis fis a g fis e b'8 b,16
  e8 c'16 b8 dis,16 e8 c'16 b8 dis,16
  e gis b gis e a fis a c a fis b
  gis b d b gis b a8.~ a8 gis16
  a8.~ a8 gis16 a8 r16 r8.
  R2.*4 
  \RDownII r8. \RRest r16 \RDownIII r \RRest a, fis d g fis d a'
  fis d g fis d a' fis a c d,8 b'16
  g b d e,8 c'16 a c e fis, d' c
  b d g b g b c a fis d fis a
  g8 c,16 d8 d,16 \tieDown g8.~ g8
  }
}

VoiceIIIExtra = \notes \relative c, {
  \stemUp
  \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
  \repeat volta 2 {
  s16
  s2.*23
  s4. d16 fis a d8
  }

  \repeat volta 2 {
  s16
  s2.*31
  s4. g,16 b d g8
  }
}

\score {
  \context PianoStaff <
    \context Staff = Upper <
      \Global  
      \clef treble
      \context Voice = i \VoiceI
      \context Voice = ii \VoiceII
    >
    \context Staff = Lower <
      \Global
      \clef bass
      \context Voice = iiia \VoiceIII
      \context Voice = iiib \VoiceIIIExtra
    >
  >
  \midi { }
  \paper { }
}

