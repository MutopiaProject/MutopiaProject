% $Id: ballade_p2.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

PIIRH = \notes {
 % msr 17
 r4_"rinforz. molto" 
 < 
   \context Voice = AII { \stemUpS b4. r8 } 
   \context Voice = BII { \stemDownS < d4 fis> r4} 
 > r2. |
 % msr 18
 R1.
 \time 4/4
 %msr 19
 R1 \clef violin
 %msr 20
 r2^\fermata r4 <ais4 fis' cis''> |
 %msr 21
 <b2 fis' cis''> <b2 e' cis''> |
 % msr 22
 <ais2.-\arpeggio fis' cis''^\fermata> <ais'4 fis'' cis'''> |
 % msr 23
 <b'2 fis'' cis'''> <b'2 e'' cis'''> |
 % msr 24
 \break
 <
  \context Voice = AII { \slurUp \slurHH
    <ais'2_"dolce" fis'' ais''> ~ 
    <ais'8 fis'' ais''> <cis'' ( ais''> <fis'' cis'''>
    <ais'' fis'''> | % msr 25
    \stemUpS
    [dis'''8 b'' gis'' ais ''] 
    \grace cis'''8 [b'' ais'' b'' dis''' ] | % msr 26
    \stemDownS \tieDownS
    <fis''2 bis''-->~<fis''8 ) cis'''> r8 r4 | %msr 27
  }
  \context Voice = BII {
    s1 | % msr 25
    \tieDownS
    fis''4 dis''2 ~ dis''8 eis'' | %msr 26
    s1
  }
 >
 % msr 27
 <
  \context Voice = AII { \slurSS
    \stemUpS r8 [ ais' ( cis'' fis'']  [ dis'' b' gis' ais' ] | %msr 28
    \grace cis'' [b' ais' b' dis''] bis'4.^- ) cis''8 | %msr 29
    \grace dis'' [cis''^#'(lines "poco cresc." "") 
      ( bis' cis'' eis''] cisis''4.^- ) dis''8 | %msr 30
    \grace eis'' [dis'' ( cisis'' dis'' fis'' ] \stemBothS
    [ <b'-\arpeggio ais''^"dim. molto"> 
     <gis' fis''> <fis' dis''> <gis' fis''> ] | %msr 31
    [ <b' ais''> <gis' fis''> <fis' dis''> <gis' fis''> ]
    \times 2/3  { <b'4 ais''> <gis' fis''> <fis' ) dis''> }  | %msr32
    \slurHH
    \property Voice.Slur \override #'attachment-offset = #'((0 . 0.6) 0 . 0)
    <gis'4-. fis''_"smorz."( >  < ) fis'-. dis''>
    \property Voice.Slur \revert #'attachment-offset
    \stemUpS \slurSS
    \times 4/5 {b'16 ( cis'' b' ais' b'} <eis'4 gis' dis''> | %msr33
    \tieBothS
    <eis'1 gisis'> ~ | <eis'4 gisis'> <fis') ais'> r2 |
  }
  \context Voice = BII {
    \stemDownS
    s8 fis'4 ais'8 fis'4 dis'~dis'4. eis'8 ~ eis'4 fis'~ | % msr 29
    fis'4. fis'8 ~ fis'4 fisis'4 ~ | %msr 30
    fisis' gis' s2 | %msr 31
    s1 s2 dis'4 s4 s1
  }
 >
}



PIILH = \notes {
% msr 17
 < 
  \context Voice = cbasso { \stemDownS g,,4 }
  { \stemUpS \slurSH [ g,,8  ( d, fis, b, ] }
 >
 \tupletNumOn
 \slurUpS
 \times 2/3 { \stemDownS [d8 ) fis] \stemUpS \slurSS cis'} e'2.^^ ( ~ |
% msr 18
 [ e'8 d' a cis' b fis ] a g d4 dis |
 \time 4/4
 fis8^#'(lines "molto rit." "") ) e4  b,8 ( d4 \decr cis ~
% msr 20
 ) cis2_\fermata \rced r4 <fis,,4 ( fis,> |
%msr 21
 < g,,2 g,> <a,,!4 a,! > <b,, b,> |
%msr 22
 < ) cis,2.-\arpeggio cis_\fermata> 
 < 
  \context Voice = CII { s4 | s2 \stemUpS fis'2 }
  \context Voice = DII { \slurDownS \slurSS
     \stemDownS  <fis4_#'(lines " " "una corda") ( fis'> | <g2 fis'>  a!4 ) b 
  }
 > |
 \noBreak
 % msr 24 "Allegretto"
 \clef violin
 <
  \context Voice = CII { \tieUpS \slurUpS \slurSS 
   fis'2 ~ fis'8 ( fis'8 ais' dis'' | 
   b' gis' b' fis' gis' fisis' gis' b' gisis'2 ) ais'8 r8 r4 | %msr 27
   \stemDownS \clef bass \slurHH
   r8 [ cis' ( ais dis' ] [ b gis b fis ] | % msr 28
   \stemUpS
   s2 gisis4^- ais ~ | ) ais8 
   \slurSH gisis (ais cis' ais4^- b4 ~| %msr30
   [ ) b8 ais ( b dis'] \stemBothS [ fis' dis' b dis' ] | %msr31
   [ fis' dis' b dis' ] \times 2/3 { fis'4  dis' ) b} | %msr 32
   \slurHH
   \property Voice.Slur \override #'attachment-offset = #'((0 . 0.6) 0 . 0.6)
   dis'4-. ( ) b-. 
   \property Voice.Slur \revert #'attachment-offset
   \times 4/5 {gis16 ( ais gis fisis gis } 
   <cis4 b> | %msr33
   \stemUpS dis'1 ~ dis'4 )cis' r2 |
   
  }
  \context Voice = DII { \tieDownS \dotsDown cis'1 ~ cis'2.. cis'8 ~ |  
   cis'2 ~ cis'8 s8 s4 | % msr 27
   s1 | %msr28
   [gis8 fisis gis < b cis> ~ ] cis2 ~ | %msr 29
   cis4. cis8 ~ cis2 ~ | cis4 cis2. | %msr31
   s1 s1 | %msr 33
   fis1 ~ fis2 \dotsBoth
  }
 >
}
