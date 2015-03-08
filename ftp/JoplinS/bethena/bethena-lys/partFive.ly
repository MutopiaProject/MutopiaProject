\version "2.18.2"

partFiveSilent =  {
    \repeat volta 2 {
        \bar ".|:-||"
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
        \barRest |
    }
    \alternative {
        { \barRest | }
        { \barRest | }
    }
}


partFiveRHvI =  \relative d''{
    \repeat volta 2 {
        d8 b4 fs'8 d4 |
        b'8( fs d) b~ b4 |
        as8 fs'4 g8 fs4 |
        b,8 fs'4 g8 fs4 |
        d8 b4 fs'8 d4 |
        b'8[( fs d) b]~ b d |
        <b d>8 <b d>4 <b d>8 <b cs e> <b cs es> |
        <as cs fs>4 cs,^^
        \showStaffSwitch
        \stemUp\change Staff = "lh"
        \acciaccatura es,8 fs4^^ |
        \stemNeutral\change Staff = "rh"
        \hideStaffSwitch
        d''8 b4 fs'8 d4 |
        b'8( fs d) b~ b4 |
        as8 fs'4 g8 fs4 |
        b,8 fs'4 g8 fs b |
        b g4 a8 g fs |
        fs d4 e8 d cs |
        cs as4 g'8 fs4 |
    }
    \alternative {
        { b,4 g^^ fs^^ | }
        { b4 <d, es gs d'> <d fs a c> | }
    }
}

partFiveRH =  {
    \partFiveRHvI
}


partFiveLHvI = \relative b, {
    \repeat volta 2 {
        <b b,>4 <fs' b d> <fs b d> |
        <b, b,>4 <fs' b d> <fs b d> |
        <fs, fs,> <fs' as e'> <fs as e'> |
        <b, b,> <fs' b d> <fs b d> |
        <b, b,>4 <fs' b d> <fs b d> |
        <b, b,>4 <fs' b d> <fs b d> |
        <g g,> <g g,> <g g,> |
        <fs fs,> cs^^
        {
                                % [mils] ugly code to prevent stems from clashing with
                                % [mils] the E#-F# (right-hand).  The slur should be
                                % [mils] above the notes.
            \acciaccatura {
                \once \override Stem.direction = #-1
                \once \override Slur.direction = #1
                es,8
            }
            \stemDown fs4_^ \stemNeutral |
        }
        <b b,>4 <fs' b d> <fs b d> |
        <b, b,>4 <fs' b d> <fs b d> |
        <fs, fs,> <fs' as e'> <fs as e'> |
        <b, b,> <fs' b d> <fs b d> |
        <e e,> <g b e> <g b e> |
        <b, b,> <fs' b d> <fs b d> |
        <fs, fs,> <fs' as e'> <fs as e'> |
    }
    \alternative{
        { <b d> <g g,>^^ <fs fs,>^^ | }
        { <b d> <b b,> <a a,> | }
    }
}

partFiveLH =  {
    \partFiveLHvI
}


partFiveSuper =  {
    \repeat volta 2 {
        s4^\markup{ \smaller cantabile} s s |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        s4^\markup{rit.} s s |
        \barRest |
        s4^\markup{a tempo} s s |
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

partFiveDynamics =  {
    \repeat volta 2 {
        s4\p s s |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        s8\< s s s s s\! |
        s\f s s\> s s s\! |
        s\p s s s s s |
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

partFiveSub =  {
    \repeat volta 2 {
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        \barRest |
        \barRest |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
        s4 \sustainOn s s \sustainOff |
    }
    \alternative {
        { \barRest | }
        { \barRest | }
    }
}
