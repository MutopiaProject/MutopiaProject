% $Id: ballade_p10.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

PXRH=\notes {
<
\context Voice=AX {
\key b \major
 <fis'4. b'-\arpeggio ( dis''^#'(lines "rubato, appassionato" " ") fis''> 
 \times 2/3 {[gis''16 fis'' eis'']} ) fis''8 
 <cis''4-> ( cis'''> <b'8 ) b''> |
%2
 <ais'4. fisis'' ( ais''> 
 \times 2/3 {[b''16 ais'' gisis'']} ) ais''8 
 <e''4-> ( e'''> <dis''8 ) dis'''> |
%3
 <dis''8-\arpeggio gis''-. ( dis'''> <cis''4 cis'''-.> <b'8 ) b''-. >
 <ais'4. ( ais''_>_\fermata> <gis'8 ) gis''>
 \break
%4
 <g'4.-\arpeggio c'' e''( g''> 
 \times 2/3 {[a''16 g'' fis'']} ) g''8 
 <d''4-> ( d'''> <c''8 ) c'''> |
%5
 <b'4.-\arpeggio e'' ( b''> 
 \times 2/3 {[c'''16 b'' ais'']} ) b''8 
 <fis''4-> ( fis'''> <g''8 ) g'''> |
%6
 <fisis''4 \cr fisis'''> <gis''2 gis''' > ~
 \times 4/6 { 
   [<gis''16 gis'''> eis''' \rc gis''' fis''' e''' bis'']} |
%7
 \relative e''' { \times 16/24 {
   [e dis cis gisis b! ais gis eis gis fis e bis e dis cis gisis b ais
   gis eis gis fis e bis] } 
  } | s1 | r2 r4^\fermata r8 <fis ( cisis' fis'> |
  <fis4 b dis'> ~ < fis8 b dis' ) fis'> 
  \slurUpS \slurSS
  <
  \relative c'' {
     \stemDownS [b^"m.s" gis] \stemUpS [e cis] \stemDownS [dis | e] 
     \stemUpS dis \stemDownS e \stemUpS gis eis4 fis |
%12
     r8  [dis' ( fis] \stemDownS [b_"m.s." gis] \stemUpS [e cis] \stemDownS
     [dis e] \stemUpS dis \stemDownS e_"m.s." \stemUpS gis eis4 ) fis |
     r8 [fis,8 ( a] \stemDownS cis_"m.s." \stemUpS a4 ) fis |
     r8 [a ( cis] \stemDownS e \stemUpS cis4 ) a |
%16
     r8 [cis ( e] [a fis] [dis ) cis] [a' ( | fis] [dis cis a] fis4. g8~ | 
     \key c \minor
%18
     g4 <g8 ) bes> [ees' ( c] [aes f] [g |
%19
     aes] g \stemDownS aes \stemUpS c a4 ) bes | %20 
     \stemBothS \slurHH
     r8 [g' ( bes] [ees c] [aes f] [g | aes] g aes c a4 ) bes |
%22
     \slurSS r8 [bes, ( des] f des4 ) bes  |
%23
     \slurHH r8 [des ( f] aes f4 ) des8 r8
%24
     r8 [f (aes] [des aes] [f ) des] \slurHS [des' ( | 
%25
     aes] \stemUpS [f ) des] \slurSS [des ( aes] f des ) ees | \key b \major
%26
     r8 [e ( gis] b gis4 ) e8 r8 |
     r8 [gis ( b] e cis 4 ) ais8 r8 |
     r8 [cis (e] gis e cis) ais [gis' ( |
     e] cis ) ais gis ( e eis gis8.-\fermata ) fis16 |
  }
  \relative f' {
      fis8 dis b gis ais cis ais cis cis cisis4 dis | 
      s8 b' dis fis dis b gis ais |
      cis ais cis cis cisis4 dis |
      s8 dis, e a e4 dis |
      s8 e a cis a4 fis |
      s8 a a e' cis a a e' |
      cis a a e dis4. ees8 |
%18
      ees4~ees8 bes' g ees c d | f d f aes <fis4 ees> ~ <ees g> |
%20
      s8 ees' g bes g ees c d | f d f aes fis4 g |
%22
      s8 g, aes des aes4 g | r8 aes des des des4 bes8 s8 |
%24
      s8 des f aes f des bes aes' |
      f des bes aes f des s4 |
%26
      r8 cis e gis e4 cis8 r8 | r8 e gis cis gis4 e 8 r8 |
%28
      r8 gis b dis b ais fis dis' | b ais fis dis s2 |
  }
  \relative d' {
      dis8 b gis e fis | gis fis gis ais gis4 fis |
      s8 fis' b dis b gis e fis | 
      gis fis gis ais gis4 fis |
%14
      s8 a, cis e cis4 ais |
      s8 cis e fis e4 dis |
%16
      s8 e fis cis' a fis e cis' a fis e cis a4. bes8 |
      bes4~bes8 g' ees c aes bes | c bes c d c4 bes |
      s8 bes' ees g ees c aes bes | c bes c d c4 bes |
%22
      s8 des, f aes f4 des | s8 f aes bes aes4 g8 s8 |
      s8 aes des f des aes g f' des aes g f des aes s4 |
%26
      s8 gis b dis b4 ais8 s8 |s8 b dis gis e4 cis8 s8 |
      s8 e gis b gis e cis b' gis e cis s8 s2 |
  }
  >
}
 

\context Voice=BX { \stemDownS
  \repeat unfold 24 {s1}
  s2 s4 <g bes> s1 s1 s1 s2 b4 <ais e'>
}
>
}
PXLH=\notes {
<
\context Voice=CX { \stemUpS \slurUpS \slurSH
\key b \major
 dis,8 [dis16 ( fis b dis']
 \stemBothS\times 2/3 {[gis'16 fis' eis']} )  fis'8 r8 r4 | \stemUpS
%2
 \slurSS
 \property Voice.Slur \override #'beautiful = #2.0
 dis,8 [fisis16 ( b dis' fisis'] \clef violin
 \stemBothS \times 2/3 {[b'16 ais' gisis']} ) ais'8 r8 r4 | \clef bass \stemUpS
\property Voice.Slur \revert #'beautiful 
%3
 e,8 [gis16 b e' gis'] r8 r4_\fermata r4
%4
 \slurSH e,8 [e16 ( g c' e']
 \stemBothS\times 2/3 {[a'16 g' fis']} )  g'8 r8 r4 | \stemUpS
%5
 
 \property Voice.Slur \override #'beautiful = #2.0
 g,8 \clef violin [b16 ( e' g' b']
 \stemBothS \times 2/3 {[c''16 b' ais']} ) b'8 r8 r4 | \clef bass \stemUpS
 \property Voice.Slur \revert #'beautiful 
 \clef bass
%6
 fis,8 \clef violin [ais16 cis' e' gis'~] <gis'8 cis''^"delicatamente">~ 
 <gis'4 cis''> r4 | s1
 \clef bass \relative c' {
   [e16 dis cis gisis b ais eis gis] \times 4/6 { [fis8 e bis e dis cis] }|
   gisis8 b ais eis gis4.-\fermata } <fis,8 e> |
%10
 s1 s2 s8 <fis,4 b,><fis,8 b,>~<fis,1 b,>
 s2 s8 <fis,4 b,><fis,8 b,> ~ 
 <fis,4. b,> s8 s8 <fis,4 b,><fis,8 b,> ~
 <fis,4. b,> s8 s8 <fis,4 b,><fis,8 b,> ~<fis,1 b,>
 s2 s8 b,4 bes,8 ~ bes,1
 s2 s8 bes,4 bes,8 ~ bes,1
 s2 s8 <bes,4 ees> <bes,8 ees> ~ | 
 <bes,4. ees> s4 <bes,4 ees> <bes,8 ees>~| 
 <bes,4. ees> s4 <bes,4 ees> <bes,8 ees>~| 
 <bes,4 ees> s2.
 s2. ees,4 | <fis,,4. fis,>s4 fis,4 fis,8~ fis,4. s4 fis,4 fis,8~fis,4. s8 s2 |
 r4 r8 b gis d cis fis

}
\context Voice=DX { \stemDownS \slurDownS
  s8. fis16~fis8 s8 s2 |
  s8. b16~b8 s8 s2 |
  s8. b16~b8 s8 s2 |

  s8. g16~g8 s8 s2 |
  s8. e'16~e'8 s8 s2 |
  \tieDownS
  s8. cis'16~<cis'4 e'>~<cis'4 e'>  s4| s1 s1 s1
  b,,1^"dolce, placido" s2 r8 [fis, ( b,, fis,] ) b,,1
  r2 r8 [fis, ( b,, fis,] ) b,,4.
  r8 r8 [fis, ( b,, fis,] ) b,,4.
  r8 r8 [fis, ( b,, fis,] ) b,,1
  r2 r8 [b, ( b,, bes,] \key c \minor ) bes,,1
  r2 r8 [bes, ( bes,, bes,] | ) bes,,1
  r2 r8 [bes, ( ees, bes,] ) ees,4. 
  r8 r8 [bes, ( ees, bes,] ) ees,4. 
  r8 r8 [bes, ( ees, bes,] ) ees,4 r4 r2
  r2 r4 s4 \key b \major
  s4. r8 r8 [fis, fis,, fis,] | fis,,4.
  r8 r8 [fis, fis,, fis,] | fis,,4. r8 r2 |
  s2. cis4_\fermata |

}
\context Voice=EX { \stemDownS
  s8 dis4 s8 s2 |
  s8 fisis4 s8 s2 |
  s8 gis4 s8 s2 |

  s8 e4 s8 s2 |
  s8 b4 s8 s2 |
  \tieDownS
  s8 ais4.~ ais4 s4| 
  \repeat unfold 23 {s1}
}
>
}
