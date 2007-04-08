% $Id: ballade_p5.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

PVRH = \notes {<
 \context Voice=AV{ \stemUpS
%msr 1
  <cis2 cis'^^> s2 | s1 |
%msr 3
  <fis2 fis'^^> s2 | s1 |
%msr 5
  <d1 d'> s1 | s1 | s1 | s1 | s1 | s1 |s1 | s1
%msr 14
  s1 s1 s1
%msr 17
  r4 <des'2 f' des''> <des'4 e' des''> ~ |
%msr 18
  \portamentoUp
  <des'4 e'_#'(lines "" "espressivo") des''> <des'-. ( 
  ees' des''> <des'-. ees' des''> 
  <des'-. ) ees' c''>|
  \portamentoOff
%msr 19
  \stemUpS \slurSH \relative a' { a4.( bes8 ~ <bes2 f'> | \stemBothS 
  ~ f'4 ees ) des4. c8 | \slurUpS \tieUpS \slurHS
%msr 20
  c2 ( } <bes ees' bes' > | \stemUpS
  ~ bes'4 a' cis''!8 b'!4 ) a'8 |
%msr 22
 }
 \context Voice=BV{ \stemDownS
  [cis16 fis cis' cis'] \clef violin 
  [fis' cis'' cis'' fis'']
  [cis''' cis''' fis''' cis'''' ] r4 \clef bass |
  <d2 fis a d'-> > <e cis' e'-> > |
  [fis16 cis' fis' fis'] \clef violin
  [ cis'' fis'' fis'' cis'''] [fis''' fis''' cis'''' fis''''] r4 \clef bass|
%msr 4(116)
  r4 <cis fis cis'> <e4.. fis e'-^> <d16 d'> |
%msr 5
  [d16 fis d' d'] \clef violin [fis' d'' d'' fis''] 
  [d''' d''' fis''' d''''] [ cis''''^4 fis'''^2 d'''^1 cis'''^4] |
  [fis'' d'' cis'' fis' ] \clef bass [d' cis' fis d]
  [cis fis, d, cis,] r4 \clef violin|
%msr 7
  \stemBothS <gis8 d' gis'-|> r16 [<gis'16 d'' gis''> <gis'8 d'' gis''-|>]
  r16 [<gis''16 d''' gis'''> <gis''8 d''' gis'''-|>] r8 r4 |
%msr 8
  <a2 d' fis' a'-^> <b d' fis' b'-^> |
%msr 9
  <cis'8 fis'-.-^ cis''> r16 [<cis'' fis'' cis'''><cis''8 fis'' cis'''-|>] r16
  [<cis'''16 fis''' cis''''><cis'''8 fis''' cis''''-| >] r8 r4 |
%msr 10
  r4 <cis' fis' a' cis''-> > <e'4. fis'^^ a' ( e''> <d'8 ) d''> |
%msr 11
  \stemBothS <gis8 d' gis'-|> r16 [<gis'16 d'' gis''> <gis'8 d'' gis''-|>]
  r16 [<gis''16 d''' gis'''> <gis''8 d''' gis'''-|>] r8 r4 |
%msr 12
  <a2 d' fis' a'-^> <b d' fis' b'-^> |
%msr 13
  <cis'8 fis'-.-^ cis''> r16 [<cis'' fis'' cis'''><cis''8 fis'' cis'''-|>] r16
  [<cis'''16 fis''' cis''''><cis'''8 fis''' cis''''-| >] r8 r8. \clef bass
  <cis16 fis cis'> |
%msr 14
  <cis8 eis-.-^ b cis'> r16 \clef violin 
  [<cis'' eis'' cis'''><cis''8 eis'' cis'''-.>] r16
  [<cis'''16 eis''' cis''''><cis'''8 eis''' cis''''-. >] r8 r8. \clef bass
  <eis16 b cis'> |
%msr 15
  <f8 bes des'> r8 r8. \clef violin [<f'16 \decr bes' des''> <f'8 bes' des''>] r16
  [<f''16 bes'' des'''> <f''8 bes'' des'''>] r16 <f'''16 bes''' des''''> |
  <f'''8 bes''' des''''> r16 [<f''16 bes'' des'''> <f''8 \rced bes'' des'''>] r16 
  [<f'16 bes' des''> <f'8 bes' des''>] s4. |
%msr 17
   s1 s1 s1 s1 s1 \stemDownS <cis'! e'!> |
%msr22
 }
>}
PVLH = \notes {<
 \context Voice=CV{
%msr 1 (113)
   \stemBothS <fis,,8 cis,8-.-^ fis,^\ff> r8 r8. <cis16 fis cis'>
   <cis8-.-^ fis cis'> r8 r8 \stemUpS \slurUpS \slurSS [eis,,16 ( eis,] |
%msr 2 (114) 
   [ fis,,16 fis, g,, g, gis,, gis, a,, a,] 
   [ais,, ais, b,, b, bis,, bis, cis, ) cis ] |
%msr 3
   \stemBothS <fis,,8 cis,8-.-^ fis,^\ff> r8 r8. [<fis16 cis' fis'>
   <fis8^.^^ cis' fis'>] r8 r8 \stemUpS \slurUpS \slurSS [eis,,16 ( eis,] |
%msr 4
   [ fis,,16 fis, g,, g, gis,, gis, a,, a,] 
   [ais,, ais, b,, b, bis,, bis, cis, ) cis ] |
%msr 5
   \stemBothS <fis,,8-\arpeggio d,-.-^ fis,> r8 r8. 
   [<d16 fis d'> <d8 fis-.-^ d'>] r8 r8. <cis16 fis cis'> | 
   <cis8 fis-.-^ cis'> r8 r4 r4 fis,,8-. r8 |
%msr 7
   <b,,8-|^\ff fis, b,> r16 [<b,16 fis gis> <b,8 fis gis-|>]
   r16 [<b16 fis' gis'> <b8 fis' gis'-|>] r8 r8 \stemUpS
   [ais,,16 ais,] |
%msr 8
   [b,, b, bis,, bis,  cis, cis d, d] 
   [dis, dis e, e eis, eis fis, fis] | \stemBothS
%msr 9
   <a,,8-\arpeggio fis,-.-^ a,> r16 
   [<cis16 fis a cis'> <cis8 fis-| a cis'>] r16 \clef violin
   [<cis'16 fis' a' cis''> <cis'8 fis'-| a' cis''>] r8 r8 \clef bass \stemUpS
   [fis,16 ( fis]
%msr 10
   [eis, eis e, e dis, dis d, d] 
   [cis, cis bis,, bis, b,, b, ais,, ) ais,] \stemBothS
%msr 11
   <b,,8-|^\ff fis, b,> r16 [<b,16 fis gis> <b,8 fis gis-|>]
   r16 [<b16 fis' gis'> <b8 fis' gis'-|>] r8 r8 \stemUpS
   [ais,,16 ais,] |
%msr 12
   [b,, b, bis,, bis,  cis, cis d, d] 
   [dis, dis e, e eis, eis fis, fis] | \stemBothS
%msr 13
   <a,,8-.-^ a,> r16 
   [<cis16 fis a cis'> <cis8 fis-| a cis'>] r16 \clef violin
   [<cis'16 fis' a' cis''> <cis'8 fis'-| a' cis''>] r8 r8. \clef bass
   <a,,16 a,> |
%msr 14
   <gis,,8-.-^ gis,> r16 
   [<eis16 b cis'> <eis8 b-. cis'>] r16 \clef violin
   [<eis'16 b' cis''> <eis'8 b'-. cis''>] r8 r8. \clef bass
   <gis,,16 gis,> |
%msr 15
   <g,,!8-.-^ g,!> s8 s2. | s2 s8 r16 [<f16 bes des'> <f8 bes des'>] r16 s16 |
%msr 17
   f4\rest \stemDownS <f2 bes> <g,4-\arpeggio e bes> ~ | \slurHH
%msr 18
   \portamentoUp
   <g, e bes> <g,-. ( ees bes> <g,-. ees bes> <a,-.) fis> |
   \portamentoOff
% 19
   <des1 g bes ees'> R1
   r2 <des g> <g,1 e! a> |
%22
 }
 \context Voice=DV{ \stemDownS
   s2 s4 s8 eis,,8 |
%msr 2 (115)
   [ fis,,\cr  g,, gis,, a,,] [ais,, b,, bis,, \rc cis,] |
   s2 s4 s8 eis,,8 |
   [ fis,,\cr  g,, gis,, a,,] [ais,, b,, bis,, \rc cis,] |
   s1 s1 s2.. ais,,8 |
%msr 8
   [b,, bis,,  cis, d,] [dis, e, eis, fis, ] |
   s2.. fis,8 |
%msr 10
   \relative c, {[eis e dis d] [cis bis b ais] | } 
%msr 12
   s2.. ais,,8 |
   [b,, bis,,  cis, d,] [dis, e, eis, fis, ] |
   s1 | s1 s1 | s2... g,16 | 
%msr 17
   g,2. s4 | s1 | s1 | s1 s1 s1 |
%msr22
 }
>}
