\version "2.12.0" 

 #(set-default-paper-size "letter" ) 
#(set-global-staff-size 20) 

\header {
 title = "Ave Maria"
 composer = "Cesar Franck, 1863"
 subtitle = "Pour Mezzo-Soprano ou Baryton et Orgue - FWV 62 original mi mineur" 
 mutopiatitle = "Ave Maria"
 mutopiacomposer = "FranckC"
 mutopiaopus = "FWV 62"
 mutopiainstrument = "Mezzo-soprano or Baryton and Organ"
 date = "1863"
 source = "Bornemann 1901"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Nicolas Vasseur"
 maintainerEmail = "partitions.libres@free.fr"
 maintainerWeb = "http://partitions.libres.free.fr"

 footer = "Mutopia-2009/09/05-1694"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


maindroite =  

<<
\relative c''  {
 \key e \minor \time 2/2  

<<  {   b2  ^\markup \bold Lento \( d4 c | a2 fis4 \) r4 |  g2 \( b2 | a4 g fis \) r |  
 b2  \( g4. a8 | b2 e, \) | b' \( g4 a | b g e2 \) | a4 \( c! a4. g8 |  
fis1 \) | g4 ^\markup {Poco Cresc.   } \< \( f' e d \) | g,2~ g4 r |  gis4 \( d' c b \)  | e,2~ e4  r \! |
e4  ^\markup {Cresc.   }  \( bes' a g | fis c' b! a \) | a \( g2 ^\markup {Poco rit.} fis4 | e \)  r r2 |

 b'2  ^\markup \bold Lento \( d4 c | a2 fis4 \) r4 |  g2 \( b2 | a4 g fis \) r |  
 b2  \( g4. a8 | b2 e, \) | b' \( g4 a | b g e2 \) | a4 \( c! a4. g8 |  
fis1 \) |
<d! f!>2  g4 \( < d' f!>4~ | f e  <f, d'> <e c' > \)

c'4 \( b \) e, \( <gis d' >~ | d' c <d, b'> <c a'> \) | a' \( g \) c, \( <g' bes>~ | bes a \)  d, \( <a' c>~ |

<a c> <g b>2 <fis a>4 | <e g>4 \) b' e, fis |   
\key e \major 

gis2 gis | b \( cis4 gis \) | 
gis \( fis e2 \) | b'2 \( e4 gis, \) | gis \( fis e2 \) | b'2 \( e4 e |
dis b gis2 \) | dis'4 \( fis b, a | gis fis e d! | cis \)  e \( d! c! |
b gis'~ gis fis | e \) b \> \( gis' e \) \!| b'2 ^\markup \italic Dolce \( cis4 gis \) | gis \( fis e2 \)  | 
b'2 \( e4 gis, \) | gis \( fis e2 \) | b'2 \( e4 e | dis b gis2 \) |
dis'4. dis8 e4. cis8 | fis2. \f fis4~ \( | fis d cis b | ais cis b a! |
gis ^\markup \italic Rit. e cis dis | e2 \) ^\markup  \bold {a Tempo} r | bis'1 ( | cis2 ) r |
dis,1 ( | e2 ) b | gis' ^\markup \italic Rit. e | e' r \bar "|."
}
\\
{ e,1~ \p | e2~  e4 r | b e d g | f e dis r4 |   
e1 \( | e2 \)  c | e1 | d4 b cis2 | dis4 e fis b,8 cis | 
dis1 \) | g | g2~ g4 r | <d g>2 \( <e gis> \) | e2~ e4  r | 
bes2 c4 cis | c!2 d4 dis | dis \f  e2 dis4 | e4 \> r4 r2 \!|

 e1~ \p | e2~  e4 r | b e d g | f e dis r4 |   
e1 \( | e2 \)  c | e1 | d4 b cis2 | dis4 e fis b,8 cis | 
dis1 \) |
g,2  g' _\markup \italic {Poco Cresc.}  | <g c> g | 
<d gis>2 e | <e a> e | <bes e> c4 _\markup \italic Cresc. cis | <c! fis!>2 d4 dis4 |

dis4 \f e _\markup \italic Dim. b2 | b4 \> b \(  cis dis \! | 


e2 \) \pp e | gis _\markup \italic Dolce e~|
e4 r cis2 | gis' e~ | e4 fis  e2 | dis2 _\markup \italic Cresc. gis |
gis1 | fis2 dis | d! cis4 b | bes2 a |
b1~ | b4 b  gis' e | gis2 e~ | e4 r  e2 |
gis e~ | e4 fis  e2 | gis _\markup \italic Cresc. gis | gis4 dis e2 |
gis2 gis | a1 | gis2 e | e fis |
e4 b2.~ | b2 \p r2 | fis'1 \pp ( | e2) r2 |
a,1 ( | gis2 ) b | gis' e | gis2 r \bar "|." 
}
>>
}
>>


maingauche = 

<<
\relative c {
\clef  bass \key e \minor \time 2/2  

<< {  g'1 \( | fis4 a c  \) r4 | e,2 \( g | a4 ais b \) r | 
g2 \( c | g a \) | g \( c | g a \) | fis4 \( e dis e |
b4 \( b' c! a \) |  < b d! f! >2 b4 \( f'!~  | f! e d c \) | c (b) e, \( d'~ | d c b a \) |  
a4 \( g \) e bes'~ | bes a fis c'~ | c b2 ^\markup \italic Dim. \( a4 | g4 \) \( b e, fis \) |


 g1 \( | fis4 a c  \) r4 | e,2 \( g | a4 ais b \) r | 
g2 \( c | g a \) | g \( c | g a \) | fis4 \( e dis e |
r4 \( b' c! a \) |  b,1 | c2~ c4. d8 | 
e1 | a,2~ a4. b8 | c2 \( e | d fis \) |

b,1 \( | e4 \) r4 r2 | 
\key e \major 

b'2 cis | b gis4. a8 |
b2 gis | b gis4. a8 | b2 gis | b2 cis |
b2. gis4 | a1 | b2 gis | g fis |
<e gis!>2 <dis a'>2 | gis2 r2 | b2 gis4. a8 | b2 <gis cis>2 | 
 b2 gis4. a8 | b2 <gis cis>2 | b2 cis | b <b cis> |
<b dis> <b cis> | dis1 | d1 | cis2 c |
b4 gis a2 | gis e2 | gis1~ | gis2 r |
b,1~ | b2 r | R1 | b'2 r \bar "|."
}

\\

{  e,1~  | e2~  e4 r | e,2 g | a4 ais b r | 
g2 \( c | g a \) | g \( c | g a \) | fis4 \( e dis e |
b'2 \) r  | b'2 g | c2 r2 | r2 e,2 | a2 r2 |
c,2 e | d fis | b, b | e4 b cis dis |

e1~  | e2~  e4 r | e,2 g | a4 ais b r | 
g2 \( c | g a \) | g \( c | g a \) | fis4 \( e dis e |
b'2~ \) b4 r4   |   b,1 | c2~ c4. d8 | 
e1 | a,2~ a4. b8 | c2 \( e | d fis \) |

b,1 \( | e4 \) r4 r2 | 

e'1 | e1~|
e1 | e1~ | e2 cis | gis'1 |
<gis dis'>2 <e cis'> | b1 | e1~ | e2 fis |
b,1 | e2 r | e1~ | e | 

e1~ | e | e2 cis | gis' gis |
gis e | b1 | e2 ( gis | g fis |
 b,1 ) ( | e,2 ) e'~ | e dis | cis gis~ |
gis \< fis \> | e2 \! r | R1 | e'2 r \bar "|."
}

>>
}
>>

voix =
<<
\relative {
\clef  treble \key e \minor \time 2/2  
\set Score.skipBars = ##t
R1*18

 b'2 \p  ^\markup \bold {a Tempo }  d4 c | a2 fis4  r4 |  g2  b4 b | a4 ( g ) fis  r | 

 b2   g4. a8 | b2 e,  | b'  g4 ( a ) | b g e2  | 
a4  c8 c  a4. g8 | fis2~ fis4  r | 

g4 ^\markup {Poco Cresc.   } \< ( f' ) e d  | g,2  g4 r |  gis4 ( d' ) c b  | e,2 e4  r \! |

e4  ^\markup {Cresc.   }  ( bes' ) a ( g ) | fis! c' b! a  | a \f ( g2 ^\markup {Dim.} ^\markup \italic {Poco rit.}  fis4 ) | e2    r2 |

\key e \major 

b'2 ^\markup \bold {a Tempo} ^\markup \italic dolce cis4 gis | gis (fis) e r | 
b'2  e4 (gis,) | gis (fis) e r | b'2 ^\markup \italic Cresc.  e4 e | dis (b) gis r | 
dis'4. dis8 e4. cis8 | fis1 \f | fis4 (d) cis b | e ^\markup \italic Dim. (cis) b (a) |
gis b b4. (a8)| gis2 \p r | r1 | b2 ^\markup \italic Dolce. cis4 gis | 

| gis (fis) e r | b'2  e4 (gis,) | gis (fis) e r 
| b'2 ^\markup \italic Cresc.  e4 e | dis (b) gis r | 
dis' \f fis b, a | gis fis' e d | cis (e) ^\markup \italic Dim. d (c) |
b ^\markup \italic Rit. gis gis (fis) | e2 \p ^\markup \bold {a Tempo} r | gis1 \pp | gis2 r | b1 \< | b2 \> r \!| R1*2 \bar "|."

}

\addlyrics {
A -- ve Ma  -- ri  -- a gra  --  ti  --  a ple  --  na 
Do -- mi -- nus  te -- cum be  -- ne  -- dic -- ta tu
in mu -- li -- e -- ri -- bus
et  be  -- ne  -- dic  -- tus et  be  -- ne  -- dic  -- tus 
fruc  -- tus ven -- tris tu  -- i Je -- sus

Sanc -- ta Ma -- ri -- a,
Ma -- ter De  -- i, O -- ra pro no -- bis
Pec -- ca -- to -- ri -- bus, nunc et in ho -- ra
mor -- tis nos -- trae

Sanc -- ta Ma -- ri -- a,
Ma -- ter De  -- i, O -- ra pro no -- bis
Pec -- ca -- to -- ri -- bus, nunc et in ho -- ra
mor -- tis nos -- trae
A -- men A -- men
}
>>

\score { 

<< 
\new Staff \voix
\new PianoStaff
<<
\new Staff \maindroite
\new Staff \maingauche
>>
>> 

\layout{}

\midi {
 \context {
  \Score
  tempoWholesPerMinute = #(ly:make-moment 50 2)
 }
}

}

