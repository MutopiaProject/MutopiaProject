% Updated to Lilypond 2.2.5 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% convert-ly -> Lilypond 2.4.2 by Chris Sawer <chris@mutopiaproject.org>
% Last changed on 2/Jan/2005

\version "2.4.0"
#(ly:set-option 'old-relative)
\header {
  filename = "HSpre13.ly"
  title = "Praeambulum no.13 in G"
  opus = "WV 73"
  source = "Baerenreiter"
  composer = "Heinrich Scheidemann (ca. 1595-1663)"
  copyright = "Public Domain"
  mutopiatitle = "Praeambulum no. 13 in G"
  mutopiacomposer = "ScheidemannH"
  mutopiaopus = "WV 73"
  mutopiainstrument = "Organ"
  style = "Renaissance"
  copyright = "Public Domain"
  maintainer = "Tim Knigge"
  maintainerEmail = "tim@asset-control.com"
  lastupdated = "2005/Jan/02"

  footer = "Mutopia-2005/01/02-134"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}  

#(set-global-staff-size 20)
\include "nederlands.ly"

\layout {
  indent = 0
}

global =  {
  \time 4/4
  \skip 1*141
  \bar "|." |
}

soprano = \context Voice = "one"  \relative c'' {
  \clef treble
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  g2. a4 |
  b c d2~ |
  d d4 e |
  fis g a d,~ |
   d8[ d] c4. c8 b4 |
  c d e f |
  g2 r8  e[ d c] |
  b4 c d2 |
  r8  d[ c b] a4 b |
  c d e2~ |
   e8[ f] d4. e8 cis4 |
  d e f2~ |
  f4 e d2~ |
  d4  c8[ b] c2~ |
  c4  b8[ a] b2 |
  a4 g g4. a8 |
  b4. c8 a2 |
  g4 g b  b8.[ c16] |
  d2 r4 d~ |
   d8[ d] c4 b2~ |
  b a |
  g4 fis g a |
  d, g b  b8.[ c16] |
  d2. g4~ |
   g8[ g] f4 e2 |
  r1 |
  r2 r4 a, |
  b c d d~ |
   d8[ d] c4. c8 b4 |
  a2 r |
  r4 d,4 e  e8.[ fis16] |
  g2 r4 g~ |
   g8[ g] f4 e a |
  c  c8.[ d16] e2 |
  r4 e4. e8 d4 |
  c2 b |
  a g |
  fis r |
  r r4 <b d> |
  <c e> <d f> <e g> <f d>8[ <e c>] |
  <d b>4 c r2 |
  r2 r4 b~ |
  b b a  a8[ b] |
  c4  c8[ d] e4  e8[ fis] |
  g4  d8[ e]  c[ d b c] |
   a[ b c d] e4 b |
  c d4.  c8[ b a] |
   g[ a] b4  e,8[ fis] g4~ |
   g8[ a] b4. c8 d4~ |
  d  c8[ b]  a[ g] a4 |
  b1 |
  r |
  r4 a a b |
  c4. b8 a4  g8[ f] |
   e[ f g e] a2 |
  d,4 g g a |
  bes a g f |
  e2 r |
  r4  a8[ g]  a[ b c d] |
  b4 e4. d8 c4~ |
   c8[ b] a4. a8 d4 |
  cis2 r |
  r4 d4. d8 c4 |
  b g'4. g8 f4 |
  e e4. e8 d4~ |
   d8[ d] c4. c8 b4~ |
   b8[ b] a4. a8 g4 |
  a b c d |
  e2.  d8[ c] |
   b[ c] d4  c8[ d b c] |
   a[ g] a4 g2 |
  r1 |
  r |
  r4 e4. e8 fis4~ |
   fis8[ fis] g4. g8 a4~ |
   a8[ a] b4. b8 c4~ |
   c8[ d e f] d2 |
  r1 |
  r4 d c b |
  a2 g4 r |
  r1 |
  r4 c d e |
  f g e2 |
  r1 |
  r4 e d c |
  b2 a4 r |
  r1 |
  r4 a  b8[ c] d4~ |
   d8[ d] cis4 d a~ |
   a8[ g fis e] d4 d'~ |
   d8[ c b a] g4 r8 g' |
  e4 f d r8 e |
  cis4 d b r8 c8 |
  a4 b c d |
  e fis g2~ |
   g8[ g fis e]  fis[ g16 fis]  g[ fis e fis] |
  g2 r |
  r r4 g, |
  c4. b8 a4 g |
  c4. b8 a4 g |
  c,8 f4 e8 d4 a' |
  d4. c8 b4 a |
  d4. c8 b4 a |
  d,8 g4 fis8 e4 b' |
  e4. d8 c4 b |
  e4. d8 c4 b  |
  e,8 a4 gis8 a4 c |
  f4. e8 d4 c |
  f4. e8 d4 c~ |
   c8[ c] b4. b8 cis4 |
  d bes4. bes8 a4~ |
   a8[ a] b4 c a~ |
   a8[ a] g4. g8 a4 |
   b8[ c] d4.  c16[ b] a[ b c a] |
  b2 a |
  g r |
  d4. e8  fis[ g a b] |
  c2 b |
  e,4. fis8  gis[ a] b4 |
  a2 r4 e~ |
   e8[ fis g a]  b[ c] d4 |
  e2 d |
  c r4 d~ |
   d8[ d] c4. c8 b4~ |
   b8[ b] a4. a8 g4~ |
   g8[ g fis e] fis g4 fis8 |
  g1 |
  r |
  r |
  r |
  r2 c~ |
  c4 c b bes |
  a2. b4 |
  c bes a g |
  fis2 g~ |
  g4 g fis2 |
  g g'~ |
  g4 g fis f |
  e1~ |
  e4 e d c |
  d1
}

alto = \context Voice = "two"  \relative c' {
  \clef treble
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

  d1 |
  g2 a~ |
  a4 a g2~ |
  g4  fis8[ e] fis2 |
  g4 e d2 |
  e4 f g2 |
  r1 |
  r8  g[ f e] d4 e |
  f1 |
  e4 f g2 |
  g1 |
  f4 g a2 |
  g  a |
  g fis |
  g2. f4 |
  e d cis2 |
  d d4 c |
  b2. g'4~ |
   g8[ g] fis4 g d |
  e fis g2~ |
  g r |
  r1 |
  r2 r4 g~ |
   g8[ g] fis4 g2 |
  c,4 d e4. f8 |
  g4 e d2 |
  e4 d e f |
  g2~  g8[ g] f4 |
  e2 d~ |
  d4 a b c |
   d8[ c b a] g4 c~ |
   c8[ c] b4 c g |
  a b c4. d8 |
  e1 |
  r4 g, a b |
   c8[ d e fis] g4 d |
  e d4. d8 cis4 |
  d a b c |
  d  c8[ b] a4 g'~ |
   g8[ g] f4 e f |
  g c, r e~ |
  e e d g~ |
  g g fis  fis8[ g] |
  a4  a8[ b] c4  c8[ a] |
  b4  b8[ c]  a[ b g a] |
   fis[ g a b] c4 g~ |
  g a  b8[ a g f] |
  e4. d8 c4 d |
  e fis g a |
  b  a8[ g] fis g4 fis8 |
  g1 |
  r4 d d e |
  f2~  f8[ f e d] |
  e4. d8 c4  b8[ a] |
  g2 c |
  b c~ |
  c4 c  b8[ c a b] |
  c4  g8[ fis]  g[ a b c] |
  a4  fis'8[ e]  fis[ g a fis] |
  gis4 b a e |
  f c d2 |
  a'4 a4. a8 g4 |
  fis4. d8 fis4 a |
  g4. g8 b4 d |
  c c4. c8 b4~ |
   b8[ b] a4. a8 g4~ |
   g8[ g] f4. f8 e4 |
  fis g a b |
  c2.  b8[ a] |
  g4. f8  e[ fis g e] |
  fis g4 fis8 g2 |
  d4. d8 c4. c8 |
  b4. b8  a[ b c d] |
  b2 c4. c8 |
  d4. d8 e4. e8 |
  fis4. fis8 g4. g8 |
   a[ b c a] b4 d, |
  c b a2 |
  b4 b' a g~ |
   g8[ g] fis4 g g |
  f e d2 |
  c4 e d c~ |
   c8[ c] b4 c e |
  d c b2 |
  c4 c' b a~ |
   a8[ a] gis4 a4 d, |
  e f g a |
  d,4. d8 g4 f |
  e2 d |
  d4. c8  b[ a] g4 |
  g'4. f8  e[ d] c4 |
  r8 c' a4 bes g |
  r8 a fis4 g e |
  r8 f d4 e fis |
  g a b c |
  a g a2 |
  g4 d d e |
  c d e2~ |
  e1 |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r2 r4 g |
  f1~ |
  f2 e~ |
  e1 |
  d |
  d2~ d4. c8 |
  b2 a |
  b a4 d |
  e2~ e4. d8 |
  c2 b |
  c b |
  c4 e d2 |
  g~ g4. f8 |
  e2 d |
  e d4. e8 |
  fis4. e8 d2 |
  d1 |
  d |
  r |
  r2 g~ |
  g4 g fis f |
  e1 |
  d |
  cis2 d~ |
  d4 d c2~ |
  c4 c b bes |
  a g a2 |
  g4 a b c |
  d2 d~ |
  d4  c8[ b] c2 |
  r1 |
  d   
}

tenor = \context Voice = "three"  \relative c' {
  \clef bass
  \stemDown \tieUp \slurUp 
  \set Staff.midiInstrument = "church organ"

  b2. c4 |
  d2. c4 |
  b2.  c8[ b] |
  a1 |
  g |
  c2. d4 |
   e8[ c b a] g4 a |
  b a b c |
  d1 |
  c |
  b4. a8 g2 |
  a2. b4 |
  c2 b4 a |
  e'2 d4 c |
  d1 |
  c4 b a g |
  fis g4. g8 fis4 |
  g1 |
  r |
  r2 r4 g |
  b  b8.[ c16] d2 |
  r4 d4. d8 c4 |
  b4. c8 d4 g, |
  b a b g |
  a b c2 |
  r4 c4. c8 b4 |
  c b c d |
  g,4. a8  b[ c d d,] |
   e[ f g a]  b[ c d e] |
  fis2 r |
  r r4 c, |
  d2 e |
  f4 g a2~ |
  a b |
  c r |
  r r4 g~ |
   g8[ g] fis4 g2 |
  a4 fis g a |
  b  a8[ g] fis4 g |
  r1 |
  r2 r4 c~ |
  c c b g |
  d'2.  b8[ b] |
  a4  f'8[ d] c4  a8[ d] |
  g,4  g'8[ e]  f[ d e c] |
  d4  c8[ b] a4 e'~ |
  e fis g4. b,8 |
  c4 gis a  b8[ g] |
  c4  d8[ b] e4  fis8[ d] |
  g4 c,  d8[ g,] d'4 |
  g,2 g4 a |
  b2~  b8[ b a g] |
  a1~ |
  a2 r |
  r4 e4 e fis |
  g2 e |
  d1 |
  c4  e8[ d]  e[ f g e] |
  fis4 d' d a |
  e'4. d8 c4. b8 |
  a4. g8 f4. g8 |
  e4. a8 cis4 e |
  d r r2 |
  r1 |
  r4 c e g |
  g, a c e |
  e, f a c~ |
  c b a2~ |
  a4 b c d |
  e b c g |
   d'8[ e c d] g,4 b~ |
   b8[ b] a4. a8 g4~ |
   g8[ g] fis4.  g8[ a fis] |
  gis2 a4. a8 |
  b4. b8 c4. c8 |
  d4. d8 e4. e8 |
  f4 c g' b, |
  a g4. g8 fis4 |
  g g a b |
  c d g, e' |
  d c4. c8 b4 |
  c g'f e |
  d2 c4 c |
  b a4. a8 gis4 |
  a a b c |
  d e a, a |
  g f e2 |
  fis r |
  r1 |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r4 b4 b c |
  a b c2 |
  r4 g c4. b8 |
  a4 g c4. b8 |
  a4 g fis2~ |
  fis4 a d4. c8 |
  b4 a d4. c8 |
  b4 a g2~ |
  g4 b e4. d8 |
  c4 b e4. d8 |
  c4 b a2~ |
  a4 c f4. e8 |
  d4 c f4. e8 |
  d2 g, |
   a8[ d,] d'4 c2 |
  d  g,8[ e] c'4 |
  b2 c4  e,8[ fis] |
   g[ a b c] d2 |
  r4 g,4. g8 fis4 |
   g8[ g, b c] d2 |
  r4 g4. g8 fis4 |
   a8[ a, c d] e2 |
  r4 a4. a8 gis4 |
   a8[ a, c d] e2 |
  r4 c'4. c8 b4 |
   c8[ c, e f] g2 |
  r4 c4. c8 b4 |
   c8[ c, e f]  g[ a b c] |
  d4 c b2 |
   a8[ d,16 e]  fis8[ g]  a[ b] a4 |
  b2. c4 |
  d2 a4. b8 |
  c2 b4 c |
  d2 d, |
  g4  fis8[ g] a4 e |
  fis2 g~ |
  g4 g fis f |
  e d e2 |
  a d4 e |
  f e d c |
  b2 g4 a |
  b c d d, |
  g2. a4  |
  b c b a |
  g1
}

bass = \context Voice = "four"  \relative c' {
  \clef bass
  \stemDown \tieDown \slurDown
  \set Staff.midiInstrument = "church organ"
  
  g1 |
  g2 fis |
  g1 |
  d2~ d4. c8 |
  b4 c g2 |
  r c~ |
  c4 d e f |
  g1 |
  d4 e f g |
   a8[ a, g f] e4 f |
  g4. f8 e2 |
  d1 |
  e2 f |
  e a |
  g1 |
  c2 e |
  d1 |
  g, |
  r |
  r |
  r4 g'4. g8 fis4 |
  g d e fis |
  g2. e4 |
  b d g,2 |
  r r4 c |
  e  e8.[ f16] g2 |
  r4 g4. g8 f4 |
  e2 b |
  c g |
  r4 d'4. d8 c4 |
  b2 c4 a |
  g2 c |
  r1 |
  r4 a'4. a8 gis4 |
  a e fis gis |
  a2 e4 b |
  c d e2 |
  d4 d4. d8 c4 |
  b c d g, |
  r1 |
  r2 c |
  g'1 |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r4 e e fis |
  g1 |
  d |
  r4 a a b  |
  c2 a |
  g1~ |
  g4 fis g2 |
  r4 c c g |
  d'2 r |
  r4 gis a4. g8 |
  f4. e8 d2 |
  a r |
  r1 |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r2 r4 g'~ |
   g8[ g] f4. f8 e4~ |
   e8[ e] d4. d8 a4 |
  e'2 r |
  r1 |
  r |
  r2 r4 g, |
  a b c d |
  g,2 r |
  r r4 c |
  d e f g |
  c,2 r |
  r r4 a |
  b c d e |
  a,2 r |
  r r4 f' |
  e d4. d8 cis4 |
  d2 r |
  r1 |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r4 g g e |
  f d c2~ |
  c1~ |
  c2. e4 |
  f c d2~ |
  d1~ |
  d2. fis4 |
  g d e2~ |
  e1~ |
  e2. g4 |
  a e f2~ |
  f1~ |
  f2. f4 |
  g4. f8 e2 |
  d4. e8 f4. e8 |
  d2 c4. d8 |
  e4. d8 c2 |
  g4 g'4. g8 fis4 |
   g8[ g, b c] d2 |
  r4 g4. g8 fis4 |
   g8[ g, b c] d2 | |
  r4 a'4. a8 gis4 |
   a8[ a, c d] e2 |
  r4 a4. a8 gis4 |
   a8[ a, e' fis] g2 |
  r4 c4. c8 b4 |
   c8[ c, e f] g2 |
  r1 |
  r8  d[ e fis]  g[ g, b c] |
  d1 |
  g,2 g'~ |
  g4 g fis f |
  e1 |
  b |
  c |
  d2 g, |
  a1~ |
  a |
  d,~ |
  d |
  g~ |
  g4 a b2 |
  <<
   { r4 d e fis g2. a4 b1 } \\
   { c,1 | g~ | g }
  >>   
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

