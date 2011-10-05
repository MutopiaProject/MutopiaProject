\version "2.14.2"

\header {
  mutopiatitle = "Six Petites Pièces, No. 6"
  mutopiacomposer = "AguadoD"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  title = "Six Petites Pièces, No. 6"
  composer = "Dionisio Aguado"
  instrument = "Guitar"
  opus = "Op. 4, No. 6"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2011/10/01-1790"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 72\pt
  short-indent = 0\pt
}

global = {
  \time 3/8
  \key g \major
}

upperVoice = \relative c' {
  \voiceOne
  \slurDown
  \partial 8 { d8 }
  \repeat volta 2 {
    b'16.[ a32] g8[ fis8] |
    g4 e8 |
    <e c'>16. <d b'>32 <c a'>8[ <b gis'>8] |
    <c a'>4 \grace { b'16[ c16] } a16. a32 |
    \acciaccatura c8 fis,8.\noBeam fis16 e16.[ fis32] |
    \acciaccatura fis8 d'8( \times 2/3 { d16[) cis c] } \times 2/3 { b16[ a g] } |
    e8[ a8] g32[ fis e fis] |
    <b, g'>4 s8 |
  }
  \repeat volta 2 {
    s4 b'16.[ b32] |
    b4 b16.[ fis32] |
    b16[ g16] e[ fis] g[ gis] |
    a4 g16.[ e32] |
    fis8~ \times 2/3 { fis16[ d e] } \times 2/3 { fis[ g a] } |
    bes4 a16[ g] |
    fis16^\markup{\italic glissez}\glissando d'8 b16 g[ e] |
    <e, d'>4 \acciaccatura fis'8 <g, e'>8 |
    <d' fis,>16[ a'(] gis16[) a16] fis16[ d16] |
    cis4 cis8 |
    d16 e fis[ g(] b) a |
    cis,4 cis8 |
    d8 d32[( e) fis g] a b c d |
    \autoBeamOff
    b8 g( <g cis>8) |
    <fis d'>8 d8\rest d |
    \autoBeamOn
    b'16.[ a32] g8 <fis c a>8 |
    <g, b g'>4 e'8 |
    <e c'>16. <d b'>32 <c a'>8[ <b gis'>8] |
    <c a'>8. a'16^\markup{\italic glissez}\glissando e'16.[ e32] |
    \acciaccatura e8 fis,8. \acciaccatura g8 fis16 e16.[ fis32 ] |
    a8( \times 2/3 { a16[) g e16] } \times 2/3 { e[ c a16] } |
    \times 2/3 { e'16 d b } g8[ b16. a32] |
    g4 s8 |
  }
  \repeat volta 2 {
    s4 d'8 |
    \times 2/3 { g16( a) b } \times 2/3 { b([ c) d16] } \times 2/3 {d16[ e fis16] } |
    g8( \times 2/3 { g16[) d b] } \times 2/3 { d16( b) g } |
    \times 2/3 { fis16 c' b } \times 2/3 { c([ a) fis16] } \times 2/3 { d e fis} |
    \times 2/3 { g16[ b a] } g8 g |
    \times 2/3 { g16( fis) e } \times 2/3 {d16([ c) b] } \times 2/3 { a( b) g } |
    \times 2/3 { fis16 d( fis) } \times 2/3 { a16[ d fis16]} a16^\markup{\italic glissez}\glissando d |
    \times 2/3 { d c( b) }\times 2/3 { b16([ a) d,16] } \times 2/3 { a' g e } |
    <d fis,>4 s8
  }
  \repeat volta 2 {
    s4 d8 |
    <a c>4 <a c>8 |
    \times 2/3 { <g b>16[ g' fis] } \times 2/3 { g16[ d( b)] } \times 2/3 { d16([ b) g] } |
    <a c>4 <a c>8 |
    <g b>8 \times 2/3 { g16[ b d] } \times 2/3 { g[( b) a] } |
    \times 2/3 { gis b a } \times 2/3 { a[ f e] } \times 2/3 { d c b } |
    \times 2/3 { c a e' } \times 2/3 { c[ a' e] } \times 2/3 { c'( b) a } |
    \times 2/3 { d,, b' d } \times 2/3 { g([ b) g] } \times 2/3 { a( b) a } |
    <b, g'>4 s8 |
  }
}

lowerVoice = \relative c' {
  \voiceTwo
  \partial 8 { r8 }
  \repeat volta 2 {
    <g b>4 <d a' c>8 |
    <g b>8\noBeam g,8 r8 |
    r8 r8 e'8 |
    a,4. |
    d4. |
    <g b>4. |
    <c, a'>4 <d a' c>8 |
    g,4 s8 |
  }
  \repeat volta 2 {
    s4 r8 |
    b4. |
    e4 c8\rest |
    a4. |
    d4 c8\rest |
    b'8\rest <cis, g'>8[ <cis g'>8] |
    <d fis>16 g16\rest g8\rest g8\rest |
    a,8 a8 a8 |
    d8 r8 r8 |
    \slurUp
    r16 bes'16([ a) g fis g] |
    fis16 r16 r8 r8 |
    r16 bes16( a bes) a g |
    fis8 r8 r8 |
    g4 a8 |
    d,8 r8 r8 |
    <g b>4 d8 |
    g, g' g8\rest |
    r r e |
    a,4 r8 |
    d4. |
    r8 <e b'>8\noBeam c8 |
    d4 d8 |
    g,4 s8
  }
  \repeat volta 2 {
    s4 r8 |
    <g' b>4. |
    <g b>4. |
    d4. |
    <g b> 4 r8 |
    <a, g'>4 cis8 |
    d16 r16 c8\rest c8\rest |
    << { \shiftOn\stemDown g''8 fis\noBeam <cis g> } \\ { g8 a\noBeam a, } >> |
    d4 s8
  }
  \repeat volta 2 {
    s4 r8 |
    r16 fis,( g) \times 1/3 { a([ b c]) } \times 2/3 { d a fis } |
    g4 c8\rest |
    r16 fis, g \times 1/3 { a[ b c] } \times 2/3 { d a fis } |
    g4 r8 |
    <e' d'>16 r16 r8 r8 |
    a,8 r8 r8 |
    d4 <d c'>8 |
    g\noBeam g, s8 |
  }
}

innerVoice = \relative c {
  \voiceThree
  \stemDown
  \partial 8 { s8 }
  \repeat volta 2 {
    \repeat unfold 4 { s4. }
    a'8\rest <a c>8 <a c>8 |
    \repeat unfold 3 { s4. }
  }
  \repeat volta 2 {
    s4. |
    b8\rest <b dis>8[ <b dis>8] |
    e8 a,8\rest r8 |
    a8\rest <a cis>8[ <a cis>8] |
    d8 a8\rest a8\rest |
    \repeat unfold 14 { s4. }
    a8\rest <a c> <a c> |
    \repeat unfold 3 { s4. }
  }
}

\score {
  <<
    \new Staff = "guitar"
    <<
      \set Staff.instrumentName = #"MINUETTO."
      \clef "treble_8"
      \global
      \mergeDifferentlyHeadedOn
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \context Voice = "innerVoice" \innerVoice
   >>
 >>
  \layout {}
}

\score {
  \unfoldRepeats {
    <<
      \global
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \upperVoice
      \lowerVoice
      \innerVoice
   >>
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
