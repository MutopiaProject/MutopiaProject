\version "2.16.1"
\include "nederlands.ly"
\header {
  title = "Toccata prima"
  composer = "Georg Muffat (1653-1704)"
  mutopiatitle = "Toccata prima"
  mutopiacomposer = "MuffatG"
  mutopiainstrument = "Organ"
  date = "1690"
  source = "Apparatus musico-organisticus"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Tim Knigge"
  maintainerEmail = "tim@asset-control.com"
  
 footer = "Mutopia-2013/01/06-303"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global =  {
  \key c \major
  \time 4/4
  \skip 1*69
  \bar "|." |
}

upOne = \context Voice = "one"  \relative c' {
  \clef treble
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  \tempo "Grave"
  r1 |
  d2.\mordent e4 |
  f  e8[\prall d] bes'2 |
  a2. g4 |
  fis4 f g a~ |
   a8.[ g16 f8 g] g4.\trill  f16[ g] | 		           %5
  a4  g8[ f~] f4  e8[ d] |
  cis2 d~ |
  d4 r16  e32[ d cis d e16] cis4.\trill d8 |
  d1\fermata |						   %10

  \tempo "Allegro"
  \oneVoice r16  a'[ b cis]  d[ e f cis]  d[ a bes a] \voiceOne  g[ a cis, e] |
   d[ a' g a]  bes[ a g a]  cis,[ d cis d]  e[ g f\prall e] |
  f  d[ e f]  g[ a b c]  d[ e f g]  a[ e f cis] |
   d32[ e f g a g f e]  d[ c bes a g f e d]   bes'8[ a] a4~ |
   a16[ g f g]  g8.[\prall g16] g2~ |			   %15
  g8 r32  a[ b c] d8 r32  c[ b a] gis4.\trill a8 |
  a1\fermata |
  <cis e>1~ |
  <cis e> |
  <d f>~ |						   %20
  <d f>~ |
  <d f>2 e |
  <c f>1\fermata |

  \tempo "Grave"
  a2 a4 a |
  g2 r8  g[ a bes] |					   %25
  fis2 g~ |
   g8.[ g16 f8\prall e~] \voiceTwo  e8.[ e16 d8\prall c] |
  d4 f e2 |
  e1~ |
  e2 f |						   %30
  e1 |
  e2 r32  a[ bes c d16 c]  bes[ a d c] |
  bes8 r32  g[ a bes] c8 r32  d[ c bes] a8 r32  a[ b cis]  d8.[ e16] |
   f8[ g16 f]  e8.[_\prall d16] cis2 |
  \voiceOne a2 r |					   %35
  r1 |
  r2 r32  a[ bes c d16 c]  bes[ a d c] |
  bes2 g |
  a r32  f[ g a bes16 a]  g[ f bes a] |
  g4. f8~  f[ g16 f]  e8.[\prall f16] |			   %40
  f32  c'[ d e f16 e]  d[ c f e] d2 |
  r32  d[ e f g16 f]  e[ d g f] e2 |
  r32  e[ f g a16 g]  f[ e a g] f4. fis8 |
   gis[ a]  a8.[\prall gis16]  a32[ e f g a g f e]  f[ cis d e f e d cis ] |
   d[ e f g a g f e]  f[ c d e f e d c]  d[ a bes c d c bes a]  bes[ g a bes c bes a g] | %45
   a[ f g a bes a g f]  g[ e f g a g f e]  f[ d e f g f e d]  e[ c d e f e d c] |
  d  f[ g a bes16 a]  g[ f bes a] g2 |
  a1~ |
  a4. b8 c2~ |
   c8[ d16 c]  bes8.[\prall a16] bes2 |			   %50
  a  f32[ d e f g a b c]  d16[ e d f] |
  gis,4 a4\prall~  a8[ b16 a]  gis8.[\prall fis16] |
  g2~  g8[ a16 g]  fis8.[\prall e16] |
   f8[ g16 f]  e8.[\prall d16] e2 |
  <a c>~ <a c>4 bes |					   %55
  a2 <d f>~ |
  <d f>4 es d2 |
  d c |
  <a c>~ <a c>8.[ <a c>16] bes4~ |
   bes8.[ bes16 a8 bes] g2~ |				   %60
   g8[ a16 bes]  a[ g f\prall e] f4  f'8[ e] |
   d[ e16 f]  e8[ d] cis4\trill d~ |
   d16[ e cis d]  e32[ d cis b a g f e]  g8[ a16 bes]  a8.[\prall g16] |
   f8[ g16 a]  g8.[\prall f16] e4. d8~ |
   d16[ d e d]  cis[ d b cis]  d[ cis8.]  d16[ cis8.] |	   %65
   d32[ cis16. d32 cis16.]  d16[ cis d cis] cis4..\trill d16 |
  d32  a'[ bes c d16 c]  bes[ a d c] bes2~ |
   bes8.[ bes16 c8 d] a2~ |
  a1\fermata |
}

upTwo = \context Voice = "two"  \relative c' {
  \clef treble
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

  r1 |
  r |
  r2 d~ |
  d2. e4~ |
  e d e a, |						   %5
  d1 |
  cis4 d d bes~ |
   bes8.[ bes16 a8\prall g]  a8.[ a16 g8\prall f] |
  g1 |
  <f a> |						   %10
  s1 |
  s |
  s |
  s2 f'4. e8 |
  d1~ |							   %15
  d |
  <cis e> |
  a'~ |
  a |
  a~ |							   %20
  a |
  bes4  c16[(  bes8.)] bes4._\trill a8 |
  a1 |
  f2 f4 f~|
   f8.[ f16 e8\prall d] e4 es |				   %25
  d2 r8  d[ e f] |
  cis2 \voiceOne a'~ |
   a8.[ a16 b8\prall c] gis2 |
  a  b8.[ c16 d8 e] |
  gis,2  a8.[ d16 e8 f] |				   %30
  c4 r16  d32[ c b c d16] b4..\trill a16 |
  a32  e'32[ f g a16 g]  f[ e a g] f2 |
  r32  d[ e f] g8 r32  a[ g f] e8 r32  e[ f g] a8 r32  bes[ a g f16 g] |
   a8[ bes16 a]  g8.[\prall f16] e2 |
  \voiceTwo a, r |				   %35
  r1 |
  r32  e[ f g a16 g]  f[ e a g] fis2 |
  d e |
  r32  c[ d e f16 e]  d[ c f e] d2~ |
   d8[ c~] c4 bes bes |					   %40
  c2 r32  f[ g a bes16 a]  g[ f bes a] |
  g2 r32  g[ a bes c16 bes]  a[ g c bes] |
  a2 r32  a[ b c d16 c]  b[ a d c] |
   b8[ c] b4_\prall a r |
  s1 |							   %45
  s |
  d,1~ |
  d4  cis8.[\prall d16] e4. d8~ |
   d[ c16\prall b]  c8[ d] e4 a\mordent~ |
  a2 g~ |						   %50
   g8.[ g16 f8.\prall e16] \change Staff = bass \voiceThree a,2 |
  \change Staff = treble \voiceFour e' d |
  d cis~ |
  cis4 d~  d8.[ d16 c8.\prall b16] |
  e2 fis4 g~ |						   %55
   g8.[ g16 f8.\prall e16] a2 |
  b4 c~  c8.[ c16 bes8.\prall a16] |
  \tieUp bes2~  bes8.[ bes16 a8.\prall \tieDown g16~] |
   g8.[ g16 f8.\prall e16] d2 |
  e4 f~  f8.[ f16] e4\trill~ |				   %60
  e2~  e8[ d] a'4~ |
  a g2 f4 |
  e r  e8[ f16 g]  f8.[_\prall e16] |
   d8[ e16 f]  e8.[_\prall d16]  cis8.[_\prall b16] a4~ |
  a1~ |							   %65
  a2. g4 |
  \change Staff = bass \voiceThree fis2 \change Staff = treble \voiceTwo d'~ |
  d d4. cis8 |
  <d fis>1 |
}

downOne = \context Voice = "three"  \relative c' {
  \clef bass
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  r2 a~ |
  a \voiceFour a4 g |
  d1~ |
  d~ |
  d2.c4 |						   %5
  bes1 |
  a4 bes g2~ |
  g f |
  e1 |
  d_\fermata |						   %10

  d'1 |
  d |
  d |
  d2 d4 c |
  bes2 \voiceOne r16 b[ a b]  b8.[\prall b16] |	   %15
  b4 b'~ b2 |
  a1 |
  r16  a,[ b cis]  d[ e f g]  a[ e f g]  a[ bes g a] |
   cis,[ d e f]  g[ f e f]  g,[ bes a g]  a[ g f e] |
   d[ d' e f]  g[ a b c]  d[ e f g]  a[ e f cis] |		   %20
   d[ a bes g]  a[ f g a] d,8 r32  d'[ c bes]  a[ g f e]  d[ c bes a] |
  g4  a16[(  g8.)] g2\trill |
  f'1 |

  c'2 c4 c |
  d g,2  c8[ bes] |					   %25
  a2 g~ |
  g f~ |
  f4  d'8[ c] b2 |
  r8  a[ b c]  gis8.[ a16 b8 c] |
   d8.[ d16 c8\prall b]  c8.[ b16] a4 |			   %30
  gis a2 gis4\trill |
  <a cis>2 r |
  \oneVoice r1 |
  \clef treble r2 r32  e'[ f g a16 g]  f[ e a g] |
  \voiceOne f2 r32  d[ e f] g8 r32  a[ g f] e8 |			   %35
  r32  c[ d e] f8 r32  g[ f e] d8 r16  f[ e f]  g[ f e d] |
  cis2 d |
  \clef bass r2 r32  g,[ a bes c16 bes]  a[ g c bes] |
  a2 r32  d,[ e f g16 f]  e[ d g f] |
  e4 f g bes |						   %40
  a2 bes |
  b c |
  cis d |
  e a,4 \clef treble r32  e'[ f g a g f e] |
   f[ cis d e f e d cis]  d[ a bes c d c bes a] \clef bass  bes[ f g a bes a g f]  g[ e f g a g f e] |	%45
   f[ d e f g f e d]  e[ c d e f e d c]  d[ b c d e d c b]  c[ a bes c d c bes a] |
  bes2 r32  g'[ f e d16 e]  f[ g d e] |
   f8.[ f16 e8.\prall d16] cis4 f |
  e a~  a8[ b] c4 |
  d2 d |						   %50
  e4 a, f2 |
  <e b'>4 <e a> <d b'>2~ |
  d e4 a~ |
  a2 a |
  \change Staff = treble \voiceTwo c d~ |	   %55
  d f |
  g1 |
  g2~ g |
  s2 s4  g8[ f] |
  \change Staff = bass \voiceOne c2~ c4. bes8 |   %60
  a2 a |
  bes e,4  f8[ g] |
  \voiceThree a[ b] cis2 r4 |
  s1 |
  s |							   %65
  s |
  \voiceOne a2~  a8.[ a16 g8.\prall fis16] |
  g2~  g8.[ g16 fis8\prall e] |
  <fis a>1 |
}

downTwo = \context Voice = "four"  \relative c {
  \clef bass
  \voiceFour
  \set Staff.midiInstrument = "church organ"

  d2.^\mordent e4 |
  f  e8[^\prall d] \voiceOne bes'2 |
  a2. g4 ~|
  g fis b cis |
   d8[ a bes a] g4  f8[\prall e] |			   %5
  d2. e4 |
  f  e8[\prall d] bes'4  g8[ f] |
  e2 d |
  e1 |
  d |							   %10

  <f a>~ |
  <f a>2 <e g> |
  <d f> <f a>~ |
  <f a> d'4 a |
  \voiceThree d,2 s |						   %15
  s d |
  e1 |
  s |
  s |
  s |							   %20
  s |
  s |
  s |
  s |
  s |							   %25
  s |
  s |
  \voiceFour d2~  d8.[ d16 c8\prall b] |
   c8.[ c16 b8 a] e'2~ |
  e d |							   %30
  e1 |
  s |
  s |
  \clef treble s |
  \voiceFour r32  a[ bes c d16 c]  bes[ a d c] bes8 r32  g[ a bes] c8 r32  d[ c bes] |	%35
  a8 r32  f[ g a] bes8 r32  c[ bes a]  g16[ a g a]  bes[ a bes g] |
  a2 d |
  \clef bass r32  d,[ e f g16 f]  e[ d g f] e2 |
  f bes,~ |
  bes4 a g g'						   %40
  f2 r |
  r1 |
  r |
  r |
  s |							   %45
  s |
  s |
  s |
  s2 a4. g8 |
  fis2 r32  g,[ a bes c d e fis]  g16[ a g bes] |		   %50
  s1 |
  s |
  s |
  s |
  r32  a,[ b c d e f g]  a16[ b a c]  d,2~ |		   %55
  d r32  d[ e f g a b c]  d16[ e d f] |
  g,1 |
  r32 \voiceThree  g,[ a bes c d e f]  g16[ a g bes] e,2 |
  f2.  bes8[ a] |
  g4 f g r |						   %60
  s1 |
  s |
  \voiceOne \tieDown a~ |
  a2~  a8[ g] f4 |
  e r16  f[ d e]  f16[ e8.]  f16[ e8.] |			   %65
   f32[ e16. f32 e16.]  f16[ e f e] e2\trill |
  \voiceFour d1~ |
  d~ |
  d |
}

bass = \context Voice = "five"  \relative c, {
  \clef bass
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

  d1_"Pedale"~ |
  d~ |
  d~ |
  d~ |
  d |							   %5
  s1 |
  s |
  s |
  s |
  s |							   %10

  d~ |
  d~ |
  d~ |
  d2 s |
  s b'_"Ped."~ |					   %15
  b1 |
  a1 |
  a_"Ped."~ |
  a2 g |
  d1~ |							   %20
  d |
  g2 r |
  f1_\fermata |

  f'2 f4 f |
  b,2 c~ |						   %25
   c8.[ c16 bes8\prall a] bes2 |
  e, f |
  d1 |
  c4 r e2~
  e d |							   %30
  e1 |
  a2 r |
  s1 |
  s |
  s |							   %35
  s |
  s |
  s |
  s |
  s |							   %40
  s |
  s |
  s |
  s |
  s |							   %45
  s |
  bes1_"Pedale" |
  a~ |
  a2 s |
  s1 |							   %50
  cis2_"Ped." d~ |
  d4 c b2~ |
  b4 bes a2 |
  a1~ |
  a2 d,~ |						   %55
  d1 |
  g~ |
  g2 e |
  f bes |
  c c |							   %60
  cis d4. c8 |
  bes2 a |
  a1_"Ped."~ |
  a~ |
  a~ |							   %65
  a |
  d,~ |
  d~ |
  d_\fermata
}

\score {
%  \context GrandStaff <<
    \context PianoStaff <<
      % \set PianoStaff.followVoice = ##t
      \context Staff = "treble" <<
        \global 
        \upOne
        \upTwo
      >>	
      \context Staff = "bass" <<
        \global 
        \downOne
        \downTwo
	\bass
      >>   
    >>
%    \context Staff = "bass" <
%      \global 
%      \bass
%    >   
%  >>
  
  \midi {
    \tempo 4 = 90
    }


  \layout {
%    line-width = 19.0\cm 
%    indent = 0
%    interscorelinefill = 5.0\pt
  }
}
