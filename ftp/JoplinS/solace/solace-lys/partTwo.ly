\version "2.19.15"
partTwoGlobal =  {
    \repeat volta 2 {
        %% BARS 22 - 38
                                % ridiculous silent grace notes to prevent extra barline from drawing
        \grace{s8.}\barRest | \barRest | \barRest | \barRest |
        \myBreak
        \barRest | \barRest | \barRest | \barRest |
        \myBreak
        \barRest | \barRest | \barRest | \barRest | \barRest |
        \myBreak
        \barRest | \barRest |
    }
    \alternative {
        {\barRest |}
        {\barRest |}
    }
    \myBreak
    \bar "||"
}

partTwoRHnotes =  \relative f'' {
    \repeat volta 2 {
                                % 22 - 25
        << { \stemNeutral <f a>8 c32( d e f \stemUp g16)( f8) \tuplet 3/2 { f32 g f } } \\
                                % ridiculous silent grace notes to prevent extra barline from drawing
           { \grace { s8.\f } s4 a,8. af16 } >> |
        <af f'>16\> <g e'> <g e'> <fs c' ds>\!~<fs c' ds>8 <f b d> |
        <e as cs>4\mp( <f b d>8) <e b' e> |
        <e a c e>8 e'16(\< f) <e g>8 <e gs>-^\! |

                                % 26 - 29
        << { \stemNeutral <f a>8 c32( d e f \stemUp g16)( f8) \tuplet 3/2 { f32 g f } } \\
           { s4\f a,8. af16 } >> |
        <af f'>16 <g e'> <g e'> <g c e>~<g c e>8 <g bf e> |
        << { e'16( d e b)~b( d a8) } \\
           { <g b>8. g16~g8 <fs c> } >> |
        << { a8( g4) } \\
           { <f b,>4 } >>  <b d g>8 |

                                % 30 - 33
        << { g'16( f8) e16 } \\
           { <d a>4 } >> <f d f,>16( <g e g,> <a f a,> <as f as,>) |
        <b f d b>4. <g? d b>8 |
        << { g16( f8) e16 } \\
           { <d a>4 } >> <f d f,>16( <g e g,> <a f a,> <as f as,>) |
        <b f d b>4. <b f d b>8 |

                                % 34 - 36
        <c e, c>4~<c e, c>16 <c c,>( <d d,> <e e,>) |
        <e a, e>8( <d a d,>4) <f, d c f,>8\mp |
        \stemDown
        <f d b f>8 <g d b g>~<g d b g>16 g,( <f b e>8) |
        \stemNeutral
    }
    \alternative {
        \relative c'' {
                                % 37
            <c e,>8 e16(\< f) <g e>8 <gs e>\!-^ |
        }
        \relative c'' {
                                % 38
            <c e,>4 e16(d c8) |
        }
    }
}

partTwoLHnotes =  \relative f, {
    \repeat volta 2 {
                                % 22 - 25
        << { f8. a'16 <c f>8 f,, } \\
           { \appoggiatura { c16[ d e] } f4.\sustainOn f8\sustainOff } >> |
        << { c'8. a'16 <c ds>8 af8 } \\
           { \appoggiatura { g,16[ a b] } c4.( af'8) } >> |
        \appoggiatura { e16[ f fs] }
%        \override Slur.attachment = #'(head . stem)
        g8. g16( g,8) gs |
%        \revert Slur.attachment
        << { a8. a'16 <c e>8 bf-^ } \\
           { a,4.( c8) } >> |

                                % 26 - 29
        << { f,8. a'16 <c f>8 f,, } \\
           { \appoggiatura { c16[ d e] } f4.\sustainOn f8\sustainOff } >> |
        << { c'8. a'16 <c e>8 cs,8 } \\
           { \appoggiatura { g16[ a b] } c4.( cs8) } >> |
        << { d8. g16 <b d>8 d, } \\
           { d4. s8 } >> |
        << { g,8. g'16 <b f'>8 g, } \\
           { g4. g8 } >> |

                                % 30 - 33
        << { d'8. f16 <a d>8 d, } \\
           { d4. d8} >> |
        << { gs,8. gs'16 <b d f>8 <g g,> } \\
           { gs,4.\sustainOn g8\sustainOff } >> |
        << { d'8. f16 <a d>8 d, } \\
           { d4. d8} >> |
        << { gs,8. gs'16 <b d f>8 gs, } \\
           { gs4.\sustainOn gs8\sustainOff } >> |

                                % 34 - 36
        << { a8. a'16 <c e>8 a, } \\
           { a4.\sustainOn a8\sustainOff } >> |
        << { f8. a'16 <d f>8 <af af,> } \\
           { f,4.( af8) } >> |
        << { g'8. g16 <b f'>8 <g g,> } \\
           { <g, g'>4.\sustainOn g8\sustainOff } >> |
    }
    \alternative {
        \relative c {
                                % 37
            <c g'>8 r r <c bf'>-^ |
        }
        \relative c {
                                % 38
            <c g'>16 e( f fs g f e ef) |
        }
    }
}

partTwoRH =  {
    <<
        \partTwoGlobal
        \partTwoRHnotes
    >>
}

partTwoLH =  {
    <<
        \partTwoGlobal
        \partTwoLHnotes
    >>
}