
\version "2.18.2" 


\paper{ 
#(define page-breaking ly:page-turn-breaking) 
#(define first-page-number 2)

} 





allemande =  { 

\clef treble 
\key a \minor 
\time 4/4
    \repeat volta 2 {
    r16 e''16 a''16 gis''16 a''16 c'''16 a''16 e''16 a'16 e''16 a''16 gis''16 a''16 c'''16 a''16 e''16 |
    a'16 c''16 e''16 f''16 gis'16 f''16 e''16 d''16 c''16 e''16 gis''16 a''16 e'16 d''16 c''16 b'16 |
    a'16 c''16 e''16 f''16 gis'16 f''16 e''16 d''16 c''16 e''16 gis''16 a''16 e'16 d''16 c''16 b'16 |
    a'16 c''16 gis'16 a'16 f'16 d''16 gis'16 a'16 e'16 c''16 gis'16 a'16 d'16 c''16 b'16 a'16 |
    gis'16 e'16 gis'16 b'16 e''16 gis''16 b''16 d'''16 f''16 d'''16 b''16 gis''16 e''16 d''16 c''16 b'16 |
    c''16 a'16 c''16 e''16 a''16 c'''16 e'''16 f''16 g''16 bes''16 g''16 e''16 c''16 bes'16 a'16 g'16 |
    a'16 f'16 a'16 c''16 d''16 f''16 a''16 c''16 b'16 g'16 b'16 d''16 e''16 g''16 b''16 d''16 |
    c''16 a'16 c''16 e''16 f''16 a''16 c'''16 e''16 d''16 b'16 d''16 fis''16 g''16 b''16 d'''16 f''16 |
    e''16 g''16 c'''16 b''16 c'''16 e'''16 c'''16 g''16 c''16 g''16 c'''16 b''16 c'''16 e'''16 c'''16 g''16 |
    c''16 g''16 bes''16 a''16 bes''16 e'''16 bes''16 g''16 c''16 g''16 bes''16 a''16 bes''16 e'''16 bes''16 g''16 |
    cis''16 g''16 bes''16 a''16 bes''16 e'''16 bes''16 g''16 cis''16 g''16 e''16 cis''16 a'16 g'16 f'16 e'16 |
    d'16 g''16 f''16 e''16 f''16 a''16 f''16 d''16 b'16 gis'16 b'16 d''16 e''16 d''16 c''16 b'16 |
    c''16 e''16 a''16 gis''16 a''16 c'''16 a''16 fis''16 dis''16 b'16 dis''16 fis''16 b''16 a''16 g''16 fis''16 |
    g''16 fis''16 e''16 g''16 a'16 e''16 g''16 c'''16 fis''16 e''16 d''16 fis''16 g'16 d''16 fis''16 b''16 |
    e''16 d''16 c''16 e''16 fis'16 e''16 fis''16 a''16 dis''16 b'16 c''16 a'16 dis'16 c''16 b'16 a'16 |
    g'16 e''16 f''16 d''16 gis'16 f''16 e''16 d''16 a'16 fis''16 g''16 e''16 ais'16 g''16 fis''16 e''16 |
    dis''16 b''16 gis''16 d''16 cis''16 a''16 fis''16 c''16 b'16 g''16 e''16 bes'16 a'16 f''16 dis''16 a'16 |
    g'16 e''16 c''16 a'16 fis'16 c''16 a'16 fis'16 dis'16 fis'16 a'16 c''16 b'16 a''16 g''16 fis''16 |
    }
    \alternative {
    	{ g''16 fis''32 e''32 b''16 c'''16 fis''8. e''16 e''2 | }
	{ g''16 fis''32 e''32 b''16 c'''16 fis''8. e''16 e''16 b'16 c''16 a'16 b'16 g'16 a'16 b'16 | }
 }

    e'16 b'16 e''16 dis''16 e''16 g''16 e''16 b'16 fis'16 b'16 e''16 dis''16 e''16 g''16 e''16 b'16 |
    e'16 g'16 b'16 c''16 dis'16 c''16 b'16 a'16 g'16 b'16 dis''16 e''16 b'16 a'16 g'16 fis'16 |
    e'16 g'16 b'16 c''16 dis'16 c''16 b'16 a'16 g'16 b'16 dis''16 e''16 b'16 a''16 g''16 fis''16 |
    e''16 g''16 dis''16 e''16 b''16 gis''16 d''16 e''16 c''16 a''16 dis''16 e''16 gis'16 f''?16 e''16 d''16 |
    a'16 c''16 gis'16 a'16 e''16 cis''16 g'16 a'16 f'16 d''16 gis'16 a'16 cis''16 bes''16 a''16 g''?16 |
    f''16 a'16 d''16 cis''16 d''16 f''16 d''16 a'16 d'16 a'16 d''16 cis''16 d''16 f''16 d''16 a'16 |
    d'16 a'16 c''16 b'16 c''16 fis''16 c''16 a'16 d'16 a'16 c''16 b'16 c''16 fis''16 c''16 a'16 |
    d'16 c''16 fis''16 e''16 d''16 c''16 b'16 a'16 e'16 d''16 c''16 b'16 fis'16 e''16 d''16 c''16 |
    b'16 d''16 g''16 fis''16 g''16 b''16 g''16 d''16 g'16 d''16 g''16 fis''16 g''16 b''16 g''16 d''16 |
    g'16 d''16 f''16 e''16 f''16 b''16 f''16 d''16 g'16 d''16 f''16 e''16 f''16 b''16 f''16 d''16 |
    g'16 f''16 b''16 a''16 g''16 f''16 e''16 d''16 a'16 g''16 f''16 e''16 b'16 a''16 g''16 f''16 |
    e''16 g''16 e''16 c''16 bes'16 a'16 bes'16 g'16 a'16 b'16 cis''16 d''16 e''16 f''16 g''16 e''16 |
    f''16 a''16 f''16 d''16 c''?16 b'16 c''16 a'16 b'16 cis''16 dis''16 e''16 fis''16 gis''16 a''16 fis''16 |
    gis''16 b''16 gis''16 e''16 d''16 c''16 d''16 b'16 c''16 e''16 gis''16 a''16 gis'16 f''16 e''16 d''16 |
    a'16 c''16 e''16 f''16 e'16 d''16 c''16 bes'16 f'16 a'16 cis''16 d''16 a'16 g''16 f''16 e''16 |
    d''16 f''16 cis''16 d''16 a''16 fis''16 c''16 d''16 b'16 gis''16 e''16 f''16 a''16 f''16 cis''16 d''16 |
    gis'16 f''16 cis''16 d''16 b''16 a''16 gis''16 fis''16 e''16 d''16 c''16 b'16 a'16 gis'16 fis'16 e'16 |
    d''16 b'16 c''16 e''16 a'16 b'16 c''16 d''16 e''16 fis''16 gis''16 a''16 b''16 gis''16 a''16 c'''16 |
    dis''16 fis''16 c'''16 b''16 e''16 gis''16 c'''16 b''16 fis''16 a''16 c'''16 b''16 b'16 c'''16 b''16 a''16 |
    gis''16 e''16 f''16 e''16 a''16 e''16 f''16 e''16 b''16 e''16 f''16 e''16 d''16 f''16 e''16 d''16 |
    c''16 a'16 c''16 e''16 a''16 g''16 f''16 e''16 f''16 a''16 f''16 d''16 d'''16 c'''16 b''16 a''16 |
    gis''16 e'''16 cis'''16 g''16 fis''16 d'''16 b''16 f''16 e''16 c'''16 a''16 ees''16 d''16 bes''16 gis''16 d''16 |
    c''16 a''16 f''16 d''16 b'16 f''16 d''16 b'16 gis'16 b'16 d''16 f''16 e''16 d''16 c''16 b'16 |
    c''16 e''16 a''16 c''16 b'16 a'16 e'16 gis''16 a''16 a'16 g'16 e'16 f'16 a''16 e'16 g''16 |
    d'16 f''16 e''16 cis''16 d''16 bes''16 c''16 a''16 gis''16 e''16 d''16 b'16 c''16 e'''16 b'16 d'''16 |
    a'16 c'''16 d''16 b''16 e''16 a''16 b''16 gis''16 a''16 e'16 a'16 c''16 e''16 a'16 c''16 e''16 |
    a''16 e''16 a''16 c'''16 e'''16 a''16 c'''16 e'''16 a'''2\fermata \bar "||"

 }


corrente =  { 

\clef treble 
\key a \minor 
\time 3/4
    \repeat volta 2 {
    \partial 8
    e''8 |
    a'16 ( b'16 c''16 d''16 e''8 fis''16  gis''16) a''8 b''8 |
    c'''8 a'8 g'4 b''4 |
    f'8 a''16 gis''16 a''8 e'8 d'8 b''8 |
    gis''4.\trill b''16 a''16 gis''16 fis''16 e''16 d''16 |
    c''16 d''16 e''16 c''16 a'8 c'''16 b''16 a''16 g''?16 f''?16 e''16 |
    d''16 e''16 f''16 d''16 b'8 d'''16 c'''16 b''16 a''16 g''16 f''16 |
    e''16 f''16 g''16 e''16 c''16 d''16 e''16 c''16 f''16 g''16 a''16 f''16 |
    d''16 e''16 f''16 d''16 b'16 c''16 d''16 b'16 e''16 f''16 g''16 e''16 |
    c''16 d''16 e''16 c''16 a'16 b'16 c''16 a'16 d''16 e''16 f''16 d''16 |
    b'4.\trill g'16 a'16 b'16 c''16 d''16 e''16 |
    f''8 gis'16 a'16 b'8 d''8 e''16 d''16 c''16 b'16 |
    c''16 b'16 a'16 e''16 c''16 b'16 a'16 e''16 a''16 gis''16 a''16 c''16 |
    dis'16 c''16 a''16 a''16 dis'16 c''16 a''16 a''16 b'16 a''16 g''?16 fis''16 |
    g''16 fis''16 e''16 b''16 g''16 fis''16 e''16 b''16 c'''16 b''16 c'''16 e''16 |
    fis'16 d''16 c'''16 c'''16 gis'16 d''16 b''16 d''16 gis'16 d''16 c''16 b'16 |
    a'16 ( b'16 c''16  e''16) a'16 ( b'16 c''16  e''16) a''16 b''16 c'''16 a''16 |
    dis'''4. a'16 c''16 b'16 a'16 g'16 fis'16 |
    g'16 b'16 e''16 b''16 a''16 g''16 fis''16 e''16 g''16 fis''16 e''16 dis''16 |
    e''8 ais'16 b'16 cis''8 e''8 fis''16 e''16 dis''16 cis''16 |
    dis''8 fis''16 g''16 a''8 fis''8 e''16 dis''16 cis''16 b'16 |
    a'16 fis'16 g'16 b'16 e''16 g''16 b''16 e''16 b'8 dis''8 |
    e''16 b'16 c''16 a'16 g'16 e''16 fis'16 dis''16   e'8
    }
    \repeat volta 2 {
    b'8 |
    e'16 fis'16 gis'16 a'16 b'16 c''16 d''16 e''16 f''?8 e''16 d''16 |
    c''8 a'8 c'''4 g'?4 |
    fis'8 c'''16 b''16 c'''8 e'8 d'8 c'''8 |
    b''16 c'''16 d'''16 b''16 g''4 ~ g''16 f''16 e''16 d''16 |
    c''16 b'16 a'16 c''16 f''16 g''16 a''16 f''16 d''16 e''16 f''16 d''16 |
    c''16 b'16 a'16 g'16 e''16 f''16 g''16 e''16 c''16 d''16 e''16 c''16 |
    a'16 g'16 f'16 a'16 d''16 e''16 f''16 g''16 a''16 b''16 c'''16 a''16 |
    f''16 e''16 f''16 d''16 b'16 a'16 b'16 g'16 f'16 e'16 f'16 d'16 |
    e'16 c''16 g''16 g''16 e'16 c''16 g''16 c''16 a''16 c''16 bes''16 c''16 |
    f'16 c''16 a''16 f''16 e''16 d''16 c''16 bes'16 a'16 g'16 f'16 e'16 |
    fis'16 d''16 a''16 a''16 fis'16 d''16 a''16 d''16 b''16 d''16 c'''16 d''16 |
    g'16 d''16 b''16 g''16 f''16 e''16 d''16 c''16 b'16 a'16 g'16 f'16 |
    e'16 f'16 g'16 c''16 e''16 c''16 b'16 c''16 g'16 b'16 c''16 e''16 |
    f'16 g'16 a'16 c''16 e''16 c''16 b'16 c''16 a'16 b'16 c''16 e''16 |
    g'16 a'16 b'16 c''16 e''16 c''16 b'16 c''16 b'16 c''16 d''16 e''16 |
    a'16 b'16 c''16 e''16 f''16 a''16 f''16 e''16 d''16 f''16 d''16 c''16 |
    b'16 c''16 d''16 f''16 g''16 d'''16 b''16 a''16 g''16 b''16 g''16 f''16 |
    e''16 g''16 e''16 d''16 c''16 e''16 c''16 b'16 a'16 c''16 a'16 g'16 |
    f'16 e''16 a''16 d''16 e''16 b'16 c''16 fis'16 g'16 c''16 g'16 b'16 |
    dis'16 c''16 a''8 ~ a''16 c'''16 b''16 a''16 g''16 fis''16 e''16 dis''16 |
    b''16 a''16 c'''16 b''16 a''16 g''16 fis''16 e''16 b'8 dis''8 |
    e''4 ~ e''16 fis''16 g''16 a''16 bes''16 a''16 bes''16 g''16 |
    cis''16 d''16 e''16 f''?16 g''16 f''16 g''16 e''16 a'16 cis''16 e''16 g''16 |
    f''8 d'16 e'16 f'16 a'16 d''16 e''16 f''16 e''16 f''16 d''16 |
    gis'16 a'16 b'16 c''16 d''16 c''16 d''16 b'16 e'16 gis'16 b'16 d''16 |
    c''16 b'16 a'16 b'16 c''16 e''16 a''16 b''16 c'''16 b''16 c'''16 a''16 |
    dis''16 e''16 fis''16 g''16 a''16 g''16 a''16 fis''16 b'16 dis''16 fis''16 a''16 |
    gis''16 a''16 b''16 gis''16 e''16 gis''16 d''16 gis''16 c''16 gis''16 b'16 gis''16 |
    c''16 e''16 a''16 e''16 c''16 e''16 b'16 e''16 c''16 e''16 a'16 e''16 |
    gis'16 e''16 b''16 e''16 gis'16 e''16 fis'16 e''16 gis'16 e''16 e'16 e''16 |
    a'16 e''16 c'''16 e''16 f''16 d''16 a''16 d''16 c'''16 d''16 a''16 d''16 |
    b''16 d''16 g'16 d''16 e''16 c''16 g''16 c''16 bes''16 c''16 g''16 c''16 |
    a''16 c''16 f'16 a'16 d''16 e''16 f''16 d''16 b'16 c''16 d''16 b'16 |
    gis''16 a''16 b''16 gis''16 e''16 fis''16 gis''16 b''16 d'''16 c'''16 d'''16 b''16 |
    c'''16 a''16 f''?16 e''16 d''16 c'''16 b''16 a''16 e''16 b''16 a''16 gis''16 |
    a''16 f''16 d''16 c''16 b'16 a''16 g''?16 f''16 cis''16 g''16 f''16 e''16 |
    f''16 d''16 bes'16 a'16 gis'16 f''16 e''16 d''16 a'16 e''16 d''16 c''?16 |
    d''16 b'16 gis'16 fis'16 e'16 fis'16 gis'16 a'16 b'16 c''16 d''16 b'16 |
    c''16 a'16 c''16 e''16 a''16 b''16 c'''16 a''16 e''16 a''16 b''16 gis''16 |
    a''16 e''16 f''16 d''16 c''16 a''16 b'16 gis''16 a'8\fermata
    }

} 


sarabande =  { 

\clef treble 
\key a \minor 
\time 3/4
   \repeat volta 2 {
    a'8 b'8 c''8 e''8 gis'8 a'8 |
    f'2 e'8 fis'8 |
    gis'8 a'8 b'8 d''8 f''8 e''8 |
    d''8 b'8 c''8 a'8 b'4 |
    a'8 b'8 c''8 e''8 gis'8 a'8 |
    f''4 e''4\prall d''4 |
    g'8 a'8 b'8 d''8 fis'8 g'8 |
    e''4 d''4\prall c''8 e''8 |
    g''8 e''8 d''8 c''8 b'8 c''8 |
    g'4 ~ g'16 a'16 b'16 c''16 d''16 e''16 f''8 |
    g''16 f''16 e''16 g''16 f''16 e''16 d''16 f''16 e''16 d''16 c''16 e''16 |
    a'4 ~ a'8 b'16 c''16 d''16 e''16 f''16 g''16 |
    a''16 g''16 f''16 a''16 g''16 f''16 e''16 g''16 f''16 e''16 d''16 f''16 |
    b''8 c'''16 d'''16 c'''16 b''16 a''16 g''16 f''16 e''16 f''16 d''16 |
    e''8 d''16 c''16   g''8[ a''8]   e''8[ d''16 c''16] |
    c''2. |
    }
    \repeat volta 2 {
    e''8 c''8 b'8 c''8 a''8 g''8 |
    e''2 d''8 e''8 |
    f''8 d''8 gis'8 e''8 b''8 d''8 |
    c''4 b'8 c''8 a'4 |
    a''8 g''16 f''16   e''8[ d''8]   cis''8[ d''8] |
    bes''8 a''16 g''16   f''8[ e''8]   a''8[ a'8] |
    f'16 a''16 g''16 f''16 e''8 d''8 cis''8 d''8 |
    g'8 bes''16 a''16 g''8 f''16 e''16 cis'''8 b''16 cis'''16 |
    d'''8 d''16 e''16 f''8 a''8 g''16 f''16 e''16 f''16 |
    d''8 a'8 f'8 d'8 f'8 a'8 |
    b'8 c''8 d''8 f''8 a''8 g''8 |
    f''8 e''8 d''8 c''8 gis''8 a''8 |
    gis'8 a'8 b'8 d''8 f''8 e''8 |
    d''8 c''8 b'8 a'8 a''8 c'''8 |
    d''8 c'''8 b''8 d'''8 gis''8 a''8 |
    c''8 c'''8 b''8 d'''8 gis''8 a''8 |
    b'8 f''16 e''16 d''8 c''8 b'8 c''16 d''16 |
    gis'4. fis'8 e'4 |
    a'8 b'8 c''8 e''8 gis'8 a'8 |
    f''4 e''4\prall d''4 |
    b'8 c''8 d''8 f''8 e''8 d''8 |
    b''8 gis''8 a''8 fis''8 gis''8 b''8 |
    e''8 c''8 b'8 a'8 gis'8 a'8 |
    e'4 ~ e'8 fis'16 gis'16 a'16 b'16 c''16 d''16 |
    e''16 d''16 c''16 e''16 d''16 c''16 b'16 d''16 c''16 b'16 a'16 c''16 |
    fis'4 ~ fis'8 gis'16 a'16 b'16 c''16 d''16 e''16 |
    f''16 e''16 d''16 f''16 e''16 d''16 c''16 e''16 d''16 c''16 b'16 d''16 |
    gis''8 a''16 b''16 a''16 gis''16 fis''16 e''16 d'''16 c'''16 d'''16 b''16 |
    c'''16 b''16 a''16 gis''16   a''8[ e''8]   c''8[ b'16 a'16] |
    a'2.\fermata |
    }

} 


bouree =  { 

\clef treble 
\key a \minor 
\time 2/4
     \repeat volta 2 {
    \partial 8
    e''8 |
    a'16 b'16 c''8 b'16 a'16 gis'8 |
    a'8 e''8 e''4 |
    e'16 f'16 e'16 e''16 e'16 f'16 e'16 d''16 |
    e'16 f'16 e'16 c''16 b'16 gis'16 e''8 |
    c''16 a'16 f''8 d''16 b'16 g''8 |
    e''16 c''16 g''8 g''4 |
    e''16 g''16 e''16 c''16 g'16 c''16 e''16 g''16 |
    d''16 g''16 d''16 b'16 g'16 b'16 d''16 f''16 |
    e''16 g''16 e''16 c''16 g'16 c''16 e''16 g''16 |
    d''16 f''16 d''16 b'16 g'16 b'16 d''16 g''16 |
    e'16 f'16 g'8 g'16 a'16 b'8 |
    c''16 b'16 c''8 bes''4 |
    f'16 c''16 f''8 a''16 g''16 a''8 |
    fis'16 a'16 d''8 c'''4 |
    b''8 a''16 g''16 d'''8 f''?8 |
    e''16 d''16 e''8 c'''8 e''8 |
    f''16 a''16 f''16 d''16 d''16 f''16 d''16 b'16 |
    b'16 d''16 b'16 g'16 g''8 f''8 |
    e''8 d''16 c''16 d''8 b'8 |
    c''4.
    }
    \repeat volta 2 {
    g''8 |
    e''16 d''16 c''8 c''16 d''16 e''8 |
    d''16 c''16 d''8 b''4 |
    gis'16 b'16 d''8 f''8 e''8 |
    d''16 c''16 b'16 c''16 a'8 cis''8 |
    d''16 e''16 f''8 e''16 d''16 cis''8 |
    d''16 a'16 a''8 a''4 |
    cis''16 d''16 e''8 d''16 cis''16 b'8 |
    cis''16 a'16 g''8 g''4 |
    f''16 a''16 f''16 d''16 a'16 d''16 f''16 a''16 |
    e''16 a''16 e''16 cis''16 a'16 cis''16 e''16 g''16 |
    f''16 a''16 f''16 d''16 a'16 d''16 f''16 a''16 |
    e''16 a''16 e''16 cis''16 a'16 cis''16 e''16 g''16 |
    f''16 g''16 a''8 a'8 d''16 cis''16 |
    d''8 a'8 d'8. f''16 |
    g'16 a'16 b'8 b'16 c''16 d''8 |
    d''16 e''16 f''8 f''4 |
    gis'16 a'16 b'8 b'16 c''16 d''8 |
    d''16 e''16 f''8 b''8 e''8 |
    c'''16 b''16 a''16 g''16 fis''16 e''16 dis''16 e''16 |
    g'16 b''16 a''16 g''16 fis''16 e''16 dis''16 e''16 |
    a'16 c'''16 b''16 a''16 g''16 fis''16 e''16 dis''16 |
    g'16 b''16 a''16 g''16 fis''16 e''16 dis''16 e''16 |
    c''16 b'16 c''8 a''8 fis''8 |
    dis''16 fis''16 b'8 g''8 e'8 |
    a'16 g''16 fis''8 b'16 e''16 dis''8 |
    e''8 b'8 e'8 e''16 f''?16 |
    g''16 f''16 g''8 a'16 cis''16 e''8 |
    g''16 e''16 f''8 d'8 d''16 e''16 |
    f''16 e''16 f''8 g'16 b'16 d''8 |
    f''16 d''16 e''8 c''8 a''8 |
      gis''8[ g''8 cis''8 g''8] |
      fis''8[ f''8 b'8 f''8] |
    e''8 f''16 e''16 d''16 c''16 b'16 a'16 |
    gis'8 fis'16 gis'16 e'8 e''8 |
    a'16 b'16 c''8 b'16 a'16 gis'8 |
    a'8 e''8 e''4 |
    e'16 f'16 e'16 e''16 e'16 f'16 e'16 d''16 |
    e'16 f'16 e'16 c''16 b'16 gis'16 e''8 |
    c''16 a'16 fis''8 d''16 b'16 gis''8 |
    e''16 c''16 a''8 a''8. e''16 |
    d''16 c''16 b'16 a'16 e'8 a'16 gis'16 |
    a'16 c''16 e''8 e''16 dis''16 e''8 |
      a''8[ d''?8 cis''8 g''8] |
      fis''8[ c''?8 b'8 f''8] |
    e''8 f''16 e''16 d''16 c''16 b'16 a'16 |
    gis'16 a'16 b'16 gis'16 e'16 fis'16 gis'16 a'16 |
    b'16 gis'16 b'16 d''16 d''16 b'16 d''16 f''16 |
    f''16 d''16 f''16 gis''16 gis''16 b''16 e''8 |
    c''8 b'16 a'16 c''16 b'16 a'16 gis'16 |
    a'4.\fermata
    }

} 


\book{

  \header {

  title = "Partita in a minor"
  subtitle = "for Solo Flute"
  composer = "J. S. Bach"
  editor = "J. Shapiro"
%  arranger = "arr: J. Shapiro"
  enteredby = "JS"

%  opus = "BWV 1013"

  license = "Public Domain"
  enteredby = "js"
  source = "IMSLP. Manuscript, n.d.(ca.1722-23)"


  % Mutopia stuff
	mutopiatitle = "Partita in a minor"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV 1013"
    mutopiainstrument = "Flute"
	mutopiadate = "1722-1723"
    style = "Baroque"
    maintainer = "Jacob Shapiro"
    maintainerEmail = "js@yashi.org"
    maintainerWeb = "http://yashi.org"
    footer = "Mutopia-2017/10/31-1528"
    copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
    tagline = ##f
  }
  
  \paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.padding = #2
  }

\score { 
	\new Staff 

    \allemande
\midi {}
\layout {}

\header { piece = "Allemande"
opus = "BWV 1013" }
	} 





\score { 
	\new Staff 

    \corrente
\midi {}
\layout {}

\header { piece = "Corrente"
}
	} 





\score { 
	\new Staff

    \sarabande

\midi {}
\layout {}
\header { piece = "Sarabande" 
}
	} 
\score { 
	\new Staff 

    \bouree
\midi {}
\layout {}

\header { piece = "Bourée Angloise"
}
	} 


}


