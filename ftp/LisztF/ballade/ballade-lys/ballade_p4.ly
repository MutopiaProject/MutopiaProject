% $Id: ballade_p4.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

% part IV (starting at broken octaves, agitato in tempo)

PIVRH = \notes {
<
 \context Voice= AIV { \stemUpS \break
  [ a,16^#'(lines "agitato (in tempo)" "") a b, b bis, bis cis cis' ]
  [ d \cr d' e e' eis eis' fis fis' ] |
%msr 2
  [ a a' gis gis' g g' fis \rc fis' ] \clef violin
  [ d' d'' cis' cis'' bis bis' b b'] |
%msr 3
  [ a16 a' b b' bis bis' cis' cis'' ]
  [ d' d'' e' e'' eis' eis'' fis' fis'' ] |
%msr 4
  [ a' a'' gis' gis'' g' g'' fis' fis'' ]
  [ d'' d''' cis'' cis''' bis' bis'' b' b''] |
%msr 5
  [ ais' ais'' b' b'' bis' bis'' cis'' cis''']
  [ g'' g''' fis'' fis''' f'' f''' e'' e'''] |
%msr 6
  [ dis'' dis''' e'' e''' eis'' eis''' fis'' fis''']
  [ c''' c '''' b'' b'''  bes'' bes'''  a'' a'''] |
%msr 7
  s8 [ gis''16 gis''' a'' a''' g''  g''' ]
  s8 [ fis''16 fis''' g'' g''' fis'' fis'''] |
%msr 8
  s8 [eis''16  eis''' fis'' fis''' eis'' eis''' ]
  [ e'' e''' d'' d''' cis'' cis''' b' b''] | 
%msr 9
  [ a' a'' gis' gis'' fis' fis'' eis' eis'' ]
  [ e'\decr e'' dis' dis'' d' d'' cis'\rced cis''] |
%msr 10
 }
 \context Voice= BIV { \stemDownS
  [ a,8 b, bis,  cis ] [ d e  eis  fis ] |
%msr 2
  [ a gis g fis] [ d' \decr cis' bis  b\rced] |
%msr 3
  [ a8 b bis  cis' ] [ d'  e'  eis'  fis' ] |
%msr 4
  [ a' gis' g' fis'] [ d'' cis'' bis' b'] |
%msr 5
  [ ais' b' bis'  cis''] [ g'' fis'' f'' e''] |
%msr 6
  [ dis'' e'' eis'' fis''] [ c''' b'' bes'' a''] |
%msr 7
  r8 [ gis''\cr a'' g''\rc ] r8 [ fis''\cr g''fis''\rc] |
%msr 8
  r8 [ eis''\cr fis'' eis''\rc ] [ e'' d'' cis'' b' ]| 
%msr 9
  s1
 }
>
%msr 10
 <
 \context Voice= AIV { \slurUpS
   r4 <cis' fis' ( cis''> b'^> ) a' |
%msr 11
   <d'2 d''2^^> s2 |
%msr 12
    r4 \stemDownS <cis''4 fis'' ( cis'''> \stemUpS b''^> ) a'' |
%msr 13
   <d''2 d'''^^> s2 |

  }
  \context Voice= AIVprim { \stemUpS \shiftOn
    s2 fis' | s1 | s2 fis'' | s1
  }
  \context Voice= BIV { \slurDownS \shiftOn
    s2 cis'4. ( ) d'8 |
%msr 11  
    \slurUpS b'4 ( bes' \stemBothS <eis' a'_> > ~ <eis'8 ) gis'> r8 |
%msr 12
    s2 \slurDownS \stemDownS cis''4. ( ) d''8 |
%msr 13
    \slurUpS
    b''4 ( bes'' \tieDownS <a''^> eis''> ~ <gis''8 ) eis''> r8 |
  }
 >

<
 \context Voice=struts {
  \property Voice.NoteHead \set #'transparent = ##t
  \property Voice.Stem \set #'transparent = ##t
  \property Voice.Beam \set #'transparent = ##t
  \property Staff.centralCPosition = #-13
  \property Voice.TextSpanner \set #'type = #'dashed-line
  \property Voice.TextSpanner \set #'edge-height = #'(0 . 2.0)
  \property Voice.TextSpanner \set #'edge-text = #'("8" . "")
  \shiftOn
  s8 d''''8\spanrequest \start "text"  s4 s2 | s8 d''''8 s2. | 
  s8 d''''8 s2. |s4 s4 s4 cis''''8 cis''''\spanrequest \stop "text"  |
 }
 \context Voice= AIV {
%msr 14
   r4 cis''' c'''4 () b''8-. s8 | 
%msr 15
   s4 fis''' f'''4() e'''8-. s8 |
%msr 16
   r4 \stemBothS
   <gis'' d'''^> f''' gis''' > <a'' d'''^> f''' a''' >
   <bes'' d'''^> f''' bes''' > |
%msr 17
   <b''4 d''' gis'''^> b''' > <bis'' eis'''^> gis''' bis'''> 
   <cis'''4.. eis'''^> gis''' cis'''' > 
   \property Staff.centralCPosition = #0
   \clef bass
   <cis16 cis'16> |
 }
 \context Voice= BIV {

%msr 14
   \shiftOff s4 
   <e''4 g'' e'''> <e''4. g''^> e'''> r8 |
%msr 15
   r4 <a'' c''' a'''> <a''4. c'''^> a'''> r8 |
%msr 16 - 17
   s1 s1 
 }
>
}

PIVLH = \notes {
 <
  \context Voice= CIV { \stemUpS \tieUpS \slurUpS
   <fis,,8-\arpeggio cis,^\p fis,> r8 r4 r4
   <fis,4 a, ( d > ~ | d2 eis | 
%msr 3
   <fis8 cis ) fis,-.> r8 r4 r4
   <fis4 a d' > ~ | d'2 eis'( ~| 
%msr 5
   eis'4 ) e'! r4 \clef violin g' ( ~|
%msr 6
   g'^#'(lines "cresc." "") ) fis' r <dis' fis' ( c''> |
%msr 7
   <d'! fis' b'> ) a'2  a'4 ( |
%msr 8
   gis' ) fis'2 s4 |
%msr 9 
   s1
%msr 10
   [a,,16 a, b,, b, bis,, bis, cis, cis] [ d, d e, e eis, eis fis, fis] |
%msr 11
   [a, a  gis, gis g, g fis, fis] [d d' cis cis' bis, bis  b, b] |
%msr 12
   [a, a b, b bis, bis cis cis'] [ d d' e e' eis eis' fis fis'] |
%msr 13 
   [a a' gis gis' g g' fis fis' ] 
   \clef violin [d' d'' cis' cis'' bis bis' b b'] |
%msr 14
   [ais ais' b b' bis bis' cis' cis''] \clef bass [g g' fis fis' f f' e e'] |
%msr 15
   [dis dis' e e' eis eis' fis fis'] [c c' b, b bes, bes a, a] |
%msr 16
   [gis, gis a, a ais, ais b, b] [a, a gis, gis g, g fis, fis] |
%msr 17
   [eis, eis e, e dis, dis d, d] [cis, cis b,, b, a,, a, gis,, gis,] |
  }
  \context Voice= DIV { \stemDownS \slurDownS \slurSS
   s1 b,4 bes, a, gis, |
   s2. fis4 ( b4 bes a gis |
%msr 5
   <g!2 ) cis'> s4 <ais4 cis'> | <a!2 c'> s2 |
%msr 7
   s4 <cis'!4 ( e'> <c' ees'> <b d'> ~ |
%msr 8
   <b ) d'> <a ( cis'> <gis b> <d' fis'> |
%msr 9
   <cis' ) fis'> r4 \clef bass <cis eis gis b> r4 |
   \stemDownS
%msr 10
   [a,,8_"tempestuoso" b,, bis,, cis, ] [ d, e, eis, fis, ] |
%msr 11
   [a, \cr  gis, g,  fis, \rc] [d cis bis, b,] |
%msr 12
   [a, b, bis, cis ] [ d e eis fis ] |
%msr 13 
   [a gis g fis ] \clef violin [d' cis' bis b] |
%msr 14
   [ais b bis cis'] \clef bass [g fis f e] |
%msr 15
   [dis e eis fis] [c b, bes, a,] |
%msr 16
   [gis, a, ais, b,] [a, gis, g, fis,] |
%msr 17
   [eis, e, dis, d,] [cis, b,, a,, gis,,] |
  }
 >
}
