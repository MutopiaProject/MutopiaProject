\version "2.6.0"
\header {
  title = "Opus Sinister"
  composer = "James Banks"
  
  maintainer = "James Banks"
 mutopiatitle = "Opus Sinister in G minor"
 mutopiacomposer = "BanksJK"
 mutopiainstrument = "Percussion, Bells/Glockenspiel"
 date = "2006"
 source = "Original Composition"
 style = "Baroque"
 copyright = "Public Domain"
 maintainerEmail = "foreclosers (at) gmail.com"
 lastupdated = "2006/Feb"

  footer = "Mutopia-2006/02/24-668"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
  }

global = {
 \time 3/4
 \key g \minor
 \clef treble
 }

rhytha = { << { s2. } \\
              { g8 g g g g g } >> }
rhythb = { << { s2. } \\
               { g8 g16 g g8 g g g } >> }

bells = \relative {
\set Staff.instrument = "Bells"

 %Measure 1? may need a better beginning
 g'8 d bes d g d
 g8 d bes d g d
 fis8 d bes d fis d
 fis8 d bes d fis d
 f8 d g, d' f d
 f8 a, f' b, f' c
 e8 c g c e c
 e8 c g c e c
 ees8 c g c ees c
 ees8 bes' d, c' c, ees'
 << { s4 d fis } \\
    { bes,,8 a g r4. } >>
 << { g''8 d g d g d } \\
    { g,4 s2 } >>
 g'8 d g d g d
 bes'8 ees, a ees g ees 
 bes'8 ees, a ees g ees 
 bes'8 d, a' d, g d
 bes'8 d, a' d, g bes,
 a'8 c, g' c, fis a, 
 a'8 c, g' c, fis a, 
 g'4 f8 ees d c
 bes4 c8 d ees g
 f8 d a d f d
 f8 d, ees' d, d' d,
 \time 4/4
 << { ees'4 a s4 r8 a } \\
    { r8 c,,4 c8[ d ees d c] } >>
 %measure 25 
 \time 3/4
 << { bes''4 bes bes } \\
    { bes,,4 r g' } >>
 << { c'4 c a } \\
    { fis,4 g a } >>
 << { bes'4 a g } \\
    { bes,,8 c d ees g4 } >>
 << { a'4 g fis } \\
    { a,,8 d fis g a fis } >>
 << { bes'8 a g4 s4 } \\
    { g,4 bes ees } >>
 << { f4 ees d } \\
    { r8 c, d ees d c } >>
 << { ees'2 d4 } \\
    { d,4 g bes } >>
 << { c8 a c a c a } \\
    { fis4 fis fis } >>
 << { bes8 g bes g bes g } \\
    { d4 d d } >>
 << { a'8 fis a fis a fis } \\
    { d4 d d } >>
 << { g8 d g d g d } \\
    { b4 b b } >>
 %measure 36
 << { g'8 d g d g d } \\
    { b4 b b } >>
 << { e16 g,  c  g  e' g, c  g  e'8 c } \\
    { s2 g4    } >>
 << { e'16  g,  c  g  e'8   c   e   c } \\
    { s4  g      g    } >>
 << { g'8 d g d g d } \\
    { b4 b b } >>
 << { g'8 gis a bes b c } \\
    { b,4 s2 } >>
 << { c'8 a c a c a } \\
    { fis4 fis fis } >>
 %measure 42
 << { cis'8 a d a ees' a, } \\
    { fis4 fis fis } >>
 << { g'8 d g d g d } \\
    { bes4 bes bes } >>
 << { fis'8 d fis d fis d } \\
    { a4 a a } >>
 << { g'8 d g d g d } \\
    { g,4 g g } >>
 << { a'8 d, a' d, a' d, } \\
    { f,4 f f } >>
 << { g'8 c, g' c, g' c, } \\
    { ees,4 ees ees } >>
 << { f'8 bes, f' bes, f' bes, } \\
    { d,4 d d } >>
 %measure 49
 << { ees'8 a, ees' a, ees' a, } \\
    { c,4 c c } >>
 << { d'8 c bes c d bes } \\
    { d,4 g a } >>
 << { c8 bes a bes c a } \\
    { bes4 fis ees } >>
 << { bes'4 a g } \\
    { d8 g, a bes d ees } >>
 << { a4 g f } \\
    { f8 d bes a bes d } >>
 << { f4 f f } \\
    { f8 ees d c bes a } >>
 %measure 55
 << { ees'8 s8 s2 } \\
    { c8 g[ a bes a g]} >>
 << { ees'4 d c } \\
    { g8 g g g g a } >>
 << { c4 d ees } \\
    { bes8 a g a bes g } >>
 << { c4 a fis' } \\
    { a,8 g a bes c d } >>
 << { g4 s2 } \\
    { g,4 g8 g g g } >>
 << { s2. } \\
    { g8 g16 g g8 g g g } >>  
 << { s2. } \\
    { g8 g16 g g8 g g g } >>  
 << { s2. } \\
    { g8 g16 g g8 g g g } >>  

\repeat volta 2 {
 << { s8 d' s2 } \\
    { g,8 s g g g g } >>
 \rhythb  
 << { s8 ees'[ c] s4. } \\
    { g8 s s g g g } >>
 \rhythb
 << { s8 d' s2 } \\
    { g,8 s g g g g } >>
 \rhythb
 << { s8 ees'[ bes] s4. } \\
    { g8 s s g g g } >>
 \rhythb
  }

 \rhytha
 \rhythb
 \rhytha
 \rhythb
 << { s8 c[ a] s4. } \\
    { g8 s s g g g } >>
 \rhythb
 << { s8 bes[ ees] s4. } \\
    { g,8 s s g g g } >>
 \rhythb
 << { s8 d'[ bes] s4. } \\
    { g8 s s g g g } >>
 \rhythb
 << { s8 c[ a] s4. } \\
    { g8 s s g g g } >>
 \rhythb
 << { s8 c[ aes] s4. } \\
    { g8 s s g g g } >>
 \rhythb
 \rhytha
 \rhythb
 
 g8[ d'16 g, g'8] g,[ g g]
 \rhythb
 g8[ c16 g f'8] g,[ g g]
 \rhythb
 g8[ d'16 g, ees'8] g,[ g g]
 \rhythb
 g8[ d'16 g, bes8] g[ g g]
 \rhythb
 g8[ d'16 g, g'8] g,[ g g]
 \rhythb
 g8[ d'16 g, a'8] g,[ g g]
 \rhythb
 fis'8[ g,16 g g8] g[ g g]
 \rhythb
 fis'2.
 << { d'2. } \\
    { g,,8 g16 g g8 g g g } >>
 << { ees''2. } \\
    { g,,8 g16 g g8 g g g } >>
 << { bes'2. } \\
    { g,8 g16 g g8 g g g } >>  
 << { c'2. } \\
    { a,8 g16 g g8 g g g } >>  
 << { d''2. } \\
    { bes,8 g16 g g8 g g g } >>  
 << { fis''2. } \\
    { c,8 g16 g g8 g g g } >> 
 << { g''8[ d16 bes g8] d[ g, g] } \\
    { d'4 s2 } >>
 << { s2. } \\
    { g,8 g16 g g8 g g g } >> 
 << { f''8[ d16 a fis8] d[ g, g] } \\
    { d'4 s2 } >>
 << { s2. } \\
    { g,8 g16 g g8 g g g } >> 
 << { ees''8[ bes16 g ees8] c[ g g] } \\
    { c4 s2 } >>
 << { s2. } \\
    { g8 g16 g g8 g g g } >> 
 d''8[ bes16 a g8] ees[ d c]
 \rhythb
 bes'16[ a g fis ees d] ees8[ g, g]
 \rhythb
 bes'16[ g f ees d c] bes8[ g g]
 \rhythb
 a'16[ fis d a d fis] a[ fis d a d fis]
 fis8[ ees16 d bes8] a[ a a]
 
 << { s2.^"Decel." } \\
    { g8 g16 g g8 g g g } >> 
 \rhythb

 \bar "||"
 d''16[ bes, c' a, bes' g,]  d''16[ bes, c' a, bes' g, ]
 d''16[ bes, c' a, bes' g,]  d''16[ bes, c' a, bes' g, ]
 c'16[ c, bes' bes, a' a,] c'16[ c, bes' bes, a' a,]
 c'16[ c, bes' bes, a' a,] c'16[ c, bes' bes, a' a,]
 bes'16[ d, a' c, g' bes,] bes'16[ d, a' c, g' bes,]
 bes'16[ d, a' c, g' bes,] bes'16[ d, a' c, g' bes,]
 a'16[ c, g' bes, f' a,] a'16[ c, g' bes, f' a,]
 a'16[ c, g' bes, f' a,] a'16[ c, g' bes, f' a,]
 g'16[ ees f d ees c] g'[ bes, f' a, ees' g,]
 f'16[ g, ees' g, d' g,]  f'16[ g, ees' g, d' g,]
 ees'16[ g, c g a' g,] bes'[ g, fis' g, g' g,]
 bes16[ g ees' g, c g] d'[ g, a g bes g]
 g16[ g g g g g] g[ g g g g g] 
 g16^"Decel." g g g g g g g g g g g 
 \rhytha
 \rhythb

 \bar "||"
 %2nd time through, maybe use D.C. instead
 g'8 d bes d g d
 g8 d bes d g d
 fis8 d bes d fis d
 fis8 d bes d fis d
 f8 d g, d' f d
 f8 a, f' b, f' c
 e8 c g c e c
 e8 c g c e c
 ees8 c g c ees c
 ees8 bes' d, c' c, ees'
 << { s4 d fis } \\
    { bes,,8 a g r4. } >>
 << { g''8 d g d g d } \\
    { g,4 s2 } >>
 g'8 d g d g d
 bes'8 ees, a ees g ees 
 bes'8 ees, a ees g ees 
 bes'8 d, a' d, g d
 bes'8 d, a' d, g bes,
 a'8 c, g' c, fis a, 
 a'8 c, g' c, fis a, 
 g'4 f8 ees d c
 bes4 c8 d ees g
 f8 d a d f d
 f8 d, ees' d, d' d,
 \time 4/4
 << { ees'4 a s4 r8 a } \\
    { r8 c,,4 c8[ d ees d c] } >>
 %measure 25 
 \time 3/4
 << { bes''4 bes bes } \\
    { bes,,4 r g' } >>
 << { c'4 c a } \\
    { fis,4 g a } >>
 << { bes'4 a g } \\
    { bes,,8 c d ees g4 } >>
 << { a'4 g fis } \\
    { a,,8 d fis g a fis } >>
 << { bes'8 a g4 s4 } \\
    { g,4 bes ees } >>
 << { f4 ees d } \\
    { r8 c, d ees d c } >>
 << { ees'2 d4 } \\
    { d,4 g bes } >>
 << { c8 a c a c a } \\
    { fis4 fis fis } >>
 << { bes8 g bes g bes g } \\
    { d4 d d } >>
 << { a'8 fis a fis a fis } \\
    { d4 d d } >>
 << { g8 d g d g d } \\
    { b4 b b } >>
 %measure 36
 << { g'8 d g d g d } \\
    { b4 b b } >>
 << { e16 g,  c  g  e' g, c  g  e'8 c } \\
    { s2 g4    } >>
 << { e'16  g,  c  g  e'8   c   e   c } \\
    { s4  g      g    } >>
 << { g'8 d g d g d } \\
    { b4 b b } >>
 << { g'8 gis a bes b c } \\
    { b,4 s2 } >>
 << { c'8 a c a c a } \\
    { fis4 fis fis } >>
 %measure 42
 << { cis'8 a d a ees' a, } \\
    { fis4 fis fis } >>
 << { g'8 d g d g d } \\
    { bes4 bes bes } >>
 << { fis'8 d fis d fis d } \\
    { a4 a a } >>
 << { g'8 d g d g d } \\
    { g,4 g g } >>
 << { a'8 d, a' d, a' d, } \\
    { f,4 f f } >>
 << { g'8 c, g' c, g' c, } \\
    { ees,4 ees ees } >>
 << { f'8 bes, f' bes, f' bes, } \\
    { d,4 d d } >>
 %measure 49
 << { ees'8 a, ees' a, ees' a, } \\
    { c,4 c c } >>
 << { d'8 c bes c d bes } \\
    { d,4 g a } >>
 << { c8 bes a bes c a } \\
    { bes4 fis ees } >>
 << { bes'4 a g } \\
    { d8 g, a bes d ees } >>
 << { a4 g f } \\
    { f8 d bes a bes d } >>
 << { f4 f f } \\
    { f8 ees d c bes a } >>
 %measure 55
 << { ees'8 s8 s2 } \\
    { c8 g[ a bes a g]} >>
 << { ees'4 d c } \\
    { g8 g g g g a } >>
 << { c4 d ees } \\
    { bes8 a g a bes g } >>
 << { c4^"Rit." a fis' } \\
    { a,8 g a bes c d } >>
 << { g4 s2 } \\
    { g,4 s2 } >>
  

}

\score {
 \new Staff << \global \bells >>
 \midi { \tempo 4 = 150 }
 \layout { }
 }
