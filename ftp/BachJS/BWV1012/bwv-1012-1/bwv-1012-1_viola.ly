prelude =  \relative d {
    \key d \major 
    \time 12/8
    \set Staff.midiInstrument = "viola"
    
    <<{s8_\markup { (forte) } d8 s4 d8 s4 d8 s4 d8 s8} 
        \\ {d8[^( s) d] d[^( s) fis] d[^( s) a'] d,[^( s) d']}>> | % 1
    <<{s8_\markup { piano } d,8 s4 d8 s4 d8 s4 d8 s8} 
        \\ {d8[^( s) d] d[^( s) fis] d[^( s) a'] d,[^( s) d']}>> | % 2
    b8_\markup { forte } [ d,8 (g) ] b [ (cis d) ] a [ (d, fis) ] a [ (cis d) ] | % 3
    b8_\markup { piano }  [ d,8 (g) ] b [ (cis d) ] a [ d, (fis) ] a [ (cis d) ] | % 4
    g,8_\markup { forte } [ (e8 fis) ] g [ (d fis) ] g [ (cis, fis) ] g [ (a, g') ]  | % 5
    fis8 [ (d e) ] fis [ (cis e) ] fis [ (b, d) ] fis [ (a, d) ] | % 6
    e8 [ (gis, d') ] e [ (a, cis) ] d [ (a cis) ] d [ (gis, b) ] | % 7
    cis8 [ a (cis) ] e [ (fis gis) ] a [ cis, (e) ] gis [ (a b) ] | % 8
    cis8 [ e, (gis) ] a [ (cis d) ] e [ a, (cis) ] \clef treble e [ (fis gis) ] | % 9
    a8 [ a, (b) ] cis [ (e) b ] cis [ (a') e ] cis [ (e) cis ] | % 10
    a8 [ (a') b, ] cis [ (e) b ] cis [ (a') e ] cis [ (e) cis ] | % 11
    <<{s8 a8 s4 a8 s4 a8 s4 a8 s8} 
        \\ {a8[^( s) a] a[^( s) cis] a[^( s) e'] a,[^( s) a'] }>>  | % 12
    <<{s8_\markup { (piano) } a,8 s4 a8 s4 a8 s4 a8 s8} 
        \\ {a8[^( s) a] a[^( s) cis] a[^( s) e'] a,[^( s) a']}>>  | % 13
    fis8_\markup { (forte) } [ a,8 (d) ] fis [ (gis a) ] e [ a, (cis) ] e [ (gis a) ] | % 14
    fis8_\markup { piano }  [ a,8 (d) ] fis [ (gis a) ] e [ a, (cis) ] e [ (gis a) ] | % 15
    d,8_\markup { (forte) } [ (b8 cis) ] d [ (a cis) ] d [ (gis, cis) ] d [ (e, d') ]| % 16
    cis8 [ (a b) ] cis [ (gis b) ] cis [ (fis, a) ] cis [ (e, a) ] | % 17
    c8 [ (dis,) c' ] b [ (c) a ] fis' [ (a,) c ] b [ (c) a ] | % 18
    g8 [ e (g) ] b [ (cis dis) ] e [ g, (b) ] dis [ (e fis) ] | % 19
    g8 [ b, (dis) ] e [ (g a) ] b [ e, (g) ] b [ (cis dis) ] | % 20
    e8 [ e, (fis) ] g [ (b) fis ] g [ (e') b ] g [ (b) g ] | % 21
    e8 [ (e') fis, ] g [ (b) fis ] g [ (e') b ] g [ (b) g ] | % 22
    <<{s8 e8 s4 e8 s4 e8 s4 e8 s8} 
        \\ {e8[^( s) dis] e[^( s) fis] g[^( s) fis] e[^( s) dis]}>> | % 23
    <<{s8 e8 s4 e8 s4 e8 s4 e8 s8} 
        \\ {e8[^( s) dis] e[^( s) fis] g[^( s) fis] e[^( s) dis]}>> | % 24
    <<{s8 e8 s4 e8 s4 e8 s4 e8 s8} 
        \\ {e8[^( s) g] dis[^( s) fis] e[^( s) g] dis[^( s) fis]}>> | % 25
    <<{s8 e8 s4 e8 s4 e8 s4 e8 s8} 
        \\ {e8[^( s) g] fis[^( s) a] g[^( s) e] fis[^( s) a]}>> | % 26
    <<{s8 e8 s4 e8 s4 e8 s4 e8 s8} 
        \\ {g8[^( s) fis] g[^( s) a] b[^( s) a] g[^( s) fis]}>> | % 27
    <<{s8 e8 s4 e8 s4 e8 s4 e8 s8} 
        \\ {g8[^( s) fis] g[^( s) a] b[^( s) a] g[^( s) fis]}>> | % 28
    <<{s8 e8 s4 e8 s4 e8 s4 e8 s8} 
        \\ {g8[^( s) b] fis[^( s) a] g[^( s) b] fis[^( s) a] }>> | % 29
    <<{s8 e8 s4 e8 s4 e8 s4 e8 s8} 
        \\ {g8[^( s) e] fis[^( s) dis] e[^( s) g] fis[^( s) dis]}>> | % 30
    <<{s8 e8 s4 e8 s4 e8 s4 e8 s8} 
        \\ {e8[^( s) g] d![^( s) fis] cis[^( s) e] b[^( s) d]}>> | % 31
    <<{s8 e8 s4 e8 s8 s2.} 
        \\ {ais,8[^( s) cis] ais[^( s) cis] fis, g'^( fis e d cis) }>> | % 32
    d8 [( b fis') ] d [ (b fis') ] d [ (b cis) ] d [ (e fis) ] | % 33
    g,8 [ (b d) ] fis [ (b ais) ] b [ (g e) ] d' [ (cis b) ] | % 34
    ais8 [ (e) cis' ] ais [ (e) cis' ] ais [ (e) fis ] g [ (fis e) ] | % 35
    d8 [ (b') fis ] d [ (b') fis ] d [ (b') a ] gis [ (a b) ] | % 36
    eis,8 [ d (cis) ] d [ gis, (fis) ] gis [ d' (cis) ] d [ (eis d) ] | % 37
    cis8 [ e (d) ] cis [ e (b) ] \clef alto ais [ (b cis) ] g [ (fis e) ] | % 38
    d8 [ (fis b) ] a [ (g fis) ] g [ (e d) ] cis [ (d e) ] | % 39
    ais,8 [ (cis fis) ] e [ (d cis) ] d [ (b a) ] gis [ (a b) ] | % 40
    eis,8 [ (b' d) ] eis, [ (b' d) ] b' [ (cis d) ] cis [ (ais b) ] | % 41
    fis,8 [ (b d) ] fis, [ (b d) ] b' [ (cis d) ] cis [ (ais b) ] | % 42
    g,8 [ (b e) ] b' [ (cis d) ] cis [ (ais b) ] \clef treble eis [ (ais, b) ] | % 43
    fis'8 [ cis (d) ] b' [ (a g) ] fis [ (e d) ] c [ (e b) ] \clef alto | % 44
    ais8 [ (g fis) ] e [ (d cis) ] d [ (fis b) ] fis [ (b ais) ] | % 45
    b8 [ (fis e) ] d [ (fis cis) ] d [ (b d) ] fis [ (b fis) ] | % 46
    d8 [ (b' fis) ] d [ (fis cis) ] d [ (b d) ] fis [ (a gis) ] | % 47
    a8 [ (e d) ] cis [ (e b) ] cis [ (a cis) ] e [ (a e) ] | % 48
    cis8 [ (g' e) ] cis [ (e b) ] cis [ (a cis) ] e [ (fis g) ] | % 49
    fis8 [ (a g) ] fis [ (a e) ] fis [ (d e) ] fis [ (a b) ] | % 50
    c8 [ (a g) ] fis [ (a e) ] fis [ (d fis) ] a [ (b c) ] | % 51
    b8 [ (g) a ] b [ (d) a ] b [ (g') d ] b [ (d) a ] | % 52
    b8_\markup { (piano) } [ (g) a ] b [ (d) a ] b [ (g') d ] b [ g d ] | % 53
    <<{s8_\markup { forte }  g,8 s4 g8 s4 g8 s4 g8 s8} 
        \\ {g8[^( s) g] g[^( s) b] g[^( s) d'] g,[^( s) g']}>> | % 54
    <<{s8_\markup { (piano) } g,8 s4 g8 s4 g8 s4 g8 s8} 
        \\ {g8[^( s) g] g[^( s) b] g[^( s) d'] g,[^( s) g']}>> | % 55
    e8_\markup { (forte) } [ g, (c) ] e [ (fis g) ] d [ g, (b) ] d [ (fis g) ] | % 56
    e8 [ g, (c) ] e [ (fis g) ] d [ g, (b) ] d [ (fis g) ] | % 57
    c,8 [ (a b) ] c [ (a g) ] fis [ (a b) ] c [ (a fis) ] | % 5
    d8 [ (fis a) ] c [ (d fis) ] a [ (d a) ] fis [ (d c) ] | % 59
    b8 [ (g a) ] b [ (d a) ] b [ (g a) ] b [ (g' a,) ] | % 60
    b8 [ (g a) ] b [ (d a) ] b [ (g a) ] b [ (g' e) ] | % 61
    cis8 [ a (b) ] cis [ (e fis) ] g [ (e d) ] cis [ (e b) ] | % 62
    cis8 [ a (b) ] cis [ (e fis) ] g [ (a b) ] cis [ (d e) ] | % 63
    fis,8 [ d (e) ] fis [ (a) e ] fis [ d (e) ] fis [ (d') e, ] | % 64
    fis8 [ d (e) ] fis [ (a) e ] fis [ d (e) ] fis [ (d') b ] | % 65
    gis8 [ (e fis) ] gis [ (b cis) ] d [ (b a) ] gis [ (b fis) ] | % 66
    gis8 [ (e fis) ] gis [  ( \clef treble b cis) ] d [ (e fis) ] gis [ (a b) ] | % 67
    cis,8 [ (a b) ] cis [ (e fis) ] g [ (e d) ] cis [ (e b) ] | % 68
    cis8 [ (a b) ] cis [ (e fis) ] g [ (a b) ] cis [ (d e) ] | % 69
    a,,8 [ (fis') d' ] fis, [ (d) e ] fis [ (d') e, ] fis [ (d') d, ] | % 70
    a8 [ (g') e' ] g, [ (e fis) ] g [ (e' fis,) ] g [ (e' e,) ] | % 71
    a,8 [ (a') fis' ] a, [ (fis) g ] a [ (fis') g, ] a [ (fis') fis, ] | % 72
    a,8 [ (b') g' ] b, [ (g) a ] b [ (g') a, ] b [ (g') g, ] | % 73
    a,8 [ (cis') g' ] fis [ (e d) ] cis [ (fis e) ] d [ (cis b) ] | % 74
    a8 [ fis' (e ] fis) [ g, (fis ] g) [ e' (d ] e) [ fis, (e ] | % 75
    fis8) [ d' (cis ] d) [ e, (d ] e) [ cis' (b ] cis) [ a fis ] | % 76
    d8 [ (b' a) ] b [ (g e) ] cis [ (a' g) ] a [ (fis d) ] | % 77
    b8 [ (g' fis) ] g [ (e cis) ] a8. [ b16 (cis32 d32 e32 fis32) ] g8 [ e cis ] \clef alto | % 78
    a8 [ (fis' e) ] fis [ (d b) ] g8. [ a32 (b32 cis16 d16) ] e8 [ (cis a) ] | % 79
    fis8 [ (d' cis) ] d [ (b g) ] e8. [ (fis32 g32 a16 b16) ] cis8 [ (a fis) ] | % 80
    d8 [ b' (g) ] e [ (cis) a' ] b, [ g' (e) ] cis [ (a) fis' ] | % 81
    g,8 [ e' (cis) ] a [ (fis) d' ] e, [ (g a) ] cis [ (e fis) ] | % 82
    g8 [ (a cis) ] \clef treble e [ (g a) ] cis4. ~ cis16 [b a (g fis e) ] | % 83
    a16 [ (g fis e d cis) ] fis [ (e d cis b a) ] \clef alto d [ (cis b a gis fis) ] b [ (a gis fis e d) ] | % 84
    cis16 [ (e a cis e a) ] e [ (cis a e cis a) ] cis [ (e a cis e a) ] e [ (cis a e cis a) ] | % 85
    g16 [ (e' a cis e a) ] e [ (cis a e cis a) ] g [ (e' a cis e a) ] e [ (cis a e cis a) ] | % 86
    fis16 [ a (b c b a) ] d, [ a' (b c b a) ] fis' [ a( b c b a) ] fis' [ a, (b c b a) ] | % 87
    b16 [ (d c b a g) ] b [ (a g fis e d) ] e [ (g fis e d cis) ] fis [ (e d cis b a) ] | % 88
    f'16 [ (e d e f) d ] gis, [ d' (e f e d) ] b' [ d, (e f e d) ] d' [ d, (e f e d) ] \clef treble | % 89
    <<{s8 a'8 s4 a8 s4 a8 s4 a8 s8} 
        \\ {a8[^( s) a] a[^( s) cis] a[^( s) e'] a,[^( s) a']}>>  | % 90
    <<{s8 a,8 s4 a8 s4 a8 s4 a8 s8} 
        \\ {a8[^( s) a] a[^( s) cis] a[^( s) e'] a,[^( s) a']}>> \clef alto | % 91
    <<{s8 d,,8 s4 d8 s4 d8 s4 d8 s8} 
        \\ {d8[^( s) d] d[^( s) fis] d[^( s) a'] d,[^( s) d']}>>  | % 92
    <<{s8 d,8 s4 d8 s4 d8 s4 d8 s8} 
        \\ {d8[^( s) d] d[^( s) fis] d[^( s) a'] d,[^( s) d']}>>  | % 93
    gis,16 [ (a b cis d e) ] d [ (e) cis (e) d (e)] d [ (e) cis (e) d (e)] d [ (e) cis (e) b (e)]| % 94
    g,16 [ (a cis d e d) ] cis [ (e) b (e) cis (e)] cis [ (e) b (e) cis (e)] cis [ (e) b (e) a, (e')] \clef treble | % 95
    fis,8 [ e' (a) ] d, [ (cis b) ] e, [ d' (g) ] cis, [ (b a) ] | % 96
    d,8 [ a' (fis') ] b [ (gis a) ] a [ (fis g) ] g [ (e f) ] | % 97
    f8 [ (d es) ] es [ (cis d)] \clef alto <<{d8} \\ {b,} \\ {gis'}>> 
        r8 r8 <<{d'} \\ {bes,} \\ {g'}>> r8 r8 | % 98
    <<{d'} \\ {a,} \\ {fis'}>> r8 r8 <<{d'} \\ {gis,,} \\ {f'}>> r8 r8 
        <<{d'} \\ {a,} \\ {e'}>> r8 r8 <<{cis'} \\ {a,} \\ {e'}>> r8 r8 | % 99
    d8 [ (fis a) ] d [ (a fis) ] d [ (fis a) ] c [ (a fis) ] | % 100
    d8 [ (g b) ] d [ (b d) ] \clef treble g [ (d g) ] b [ (g e) ] | % 101
    cis8 [ (e d) ] e [ (g fis) ] g [ (b a) ] b [ (d cis) ] | % 102
    d8 [ (a fis) ] a [ (fis d) ] fis [ (d a) ] \clef alto d [ (a fis) ] | % 103
    a8 [ fis d ] fis [ d a ] d, [ a' fis' ] d'4 \fermata s8 \bar "|." % 104
    }
