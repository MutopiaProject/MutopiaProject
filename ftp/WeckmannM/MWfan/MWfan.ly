% Updated to Lilypond 2.2.5 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% convert-ly -> Lilypond 2.4.2 by Chris Sawer <chris@mutopiaproject.org>
% Last changed on 2/Jan/2005

\version "2.4.0"

\header {
  filename = "MWfan1.ly"
  title = "Fantasia d moll"
  source = "Breitkopf"
  composer = "Matthias Weckmann (1621-1674)"
  copyright = "Public Domain"
  mutopiatitle = "Fantasia d moll"
  mutopiacomposer = "WeckmannM"
  mutopiainstrument = "Organ"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Tim Knigge"
  maintainerEmail = "tim@asset-control.com"
  lastupdated = "2005/Jan/02"

  footer = "Mutopia-2005/01/02-131"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

#(set-global-staff-size 20)
\include "nederlands.ly"

\layout {
  indent = 0
  interscorelinefill = 3.0\pt
}

global =  {
  \key d \minor
  \time 4/4
  \skip 1*43
  \time 3/4
  \skip 2.*59
  \time 4/4
  \skip 1*9
  \bar "|." |
}

upOne = \context Voice = "one"  \relative c'' {
  \clef treble
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  r1 |
  r |
   d8[ d d d]  c[ d16 e]  a,8[ c] |
   d[ e f d]  e8.[ d16]  c8[ b16 c] |
   d8.[ e16]  f8.[ g16] e4. a8~ |
   a[ g c, f] e4~  e16[ e d e] |
  f4. f8 e4  d8[ e~] |
  e d4 cis8  d[ c16 b]  a8[ b] |
  c2 r |
  r  d8[ d d d] |
   cis[ d16 e]  a,8[ cis]  d[ e f d] |
   e[ f]  g[ e]  f16[ g f e]  d[ c b a] |
  gis4 a  f16[ g f e]  d[ e d c] |
   g'[ a g f]  e[ d e c'] gis4 r8 c |
   d[ c] b4 r2 |
  r1 |
  r |
   d8[ d d d]  cis[ d16 e]  a,8[ cis] |
   d[ e f d] e4 d |
   cis8[ d16 e] d4~  d8[ c16 b] c4~ |
   c8[ b16 a] b4~  b8[ a16 gis] a4~ |
  a g g4. g8 |
  g4. f8 f4  e8[ c'] |
  b4  a8[ b] g4. c8 |
   b[ c d b] r2 |
  r  e8[ e e e] |
   cis[ d16 e]  a,8[ cis]  d[ e f d] |
   e[ f g e]  a[ bes c a] |
   d,[ e f d]  g[ a bes g] |
  r2  d8[ e16 f]  b,8[ cis16 d] |
   cis8[ d16 e]  a,8[ b16 cis]  b8[ cis16 d] r4 |
  r2  a'8[ a a a] |
   f[ g16 a]  d,8[ f]  g[ a bes g] |
   a[ bes16 c]  fis,8[ g16 a]  g8[ a16 bes]  e,8[ f16 g] |
   e8[ f16 g]  c,8[ d16 e] f2~ |
   f8[ g16 a]  b,8[ cis16 d] cis4 d~ |
   d8[ e16 f]  b,8[ cis16 d]  cis8[ d]  d8.[ cis16] |
   d8[ e] f4 e  d8[ e] |
  cis4 r8 d cis4 r8 f |
  e4 r8 a~  a16[ g f g] e4 |
  r16  a,[ b c] d4~ d2 |
  r  e8[ e16 f]  g[ cis,8.] |
  d1 |
  r2. |
  r |
  r |
  r |
  r |
  r |
  d4 d d |
  cis4. e8 a,4 |
  d2 cis4 |
  d2. |
  r |
  a'4 a a |
  f4. a8 d,4 |
   e8.[ f16]  g8[ g]  f[ e] |
  d4 f d |
  e g e |
  r2. |
  r |
  r |
  r |
  r |
  r |
  r |
   gis,8.[ a16]  b8[ b]  a[ gis] |
  a2. |
   a8.[ b16]  c8[ c]  b[ a] |
  a4 a gis |
  a2.~ |
  a~ |
  a~ |
   a8.[ g16]  a8[ a]  g[ fis] |
   g8.[ a16]  bes8[ bes]  a[ g] |
   fis8.[ g16]  a8[ a]  g[ fis] |
  g2.~ |
  g~ |
  g |
  r |
   b8.[c16]  d8[ d]  c[ b] |
   c8.[ d16]  e8[ e]  d[ c] |
   b8.[ c16]  d8[ d]  c[ b] |
   a8.[ b16]  c8[ c]  b[ a] |
  gis2 a4 |
  a2 gis4 |
  a2.~ |
  a~ |
  a~ |
  a |
   bes8.[ c16]  d8[ d]  c[ bes] |
   a8.[ bes16]  c8[ c]  bes[ a] |
   g8.[ a16]  bes8[ bes]  a[ g] |
   fis8.[ g16]  a8[ a]  g[ fis] |
   bes8.[ c16]  d8[ d]  c[ bes] |
   a8.[ bes16]  c8[ c]  bes[ a] |
  r4  a8.[ bes16] c4 |
  r c r |
  c bes2 |
  r4 a r |
  a  g8.[ a16] bes4~ |
  bes2. |
  \times 2/3 {  g'8[ f d] } \times 2/3 {  f[ es c] } \times 2/3 {  es[ d bes] }  \times 2/3 {  d[ c a] } |
  \times 2/3 {  es'[ d bes] } \times 2/3 {  d[ c a] } \times 2/3 {  c[ bes g] }  \times 2/3 {  bes[ a fis] } |
  \times 2/3 {  g'[ f d] } \times 2/3 {  f[ es c] } \times 2/3 {  es[ d bes] }  \times 2/3 {  d[ c a] } |
  \times 2/3 {  c[ bes g] } \times 2/3 {  bes[ a fis] } \times 2/3 {  bes[ a fis] }  \times 2/3 {  a[ g e] } |
  \times 2/3 {  a[ g e] } \times 2/3 {  g[ fis d] } \times 2/3 {  g[ fis d] }  \times 2/3 {  fis[ e cis] } |
  r8  fis16[ e]  cis[ e d cis]  fis[ e d g]  fis[ e fis g] |
  a2~ a4 g~ |
  g4. g8 fis4. e8 |
  fis1 |
}

upTwo = \context Voice = "two"  \relative c'' {
  \clef treble
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

   a8[ a a a]  f[ g16 a]  d,8[ f] |
   g[ a bes g]  a8.[ g16]  fis8[ e16 fis] |
   g8[ a bes a16 g]  a8[ g f e] |
   d[ g a b]  c[ gis]  a[ g] |
   f[ g]  a[ b] c4. c8 |
  b4  a8[ d]  cis[ b] a4 |
  a4. a8 g4  f8[ g~] |
   g[ f]  e[ fis16 g] f4.  e16[ d] |
   e8[ f16 g]  c,8[ e]  f[ g a f] |
   g8[ f16 g]  e[ f e f] d4.  cis16[ b] |
   e8[ f16 g]  cis,8[ d16 e]  f8[ g a f] |
  r16  a[ g f]  e8[ f16 g] f2 |
  e r |
  r r4 r8 a |
  b a4 gis8 a2 |
  r1 |
  r |
   f8[ g16 a]  d,8[ g]  e[ f16 g]  cis,8[ e] |
  f4.  g16[ a] g4.  a16[ bes] |
  a2~ a4.  g16[ a] |
  f2 e~ |
  e e4. e8 |
  e4. d8 c4. g'8 |
  f2 r16  f[ e d]  e8[ a] |
  g2 r8 c  b16[  c b a] |
  gis4 r8 a a4 gis |
  a r8 g  f[ g a b] |
  cis d4 cis8 d2 |
  b8 c4 b8 c2 |
   a8[ b16 c]  f,8[ g16 a] d,4 e |
   e8[ f16 g]  cis,8[ d16 e]  d8[ e16 f]  fis8[ gis16 a] |
   gis8[ a16 b]  c32[ a16. b32 gis16.] a2 |
  r4 r8  d32[ c16.]  bes32[ g16. d'32 fis,16.]  bes32[ g16. c32 e,16.] |
   fis8[ g]  a8[ bes16 c]  bes8[ c16 d]  g,8[ a16 bes] |
   g8[ a16 bes]  e,8[ f16 g] a2~ |
  a2. a4 |
  b b a2 |
  a g4  f8[ g] |
  e4 r8  f16[ g] a4 r8 a |
  a1 |
  r2  a8[ a16 b] c4 |
  r2 bes |
  a1 |
  r2. |
  r |
  r |
  r |
  a4 a a |
  f4. a8 d,4 |
  g a bes |
  a2.~ |
  a~ |
  a |
  r |
  r |
  d4 d d |
  cis4. e8 a,4 |
  b d b |
  cis e cis |
  d2. r |
  r |
   a8.[ b16]  c8[ c]  b[ a] |
  gis4. b8  a[ gis] |
   a8.[ b16]  c8[ b]  a[ g] |
   f8.[ g16]  a8[ a]  gis[ fis] |
  e2.~ |
  e |
  r |
  e4 e e |
  cis4. e8 a,4 |
   d8.[ e16]  f8[ f]  e[ d] |
   e8.[ f16]  g8[ g]  f[ e] |
  fis r r4 r |
  d2.~ |
  d |
   d8.[ e16]  f8[ f]  e[ d] |
   e8.[ f16]  g8[ g]  f[ e] |
   d8.[ e16]  f8[ f]  e[ d] |
   e8.[ f16]  g8[ g]  f[ e] |
  g2. |
  r |
  r |
   e8.[ f16]  g8[ g]  f[ e] |
  e2 f4 |
  e2. |
   e8.[ f16]  g8[ g]  f[ e] |
   d8.[ e16]  f8[ f]  e[ d] |
   e8.[ f16]  g8[ g]  f[ e] |
   d8.[ e16]  f8[ f]  e[ d] |
  d2.~ |
  d~ |
  d~ |
  d~ |
  d~ |
  d |
  r4 a'~ a |
  r a r |
  a g2 |
  r4 d r |
  d d g~ |
  g2. |
  r1 |
  r |
  r |
  r |
  r |
  r |
  r16  g[ fis e] d4 r16  d[ e fis] d4~ |
  d4. d8 d4. cis8 |
  d1 |
}

downOne = \context Voice = "three"  \relative c' {
  \clef bass
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  r1 |
  r |
  r |
  r |
   d8[ d d d]  c[ d16 e]  a,8[ c] |
   d[ e f d]  e8[ d]  cis8[ b16 cis] |
  d4. d8  bes[ c d g] |
   cis,[ d] e4 d4.  c16[ b] |
  a2 r16  d[ c b]  a8[ d16 c] |
  b4. a8~ a a gis4 |
  a1~ |
  a2 a4. b8 |
   c16[ d c b]  a[ c b a]  d[ e d  c]  b[ c b a] |
   e'[ f e d]  c[ b c a] e'4 r |
   e8[ e e e]  c[ d16 e]  a,8[ c] |
   d[ e f d] \change Staff = treble \stemDown  g[ a bes g~] |
   g16[ e f g] \change Staff = bass \stemUp  f[ d e f] cis8 d4 c8~ |
   c[ bes16 a] bes4 a2~ |
  a  bes8[ c d e] |
  f4.  e16[ d] e2 |
  d4.  c16[ b] c4.  b16[ a] |
  b2 b4. a8 |
  a4. a8 g4. e'8 |
  d2 r16  d[ c b]  c8[ e] |
   d[ e f d] \clef treble r g f4 |
  e r8  g16[ f] e2 |
  r4 r8 e d2 |
   a'8[ a a a]  fis[ g16 a]  d,8[ fis] |
   g8[ g g g]  e[ f16 g]  c,8[ d16 e] |
   f8[ e d c]  bes[ a] g4 \clef bass |
  a2.  a8[ b16 c] |
   b8[ c16 d]  e32[ c16. d32 b16.]  cis8[ d16 e]  f32[ d16. e32 c16.] |
  d1 |
  d |
  c |
  \clef treble cis4 d  e8[ f16 g] f4 |
  e4. e8~  e[ f16 g] e4 |
  \clef bass d~  d16[ d c d]  bes8[ c d bes] |
  a4 r8 a a4 a8  a16[ b] |
  cis4 d~  d8[ d] cis4 |
  \clef treble r4 r16  a'[ fis d]  a'8[ a~] a4 |
  r2 g~ |
   g8.[ g16]  fis[ g fis16. e32] fis2 |
  \clef bass r2. |
  d4 d d |
  c4. e8 a,4 |
  d  e8[ f]  e[ d] |
  cis2. |
  d |
  c2 d4 |
  f2.~ |
  f4 e2 |
  d2.  |
  \clef treble  e8.[ f16]  g8[ f]  e[ d] |
  cis4 e cis |
  d2. r |
  r |
  a'4 a a |
  f4. a8 d,4 |
   e8.[ f16]  g8[ g]  f[ e] |
   f8.[ g16]  a8[ a]  g[ f] |
   c8.[ d16]  e8[ e]  d[ c] |
  b4. d8  c[ b] |
  a4. b8  c[ b] |
  a2 b4 |
  b2.  |
  \clef bass c |
   c8.[ d16]  e8[ e]  d[ c] |
  c4 b2 |
  r2. |
  r |
  r |
  r |
  r |
  r |
   b8.[ c16]  d8[ d]  c[ b] |
   c8.[ d16]  e8[ e]  d[ c] |
   b8.[ c16]  d8[ d]  c[ b] |
   c8.[ d16]  e8[ e]  d[ c] |
   d8.[ e16]  f8[ f]  e[ d] |
   e8.[ f16]  g8[ g]  f[ e] |
   d8.[ e16]  f8[ f]  e[ d] |
   c8.[ d16]  e8[ e]  d[ c] |
  b2 c4 |
  b2. |
  a~ |
  a |
  a |
  a |
   g8.[ a16]  bes8[ bes]  a[ g] |
   fis8.[ g16]  a8[ a]  g[ fis] |
   bes8.[ c16]  d8[ d]  c[ bes] |
   a8.[ bes16]  c8[ c]  bes[ a] |
  g2. |
  a |
  r4 d2 |
  r4 d r |
  a  bes8.[ c16] d4 |
  r c r |
  c  bes8.[ c16] d4~ |
  d2. |
  r1 |
  \times 2/3 {  g8[ f d] } \times 2/3 {  f[ es c] } \times 2/3 {  es[ d bes] }  \times 2/3 {  d[ c a] } |
  \times 2/3 {  bes[ a f] } \times 2/3 {  a[ g es] } \times 2/3 {  g[ f d] }  \times 2/3 {  f[ es c] } |
  \times 2/3 {  es'[ d bes] }  \times 2/3 {  d[ c a] } \times 2/3 {  d[ c a] }  \times 2/3 {  c[ bes g] } |
  \times 2/3 {  c[ bes g] } \times 2/3 {  bes[ a fis] } \times 2/3 {  bes[ a fis] }  \times 2/3 {  a[ g e] } |
  r8  a16[ g]  e[ g fis e]  a[ g fis bes]  a[ g a bes] |
  c4~  c16[ c bes a] bes2~ |
  bes4. bes8 a4. g8 |
  a1 |
}

downTwo = \context Voice = "four"  \relative c' {
  \clef bass
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

  r1 |
  r |
  r |
  r |
  r |
  r2  a8[ a a a] |
   f[ g16 a]  d,8[ f]  g[ a bes g] |
  a1 |
  a2 r |
  r1 |
  r |
  r |
  r |
  r |
  r2  a8[ a a a ] |
   f[ g16 a]  d,8[ f]  bes16[ c bes a]  g[ f e d] |
  cis4 d  e8[ f] e4 |
  d2 r |
  r1 |
  r |
  r |
   e8[ e e e]  c[ d16 e]  a,8[ c] |
   d[ e f d]  e[ f g e] |
   f[ g a f] g2 |
  g \clef treble r8  e'[ d c] |
  b4 r8 c c4 b |
  a4. a8 d2 |
  a2 r |
  g r |
  r1 |
  \clef bass r |
  r |
  r |
  r |
  r |
  \clef treble r |
  r2  a8[ a a a] |
  \clef bass  f[ g16 a]  d,8[ f]  g[ a bes g~] |
  g4 r8 f e4 r8 d |
  e4  f8.[ g16] a2 |
  \clef treble r2 d |
  r16  d[ e f]  g[ d bes g] g2 |
  a1 |
  a4 a a |
  f4. a8 d,4 |
  e2 f4~ |
  f g2 |
  a2. |
  bes~ |
  bes4 a g |
  a2.~ |
  a |
  d, |
  r |
  r |
  r |
  r |
  r |
  \clef treble r |
  d'4 d d |
  cis4. e8 a,4 |
   d8.[ e16]  f8[ f]  e[ d] |
  r2. |
  r |
  r |
  r |
  r |
  \clef bass  e,8.[ fis16]  g8[ g]  fis[ e] |
  e2.~ |
  e |
  a4 a a |
  f4. a8 d,4 |
  a2  a'8[ g] |
   a8.[ bes16]  c8[ c] bes[ a] |
  g2. |
   a8.[ bes16]  c8[ c]  bes[ a] |
  g2.~ |
  g |
  g4 g g |
  e4. g8 c,4 |
  r2. |
  r |
  r |
  r |
  r |
   b8.[ c16]  d8[ d]  c[ b] |
   cis8.[ d16]  e8[ e]  d[ cis] |
   b8.[ cis16]  d8[ d]  cis[ b] |
   cis8.[ d16]  e8[ e]  d[ cis] |
   f8.[ g16]  a8[ a]  g[ f] |
  d2.~ |
  d~ |
  d~ |
  d~ |
  d~ |
  d |
  r4 d2 |
  r4 d r |
  d d2 |
  r4 d r |
  d d2~ |
  d2. |
  r1 |
  r |
  r |
  r |
  r |
  r2 d~ |
  d1~ |
  d |
  d |
}

bass = \context Voice = "five"  \relative c {
  \clef bass
  \stemDown
  \tieDown
  \slurDown
  \set Staff.midiInstrument = "church organ"

  r1 |
  r |
  r |
  r |
  r |
  r |
  r |
  r2  d8[ d d d] |
   c[ d16 e]  a,8[ c]  d[ e f d] |
   e[ d16 e]  c8[ d] b2 |
  a4  a'8[ g]  f[ e] d4 |
   cis8[ d e cis] d2 |
  e4 c, d2 |
  e1~ |
  e2 a |
  d g, |
  a1 |
  r2  a'8[ a a a] |
   f[ g16 a]  d,8[ f]  g[ a bes g] |
  a2. a4 |
  d,4. d8 e2 |
  e, a4. a8 |
  d,2 r4 r8 c8 |
   d[ e f d] e4. f8 |
  g2 c,4 d |
  e r8 d e2 |
  a r |
  r1 |
  r |
  r |
   a'8[ a a a] d,4. d8 |
   e[ e e e] a,2 |
   d8[ d d d] g,2 |
   d''8[ d d d] g,2 |
   c8[ c c c]  f,[ g16 a]  d,8[ e16 f] |
  a,2.  d8[ e16 f] |
  g,2 a |
  d, g |
  a4 d, a' r8 d, |
  a'2~ a4. g8 |
  fis1 |
  g |
  d |
  r2. |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  a''4 a a |
  f4. a8 d,4 |
  g bes g |
  a2. |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  e4 e e |
  c4. e8 a,4 |
  d4. f8 d4 |
  e2. |
  e,~ |
  e~ |
  e |
  a |
  d4 d d |
  cis4. e8 a,4 |
  d d d |
  bes4. d8 g,4 |
  d d d |
  g2.~ |
  g |
  r |
  r |
  g4 g g |
  e4. g8 c,4 |
  g'2. |
  c2 d4 |
  e2 d,4 |
  e2. |
  a~ |
  a |
  a4 a a |
  f4. a8 d,4 |
  g2. |
  d' |
  g, |
  d'4 d d |
   g,8.[ a16]  bes8[ bes]  a[ g] |
  fis2. |
  r4 fis2 |
  r4 fis r |
  fis g2 |
  r4 fis r |
  fis g2~ |
  g2. |
  g1~ |
  g~ |
  g~ |
  g~ |
  g |
  d~ |
  d~ |
  d~ |
  d |
}

\score {
  <<
    \context PianoStaff <<
      \set PianoStaff.followVoice = ##t
      \context Staff = "treble" <<
        \global 
        \upOne
        \upTwo
      >>	
      \context Staff = "bass" <<
        \global 
        \downOne
        \downTwo
      >>   
    >>
    \context Staff = "pedal" <<
      \global 
      \set Staff.minimumVerticalExtent = #'(-2 . 2)
      \bass
    >>   
  >>
  \midi {
    \tempo 4=90
  }
  \layout {
    linewidth = 19.0\cm
  }
}
