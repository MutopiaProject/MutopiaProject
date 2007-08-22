\version "2.10.25"

\header {
  title = "Sonate 16 in C major"
  subtitle = "Sonata facile"
  composer = "W. A. Mozart"
  opus = "K 545"
  piece = "Rondo - Allegretto grazioso"
  mutopiatitle = "Sonata Facile - Third movement"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Piano"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "IMSLP"
  maintainer = "Alejandro Sierra"
  maintainerEmail = "algsierra@gmail.com"
 footer = "Mutopia-2007/08/22-1027"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
  
%{ Abreviations
  Suffixes rh = right hand
           lh = left hand
  Prefixes pt = principal theme
           st = secondary theme
           cl = close
           dv = development
           cd = coda
           mt = middle theme
%}

#(define afterGraceFraction (cons 15 16))

%%% Right Hand

ptrh = \relative c'' {
  <e^3 g-5>8-.\p <e g>-. 
  <c-1 e-3>-. r <d-2 f-4>-. <d-2 f-4>-.
  <b-1 d-2>-. r  c16-3\( d e c
  a\< b c-1 cis  d e f\! d-3\>
  c b a-2 g\!\) <e' g>8-.\p <e g>-.
  <c-1 e-3>-. r <a'-2 f-4>-. <a-2 f-4>-.
  <d,-2 b-1>-. r  a'16\mf->-4\( g f e
  cis-2 d e f  a,-4 c b d
  c8\) r
}

strh = \relative c'' {
  e16(-2 fis g) g-.-3 
  a16(-4 g fis e)  d-.-3 d-.-2 d-.-1 d-.-2
  e(-4 d c b)  e'\(-4 d c b

  % 11
  gis-2 a b c  e,-1 fis-3 g a
  g\> fis e d\)\! <b'^3 d-5>8-.\p <b d>-.
  <g-1 b-3> r8 <a-3 c-5>-. <a c>-.
  <fis-2 a-5> r8 g16-3\( a b g-4
  dis-2 e g e-4  d b-1 c-4 a-2

  g8\) r g16\p-1( a b c
  d8) r b16-1( c d e
  f8) r d16-1( e f g
  a8)\> aes( g fis
  f8)\! r <e g>-.\p <e g>-.
  <c e>-. r <d f>-. <d f>-.
  <b d>-. r c16\( d e c

  a b c cis d e f d
  c b a g\) <e' g>8-.\p <e g>-.
  <c e>-. r <f a>-. <f a>-.
  <b, d>-. r a'16->\mf\( g f e
  cis d e f a, c b d  
}

mtrh = \relative c'' {
  c8\) r r4
  e16\p(-3 dis f e) r4
  e16\p( dis f e)  <e-2 c'-5>8-.\mp <e c'>
  <c a'-4> r <d-2 b'-5> <d b'>
  <b gis'-4>-.-4 r a'16\mp-5( e-3 c a)
  c-3 bes bes-3 bes-2 d-3 cis cis-3 cis-2

  #34
  e-3 d-. f-3 e-.  g-3 f-. f-3 e-.
  e-3 dis-. c'4(-5 dis,8-2
  e)-. r b'16(-5 gis-4 e-2 d)
  c-2( e-3 a-5 gis a e-3 c a 
  gis-2 b-1 e-2 gis-4 b gis-4 e-2 d

  c-2 e-3 a-5 gis a e-3 c a
  e8-2) r <c' e>-.\mp <c e>-.
  <a c> r <b d> <b d>
  <gis b> r r4
  e16\p dis f e r4

  e''16-3\mp( dis f e  d-1 cis-2 e-3 d)
  d-.-3 c-. c-.-3 b-.  b-.-3 a-. a-.-3 g-.
  g-.-3 f-. f-.-3 e-.  e-.-3 d-. d-.-3 c-.
  bes-2 f'-5 d-4 b-2  a8 gis-2
  a r gis16-2 d'-5 b-3 gis-2

  a8 r gis16( d' b gis
  a8) r gis16\( d' b gis
  a e' c a  b f' d b\)
}

clrha = \relative c'' {
  b16\p-1 f'-4 d-2 b
  a'-5 g f e  d f-4 d-2 b
  a'-4 g f e  d'-5 c b a
  a->-4 g f e  e-4 d c b
}

clrhb = \relative c'' {
  c-2 e-4 g,-1 c-5  e,-2 g-3 c,-1 e-2
  g-3 c-1 <c-1 e-3> <e-3 g-5>  <e-2 g-4> <f d> <c-2 e-4> <d b>
  c( e g, c  e, g c, e
  g-.) c-. <c e>-. <e g>-.  <e g>-. <f d>-. <c e>-. <d b>-.
  c8-. <e g c>-. <c e,>-.  <c e,>-.
  <c e,>4 r
}

clrh = \relative c'' {
  \clrha
  d8 c  \clrha
  \clrhb  \bar "|."
}

%%% Left Hand

ptlh = \relative c' {
  \clef bass
  r4
  <a^3 c-1>8-.\p  <a-3 c-1>8-. <f-5 a-3>-. r
  <g-3 b-1>-.  <g b>-. <g-3 e-5>-. r
  f4.-3( d8
  g-.) r r4
  <a-2 c-1>8-. <a c>-. <d,-5 f-4>-. r

  <g-2 b-1>-.  <g b>-. <e-4 c-5>-. r
  <f-5 a-3>4.\mf( <g-4 f'>8
  <c-2 e-1>-.) c,-. 
}

stlh = \relative c' {
  \clef treble
  c16-4 g' e g
  b,-5 g' d g  \clef bass fis, d' a d
  g, d' b d  b, g' d g

  c, a' e a  cis, a' e a
  d,8 r8 r4
  \clef treble
  <e'-3 g-1>8-.\p <e g>-. <c e>-. r
  <d-3 fis-1>-. <d fis>-. <b d>-. r
  \clef bass
  << { g4.-1\( fis8-2 } \\ { c4_5 d } >>

  g8\) g, r4
  <g'-2 b-1>8-. g,-. r4
  <g' b>8-. g,-. r4
  r2
  r2
  <a' c>8-. <a c>-. <f a>-. r
  <g b>-. <g b>-. <e g>-. r

  f4. d8
  g8 r r4
  <a c>8-. <a c>-. <d, f>-. r
  <g b>-. <g b>-. <c, e>-. r
  <f a>4.\mf <g f'>8
}

mtlh = \relative c' {
  <c e>-. c, <c'-3 e-1>-.\mp <c e>-.
  <a c>-. r <b-2 d-1>-. <b d>-.
  <gis-4 b-2>-. r r4  
  e'16\p dis f e r4
  e16 dis f e  \clef treble <c-5 e-3>4
  <d f> <e g>

  #34
  << { f8_2 cis-5 d e } \\ { a2-1 } >>
  <f a>8 r <f a> r
  \clef bass
  e,16( e' gis,-3 e'  b-2 e gis, e')
  e, e'-3 a, e'-2  c e a, e'
  e, e' gis, e'  b e gis, e'

  e, e' a, e'  c e a, e'
  c,8 r r4
  e'16-2\p dis f e r4
  e16 dis f e <e,-4 c'-1>8\mp <e c'>
  <c-5 a'-2> r <d-4 b'-1> <d b'>

  <b-5 gis'-2>-. r <gis'-4 b-2>4->
  <a c>8 <b-4 d-2> <c e> cis-2
  \clef treble
  << { \stemDown d8_4( e f e } \\ { \stemUp a2-1 } >>
  <d,-4 f-2>4) \clef bass << { \stemDown e,4-5 } \\ { \stemUp c'8-1 b } >>
  a16-4( c e c  e, b' d b)

  a-4 c e c  e, b' d b
  a c e c  e, b' d b
  a c d c  g d' f d
}

cllha = \relative c {
  f16\pp b g b
  e, c' g c   f, b g b
  e, c' g c   f, d' g, d'
  g, e' c e   g, f' d f  
}

cllhb = \relative c' {
  c16-3 e-1 g,-4 c-1  e,-4 g-1  c,-4 e-2
  g8 r g r
  c16(-2 e g, c  e, g  c, e
  g8)-. r g,-. r
  <c c,>-. <e e,>-. <g g,>-. <e e,>-.
  <c c,>4 r
}

cllh =  {
  \cllha
  g16 g e g  \cllha
  \cllhb
}

\score {
  \new PianoStaff <<
    \time 2/4
    \new Staff { 
      \override Fingering #'avoid-slur = #'inside
      \keepWithTag #'first
      \repeat volta 2 {	\partial 4 \ptrh }
      \strh
      \mtrh
      r4\fermata \ptrh
      \clrh
    }
    \new Staff { 
      \override Fingering #'avoid-slur = #'inside
      \repeat volta 2 { \partial 4 \ptlh }       
      \stlh
      \mtlh
      r4\fermata \ptlh
      \cllh
    }
  >>
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 104 4)
    }
  }
}
