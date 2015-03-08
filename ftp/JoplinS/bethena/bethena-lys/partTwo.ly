\version "2.18.2"

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
        { \barRest | }
        { \barRest | }
    }
}

partTwoRH =  {
    <<
        \partTwoRHvI \\
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
        { <bf bf,> r r | }
        { <bf bf,> a8 af g4 | }
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
        s4 \sustainOn s s \sustainOff |
        \barRest |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s \sustainOff s |
        s4 \sustainOn s \sustainOff s |
        s4 \sustainOn s \sustainOff s |
        s4 \sustainOn s s \sustainOff |
        \barRest |
        s4 \sustainOn s s \sustainOff |
        \barRest |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s \sustainOff s |
        s4 \sustainOn s \sustainOff s |
        s4 \sustainOn s \sustainOff s |
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
    \once \override Hairpin.extra-offset = #'(-1 . 0)
    s4\> s s\! |
}
segueTwoSub =  {
    \segueTwoSilent
}
