%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PART C : BARS 83-128  1'19-1'39
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% RIGHT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rhC =  \relative b' {
    \key g \major
%%% 83-86
    b4( d8-.) d-. |
    g-. g-. b4->( |
    \setBeatStructureQuarter
    d16 c d c a8-.) r |
    d16( c d c a8-.) r |
%%% 87-93
    \acciaccatura as,8 b4 \acciaccatura cs8 d8 d |
    \acciaccatura fs g g \acciaccatura as b4 |
    d16( c! d c a!8-.) a16( b |
    g4-.) r |
    b16 a g fs e fs g a |
    b8-. b-. e4-> |
    e16( ds e ds b8-.) r |
%%% 94-100
    e16( ds e ds b8-.) r |
    b16 a g fs e fs g a |
    b8-. b-. e4-> |
    << { cs2 | }
       { s4..^\startTrillSpan \afterGrace s16 { b16\stopTrillSpan [ cs ] } } >>
    d4 d, |
    as16 b as b cs d cs d |
    fs g fs g as b as b |
%%% 101-107
    d16 cs c b a!8 r |
    d16 cs c b a8 r |
    as,16( b) b,8-. cs'16( d) d,8-. |
    fs'16( g) g,8-. as'16( b) b,8-. |
    d'16 cs c b a! b c a |
    g4 r |
    \repeat volta 2 {
        \key e \major
        <e gs b e>4 <b e gs b> |
%%% 108-116
        <gs b e gs> \voiceOne r8  e'8( |
        \setBeatStructureHalf
        <b ds>-.) <b e>-. <b fs'>-. <b gs'>-. |
        \oneVoice <b a'> <b b'> <cs cs'> <ds ds'> |
        <e gs b e>4 <b e gs b> |
        <gs b e gs> r8 <gs b>( |
        <fs b>-.) <gs b>-. <fs b>-. <e as>-. |
    }
    \alternative {
        { <ds b'>4 r4 }
        { <ds b'>4 r8 } % partial
    }
    \repeat volta 2 {
        \partialA b'8 |
        <b a'!>8 <b gs'> <b fs'> <b e> |
%%% 117-124
        <b ds>8 <b cs> b <b a> |
        <b gs> <b fs> <b e,> <b ds,> |
        <b e,> <b ds,> <b e,> <b gs> |
        <b a'>8 <b gs'> <b fs'> <b e> |
        <b ds>8 <b cs> b <b a> |
        <b gs> <a fs> <gs e> <fs ds> |
        e4 r8 % partial
    }
    \partialA b'8 |
    <b e gs b>4 <gs b e gs> |
%%% 125-128
    <e gs b e> r8 <e gs>( |
    <e a>8-.) <e gs>-. <e a>-. <e b'>-. |
    <e c'>-. <e b'>-. <e c'>-. <d fs>-. |
    <d g>-. <d fs>-. <d g>-. <d a'>-. |
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LEFT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lhC =  \relative g {
    \clef bass
    \key g \major
%%% 83-86
    <g b d>8 <g b d> <g b d> <g b d> | <g b d> <g b d> <g b d> <g b d> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
%%% 87-93
    <g b d> <g b d> <g b d> <g b d> | <g b d> <g b d> <g b d> <g b d> |
    <g c d fs>8 <g c d fs> <g c d fs> <g c d fs> |
    <g b d g> <g b> <g b> <g b> |
    <e g b> <e g b> <e g b> <e g b> | <e g b> <e g b> <e g b> <e g b> |
    <b fs' a b> <b fs' a b> <b fs' a b> <b fs' a b> |
%%% 94-100
    <b fs' a b> <b fs' a b> <b fs' a b> <b fs' a b> |
    <e g b> <e g b> <e g b> <e g b> |
    <e g b>8 <e g b> <e g b> <e g b> |
    <a, e' g a> <a e' g a> <a e' g a> <a e' g a> |
    <d fs a> <d fs a> <d fs a> <d fs a> |
    <g, b d g> <g b d g> <g b d g> <g b d g> |
    <g b d g> <g b d g> <g b d g> <g b d g> |
%%% 101-107
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g b d g> <g b d g> <g b d g> <g b d g> |
    <g b d g>8 <g b d g> <g b d g> <g b d g> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g b d g>4 g |
    \repeat volta 2 {
        \key e \major
        r8 e( gs b |
%%% 108-116
        e8 [ gs b) ] \csrh\voiceTwo\clef treble <e gs>( |
        <fs a>-.) <e gs>-. <ds fs>-. <cs e>-. |
        \cslh\oneVoice\clef bass <b ds>8 <a cs> <gs b> <fs a> |
        r8 e,( gs b |
        e gs b) e( |
        ds-.) e-. ds-. <cs fs,>-. |
    }
    \alternative {
        { <b b,>8 fs b, r}
        { <b' b,>8 [ fs b, ] } % partial
    }
    \repeat volta 2 {
        \partialA r8 |
        r8 \clef treble b'' a gs |
%%% 117-124
        fs8 e ds b |
        \clef bass e a, gs fs |
        gs a gs e |
        b r \clef treble a'' gs |
        fs e ds b |
        \clef bass e a, b b, |
        e [ b e, ] % partial
    }
    \partialA r8 |
    r8 e( gs b |
    e gs b) d( |
    c-.) d-. c-. gs-. |
    a-. gs-. a-. c-. |
    b-. c-. b-. fs-. |
%%% 125-128
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DYNAMICS PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dynC =  {
%%% 83-86
    s2_\p | s2*3 |
    \myBreak
%%% 87-93
    s2*7 |
    \myBreak
%%% 94-100
    s2 | s8 s^\deprecatedcresc s s | s2*3 | s2_\f | s2 |
    \myBreak
%%% 101-107
    s2*6 |
    \repeat volta 2 {
        s2_\f |
    \myBreak
%%% 108-116
        s2*6 |
    }
    \alternative  {
        {s2}{s4.}
    }
    \repeat volta 2 {
        \partialA s8_\p |
        \set Score.currentBarNumber = #116
        s2 |
        \myBreak
%%% 117-124
        s2*3 | s2_\fp | s2*2 | s8 s s
    }
    \partialA s8_\f |
    \set Score.currentBarNumber = #124
    s2 |
    \myBreak
%%% 125-128
    s8 s s s_\p | s2 | s2_\deprecatedcresc | s2 |
%%% END
}

