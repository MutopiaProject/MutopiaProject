\version "2.16.0"

IBasso =  \relative c {
  \clef "bass"
  \time 4/4
  \key d\major
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
  \partial 8 r8 |
  %1 page 2
  d4 r r8 d'-. a-. fis-. | d4 r r8 d'-. a-. fis-. |
  d-. d'-. a-. fis-.  d[-. d'-.]  cis[-. a-.] | d,-. r a'-. r  d,[-. d'-.]  cis[-. a-.] |
  %5
  d,-. d'-. b-. g-. fis4 r | d8 d' b g d4 r |
  d r r16  d'[-. cis-. b-. a-. g-. fis-. e-.] |  d8[ d]  fis[ fis]  g[ g]  g[ g] |
  %9
   a[ a]  a,[ a] d d d d | fis16 d fis a d a d fis  e8[-. d-.]  cis[ b] |
  a a, a' g fis fis fis fis |  g[ g]  cis,[ cis] d fis g a | d,4 r d r |
  %14
   a8[ a']  a,[ a'] d, fis d fis |  a,[ a']  a,[ a'] d, fis d fis |
   a,[ a']  a,[ a']  d,[ d]  e[ e] |  fis[ fis]  g[ g]  a[ a]  b[ b] |
   cis[ cis,]  d[ d]  e[ e]  fis[ fis] |
  %19 page 3
  g g a g  fis[ fis]  g[ g] | fis d fis d fis d g g, |
  d' fis d fis d d d d | d d d d d2:8 | d8 d g g a a fis d |
  %24
  a' a a a a2: |  a8[ a]  a[ a] a2: | a2: a2: |  a8[ a]  a[ a] a2: |
  %28
  d,4 r r2 | d4 r r2 | g4 a d, r8
  }

  \repeat "volta" 2 {
  r8 |
  %31 page 4
  a4 r8 e' a,4 r | a r8 e' a,4 r | a'16 b cis b a b cis b  a8[ a]  gis[ e] |
  a4 r8 e8  a[ a]  gis[ e] | a a fis d cis4 r | a8 a' fis d cis4 r |
  %37
  a a a r | a'8 gis16 fis e d cis b a8 a'16 b cis b cis a |
  d4 r cis r | e, r a,8 a cis cis |  d[ d]  e[ e] a, a cis cis |
  %42
  d d e e a, cis d b | cis a b e a,4 r8 e' | a, cis' d cis cis a b e, |
  a,4 r8 e' a, a a a | gis' gis gis gis a2: | e8 e e e a,2: | e'8 e e e a,2: |
  %49
  e'8 e d cis d4 r | d r e8 e e e | e e e e a, r b r |
  gis r a r a r b r | gis r a r b r cis r |
  %54 page 5
  d r e r fis r d r | e e e e e2: | a,4 r e'8 e e e | \time 2/4 a, a' a, a' | 
  %58
  \time 4/4 gis16 a b gis a8 a, gis'16 a b gis a8 a, |
  gis'16 a b gis a8 a, gis'16 a b gis a8 d, |
   e[ gis]  a[ d,]  e[ e] a, r | a r a r  a[ e']  a,[ a'] |
  %62
   gis[ a]  gis[ e] f4 e | f e f! e |
  gis16( a b  gis) a8 cis16(  b) gis( a b  gis) a8 d, |
   e[ gis]  a[ d,]  e[ e] a, r | a e' a,4 a8 e' a,4 |
  %67
  r a8 a d4 r | r8 d' a fis d4 r | r8 d' a fis d fis a d |
   d,[ d']  cis[ a] d,4 r | d8 d' cis a d, d' cis g | fis4 g fis r |
  %73
  r8 d16 e f!8 cis! d8 d d d | g g g g cis,!2: | d: g8 g g g |
  g g g gis  a[ a]  a,[ a'] |  a,[ a']  a,[ a']  d,[ d']  d,[ d'] |
  %78
   a,[ a']  a,[ a'] d,4 r | g16 a b g a8 a, d4 r |
  g16 a b g a8 a, d4 r^\fermata \bar "|."
  }
}
