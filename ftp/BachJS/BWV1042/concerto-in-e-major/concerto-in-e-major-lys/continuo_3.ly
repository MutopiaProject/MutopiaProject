\version "2.16.0"
%Continuo, 3rd movement

continuoDThemeBody =  { % first and last bar intentionally missing!
    %{ e,4 r8 | %} gis8 fis e |
    dis4 r8 | dis8 cis b |
    e dis cis | b a gis |
    fis dis' e | b dis b |
    e, e' dis | cis b a |
    gis fis e | e' fis gis |
    a fis a | b cis dis |
    e a, b | %{ e, gis,\p b | %}
}

continuoDThemeB =  \relative c' {
    e,4 r8 | \continuoDThemeBody | e, gis,\p b |

}

continuoDThemeC =  \relative c' {
    e,4 r8 | \continuoDThemeBody | e, fis\p gis |
}

continuoDThemeD =  \relative c' {
    e,4\f r8 | \continuoDThemeBody | e, gis,\p b |
}

continuoDThemeE =  \relative c' {
    e,4\f r8 | \continuoDThemeBody | e, b e, |
}

continuoDThemeF =  \relative c' {
    e,4\f r8 | \continuoDThemeBody | e,4. |
}

continuoDa =  \relative c' {
    e,,4 r8 | e'8 gis e |
    cis e cis | fis ais fis |
    b,4 r8 | b' dis b |
    gis b gis | cis, eis cis |
    fis4 r8 | b, cis dis |
    e4 r8 | e cis e |
    ais, cis' b | ais fis e |
    dis e fis | b, b'16\f a gis fis |
}

continuoDb =  \relative c' {
    cis,4 r8 | R4. * 14 | r8 cis dis |
}

continuoDc =  \relative c' {
    e,8 gis fis | e4 r8 |
    a d, e | a,4 r8 |
    fis' dis! %{my hint%} b | e4 r8 |
    a, a' fis | b4 r8 |
    b,8 cis dis | e4 r8 |
    cis dis eis | fis4 r8 |
    fis4 r8 | gis4 r8 |
    a8 d,! e | a,4 r8 |
}

continuoDd =  \relative c' {
    R4. * 3 | a8\p e a, |
    R4. * 3 | b'8 fis b, |
    dis4 r8 | cis4 r8 |
    bis r gis | cis e cis |
    ais4 r8 | gis4 r8 |
    fisis r dis | gis b dis |

    gis eis cis | fis4. ~ |
    fis8 dis b | e4. ~ |
    e8 b' gis | e gis e |
    cis e cis | cis'8. e16 dis cis |
    b8 gis r | fisis dis r |
    b gis r | dis' dis, eis |
    fisis ais cis | e! fisis16 ais cis8 |
    b, cis dis | gis,4 r8 |
}

continuoD =  {
    \continuoDThemeB
    \continuoDa
    \continuoDThemeC
    \continuoDb
    \continuoDThemeD
    \continuoDc
    \continuoDThemeE
    \continuoDd
    \continuoDThemeF
    \bar "|."
}
