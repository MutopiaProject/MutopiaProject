% $Id: ballade_p6.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

PVIRH=\notes {
<
\context Voice=AVI { \stemUpS
 \relative a' {a4.^#'(lines "a piacere cantando"-\arpeggio "") \( \stemBothS 
   \times 2/3 {[b16 a gis]} a8 \cr e'4 \) d8 \rc |
  cis4. \( \times 2/3 {[d16 cis b]} cis8 \cr g'4 \) fis8 \rc |
  fis-.\( e4-. d8-.~d \) cis-. cis4 ~ | cis2 b4 r4 |
  bes4. \( \times 2/3 {[c16 bes a]} bes8 \cr f'4 \)  ees8 \rc |
  d4. \( \times 2/3 {[e!16 d cis]} d8 \cr  a'4 \)bes8 \rc |
  ais4 ( b~ [b8^#'(lines "rit." "") a-. g8.-. )fis16]
 }
}
\context Voice=BVI { \stemDownS
  d'8_\p-\arpeggio s2.. s1 s1 s1
}
>
}

PVILH=\notes {
<
\context Voice=CVI { \stemUpS \tieUpS
  fis,8 [fis16 a d' fis' ~ fis'8 ] r2 |
  fis,8 [fis16 ais d' ais' ~ ais'8 ] r2 |
  g,8 [g16 b d' e' ~ e'8 ] r2 | R1 \break
  g,8 [g16 bes ees' g' ~ g'8 ] r2 |
  bes,8 \clef violin [bes16 d' g' bes' ~ bes'8 ] r2 |
  \clef bass a,8 \clef violin [a16 cis' e' g' ~ <g'8 b'> ~ ] <g'2 b'> 
  \clef bass |
}
\context Voice=DVI { \stemDownS \tieDownS
 \property Voice.autoBeaming = ##f
 \property Voice.Stem \set #'length = #12
 s8 s8 d'8 ~ d'8 s2 |
 s8 s8 d'8 ~ d'8 s2 |
 s8 s8 d'8 ~ d'8 s2 | s1
 s8 s8 es'8 ~ es'8 s2 |
 s8 s8 g'8 ~ g'8 s2 |
 s8 s8 e'4 ~ e'2 |
}
\context Voice=EVI { \stemDownS \tieDownS 
 \property Voice.Stem \set #'transparent = ##t
  \property Voice.autoBeaming = ##f
  s8 s16 a16 ~a8 ~a8 s2 |
  s8 s16 ais16 ~ais8 ~ais8 s2 |
  s8 s16 b16 ~b8 ~b8 s2 | s1
  s8 s16 bes16 ~bes8 ~bes8 s2 |
  s8 s16 d'16 ~d'8 ~d'8 s2 |
  s8 s16 cis'16 ~cis'4 ~cis'2 |
}
\context Voice=FVI { \stemDownS \tieDownS
  s8 fis4 ~ 
 \property Voice.Stem \override #'transparent = ##t
  fis8 s2 |
 \property Voice.Stem \revert #'transparent
  s8 fis4 ~ 
 \property Voice.Stem \override #'transparent = ##t
  fis8 s2 |
 \property Voice.Stem \revert #'transparent
  s8 g4 ~ 
 \property Voice.Stem \override #'transparent = ##t
  g8 s2 | s1
 \property Voice.Stem \revert #'transparent
  s8 g4 ~ 
 \property Voice.Stem \override #'transparent = ##t
  g8 s2 |
 \property Voice.Stem \revert #'transparent
  s8 bes4 ~ 
 \property Voice.Stem \override #'transparent = ##t
  bes8 s2 |
 \property Voice.Stem \revert #'transparent
  s8 a8 ~ \property Voice.Stem \override #'transparent = ##t
  a4 ~ a2 |
}
>
}
