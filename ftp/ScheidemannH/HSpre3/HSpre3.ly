% Updated to Lilypond 2.2.5 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% convert-ly -> Lilypond 2.4.2 by Chris Sawer <chris@mutopiaproject.org>
% Last changed on 2/Jan/2005

\version "2.4.0"

\header {
  filename = "HSpre3.ly"
  title = "Praeambulum no.3 in d"
  opus = "WV 31"
  source = "Baerenreiter"
  composer = "Heinrich Scheidemann (ca. 1595-1663)"
  copyright = "Public Domain"
  mutopiatitle = "Praeambulum no.3 in d"
  mutopiacomposer = "ScheidemannH"
  mutopiaopus = "WV 31"
  mutopiainstrument = "Organ"
  style = "Renaissance"
  copyright = "Public Domain"
  maintainer = "Tim Knigge"
  maintainerEmail = "tim@asset-control.com"
  lastupdated = "2005/Jan/02"

  footer = "Mutopia-2005/01/02-132"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

#(set-global-staff-size 20)
\include "nederlands.ly"

\layout {
  indent = 0
}


global =  {
  \time 4/4
  \skip 1*19
  \bar "|." |
}

soprano = \context Voice = "one"  \relative c' {
  \clef treble
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  d1~ |
  d4  e8[ fis] g4 a |
  bes2. a4 |
  g2 g~ |
  g4 g f  g8[ f] | %5
  e2 a~ |
  a4  g8[ a] b2~ |
  b4 a a2~ |
  a4 a  gis8[ a fis gis] |
  a1 | %10
  r4 a4 a g |
  f4. e8 d2 |
  r4 d'4 d c |
  bes4. a8 g4 f |
  e d d2~ | %15
   d8[ cis16 d]  e8[ d]  cis[ b] cis4 |
  d1~ |
  d |
  d |
}

alto = \context Voice = "two"  \relative c' {
  \clef treble
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

  a1 |
  bes2. c4 |
  d1 |
  d |
  d2 d~ | %5
  d4 d cis  b8[ cis] |
  d1 |
  c2 d |
  e2. d4 |
  cis4 e e d | %10
  c4. b8 a4  b8[ cis] |
  d4  a8[ g] f4  g8[ a] |
  bes2 a |
  r4 d4 d c |
  bes a g2 | %15
  a2.  a8[ g] |
  fis4 a bes2~ |
  bes4  a8[ bes] a4 g |
  a1 |
}

tenor = \context Voice = "three"  \relative c {
  \clef bass
  \stemDown
  \tieUp
  \slurUp
  \set Staff.midiInstrument = "church organ"

  fis1 |
  g2 d~ |
  d4  e8[ fis] g4 a |
  bes1 |
  a | %5
  a2. g4|
  fis2 g4 f |
  e2 a4 b |
  c2 b |
  a4. b8 c4 b | %10
  a4. g8 f4 e |
   d8[ e f g] a4 r4 |
  r4 g fis2 |
  g4. a8 bes4 a |
  g f e d | %15
  f2 e |
  d4 fis g2~ |
  g4  fis8[ g] fis4 e |
  fis1
}

bass = \context Voice = "four"  \relative c {
  \clef bass
  \stemDown
  \tieDown
  \slurDown
  \set Staff.midiInstrument = "church organ"

  d1 |
  g,1~ |
  g2. fis4 |
  g a bes c|
  d1 | %5
  a |
  d2 g, |
  a f |
  e1 |
  a1 | %10
  r1 |
  r4 d4 d c |
  bes  a8[ g] d'2 |
  g,1 |
  g2 bes | %15
  a1 |
  r4 d4 g,2 |
  d'1 |
  d, |
}

\score {
  <<
    \context PianoStaff <<
      \set PianoStaff.followVoice = ##t
      \context Staff = "treble" << 
        \global 
        \soprano
        \alto
      >>	
      \context Staff = "bass" <<
        \global 
        \tenor
      >>   
    >>
    \context Staff = "pedal" <<
      \global 
      \set Staff.minimumVerticalExtent = #'(-2 . 2)
      \bass
    >>   
  >>
  \midi {
    \tempo 4 = 90
  }
  \layout { linewidth = 19.0\cm }
}

