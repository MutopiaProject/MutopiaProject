%Violin 1, 3rd movement

violin1_3_theme_body = \notes { % first bar intentionally missing!
    %{ e16(  fis gis )b e8-. | %} e16( )dis fis( )e dis( )cis |
    b( cis dis )fis a8-. | a4. |
    gis16( )fis a( )gis fis( )e | dis( )cis e( )dis cis( )b |
    a( )gis b( )a gis( )a | fis( e )fis a gis fis |
    e16( fis gis )b e8-. | e16( )dis fis( )e dis( )cis |
    e,( fis gis )b d8-. | d4. |
    cis16( e a gis fis )e | dis( )cis e( )dis cis( )b |
    gis'8-. a-. fis-\trill | e4. |
}

violin1_3_theme1 = \notes \relative c' { % without an "\f" at the start
    e16( fis gis )b e8-. | \$violin1_3_theme_body
}

violin1_3_theme2 = \notes \relative c' { % with an "\f" at the start
    e16-\f( fis gis )b e8-. | \$violin1_3_theme_body
}

violin1_3a = \notes \relative c' {
    R4. * 16 |
}

violin1_3b = \notes \relative c' {
    cis'8-\p( cis )cis | cis( cis )cis |
    cis( cis )fis | dis( dis )dis |
    e4. ~ | e |
    dis | e |
    e8( e )e | dis( dis )dis |
    e( e )e | fis( fis )fis |
    gis( gis )gis ~ | gis a16( )gis fis8 ~ |
    fis16 a gis8 dis-\trill | cis4. |
}

violin1_3c = \notes \relative c' {
    e'4.-\p ~ | e ~ |
    e8 fis e | e4 r8 |
    fis4. ~ | fis8 e d |
    cis fis e | dis4 r8 |
    fis4. ~ | fis8 e gis16( )fis |
    gis4. ~ | gis8 fis a16( )gis |
    a4 r8 | b4 r8 |
    e, fis gis | a4 r8 |
}

violin1_3d = \notes \relative c' {
    b'8-\p d cis | b d4 ~ |
    d8 cis b | cis4 r8 |
    cis e dis! | cis e4 ~ |
    e8 dis cis | dis4 r8 |
    r bis16 cis bis8 | r cis16 dis cis8 |
    r dis16 e fis dis | e8 cis r |
    r cis16 b cis8 | r b16 ais b8 |
    r ais16 b cis ais | b8 gis r |

    gis'4. ~ | gis8 eis cis |
    fis4. ~ | fis8 dis b |
    e4. ~ | e ~ |
    e ~ | e8 fisis,4-\trill |
    r8 dis' gis | r dis ais' |
    r dis, b' | ais16( )gis fisis( )eis dis( )cis |
    e!8 cis ais | cis ais fisis |
    b, cis dis | gis,4 r8 |
}

violin1_3 = \notes {
    \$violin1_3_theme1
    \$violin1_3a
    \$violin1_3_theme2
    \$violin1_3b
    \$violin1_3_theme2
    \$violin1_3c
    \$violin1_3_theme2
    \$violin1_3d
    \$violin1_3_theme2
    \bar "|.";
}
