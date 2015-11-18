\version "2.18.2"
\header {
  mutopiatitle = "Toccata"
  mutopiaopus = "BuxWV 155"
  mutopiacomposer = "BuxtehudeD"
  mutopiainstrument = "Organ"
  style = "Baroque"
  license = "Public Domain"
  maintainer = "Pierre Masson"
  maintainerEmail = "ret98 (at) laposte.net"
  lastupdated = "2015-11-12"
  source = "Leipzig: Breitkopf & Härtel (1888, rev. 1903-04)"
  title = "Toccata"
  subtitle = "BuxWV 155"
  composer = "Dietrich Buxtehude (1637-1707)"

 footer = "Mutopia-2015/11/18-2075"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 17)

\paper {
  top-margin = 4
  bottom-margin = 4
  system-system-spacing = #'((basic-distance . 1) (minimum-distance . 1) (padding . 1) (stretchability . 120))
}

\layout {
  indent = 0.0\cm
}

vxsop = \relative c'' {
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \set Score.currentBarNumber = #1
  \bar ""
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
  \key d \minor
  \time 4/4
  d8. a16 bes a f g a4 r
  r2 f4 r
  R1
  <d' a>4 r r2 \noBreak
  %% 5
  <f d>4 r16 f e d cis4 cis 8 cis
  <d a>4 r <d a>2
  r16 e f g f8. e32 d <<{\voiceOne a'8. a16~ a4} \new Voice {\voiceOne c,8\rest e~e4}>>
  r16 a, bes c bes8. a16 d8. d16~ <d bes>4
  r4 r16 d d,8~d16 d e f e8. d16
  %%10
  a'4 a r8 r16 a~a8. a16 \break
  r8 r16 g~ g8. g16 r8 r16 g~g8. g16
  f4 ~f8 e r8 r16 d r8 b16 cis
  d2 r4 a'32 g f e d c b a
  e'4~ e8 e r4 r16 gis,16 a32 b c d
  %%15
  e4~e8 e~e d32 c b a a'8~a32 g f e \break
  f4~f8 f r2
  e4~e8 e r32 c e c r e a e r a c a r c e c
  r32 e, gis e r e a e r e b' e, r e c' e, r e gis e r e a e r e a e r d gis d \break
  r16 a' r b r a r gis a2
  %%20
  r2 d8 a16 d bes4
  a4~ a a8. a16 g4
  f4 r r d'8 a16 d 
  c4 bes bes a \break
  a8. a16 g8. g16 c4 bes8. g16
  %%25
  a4 a a8. a16 a8.a16
  a8. a16 g8. g16 f4 f8. f16
  f8. f16 f8. f16 f8. f16 e8. e16
  d4 r4 r2 \break
  R1
  %%30
  R1
  R1
  R1
  r4 d'8 e f g a e
  f4 d c a \break \pageBreak
  %%35
  d8 e f4 e gis,
  a2
  r2
  R1
  R1
  R1
  %%40
  R1 \break
  r4 a f d
  g8 a bes4 a cis,
  d2 r2
  r4 a'8 b c d e b
  %%45
  c4~c16 b c8~ c8 a16 c b4 \break
  a16 e f d e cis d b e8 d cis b
  r16 cis r d r e r f r e r f r g r a
  r16 f r g r a r bes c8 a d f
  e8 d d cis d4 d8 c \break
  %%50
  c8[ bes] bes[ a] r16 d r c r d r c
  r16 a b8 c4 c bes
  bes4 a a gis
  a4 s r s \break
  r2 e'2~
  %%55
  e8.[ e16 d8. cis16] d2~
  d4~d16 e f g cis,2
  d2~d8 e f4
  e2. a,4
  a4 d2 c8. b16 \break
  %%60
  c2~c8.[ c16 b8. a16]
  gis4 a8. b16 c4 b
  a1
  %%63
  \time 3/4
  r2 r8 d
  bes16 g bes c d4~ d16 f d e \break
  %%65
  cis8 d e2~
  e8 d4 c8~ c16 a bes8
  a8 r r4 r8 a
  f16 d f g a4~a16 b c a
  gis8 a b2 \break
  %%70
  a4 f r16 d f d
  g4
  bes2
  a4 r16 a g a e g f e
  f2 r16 g d e
  f4 e a~ \pageBreak
  %%75
  a2 d4
  e4 r16 e d e b d c b
  c2~c16 d c b
  c16 e f e a a, c a f'4~
  f8 e d2
  %%80
  r16 d cis d e4 r \break
  d4 c r16 a c a
  d4 f2
  e4 gis,2
  a4 r r
  %%85
  R2. \break
  r16 e g e c' e, a e fis a c fis,
  bes4 r16 a bes a d4
  c8 e16 c f8 a, d d
  bes16 g bes c d2 
  %%90
  e8 e, g f16 g f g f32 g f e \noBreak
  f4 r4 a4 \noPageBreak
  r4 c4~ c16 a b8 
  c4 r r8 f
  d16 bes d e f4~f16 a g f
  %%95
  e8 e16 f g4 r16 a, bes c
  a2 g8. bes16 \break 
  a4 r r8 c
  a16 f a bes c2~
  c8 b16 c d4 r
  %%100
  c4 a r16 f a f
  bes4 d2~ \break
  d4 d4. cis8
  d4 r r
  r4 r8 d c16 a c d
  %%105
  e2~e16 b c d
  c16 b c gis a2~
  a4 a4. gis8 \break
  r16 gis b gis e' e, gis e b'4
  r16 a cis a e' cis e cis a'4
  %%110
  r16 fis, a fis d' fis, a fis c'4
  r16 b d b g' g, b g d'4
  r16 g, a g c e, g e bes'4
  a4 r r8 d~ \break
  d16 d cis d cis d cis b a32 b cis d e fis gis a
  %%115
  r2 r8 e
  d4 r r8 c
  b4 r r8 <d g,>
  c4 r r8 bes \pageBreak
  a4 r r8 c
  %%120
  c4 r r8 bes
  a2~ a4
  r4 r16 e'8.~ e4
  r8 r16 e~e d8 cis16 d4~
  d8 c bes4 d~ \break
  %%125
  d4 d cis
  d2.
  r16 d c bes a bes fis g a e fis cis
  d16 r16 r8 r16 fis a d~d c bes a
  bes4 r r16 a g8
  %%130
  fis4 r r16 d' c8 \break
  bes4 r r16 a' g8
  fis4 r16 bes a g fis e d c
  bes d bes g bes d bes8 a16 c a8
  bes8 r16 bes a bes a g~g a g32 a g fis
  %%135
  g2 r4 \break 
  g32 d e fis g a bes c d g, a bes c d e fis g4
  \time 4/4
  r2 \tuplet 3/2 4 { g8 bes d, fis a c,}
  \tuplet 3/2 4 { d8 g bes, c fis a, d g bes, c fis a,}
  \tuplet 3/2 4 {bes8 d g, a d fis, g d' bes a d fis,}
  %%140
  \tuplet 3/2 4 { g d' e, g e' cis} d2\fermata

  \bar "|."
}


vxalt = \relative c' {
  \key d \minor
  \time 4/4
  r2 f4 r
  r2 d4 r
  r8 r16 a d a d a f' d a' f d8 r
  f4 r r2
  %% 5
  a4 r r16 bes a g~ g32 a g a g a g a
  f4 r f 2
  r2 r16 c'8.~c4
  r2 r4 bes
  r1
  %%10
  r8 e,~e4 r8 d d4
  r8 d d4 r8 e e4
  r16 cis d8~ d16 g,8. r8 a r4
  a2 r2
  r8 b~b b r2
  %%15
  r16 b c8~c c r2
  r16 c d8~d d r16 e d c b c b a
  c16 b c8~c c r2
  s1
  r16 <e cis> r  <f d> r <e cis> r <d b> <e cis>2
  %%20
  r2 r4 g8 d16 g
  e8 e f4 f8. f16 e4
  d4 r a'8 e16 a f4
  g8 d16 a' g4~g~g8. f16
  f8. f16 e8. r16 r8 e16 f~f8 e
  %%25
  e4 e8 a,16 d d8. d16 d8. d16
  d8. d16 d8. cis16 d4 d8. d16
  d8. d16 d8. d16 d8. d16 d8. cis16
  a4 r4 r2
  R1
  %%30
  R1
  r4 a8 b c d e b
  c a a'4 f d
  g8 a bes4 a cis,
  d8 a'4 gis8 a e f e
  %%35
  d4 c8 d e4~e8 d
  e4 d8 e f g a e
  f8 d f e d e f4
  e8 f4 g8~g f e4
  r4 d c a
  %%40
  d8 e f4 e gis,
  a c~c8 c bes4~
  bes8 a g g'~g f e g
  f g a g16 f e4. d16 e
  f8 g a d, e2~
  %%45
  e4 e~e8~e8~e16 d e d
  cis8 r s4 r16 cis r b r a r gis
  a8 b cis d cis d e cis
  d8 d d d r16 c r f r f r a
  r16 g r f r f r e r f a f r e a e
  %%50
  r16 d f d r c f c a'8 g a g
  f8. f16 r e g e r d g d r f g c,
  r16 c f c r d f d r c e c r b e b
  r2 a16 cis e a \stemUp cis e a8 \stemDown
  r4 r32 a g f e d cis b a2~
  %%55
  a2~a8.[ c16 bes8. a16]
  g2~g~
  g4 f8. e16 f8 g a4
  g2~g2
  f4. d8 e2~
  %%60
  e2 f
  e2. d4
  cis1
  %%63
  \time 3/4
  r16 e f e a a, c a f'4~
  f8 e d16 f d e f8 g~
  %%65
  g16 f e f e a g a e g f e
  f4 e f8. e16
  f8 r r4 r4
  R2.
  R2.
  %%70
  R2.
  r4 r16 d es d g8 d~
  d8 a cis2
  r16 d c d a c bes a bes4
  a8 d c4 r16 a c a
  %%75
  d4 f2
  e4 gis,2
  r16 a' g a e g f e f4
  e16 r16 r8 r4 r16 f a f
  bes8 g~ g16 a g f g e f g
  %%80
  a4~a4 r
  r16 d, f d a' a, c a f'4
  bes4~ bes16 a bes a d4
  c4 b e,~
  e16 e f e a a, c a f'4~
  %%85
  f4 d c
  R2.
  r16 d g d f4~f16 d f g
  a4 f r16 d f d
  g4 bes2
  %%90
  a4 cis,2
  d4 r16 c e c f4 
  r16 e g e a4 f8. f16 
  r16 e g e c' c, e c a'4~ 
  a8 g r16 e f g a8 b
  %%95
  r16 c8.~c16 c bes c g4~
  g16 c, d e f4~f8 e
  f16 e f c g'2~
  g8 f~f f e16 c e fis
  g4~g16 g f g d f e d
  %%100
  e4 c r8 d~
  d16 d g8~g16 g f e d8. e16
  f4
  e2
  r16 d f d a' a, c a f'8 e~
  e d d4 r8 a'8~
  %%105
  a16 a gis a b e, d e~e4
  e4~e16 d e c d4
  e4 d2
  r2 r8 e
  e4 r r8 e
  %%110
  d4 r r8 a'
  g4 r r8 f
  e4 r r8 g
  f4 r r8 a~
  a2 e4
  %%115
  r2 r8 a
  a4 r r8 a
  g4 r r8 f
  g4 r r8 <e g>
  f4 r r8 <f a>
  %%120
  <f a>4 r r8 g~
  g16 e f e f4~f
  r4 r8 gis16 a~a4
  r8 a~a g a4~
  a4 g2
  %%125
  a4. g8 g4
  fis2.
  R2.
  r2 d4
  d4 r16 a bes c d8. cis16
  %%130
  d4 r16 e fis g a8. a16
  g4 r16 a bes c d8. cis16
  d16 a bes c d8 c16 bes a8 fis
  g8 r r8. g16~g8. fis16
  g4 r r
  %%135
  d2 r4
  R2.
  r2 \tuplet 3/2 4 {bes8 d g d fis a}
  \tuplet 3/2 4 {bes,8 d g a, c fis bes, d g a, c fis}
  r1
  \tuplet 3/2 4 {g4 r8} \tuplet 3/2 4 {g4 e8} fis2
}
vxten = \relative c' {
  \key d \minor
  \time 4/4
  \stemDown r2 r16 cis d d, r4
  \stemUp d'8. a16 bes a f g a4 r
  r1
  \stemDown d4 r4 r2
  %% 5
  d4 r r e32 f e f e f e f
  d4 r <d a>2
  r2 r4 f
  r2 \stemUp r8 f~ f4
  s1
  %%10
  r16 cis8.~cis4 r16 a8.~a16 a8.
  r16 a8.~ a16 a8. r16 cis8.~ cis16 cis8.
  r4 bes4 r16 f8. r16 g8.
  f2 r2
  r16 gis8.~gis8 gis r16 gis a b e, r16 r8
  %%15
  r8 r16 gis a8 a r2
  r8 r16 a b8 b r2
  r8 r16 gis a8 a s2
  s1
  s1
  %%20
  \stemDown a'8 e16 a f4 d2
  cis4 d d8. d16~d8. cis16
  d8 a16 d c4 a2
  r4 d c r8 c
  r8 c~ c bes a4 g~
  %%25
  g8 a16 g f4 a8. a16 a8. a16 bes8.
  bes16 bes8. a16 r8 a r a
  r bes r bes r a r g
  \stemUp f4 r r2
  r4 \stemDown d8 e f g a e
  %%30
  f8 d d'4 c a
  d8 e f4 e gis,
  a4~ a16 b c a d8 a bes4~
  bes8 a g g' f4 e
  d
  b
  a8 c d c
  %%35
  b4 c2 b4
  a1
  r4 a f d
  g8 a bes4 a cis,
  d8 e f4 e8 c4 f8~
  %%40
  f8 g a b c d e b
  c a~a f d4 g8 f
  e f~ f e f g a4
  d,8 e f g a b c4
  b4
  a gis b~
  %%45
  b16 a b gis a4~a4. gis8
  a2~
  a8 f e d e2 r2
  d8 e f g a f bes f
  g8 a g a d, f a a,
  %%50
  \stemUp bes d f f, \stemDown f'[ e] f[ e]
  \stemUp d g, c e g g, d' e
  f f, f' d \stemDown e4 \stemUp e,
  \stemUp a16 cis e a \change Staff = "md" cis e a8 s2 \change Staff = "mg"
  r2 g8.[ g16 f8. e16]
  %%55
  f2. d4
  e2~e2~
  e8.[ e16 d8. cis16] d4. c8
  bes2 a4 e'~
  e8 d~d a b2~
  %%60
  b8.[ b16 a8. gis16] a8.[ a16 d8. c16]
  b4
  a2~a8 gis
  a1
  %%63
  \time 3/4
  \stemDown a4 f r16 d f d
  g4 bes2
  %%65
  a4
  cis,2
  r16 d f d a' b c a d4~
  d16 d f d e e, g e c'4~
  c8 bes a16 bes c a d4~
  d16 c b c b e d e b d c b
  %%70
  c16 a c a d d, f d bes'4~
  bes16 c bes a g2
  f4 \stemUp a2~a4 r r \stemDown
  r16 d, f d a' a, c a f'4~
  %%75
  f16 a g a f g e f d8 d'~
  d8 c b2
  a4 c d
  c2 d8 d
  bes16 g bes c d2
  %%80
  f8 e~e16 a, g a e g f e
  f4 r r8 r16 d'
  bes16 g bes c d2
  r4 r16 e d e b d c b
  c4 r r16 a bes a
  %%85
  d16 f, a f bes4 a
  g4 a2
  g4 r r
  r16 a c a d d, f d bes'4
  g4~g16 a bes c d e f g
  %%90
  cis,4 e,2
  r16 d f d a'4 r16 f a f
  c'4 r16 a c a d4
  c4 a r16 f a f
  bes4 d2
  %%95
  c4 e,2
  f4~f16 g a bes c4~
  c4 r16 g c g e'4~
  e8 d c4 r8 c
  e8 d d4. g,8
  %%100
  g16 e g e a4~a
  g4 a8 a f16 d f g
  a4 g2
  f4 r r8 a
  f16 d f g a2
  %%105
  c8b16c b4 b
  a2~a16gis a b c4 b2
  r2 r8 \stemUp d
  cis4 r r8 a
  %%110
  a4 r r8 d
  d4 r r8 d
  c4 r r8 c~
  c16 c d c f a, c a r8 f'~
  f16 f e f e f e d cis4
  %%115
  r2 r8 g'
  fis4 r r8 d
  d4 r r8 d
  e4 r r8 c
  c4 r r8 c
  %%120
  d4 r r8 d~
  d4~d16 cis d8~d4
  r2 r16 fis g8
  r16 g8. f8 e f4~
  f4~f8 e~e d
  %%125
  f4 e~e
  d2.
  R2.
  r16 \stemDown d, fis a d r r8 a4
  g16 d e fis g4 fis8 e
  %%130
  d16 a' bes c d4~d~
  d16 d e fis g4 fis8 e
  d8 r r8 g, d'4
  g,4 r8 d'~d4~
  d8 r16 d c d c bes~bes c bes32 c bes a
  %%135
  bes4 r32 d, e fis g a bes c d g, a bes c d e fis
  R2.
  R1
  R1
  \tuplet 3/2 4 {g,8 bes d c bes a bes a g fis a d}
  %%140
  \stemUp \tuplet 3/2 4 {bes4~bes8 bes4~bes8} a2
  
}

vxbas = \relative c {
  \key d \minor
  \time 4/4
  s1
  r2 r16 cis d d, r4
  s1
  s1
  %% 5
  s1
  s1
  s1
  s2 s16 d''8.~d4~
  d32 c bes a g f e d g4~g2~
  %%10
  g8. g16~g8 f32 g f e f4~f8 f
  e4~e8 e8~ <<{\voiceFour e2 s4} \new Voice {\voiceFour a4~a8 a~ a8. a16}  >>
      r8 r16 cis, d4 e
  d2 r2
  r8 r16 d e4 r2
  %%15
  r4 r16 e8. r2
  r4 r16 f8. r2
  r4 r16 dis e8 a c e a
  e, fis gis a b c b a
  a a a a a16 a, e' cis a'4
  %%20
  s1*5
  %%25
  s1*3
  d,4 s s2
  s1
  %%30
  s1*5
  %%35
  s1*5
  %%40
  s1*5
  %%45
  s1*5
  %%50
  s1*3
  s4 r4 r2
  r2 cis'
  %%55
  d2 a
  b2 a~
  a2. f4
  g f e2
  f4. f8 e2~
  %%60
  e2~e4 d~
  d4 c8. d16 e2~
  e1
  %%63
  \time 3/4
  s2.
  s2.
  %%65
  s2.*5
  %%70
  s2.*2
  s4 e2
  d2 s4
  s2.
  %%75
  s2.*5
  %%80
  s2.*5
  %%85
  s2.*5
  %%90
  s2.*5
  %%95
  s2.*5
  %%100
  s2.*5
  %%105
  s2.*3
  r2 r8 b'
  a4 r r8 e
  %%110
  fis4 r r8 a
  b4 r r8 g
  g4 r r8 g
  a4 r d
  a2.
  %%115
  r2 r8 cis
  d4 r r8 fis,
  g4 r r8 b
  c4 r r8 c
  c4 r r8 a
  %%120
  bes4 r r8 g
  a4.~a16 gis a4
  r2 e'4
  r8 cis d a~a16 c bes a
  bes2 g4
  %%125
  f4 g a~
  a2.
  s2.
  s2.
  s2.
  %%130
  s2.*5
  %%135
  s2.*2
  s1*3
  %%140
  \tuplet 3/2 4 {r4 g8 bes4 g8} d2
}

ped = \relative c {
  \key d \minor
  \time 4/4
  R1
  R1
  r2 r4 r16 cis d d,~
  d8. d16 d' d, d' d, f' d a' f d cis d d,~
  %% 5
  d4 r4 r2
  d'8 d, r4 d'2
  r2 c
  r2 bes
  r2 bes
  %%10
  a1~
  a
  d,~
  d2 r
  r4 r16 d8. r2
  c2 r2
  d2 r2 e1~
  e1
  a1
  %%20
  r4 d'8 a16 d bes8 f g4~
  g4 f8 d16 f a8 a, a' a,
  d4 a'8 e16 a f8 c d4
  e8 fis g g,16 g' e8 c16 e f8 a,
  c1
  %%25
  cis4 d f8 f,16 f' f8 f,16 f'
  e8 g,16 e' e8 a,16 e' d4 d
  g,4 g a a
  d,4 a'' f d
  g8a bes4 a cis,
  %%30
  d2 e4 f~
  f4 d e2
  a,2 r2
  R1
  R1
  %%35
  r4
  a8 b c d e b
  c
  a
  f'4. e8 f cis
  d2 r2
  r4 d8 e f g a e
  f cis d d, a'2
  %%40
  R1
  R1
  R1
  r4 d c a
  d8 e f4 e gis,
  %%45
  a4. d,8 e2
  a1~
  a2 r2
  R1
  R1
  %%50
  R1*4
  r2 a'
  %%55
  d,2 f
  e
  a, d1~
  d2 cis
  d2 gis,
  %%60
  a2 d,
  e1
  a1
  %%63
  \time 3/4
  R2.
  R2.
  %%65
  R2.
  R2.
  r4 c r16 a c a
  d4 f2
  e4
  gis,2
  %%70
  a4 r r
  r2 r16 g bes g
  d'16 d, f d a'2
  d,2 r4
  R2.
  %%75
  r16 f' e f d e c d b4
  c16 a c a e'4. e,8
  a2 r4
  a'4 f r16 d f d
  g4
  bes2
  a4
  %%80
  cis,2
  d4 r r
  r2 r16 d f d
  a' a, c a e'2
  a,4 r r
  %%85
  r4 r16 bes d bes f' f, a f
  c'4 a d
  g,4 d' bes
  a4 r r
  R2. 
  %%90
  R2.
  R2.
  R2.
  R2.
  R2.
  %%95
  R2.
  R2.
  f'4 e r16 c e c
  f4 a2
  g4
  b,2
  %%100
  r16 c e c f f, a f d' d f d
  g8. g,16 d'4. bes8
  a2.
  d4 c  r16 a c a
  d4 f2
  %%105
  e4 gis,2
  a4 f'2
  e2.
  r2 r8 gis,
  a4 r r8 cis
  %%110
  d4 r r8 fis
  g4 r r8 b,
  c4 r r8 e,
  f4 r r8 d
  a'2.
  %%115
  r16 a cis a e' cis e cis a'4
  r16 d, fis d a' fis a fis d'4
  r16 g,, b g d' b d b g'4
  r16 c, e c g' e g e c'4
  r16 f,, a f c' a c a f'4
  %%120
  r16 bes, d bes f' d f d g4
  d2~d8 d,
  r16 d'' gis, a cis,2
  d2.
  g,2 bes4
  %%125
  a2.
  d2.
  R2.
  r2 fis4
  g4 r r
  %%130
  d4 r fis
  g4 r r
  d'4 r r
  r4 r8 g, d'4
  g,8 r r g, d'4
  %%135
  g,2 r4
  R2.
  d1~
  d1~
  d1~
  %%140
  d1\fermata

}


\score {
  <<
    \new GrandStaff \with {
      \override StaffGrouper.staffgroup-staff-spacing.basic-distance = #1
    }<<
      \new Staff = "md" {
        \clef violin
        <<
          \vxsop \\
          \vxalt
        >>
      }
      \new Staff = "mg" {
        \clef bass
        <<
          \vxten \\
          \vxbas
        >>
      }
    >>
    \new Staff {
      \clef bass
      <<
        \ped
      >>
    }
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)

    }
  }
  \midi {}
}

