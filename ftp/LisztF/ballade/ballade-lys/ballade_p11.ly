% $Id: ballade_p11.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

PXIRH= \notes {
\time 6/4
<
\context Voice=AXI{
 \stemUpS \slurUpS
 \relative c' {
 r4 [b8_"cantabile" (fis' dis b] [fis') dis] r4 r4 | 
 r4 [dis8 (b' gis dis] [b' ) gis] r4 r4 | \clef bass
 r4 [gis,8 (fis' cis gis] [fis') cis] r4 r4 | 
 }
%4
 r4 [fis8 ( cis' ais fis] [ cis' ) ais ] r4 r4 | \clef violin
 r8 [gis_"cresc." (b gis' cis') b] r8 [ais ( cis' ais' fis' ) cis'] |
 r8 [b (dis' b' fis') dis'] r8 [dis' (fis' dis'' gisis') fis']
%7
 r8 [dis' ( ais' fis'' fis' dis''] )ais''4 r4 r4 |
 r8 [fis^#'(lines "ritenuto" "") ( cisis' ais' eis') ais ] 
 r8 [fis (ais fis' cis') fis] |
%9
 \stemBothS \slurSH \shiftOnn
 \property Voice.Slur \override #'beautiful = #2.5
 \property Voice.Rest \override #'staff-position = #6
 \tupletUp
 \times 2/3 { r8 r b (} \tupletBoth
 \tupletNumOff \tupletBrOff
 \property Voice.Rest \revert #'staff-position

 \times 2/3 { dis'-3 fis'-1 <b' fis''>} 
 \times 2/3{ dis''-3 fis''-1 <b'' fis'''>} ) dis''' r8 s2 |
%10
 \times 2/3 {a''8\rest a''8\rest dis'_2 (}  
 \times 2/3 {gis'_4 b'_1 <dis'' b''>}
 \times 2/3 {gis'' b'' <dis''' b'''>} ) gis'''8 r s2
%11
 \times 2/3 {s8 r8 gis-2 ( } \times 2/3 {cis'-3 fis'-1 <gis'-2 fis''-5>}
 \times 2/3 {cis'' fis'' <gis'' fis'''>} ) cis'''8 r8 s2 |
%12
 \times 2/3 {s8 r8 \clef violin fis (} \times 2/3 {ais cis' <fis' cis''>}
 \times 2/3 {ais' cis'' <fis'' cis'''>} ) ais''8 r8 s2
%13
 \stemUpS
 \slurSS
 \times 2/3 {s8 gis'-2 ( cis''-4} 
 \times 2/3 {b'-2 cis''-1 <gis'' cis'''> } ) b'' r8
 \times 2/3 {s8 fis' ( dis''} \times 2/3 {ais' dis'' <fis'' e'''>} ) ais'' r8 |
%14
 \times 2/3 {s8 b' ( fis''} \times 2/3 {dis'' fis'' <b'' fis'''>} ) dis''' r8
 \times 2/3 {s8 bis'_2 ( gis''_5} \times 2/3 {fis''_2 gis''_1 <bis'' a'''>} ) fis''' r8
%15
 \stemBoth
 \times 2/3 {s8 r8 cis'( } \times 2/3 {fis' ais' <cis'' ais''>} 
 \times 2/3 {fis'' ais'' <cis''' ais'''>}
 \times 2/3 {fis'''^"ritard. molto" ais'' <ais'' cis''>}
 \times 2/3 {fis'' ais' ais' } \times 2/3 {eis' b ) gis'} |
}
\context Voice=BXI{
 \repeat unfold 8 {s1.}
% "melodic" voice continues here from C
 \stemDownS <fis2-\arpeggio fis'--> s2 
 \stemUpS <gis4 gis'> <ais ais'> |
 \stemDownS <b2 b'--> s2 \stemUpS <dis4 dis'> <ais8 ais'> <gis gis'> | 
 \stemDownS
%11
 <fis2^> fis'> s2 \clef bass <e4-- e'> <dis-- dis'> |
 <cis2^- cis'> s2 s4 cis'4-- 
 \stemDownS cis'2.^> dis'^> fis'^> gis'^> |
%15
 \tupletBrOff
 \tupletNumOff
 <ais2_^ ais'> s2 \times 4/6 { s4 cis' s8 gis'} |

}
>
}

PXILH= \notes {
\time 6/4
<
\context Voice=CXI{
 \stemUpS \tieUpS \slurUpS
 fis2.^"m.d."~ fis4 gis-- ais-- | b2.-- ~ b4
 dis4_"m.s." ([ais8 gis] |
 fis2.^"m.d."~ ) fis4 
 e4-._"m.s." () dis-. |
 cis2.^"m.d."~ cis4 s4 cis--_"m.s" |
%5
 cis2.-\arpeggio^- dis2-\arpeggio^- e4^- fis2.-\arpeggio^- 
 gis2-\arpeggio^- gisis4^- |
%7
 ais2.-\arpeggio ( ~ ais4 cisis'4-. ) dis'-.  |
 \translator Staff=up \stemDownS
 fis'2_^ eis'4_- dis'2_- cis'4_- |
%this (melodic) voice continues in BX from now on, this one becomes
%basso

 \translator Staff=down
 s1. gis,4 s2 s2. |
 cis,4 s1 s4 |
 fis,, s1 s4 |
 s1. s1. s1.
}
\context Voice=DXI{
 \stemDownS
 \property Voice.Rest \override #'staff-position = #-6
 <b,,4-\arpeggio dis> r4 r4 r2. 
 <gis,,4-\arpeggio b,> r4 r4 r2.
 <cis,4-\arpeggio gis, cis> r4 r4 r2.
 <fis,,4-\arpeggio ais,> r4 r4 r2.
 eis,4-\arpeggio r r e,-\arpeggio r r dis,-\arpeggio r r b,-\arpeggio r r 
 ais,-\arpeggio r r s2. |
 \property Voice.Rest \revert #'staff-position
 
 r4 r <ais,-\arpeggio gis cisis'> r r <fis,-\arpeggio e ais> |
%9
 \stemBothS
 <b,, dis> \times 2/3 { 
  fis8 b^#'("l'accompagnemento sempre" (dynamic "p")) dis'} \clef violin
 \times 2/3 { fis' b' dis''} fis'' r8 r4 r \clef bass |
%10
 \stemUp \tupletNumOff \times 2/3 {gis,8 dis gis} \stemBoth 
 \clef violin \times 2/3 { b dis' gis'} 
 \times 2/3 {b' dis'' gis''} b''8 r8 r4 r4 \clef bass |
%11
 \times 2/3 {cis,8 gis, cis} \times 2/3 {fis gis cis'}
 \clef violin \times 2/3 {fis' gis' cis''} fis'' r8 r4 r4 \clef bass |
%12
 \times 2/3 {fis,,8 fis, ais,} \times 2/3 {cis fis ais}
 \clef violin \times 2/3 {cis' fis' ais'} cis'' r8 r4 r4 \clef bass |

%13
 [<eis,8 cis (> eis gis b] ) cis'-. r8 [<e, ( cis> fis ais cis'] ) e'4-> |
%14
 [<dis,8 b,( > fis b dis'] )fis'-. r8 [<d, (bis,> fis bis fis'] ) a4-> |
%15
 \times 2/3 { cis,8 ais, fis} \clef violin \times 2/3 {ais cis' fis'}
 \times 2/3 { ais' cis'' fis''}
 r4 r4 \clef bass
 <cis, eis> |
}
>
}
