\version "2.16.0"
%Solo violin, 2nd movement

soloViolinCa =  \relative c' {
    R2. * 6 |
    gis''2. ~ |
    gis ~ |
    gis16 cis,32( bis cis16  dis) e cis32( bis cis16  dis) e gis,( fis  gis) |
    bis,(  dis) fis(  gis) bis(  dis) fis(  a) gis16.\trill fis32 e16( fis32  dis) |
    e8 cis r16 e32( dis e16  gis) e cis( bis  cis) |
    fis, cis' a'8 ~ a16 dis,32( cis dis16  fis) dis b( ais  b) |
    e, b' gis'8 ~ gis16 gis32( fis gis16  b) gis e32( fis gis b  a16) |
    a(  fis) fis(  a) dis, fis( b,  gis') e8.\trill fis32 dis |
    e16 b32( a b16  e) e gis,32( fis gis16  b) b16 e,32( dis e16  gis) |
    bis4 ~ bis16 dis32( cis dis16  fis) fis dis( cis  bis) |
}

soloViolinCbLower = \context Staff  \relative c' {
    % Apparently you can't put two lines on the same staff if both lines
    % start with \stem(up|down|both directions.)
    cis'16 e32( dis e16  gis) gis cis32( bis cis16  gis) gis(  e) dis\trill(  cis)|
    \stemDown b4 ~ b16 gis'32( fis gis16  b) \stemNeutral b(  d) cis( d32  b) |
    cis16(  a) gis(  fis) fis( a32  fis) e16(  d) d( fis32  d) cis16\trill(  bis) |
    \stemDown bis4 \stemNeutral r8 fis' e16.\trill dis32 cis16( dis32  bis) |
}

soloViolinCbUpper = \context Staff  \relative c' {
    s2. |
    \stemUp eis'4 ~ eis16 s s8 s4 |
    s2. |
    \stemUp a8 gis s2 |
}

soloViolinCc =  \relative c' {
    cis'16 e32( dis e16  cis) a16 cis32( bis cis16  a) fis e' dis( e32  cis) |
    bis2\fermata r4 |
    e16\p(  dis) gis(  fis) e(  dis) cis(  bis) e(  dis) cis(  b) |
    a(  gis) cis(  b) a( gis fisis  gis) cis( bis e  dis) |
    dis4 ~ dis16 fisis fisis(  gis) gis4 ~ |
    gis16 e e(  cis) fisis,(  e') dis( e32  cis) b8\trill( ais16  gis) |
    gis( b32 ais b16  dis) b( gis32 fisis gis16  dis) gis,4 |
    b'4 ~ b16 cis32( dis e16  fis) gis( a32 b  a16) gis |
    b,4 ~ b16 b32( cis dis16  e) fis( gis32 a  gis16) fis |
    b,8 ais\trill ~ ais16 ais32( b cis16  dis) e( fis32 gis  fis16) e |
    dis( e32 fis  dis16) cis b( dis32 cis  b16) fis dis fis32( e dis cis  b16) |
    b'2. |

    b16 cis32( b a16 b32  gis) a16 fis32( gis a16  cis) fis a32( gis fis16  dis16)|
    bis dis fis8 ~ fis16 a32( gis  a16) fis32(  dis) bis'8.\trill bis16 |
    cis e32( dis  e16) cis bis(  cis) fisis,(  gis) dis(  e) bis(  cis) |
    cis, cis'32( dis e16  fis) gis e32( fis gis16  a) b e, d'8 ~ |
    d16 cis32( b cis16  a) fis a32( gis  a16) cis, e,( b'  a') gis |
    a,,(  cis) e(  gis) a(  cis) e(  gis) a4 ~ |
    a16 fis32( gis a16  fis) dis b32( cis dis16  b) fis(  a) b(  dis) |
    gis e32( fis gis16  e) cis a32( b cis16  a) e(  gis) a(  cis) |
    fis a32( gis fis16  e) dis fis32( e dis16  cis) bis a'( gis a32  fis) |
    e8\trill dis16(  cis) r e32( dis e16  gis) e(  cis) a(  gis) |
    fis( bis  a'8) r16 dis,32( cis dis16  fis) dis(  bis) cis(  dis) |
    e,( cis'  gis'8) r16 cis,32( bis cis16  e) cis(  b) a(  gis) |
    fis a32( b cis16  dis) e fis gis a dis, a( gis  fis) |
    e gis32( a b16  cis) dis e fis gis cis, gis( fis  e) |
    dis a'32( gis fis16  cis') bis dis32( e fis16  a) gis fis( e fis32  dis) |
    gis16( e  cis8)\trill ~ cis16 b d(  cis) fis(  eis) gis(  fis) |
    fis4 ~ fis16(  eis) a(  gis) b(  ais) cis(  bis) |
    bis fis32( gis  a8) ~ a16 gis32( fis  gis16) a dis,8.\trill cis16 |
    cis2 r4 |
    R2. * 6 |
    \bar "||"
}

soloViolinC =  {
    \soloViolinCa
    << \soloViolinCbLower \soloViolinCbUpper >>
    \soloViolinCc
}
