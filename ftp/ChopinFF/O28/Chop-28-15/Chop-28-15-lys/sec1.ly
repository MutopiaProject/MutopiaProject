sInull = \notes {
                                % section 1: 27 bars
    \repeat unfold 4 {\barRest|} \myBreak
    \repeat unfold 5 {\barRest|} \myBreak
    \repeat unfold 5 {\barRest|} \myBreak
    \repeat unfold 5 {\barRest|} \myBreak
    \repeat unfold 4 {\barRest|} \myBreak
    \repeat unfold 4 {\barRest|} \myBreak
}

sIrh = \notes \relative f'' {
    \clef treble
    \key df \major
    \time 4/4

                                % 1 - 4
    \once\override TextScript #'extra-offset = #'(-4 . 0)
    \once\override Slur #'attachment = #'(stem . stem)
    f8.^(^\markup{\hspace #4 \italic "con espressione e semplice"}^\markup{\bold\large Sostenuto} df16 af2 bf4 |
    c2. df4 |
    \stemUp
    ef8. f16 gf2 f4  |
    \override TupletBracket #'number-visibility = ##f
    \override TupletBracket #'bracket-visibility = ##f
    f4. ef8 df4 \acciaccatura ef8 \times 1/3 { ef8([ f ef } \times 1/4 { d8 ef f gf)] } |
    \revert TupletBracket #'number-visibility
    \revert TupletBracket #'bracket-visibility

                                % 5 - 8
    \stemBoth
    f8. df16 af2 bf4 |
    c2. df4 |
    \stemUp
    ef8. f16 gf2 f4 |
    f4. ef8 df4) \stemBoth c8( df |

                                % 9 - 12
    ef4 ef2 f4 |
    gf8 f ef df f2 |
    ef8 cf bf af bf4 \appoggiatura {cf8[ bf af]} bf8. cf16 |
    af4) ef'( df ff |

                                % 13 - 16
    ef4 ef2 f4 |
    gf8 f ef df f2~ |
    f8 df c bf c4 \appoggiatura {df8[ c bf]} c8 df |
    bf4) f'( ef gf |

                                % 17 - 19
    f8 df c bf c4 \appoggiatura {df8[ c bf]} c8. df16 |
    bf4) ef( f ef |
    f2. ef4 |

                                % 20 - 23
    \once\override Slur #'attachment = #'(stem . stem)
    f8.)( df16 af2 bf4 |
    c2. df4 |
    \stemUp
    ef8. f16 gf2 f4 |
    \override TupletBracket #'number-visibility = ##f
    \override TupletBracket #'bracket-visibility = ##f
    f4. ef8 df4 \times 1/4 { d8([ ef e f } \times 1/3 { af8 g gf)] } |
    \revert TupletBracket #'number-visibility
    \revert TupletBracket #'bracket-visibility

                                % 24 - 27
    \stemBoth
    f8. df16 af2 bf4 |
    c2. df4 |
    \stemUp
    ef8. f16 gf2) c,4^( |
    ef2) r2 |

}

sIlh = \notes \relative df {
    \clef bass
    \key df \major
    \time 4/4

    \stemDown
                                % 1
    <<
        \stemDown
        { df8[ af' \ohh<df f> af] af af <df f> af } \\
        { s4 <df f>2 s4 }
    >> |

                                % 2
    <<
        \stemDown
        { \ohh<ef gf>8 af, af af bf af <df f> af } \\
        { <ef' gf>2. }
    >> |

                                % 3
    <<
        \relative gf' {
            \stemDown
            \once\override Beam #'damping = #2
            \csrh gf8[ \cslh af,16 \csrh af' \ohh bf8 \cslh af,]
            af8 af \csrh <df af'> \cslh af
        } \\
        \relative c'  { \stemDown \csrh c2. } \\ % [mils] expect warning: Too many clashing notecolumns
        \relative af  { \stemUp   s8 af4 s4 af} \\
        \relative bf' { \stemDown s4 \csrh \olu bf2 } \\
    >> |

                                % 4
    <<
        \stemDown
        { \csrh af8 \cslh af, \csrh gf' \cslh af, \csrh <df f> \cslh af \csrh <c gf'> \cslh af } \\
        { \csrh c2 } % [mils] expect warning: Too many clashing notecolumns
    >> |

                                % 5
    <<
        \stemDown
        { df,8 af' \ohh <df f> af af af af af }\\
        { s4 <df f>2. }
    >> |

                                % 6
    <<
        \stemDown
        { \ohh<ef gf>8 af, af af bf af <df f> af } \\
        { <ef' gf>2. }
    >> |

                                % 7
    <<
        \relative gf' {
            \stemDown
            \once\override Beam #'damping = #2
            \csrh gf8[ \cslh af,16 \csrh af' \ohh bf8 \cslh af,]
            af8 af \csrh <df af'> \cslh af
        } \\
        \relative c'  { \stemDown \csrh c2. } \\ % [mils] expect warning: Too many clashing notecolumns
        \relative af  { \stemUp   s8 af4 s4 af} \\
        \relative bf' { \stemDown s4 \csrh \olu bf2 } \\
    >> |

                                % 8
    <<
        \stemDown
        { \csrh af8 \cslh af, \csrh ef' \cslh af, <df f> af <df f> af } \\
        { \csrh c2 } % [mils] expect warning: Too many clashing notecolumns
    >> |

                                % 9 - 12
    af,8 af' ef' af, <cf ef> af <df, cf' f> df' |
    <bf gf>8 df <bf gf'> df df, af' <df f> af |
    ef8 af <cf ef> af ef g <df' ef> g, |
    af,8 af' <cf ef> af <bf df> af <df ff> af |

                                % 13
    <<
        \stemDown
        { af,8 af' \ohh <cf ef> af af af <cf f> af } \\
        { s4 <cf ef>2 }
    >> |
                                % 14 - 16
    ef,8 gf <bf gf'> gf bf, f' <bf df f> f |
    f,8 f' <bf df f> f f, f' <a ef' f> f |
    bf,8 f' <df' f> f, <c' ef> f, <ef' gf> f, |

                                % 17 - 18
    <df' f>8 f, <bf df f> f <a ef'> f <ef' f> f, |
    bf,8 f' <c' ef> f, <df' f> f, <c' ef> f, |

                                % 19
    <<
        \stemDown
        { \ohh <df' f>8 f, f f <df' f> gf, <c ef> af } \\
        { <df f>2 s8 \stemUp gf,4 }
    >>

                                % 20
    <<
        \stemDown
        { df8 af' \ohh <df f> af af af <df f> af } \\
        { s4 <df f>2}
    >> |

                                % 21
    <<
        \stemDown
        { \ohh <ef gf>8 af, af af bf af <df f> af } \\
        { <ef' gf>2 }
    >> |

                                % 22
    <<
        \relative gf' {
            \stemDown
            \once\override Beam #'damping = #2
            \csrh gf8[ \cslh af,16 \csrh af' \ohh bf8 \cslh af,]
            af8 af \csrh <df af'> \cslh af
        } \\
        \relative c'  { \stemDown \csrh c2. } \\ % [mils] expect warning: Too many clashing notecolumns
        \relative af  { \stemUp   s8 af4 s4 af} \\
        \relative bf' { \stemDown s4 \csrh \olu bf2 } \\
    >> |

                                % 23
    \csrh <c af'>8 \cslh af \csrh <c gf'> \cslh af \csrh <df f> \cslh af \csrh <c gf'> \cslh af |

                                % 24
    <<
        \stemDown
        { df,8 af' \ohh <df f> af af af af af } \\
        { s4 <df f>2}
    >> |

                                % 25
    <<
        \stemDown
        { \ohh <ef gf>8 af, af af bf af <df f> af } \\
        { <ef' gf>2 }
    >> |

                                % 26
    <<
        \relative gf' {
            \stemDown
            \once\override Beam #'damping = #2
            \csrh gf8[ \cslh af,16 \csrh af' \ohh bf8 \cslh af,]
            af8 af \csrh ef' \cslh af,
        } \\
        \relative c'  { \stemDown \csrh c2. } \\ % [mils] expect warning: Too many clashing notecolumns
        \relative af  { \stemUp   s8 af4 s4 af} \\
        \relative bf' { \stemDown s4 \csrh \olu bf2 } \\
    >> |

                                % 27
    <<
        \stemDown
        \once\override Beam #'damping = #4
        { \csrh \ohh gf8 \cslh af, af af af af af af } \\
        { \csrh gf'2 } % [mils] expect warning: Too many clashing notecolumns
    >> |
}

sIsustain = \notes {
                                % 1 - 4
    \sd s8 s s s s \su s |
    \sd s s s \su s \sd s |
    \sud s \sud s s s \sud s |
    \sud s s s \sud s \sud \su |

                                % 5 - 8
    \sd s s s s s \su s |
    \sd s s s \su s \sd s |
    \sud s \sud s s s \sud s |
    \sud s s s \sud s s \su |

                                % 9 - 12
    \sd s s s \sud s \sud s |
    \sud s s s \sud s s s |
    \sud s s s \sud s s \su |
    \sd s s \su s s s s |

                                % 13 - 16
    \sd s s s s s \su s |
    \sd s s s \sud s s s |
    \sud s s s \sud s s s |
    \sud s s \su s s s s |

                                % 17 - 19
    \barRest |
    \sd s8 s \su s s s s |
    \sd s s \su s s s s |

                                % 20 - 23
    \sd s8 s s s s \su s |
    \sd s s s \su s \sd s |
    \sud s \sud s s s \sud s |
    \sud s s s \sud s \sud \su |

                                % 24 - 27
    \sd s s s s s \su s |
    \sd s s s \su s \sd s |
    \sud s \sud s s s s s |
    s s s s s s s \su |
}

sIdyn = \notes {
                                % 1 - 4
    s8\p s s s s s s s |
    s8\< s s s s s s s |
    s s s s\! s\> s s s |
    s s s s\! s s s s|

                                % 5 - 8
    \barRest |
    s8\< s s s s s s s |
    s s s\! s\> s s s s |
    s s s s\! s s s\p s |

                                % 9 - 12
    \barRest |
    \barRest |
    \barRest |
    \barRest |

                                % 13 - 16
    s8 s s\< s s s s\! s |
    s\> s s s\! s s s s |
    \barRest |
    \barRest |

                                % 17 - 20
    \barRest |
    s8 s s\< s s s s s |
    s\! s s\> s s s s\! s |
    s\p s s s s s s s|

                                % 21 - 24
    s8\< s s s s s s s |
    s s s\!\> s s s s s |
    s s s s\! s s s s |
    \barRest |

                                % 25 - 27
    s8\< s s s s s s s |
    s s s\! s\> s s s s |
    s\! s s s s s s s|
}
