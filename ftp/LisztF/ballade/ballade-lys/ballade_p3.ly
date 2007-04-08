% $Id: ballade_p3.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

#(set! point-and-click line-location)

% part 3 -- Starting with "Allegro deciso"

PIIIRH = \notes { 
\context Voice=AIII{
 R1 R1 \key b \minor |
 \repeat unfold 2 {
 <a'8 d'' a''^|^^-\f> r8 \times 4/5 { cis'16 d' e' f' gis' } a'8-|  r8
 \times 2/3 {
 <a'8 d'' a'' \cr >  <a'8 d'' a''> <a'8 d'' a'' \rc> 
 }  |
 <e''8 a'' cis''' e'''^|> r8 r4 r2 |
 }
 <e''8 bes'' cis''' e'''^|^^> r8 
 \times 4/6 {cis'16_2 d'_1 dis'_2 e'_1 g'_2 bes'_3 } cis''8_4^| r8
 \times 2/3 {
 <e''8 bes'' cis''' e'''>
 <e''8 bes'' cis''' e'''>
 <e''8 bes'' cis''' e'''> 
 } | % msr8
 <a''8 c''' ees'''^| a'''> r8 r4 r2 | % msr 9
 <e''8 bes'' cis''' e'''^|^^> r8 
 \times 4/6 {cis'16 d' dis' e' g' bes' } cis''8^| r8
 \times 2/3 {
 <e''8 bes'' cis''' e'''>
 <e''8 bes'' cis''' e'''>
 <e''8 bes'' cis''' e'''> 
 } | % msr10
 <a''8 c''' ees''' a'''> r8 r4 r4
 \times 2/3 {
  <a''8 c''' ees''' a'''_"pi\`u cresc">
  <a''8 c''' ees''' a'''>
  <a''8 c''' ees''' a'''>
 } |
%msr 11
 <a''8 c''' ees''' a'''> r8 r4 r4
 \times 2/3 {
  <a''8 c''' ees''' a'''>
  <a''8 c''' ees''' a'''>
  <a''8 c''' ees''' a'''>
 } |
%msr 12
  <a''8-| c''' e'''! a'''> r8 <a''8-| c''' f''' a'''> r8
  <a''8-| c''' fis''' a'''> r8 <b''8-|  fis''' b'''> r8 |
%msr 13
  <cis'''8-.  fis''' a''' cis''''> r8
  \times 12/15 {
    [<d'''16 d''''-^> b''' a''' fis''' e'''^1]
    [d'''^3 b'' a'' fis''^4 e''] [d'' b'^1 a'^3 fis' e'] } |
%msr 14
  \times 12/18 { r16  [eis'16 \cr gis' b' d'' eis'']
     [d'''-^ b'' \rc gis'' eis'' d'' b'] [gis' eis' d' b gis eis] } r4 |
%msr 15
  r4 \times 12/15 {
    [<d''16 d'''-^> b'' a'' fis'' e'']
    [d'' b' a' fis' e'] [d' b a fis e] } |
%msr 16
  \times 12/18 { r16  [eis16 gis b d' eis']
     [d''-^ b' gis' eis' d' b] \clef bass [gis! eis d b, gis, eis,] } r4 |
%msr 17
  r4 r8 d-.-- ~ d a4-.-- gis8-.-- ~ |
%msr 18
  gis cis'4-.-- fis8-.--~fis
  <eis4 b e'-^ ( > ~ < )eis8 b d'> |
}
%msr 19
\clef violin
  <
   \context Voice = AIII {
   \stemUpS \slurUpS \slurSS
   r4 <d'2 f' b'^^_"rinforzando" ( > <cis'4 f' a'> | % msr 20
   <b4 d' g'> fis' ) eis'2 | %msr 21
   r4 <d'2_"rinforz." f' b'-^ d''( > <cis'4 f' a'> | % msr 22
   <b4 d' g'> fis' ) eis'2 | %msr 23
   }
   \context Voice = BIII { \stemDownS \shiftOn
   s1 | s4 d'2. |
   s1 | s4 d'2. |
   }
   \context Voice = BIIIprim { \stemDownS  \slurDownS
   s1 | s4 a2 ( ) gis4 |
   s1 | s4 a2 ( ) gis4 |
   }
  >
%msr 23
  r4 <g?4 cis' e'-.--> r4 <fis b dis'-.--> |
%msr 24
  r4 <fis a d'-.--> <fis a-.-->  <fis b-.--> \clef bass |
 <
   \context Voice = AIII { \stemUpS \slurUpS r2 g2 ( ~ g2 ) gis }
   \context Voice = BIII { \tieDownS s2 d2 ~ d1 }
 >
}

PIIILH = \notes { 
\context Voice=CIII {
 r2 r4 <a8-|^\mf a'> r8 | <a-| a'> r8 <a-. a'> r16 <a16-. a'> 
  <a8-. a'> r8 <a8-. a'>r8 \key b \minor |
 \repeat unfold 2 {
  <bes,8 bes,,-|-^> r8 \times 4/5 { cis16 d e f gis } a8^| r8
  \times 2/3 {<bes,8 bes,,> <bes, bes,,>  <bes, bes,,>} |
  <a,8 a,,_|> r8 <a a'-.> r16 <a16 a'-.> <a8 a'-.> r8 <a8-. a'> r8 |
 }
 % msr 7
 <g,8 g,,_|_^> r8
 \tupletNumOff
 \times 4/6 {cis16_3 d_1 dis_3 e_2 g_1 bes_3 } cis'8^|_2 r8
 \times 2/3 { <g,8 g,,> <g, g,,> <g, g,,>} | % msr 8
 <fis,8 fis,,-|> r8 <a a'-.> r16 <a16 a'-.> <a8 a'-.> r8 <a8-. a'> r8 | % msr 9
 <g,8 g,,_|_^> r8
 \times 4/6 {cis16 d dis e g bes } cis'8^| r8
 \times 2/3 { <g,8 g,,> <g, g,,> <g, g,,>} | % msr 10
 <fis,8 fis,,> r8 <a a'-.> r16 <a16 a'-.> <a8 a'-.> r8
 \times 2/3 { <fis,8 fis,,> <fis, fis,,> <fis, fis,,>} | %msr11
 <f,8 f,,> r8 <a a'-.> r16 <a16 a'-.> <a8 a'-.> r8
 \times 2/3 { <f,8 f,,> <f, f,,> <f, f,,>} | %msr12
 <e,8-| e,,> r8 <dis,-| dis,,> r8 <d,-| d,,> r8 <d-| d,> r8 |
%msr13
 <cis-. cis,> r8 \clef violin <cis'2^"rinforz molto" fis' a' d''-^>
 <cis4 fis a d'-|> |
%msr 14
 \clef bass
 <cis2-\arpeggio eis gis b d'-^> r4
 \times 2/3 {<cis8 \cr cis,>  <cis8 cis,>  <cis8 \rc cis,>} |
%msr 15
 <cis-. cis,> r8 <cis2 fis a d'-^>
 <cis,4 fis, a, d-|> |
%msr 16
 <cis,2-\arpeggio eis, gis, b, d-^> r4
 \times 2/3 {cis,8^"marcato"  cis, cis,} |
%msr 17
}
<
 \context Voice = CIII { \stemUpS
  \times 2/3 {cis,8 cis, cis,}
  \times 2/3 {cis,8 cis, cis,}
  \tupletNumOff
  \repeat unfold 22 \times 2/3 {cis,8 cis, cis,}
  cis,8^"decresc." cis, cis, cis, cis, cis, cis, cis, 
  | \dynamicUp cis,4 cis,  cis, d,  |
  \slurUpS s2 b,2 ( ~ b, ) eis, \dynamicBoth
 }
 \context Voice = DIII { 
   \stemDownS 
   \slurDownS \slurSS
   \property Voice.Slur \override #'attachment-offset = #'((0 . 1.5) 0 . 1.5)
   s2 b,,2_> ( |
   a,,_> ) gis,,_> |
   \property Voice.Slur \revert #'attachment-offset
   \slurSH
%msr 19
   r4 g,,!2 ( a,,4 |
%msr 20
   ) b,,1 |
%msr 21
   r4 g,,2 ( a,,4 |
%msr 22
   ) b,,1 |
%msr 23
   r4 ais,,4_- r4 b,,_- | cis,_- b,,_- cis,_- cis,_- |
%msr 25
   \tieDownS r2 cis,2 ~| cis,1
 }
>
}
