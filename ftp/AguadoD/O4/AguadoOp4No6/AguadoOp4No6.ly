\version "2.18.2"

\header {
  mutopiatitle = "Six Petites Pièces, No. 6"
  mutopiacomposer = "AguadoD"
  title = "Six Petites Pièces, No. 6"
  composer = "Dionisio Aguado"
  source = "Mainz: B. Schott"
  % source = "Statens musikbibliotek - The Music Library of Sweden"
  % http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4033
  date = "1830"
  instrument = "Guitar"
  opus = "Op. 4, No. 6"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/11/11-1790"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
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
  \repeat volta 2 {
    \partial 8 { d8 }
    b'16.[ a32] g8[ fis8] |
    g4 e8 |
    <e c'>16. <d b'>32 <c a'>8[ <b gis'>8] |
    <c a'>4 \grace { b'16[ c16] } a16. a32 |
    \slashedGrace{c8} fis,8.\noBeam fis16 e16.[ fis32] |
    \slashedGrace{fis8} d'8( \tuplet 3/2 { d16[) cis c] } \tuplet 3/2 { b16[ a g] } |
    e8[ a8] g32[ fis e fis] |
    <b, g'>4
  }
  \repeat volta 2 {
    b'16.[ b32] |
    b4 b16.[ fis32] |
    b16[ g16] e[ fis] g[ gis] |
    a4 g16.[ e32] |
    fis8~ \tuplet 3/2 { fis16[ d e] } \tuplet 3/2 { fis[ g a] } |
    bes4 a16[ g] |
    fis16^\markup{\italic glissez}\glissando d'8 b16 g[ e] |
    <e, d'>4 \slashedGrace{fis'8} <g, e'>8 |
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
    \slashedGrace{e8} fis,8. \slashedGrace{g8} fis16 e16.[ fis32 ] |
    a8( \tuplet 3/2 { a16[) g e16] } \tuplet 3/2 { e[ c a16] } |
    \tuplet 3/2 { e'16 d b } g8[ b16. a32] |
    g4
  }
  \repeat volta 2 {
    d'8 |
    \tuplet 3/2 { g16( a) b } \tuplet 3/2 { b([ c) d16] } \tuplet 3/2 {d16[ e fis16] } |
    g8( \tuplet 3/2 { g16[) d b] } \tuplet 3/2 { d16( b) g } |
    \tuplet 3/2 { fis16 c' b } \tuplet 3/2 { c([ a) fis16] } \tuplet 3/2 { d e fis} |
    \tuplet 3/2 { g16[ b a] } g8 g |
    \tuplet 3/2 { g16( fis) e } \tuplet 3/2 {d16([ c) b] } \tuplet 3/2 { a( b) g } |
    \tuplet 3/2 { fis16 d( fis) } \tuplet 3/2 { a16[ d fis16]} a16^\markup{\italic glissez}\glissando d |
    \tuplet 3/2 { d c( b) }\tuplet 3/2 { b16([ a) d,16] } \tuplet 3/2 { a' g e } |
    <d fis,>4
  }
  \repeat volta 2 {
    d8 |
    <a c>4 <a c>8 |
    \tuplet 3/2 { <g b>16[ g' fis] } \tuplet 3/2 { g16[ d( b)] } \tuplet 3/2 { d16([ b) g] } |
    <a c>4 <a c>8 |
    <g b>8 \tuplet 3/2 { g16[ b d] } \tuplet 3/2 { g[( b) a] } |
    \tuplet 3/2 { gis b a } \tuplet 3/2 { a[ f e] } \tuplet 3/2 { d c b } |
    \tuplet 3/2 { c a e' } \tuplet 3/2 { c[ a' e] } \tuplet 3/2 { c'( b) a } |
    \tuplet 3/2 { d,, b' d } \tuplet 3/2 { g([ b) g] } \tuplet 3/2 { a( b) a } |
    <b, g'>4
  }
}

lowerVoice = \relative c' {
  \voiceTwo
  \repeat volta 2 {
    \partial 8 { r8 }
    <g b>4 <d a' c>8 |
    <g b>8\noBeam g,8 r8 |
    r8 r8 e'8 |
    a,4. |
    d4. |
    <g b>4. |
    <c, a'>4 <d a' c>8 |
    g,4
  }
  \repeat volta 2 {
    r8 |
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
    g,4
  }
  \repeat volta 2 {
    r8 |
    <g' b>4. |
    <g b>4. |
    d4. |
    <g b> 4 r8 |
    <a, g'>4 cis8 |
    d16 r16 c8\rest c8\rest |
    << { \shiftOn\stemDown g''8 fis\noBeam <cis g> } \\ { g8 a\noBeam a, } >> |
    d4
  }
  \repeat volta 2 {
    r8 |
    r16 fis,( g) \tuplet 3/1 { a([ b c]) } \tuplet 3/2 { d a fis } |
    g4 c8\rest |
    r16 fis, g \tuplet 3/1 { a[ b c] } \tuplet 3/2 { d a fis } |
    g4 r8 |
    <e' d'>16 r16 r8 r8 |
    a,8 r8 r8 |
    d4 <d c'>8 |
    g\noBeam g,
  }
}

innerVoice = \relative c {
  \voiceThree
  \stemDown
  \partial 8 { s8 }
  \repeat unfold 4 { s4. }
  a'8\rest <a c>8 <a c>8 |
  \repeat unfold 2 { s4. }
  s4
  s8 |
  b8\rest <b dis>8[ <b dis>8] |
  e8 a,8\rest a\rest |
  a8\rest <a cis>8[ <a cis>8] |
  d8 a8\rest a8\rest |
  \repeat unfold 14 { s4. }
  a8\rest <a c> <a c> |
  \repeat unfold 2 { s4. } s4
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
  \new Staff="Guitar"
  <<
    \global
    \set Staff.midiInstrument = #"acoustic guitar (nylon)"
    \upperVoice
    \lowerVoice
    \innerVoice
  >>
  \midi {
    \tempo 4 = 100
  }
}
