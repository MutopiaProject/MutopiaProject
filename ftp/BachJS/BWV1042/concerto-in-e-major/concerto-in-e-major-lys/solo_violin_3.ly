\version "2.16.0"
%Solo violin, 3rd movement

soloViolinDThemeBody =  { % first bar intentionally missing!
    %{ e16(  fis gis  b) e8-. | %} e16(  dis) fis(  e) dis(  cis) |
    b( cis dis  fis) a8-. | a4. |
    gis16(  fis) a(  gis) fis(  e) | dis(  cis) e(  dis) cis(  b) |
    a(  gis) b(  a) gis(  a) | fis( e  fis) a gis fis |
    e16( fis gis  b) e8-. | e16(  dis) fis(  e) dis(  cis) |
    e,( fis gis  b) d8-. | d4. |
    cis16( e a gis fis  e) | dis(  cis) e(  dis) cis(  b) |
    gis'8-. a-. fis\trill | e4. |
}

soloViolinDThemeB =  \relative c' { % without a "tutti" at the start
    e16( fis gis  b) e8-. | \soloViolinDThemeBody
}

soloViolinDThemeC =  \relative c' { % with a "tutti" at the start
    e16-"Tutti"( fis gis  b) e8-. | \soloViolinDThemeBody
}

soloViolinDa =  \relative c' {
    b'16-"Solo" ( a gis e' b  a) | gis( fis e b' gis  fis) |
    e fis gis b dis  e | ais,,( fis' e' gis fis  e) |
    dis( cis  b) b' fis e | dis cis b fis' dis cis |
    b( cis dis fis ais  b) | eis,,( cis' gis' b ais  gis) |
    ais( b  cis) ais fis e | dis b dis fis b fis |
    gis( a b gis e  dis) | cis( dis e cis ais  gis) |
    fis( gis ais b cis dis e fis  gis) ais( b  ais) |
    b fis( dis b fis  ais) | b fis dis fis b,8 |
}    

soloViolinDb =  \relative c' {
    gis''16-"Solo"( fis e  a) gis fis | e( dis cis  bis) cis e |
    dis( e fis  a) fis dis | bis( cis dis  bis) gis fis |
    e( gis cis  dis) e cis | a( b cis  a) fis e |
    dis( fis b  cis) dis b | gis( a b  gis) e dis |
    cis e( gis cis dis  e) | bis, dis( gis dis' e  fis) |
    cis, gis'( cis e fis  gis) | dis, fis( bis dis fis  a) |
    gis fis e dis cis b | a  gis'[\p( fis e dis  cis)] |
    bis  fis'[\f e dis cis bis] | cis  gis[\p( fis e dis  cis)] |
}

soloViolinDcLower = \context Staff  \relative c' {
    gis'16-"Solo" b( e dis e  b) | \stemDown gis8 fis gis |
    a fis gis | a gis a |
    fis s s | e e e |
    a a ais | \stemNeutral dis16 cis( b cis dis  e) |
    fis dis b gis a8 ~ | a16 fis gis b e fis |
    gis eis cis a b8 ~ | b16 gis a cis fis gis |
    a fis e( cis  d) fis | b gis e( cis  d) b |
    cis e fis d b gis' | a e cis a gis fis |
}
    
soloViolinDcUpper = \context Staff  \relative c' {
    s4. | \stemUp b'16 e a, e' b e |
    cis e d e b e | cis e b e cis e |
    dis fis( a gis a  fis) | b, gis' cis, gis' d gis |
    cis, gis' cis, fis cis e | s4. |
    s4. * 8 |
}

soloViolinDd =  \relative c' {
    gis'16 fis e fis gis a |
    b gis32( a  b16) b32( cis  d16) b32( cis |
     d16) d32( e  fis16) d32( e  fis16) fis32( gis |
     a16) a32( gis  a16) e e32( d cis  b) |
    ais16( gis fis gis ais  b) |
    cis ais32( b  cis16) cis32( dis  e16) cis32( dis |
     e16) e32( fis  gis16) e32( fis  gis16) gis32( ais |
     b16) b32( ais  b16) fis fis32( e dis  cis) |
    bis16 fis'32( gis  a16) fis32\p( gis  a16) fis |
    cis\f fis32( gis  a16) fis32\p( gis  a16) fis |
    dis\f fis32( gis  a16) fis bis fis |
    e16( dis cis dis e  cis) |
    fisis cis32( dis  e16) cis32\p( dis  e16) cis |
    gis'\f cis,32( dis  e16) cis32\p( dis  e16) cis |
    ais'\f cis,32( dis  e16) cis ais dis |
    b( ais gis ais b  cis) |

    dis gis32( ais  b16) gis32( fis  eis16) cis |
    fis,( cis'  eis) b' a gis |
    cis, fis32( gis  a16) fis32( e  dis16) b |
    e,( b' dis) a' gis fis |
    b, e32( fis  gis16) gis32( fis  e16) e32( dis |
     cis16) cis32( dis  e16) e32( dis  cis16) cis32( b |
     a16) a32( b  cis16) cis32( b  a16) a32( gis |
     fisis16) e' dis4 ~ |
    dis16 b32( cis  dis16) gis dis b |
    ais fisis32( gis  ais16) cis ais fisis |
    dis b32( cis  dis16) gis dis b |
    ais ais32( b  cis4) ~ |
    cis16 fisis32( eis  fisis16) cis32( bisis  cis16) gis'32( fisis |
     gis16) cis,32( bis  cis16) ais'32( gis  ais16) b,32( ais |
     b16) gis' e cis ais gis'32( fisis |
     gis8.) b32( a! gis fis e  dis) |
}

soloViolinD =  {
    \soloViolinDThemeB
    \soloViolinDa
    \soloViolinDThemeC
    \soloViolinDb
    \soloViolinDThemeC
    << \soloViolinDcLower \soloViolinDcUpper >>
    \soloViolinDThemeC
    \soloViolinDd
    \soloViolinDThemeC
    \bar "|."
}
