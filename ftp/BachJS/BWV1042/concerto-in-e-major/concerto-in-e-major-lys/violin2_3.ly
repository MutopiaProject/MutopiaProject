\version "2.16.0"
%Violin 2, 3rd movement

violinCDThemeBody =  { % first bar intentionally missing!
    %{ gis'4 r8 | %} b8 a b |
    b4 r8 | b cis dis |
    e b ais | b fis gis |
    a fis e | dis fis dis |
    b b' b | cis gis a |
    b d b | gis a b |
    a cis cis | b b b |
    b cis b | b4. |
}

violinCDThemeB =  \relative c' { % without an "\f" at the start
    gis'4 r8 | \violinCDThemeBody
}

violinCDThemeC =  \relative c' { % with an "\f" at the start
    gis'4\f r8 | \violinCDThemeBody
}

violinCDa =  \relative c' {
    R4. * 16 |
}

violinCDb =  \relative c' {
    e8\p( e  e) | gis( gis  gis) |
    a( a  a) | gis( bis  bis) |
    cis4. ~ | cis |
    b ~ | b4 gis8 |
    gis( gis  gis) | gis( gis  gis) |
    gis( gis  gis) | bis( bis  bis) |
    cis( cis  cis) ~ | cis cis16(  b) a8 |
    gis gis fis | e4. |
}

violinCDc =  \relative c' {
    b'4.\p | d |
    cis8 b b | cis4 r8 |
    b4. ~ | b8 cis gis |
    e a ais | b4 r8 |
    a4. ~ | a8 gis b16(  a) |
    b4. ~ | b8 a cis16(  b) |
    cis8 fis r | e gis, r |
    cis d b | cis4 r8 |
}

violinCDd =  \relative c' {
    gis'8\p b a | gis gis4 ~ |
    gis8 a b | a4 r8 |
    ais cis b | ais ais4 ~ |
    ais8 b cis | b4 r8 |
    r8 fis16 e fis8 | r e16 dis e8 |
    r fis gis | gis e r |
    r fisis16 gis fisis8 | r gis16 ais gis8 |
    r cis, dis | dis dis r |
    
    b'4. ~ | b8 gis eis |
    a4. ~ | a8 fis dis |
    gis4. ~ | gis |
    cis | ais |
    r8 b dis | r ais cis |
    r b dis | dis4 r8 |
    fisis,4 r8 | gis4 r8 |
    a b cis | fis,4 r8 |    
}

violinCD =  {
    \violinCDThemeB
    \violinCDa
    \violinCDThemeC
    \violinCDb
    \violinCDThemeC
    \violinCDc
    \violinCDThemeC
    \violinCDd
    \violinCDThemeC
    \bar "|."
}
