% $Id: ballade_p9.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

PIXRH=\notes{
<
\context Voice=AIX{
 \tupletNumOff
 r4_\fff \times 2/3 { [<g'8 b' d'' g''> <g' b' d'' g''> <g' b' d'' g''>] }
 <g'8 b'-| d'' g''> r8 s4 |
%2
 r4 \times 2/3 {
 [<g''8 ais'' e''' g'''> <g'' ais'' e''' g'''> <g'' ais'' e''' g'''>]}
 <g''8 ais''-| e''' g'''> r8 s4 |
%3
 r4 \times 2/3 { [<g'8 b' d'' g''> <g' b' d'' g''> <g' b' d'' g''>] }
 <g'8 b'-| d'' g''> r8 s4 |
%4
 r4 \times 2/3 { \stemBothS
 [<g''8 ais'' e''' g'''> <g'' ais'' e''' g'''> <g'' ais'' e''' g'''>]}
 <g''8 ais''-| e''' g'''> r8 s4 |
%5
 r4 \times 2/3 { 
  [<g''8 bes'' d''' g'''><g'' bes'' d''' g'''><g'' bes'' d''' g'''>] 
 }
 <g''8 bes''-| d''' g'''> r8 s4 |
%6
 r4 \times 2/3 { 
  [<g''8 bes'' des''' g'''><g'' bes'' des''' g'''><g'' bes'' des''' g'''>] 
 }
 <g''8 bes''-| des''' g'''> r8 s4  |
 s1 s16 \decr s2.. s16 \rced  |
 \break
 s8 r8 <des''2--_\mf g'' bes''> <des''4-- g'' bes''>~ | 
%10
 <des''4 g'' bes''> \portamentoUp
 <c''4-. g''(bes''> <c''4 g''-. bes''> <c''4-. dis'' ) 
 a''>  \portamentoOff|
%11
 \stemUpS \slurUpS \tieUpS \slurSS
 \relative c'' {fis4. ( g8 d'2~ |
%12 
  [d8 c bes8. ) a16 ] a2-> ~ | a4 g s2 |
 }
%14
 r4 <e'-. ( bes'> <e'-. bes'> <a'-. ) dis'> |
 \relative f' {fis4.( g8 d'2~d4 c bes4. )a8 a2.( ) g4~ 
 \tupletNumOn \slurDown \slurHH 
 \property Voice.Slur \override #'attachment-offset = #'((0 . 0.7) 0 . 0.2)
 \times 2/3 { g2^#'(lines "rallent." "") fis4-. ( } 
 \times 2/3 {  ais_. gis4._-^#'(lines (music "scripts-ufermata") "")
    ) fis8 }
 }
}
 
\context Voice=BIX{ \stemUpS
 \translator Staff=down {
  g2^^ s2 
  <cis! cis'!^^> s | <g,! g!^^> s | <cis! cis'!^^> s | 
  <d d'^^> s | <ees^^ ees'> s |
%7
 }
 \translator Staff=up { \stemDownS \tieDownS
  s1 s s s <c'' e''>~ <c'' e''>~ <c''4 e''> r r2
  s1 <c' e'>~<c' e'>~<c' e'> s 
 }
}
>
}
PIXLH=\notes{
<
\context Voice=CIX{ \stemUpS \tupletNumOff\tupletBrOff
 s4 \times 2/3 {[<g8 b d' eis'> <g8 b d' eis'> <g8 b d' eis'>] }
 <g8 b d'-| eis'> r8
 \times 4/6 {r16 [<gis, gis> r16 <ais, ais> r16 <c c'>] } |
%2
 s4 \times 2/3 {[<g8 ais e' g'> <g8 ais e' g'> <g8 ais e' g'>]}
 <g8 ais e'-| g'> r8
 \times 4/6 {r16 [<bis bis,> r <ais, ais!> r <gis, gis>] }|
%3
 s4 \times 2/3 {[<g8 b d' eis'> <g8 b d' eis'> <g8 b d' eis'>] }
 <g8 b d'-| eis'> r8
 \times 4/6 {r16 [<gis, gis> r <ais, ais> r <c c'>] } |
%4
 s4 \times 2/3 {[<g8 ais e' g'> <g8 ais e' g'> <g8 ais e' g'>]}
 <g8 ais e'-^ g'> r8
 \times 4/6 {r16 [<a a,> r <b, b> r <cis cis'>] } |
%5
 s4 \times 2/3 {[<g8 bes d' g'><g bes d' g'><g bes d' g'>] }
 <g8 bes-| d' g'> r8
 \times 4/6 {r16 [<bes, bes> r16 <c c'> r16 <d d'>] }|
%6
 s4 \times 2/3 {[<g8 bes des' g'><g bes des' g'><g bes des' g'>] }
 <g8 bes-| des' g'> r8
 \times 4/6 {s16 [<b,  b> s16 <des des'> s16 <ees ees'>] }|
%7
 \times 4/6{ \translator Staff=up
  r [<f f'> r <g g'> r <a  a'>]
  r [<a^"rinforzando molto" a'> r <g g'> r <f f'>]
  \translator Staff=down
  r [<dis dis'> r <cis cis'> r <b, b>]
  r [<a, a> r <g, g> r <f, f>]
  r [<f, f> r <g, g> r <a, a>]
  r [<a, a> r <g, g> r <f, f>] \slurUpS \slurSS
  [e ( dis d cis c b, bes, a, gis, g, fis,  f,]
 }
 ) e,8-. r8 \clef violin
 <e'2_- g'> <e'4 g'_- >~< e' g'> < e'-. ( g'> < e'-. g'> <fis'-. ) a'> |
 bes'1~bes'~bes'4  r r2 \clef bass
 r4 <g-. ( c'> <g-. c'> <fis-. ) c'> 
 bes1~bes~bes1 <e ais cis'-\fermata>

}

\context Voice=DIX{ \stemDownS \tupletBrOff\tupletNumOff
 <g,,2 g,_^ > s4 \times 4/6 {[<g,,16 g,> r <a,, a,> r <b,, b,>] r } |
%2
 cis,!2_^ s4 \times 4/6 {[<cis16 cis,> r <b,, b,> r <a,, a,>] r}|
%3
 g,,!2_^ s4 \times 4/6 {[<g,,16 g,> r <a,, a,> r <b,, b,>] r}|
%4
 cis,!2_^ s4 \times 4/6 {[<gis,,16 gis,> r <ais,, ais,> r <bis,, bis,>] r }
%5
 d,2_^ s4 \times 4/6 {[<a,,16 a,> r <b,, b,> r <cis, cis>] r }
%6
 ees,2_^ s4 \times 4/6 {[<bes,,16 bes,> r <c, c> r <d, d>] r }
%7
 \slurDownS \slurSS
 \times 4/6 { \dynamicUp
  [<e \cr e,> r <fis fis,> r <gis gis,>] r
  [<bes bes,> r <gis gis,> r <fis \rc fis,>] r
  [<e e,> r <d d,> r <c c,>] r \dynamicBoth
  [<bes, bes,,> r <gis, gis,,> r <fis, fis,,>] r |
%8
  [<e, e,,> s fis, s gis,] s [ bes, s gis, s fis, ] s
  [e,( dis, d, cis, c, b,, bes,, a,, gis,, g,, fis,, f,,]
  } |
 ) e,,8-. s2.. 
 \repeat unfold 9 {s1}
}
>
}
