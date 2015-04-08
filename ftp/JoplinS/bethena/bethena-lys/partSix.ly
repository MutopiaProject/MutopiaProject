\version "2.18.2"

partSixSilent =  {
    \repeat volta 2 {
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
        { \barRest | \barRest | }
        { \barRest | }
    }
}

partSixRHvI =  \relative b' {
    \repeat volta 2 {
        \stemUp
        b8 d4 b8 d4 |
        a4. a8([ d fs)] |
        a g4 g8 fs e |
        \stemDown
        <fs d a> d \stemNeutral a4 <c fs, d> |
        \stemUp
        b8 d4 b8 d4 |
        a2 d4 |
        \stemDown
        cs8( bs cs bs cs fs) |
        \stemNeutral
        b,4 <d gs, es d> <c a fs d> |
        \stemUp
        b8 d4 b8 d4 |
        a4. a8([ d fs)] |
        a g4 g8 fs e |
        fs4. d8([ fs a)] |
        b d4 d8 e4 |
        d8( a) fs4. fs8 |
        \stemNeutral
    }
    \alternative {
        \relative a'' {
            \stemUp
            a8 g4 g8 fs e |
            <d a fs>2 <c fs, d>4 |
            \stemNeutral
        }
        \relative a'' {
            \stemUp
            a8 g4 e8 cs4 |
            \stemNeutral
        }
    }
}

partSixRHvII =  \relative d' {
    \repeat volta 2 {
        <d g b>2 <d gs>4 |
        d4. r8 r4 |
        <a' cs>2. |
        \barRest |
        <d, g b>2 <d gs>4 |
        d2. |
        \barRest |
        \barRest |
        <d g b>2 <d gs>4 |
        d4. r8 r4 |
        <a' cs>2. |
        <a d>2 d4 |
        <d g>2 g4 |
        fs2 r4 |
    }
    \alternative {
        \relative c'' {
             <cs a>2 <cs a>8 <cs g> |
            \barRest |
        }
        \relative a' {
             <a cs>2 <g e>4 |
         }
    }
}

partSixRH =  {
    <<
        \partSixRHvI \\
        \partSixRHvII
    >>
}


partSixLHvI =  \relative g {
    \stemNeutral
    \repeat volta 2 {
        <g g,>4 <e e,> <es es,> |
        <fs fs,> <fs a> <fs a> |
        <a, a,> <g' a cs> <g a cs> |
        <d d,> <fs a d> <a a,> |
        <g g,> <e e,> <es es,> |
        \stemUp
        r <fs a> <fs a>
        \stemNeutral
        <g as e'>2 <fs as e'>4 |
        <b d> <b b,> <a a,> |
        <g g,>4 <e e,> <es es,> |
        <fs fs,> <fs a> <fs a> |
        <a, a,> <g' a cs> <g a cs> |
        <d d,> <fs a d> <a a,> |
        <g g,> <b b,> <bf bf,> |
        <a a,> <fs a d> <fs a d> |
    }
    \alternative {
        \relative a, {
            <a a,>4 <g' a cs> <g a cs> |
            <d d,> <fs a d> <a a,> |
        }
        \relative a, {
            \once \override Slur.positions = #'(2.5 . 0)
            a4( a') bf |
        }
    }
}

partSixLHvII =  {
    \repeat volta 2 {
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        <fs fs,>2. |
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
        { \barRest | \barRest | }
        { \barRest | }
    }
}

partSixLH =  {
    <<
        \partSixLHvI \\
        \partSixLHvII
    >>
}

partSixSuper =  {
    \repeat volta 2 {
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
        { \barRest | \barRest | }
        {
            \once \override TextScript.extra-offset = #'(2 . 0)
            s4^\markup{rit.} s s |
        }
    }
}

partSixDynamics =  {
    \repeat volta 2 {
        s4\mf s s |
        s8 s s\< s s s\! |
        s4\f s s |
        s8 s s\> s s s\! |
        s4\mf s s |
        s8\< s s s s s\! |
        s4\f s s |
        s8 s s\> s s s\! |
        s4\mf s s |
        s8 s s\< s s s\! |
        s4\f s s |
        \barRest |
        \barRest |
        \barRest |
    }
    \alternative {
        { \barRest | \barRest | }
        { s4\f s s | }
    }
}

partSixSub =  {
    \repeat volta 2 {
        s4\sustainOn s\sustainOff s |
        \barRest |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s\sustainOff s |
        s4\sustainOn s\sustainOff s |
        s4\sustainOn s s\sustainOff |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s\sustainOff s |
        \barRest |
        s4\sustainOn s s\sustainOff |
    }
    \alternative {
        {
            s4\sustainOn s s\sustainOff |
            \barRest |
        }
        { \barRest | }
    }
}

segueSixSilent =  {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueSixRHvI =  \relative ds' {
    <ds fs c'>2.^\tenuto |
    <d f b>^\tenuto |
    <cs e bf'>^\tenuto |
    <cs g' bf>4 <c g' a>2^\tenuto |
    <c fs a>2.^\tenuto |
}

segueSixRH =  {
    \segueSixRHvI
}

segueSixLHvI =  \relative a {
    a8( gs a gs g fs) |
    gs( fss gs fss fs f) |
    g( fs g fs f e) |
    <e e,>4 <ef ef,>2^\tenuto |
    <d d,>2.^\tenuto |
}

segueSixLH =  {
    \segueSixLHvI
}


segueSixSuper =  {
    s4^\markup{a tempo} s s |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueSixDynamics =  {
    s4\f s s |
    s4\f s s |
    s8\f\< s s s s s\! |
    s4\ff
    s2\ff |
    s2.\ff |
}

segueSixSub =  {
    \segueSixSilent
}
