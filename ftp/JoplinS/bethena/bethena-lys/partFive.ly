\version "2.18.0"
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
        {b,4 g^^ fs^^ |}
        {b4 <d, es gs d'> <d fs a c> |}
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
        {<b d> <g g,>^^ <fs fs,>^^ |}
        {<b d> <b b,> <a a,> |}
    }
}

partFiveLH =  {
    \partFiveLHvI
}


partFiveSuper =  {
    \repeat volta 2 {
        s4^\markup{\italic\smaller cantabile} s s |
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
        \once \override DynamicText.extra-offset = #'(-3 . 2.5)
        s4\p s s |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        \barRest |
        s8\< s s s s s\! |
        s\f s s\> s s s\! |
        \once \override DynamicText.extra-offset = #'(-3 . 2.5)
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
        \override SustainPedal.extra-offset = #'(0 . 0)
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s s\sustainOff |
        \barRest |
        \barRest |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s s\sustainOff |
        s4\sustainOn s s\sustainOff |
        \revert SustainPedal.padding
    }
    \alternative {
        { \barRest | }
        { \barRest | }
    }
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
