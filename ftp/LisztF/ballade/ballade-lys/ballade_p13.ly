% $Id: ballade_p13.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

PXIIIRH=\notes {
\time 6/4
<
\context Voice=struts {
  \property Voice.NoteHead \set #'transparent = ##t
  \property Voice.Stem \set #'transparent = ##t
  \property Voice.Beam \set #'transparent = ##t
  \property Voice.Rest \set #'staff-position = #14
  \property Voice.TextSpanner \set #'type = #'dashed-line
  \property Voice.TextSpanner \set #'edge-height = #'(0 . 2)
  \property Voice.TextSpanner \set #'edge-text = #'("8" . "")
  \repeat unfold 7 {s1.}
  \shiftOn
  \property Staff.centralCPosition = #-13
  e''''1 \spanrequest \start "text"

  s4... \property Staff.centralCPosition = #-6
  s32 \spanrequest \stop "text"
%9
  s1 \property Staff.centralCPosition = #-13 
  e''''4 \spanrequest \start "text"
  s8. \property Staff.centralCPosition = #-6
  s16 \spanrequest \stop "text"
%10
  s2. \property Staff.centralCPosition = #-13
  gis''''2 \spanrequest \start "text"
  s8. \property Staff.centralCPosition = #-6
  s16 \spanrequest \stop "text"
%11
  s1 \property Staff.centralCPosition = #-13 
  e''''4 \spanrequest \start "text"
  s8. \property Staff.centralCPosition = #-6
  s16 \spanrequest \stop "text"
%12
  s1 \property Staff.centralCPosition = #-13 
  e''''4 \spanrequest \start "text"
  s8. \property Staff.centralCPosition = #-6
  s16 \spanrequest \stop "text"
%13
  s1 \property Staff.centralCPosition = #-13 
  e''''4 \spanrequest \start "text"
  s8. \property Staff.centralCPosition = #-6
  s16 \spanrequest \stop "text"
%14
  s2. \property Staff.centralCPosition = #-13
  gis''''4 \spanrequest \start "text"
  s8.. 
  gis'''32 \spanrequest \stop "text"
  \property Staff.centralCPosition = #-6
  s4
  s1 s s 
  \property Staff.centralCPosition = #-13
  b'''' \spanrequest \start "text" |
  b'''16 b'''16 \spanrequest \stop "text" 
  \property Staff.centralCPosition = #-6
  s2.. |
  
}
\context Voice=AXIII {
 \relative f' {
  <fis2.^"grandioso" b dis fis> r4 <gis b dis gis> <ais dis fis ais> |
  \slurSH
  <b2. dis gis b> r4 <dis, b' ( dis> <ais'8 ais'> <gis) gis'> |
  <fis2. cis'-^ fis> r4 <e gis cis e> <dis gis b dis> |
  <cis2. ais' cis> r4 r <cis fis ais cis> |
  <cis2. gis' cis> r4 <dis fis ais dis> <e fis ais e'> |
  <fis2. b fis'> r4 <gis dis' gis> <gisis' dis gisis,>
  }
%7 
  <ais'16_"pi\\`u rinforzando" dis'' fis''> ais'' <ais'16 dis'' fis''> ais''
  \repeat unfold 3 {<ais'16 dis'' fis''> ais'' <ais'16 dis'' fis''> ais''}
  \relative c'' {
    <dis fis ais> dis' <dis, fis ais> dis'
    <fis, ais dis> fis' <fis, ais dis> fis' |
    <gis, cisis fis-^> ais' <gis, cisis fis> ais' 
    <gis, cisis fis> ais' <gis, cisis fis> ais' 
    <gis, cisis eis> ais' <gis, cisis eis> ais'
    <fis, ais dis-^> fis' <fis, ais dis> fis'
    <fis, ais dis> fis' <fis, ais dis> fis'
    <e, ais cis> fis' <e, ais cis> fis'
  } \stemUpS
  <dis'2 fis'^^> s2 s2 |
  <dis'^^ gis' b'> s s|
  <cis' fis'> s s|
  <ais cis'> s s|
  <gis cis'> s s|
  <b fis'> s s|
%15
  \time 4/4
  <
  \relative a' {
    \times 2/3 {r8 r8 a~} \tupletNumOff \times 2/3 {a gis b~} 
    \times 2/3 {b ais des~} \times 2/3 {des c ees~} |
    \times 2/3 {ees d f} \times 2/3 {f e g~} 
    \times 2/3{g fis a~} \times 2/3 {a gis b} |
  }
  \relative a {
    \times 2/3 {r8 r8 a~} \times 2/3 {a gis b~} 
    \times 2/3 {b ais des~} \times 2/3 {des c ees~} |
    \times 2/3 {ees d f} \times 2/3 {f e g~} 
    \times 2/3{g fis a~} \times 2/3 {a gis b} |
  }
  >
  <
  \relative f'' {
    s16 fis s gis s ais s b s cis s dis s e s eis |
    s fis s gis s ais s b s cis s dis s e s eis |
    fis8
  }
  \relative f' {
    r16 <fis b dis> r gis r ais r b r cis r dis r e r eis |
    a\rest fis r gis r ais r b r cis r dis r e r eis |
    fis8_\sf
  }
  >
%18
  \stemUpS \slurUpS \slurSS
  \relative d' { [dis8 ( fis b] [gis e cis ) gis']}
}

\context Voice=BXIII {
 \repeat unfold 8 {s1.}
 \stemDownS \tupletNumOff \tupletBrOff
 \property Voice.Beam \override #'damping = #0
%9
 \break
 \relative f {
   [ fis8._\fff gis16 
     \times 4/6  {ais b cis dis e fis }
     \times 4/6 { gis ais b cis dis e] }
     \times 4/7 { [fis gis ais b cis dis e }
     \times 4/7 { fis gis ais b cis dis e] } 
   fis8 r8 |
 }
%10
 \break
 \relative c' {
   [b8. cis16
     \times 4/6 { dis e fis gis ais b } 
     \times 4/6 { cis dis e fis gis ais] }
     \times 4/6 { [b cis dis e fis gis }
     \times 4/6 { ais b cis dis e fis] }
   gis8 r8 |
 }
%11
 \break
 \relative f {
   [fis8. gis16 
      \times 4/6 {ais b cis dis e fis}
      \times 4/6 {gis ais b cis dis e]}
      \times 4/7 {[fis gis ais b cis dis e}
      \times 4/6 {fis gis ais b cis dis]}
   e8 r8 |
 }
%12
 \break
 \relative c {
   [cis8. dis16
     \times 4/6 {e fis gis ais b cis}
     \times 4/6 {dis e fis gis ais b]}
     \times 4/7 {[cis dis e fis gis ais b}
     \times 4/7 {cis dis e fis gis ais b]}
    cis8 r8 |
 }
%13
 \break
 \relative c {
   [cis8. dis16
     \times 4/6 {eis fis gis ais b cis}
     \times 4/6 {dis eis fis gis ais b]}
     [cis32 dis eis fis gis ais b cis 
     dis e fis gis ais b cis dis ]
    e8 r8 |
 }
%14
 \break
 \relative f {
   [fis8. gis16
    \times 4/7 {ais b cis dis e fis gis }
    \times 4/7 {ais b cis dis e fis gis] }
   [ a32 bis dis fis a bis dis fis dis 
    a fis dis bis a fis dis bis a fis dis bis a fis dis
   ]
 }
 \break
 s1 s1 s1 s1
 s8 b4_"rit. e dim." <b8 dis'> <b2 cis'>
}
>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


PXIIILH=\notes {
<
\context Voice=CXIII {
 \relative c {
  <b2.^\ff dis fis b> s4 <b dis gis b> <dis fis ais dis> |
  <gis,2. dis' gis b>s4<gis-\arpeggio dis'(gis b> <b8 dis ais'>~<b dis) gis> |
  <cis2. gis' cis> s4 <e, gis cis gis'> <eis b' dis gis> |
  <fis2. cis' fis ais> s4 r <fis ais cis fis> |
  <eis2. b' cis gis'> s4 <e ais cis dis> <e ais cis e> |
  <dis2. b' fis'> s4 <b' dis fis gis> <b dis fis gisis> |
 }
%7
  <ais,8 dis fis-. ais>
  <
   \relative f' {
    fis-. eis-. dis-. cis-. b-. ais-. fis-. eis!-. dis-. cis-. b-. |
    ais cisis eis gis b ais fis ais cis dis eis! fis
   }
   \relative f {
    [fis eis dis cis b ] [ais fis eis dis cis b] |
    [ais cisis eis gis b ais ] [fis ais cis dis eis! fis]
   }
  >
%9
 \stemUpS \tupletNumOff \tupletBrOff
 \property Voice.Beam \override #'damping = #0
 \relative c, {
   [ <b8._^ fis'> gis'16
     \times 4/6  {ais b cis dis e fis } 
     \times 4/6 { gis ais b cis dis e }
   ] fis8-. r8 \stemDownS <gis,4 dis'-> gis> <ais dis-> ais'> | \stemUpS
 }
%10
 \relative c {
   [b8. cis16 
     \times 4/6 { dis e fis gis ais b] } \clef violin 
     \times 4/6 { [cis dis e  fis gis ais] }
   b8 r8 
 } \clef bass \stemDownS
 <dis4 ( b-- dis'> <ais8 dis' ais'> < gis) gis'> | \stemUpS
%11
 \relative g, {
   gis4 [
      \times 4/6 {ais16 b cis dis e fis}
      \times 4/6 {gis ais b cis dis e}
   ] fis8 r8
 } \stemDownS
 <e4 gis cis'-> e'> <dis gis-> dis'> | \stemUpS
%12
 \relative c, {
   [cis8. dis16
     \times 4/6 {e fis gis ais b cis}
     \times 4/6 {dis e fis gis ais b]} \clef violin
     \times 4/7 {[cis dis e fis gis ais b]}
   ]
   cis8 r  \clef bass \stemDownS
 }
 <fis4 ais-> cis' > | \stemUpS
%13
 \relative c, {
   [cis8. dis16
     \times 4/6 {eis fis gis ais b cis}
     \times 4/6 {dis eis fis gis ais b}
   ]
   cis8-. r8 \stemDownS
   <dis4 ais fis e-> > <e! ais,-> fis e> \stemUpS |

 }
 \relative f, {
   [fis8. gis16 
    \times 4/7 {ais b cis dis e fis gis }
    \times 4/7 {ais b cis dis e fis gis }
   ]
 }
 s2.
%15
 \time 4/4 \clef bass \tupletNumOn \stemBothS
 <
 \relative c {
 \times 2/3 {bis4-. bis8-.}  \tupletNumOff \tupletBrOff
 \times 2/3 {cis4-. cisis8-.} 
 \times 2/3 {dis4-. e8-.} 
 \times 2/3 {f4-. fis8-.} | \times 2/3 {g4-. gis8-.} 
 \times 2/3 {a4-. ais8-.} \times 2/3 {b4-. bis8-.} 
 \times 2/3 {cis4-. d8-. } |
 }
 \relative c, {
  \times 2/3 {dis4 dis8} \times 2/3 {e4 eis8} \times 2/3 {fis4 f8} 
  \times 2/3 {aes4 a8}| \times 2/3 { bes4 b8} \times 2/3 { c4 cis8} 
  \times 2/3 {d4 dis8} \times 2/3 { e4 eis8 }|
 }
 >
 \stemBothS
 <
  \relative f {
   fis16 r eis r e r dis r cis r b r ais r gis r |
   fis r eis r e r dis r cis r b r ais r gis r | fis8
  }
  \relative b {
   <b16 dis> r eis r e r dis r cis r b r ais r gis r|
   fis r eis r e r dis r cis r b r ais r gis r | fis8
  }
 >
%19
 <dis4 fis> <dis8 fis> <e2 gis> |
}
\context Voice=DXIII { \stemUpS \slurUpS \slurSS
 \relative c {
   s4
   \times 8/11 {[ais16 (b cis dis e  fis gis fis e dis cis]} )b8^| s8 s2 |
   s4 \tupletNumOff\tupletBrOff
   \times 8/11 {[fisis16 ( gis ais b  cis dis e dis cis b ais]} )gis8^| s8 s2|
   s4
   \times 8/11 {[bis16(cis dis e fis gis a gis fis e dis]} )cis8^| s8 s2|
   s4
   \times 8/11 {eis,16 (fis gis ais b cis dis cis b ais gis } )fis8^| s s2|
   s4 \times 8/12 {[eis16(fis gis ais b cis dis cis b ais gis fis]})eis8^| 
   s8 s2|
   s4 \times 8/14 {[dis16 (e fis gis ais b cis dis cis b ais gis fis e]}
   )dis8^| s8 s2|
%7
   \repeat unfold 8 {s1.} s1 s s s s
 }
}
\context Voice=EXIII {
 \relative c, 
 { \stemDownS \slurDownS \slurSS
   r4
   \times 8/11 {[ais16 (b cis dis e  fis gis fis e dis cis]} )b8_| r8 s2 |
   r4 \tupletNumOff\tupletBrOff
   \times 8/11 {[fisis16 ( gis ais b  cis dis e dis cis b ais]} )gis8_| r8 s2|
   r4
   \times 8/11 {[bis16(cis dis e fis gis a gis fis e dis]} )cis8_| r8 s2|
   r4
   \times 8/11 {[eis,16(fis gis ais b cis dis cis b ais gis ]} )fis8_| r8 s2|
   r4 \times 8/12 {[eis16(fis gis ais b cis dis cis b ais gis fis]})eis8_| 
   r8 s2|
   r4 \times 8/14 {[dis16_4 (e_5 fis_4 gis ais b cis dis cis b ais gis fis e]}
   )dis8_| r8 s2|
   s1. s s
 }
 <gis,,4-\arpeggio dis, gis, b,> s2 s2. |
 cis,4_^ s2 s2. | %12
 fis,,4_^ s2 s2. |
 eis,,4_^ s2 s2. |
 dis,4_^ s s \clef violin <bis dis'-^ fis' a'> s s |
%15
 s1 s s s s 
}
>
}
