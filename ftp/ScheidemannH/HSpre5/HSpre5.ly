% Updated to Lilypond 2.2.5 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% convert-ly -> Lilypond 2.4.2 by Chris Sawer <chris@mutopiaproject.org>
% Last changed on 2/Jan/2005

\version "2.4.0"

\header {
  filename = "HSpre5.ly"
  title = "Praeambulum no. 5 in d"
  opus = "WV 33"
  source = "Baerenreiter"
  composer = "Heinrich Scheidemann (ca. 1595-1663)"
  copyright = "Public Domain"
  mutopiatitle = "Praeambulum no.5 in d"
  mutopiacomposer = "ScheidemannH"
  mutopiaopus = "WV 33"
  mutopiainstrument = "Organ"
  style = "Renaissance"
  copyright = "Public Domain"
  maintainer = "Tim Knigge"
  maintainerEmail = "tim@asset-control.com"
  lastupdated = "2005/Jan/02"

  footer = "Mutopia-2005/01/02-112"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}  

#(set-global-staff-size 20)
\include "nederlands.ly"

\layout {
  indent = 0
}

global =  {
  \time 4/4
  \skip 1*63
  \bar "|." |
}

soprano = \context Voice = "one"  \relative c'' {
  \clef treble
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  a4  b8[ c] d4 c |
   bes8[ a bes c] bes4 a |
  g1 |
  f4  f8[ g] a4 b |
  c1~ | %5
  c4 bes a g |
  a2 a4 d~ |
   d8[ d] c4 b a~ |
   a8[ a] gis4 a  e16[ fis g e] |
  a4. g8 f4  g8[ a] | %10
  bes2~  bes8[ a g f] |
  e2  d8[ e f g] |
   a[ b c bes] a4 g |
  fis a a a |
  b4. a8  g[ a16 b]  c8[ d] | %15
  b2 a4 <cis a> |
  <cis a> <cis a> <d a>  c8[ b] |
   a[ d a c] <b g>4 <b g> |
  <b g> <b g> c  g8[ a] |
   bes[ c] d4.  d8[ c bes] | %20
  a2~  a8[ a g f] |
  e4 e f  g8[ f16 g] |
  a4  a8[ b] c2 |
  r8  c8[ bes a]  g[ f] g4 |
  f2 r4  f8[ g] | %25
  a2 r8  a[ g f] |
   e[ d] e4 d d'~ |
   d8[ d] a4 c4. c8 |
  g4 bes4. bes8 f4 |
  a4. a8 e4 g | %30
  c,  d8[ e]  f[ g a b] |
  c4 a g f~ |
   f8[ f] e4 f c' |
  bes a g4. g8 |
  f4 f' e d~ | %35
   d8[ d] cis4 d a' |
  g f e2 |
  d4 c b a~ |
   a8[ a] gis4 a e' |
  d c b2 | %40
  a4 e' c c |
  a a' f f |
  d d b b |
  g g' e e |
  c4. c8 a4. a8 | %45
  d4 r8 d8 b4 r8 b8 |
  e4 r8 e8 c4 r8 c8 |
  f4 e d c |
  bes a  g8[ a f g] |
  e4 a4. a8 g4 | %50
  a cis d4. d8 |
  cis4 e f4. f8 |
  e4 cis d4. c8 |
  b4 c4. b8 a4 |
  bes4. a8 g4  f8[ g] | %55
   a[ b c d] e4 d~ |
   d8[ d] cis4 d a |
  bes4. bes8 a4 fis |
  g4. g8 fis4 a |
   bes8[ a bes c]  d[ bes d c] | %60
  bes4.d8  c[ d bes c] |
  a4. bes8  a[ bes g a] |
  fis1 |
}

alto = \context Voice = "two"  \relative c' {
  \clef treble
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

  a1 |
  g2. a4 |
  bes1 |
  a4  d8[ e] f4 g |
  a1 | %5
  g4. f8 e4  d8[ e] |
  f4 e f a~ |
  a2 g4 d |
  e4. d8 cis4 r4 |
  r cis d2~ | %10
  d4  e8[ f]  g[ f e d] |
  cis2 d~ |
  d cis8 d4 cis8 |
  d4 fis fis fis |
  g2 e4 a4~ | %15
   a8[ a] gis4 a e |
  e e fis2~ |
  fis r4 d4 |
  d d e2 |
  d4. e8 f2~ | %20
   f8[ f e d ] cis2~ |
  cis4 cis d e |
  f  f8[ g] a2 |
  r8  a[ g f]  e[ d] e4 |
  f2 r4  d8[ e] | %25
  f2 r8  f8[ e d] |
   cis[ d] cis4 d r4 |
  r1 |
  r |
  r | %30
  r4 r8 c8  d[ e f g] |
  a4 f d  c8[ bes16 c] |
  d4  c8[ bes] a4 a' |
  g f~  f8[ f] e4 |
  f d'  c8[ bes]  a[ g16 a] | %35
  bes4  a8[ g] f4 f' |
  e d4. d8 cis4 |
  d4 a  g8[ f]  e[ d16 e] |
  f4  e8[ d] c4 c' |
  b a4. a8 gis4 | %40
  a r4 r e |
  d r r a' |
  g r r d |
  c r r g' |
  f2 r8 c8 f4 | %45
  r8 f8 d4 r8 d8 g4 |
  r8 g8 e4 r8 e8 a4 |
  r8 a8 g4 f e |
  d  c8[ d] e4 d |
  cis2 d | %50
  cis4 a' a2 |
  a4 cis d2 |
  cis4 a a2 |
  g4 g2 f4 |
  f4. e8 d4 r4 | %55
  r2  c'8[ bes] a4 |
  bes  a8[ g] fis4 fis |
  g2 fis4 d |
  d2 d4 fis |
   g8[ fis g a]  bes[ g bes a] | %60
  g4 bes a g |
  fis4. g8 fis4 e |
  d1 |
}

tenor = \context Voice = "three"  \relative c' {
  \clef bass
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  fis,1 |
  d~ |
  d4  d8[ c] d4 e |
  f1 |
  e4  a8[ b] c4 d | %5
  e d cis d~ |
   d8[ d] cis4 d f~ |
  f e2  a,8[ b] |
   c[ d] b4 a2 |
  r4 e4 f e | %10
  d2. g4~ |
  g g f2 |
  e4 d e2 |
  d4 d' d d |
  g,2 c4 a | %15
  e'2 a,4 a |
  a a a d |
  d d g, g |
  g g g2~ |
  g a | %20
  r1 |
  r4 a4 d c |
  f f, r4  a8[ b] |
  c4 r4 r2 |
  r4  f,8[ g] a2 | %25
  r4  f8[ g] a4 r4 |
  r1 |
  f'4. f8 e4 e~ |
   e8[ e] d4 d4. d8 |
  c4 c4. c8 b4 | %30
  a4. g8 f2 |
  e4 c' bes a |
  g2 f4 f |
  g a bes c |
  f, a' g f | %35
  e2 d4 d |
  e f g a |
  d, e d  c |
  b2 a4 a |
  b c d e | %40
  a,2 r4 a4 |
  f2 r4 d'4 |
  b2 r4 g4 |
  e2 r4 c'4 |
  a2 r8 a8 d4 | %45
  r8 a8 b4 r8 b8 e4 |
  r8 b8 c4 r8 c8 f4 |
  r1 |
  r |
  r | %50
  r4 e f2 |
  e4 a f d |
  a' e f4. e8 |
  d4 e4. d8 c4 |
  d4. c8 bes4  a8[ b] | %55
   c[ d e f] g4 f |
  e2 d4 d |
  bes g d' a |
  bes2 a |
  g1~ | %60
  g |
  r4 d'4 c bes |
  a1 |
}

bass = \context Voice = "four"  \relative c {
  \clef bass
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

  d1 |
  g,1~ |
  g4  g8[ a] bes4 c |
  d1 |
  a2 a'4 b | %5
  c g a bes |
  a2 d,4  d8[ e] |
   f[ g] a4 e f |
  e2 a, |
  r4 a4 d c | %10
  bes a g2 |
  a1~ |
  a |
  d,4 r4 r2 |
  r1 | %15
  r2 r4 a'4 |
  a a d2~ |
  d r4 g,4 |
  g g c2 |
  g2 d'~ | %20
   d8[ d cis b] a2~ |
  a4 r4 r2 |
  r2 r4  f'8[ g] |
   a[ f bes f]  c'[ d] c4 |
  f,  d8[ e ] f2 | %25
  r4  d8[ e]  f[ d g d] |
   a'[ bes] a4 d,2 |
  d'4. d8 a4 c~ |
   c8[ c] g4 bes4. bes8 |
  f4 a4. a8 e4 | %30
  f4. e8 d2 |
  a4 r8 f8 g4 a |
  bes c f, r4 |
  r1 |
  r4 d' e f | %35
  g a d, r |
  r1 |
  r4  a b c |
  d e a, r |
  r1 | %40
  r2 r4 a |
  d2 r4 d4 |
  g2 r4 g,4 |
  c2 r4 c4 |
  f2 r8 f8 d4 | %45
  r8 d8 g4 r8 g8 e4 |
  r8 e8 a4 r8 a8 f4 |
  r8  f[ c' c,]  d[ d' a a,] |
   bes[ bes' f f,] c'4 d |
  a2 bes | %50
  a4 a' f d |
  a' r4 r2 |
  r4  a8[ g]  f[ e] d4 |
   g8[ f e d] c4  f8[ e] |
   d[ c] bes4. c8 d4 | %55
  a2  e8[ e' f f,] |
   g[ g' a a,] d2 |
  r2 r4 d4 |
  bes g d'2 |
  <d g,>1~ | %60
  <d g,> |
  d |
  d, |
}

\score {
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
        \bass
      >>   
    >>
    \midi {
      \tempo 4 = 90
    }
    \layout { linewidth = 19.0\cm }
}

