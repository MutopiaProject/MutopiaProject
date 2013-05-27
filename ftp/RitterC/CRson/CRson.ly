% Updated to Lilypond 2.2.5 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% convert-ly -> Lilypond 2.4.2 by Chris Sawer <chris@mutopiaproject.org>
% Last changed on 2/Jan/2005

\version "2.4.0"

\header {
  filename = "CRson.ly"
  title = "Sonatina d moll"
  source = "Breitkopf"
  composer = "Christian Ritter (1645?-1725?)"
  copyright = "Public Domain"
  mutopiatitle = "Sonatina d moll"
  mutopiacomposer = "RitterC"
  mutopiainstrument = "Organ"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Tim Knigge"
  maintainerEmail = "tim@asset-control.com"
  lastupdated = "2005/Jan/02"
  
  footer = "Mutopia-2005/01/02-130"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}  

#(set-global-staff-size 20)
\include "nederlands.ly"

\layout {
  indent = 0
%  interscorelinefill = 3.0\pt
}

global =  {
  \key d \minor
  \time 4/4
  \skip 1*2
  \time 4/2
  \skip \breve*52
  \time 4/4
  \skip 1*24
  \bar "|." |
}

upOne = \context Voice = "one"  \relative c' {
  \clef treble
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  s2  d32[ a d e f g e f]  d[ e f g a b cis a] |
   d16[ cis32 b a g f e] s2. |
  r1 d'~ |
  d2 e <d f> <cis e> |
  d2. c4 bes2 a~ |
  a4  g8[ fis] g2~ g4  a8[ g] f4. e8 |
  e2. f4 d2. e4 |
  cis2 d~ d4  e8[ d] cis4. d8 |
  d4 e f g a b c  b8[\trill a] |
  d1~ d4  e8[ d] cis4 b |
  cis d e2~ e d4 e |
  f  g8[ f] e4 d e2 f |
  e d cis d |
  c bes a bes |
  a g~ g f |
  e1 d |
  a' d,2 g |
  f d4 e f e f g |
  a2. g4 f e f g |
  e2 a~ a a~ |
  a4  g8[ f] g2~ g f |
  e1 d2. e4 |
  f e f g a2.  g8[ f] |
  e2 a~ a g~ |
  g4  f8[ e] f4 g e2 f4 g |
  a b c d e2.  d8[ c] |
  b1 a |
  r\breve |
  d1 a2 d |
  <a c> a4 b c b c d |
  e2. d4 c1 |
  b4 c d2. c4 <a c>2( |
  <a c>2.) <g b>4 <g c>2 <c e>~ |
  <c e> <b d>~ <b d> c |
  b1 a2 a' |
  d, g f d4 e |
  f e f g a2.  g8[ f] |
  e4 d e f g a g f |
  e1 d |
  a2 d c a4 b |
  c b c d e2 f~ |
  f e f4 e d e |
  c2. bes4 a1 |
  g2 e4 f g f g a |
  <g bes>2 a g1 |
  f f |
  c2 f e c4 d |
  e d e f <d g>1 |
  d2 g f d4 e |
  f e f g a1~ |
  a g2 a |
  bes1 a |
  g f2 e4 d |
  cis2 d~ d cis |
  d1 |
  r16  f'[ e d]  c[ d c  bes]  a[ d c bes]  a[ bes a g] |
   f[ bes a g]  f[ g e g]  f[ g e g]  f[ g e g] |
   f[ c d e]  f[ g a bes]  c8.[ bes16]  a[ g f g] |
   e[ c' d e]  f[ g a bes]  c8.[ bes16]  a[ g f g] |
   e[ f g8] r16 f r e r d r c r bes r a |
  r g r f r e r f <e g>2 |
  r16  c''[ bes a]  g[ a g f]  e[ a g f]  e[ f e d] |
   c[ f e d]  c[ d c bes]  a[ d c bes]  a[ bes a g] |
   f[ bes a g]  f[ g f e]  d[ e cis e]  d[ e cis e] |
   d[ e cis e]  d[ e cis e]  d[ a b cis]  d[ e f g] |
   a8.[ g16]  f[ e d e]  cis[ a' b cis]  d[ e f g] |
   a8.[ g16]  f16[ e d e]  cis[ d e8]  a,16[ d g, c] |
   f,[ bes e, a]  d,[ g c, f]  bes,[ e a, d]  g,[ cis] r d |
  <cis e>2\fermata r |
  r4 a'4 a a~ |
  a  g8[\trill fis] g2~ |
  g4 g g g  |
  f1~ |
  f2 e4 d |
  a'2. g4 |
  f2 e |
  d~ d4 cis |
  d1 |
}

upTwo = \context Voice = "two"  \relative c' {
  \clef treble
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

  s1 |
  s |
  r <f a>~ |
  <f a>2 g a g |
  a g f2. e4 |
  d1~ d~ |
  d2 cis s1 |
  s\breve |
  a2 d e a~ |
  a gis a2. gis4 |
  a2 a~ <f a>2. g4 |
  a1 <a cis>2 c |
  bes_\trill a g a |
  g_\trill f e f |
  e d cis d~ |
  d cis^\trill d1 |
  r\breve |
  r |
  d1 a2 d |
  c a4 b c b c d |
  e2. d4 cis2 d~ |
  d cis d4 c bes2_\trill |
  a1 d~ |
  d2 c~ c bes |
  d d~ d4 cis d2 |
  e a a1~ |
  a2 g~ g f |
  e1 d2. e4 |
  <f a>1 <d f>2 <f a> |
  e1 <f a> |
  <g c>2. <f b>4 <e g>1 |
  g2 <g b>1 f2 |
  f1 e2 a |
  a1 r2 a~ |
  a gis e1 |
  r1 r2 d' |
  a d c a4 b |
  c b c d e2 d~ |
  d cis d1 |
  r\breve |
  r |
  g,1 a2 bes |
  f1 c2 f |
  e2 c4 d e d e f |
  d e f2~ f e |
  c d c1 |
  r\breve |
  r |
  r |
  r1 f~ |
  f e2 f~ |
  f e~ e d~ |
  d cis d bes |
  a1 g |
  <fis a>1 |
  r |
  r |
  r |
  r |
  r |
  r2 c' |
  r1 |
  r |
  r |
  r |
  r |
  r |
  r |
  a2 r |
  r4 d d d  |
  d1 |
  e4 e e e~ |
  e  d8[ cis] d4 c |
  bes1 |
  cis2 d |
  d cis |
  s1 |
  s | 
}

downOne = \context Voice = "three"  \relative c {
  \clef bass
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  r16  d32[ e f g e f]  d[ e f g a b cis a] s2 |
  s4  d16[ cis32 b a g f e]  d16[ e32 f g a b cis] d8 r |
  r1 d~ |
  d d2 e |
  f e d2. c4 |
  bes2~  bes8[ bes a g] a1 |
  a2~ a~ a g~ |
  g a~ a g |
  f4 g \stemDown a b c d e  d8[\trill c] |
  \clef treble b4 c d e f  g8[ f] e4 d |
  e d c b a  bes8[ c] d2~ |
  d4  e8[ d] cis4 b a2 a' |
  g\trill f e f |
  e\trill d cis d |
  \clef bass a bes e, f4 g |
  a  g8[ f] e2 f1 \stemUp |
  r\breve |
  r |
  r |
  r |
  r |
  a1 d,2 g\trill |
  f d4 e f e f g |
  a2. g4 fis2 g |
  a1 a2 a |
  c e e1 |
  e e2 d~ |
  d cis a bes |
  s\breve |
  s |
  s |
  d2 d e c |
  d1 e2 e |
  f1 e |
  e2. d4 cis1 |
  s\breve |
  s |
  s |
  \clef treble \stemDown a'1 d,2 g |
  f d4 e f e f g |
  a2. b4 c bes a bes \clef bass |
  c,1 f,2 bes |
  a f4 g a g a bes |
  c1~ c2 bes4 a |
  g2 a4 bes c2. bes4 |
  a2 f4 g a g a bes |
  c2 a <g c>1 |
  g2 c bes g4 a |
  bes a bes c d1 |
  a2 d c a4 bes |
  c bes c d e2 c |
  d c4 bes c2 a |
  bes a4 g a2 g4 f |
  e2 f e1 |
  d |
  r2 r16  f'[ e d]  c[ d c bes] |
   a[ d c bes]  a[ bes g bes]   a[ bes g bes]  a[ bes g bes] |
   a8.[ <g bes>16] <f a c>4 r16  c[ d e]  f[ g a bes] |
   c8.[ bes16]  a[ g f g]  e[ c' d e] \clef treble  f[ g a bes] |
   c8.[ <bes d>16] <a c>8[ <g bes>] <f a>[ <e g> <d f> <c e>] |
  \clef bass <bes d>[ <a c> <g bes> <f a>] \stemUp <c g'>2 |
  \clef treble \stemDown r2 r16  c''[ bes a]  g[ a g f] |
   e[ a g f]  e[ f e d]  c[ f e d]  c[ d c bes] |
  \clef bass  a[ d c bes]  a[ bes a g]  f[ g e g]  f[ g e g] |
   f[ g e g]  f[ g e g]  f8.[ <e g>16] <d f a>4 |
  r16  a16[ b cis]  d[ e f g]  a8.[ g16]  f[ e d e] |
   cis[ a' b cis]  d[ e f g]  a8.[ g16]  f8[ e] |
   d[ c bes a]  g[ f e <d f>] |
  <a e'>2 r |
  r4 \stemUp <a' c> <a c> <a c> |
  bes1 |
  a4 a a a  |
  a1 |
  bes1 |
  a2. d4 |
  a2 a4. a8 |
  bes4  c8[ bes] a4 g  |
  <fis a>1 |
 }

downTwo = \context Voice = "four"  \relative c {
  \clef bass
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

  s1 |
  s2. r16  d16[ d,8] |
  r1 <d a'>~ |
  <d a'>~ <d a'> |  
  s\breve |
  s\breve |
  s2 g' f d |
  e f4 e e1 |
  d2 s s1 |
  s\breve |
  s |
  s |
  s |
  s |
  s |
  s2 r4 \stemUp g4 a1 \stemDown |
  s\breve |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  d,1 a2 d |
  c a4 b c b c d |
  e2. d4 cis2 d |
  a'2. g4 f2 g |
  a f4 g a g a b |
  c2. b4 a1 |
  g2 e4 f g f g a |
  b2. a4 g2 a~ |
  a4 g f2 g a~ |
  a b  gis a |
  b1 r2 a |
  bes g d'1 |
  r\breve |
  r |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  s1 |
  s |
  s |
  s |
  s |
  s |
  r2. c,,4 |
  s1 |
  s |
  s |
  s |
  s |
  s |
  s |
  s |
  r4 d' d d  |
  g1 |
  e4 e e e |
  f1 |
  g2. f4 |
  e2 d4 e |
  f g a g~ |
  g2 fis4 e  |
  d1 |
}

bass = \context Voice = "five"  \relative c, {
  \clef bass
  \stemDown
  \tieDown
  \slurDown
  \set Staff.midiInstrument = "church organ"

  r1 |
  r |
  d\breve~ |
  d~ |
  d~ |
  d |
  a'1 bes |
  a2 d, a'1 |
  d,2 d' c a |
  b1 a~ |
  a2~ a4 g f2 bes |
  a\breve~ |
  a |
  a1~ a2 d |
  c bes a1~ |
  a d, |
  r\breve |
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
  a''1 d,2 g |
  f d4 e f e f g |
  a2. g4 f1 |
  e2 c4 d e d e f |
  g2. f4 e2 f |
  d1 c2 a |
  d1 e |
  e, a2 r |
  r\breve |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r |
  r1 c1 |
  f,2 bes a f4 g |
  a g a bes c1~ |
  c2 a g1~ |
  g2. a4 bes2. c4 |
  d2. e4 f2. g4 |
  a2. bes4 c2 a |
  g1 f |
  e d2 g, |
  a1~ a |
  d, |
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
  r |
  r |
  r |
  r |
  fis1 |
  g4 g' g g |
  cis,1 |
  d4 d d d |
  g,1~ |
  g2 f4 bes |
  a1 |
  d,~ |
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
      \set Staff.minimumVerticalExtent = #'(-3 . 3)
      \bass
    >>   
  >>
  \midi {
    \tempo 4=120
  }
  \layout {
    linewidth = 19.0\cm
  }
}

