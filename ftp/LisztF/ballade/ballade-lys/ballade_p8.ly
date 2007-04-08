% $Id: ballade_p8.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

PVIIIbassoTI=\notes {
 \relative c, {
  [ b16 ( cis d dis e eis fis fisis gis fisis fis eis e dis cisis ) cis ] |
 }
}
PVIIIbassoTint=\notes {
 \relative c, {
  [ b16 (cis cisis dis e eis fis fisis gis fisis fis eis e dis d) bis ] |
 }
}
PVIIIbassoTII=\notes {
 \relative c, {
  [ cis16 (dis e eis  fis fisis gis a ais a gis fisis fis eis e) dis ] |
 }
}
PVIIIbassoTIIIvC=\notes {
  [g,,16 g, aes,, aes, a,, a, bes,, bes,]
  [b,, b, c, c cis, cis d, d] |
  [ees, ees d, d des, des c, c] 
  [b,, b, bes,, bes, a,, a, aes,, aes,] |
}

PVIIIbassoTIIIvD=\notes {
  [g,,8 aes,, a,, bes,,] 
  [b,, c, cis, d,] |
  [ees, d, des, c, ]
  [b,, bes,, a,, aes,,] |
}
PVIIIbassoTIVvC = \notes {
  [f,,16 f, fis,, fis, g,, g, aes,, aes,] 
  [a,, a, bes,, bes, b,, b, c, c] 
  r8 [b,,16 b, bes,, bes, a,, a,] 
  [aes,, aes, g,, g, fis,, fis, f,, f,]
}
PVIIIRH=\notes {
\key b \major
<
\context Voice=struts {
  \property Voice.NoteHead \set #'transparent = ##t
  \property Voice.Stem \set #'transparent = ##t
  \property Voice.Beam \set #'transparent = ##t
  \property Voice.TextSpanner \set #'type = #'dashed-line
  \property Voice.TextSpanner \set #'edge-height = #'(0 . 2.0)
  \property Voice.TextSpanner \set #'edge-text = #'("8" . "")
  \shiftOn
 \repeat unfold 39 { s1 }
%msr 40
  \property Staff.centralCPosition = #-13
  b''''1-\spanrequest \start "text"
  b''''1 b''''1 b''''2 
  \property Staff.centralCPosition = #-6
  b'''2-\spanrequest \stop "text" s1 s1
}
\context Voice=AVIII { \stemUpS \slurUpS \tieUpS
  \property PianoStaff.connectArpeggios = ##t
  <dis1 gis_\mf dis'^> > e'2-\arpeggio^> fis'-\arpeggio^> 
  gis'1-\arpeggio^> \cr ~ |
  gis'4 dis' ( fis'4.^> ) e'8 \rc |
  e'1( ) dis'4 r4 r2 |
  <e1_"crescendo" gis ais^> > | \stemBothS
  <e2 gis b^> > <e2 gis cis'^> > | \stemBothS
% 9
  \tieBothS
  <dis1 gis^^ dis'> ~ | <dis2 gis dis'> \stemUpS fis'4-\arpeggio ( ) e' |
  \stemBothS <e1 gis ais-> > | < e2 gis b-> > <e gis-> cis'> |
  <dis2. gis dis'-> > <dis4 dis'> | 
  <dis2. fisis cis'-> dis'> <dis4 dis'> | \tieBothS
%15
  [ees16 ees'^#'(lines "agitato, poco a poco animando" "")
   e e' f f' fis fis'] \clef violin 
  [g g' gis gis' a a' bes bes'] |
%16
  [b \cr b' c' c'' cis' cis''  d' \rc d'']
  [ ees' ees'' d' d''  cis' cis'' c' c''] |
%17
  [fis fis' g g' gis gis' a a']
  [bes bes' b b' c' c'' cis' cis''] |
%18
  [d' \cr d'' ees' ees'' e' e'' f' \rc f''] 
  [ fis' fis'' f' f'' e' e'' ees' ees'']
%19
  [c'' c''' b' b '' bes' bes'' a' a'']
  [ ees'' \cr ees'''  e'' e''' f'' f''' fis'' \rc fis'''] |
  \key c \minor
%20
  <g1_\f c'^> ees'_"\\ \\ \\ tempestuoso" g'> |
  <aes2-> c' ees' aes'> <bes-> ees' bes'> \slurBothS \slurAttAny
%22
  <c'1_> ees' c''> ~ | <c'4 ees' c''> <g ees' ( g'> <bes4. ees' bes'>
  <aes8 ) aes'> |
%24
  <aes1^^ c' ees' ( aes'> | <g4 c' ees' ) g'> r4 r2 \clef bass |
%26
  <d1-^ aes c' d'> | <ees2-> aes c' ees'> <f-> aes c' f'>|
%28
  <g1-> c' g'>~|<g4 c' g'> <bes2-> ( bes'> <aes4 ) aes'> |
%30
  <d1-^ aes c' d'> | <ees2 aes-> c' ees'> <f aes-> c' f'> |
%32
  <g2. c'-^ g'> <g4 g'>| <g2. b^^ f' g'> <g4 g'> | \key b \minor
  <g8-| ais e' g'> \clef violin
  [gis16 gis' a a' ais ais'] [b b' c' c'' cis' cis'' d' d''] |
%35
  [dis' dis'' e' e'' eis' eis'' fis'  fis'']
  [ g' g'' fis' fis'' eis' eis'' e' e'']|
  [cis' cis'' d' d'' dis' dis'' e' e'' ]
  [ eis' eis'' fis' fis'' g' g'' gis' gis'']|
%37
  [a' a'' ais' ais'' b' b'' bis' bis'' ]
  [cis'' cis''' bis' bis'' b' b'' ais' ais'']|
%38
  r16 [<g''^"stringendo" cis''' g'''> c'''\rest <fis'' fis'''> b''\rest 
	<eis'' eis'''> a''\rest <e'' e'''>]
  r16 [<d''gis'' d'''> g''\rest <cis'' cis'''> g''\rest <c'' c'''> g''\rest <b' b''>] |
%39
  r16 [<a'' dis''' a'''> r <gis'' gis'''> r <g'' g'''> r <fis'' fis'''>] 
  r16 [<e'' ais'' e'''> r <dis'' dis'''> r <d'' d'''> r <cis'' cis'''>]
%40
  r16 [<b'' eis''' b'''> r <ais'' ais'''> r <a'' a'''> r <gis'' gis'''>]
  r16 [<c''' fis''' c''''> r <b'' b'''> r <ais'' ais'''> r <a'' a'''> ]
%41
  r16 [<cis''' g''' cis''''> r <c''' c''''> r <b'' b'''> r <ais'' ais'''>] 
  r16 [<d''' gis''' d''''> r <cis''' cis''''> r <c''' c''''> r <b'' b'''> ] 
%42
\transpose c'''' {
  r16 [<g ais cis' g'> r <fis fis'> r <eis eis'> r <e e'> ] 
  r16 [<cis cis'> r <c c'> r <b, b>  r <ais, ais>]
}
\transpose c''' {
  r16 [<g ais cis' g'> r <fis fis'> r <eis eis'> r <e e'> ] 
  r16 [<cis cis'> r <c c'> r <b, b>  r <ais, ais>]
}
\transpose c'' {
  r16 [<g ais cis' g'> s <fis fis'> s <eis eis'> s <e e'> ] 
  r16 [<cis cis'> s <c c'> s <b, b>  s <ais, ais>]
}
  r16 [g' r fis' r eis' r e' ] 
  r16 [cis' r c' r b  r ais]
}
\context Voice=BVIII { \stemDownS
  s1 <dis4 gis4-\arpeggio > r4 <dis4 gis4-\arpeggio > r4 |
  <dis-\arpeggio gis b> r4  r2 r2 <gis2 b> | <gis1 b> ~<gis4 b> s4 s2 |
  s1 s1 s1
%10
  s2 <dis-\arpeggio gis> 
  \repeat unfold 35 {s1}

}
>
}
PVIIILH=\notes {
\key b \major
<
\context Voice=CVIII {
 \repeat unfold 5 \PVIIIbassoTI
 \PVIIIbassoTint
 \repeat unfold 2 \PVIIIbassoTII
 \PVIIIbassoTI
 \PVIIIbassoTint
 \repeat unfold 2 \PVIIIbassoTII
 \relative c, { [b16 \cr cis cisis dis e eis fis fisis gis a ais \rc b] r4 |
   [ais,16 b cis cisis dis e eis fis fisis gis a ais ] r4 
 }
 <a,,8-\arpeggio fis, c^\p > r8 r4 r2 | 
 r2 <gis, b, ( fis> <a,8 ) c es-. > r8 r4 r2 |
 r2 <b,2 dis a> | <bes, ees fis!> ~ \stemUpS <c fis> |
 \key c \minor
 \repeat unfold 3 {\PVIIIbassoTIIIvC}
 \PVIIIbassoTIVvC
 [ees,,16 ees, e,, e, f,, f, fis,, fis,]
 [g,, g, aes,, aes, a,, a, bes,, bes,] |
 [b,, b, c, c cis, cis d, d ees, ees] r8 r4 |
 \PVIIIbassoTIVvC
 [ees,,16 ees, e,, e, f,, f, fis,, fis,]
 [g,, g, aes,, aes,] r4 |
 [d,,16 d, ees,, ees, e,, e, f,, f,]
 [fis,, fis, g,, g,] r4 \key b \minor
%34
 <cis,,8 cis,-| > r8 r4 <b, d g!> r4 |
 <ais, cis g> r4 r2 | <g,4 ais, e> r4 <fis, a, d> r4 |
 <e, g, cis> r4 r2 | \stemUpS
%38
 [g'16 g'\rest fis' f'\rest eis' e'\rest e'] e'\rest
 [d' d'\rest cis' c'\rest c' c'\rest b] b\rest | \clef violin
%39
 [a' r gis' r g' r fis'] r
 [e' r dis' r d' r cis'] r
%40
 [b'^"cresc. molto" r ais' r a' r gis' ] s
 [c'' r b' r ais' r a' ] r
%41
  [cis'' r c'' r b' r ais'] r
  [d'' r cis'' r c'' r b' ] r
%42
\transpose c'' {
  [<g ais_> cis' g'> r <fis fis'> r <eis eis'> r <e e'> ] r
  [<cis cis'> r <c c'> r <b, b>  r <ais, ais>] r
}
\clef bass \stemBothS
  [<g ais_> cis' g'> r <fis fis'> r <eis eis'> r <e e'> ] r 
  [<cis cis'> r <c c'> r <b, b> r <ais, ais>] r

\transpose c {
  [<g ais_> cis' g'> r <fis fis'> r <eis eis'> r <e e'> ] r
  [<cis cis'> r <c c'> r <b, b> r <ais, ais>] r
}
\transpose c {
  [<g_> g'> r <fis fis'> r <eis eis'> r <e e'> ] r
  [<cis cis'> r <c c'> r <b, b> r <ais, ais>] r
 }

}
\context Voice=DVIII { \stemDownS\slurDownS
  \repeat unfold 17 { s1 }
  s2 b,( s2 a,4 )aes, |
  \repeat unfold 3 {\PVIIIbassoTIIIvD}
  \repeat unfold 12 {s1}
  <ais4_> cis'> r4 <eis_> gis> r4 |
  <c'_> dis'> r <g_> ais> r
  <d'_> eis'> r <dis'_> fis'> r4 |
%41 
  <e'_> g'> r <eis'_> gis'> r |
  s1 s1 s1 s1
}
>
}
