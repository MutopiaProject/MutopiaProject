\version "2.16.0"

IMand =  \relative c'' {
  \clef "treble"
  \time 4/4
  \key d\major
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % Note: This removes tuplet brackets from  c8[ \times 2/3 {c16 c c]}.
  \override TupletBracket   #'bracket-visibility = ##f

  \repeat "volta" 2 {
  \partial 8 a8 |
  %1 page 2
  <d fis,>4 a'16 b a g fis8 d a fis | <fis' a, d,>4 a16 b a g fis8 d a fis |
  %3
  <d' fis,>4 <d fis,> d8 e16 fis e8 fis16 g | 
  fis g fis e d e d cis d8 e16 fis e8 fis16 g |
  fis16 d e fis g a b cis d8 a fis d |
  fis16 d e fis g a b cis d cis b a g fis e d | 
  %7
  d8 a fis d d4 r8 a' | d16 e fis g a fis e dis e dis e dis e8. g16 |
  g fis e d cis b a g fis d fis a d a d fis |
  a4 r8 a g16 a fis g e fis d e |
  \slashedGrace d8 cis8. b16 a8 a d16 e fis g a fis e dis |
  %12
  e dis e dis e8. g16 \times 4/6 { fis[ a g fis e d?]  e[ g fis e d? cis] |
   d[ cis b a g fis]  b[ a g fis e d]  d'[ cis b a g fis]  b[ a g fis e d] |
   a[ cis e g fis g]  a,[ cis e g fis g]  d[ fis a d cis d]  d,[ fis a d cis d] |
   a,[ cis e g fis g]  a,[ cis e g fis g]  d[ fis a d cis d]  d,[ fis a d cis d] |
  %16
   a,[ cis e g fis g]  a,[ cis e g fis g]  fis[ d e fis e d]  g[ e fis g fis e] |
   a[ fis g a g fis]  b[ g a b a g]  cis[ a b cis b a]  d[ b cis d cis b] |
   e[ cis d e d cis]  fis[ d e fis e d]  g[ e fis g fis e]  a[ fis g a g fis] |
  %19 page 3
   b[ g a b a g]  cis[ a b cis b a] <d fis, d,>[ d,, d d d d] <b'' g d,>[ d,, d d d d]} |
  <<{a''4_ \markup{\italic "Simile"} d a b | a d c c | b bes a a | fis g e fis | fis g e fis |
    a g fis e | a g fis e | fis g e e}
   {fis fis fis g | fis fis fis g | g g fis fis | a, b cis d | d b cis d |
    cis b d cis | cis b d cis | d b cis cis}
   {d, d d d | d d d d | d d d d | d d a' a | a a a a | a a a a |
    a a a a | a a a a}>> |
  %28
  <fis' a, d,>4 a16 g fis e d cis b a g fis e d |
  <fis' a, d,>4 a16 g fis e d cis b a g fis e d |
  <g' b, d,>4 <e cis a> <fis a, d,> r8
  }

  \repeat "volta" 2 {
  e,8 |
  %31 page 4
  a4 e'16 fis e d cis8 a e cis | a'4 e'16 fis e d cis8 a e cis |
  <<a'4 \\ a>> <<a4 \\ a>> a8 b16 cis b8 cis16 d | 
  cis d cis b a b a gis a8 b16 cis b8 cis16 d |
  %35
  cis16 a b cis d e fis gis a8 e cis a |
  cis16 a b cis d e fis gis a gis fis e d cis b a |
  a' e cis a a' e cis a a'8 gis16 fis e d cis b |
  a8 gis16 fis e d cis b a4 r8 e''8 |
  %39
  fis16 d cis d cis b ais b e cis b cis b a gis a |
  d b gis b e, gis b d  cis8[ \slashedGrace b' \times 2/3 {a16 gis a]}
     a8[ \slashedGrace b \times 2/3 {a16 gis a]} |
  %41 Note: First 3 slashedGraces are slashed twice. Pitches are very unclear.
  a8 b,16. fis'32 \slashedGrace fis8 e16. \slashedGrace fis8 d32 \slashedGrace e8 cis16. b32
     cis8[ \times 2/3 {a'16 gis a]}  a8[ \slashedGrace b \times 2/3 {a16 gis! a]} |
  %42 Note: same as in 41
  a8 b,16. fis'32 \slashedGrace fis8 e16. d32 \slashedGrace e8 cis16. b32
     a8[ \times 2/3 {e16 a a]} \times 4/6 { fis[ a a d, a' a] |
   e[ a a cis, a' a]  d,[ a' a b, a' a]  cis,[ a' a a, a' a]  b,[ a' a gis, a' a] |
   a,[ a' a e a a]  fis[ a a d, a' a]  e[ a a cis, a' a]  d,[ a' a b, a' a] |
   cis,[ a' a a, a' a]  b,[ a' a gis, a' a]  a[ cis a cis a cis]}
    \times 2/3 { e[ cis e} a8] |

  %46
  \times 4/6 { e,16[_ \markup{\italic "Simile"} d' b' b b b]} <<{b4 a a | gis gis a a | b b a a}
    {d, cis cis | b b cis cis | d d cis cis} {e, e e | e e e e | e e e e}>> |
  %49
  <gis' b, e,> r8 e \times 4/6 { fis16[ e fis d cis d]  b[ a b d cis d] |
   fis[ e fis e d e]  d[ cis d b a b]  cis[ b cis e d e]  d[ cis d b a b] |
   gis[ fis gis b a b]  d[ cis d cis b a]  a'[ gis fis e d cis]  d[ b cis d cis b] |
   b'[ a gis fis e d]  cis[ a b cis b a]  a'[ gis fis e d cis]  d[ b cis d cis b] |
   b'[ a gis fis e d]  cis[ a b cis b a]  d[ b cis b cis b]  e[ cis d e d cis] |
  %54 page 5
   fis[ d e fis e d]  gis[ e fis gis fis e]  a[ gis fis e d cis]  fis[ e d cis b a] |
   e[_ \markup{\italic "Simili"} cis' a' a a a]} <<{a4 gis gis} {cis, b b} {e, e e}>> |
   a'32[ gis fis e d cis b a]  a'[ gis fis e d cis b a] e4 b'_\trill |
  %57 
  \time 2/4
  a4 r8 <<{e' | \time 4/4 e4 e8 e e4 e | e e e} \\ {cis8 |
    b16 cis d cis cis8 a16 cis b cis d b a8. cis16 |
    b16 cis d cis cis8 a16 cis b cis d b}>> a8 a'16 fis |
  %60
  e cis d b cis a a' fis e cis d b  a8[ b'32 a gis fis] |
  %61 Note: The f16 is dotted in the manuscript.
  fis e d cis e d cis b d cis b a b' a gis fis fis e d cis e d cis b a8 f'16 g?32 f |
  %62 Note: The f16 is dotted in the manuscript.
  e8 f16 g32 f e8. gis16 a e f! dis e8. gis!16 | 
  a e f dis e8. gis,16 a e f dis e8. cis'!16 |
  <<{b cis d b cis8 a16 cis b cis d b a8 a'16 fis} \\ e,2>> |
  %65 Note: The slashedGraces in bars 65 and 66 are all slashed twice.
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  e'16 cis d b cis a a' fis e cis d b  a8[ \slashedGrace b' \times 2/3 {a16 gis fis]} |
  \slashedGrace fis8 \times 2/3 { e16[ d cis]} \slashedGrace e8 \times 2/3 { d16[ cis b]}
  \slashedGrace d8 \times 2/3 { cis16[ b a]} \slashedGrace b'8 \times 2/3 { a16[ gis fis]}
  \slashedGrace fis8 \times 2/3 { e16[ d cis]} \slashedGrace e8 \times 2/3 { d16[ cis b]}  a8.[ b16] |
  a b a g fis g fis e <d' fis,>4 a'16 b a g |
  fis8 d a fis <d' fis,>4 a'16 b a g |
  fis8 d a fis <d' fis,>4 <d fis,> |
  %70
  d8 e16 fis e8 fis16 g fis g fis e d e d cis |
  d8 e16 fis e8 fis16 g  fis16[ d e fis g a b cis] |
   d[ cis b a g fis e d] d8 a fis d |
  %73
  d4 r8 a' d16 f e d d f e d | e8 bes' g e e16 g f e e g f e |
  f a f d e f! e f g f g a g f g a |
  bes a g f e f e d cis8 b16 cis a8 a, |
  %77
  g''16 e cis a g' e cis a a' fis d a a' fis d a |
  g' e cis a g' e cis a  d[ cis b a g fis e d] |
  <g' b, d,>4 <<e cis \\ a>>  d16[ cis b a g fis e d] |
  %80
  <g' b, d,>4 <<e cis \\ a>> <fis' a, d,> r^\fermata \bar "|."
  }
}
