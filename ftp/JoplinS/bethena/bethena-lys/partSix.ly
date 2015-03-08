\version "2.18.0"
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
            \once \override Slur.attachment = #'(stem . head)
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
        {
            s4\f s s |
        }
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
    \once \override TextScript.extra-offset = #'(0 . -1)
    s4^\markup{a tempo} s s |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueSixDynamics =  {
    \once \override DynamicText.extra-offset = #'(-3.5 . 2.5)
    s4\f s s |
    s4\f s s |
    s8\f\< s s s s s\! |
    s4\ff
    \once \override DynamicText.extra-offset = #'(0 . 3.5)
    s2\ff |
    \once \override DynamicText.extra-offset = #'(0 . 3)
    s2.\ff |
}

segueSixSub =  {
    \segueSixSilent
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
