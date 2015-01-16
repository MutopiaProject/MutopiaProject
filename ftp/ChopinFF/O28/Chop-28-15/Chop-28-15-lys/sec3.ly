\version "2.18.2"
\include "defs.ly"

sIIInull =  {
    \repeat unfold 4 {\barRest|} \myBreak
    \repeat unfold 5 {\barRest|} \myBreak
    \repeat unfold 5 {\barRest|} \myBreak
}


sIIIrh =   \context Voice = "vIIIrh" {
    \relative f''{
        \key df \major

                                % 76 - 79
        f8.\( df16 af2 bf4 |
        c2. df4 |
        \stemUp
        ef8. f16 gf2 f4 |
        f4. ef8 df8. d16 \tupletNumberDown \tuplet 10/4 { ef16( f ef d ef e f af g gf) } |

                                % 80 - 83
        \stemNeutral
        f8. df16 af2 bf4 |
        c4\) r r
        bf'^>(~ |
        bf af gf c, |
        f ef df bf |

                                % 84 - 87
        << { <gf ef>1( | f) | <ef gf>1 | <ef gf> } \\
           \context Voice = "vIIIrhLOWER" {
               \stemDown\slurDown\tieDown
               bf2( c | df)~ df8[ df] ef8.[ df16] | df4 c bf' c, | c1_>
           } >> |

                                % 88 - 89
        \override TextScript.staff-padding = #0
        <df f>1 |
        \revert TextScript.staff-padding
        <af df f>)\fermata |
    }
}

sIIIlh =  \relative df {
    \key df \major

    \stemDown
                                % 76
    <<
        \stemDown
        { df8[ af' \ohh<df f> af] af af af af } \\
        { s4 <df f>2 s4 }
    >> |

                                % 77
    <<
        \stemDown
        { \ohh<ef gf>8 af, af af bf af <df f> af } \\
        { <ef' gf>2. }
    >> |

                                % 78
    <<
        \relative gf' {
            \stemDown
            \beamFlattenB
            \csrh gf8[ \cslh af,16 \csrh af' \ohh bf8 \cslh af,]
            af8 af \csrh <df af'> \cslh af
        } \\
        \relative c'  { \stemDown \csrh \ignoreClash c2. } \\ % [mils] expect warning: Too many clashing notecolumns
        \relative af  { \stemUp   s8 af4 s4 af} \\
        \relative bf' { \stemDown s4 \csrh \olu bf2 } \\
    >> |

                                % 79
    <<
        \stemDown
        { \csrh \beamFlattenA af8 \cslh af, \csrh gf' \cslh af, \csrh \beamFlattenA <df f> \cslh af \csrh <c gf'> \cslh af } \\
        { \csrh \ignoreClash c2 } % [mils] expect warning: Too many clashing notecolumns
    >> |

                                % 80
    <<
        \stemDown
        { df,8[ af' \ohh<df f> af] af af af af } \\
        { s4 <df f>2 s4 }
    >> |

                                % 81 - 83
    <ef gf>8 af, af( af bf af) r4 |   % [mils] expect warning rest direction
    R1 |
    R1 |

                                % 84 - 87
    << { r8 af af af af af af af } \\
       { af,1 } >> |
    << { af'8 af af af af af af af } \\
       { df,1 } >> |
    << { af'8 af af af af af af af } \\
       { af,1 } >> |
    << { af'8 af af af af af af af } \\
       { af,1 } >> |

                                % 88 - 89
    << { af'8 \csrh \stemDown af af af af af af af } \\
       { df,2( af | df,1)\fermata } >>
}

sIIIsustain =  {
                                % 76 - 79
    \sd s8 s s s s \su s |
    \sd s s s \su s \sd s |
    \sud s \sud s s s \sud s |
    \sud s s s \sud s \sud s |
                                % 80 - 83
    \sud s s s s s \su s |
    \sd s s \su s s s s |
    \barRest |
    \barRest |

                                % 84 - 89
    \sd s8 s s \sud s s s |
    \sud s s s s s \su s |
    \sd s \sud s s s \su s |
    \sd s s s s s s s |
    \sud s s s s s s s |
    %% let the sustain come up by default
}


sIIIdyn =  \context Voice = "vIIIrh" {
                                % 76 - 79
    \posTxtScriptA \posDynTxtA s8\p_\markup{\italic "a tempo"} s s s s s s s |
    s\< s s s s s s s |
    s s s\! \posHairpinA s\> s s s s\! |
    \set crescendoText = \markup { \italic \smaller \whiteout "smorzando" }
    \set crescendoSpanner = #'text
    s s s s s s s s\< |

                                % 80 - 83
    \barRest |
    s s\!_\markup{\italic "slentando"} s s s s s\f s |
    \crescHairpin
    s\> s s s s s s s |
    s s s s s s s s\! |

                                % 84 - 89
    \context Voice = "vIIIrhLOWER" {
        \override Voice.DynamicLineSpanner.staff-padding = #0.1
        s\p s s s s s s s |
        s s s s s^\< s s s |
        s\! s s s s^\> s s s\! |
        s\pp s s s s s s s |
        \revert Voice.DynamicLineSpanner.staff-padding
    }
    s8^\markup{\italic "riten."} s s s s s s s |
    \barRest |
}
