% Updated to Lilypond 2.2.5 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% convert-ly -> Lilypond 2.4.2 by Chris Sawer <chris@mutopiaproject.org>
% Last changed on 2/Jan/2005

\version "2.4.0"

\header {
  filename = "HSpre4.ly"
  title = "Praeambulum no. 4 in d"
  opus = "WV 32"
  source = "Baerenreiter"
  composer = "Heinrich Scheidemann (ca. 1595-1663)"
  copyright = "Public Domain"
  mutopiatitle = "Praeambulum no. 4 in d"
  mutopiacomposer = "ScheidemannH"
  mutopiaopus = "WV 32"
  mutopiainstrument = "Organ"
  style = "Renaissance"
  copyright = "Public Domain"
  maintainer = "Tim Knigge"
  maintainerEmail = "tim@asset-control.com"
  lastupdated = "2005/Jan/02"

  footer = "Mutopia-2005/01/02-133"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}  

#(set-global-staff-size 20)
\include "nederlands.ly"

\layout {
  indent = 0
}

global =  {
  \time 4/4
  \skip 1*25
  \bar "|." |
}

soprano = \context Voice = "one"  \relative c'' {
  \clef treble
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  a1 |
  bes4. c8 bes4 a |
  g2 g~ |
  g4 g fis e |
  f g a b |
  c1~ |
  c2 b~ |
  b4 a a2~ |
  a4  gis8[ fis]  gis[ a fis gis] |
  a2 e'4 d |
  c b a2 |
  c d4 c |
  b a g2 |
  b c4 b |
  a g f2 |
  a d~ |
  d4 c bes a |
  g f e d |
  cis d4. d8 cis4 |
  d  d8[ e]  fis[ g a fis] |
  g2 a |
  bes4  c8[ bes]  a[ g] a4 |
  d,  e8[ fis] g2~ |
  g4  fis8[ g] fis4 e |
  fis1
}

alto = \context Voice = "two"  \relative c' {
  \clef treble
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

  d1 |
  d |
  d |
  d |
  d4 e f2 |
  e1~ |
  e2 d4 e |
  f2 e |
  e1 |
  e |
  e4 d c b |
  a' g f e |
  d c b a |
  g' f e d |
  c b a g |
  f' e d c |
  bes c d2~ |
  d4 c bes2 |
  a1 |
  a2 d4 c |
  bes2 a4 r4 |
  d1 |
  r2d2 |
  d1 |
  d
}

tenor = \context Voice = "three"  \relative c {
  \clef bass
  \stemDown
  \tieUp
  \slurUp
  \set Staff.midiInstrument = "church organ"

  <fis a>1 |
  g2. a4 |
  bes2 bes~ |
  bes4 bes a g |
  a1 |
  a2 e4 fis |
  g a b c |
  d2 c |
  b4 a b2 |
  c2. b4 |
  a2 r2 |
  a1 |
  r1 |
  g |
  r |
  f |
  g2 g4 a |
  bes a g f |
  e  f8[ g] e2 |
  fis4. g8 a2 |
  r4  d,8[ e]  fis[ g a fis] |
  g2 a |
  bes bes~ |
  bes4  a8[ bes] a4 g |
  a1
}

bass = \context Voice = "four"  \relative c {
  \clef bass
  \stemDown \tieDown \slurDown
  \set Staff.midiInstrument = "church organ"
  
  d1 |
  g,~ |
  g4 a bes c |
  d1~ |
  d |
  a4 b c d |
  e fis g2 |
  d  a8[ b c d] |
  e1 |
  a,2 r2 |
  r a'4 g |
  f e d2 |
  g g4 f |
  e d c2 |
  f f4 e |
  d c bes a |
  g1~ |
  g |
  a |
  d |
  g,2 d' |
  g, fis |
  g2.  bes8[ c] |
  d1 |
  d,
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

