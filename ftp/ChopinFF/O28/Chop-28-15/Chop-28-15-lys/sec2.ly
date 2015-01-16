\version "2.18.2"
\include "defs.ly"

sIInull =  {
    \repeat unfold 4 {\barRest|} \myBreak % 28 - 31
    \repeat unfold 4 {\barRest|} \myBreak % 32 - 35
    \repeat unfold 4 {\barRest|} \myBreak % 36 - 39
    \repeat unfold 5 {\barRest|} \myBreak % 40 - 44
    \repeat unfold 6 {\barRest|} \myBreak % 45 - 50
    \repeat unfold 5 {\barRest|} \myBreak % 51 - 55
    \repeat unfold 5 {\barRest|} \myBreak % 56 - 60
    \repeat unfold 5 {\barRest|} \myBreak % 61 - 65
    \repeat unfold 5 {\barRest|} \myBreak % 66 - 70
    \repeat unfold 5 {\barRest|} \myBreak % 71 - 75
}

% right-hand upper voice
sIIrhI =  {
    \relative gs {
        \key cs \minor
        \slurUp

                                % 28 - 31
        gs8^\markup{\bold\large "Poco più animato"}( gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |

                                % 32 - 35
        gs8 gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |
        gs8 <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'>) |

                                % 36 - 39
        <gs gs'>( <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> |
        <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> |
        <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> |
        <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> |

                                % 40 - 43
        <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> |
        <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> |
        <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> |
        <b ds gs b>_> gs gs gs gs gs gs gs) |

                                % 44 - 47
        gs8( gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |

                                % 48 - 51
        gs8 gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |
        gs8 \ignoreClash <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'>) |

                                % 52 - 55
        <gs gs'>( <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> |
        <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> |
        <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> |
        <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> <gs gs'> \ignoreClash <gs gs'> |

                                % 56 - 59
        <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> |
        <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> |
        <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> <b b'> |
        <b ds gs b>_> gs' gs gs gs gs gs gs) |

                                % 60 - 63
        <bs bs,>2( <cs cs,> |
        <ds cs ds,>2. <ds bs ds,>4 |
        <e ds e,>4 <e cs e,> <ds cs ds,> <ds bs ds,> |
        <cs cs,>1 |

                                % 64 - 67
        <bs, ds gs>2 <cs e gs>4 <as cs gs'> |
        <bs ds gs>4 <cs e gs> <as cs gs'> <cs e gs> |
        <cs e gs> <bs ds gs> <ds fs gs> <cs e gs> |
        <bs ds gs>1 |

                                % 68 - 71
        <bs ds bs'>2 <cs cs'> |
        <ds cs' ds>2. <ds bs' ds>4 |
        <e ds' e>4 <e cs' e> <ds cs' ds> <ds bs' ds> |
        <gs b cs>2 <gs a cs>4 <fs a cs> |

                                % 72 - 75
        <ds fs gs>2 <cs fs gs>4 <cs e as> |
        <cs e as>2 <bs ds gs>4) <cs e as>( |
        <cs e as>2 <bs ds gs>4) <cs e as>( |
        <cs e as> <bs ds gs>) b'2\rest
    }
}


% right-hand lower voice
sIIrhII =  {
    \relative cs' {
        \key cs \minor
        \stemDown
        \slurDown
                                % 28 - 31
        \barRest |
        \barRest |
        \barRest |
        \barRest |

                                % 32 - 35
        \barRest |
        \barRest |
        \barRest |
        \barRest |

                                % 36 - 39
        s4 s cs bs |
        s s ds cs~ |
        cs ds e ds |
        ds1 |

                                % 40 - 43
        <e gs>2_> <ds gs>_> |
        <e gs>_> <ds gs>_> |
        <ds gs>_> <ds fss>_> |
        \barRest |

                                % 44 - 47
        \barRest |
        \barRest |
        \barRest |
        \barRest |

                                % 48 - 51
        \barRest |
        \barRest |
        \barRest |
        \barRest |

                                % 52 - 55
        s4 s cs bs |
        s s ds cs~ |
        cs ds e ds |
        ds1 |

                                % 56 - 59
        <e gs>2_> <ds gs>_> |
        <e gs>_> <ds gs>_> |
        <ds gs>_> <ds fss>_> |
        \barRest |

                                % 60 - 63
        \override Beam.positions = #'(-5 . -5)
        gs8 gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |
        gs8 gs gs gs gs gs gs gs |
        gs gs fs fs gs gs a a |
        \revert Beam.positions

                                % 64 - 67
        gs,8 gs gs gs gs gs gs gs |
        gs gs gs gs gs gs gs gs |
        gs gs gs gs gs gs gs gs |
        gs gs gs gs gs gs gs gs |

                                % 68 - 71
        \override Beam.positions = #'(-5 . -5)
        gs'8 gs gs gs gs gs gs gs |
        gs gs gs gs gs gs gs gs |
        gs gs gs gs gs gs gs gs |
        \revert Beam.positions
        cs, cs cs cs cs cs cs cs |

                                % 72 - 75
        gs8 gs gs gs gs gs gs gs |
        gs gs gs gs gs gs gs gs |
        gs gs gs gs gs gs gs gs |
        gs gs gs gs {
            \dynamicUp
            \set decrescendoText = \markup { \italic "dim." }
            \set decrescendoSpanner = #'text
            \once \override DynamicTextSpanner.extra-offset = #'( 1.3 . -6.1)
            af[\> af af \cslh \stemUp af\!]
        }|
    }
}


sIIrh =   {
    <<
        { \context Voice = "upper" {\sIIrhI} } \\
        { \context Voice = "lower" {\sIIrhII} }
    >>
}

sIIdyn =   {
                                % 28 - 31
    \context Voice = "upper" { s8_\markup{\italic "sotto voce"} s s s s s s s | }
    \barRest |
    \barRest |
    \barRest |

                                % 32 - 35
    \barRest |
    \barRest |
    \barRest |
    \context Voice = "lower" {
       
        %% transparent note to align "cresc" correctly
        \ohnu gs8\p s \ohnu \setCrescSpanner gs\startTextSpan s s s s s | % [mils] expect warning: Too many clashing notecolumns
    }

                                % 36 - 39
    \barRest |
    \barRest |
    \barRest |
    \context Voice = "lower" { s8 s s s s s s \ohnu gs\stopTextSpan | } % [mils] expect warning: Too many clashing notecolumns

                                % 40 - 43
    \context Voice = "lower" { s8\ff s s s s s s s | }
    \barRest |
    \barRest |

    \context Voice = "upper" {
        \setDimSpanner
        s8 s\startTextSpan s s s s s s\stopTextSpan |
    }

                                % 44 - 47
    \context Voice = "upper" { s8\p s s s s s s s | }
    \barRest |
    \barRest |
    \barRest |

                                % 48 - 51
    \barRest |
    \barRest |
    \barRest |

    \context Voice = "lower" {
        %% transparent note to align "cresc" correctly
        \ohnu gs8\p \ohnu gs\startTextSpan s s s s s s | % [mils] expect warning: Too many clashing notecolumns
    }
                                % 52 - 55
    \barRest |
    \barRest |
    \barRest |
    \context Voice = "lower" { s8 s s s s s s \ohnu gs\stopTextSpan | } % [mils] expect warning: Too many clashing notecolumns

                                % 56 - 59
    \context Voice = "upper" { s8\ff s s s s s s s | }
    \barRest |
    \barRest |
    \context Voice = "upper" {
        \crescTextCresc
        s8\fz \setDimSpanner  s_\startTextSpan s s s s s s\stopTextSpan |
    }

                                % 60 - 63
    \context Voice = "lower" { s\p s s s s s s s | }
    \barRest |
    \barRest |
    \context Voice = "lower" { s8\> s s s s s s s\! | }

                                % 64 - 67
    \context Voice = "lower" { s8\p s s s s s s s | }
    \barRest |
    \barRest |
    \barRest |

                                % 68 - 71
    \context Voice = "lower" {
        s8\p\< s s s s s s s |
        s s s s s s s s\! |
        s\f s s s s s s s |
        s s s s s\> s s s\! |
    }

                                % 72 - 75
    \context Voice = "lower" {
        s8\< s s s s s s s\! |
        s\> s s s s s s s\! |
        s\> s s s s s s s\! |
        s\> s s s\! s s s s |
    }
}

% left-hand
sIIlh =  \relative gs, {
    \key cs \minor
    \slurDown

                                % 28 - 31
    \once\override Slur.height-limit = #3
    <gs cs,>4\<( <gs ds> <cs e,> <bs ds,> |
    <gs ds> <gs e> <ds' fs,> <cs e,> |
    <cs e,> <ds gs,> <e cs> <ds gs,>\! |
    <ds gs,>1\>~ |

                                % 32 - 35
    <ds gs,>4 <e cs> <ds gs,> <cs e,> |
    <ds gs,> <cs e,> <bs ds,> <cs e,>\! |
    <bs ds,>\< <cs e,> <ds ds,> <e cs,>\! |
    <ds gs,>1) |

                                % 36 - 39
    <gs, cs,>4( <gs ds> <cs e,> <bs ds,> |
    <gs ds> <gs e> <ds' fs,> <cs e,> |
    <cs e,> <ds gs,> <e cs> <ds gs,> |
    \appoggiatura gs,,8) <ds'' gs,>1 |

                                % 40 - 43
    <e, e,>2( <b' b,> |
    <e, e,> <b' b,>4. <as as,>8 |
    <gs gs,>2 <ds' ds,> |
    <gs, gs,>) r2 |

                                % 44 - 47
    <gs cs,>4\<( <gs ds> <cs e,> <bs ds,> |
    <gs ds> <gs e> <ds' fs,> <cs e,> |
    <cs e,> <ds gs,> <e cs> <ds gs,>\! |
    <ds gs,>1\>~ |

                                % 48 - 51
    <ds gs,>4 <e cs> <ds gs,> <cs e,> |
    <ds gs,> <cs e,>\! <bs ds,> <cs e,> |
    <bs ds,>\< <cs e,> <ds ds,> <e cs,>\! |
    <ds gs,>1) |

                                % 52 - 55
    <gs, cs,>4( <gs ds> <cs e,> <bs ds,> |
    <gs ds> <gs e> <ds' fs,> <cs e,> |
    <cs e,> <ds gs,> <e cs> <ds gs,> |
    \appoggiatura gs,,8) <ds'' gs,>1 |

                                % 56 - 59
    <e, e,>2( <b' b,> |
    <e, e,> <b' b,>4. <as as,>8 |
    <gs gs,>2 <ds' ds,> |
    <gs, gs,>) r2 |

                                % 60 - 63
    <fs gs ds'>2( << { <e e'>4 <cs cs'> } \\
                    { gs'2 } >> |
    <gs gs,>2.) <gs gs'>4( |
    <cs gs'>2 <gs gs'> |
    <a a'> <gs gs'>4 <fs fs'> |

                                % 64 - 67
    gs2) <gs cs,> |
    <gs gs,>4 <gs cs,>2._> |
    <gs cs,>4 <gs gs,>2_> <gs cs,>4 |
    <gs gs,>1 |

                                % 68 - 71
    << { <fs fs'>2( <e gs e'>4 <cs cs'> | <gs gs'>1) } \\
       { gs'8 gs gs gs } >>  |
    <gs cs,>2 <gs gs'> |
    <es es'>2 <fs fs'> |

                                % 72 - 75
    <bs bs,>2 <cs cs,> |
    <gs gs,>2. <gs cs,>4 |
    <gs gs,>2. <gs cs,>4 |
    << { gs4
         \once\override TextScript.staff-padding = #0
         gs_\markup{\italic "poco rit."} } \\
       { gs,2 } >> af''8[ f gf ef] |
}

% sustain
sIIsustain =  {
                                % 28 - 31
    s8\unaCorda s s s s s s s |
    \barRest |
    \barRest |
    \barRest |
                                % 32 - 35
    \barRest |
    \barRest |
    \barRest |
    \sd s8 s s s s s \su |
                                % 36 - 39
    s8\treCorde s s s s s s s |
    \barRest |
    \barRest |
    \sd s8 s s s s s \su |

                                % 40 - 43
    \sd s s s \sud s s s |
    \sud s s s \sud s s s |
    \sud s s s \sud s s s |
    \sud s s s s s s \su |

                                % 44 - 47
    s8\unaCorda s s s s s s s |
    \barRest |
    \barRest |
    \barRest |

                                % 48 - 51
    \barRest |
    \barRest |
    \barRest |
    \sd s8 s s s s s \su |
                                % 52 - 55
    s8\treCorde s s s s s s s |
    \barRest |
    \barRest |
    \sd s8 s s s s s \su |

                                % 56 - 59
    \sd s s s \sud s s s |
    \sud s s s \sud s s s |
    \sud s s s \sud s s s |
    \sud s s s s s s \su |

                                % 60 - 63
    \sd s s s \sud s s s |
    \sud s s s s \su s s |
    \barRest |
    \barRest |

                                % 64 - 67
    \sd s s s \sud s s \su |
    s s \sd s s s s s |
    s s \sud s s s \sud s |
    \sud s s s s s s \su |

                                % 68 - 71
    \sd s s s \sud s s s |
    \sud s s s s s s s |
    \sud s s s \sud s s s |
    \sud s s s \sud s s s |

                                % 72 - 75
    \sud s s s \sud s s s |
    \sud s s \su s s \sd s |
    s s s \su s s \sd s |
    s s s \su s s s s |

}
