\version "2.19.15"
partOneGlobal =  {
    \repeat volta 2 {
                                % 5 - 19
        \bar ".|:-||"
        \barRest | \barRest | \barRest | \barRest |
        \myBreak
        \barRest | \barRest | \barRest | \barRest |
        \myBreak
        \barRest | \barRest | \barRest | \barRest |
        \myBreak
        \barRest | \barRest | \barRest |
    }
    \alternative {
                                % 20
        { \barRest | }
                                % 21
        { \barRest | }
    }
    \myBreak
}

partOneRHnotes =  \relative b' {
    \repeat volta 2 {
                                % 5 - 8
        b16\mf( bf a g~g gs a as) |
        b( <d f> <cs g'> <d f>)~<d f>( <cs g'> <d f> b) |
        c( b a g)~g( gs a b) |
        c( <e g> <ds a'> <e g>)~<e g>( <ds a'> <e g> cs) |

                                % 9 - 12
        d( f a <d f,>)~<d f,> f,( e d)~ |
        d <af d, c>8 <g d b>16~<g d b>8^( d') |
        c16( e g <c e,>)~<c e,> e,( d c)~ |
        c <fs, c>8 <g e c>16~<g e c>8^( c) |

                                % 13 - 16
        b16( bf a g~g gs a as) |
        b( <d f> <cs g'> <d f>)~<d f>( <cs g'> <d f> b) |
        c( b a g~g gs a b) |
        c( <e g> <ds a'> <e g>)~<e g>( <ds a'> <e g> bf) |

                                % 17 - 19
        a <a' f>8 <c a f c>16~<c a f c>(\< <b b,> <c c,> <d d,>)\! |
        <ds c a ds,>4->~<d c a d,>8( <af f c af>) |
        <g e c g>4~<g e c g>16 <d f d'>8( <e g e'>16) |
    }
    \alternative {
                                % 20
        \relative c'' {<c e c'>4 e16( d c8) |}

                                % 21
        \relative c'' {<c e c'>8 e16(\< f) <g e>8 <gs e>-^\! |}
    }
}

partOneLHnotes =  \relative d {
    \repeat volta 2 {
                                % 5 - 8
        << { d8. g16 <b f'>8 d, } \\
           { d4. d8 } >> |
        << { g,8. g'16 <b f'>8 ds, } \\
           { g,4.( ds'8) } >> |
        << { e8. g16 <c e>8 g } \\
           { e4.( g8) } >> |
        << { c,8. g'16 <c e>8 e, } \\
           { c4.( e8) } >> |

                                % 9 - 12
        << { d8. f16 <d' f>8 a } \\
           { d,4.( a'8)} >> |
        f8 f d16( e f8) |
        << { e8. g16 <c e>8 g } \\
           { e4.( g8) } >> |
        ds8( e) c16( d e ef) |

                                % 13 - 16
        << { d8. g16 <b f'>8 d, } \\
           { d4. d8 } >> |
        << { g,8. g'16 <b f'>8 ds, } \\
           { g,4.( ds'8) } >> |
        << { e8. g16 <c e>8 g } \\
           { e4.( g8) } >> |
        << { c,8. g'16 <c e>8 c, } \\
           { c4. c8 } >> |

                                % 17 - 19
        << { f8. a16 <c f>8 a } \\
           { f4.( a8) } >> |
        fs'4->( f) |
        r16 e,( f fs) << { g16 b8. } \\ { g8( g,) } >> |
    }
    \alternative {
                                % 20
        \relative c { <c c'>16( e f fs g f e ef) | }

                                % 21
        \relative c { <c c'>8 r r <c bf'>-^ | }
    }
}

partOneRH =  {
    <<
        \partOneGlobal
        \partOneRHnotes
    >>
}

partOneLH =  {
    <<
        \partOneGlobal
        \partOneLHnotes
    >>
}