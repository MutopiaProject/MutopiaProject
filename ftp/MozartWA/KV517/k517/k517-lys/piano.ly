% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

upper = \relative b {
  \key e \minor
  \time 2/4
  \partial 16*5

  \small r16 <b e g>8 <b dis fis>
  | <b e> r <b e b'> <b fis' a>
  | <b e g> r << { \normalsize b'8 c16 b | a8 b16 a g8 a16 g | fis8 } \\
		{ \small g8 e | fis dis e fis16 e | dis8 } >> \small r8 <fis b> <fis cis'>
  | <fis d'> <e cis'>16 <d b'> <e ais cis>4
  | <d b'> <d b'>
  | <f b d> <e a c>8 <e gis b>
  | << { \small <gis b>-( <a c>-) } \\ { \small e4 } >> <c a'>4
  | <e a c> <d g b>8 <d fis a>
  | << { \small <fis a>8-( <g b>-) d'4 ~ | d8[ c b a] } \\ 
      { \small d,4 <d g> | <e g> <d g>8 <c fis> } >>
  | <b g'>8 r << { \small e8 fis | g c a4 } \\ { \small c,4 | b8 e g fis } >>
  | g8 r <d g> <fis a> << { \small g8[ c d c16 b] } \\ { \small g4. a16 g } >>
  | <g b>8-( <fis a>-) <b, e> <dis fis>
  | << { \small g8[ a b a16 g] } \\ { \small e4. fis16 e } >>
  | <e g>8-( <dis fis>-) <fis a c>4
  | <g b>16 a b c <e, g>8 <dis fis>
  | e8 r <dis fis c'>4
  | <e g b>8 <e c'> << { \small fis4 } \\ { \small e8 dis } >>
  \autoBeamOff
  | e8 \normalsize b'' dis,16.-[-( e32-) dis16.-( e32-)-]
  | ais,16.-[-( b32-) ais16.-( b32-)-] <e, g>8-[ <dis fis>-]
  | e8 r16
}

lower = \relative e {
  \key e \minor
  \time 2/4
  \partial 16*5

  r16 e8 b
  | g r g' dis
  | e r e c
  | d![ b c a]
  | b r d! ais
  | b[ g' fis fis,]
  | b4 r
  | b8 c!16 d e8 e,
  | a4 r
  | a8 b16 c d8 d,
  | g4 b
  | c d
  | g,8 r a4
  | e'8[ c] d[ d,]
  | g[ r b a]
  | g[ a b c]
  | d[ dis e b]
  | e,[ fis g a]
  | b r dis4
  | e16 fis g a b8 b,
  | c r a4
  | g8[ a b b]
  | e, r <fis' a>4
  | <g e'> b8 b,
  | e8 r16
}
