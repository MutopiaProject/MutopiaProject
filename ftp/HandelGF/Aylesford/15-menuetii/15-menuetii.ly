\version "1.4.9.uu1"
\include "paper20.ly"
\header {
  title             = "Menuet II (Trio)"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Tranquillo"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Menuet II (Trio)"
  mutopiacomposer   = "G. F. Handel (1685-1759)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/07"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/07-164"
  }

Global = \notes {\key f\minor \time 3/4}


MDI = \notes \relative c'' {
  \repeat volta 2 {
  \stemBoth as4 c as'
  g c, f
  \stemUp f, f g
  c, f e
  
  f as c
  f, bes as
  c des8 c bes as
  g2.
  }
  
  f4 c' a
  \stemBoth f a <des, bes'>
  \stemUp es' des c
  f es8 des c bes
  
  \stemBoth es4 es, \stemUp des'
  c4. bes8 as4
  g as bes
  e,2.
  
  c'4 des8 es f4
  \stemBoth f,8 g a bes c des
  \stemUp es des des c c4
  f4 es8 des c bes
  
  g'4 c, as'
  g bes, as
  bes8 as as4 g8. f16
  f2.\fermata
  \bar "|."
  }
MDII = \notes \relative c' {
  s2.
  s
  des4 c bes
  as2 g4
  
  c2.
  des4 bes c
  as' f g8 f
  e2.
  
  f2.
  s
  ges4 g a8 g
  f2 es4
  
  s2 es4
  es2 c4
  des c bes
  c r r
  
  f2.
  s
  ges4 g a8 g
  f2 f4
  
  g as as8. bes16
  c4 g f
  des c <c e>
  <as2. c>
  }

MSI = \notes \relative c' {
  c2 c4
  c2 as4
  \stemBoth bes as g
  f f, c'
  
  as f as
  bes des f
  f, as bes
  c e c
  
  \stemUp c'2 c4
  des c bes
  c bes a
  bes2 bes4
  
  c as f8 g
  as2 as4
  \stemBoth bes, c des
  c c' bes
  
  \stemUp c2 c4
  des c bes
  c bes a
  bes2 des4
  
  c2 c4
  e, c'2
  g4 f <c, c'>
  <f,2.\fermata f'>
  }
MSII = \notes \relative c {
  \stemDown f4 as f
  e c f
  s2.
  s
  
  s
  s
  s
  s
  
  a4 f f
  bes f ges
  es e f
  des bes g'!
  
  as c, es
  as, es' f
  s2.
  s
  
  a4 f a
  bes f ges
  es e f
  des bes bes'
  
  e, f f
  c e f
  bes, c s
  s2.
  }

\score {\notes {
  \context PianoStaff <
    \property PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "up" <
      \property Staff.TimeSignature \override #'style = #'C
      \Global \clef treble
      \context Voice=One {\voiceOne\MDI}
      \context Voice=Two {\voiceTwo\MDII}
    >
    \context Staff = "down" <
      \property Staff.TimeSignature \override #'style = #'C
      \Global \clef bass
      \context Voice=One {\voiceOne\MSI}
      \context Voice=Two {\voiceTwo\MSII}
    >
  >
}
\midi {\tempo 4=60}
\paper {}
}
