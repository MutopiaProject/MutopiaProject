\version "2.19.15"
partFiveGlobal =  {
    \repeat volta 2 {
                                % 72 - 75
        \bar ".|:-||"
        \barRest | \barRest | \barRest | \barRest |
        \myBreak
                                % 76 - 79
        \barRest | \barRest | \barRest | \barRest |
        \myBreak
                                % 80 - 83
        \barRest | \barRest | \barRest | \barRest |
        \myBreak
                                % 84 - 86
        \barRest | \barRest | \barRest |
    }
    \alternative {
                                % 87
        {\barRest |}
                                % 88
        {\barRest |}
    }
    \myBreak
    \bar "|."
}

partFiveRHnotes =  \relative b'' {
    \repeat volta 2 {
                                % 72 - 75
        <bf f>16\f <bf e,> <bf ds,> <bf e,>~ <bf e,> <bf ds,>8 <bf e,>16 |
        <bf f>16 <bf e,> <bf ds,> <bf e,>~ <bf e,> <bf ds,>8 <bf e,>16 |
        <a e>16 <a d,> <a cs,> <a d,>~ <a d,>4~ |
        <a d,>4~ <a d,>16 <d, a>8 <c a>16 |

                                % 76 - 79
        <c a>16( <bf g> <a fs> <bf g>)~ <bf g> <a fs>8 <bf g>16 |
        <c a>16( <bf g> <a fs> <bf g>)~ <bf g> <a fs>8 <bf g>16 |
        <bf g>16 <a f?> <bf g> <c a>~ <c a>4~ |
        <c a>4 ~ <c a>8 d16(\fermata f) |

                                % 80 - 83
        <bf f>16 <bf e,> <bf ds,> <bf e,>~ <bf e,> <bf ds,>8 <bf e,>16 |
        <bf f>16 <bf e,> <bf ds,> <bf e,>~ <bf e,> <bf ds,>8 <bf e,>16 |
        \context Voice = "lower" { <a e>16 <a d,> <a cs,> <a d,>~ <a d,>4~} |
        << \context Voice = "upper" { \stemUp\tieUp\slurUp \ohs a4 ~ a16 a( f ef) } \\
           \context Voice = "lower" { \stemDown\tieNeutral <a d,>4~ \tieDown d,16 c8. } >> |

                                % 84 - 86
        << { d16( f d f)~ f f8( d16) }\\
           { bf 8. gs16~ gs gs8. } >> |
        << { d'16( f d c)~ c f8( g16) } \\
           { a,8. a16~ a bf8. } >> |
        << { s8. \ohs c16~ <c a>16 a8( g?16) } \\
           { <a' c,>16^( <gs b,> <a c,> <c, a>)~ a e8. } >> |
    }
    \alternative {
                                % 87
        { f4. d'16\fermata f | }

                                % 88
        { f,4 <f a c f>8-^ r^\markup{\bold\italic "Fine"}}
    }
}

partFiveLHnotes =  \relative g, {
    \repeat volta 2 {
                                % 72 - 75
        << { g8. g'16 <bf c e>8 c,, } \\
           { g'4. c,8 } >> |
        << { g'8. g'16 <bf c e>8 c,, } \\
           { g'4. c,8 } >> |
        << { f8. a'16 <c f>8 c,, } \\
           { f4. c8} >> |
        << { f16( gs' a d)~ d4 } \\
           { f,,4.( fs8) } >> |

                                % 76 - 79
        << { g8. g'16 <bf c e>8 c,, } \\
           { g'4. c,8 } >> |
        << { g'8. g'16 <bf c e>8 c,, } \\
           { g'4. c,8 } >> |
        << { f8. a'16 <c f>8 c,, } \\
           { f4. c8} >> |
        << { f16 gs'( a c)~ c8 af,\fermata } \\
           { f4. af8 } >> |

                                % 80 - 83
        << { g8. g'16 <bf c e>8 c,, } \\
           { g'4. c,8 } >> |
        << { g'8. g'16 <bf c e>8 c,, } \\
           { g'4. c,8 } >> |
        << { f8. a'16 <c f>8 c,, } \\
           { f4. c8} >> |
        << { f16 gs'( a d)~ d8 f } \\
%           \once\override Slur.attachment = #'(head . stem)
           { f,,4.( a'8) } >> |

                                % 84 - 86
        <bf f'>8. <b f>16~ <b f> <b f>8. |
        << { s8.
             \once\override NoteColumn.force-hshift = #-1.5
             \ohs\ohh
             \tieDown
             ef16~
             \once\override NoteColumn.force-hshift = #-0.6
             ef f8. } \\
           {<c f>8. \tieUp <ef f>16~
             \once\override NoteColumn.force-hshift = #0.6
             f d8( df16) } >> |
        << { s8. \ohs f16~ f c8( bf16) } \\
           { <f' c>8. <f c>16~ c16 c,8. } >> |
    }
    \alternative {
                                % 87
        { << { a'4. r8 } \\
             { f8.([ c16 f,8)] af\fermata } >> | }

                                % 88
        { << { a'4. } \\
             { f8.[ c16 f,8-^] } >> r8 | }
    }
}

partFiveRH =  {
    <<
        \partFiveGlobal
        \partFiveRHnotes
    >>
}

partFiveLH =  {
    <<
        \partFiveGlobal
        \partFiveLHnotes
    >>
}