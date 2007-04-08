% $Id: ballade_p14.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

PXIVRH = \notes {
<
\context Voice = AXIV {
  \stemUpS \slurUpS \slurSS 
  \relative f' {
    r8 [fis ( b dis] [b gis e ) b'] |
    r8 [b ( dis fis] [dis b gis ) dis' ] |
    r8 [dis ( fis b] [gis e cis ) dis] |
    \grace{ fis } [e ( dis e gis] eis4. ) fis8 |
%5
    \grace{ gis } [fis ( eis fis ais ] fisis4. ) gis8 |
    \grace{ ais } [gis ( fisis gis b] [dis b gis b] |
    [dis b gis b] <dis4 gis,> <b4 cis,>~ | 
    <gis2 ) cis,>r2 |
    r4 \stemBothS \slurHS  <dis ( gis,> \stemUpS b gis |
    e2. \times 2/3 {[fis8 e  dis]} | ) e4 <ais,2_- cis gis'> 
    <ais4_- cisis gis'> |
    <fis1-\arpeggio ais cisis gis'>~<fis4 ais cisis gis'>
    <fis2.-\arpeggio b-> dis gis>~<fis1^\fermata b_\pp dis gis>
  }
}

\context Voice = BXIV { \stemDownS \tieDownS
 \relative c' {
   s8 <dis4 fis> <dis8 fis> <cis2 e> |
   s8 <fis4 b> <fis8 b> <e2 gis> |
   s8 <b'4 dis> <b8 dis>~<b4 cis> gis ~ |
   gis4. ais8~ais4 b~ |
   b4. b8~b4 bis | ~bis cis gis'8 cis,4 cis8 |
   gis'8 cis,4_"smorzando" cis8 s2|
   s1 s2 cis,2 | b1~b4 s2. | s1 s1 s1
 }
}
>
}
PXIVLH = \notes {
<
\context Voice = CXIV {
  <fis,,8 fis,> <fis4 b> <fis8 b> <gis2 b>
  <fis,,8 fis,> <fis4 b dis'> <fis8 b dis'> <gis2 b>
  \stemUpS \slurUpS \slurSS r8
  \relative f' { fis8 ( dis fis e gis e bis | cis bis cis e cisis4 dis~|
  ) dis8 cisis ( dis fis dis4 e~ | ) e8 \clef violin \stemBothS
  dis ( e gis 
  b <gis e'> <e b'> <gis e'> | b <gis e'> <e b'> <gis e'> b4 <gis e'> |
  <e2 ) b'> r2
  \clef bass |
  } 
  r4 b4^\pp <gis e'> <e b> | <cis1 gis>~<cis4 gis> <fis,2_- e> <fis,4_- e> |
  <b,,1-\arpeggio fis, e>~<b,,4 fis, e> <b,,2.-\arpeggio fis, dis> ~ |
  <b,,1_\fermata fis, dis>
}

\context Voice = BXIV {
 s1 s1 
 \stemDownS <fis,,8_"una corda" fis,> \tieDownS
 fis4 fis8~fis2~fis4. fis8~ fis2~ |
 fis4. fis8~fis2~fis4 fis4 s2 s1 s1 s1 s1 s1 s1 s1 s1 \bar "|."
}
>
}
