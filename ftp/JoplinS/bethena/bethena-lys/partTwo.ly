\version "2.18.0"
partTwoSilent =  {
    \repeat volta 2 {
        \barRest |
        \barRest | \break
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest | \break
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest | \break
        \barRest |
        \barRest |
        \barRest |
    }
    \alternative {
        {\barRest |}
        {\barRest |}
    }
}
partTwoRHvI =  \relative d' {
    \repeat volta 2 {
        \stemNeutral
        <d bf' d>8 <g g'>4 <f f'>8 <g g'> <a a'> |
        \stemUp
        <bf bf'>2. |
        \stemNeutral
        <d d'>8 <c c'>4 <f f'>8 <e e'> <ef ef'> |
        \stemUp
        <d d'>2. |
        \stemNeutral
        <bf bf'>8 <ef g>4 <bf bf'>8 <bf cs g'>4 |
        <bf d g>8 <bf d f>4 <bf d g>8 <f b d>4 |
        \stemUp
        d'8 bf4 d8 c4 |
        c2. |
        \stemNeutral
        <d, bf' d>8 <g g'>4 <f f'>8 <g g'> <a a'> |
        \stemUp
        <bf bf'>2. |
        \stemNeutral
        <d d'>8 <c c'>4 <f f'>8 <e e'> <ef ef'> |
        \stemUp
        <d d'>2. |
        \stemNeutral
        <bf bf'>8 <ef g>4 <bf bf'>8 <bf cs g'>4 |
        <bf d g>8 <bf d f>4 <bf d g>8 <f b d>4 |
        \stemUp
        d'8 bf4 d8 c4
        \stemNeutral
    }
    \alternative {
        {
            \stemUp
            <d, f bf>4 f8 bf c cs |
            \stemNeutral
        }
        {
            <d, f bf>4 a'8 af g4 |
        }
    }
}

partTwoRHvII =  \relative d'' {
    \repeat volta 2 {
        \barRest |
        r4 <d f> <d f> |
        \barRest |
        r4 <f bf> <f bf> |
        \barRest |
        \barRest |
        <bf, ef,>2 <bf ef,>4
        <a ef>2. |
        \barRest |
        r4 <d f> <d f> |
        \barRest |
        r4 <f bf> <f bf> |
        \barRest |
        \barRest |
        <bf, ef,>2 <bf ef,>4
    }
    \alternative {
        {\barRest |}
        {\barRest |}
    }
}

partTwoRH =  {
    <<
        \partTwoRHvI\\
        \partTwoRHvII
    >>
}

partTwoLHvI = \relative c {
    \repeat volta 2 {
        <bf bf,>4 <f' bf d>8[ <f f,>] <e e,>[ <ef ef,>] |
        <d d,>4 <f bf d> <f bf d> |
        <f f,> <f a ef'>8[ <f f,>] <g g,>[ <a a,>] |
        <bf bf,>4 <f bf d> <f bf d> |
        <ef ef,> <g bf ef> <e e,> |
        <f f,> <f bf d> <g g,> |
        <c, c,> <g' g,> <gf gf,> |
        <f f,> <a c> <a c> |
        <bf, bf,>4 <f' bf d>8[ <f f,>] <e e,>[ <ef ef,>] |
        <d d,>4 <f bf d> <f bf d> |
        <f f,> <f a ef'>8[ <f f,>] <g g,>[ <a a,>] |
        <bf bf,>4 <f bf d> <f bf d> |
        <ef ef,> <g bf ef> <e e,> |
        <f f,> <f bf d> <g g,> |
        <c, c,> <g' bf c> <f f,> |
    }
    \alternative {
        {<bf bf,> r r |}
        {<bf bf,> a8 af g4 |}
    }
}

partTwoLH =  {
    \partTwoLHvI
}

partTwoSuper =  {
    \partTwoSilent
}

partTwoDynamics =  {
    \repeat volta 2 {
        s4\f s s |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
    }
    \alternative {
        { \barRest | }
        { \barRest | }
    }
}

partTwoSub =  {
    \repeat volta 2 {
        \barRest |
        s4\sustainOn s s\sustainOff |
        \barRest |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s\sustainOff s |
        s4\sustainOn s\sustainOff s |
        s4\sustainOn s\sustainOff s |
        s4\sustainOn s s\sustainOff |
        \barRest |
        s4\sustainOn s s\sustainOff |
        \barRest |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s\sustainOff s |
        s4\sustainOn s\sustainOff s |
        s4\sustainOn s\sustainOff s |
    }
    \alternative {
        { \barRest | }
        { \barRest | }
    }
}


segueTwoSilent =  {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueTwoRHvI =  \relative c'' {
    \stemUp
    gf8 f4 e8 ef4 |
    d <g bf d> <fs a d> |
    <f af d> <e g cs> <ef gf c> |
    <d f gs b> <d f gs b> <d f gs b> |
    <cs g' bf>2 <c g' a>4 |
    <c fs a>2.~ |
    <c fs a>2.^\tenuto |
    \stemNeutral
}

segueTwoRH =  {
    \segueTwoRHvI
}

segueTwoLHvI =  \relative c' {
    gf8 f4 e8 ef4 |
    d r r |
    R1*3/4 |
    <d d,>4 <d d,> <d d,> |
    <e e,>2 <ef ef,>4 |
    <d d,>2 a4 |
    <<
        { d,2.^\tenuto } \\
        {
                                % [mils] make this bar a little less crowded
            \override Rest.transparent = ##t
            r4 r2
            \revert Rest.transparent
        }
    >> |
}

segueTwoLH =  {
    \segueTwoLHvI
}

segueTwoSuper =  {
    \segueTwoSilent
}

segueTwoDynamics =  {
    \barRest |
    \barRest |
    \barRest |
    s4\< s s\! |
    s\f s s |
    \barRest |
    \once \override Hairpin.extra-offset = #'(-2 . 2.5)
    s4\> s s\! |
}
segueTwoSub =  {
    \segueTwoSilent
}



%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.3.1, 2.3.2, 2.3.4, 2.3.6, 2.3.8, 2.3.9, 2.3.10,
2.3.11, 2.3.12, 2.3.16, 2.3.17, 2.3.18, 2.3.22, 2.3.23, 2.3.24,
2.3.25, 2.4.0, 2.5.0, 2.5.1, 2.5.2, 2.5.3, 2.5.12, 2.5.13, 2.5.17,
2.5.18, 2.5.21, 2.5.25, 2.6.0, 2.7.0, 2.7.1, 2.7.2, 2.7.4, 2.7.6,
2.7.10, 2.7.11, 2.7.12, 2.7.13, 2.7.14, 2.7.15, 2.7.22, 2.7.24,
2.7.28, 2.7.29, 2.7.30, 2.7.31, 2.7.32, 2.7.32, 2.7.36, 2.7.40, 2.9.4,
2.9.6, 2.9.9, 2.9.11, 2.9.13, 2.9.16, 2.9.19, 2.10.0, 2.11.2, 2.11.3,
2.11.5, 2.11.6, 2.11.10, 2.11.11, 2.11.13, 2.11.15, 2.11.23, 2.11.35,
2.11.38, 2.11.46, 2.11.48, 2.11.50, 2.11.51, 2.11.52, 2.11.53,
2.11.55, 2.11.57, 2.11.60, 2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3,
2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27,
2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44,
2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7, 2.15.9, 2.15.10, 2.15.16,
2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39,
2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6,
2.17.11, 2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25,
2.17.27, 2.17.29, 2.17.97, 2.18.0
%}
