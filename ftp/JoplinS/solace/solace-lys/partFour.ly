\version "2.19.15"
partFourGlobal =  {
    \repeat volta 2 {
                                % 55 - 58
        \bar ".|:-||"
        \barRest | \barRest | \barRest | \barRest |
        \myBreak
                                % 59 - 62
        \barRest | \barRest | \barRest | \barRest |
        \myBreak
                                % 63 - 66
        \barRest | \barRest | \barRest | \barRest |
        \myBreak
                                % 67 - 69
        \barRest | \barRest | \barRest |
    }
    \alternative {
                                % 70
        {\barRest |}
                                % 71
        {\barRest |}
    }
    \myBreak
%    \bar "||" % no-use \bar ".|:-||" at next block
}

partFourRHnotes =  \relative f' {
    \key f \major
    \repeat volta 2 {
                                % 55 - 58
        << { f4~ <f c>16( a <a d f>8) } \\
           { \once\override DynamicText.extra-offset = #'(0 . -1)
             a,16(\mp bf b c)~ \ohs c8 s8  } >>  |
        << { s8. \ohs bf'16~ bf bf <d f>8 } \\
           { <g, d' f>8. <g bf>16~ g8 g} >> |
        << { s8. \ohs e'16~ e ds e8 } \\
           { <f d g,>8. <e c g>16~ <c g>8 <bf g> } >> |
        <f a e'>8. <f a>16~ <f a>8 <e bf>\fermata |

                                % 59 - 62
        << { f4^\markup{\bold "a tempo"}~ f16( a c d) } \\
           { a,16( bf b c\<)~ c8( a'8\!)  } >>  |
        << { e'4~ e16( ds) e8 } \\
           { r16\mf c( b a)~ a8 <e a c> } >> |
        << { e'4~ e16 ds e8 } \\
           %% [mils] Want to shift this rest a little to the right.
           { b16\rest b( a gs)~ gs8 <gs e> } \\
           { \stemDown e4. s8 } >> |
        <e a e'>4~ <e a e'>8 <e bf>\mp\fermata |

                                % 63 - 66
        << { f4^\markup{\bold "a tempo"}~ <f c>16( a <a d f>8) } \\
           { a,16( bf b c)~ \ohs c8 s8  } >>  |
        << { s8. \ohs bf'16~ bf bf <d f>8 } \\
           { <g, d' f>8. <g bf>16~ g8 g} >> |
        << { s8. \ohs e'16~ e ds e8 } \\
           { <f d g,>8. <e c g>16~ <c g>8 <bf g> } >> |
        <f a e'>8. <f a>16~ <f a>8 <f a> |

                                % 67 - 69
        << { <f bf>8. <f bf>16~ bf( c bf8) } \\
           { s8. \ohs f16~ f8 f } >> |
        <f a>16 <f a>8 <f gs>16~ <f gs>8 <f gs d'> |
        << { d'16 c8 bf16~ <bf e, d>8 <a e c> } \\
           { <a f>8. <e d>16~
             \once\override NoteColumn.force-hshift = #1
             \ohs \tieNeutral<e d>8 s8 } >> |
    }
    \alternative {
                                % 70
        { <f a,>4. <e bf>8\fermata | }
                                % 71
        { \stemUp <f a,>4~ <f a,>8\< d'16(\fermata f)\! \stemNeutral | }
    }
}

partFourLHnotes =  \relative f {
    \key f \major
    \repeat volta 2 {
                                % 55 - 58
        f16( g gs a)~ a( f d c) |
        << { bf16( bf' c d)~ d8 bf, } \\
           { bf4. bf8 } >> |
        << { c16( g' a bf)~ bf8 c,,} \\
           { c'4. c,8 } >> |
        << { f16( gs' a c)~ c8 c,\fermata } \\
           { f,4.( c'8) } >> |

                                % 59 - 62
        f16( g gs a)~ a8( f) |
        << { r16 e'( d c)~ c4 } \\
           { e,4~ e16( a e c) } >> |
        << { r16 d'( c b)~ b8 b8 } \\
           { e,,4~ e8 e'} >> |
        << { c'4~ c8 c, } \\
           { a'8( e16 a,)~ a8 c\fermata } >> |

                                % 63 - 66
        f16( g gs a)~ a( f d c) |
        << { bf16( bf' c d)~ d8 bf, } \\
           { bf4. bf8 } >> |
        << { c16( g' a bf)~ bf8 c,,} \\
           { c'4. c,8 } >> |
        << { f16( gs' a c)~ c8 ef, } \\
           { f,4.( ef'8) } >> |

                                % 67 - 69
        d16( f bf d)~ d8( df) |
        c16 c8 b16~ b8 b |
        c8. c,16~ c4 |
    }
    \alternative {
                                % 70
        { f8.([ c16 f,8)] c'8\fermata }
                                % 71
        { f8.([ c16 f,8)] af8\fermata }
    }
}

partFourRH =  {
    <<
        \partFourGlobal
        \partFourRHnotes
    >>
}

partFourLH =  {
    <<
        \partFourGlobal
        \partFourLHnotes
    >>
}