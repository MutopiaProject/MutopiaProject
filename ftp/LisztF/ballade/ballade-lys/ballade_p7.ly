% $Id: ballade_p7.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

PVIIRH = \notes {
<
\context Voice=struts {
  \property Voice.NoteHead \set #'transparent = ##t
  \property Voice.Stem \set #'transparent = ##t
  \stemUpS
  \property Voice.Beam \set #'transparent = ##t
  \property Voice.TextSpanner \set #'type = #'dashed-line
  \property Voice.TextSpanner \set #'edge-height = #'(0 . 2.0)
  \property Voice.TextSpanner \set #'edge-text = #'("8" . "")
  \shiftOn


  s1 s1 s1   \property Staff.centralCPosition = #-13
  d''''8 \spanrequest \start "text" s2.. | 
  d''''8 s2. 
  d''''8 \spanrequest \stop "text" 
  \property Staff.centralCPosition = #-6
 | 
%6
  s1 
  s1 s1 
  \repeat  unfold 12 {s1} |
%10

}
\context Voice=AVII {
  fis''4 () e''2 <g'4 b' cis'' ( eis''> |
%2
  <fis'-\arpeggio a' ) d'' ( fis''_"dolce" > 
  <d''8 fis'' a''> <fis'' a'' d'''> <d'' fis'' b''> <b' d'' g''> 
  <g' b' e''> fis'' | \stemUpS
%3
  \grace {a''} g'' fis'' g'' b'' \stemBothS
  <b'4 eis'' gis''> <fis''8 ) a''> r8 |
%4
  r8 [<a'' d'''( fis'''> 
  <d'''8 fis''' a'''> <fis''' a''' d''''>] <d''' fis''' b'''> <b'' d''' g'''> 
  <g'' b'' e'''> fis''' | \stemUpS
%5
  \grace {a'''} g''' fis''' g''' b''' \stemBothS
  <b''4 eis''' gis'''> <c'''8 fis'''8 ) a'''> r8 |
%6
  r8
  [<c'' ( fis'' a''> <e'' g'' c'''> <fis'' a'' e'''>]
  <e''4 g'' c'''>~<fis''8 a'' ) c'''> r8 |
%7
  r8 [<e'' ( g'' c'''> <fis'' a'' e'''> <b'' e''' g'''>]
  <g'' c''' e'''> < e'' a'' c'''> < c'' fis'' ) a''> <b'' e''' ( g'''> |
%8
  <g''c''' e'''> < e'' a'' c'''> <c'' fis'' ) a''> <b'' e''' ( g'''>
  <g''4 c''' e''' > <e'' a'' ) c'''>
%9
  <c''2 fis'' ( a''>~ \times 4/6 { [<c''8^#'(lines "poco rall." "") fis'' a''> 
    <g'' b''> <fis'' a''>
    <e''g''> <fis''8. a''> <g''16 ) b''>] } |
%10
  \tieDownS <b'4_"sempre dolce" ( g'' b''> ~ [<b'8 d''> <b' d'' g''> ]
  <g'b'e''>< e'g' c''><c' e' a'> b' | \stemUpS
  \grace {d''} [c'' b' c'' e'' ] \stemBothS
  <e'4 ais' cis''> <b'8 ) d''> r8
%12
  r8 [ <d''8 g'' ( b''>  <g'' b''8 d'''> <b'' d''' g'''> ]
  <g''b''e'''>< e''g'' c'''><c'' e'' a''> <d'' fis'' b''> | \stemUpS
  \grace {d'''} [c''' b'' c''' e''' ] 
  \stemBothS 
  <e''4 ais'' cis'''> <f''8 b'' ) d'''> r8 |
%14
  r8 [ <f'8 (b' d''> <a'c''f''> <b'd'' a''>] <a'4c''f''>~<b'8 ) d''f''> r8 |
%15
  r8 [<a' (c'' f''><b'd''a''><f''b''d'''>]
  <c''f''a''><a' d''f''><f'b')d''> <f''(b''d'''> |
  <c''f''a''><a' d''f''><f'b')d''> \slurHS <f''(b''d'''>
  <c''4_"pi\\`u dim." f''a''><a' d''f''> | 
%msr17
  <f'b' d''> <e' a' c''> <c' f'a'> <b d' ) f'> \clef bass |
  \tupletBrOff
  \tupletNumOff
  \slurHH
  \times 4/6 { [<bes8 \( ees'> ees bes ees' bes ees ]}
  \times 4/6 { [bes ees'_"un poco marcato" bes ees bes ees'] } |
  \times 4/6 {r8 [ees bes ees' bes ees~] }
  \times 4/6 { [ees ees bes ees' bes ees] } |
  \times 4/6 {r8 [ees bes ees' bes ees] }
  \times 4/6 {r8 [ees bes ees' bes \) ees] } |
}
\context Voice=BVII{
  s1 s1 \stemDownS
%3
  <b'4. d''> <cis''8 e''> s2 s1
%5
  <b''4. d'''> <cis'''8 e'''> s2
  s1 s1 s1 s1 s1 
%11
  <e'4. g'> <fis'8 a'> s2 s1 
  <e''4. g''> <fis''8 a''> s2 s1 
  s1 s1 s1 s1 s1 s1 |



}
>
}

PVIILH = \notes {
<
\context Voice=CVII { \stemUpS
  s1 
  \times 4/6 { a8\rest [a d' a' d' a~]} \times 4/6 { [a a d' a' d' a~]}
%3
  \times 4/6 { [a a d' a' d' a~]} \times 4/6 { [a a d' a' d' a]}
  \tupletBrOff
  \tupletNumOff
  \times 4/6 { r8 [a d' a' d' a~]} \times 4/6 { [a a d' a' d' a~]}
%5
  \times 4/6 { [a a d' a' d' a~]} \times 4/6 { [a a d' a' d' a]}
  \times 4/6 { r8 [a d' a' d' a~]} \times 4/6 { [a a d' a' d' a]}
%7
  \times 4/6 { r8 [a d' a' d' a~]} \times 4/6 { [a a d' a' d' a~]}
  \times 4/6 { [a a d' a' d' a~]} \times 4/6 { [a a d' a' d' a~]}
%9
  \times 4/6 { [a a d' a' d' a~]} r4 \clef violin <d'4 c''> \clef bass |
%10
  \times 4/6 { r8 [ d g d' g d ~]} \times 4/6 { [d d g d' g d~]}
  \times 4/6 { [d d g d' g d ~]} \times 4/6 { [d d g d' g d~]}
  \times 4/6 { r8 [ d g d' g d ~]} \times 4/6 { [d d g d' g d~]}
  \times 4/6 { [d d g d' g d]} \times 4/6 { r8 [ d g d' g d ]}
  \times 4/6 { r8 [ d g d' g d ~]} \times 4/6 { [d d g d' g d]}
  \times 4/6 { r8 [ d g d' g d ~]} \times 4/6 { [d d g d' g d]}
  \times 4/6 { r8 [ d g d' g d ]} \times 4/6 { r8 [ d g d' g d ]}
  s1 r2 r8
  [ees,8_\pp ( g, ces] | bes, g, ) ees, ces (bes, g, )ees, ces (|
  bes,4 g, ees, ) des, |
}
\context Voice=DVII{ \stemDownS
  r2 r4 a () d,1 | s1 | d,1 | s1
  d,1 |d,1 | s1 s1 g, s2 g,2 g,1 s2 g,2 g,1 g,1 g,2 g,2 R1 g,, s1 s1 |
}
>
}
