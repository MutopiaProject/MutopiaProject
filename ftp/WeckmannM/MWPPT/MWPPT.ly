\version "2.18.0"

\header {
  title = "Praeambulum Primi toni a 5"
  opus = " "
  composer = "Matthias Weckmann (1621-1674)"
  mutopiatitle = "Praeambulum Primi toni a 5"
  mutopiacomposer = "WeckmannM"
  mutopiaopus = " "
  mutopiainstrument = "Organ"
  date = "1742"
  source = "Baerenreiter"
  style = "Baroque"
  license = "Public Domain"
  maintainer = "Tim Knigge"
  maintainerEmail = "tim@asset-control.com"

 footer = "Mutopia-2014/02/25-305"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

global =  {
  \key c \major
  \time 4/4
  \skip 1*53
  \time 3/2
  \skip 1.*20
  \time 4/4
  \skip 1*3
  \bar "|." |
}

upOne = \context Voice = "one"  \relative c'' {
  \clef treble
  %\stemUp
  %\tieUp
  %\slurUp
  %\shiftOff
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  a1~ |
  a |
  bes2. c4 |
  d2. c4 |
  bes8. a16 g8. a16 bes2~ |				   %5
  bes a4 g |
  a1 |
  r16  d,[ e fis]  g[ a b cis]  d[ a b cis]  d[ e fis g] |
  a[ e f cis]  d[ e f d] e2 |
  e1 |							   %10
  cis |
  r |
  r |
  r16  g'[ f e]  d[ c bes a]  g[ f' e d]  c[ bes a g] |
  a1 |							   %15
  r16  e[ f g]  a[ b c g]  a[ b c d]  e[ f g e] |
  f[ cis d e]  f[ g a e ] f2 |
  e1~ |
  e2. d4 |
  cis1 |						   %20
  s |
  r2 r16  a'[ g f]  e[ d c b] |
  a1 |
  a2 r4 a~ |
  a8[ a] gis4 a b |					   %25
  c4.  b16[ a] b2 |
  a g4 a~ |
  a gis a2 |
  r4 a4. a8 gis4 |
  a b c2 |						   %30
  b r |
  r1 |
  r4 a4. a8 gis4 |
  a8[ b]  c[ a] b16[ c d c]  b[ c a b] |
  c4 b4. b8 a4~ |					   %35
  a8[ gis16 fis] gis4 a2~ |
  a r |
  r2 r4 d~ |
  d8[ d] cis4 d e |
  f2 e |						   %40
  d4  c8[ b] a4 b |
  c  b8[ c] d4 e |
  f8[ e] e4  d8[ c16 b] d4 |
  e1 |
  r |							   %45
  r2 r4 d~ |
  d8[ d] cis4 d e |
  f  e8[ d] c4 d |
  e f2 e4~ |
  e8[ d16 c]  d[ e f g] e2 |				   %50
  f4 e d e~ |
  e d2 cis4 |
  d1 |
  r1. |
  r |							   %55
  r |
  a2. a4 gis2 |
  a4 b c d b2 |
  a1 r2 |
  r1. |							   %60
  r |
  d2. d4 cis2 |
  d4 e f g e2 |
  d1 r2 |
  d2. d4 cis2 |						   %65
  d4 e f g e2 |
  f2. f4 e2 |
  d2. d4 cis2 |
  d1 r2 |
  d1. |							   %70
  d~ |
  d~ |
  d |
  bes8  bes16[ c] d8  g,16[ a] bes8  bes16[ a]  g[ a bes g] |
  a8  fis16[ g] a8  d,16[ e] fis8. g16 a8  b16[ cis] |	   %75
  d1 |
}

upTwo = \context Voice = "two"  \relative c' {
  \clef treble
  %\stemDown
  %\tieDown
  %\slurDown
  %\shiftOn
  \voiceFour
  \set Staff.midiInstrument = "church organ"

  f1 |
  e2 fis |
  g d~ |
  d d |
  d1~ |							   %5
  d |
  d |
  s |
  fis16[ g a e]  fis[ g a b] c4  b8[ a] |
  gis4 a2 gis4 |					   %10
  a1 |
  r |
  r2 r16  c[ bes a]  g[ f e d] |
  c2 c |
  f1 |							   %15
  \change Staff = bass \stemUp r8 r16 e,  f[ g a b]  c[ g a b]  cis[ d e cis] |
  \change Staff = treble \stemDown  d16[ e f g]  a[ e f cis]  d[ a b cis]  d[ e f g] |
  a1 |
  b4. c8 b2 |
  a1 |							   %20
  s1 |
  r16  d[ c b]  a[ g fis e] d4 b |
  cis16[ f e d]  e[ d cis b]  cis[ d e d]  cis[ b d cis] |
  a4 d4. d8 cis4 |
  d e f  e8[ d] |					   %25
  e4.  d16[ c] d4 e |
  f4.  e16[ d] e2 |
  d4. e8  f[ e]  d[ e] |
  f4 e f  e8[ d] |
  c4 d e4.  d16[ c] |					   %30
  d4 e f2 |
  e d8[ e f d] |
  e1 |
  e2 r |
  r1 |							   %35
  r |
  r2 r4 d~ |
  d8[ d] cis4 d4. e8 |
  f4 e b b' |
  a2 gis4 a |						   %40
  b  a8[ g] a2 |
  r1 |
  r2 r4 a~ |
  a8[ a] gis4 a2 |
  b e,8[ f] g4 |					   %45
  g16[ a b g]  a[ b c a] b2 |
  r2 r4 a~ |
  a8[ a] gis4 a b |
  c8[ b]  a[ g] a2~ |
  a4 a2 a4 |						   %50
  a8[ b c b] a4 g~ |
  g8[ f16 e]  f8[ g] a4. g8 |
  fis1 |
  r1. |
  r |							   %55
  \stemUp a2. a4 gis2 |
  \stemDown a4 b c d b2 |
  a1 r2 |
  r1. |
  a2. a4 gis2 |						   %60
  a4 b c d b2 |
  a2. bes4 g2 |
  f4 g a2 a |
  f2. f4 e2 |
  f4 g a bes g2 |					   %65
  f4 g a1 |
  a1.~ |
  a1. |
  a1 r2 |
  bes2. bes4 a2 |					   %70
  bes4 c d2 a |
  bes2. bes4 a2 |
  bes4 c d2 a |
  g2 d |
  d1 |							   %75
  <fis a> |
}

downOne = \context Voice = "three"  \relative c' {
  \clef bass
  %\stemUp
  %\tieUp
  %\slurUp
  %\shiftOff
  \voiceOne
  \set Staff.midiInstrument = "church organ"

  a1~ |
  a |
  g2. a4 |
  bes2 a |
  g8. a16 bes8. a16 g2~ |				   %5
  g fis4 e  |
  fis1 |
  r8 r16 d  e[ fis g a]  b[ cis d a]  b[ cis d e] |
  s2 r16  e,[ f g]  a[ b c d] |
  e1 |							   %10
  e |
  r16  f,16[ g a]  bes[ c \change Staff = treble \stemDown d e] \stemUp  f[ e d e]  f[ g a bes] |
  \stemDown  c8[ bes16 a]  g[ f e d] \stemUp \change Staff = bass c4 bes~ |
  bes a c g |
  c1 |							   %15
  r |
  r |
  r16  e,[ f g]  a[ b c d] \change Staff = treble \stemDown e2 |
  e1 |
  e |							   %20
  \stemUp r16  a[ g f]  e[ d c b]  a[ b cis d]  e[ b cis b] |
  \change Staff = bass a2. e'4~ |
  e16[ a, g f]  g[ f e d]  e[ f g f]  e[ d fis e] |
  fis2 r |
  r1 |							   %25
  r4 a~  a8[ a] gis4 |
  a b c2 |
  b  a8[ g]  f[ e] |
  a4 a4. d8 b4 |
  a2 gis4 a |						   %30
  b2 a |
  g4 a  b8[ c d d~] |
  d[ d] c4 b2 |
  c d4 e~ |
  e8[ e] d4 e4.  d16[ c] |				   %35
  d4 e f4.  e16[ d] |
  e2 d4 a |
  g  a8[ g]  f[ e] d4 |
  r a'4~  a8[ a] gis4 |
  a b c2 |						   %40
  b r4 a~ |
  a8[ a] gis4 a b |
  c4. b8 a4. b8 |
  c4 b c2 |
  b4  e8[ d] c4 d |					   %45
  c a~  a8[ a] gis4 |
  a1 |
  r |
  r4 d~  d8[ d] cis4 |
  d2 e |						   %50
  d4 c d4.  c16[ b] |
  cis4  d8[ e]  f[ e16 d] e4 |
  d1 |
  \change Staff = treble \stemDown d2. d4 cis2 |
  d4 e f g e2 |						   %55
  f4. e8 d4 c b2 |
  \change Staff = bass \stemUp a2. f'4 e d |
  c d e2. d4 |
  \change Staff = treble \stemDown c4. d8 e4 f d2 |
  c4 d e f d2 |						   %60
  e4. d8 e4 fis gis2 |
  a2 r r |
  r1. |
  d,2. d4 cis2 |
  d4 e f g e2 |						   %65
  \change Staff = bass \stemUp a,1. |
  f4 g a bes c2 |
  \change Staff = treble \stemDown f2. f4 e2 |
  d1 r2 |
  g2. g4 fis2 |						   %70
  \change Staff = bass \stemUp g,4 a bes c d2 |
  d1. |
  d |
  d8  d16[ c] bes8  bes16[ a] g8  g16[ a]  bes[ c d e] |
  fis,8  a16[ g] fis8  fis16[ e] d8  a'16[ g] fis8  g16[ e] |  %75
  <d a'>1 |
}

downTwo = \context Voice = "four"  \relative c {
  \clef bass
  %\stemDown
  %\tieDown
  %\slurDown
  %\shiftOn
  \voiceFour
  \set Staff.midiInstrument = "church organ"

  d1 |
  e2 d |
  d1~ |
  d |
  d~ |							   %5
  d~ |
  d |
  s |
  s |
  r16  b[ c d]  e[ fis gis a]  b[ c d c]  b[ a b8] |	   %10
  e,1 |
  r8 f,16\rest f  g[ a bes c]  d[ e f c]  d[ e f g] |
  a[ bes c8]  bes16[ a g f] e4 d |
  e f2 e4 |
  f1 |							   %15
  % avoid stems' collision
  b,\rest |
  r |
  r2 r16 \stemUp b[ cis d] e[ fis gis a] |
  gis[ a b c]  b[ a gis fis] gis2 |
  a1 |							   %20
  r8 r16 a  g[ f e d]  cis[ b a b]  cis[ d e b] |
  d2 d4 g |
  e s s2 |
  d' r |
  r1 |							   %25
  r |
  r |
  r2 r4 d,4~ |
  d8[ d] cis4 d e |
  f2 e |						   %30
  r4 e~  e8[ e] d4 |
  e fis g4. fis8 |
  e1 |
  r4 a4. a8 gis4 |
  a b c2 |						   %35
  b a |
  a4. g8 f2 |
  e2  d8[ e f g] |
  a2 r4 e~ |
  e8[ e] d4 e fis |					   %40
  g2 f |
  e2 fis4 g |
  a g f2 |
  e  a8[ g f e] |
  d4 e2 d4 |						   %45
  e2 d4. e8 |
  f4 e d cis |
  d e f  e8[ d] |
  c4 d a'4. g8 |
  f2. a4~ |						   %50
  a8[ a] gis4 a b |
  a1 |
  a | |
  r1. |
  d,2. d4 cis2 |					   %55
  d4 e f d e2 |
  f4 g a d, e2 |
  f e1 |
  a2. a4 gis2 |
  a4 b c d b2 |						   %60
  a1 e'2 |
  f2. g4 e2 |
  a,1.~ |
  a1 r2 |
  r1. |							   %65
  d,2. d4 cis2 |
  d4 e f g a2 |
  f4 g a1 |
  fis1 r2 |
  r1. |							   %70
  r |
  g2. g4 fis2 |
  g4 a bes c d a |
  s1 |
  s |							   %75
  s |
}

bass = \context Voice = "five"  \relative c {
  \clef bass
  %\stemDown
  %\tieDown
  %\slurDown
  \voiceTwo
  \set Staff.midiInstrument = "church organ"

  d1 |
  cis2 d |
  g,1~ |
  g2 fis |
  g1 |							   %5
  d |
  d |
  d'~ |
  d2 a |
  e1 |							   %10
  a |
  % avoid collision between tie and second voice's stems
  \shape #'((0 . 0.5) (0 . -5) (0 . -3) (0 . 0.5))  Tie
  f~ |
  f4 g a bes |
  c2~ c |
  f,1 |							   %15
  a |
  d~ |
  d2 cis |
  e1 |
  a, |							   %20
  a |
  fis2. g4 |
  a1 |
  d,2 r |
  r1 |							   %25
  r |
  r |
  % avoid rests' collision
  d\rest |
  r |
  r2 r4 a'~ |						   %30
  a8[ a] gis4 a b |
  c2 b |
  c4. d8 e2 |
  a, r |
  r1 |							   %35
  r2 r4 d~ |
  d8[ d] cis4 d2 |
  e4 a, bes2 |
  % avoid  rests' collision
  a b,\rest |
  r1 |							   %40
  r4 e'~  e8[ e] d4 |
  c4 e d  c8[ b] |
  a1 |
  r2 r4 a~ |
  a8[ a] gis4 a b |					   %45
  c2 b |
  a r |
  r1 |
  r |
  r4 d4. d8 cis4 |					   %50
  d e f g |
  a2 a, |
  d1 |
  r1. |
  r |							   %55
  r |
  r |
  a2. a4 gis2 |
  a4 b c d b2 |
  a r r |						   %60
  r1. |
  r |
  d2. d4 cis2 |
  d4 e f g a2 |
  d, r r |						   %65
  r1. |
  d,2 d c |
  d4 e f g a2 |
  d,1 r2 |
  r1. |							   %70
  g2 g fis  |
  g4 a bes c d2 |
  g,2. g4 fis2 |
  g1 |
  d |							   %75
  d |
}

\score {
  %  \context GrandStaff <<
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
  \layout { }
}
