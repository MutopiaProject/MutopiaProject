%Viola, 3rd movement

viola_3_theme_body = \notes { % first bar intentionally missing!
    %{ b4 r8 | %} b8 dis gis |
    fis4 r8 | fis e fis |
    b,4 e8 | fis4 e8 |
    dis fis b, | b8. cis16 b a |
    gis8 e' gis | gis4 fis8 |
    e b gis | e4. |
    e'8 fis fis | fis fis fis |
    e e dis | gis4. |
}

viola_3_theme1 = \notes \relative c' { % without an "\f" at the start
    b4 r8 | \$viola_3_theme_body
}

viola_3_theme2 = \notes \relative c' { % with an "\f" at the start
    b4-\f r8 | \$viola_3_theme_body
}

viola_3a = \notes \relative c' {
    R4. * 16 |
}

viola_3b = \notes \relative c' {
    cis8-\p( cis )cis | e( e )e |
    fis( fis )fis | gis( gis )gis |
    cis, e gis | fis a cis |
    b, dis fis | e gis b |
    cis,( cis )cis | bis( bis )bis |
    cis( cis )cis | dis( dis )dis |
    e( e )e | fis( fis )fis |
    gis( gis )gis | cis,4. |
}

viola_3c = \notes \relative c' {
    gis'4.-\p ~ | gis |
    a8 a gis | a4 r8 |
    a4. | gis8 a b |
    cis cis, fis | fis4 r8 |
    dis e fis | b,4 r8 |
    eis fis gis | cis,4 r8 |
    fis a r | e b' r |
    a a e | e4 r8 |
}

viola_3d = \notes \relative c' {
    e8-\p e, e' | e e, e' |
    e e, e' | a,4 r8 |
    fis' fis, fis' | fis fis, fis' |
    fis fis, fis' | b,4 r8 |
    r dis16 cis dis8 | r cis16 bis cis8 |
    r bis dis | cis gis' r |
    r ais16 gis ais8 | r gis16 fisis gis8 |
    r fisis16 eis fisis8 | gis b, r |
    
    R4. * 8 |
    r8 gis' b | r fisis dis |
    r gis gis, | r fisis ais |
    ais4 r8 | ais4 r8 |
    b cis dis | gis,4 r8 |
}

viola_3 = \notes {
    \$viola_3_theme1
    \$viola_3a
    \$viola_3_theme2
    \$viola_3b
    \$viola_3_theme2
    \$viola_3c
    \$viola_3_theme2
    \$viola_3d
    \$viola_3_theme2
    \bar "|.";
}
