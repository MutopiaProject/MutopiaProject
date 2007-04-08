\version "1.4.9.uu1"
\include "paper16.ly"
\header {
  title             = "Preludio"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegro moderato"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Ouvertuere"
  mutopiacomposer   = "G. F. Handel (1685-1759)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/06"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/06-156"
}

Global = \notes {\key d\minor \time 4/4}


MDI = \notes \relative c'' {
  \stemBoth d16 f cis e d f a, d bes d a d bes d f, a
  g bes f a g bes e, f g a e g f a d, f
  e f e d cis d cis b a r r8 r4
  r1
  
  r
  r16 d f g a g a e f4 e
  d16 a' bes c d c d a <g8-. bes> <f-. a> <e4 g>
  f16 c' d e f e f c <f,4 bes d> d'16 c d a
  
  bes d e f g f g d <a4 cis> a'16 f g a
  bes a g f e8.\prall d16 d a f a d,4
  d'8-. f-. e-. d-. a'16 f e f g f g a
  f b, a b cis b cis d a f e f g f g a
  
  f d cis d e d e f d g f g e f g a
  f g a bes <cis,8 g'> <d-. f> <cis-. e> cis'-. b-. a-.
  d16 b a b cis b cis d e f d e cis8.\prall d16
  \stemUp d4 r \stemBoth a8-. cis-. b-. a-.
  
  d16 b a b cis b cis d \stemUp e4 r
  \stemBoth f,8-. f'-. e-. d-. a'16 f e f g f g a
  f8-. e-. \stemUp d4 <a8 cis-.> a-. g-. a-.
  \stemBoth f16 d cis d e d e f a8 cis-. b-. a-.
  
  d16 b a b cis b cis d \stemUp f8 e16 d cis8. d16
  d2 r\fermata
  \bar "|."
  }
MDII = \notes \relative c' {
  s1
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  \stemDown d8-. f-. e-. d-. s2
  
  s2 cis'8 e,16 f g f g a
  s1
  s4 f e8 e16 f d8 cis
  s1
  
  s2 a'8 g <e4 a>
  r16 a f a d,4
  }
MDIII = \notes \relative c'' {
  s1
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s4 \stemDown \shiftOn a8. b16 s2
  s1
  
  s
  s
  }
  
MSI = \notes \relative c' {
  r1
  r
  r2 \translator Staff = "up" \stemBoth a16 \translator Staff = "down" e f g f g f e
  d f cis e d f a, d bes d a d bes d f, d'
  
  g, bes a g f g f e d f g e a8. a16
  d,4 r r16 d' f g a g a e
  f8-. e-. d8. f16 g g, a bes c bes c g
  a8-. g-. f4 bes16 f' g a bes a bes f
  
  g8-. f-. e8. g16 a bes a g f d e f
  g a bes g a8 a,-. d4 r8 d,
  r2 \clef violin a'''8-. cis-. b-. a-.
  d,-. f-. e-. d-. \clef bass a-. cis-. b-. a-.
  
  d16 b a b cis b cis d b e d e cis8 a-.
  d,-. f-. e-. d-. a'16 f e f g f g a
  f d cis d e d e f g a bes g a8 a,-.
  d4 r \clef violin a''16 f e f g f g a
  
  f8-. g-. a8. b16 \clef bass a,,8-. cis-. b-. a-.
  d16 b a b cis b cis d cis8. d16 e8. cis16
  d16 cis d e f e f g a8-. cis-. b-. a-.
  d16 b a b cis b cis d cis8 a-. b-. cis-.
  
  f,16 d cis d e d e f d8-. g-. a-. a,-.
  \stemUp  r4 \property Voice.Rest \override #'extra-offset = #'(0 . 3) r16 a' f a d,4 d,8 r\fermata
  }
MSII = \notes \relative c {
  s1
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  \stemDown d2 s2
  }

\score {\notes {
  \context PianoStaff <
    \property PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "up" <
      \property Staff.TimeSignature \override #'style = #'C
      \Global \clef treble
      \context Voice=One {\voiceOne\MDI}
      \context Voice=Two {\voiceTwo\MDII}
      \context Voice=Three {\voiceThree\MDIII}
    >
    \context Staff = "down" <
      \property Staff.TimeSignature \override #'style = #'C
      \Global \clef bass
      \context Voice=One {\voiceOne\MSI}
      \context Voice=Two {\voiceTwo\MSII}
    >
  >
}
\midi {\tempo 4=104}
\paper {}
}
