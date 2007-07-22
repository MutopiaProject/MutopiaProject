\version "2.10.25"

\header {
  title = "Sonate 16 in C major"
  subtitle = "Sonata facile"
  composer = "W. A. Mozart"
  opus = "K 545"
  piece = "Andante"
  mutopiatitle = "Sonata Facile - Second movement"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Piano"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  source = "IMSLP"
  maintainer = "Alejandro Sierra"
  maintainerEmail = "algsierra@gmail.com"
 footer = "Mutopia-2007/07/22-1007"
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
  b2-2\p\( d16-4 c b c
  d8.-> b16-2 g4-.\) r4
  g'4.->\(  a16 g fis e d cis

  d8.-> b16-2 g4-.\) r4
  c8.-5->( a16  fis8)(\< a-3 b-1 c)\!  
  d8.( b16-4 g'4-5) r4

  a16->-4( g fis g   fis e dis-3 e  d c b c-3)
  b8.-2( c32 b  a8) d-5( cis c
  b4\mp) ~  b16\( g b-2 d-4  c a c e
}

ptendrh = \relative c'' { 
  d8. b16-2 g-.\) g-. a-.( b-.  c-. d-. e-. fis-.)
  g-4\mf\( fis g fis a_5-> g fis g fis e d cis-3
  d->-4\mp b-2 d b g4-.\) r4

  c16-5( a-3 c a fis)\( a gis a-1  ais b-3 c-1 cis
  d b-1 d-2 b g'4-.->\) r16 b-5( fis-2 g 
  dis-2 e c-2 a  g8.) g16-3(  b-5-> a g a)
}

ptlastrh = \relative c'' { 
  <a fis>4( g) r
}


ptbrh = \relative c'' { 
  d4-3\p\( ~  d16 cis e-4 d-1  g-4 fis e d
  cis8.-2 d16 e4\) r
  e-3_>\( ~ e16 dis fis e-2  a->-5 g fis e

  d8.-2\) e16 fis4 r
  fis_>( ~ fis16 e g e  b'->-5 a g fis)
  e4_>-1( ~ e16 dis fis e a g fis e)

  e d d8  d16 a d fis <fis c> e d e
  <e-4 cis-2>4->( d16-1\p)\( dis e dis fis e d c
  b4-2\p ~ b16 g b d c a c e\)
}

strh = \relative c'' { 
  bes4-2\p ~ bes16\( a c bes bes a g fis
  g8.-1 bes16-3 d4-.-5\) r
  d-3 ~ d16\( cis ees d  d-4 c bes a
  
  bes8.-1 d16-3 g4-.-5\) r
  f-1 ~ f16\( a-3 c-5 bes a g f ees-2
  d4 ~ d16 g-2 bes-4 a g f ees-3 d

  b-1 c ees-3 g  bes,8.-2\mp\)  bes16( d c bes c)
  <c a>4\( bes16-2 a c-3 bes d c ees-3 d-1
  f4\) ~ f16\( aes-4 g f-1 ees-4 d c b

  c8. ees16-3 g4\) r
  g-3 ~ g16( fis a g bes-5 cis,-1 bes' cis,)
  cis4-2( d r)

  ees-2-> ~ ees16\( c a'-4 fis-2 c'-5 a-2 ees'-5 fis,-1
  d'4-5\) ~ d16( a-3 bes fis-2 g-4 cis,-2 d-3 bes-4)
  bes-2->( a c-3 ees-5  g,8.-1\p) g16-2( bes-4 a g a)

  <fis-2 a-4>4\(  g16 fis g gis  a gis a ais\)
}

cdrh = \relative c'' {
  g16-3\p\( fis a-4 g-1  b-3 a c-4 b-1  d-3 c-2 e-4 d-1
  f4.-3\mf  g16 a g f e d
  dis4 e\) r16  g\mf\( fis e
  
  d b a-2 e'-5  g,8.-1\p\) g16-3( <fis-2 b-5>-> a g a)
  g\(\< fis a g  b a c b  d c e d\!
  f4.\f  g16 a g f e d
  e4-.\) fis-.->  g-.->

  g,4.-3\mf(  a32 g fis g  <fis b>8 a)
  g16-3 d b' b  b g d' d  d b a b
  g-2 d b' b  b g d' d  d b a b
  g8 r8 <g b,> r8 r4
  
}



%%% Left Hand

ptlh = \relative c' {
  \clef bass
  g16-5\pp d'-1 b-3 d  g, d' b d  a-4 d-1 c d
  \repeat unfold 3 { g, d' b d }
  g, e'-1 c-2 e    g, e' c e    g, cis-2 ais-3 cis

  \repeat unfold 3 { g d' b d }
  \repeat unfold 3 { a d c d }
  g,\( d' b d   e,-5 b'-1 g b  b,-5 g'-1 d-3 g

  <c,-5 e-3>4( g'-1) e\)
  <d-4 g-1>4( fis) r
  g16\p d' b d g, d' b d  g, d' b d
}

ptendlh = \relative c' {
  \repeat unfold 3 { g d' b d }
  g,\mp e' c e  g, e' c e   g, cis ais cis
  g\p d' b d \repeat unfold 2 { g, d' b d }

  \repeat unfold 3 { a d c d }
  g, d' b d   e, b' g b  b, g' d g
  c,-5 a'-1 e-3 a  d, b'-1 g-2 b  d, c' a c  
}

ptlastlh = \relative c' {
  <c-1 g-4>4( b) r
}

ptblh = \relative c' {
  \clef treble 
  d16-\pp-5( a' fis a  d,16 a' fis a  d,16 a' fis a )
  e-4 a g a  \repeat unfold 2 { e a g a }
  cis,-5 a' g a  \repeat unfold 2 { cis, a' g a }

  d,-4 a'-1 fis-2 a  cis,-5 a' d, a'  b,-5 g'-1 d-3 g
  a,-5 fis'-1 d-2 fis  g,-5 e'-1 cis-2 e  fis,-5 d'-1 a-3 d
  b-5 g' e g a,-5 fis' dis fis g, e' b e 
  
  a,->-5\mf fis' d fis  a, fis' d fis  a, g' d g
  <d g>4 fis r
  \clef bass
  g,16 d' b d  g, d' b d  a d c d
}

stlh = \relative c' {
  \clef bass
  g16-4 d' bes d   g, d' bes d   g,-5 ees' bes ees
  \repeat unfold 3 { g, d' bes d }
  \repeat unfold 3 { fis, d' a d }

  g,-4 d' bes d   g, d' bes d   g,-5 ees' bes ees 
  \repeat unfold 3 { a,-5 f' c f }
  bes,-4 f' d f  g, d' bes d  d, bes' f bes

  ees,-5 c' g c  f,-5\p d' bes d  f, ees' a, ees'
  <ees bes>4 d r4
  aes16-5 f' c f  g, d' b d  f, d' g, d'

  ees,-5 c' g c  d, b' f b  c, c' ees,-4 c'
  cis,-5 bes' e, b'  d,-5 b' g b  ees,-4 b' g b
  d,-5\p bes' g bes d,-5 a'-1 fis-2 a  d,-4 a'-1 fis-2 a

  c,->-5 a'-1 fis-2 a   c, a' fis a  c, a' fis a 
  bes,->-5  g'-1 d-2 g  bes, g' d g   bes, g' d g  
  c,-5\pp a'-1 ees a  d,-5 a'-1 g-2 a  d, c' fis, c'

  <g c>4 bes r
}

cdlh = \relative c' {
  \clef bass
  <b g>4 r4 r4
  \clef treble
  a16 f' c f  a, f' c f  b, g' d g
  \repeat unfold 3 { c, g' e g }
  
  b, d c e  \clef bass  d, b' g b  d, c' a c
  <g b>4 r r
  a,16\mf f' c f  b, g' d g  g, g' b,-4 g'
  c,-5 g' e g  c, g' ees g  cis, bes' e, bes'
  
  d, b' g b  d, b' g b  d, c' a c
  <g b>4 r r8 <c d,>(
  <g-2 b-3>4) r r8 <c d,>(
  <g b>8) r8 g, r r4
}



\score {
  \new PianoStaff <<
    \key g \major
    \time 3/4
    \new Staff { 
      \key g \major
      \override Fingering #'avoid-slur = #'inside
      \keepWithTag #'first
      \repeat volta 2 {	\ptrh \ptendrh \ptlastrh } \break
      \repeat volta 2 {	\ptbrh \ptendrh \ptlastrh }
      \strh \ptrh \ptendrh
      \cdrh
      \bar "|."
    }
    \new Staff { 
      \key g \major
      \override Fingering #'avoid-slur = #'inside
      \repeat volta 2 {	\ptlh \ptendlh \ptlastlh }
      \repeat volta 2 {	\ptblh \ptendlh \ptlastlh }
      \stlh \ptlh \ptendlh
      \cdlh
    }
  >>
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 4)
    }
  }
}
