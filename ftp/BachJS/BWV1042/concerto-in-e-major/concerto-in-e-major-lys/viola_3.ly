\version "2.16.0"
%Viola, 3rd movement

violaDThemeBody =  { % first bar intentionally missing!
    %{ b4 r8 | %} b8 dis gis |
    fis4 r8 | fis e fis |
    b,4 e8 | fis4 e8 |
    dis fis b, | b8. cis16 b a |
    gis8 e' gis | gis4 fis8 |
    e b gis | e4. |
    e'8 fis fis | fis fis fis |
    e e dis | gis4. |
}

violaDThemeB =  \relative c' { % without an "\f" at the start
    b4 r8 | \violaDThemeBody
}

violaDThemeC =  \relative c' { % with an "\f" at the start
    b4\f r8 | \violaDThemeBody
}

violaDa =  \relative c' {
    R4. * 16 |
}

violaDb =  \relative c' {
    cis8\p( cis  cis) | e( e  e) |
    fis( fis  fis) | gis( gis  gis) |
    cis, e gis | fis a cis |
    b, dis fis | e gis b |
    cis,( cis  cis) | bis( bis  bis) |
    cis( cis  cis) | dis( dis  dis) |
    e( e  e) | fis( fis  fis) |
    gis( gis  gis) | cis,4. |
}

violaDc =  \relative c' {
    gis'4.\p ~ | gis |
    a8 a gis | a4 r8 |
    a4. | gis8 a b |
    cis cis, fis | fis4 r8 |
    dis e fis | b,4 r8 |
    eis fis gis | cis,4 r8 |
    fis a r | e b' r |
    a a e | e4 r8 |
}

violaDd =  \relative c' {
    e8\p e, e' | e e, e' |
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

violaD =  {
    \violaDThemeB
    \violaDa
    \violaDThemeC
    \violaDb
    \violaDThemeC
    \violaDc
    \violaDThemeC
    \violaDd
    \violaDThemeC
    \bar "|."
}
