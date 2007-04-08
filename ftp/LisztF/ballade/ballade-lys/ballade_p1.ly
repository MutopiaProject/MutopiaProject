% $Id: ballade_p1.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

%measures 1 to 16

upperVoiceItoXVI = \context Voice = upper {
  \property Voice.Tie \set #'direction = #1
  \property Voice.Slur \set #'direction = #1
  \slurSS
  \notes { 
  \stemUpS
   s1. s1. fis1.^\marcato^"marcato" g2.^\marcato a2.^\marcato 
   b1.^\marcato ~ b2 
   fis4 \cr ( a2 ) g4 \rc |
   % msr 7
   \slurHH
   g1.^\marcato ( ) fis2. r2. |
   % msr 9
   cis1.^\marcato d2.^\marcato e2.^\marcato
   fis1.^\marcato ~ fis2.
   a2 g4 |
   % msr 13
   cis1.^\marcato d2.^\marcato e2.^\marcato |
   %15 - 16
   fis1.^\marcato g2.^\marcato a2.^\marcato |
 }
}

middleBarI = \notes { 
  \property Voice.Rest \set #'staff-position = #-4
  \stemDownS r4 r4 <b,4 d!4> ~ <b,2 d2> < b,4 d4> 
}
middleBarII = \notes { 
  \property Voice.Rest \set #'staff-position = #-6
  \stemDownS r4 r4 <g,4 b,4> ~ <g,2 b,2> < g,4 b,4>
}

PIbassoBarI = \notes { 
  \stemUpS
  \times 6/9 { 
    [ b,,8 c,! cis, d,! dis, e, eis, fis, g, ]
  }
  \times 6/9 {
    [ fis, eis,! e, dis,! d, cis,! c, b,, fis,,]
  }
}

PIbassoBarII = \notes {
  \stemUpS
  \times 6/9 {
     [ b,,8 c,! cis, d,! dis, e, eis, fis, eis, ]
  }
  \times 6/9 {
     [ e, dis,! d, cis,! c, b,, g,, a,, ais,,]
  }
}

middleVoiceItoIX = \context Voice = middle {
  \notes{ R1. R1.}
  \clef bass
  \repeat unfold 6 \middleBarI
  \repeat unfold 2 \middleBarII
  \repeat unfold 2 \middleBarI
  \repeat unfold 2 \middleBarII
  \middleBarI
  \notes {
     \stemDownS r4 r4 <a,4 cis> ~ <a,2 cis> < a,4 cis?>
  }
}

bassoVoiceItoXVI = \context Voice = basso {
 \repeat unfold 5 \PIbassoBarI
 \tupletNumOff
 \repeat unfold 3 \PIbassoBarI
 \repeat unfold 2 \PIbassoBarII
 \repeat unfold 2 \PIbassoBarI
 \repeat unfold 2 \PIbassoBarII
 \notes {
   \stemUpS
   \times 6/9 {
     [ b,,8 c,! cis, d,! dis, e, eis, fis, g, ]
   }
   \times 6/9 {
     [ fis, eis,! e, dis,! d, cis,! c, b,, ais,,]
   }
   \times 6/9 {
     [ a,,! ais,, b,, bis,, cis, d, dis, e, eis, ]
   }
   [ \times 4/6 {fis, eis,! e, dis,! d, cis,! } c,16 b,, ais,, a,,] |
 }
}

besTypeI = \notes {
  \relative b,, {
    \times 6/9 {bes b c des d ees e f ges f e ees d des c ces bes f}
  }
}

besTypeII = \notes {
 
}






