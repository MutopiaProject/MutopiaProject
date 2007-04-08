\version "1.4.3"

\header {
  title        = "French Suite III: Courante"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 814"
  style        = "Baroque"
  copyright    = "Public Domain"
  enteredby    = "Joel Mayes"
  lastupdated  = "2001/Aug/01"
  date         = "1722"

  mutopiatitle       = "courante"
  mutopiacomposer    = "J. S. Bach (1685-1750)"
  mutopiaopus        = "BWV 814"
  mutopiainstrument  = "Harpsichord, Piano"
  maintainer         = "Joel Mayes"
  maintainerEmail    = "joel_mayes@dingoblue.net.au"

  footer = "Mutopia-2001/08/01-100"
  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}

Global = {
   \notes
   \key b \minor
   \time 6/4
   \partial 8
   \property Staff.autoBeamSettings \override
       #'(end * * * *) = #(make-moment 3 4)
   \property PianoStaff.connectArpeggios = ##t 
}

noSee = {
   \property Voice.Stem \override #'transparent = ##t
   \property Voice.NoteHead \override #'transparent = ##t
   \property Voice.Dots \override #'transparent = ##t
}

See = {
   \property Voice.Stem \revert #'transparent
   \property Voice.NoteHead \revert #'transparent
   \property Voice.Dots \revert #'transparent
}

staffDown = {
   \translator Staff = Lower
   \voiceOne
}

staffUp = {
   \translator Staff = Upper
   \voiceTwo
}

shiftDots = { % Line up dots with shiftOn'd notes
   \property Voice.Dots \override #'extra-offset = #'(0.7 . 0)
}

revertDots = { % Revert dots
   \property Voice.Dots \revert #'extra-offset
}


VoiceI = \notes \relative c'' { \voiceOne
   \repeat volta 2 {
      fis8
      fis2.~ fis8 g fis e g cis,
      d2.~ d8 d cis b cis e
      ais,2. b4 b4.-\prallprall ais16 b
      e4. fis8 d cis d e cis4. fis8
      d4. cis8 b cis d g fis e fis d
      a'2.~ a8 e d cis d b'
      cis,2. fis4\arpeggio d4.-\prall cis8
      d4. cis8 b4~ b8 a gis fis gis b
      eis,2. cis'4\arpeggio cis4.-\prall bis16 cis
      gis'4. b8 a gis a b gis4. fis8
      eis4. eis8 \shiftDots fis4.\arpeggio \revertDots gis8 gis4.-\prall fis8
      fis2. fis2 r8
   }
   \repeat volta 2 {
      cis8
      cis2.~ cis8 d cis b cis a
      b4. cis8 d e d cis d b e4
      cis4.-\prall b8 a4~ a8 b'a g a fis
      b4. a8 g4 fis8 e fis4. g8
      a4. dis,8 e fis e fis fis4.-\prallprall e16 fis
      g8 a g fis g e fis4 dis4.-\prall e8
      e2.~ e8 fis e d e g
      cis,4. d8 e4~ e8 d cis b cis e
      a,4. b8 c d c b c a d4
      b4.cis8 dis e fis g fis b, a'4
      g4. fis8 e4 d8 cis d4.-\mordent e8
      fis4. ais,8 b cis b cis cis4.-\prallprall b16 cis
      d 8e d cis d b cis4 ais4.-\prall b8
      b4. a8 g fis g e cis'4 d8 e
      fis, e' d cis d b g'4 cis,4.-\mordent b8
      b2.~ b2 r8
   }
}

VoiceII = \notes \relative c'' {\voiceTwo
   \repeat volta 2 {
      r8
      <d2. b> s
      r8 cis b ais b fis g2.~
      g8 g fis e fis cis d e d cis d b
      r4 cis'2 b4 ais2
      b4. s4. s2.
      r8 g' fis e d cis d s8 \staffDown a,4 gis
      a2. \staffUp fis'4\arpeggio b4. ais8
      b4. s4. s2.
      cis,2. cis4\arpeggio s4.. \noSee cis'16~ \See
      cis2.~ cis4 b4. a8
      gis4. r8 \shiftDots fis4.\arpeggio \revertDots r8 eis'4. fis8
      fis2. <cis2 ais2> r8
   }
   \repeat volta 2 {
      r8
      r8 b ais gis ais fis \staffDown ais,2 r4
      r8 fis b4 \staffUp s s2.
      s1.
      s2. r4 dis'4. e8
      fis4. s4. s2.
      s1.
      <b,2. g> s2.
      g8 a g fis g e fis2.~
      fis8 \staffDown b, a g a fis s2.
      s1. \staffUp
      s2. r4 b'4. cis8
      d4. s4. s2.
      s1.
      b2.~ b4 e,2~
      e8 r r4 r4 b'4 ais2
      b2. <fis2 d> r8
   }
}

VoiceIII = \notes \relative c' {
   \repeat volta 2 {
      r8
      r e d c d b ais4 cis fis,
      b d b e, g e
      fis r r s2.
      cis'8 b ais fis ais fis b eis, fis4 fis,
      b8 g'' fis e fis d b e d cis d b
      fis b a g a fis \stemDown b,2. \stemBoth
      r8 fis' e d e cis ais g' fis e fis d
      b a' gis fis gis b eis, cis' b a b d
      r8 cis, b a b gis a b a gis a fis
      eis fis eis dis eis cis fis e'! d! cis d a
      b b' a gis a fis d' b cis4 cis,
      \stemDown \tieDown r fis,2~ fis2 r8
   }
   \repeat volta 2 {
      r8
      fis'4 fis, fis' e8 fis e d e cis
      d4. cis8 b fis' b a gis fis gis e
      a, e' a g fis e fis d d'4. d,8
      g fis g a b g c4. b8 a g
      fis g a fis g c b a b cis dis b
      e4. d8 c b c a b4 b,
      e8 a g fis g e cis' d cis b c a
      s1.
      s2. d8 g, fis e fis d
      g b a g fis e dis e dis cis dis b
      e dis e fis g e a4. g8 fis e 
      d e d cis d b g' fis e d e fis
      b, fis' b a g fis e cis fis e fis fis,
      g b cis dis e4~ e8 fis e d e cis
      ais'4 fis b e, fis fis,
      b2.~ b2 r8
   }
}

VoiceXtra = \notes \relative c'' {
   \repeat volta 2 {
     \shiftOn \stemUp
      s8
      s1.*6
      s2. cis4\arpeggio s2
      s1.
      s2. fis,4\arpeggio s2
      s1.
      s2 cis'4.\arpeggio s8 s2
      \staffDown
      fis,,2 cis4 fis2 r8
   }
   \repeat volta 2 {
      r8
      s1.*13
      \staffUp
      \shiftOff
      s2. s8 \noSee e'~ e2 \See
      s1.
      \staffDown
      r4 d, fis b2 r8
   }
}

\score {
   \context PianoStaff <
      \context Staff = Upper <
         \Global
	 \clef treble
         \context Voice = i \VoiceI
         \context Voice = ii \VoiceII
	 \context Voice = x \VoiceXtra
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
