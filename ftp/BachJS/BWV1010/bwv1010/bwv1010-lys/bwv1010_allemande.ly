\version "2.18.2"

allemande = \relative c'' {
	\time 2/2
	\key ees \major
	\set Staff.midiInstrument = "cello"

    \repeat volta 2 {
	    % 1
	    \partial 8
	    bes8 | ees[( d16 c)] bes[( aes g aes)] bes[( aes) g f] ees[d c bes] |
	    c[( ees f g)] aes[( g f ees]) d[( ees f d] bes8[)^\trill aes] |
	    % 3
	    g16[( bes c d)] ees8[( des']) aes, c' f, ees |
	    f,16[( aes bes c)] d8[( c']) g,bes' ees, d |
	    % 5
	    ees,16[( g aes bes)] c8[( bes']) f,[aes'] d,[bes'16(aes)] |
	    g[( f ees g]) f[ees d f] <<{ees4~ ees16_[ f( d ees)]} \\ {ees,4 s} \\ {bes' s}>> |
	    % 7
	    f'16[(ees d) c] bes[ c d ees] f[(g) aes f] g[(f ees f)] |
	    g[(f ees) d] c[ d ees f] g[(a) bes g] a[(g f g)] |
	    % 9
	    a[(g f ees)] d8[( c']) g,16[(bes c d)] ees8[( d']) |
	    c16[(bes a g)] f8[( ees']) bes,16[(d ees f)] g8[( f']) |
	    % 11
	    ees16[(d c bes)] a8[( g']) f16[(ees d c)] bes8[( aes]) |
	    g16[(f ees d)] c8[ bes] a16[(ees' g8] ~ g[ f16 ees)] |
	    % 13
	    d[(c bes d)] c[(bes a c)] bes[ d( c bes)] c[ ees( d c)] |
	    d[(ees f g)] aes!8[( bes,]) ees,[aes'] g16[(f ees d)] |
	    % 15
	    c[(d ees f)] g8[bes] a16[( bes c bes]) a[( g f ees]) |
	    d[( c bes) d] c[bes a c] bes4.
	}
	\repeat volta 2 {
	    % 17
	    f'8 | bes[( a16 g)] f[( ees d ees)] f[( ees) d c] bes[aes! g f] |
	    g[( ees' f g)] d[aes'(g f)] g[(aes bes g]) ees8[d16( c)] |
	    % 19
	    b[(c d ees)] f8[( aes]) d16[(c b! a)] g8[( f]) |
	    c16[( d) ees f] g[ b c d] ees[(d c bes] aes![ g f ees)] |
	    % 21
	    aes[(g f ees] d[c b a)] f'[(ees) d c] b[a g f] |
	    ees8 c'' g, b' <<{c4~ c8_[ c16( d)]} \\ {c,,4 s} \\ {ees' s} \\ {g, s}>> |
	    % 23
	    ees''16[(d) ees d] c[(bes!) c bes] aes[(bes) aes bes] c[(d c d)] |
	    ees[(d ees d] c[ bes aes g)] fis[( g a c]) d8[c,] |
	    % 25
	    bes[d'] ees,16[(g a bes)] c8[a,] d16[(fis g a)] |
	    bes[( a g bes]) a[( g fis a]) g8[d] g,[ bes'16(c)] |
	    % 27
	    des[(c) des c] bes[(aes!) bes aes] g[(f) g f] e[(g aes bes)] |
	    c[( bes aes c]) bes[( aes g bes]) aes8[f] f,[ f'16(g)] |
	    % 29
	    aes[(g f ees)] d[ ees f g] aes[bes c d] ees[(d ees d)] |
	    ees[(d) c bes] aes[ g f ees] f[(ees) d c] bes8[f'] |
	    % 31
	    bes,16[(c d ees)] f8[g] c,[aes' d, aes'] |
	    ees16[(f g aes)] bes8[c] f,[des' g, des'] |
	    % 33
	    c16[(bes aes g)] aes8[( c]) f16[(ees d! ees)] f[(ees d c)] |
	    bes[(aes g f)] g8[( bes]) ees16[(d c d)] ees[(d c bes)] |
	    % 35
	    aes[(g f g)] aes[(g f ees)] d[(c bes c)] d[( c bes aes]) |
	    g[(bes c d)] ees8[des'] aes,[des'] c16[(bes aes g)] |
	    % 37
	    aes[(g f ees]) d8[c'] g,[c'] bes16[(aes g f)] |
	    g[(f ees d] c[ bes aes g] f[) aes'(g f)] bes,[aes'(g f)] |
	    % 39
	    ees,[g'(f ees)] a,[ges'(f ees)] d[( f c'8] ~ c[) bes16(aes!)] |
	    g![( f) ees f] bes,8[d'] <<{ees4.} \\ {ees,,} \\ {g'} \\ {bes,}>>
	}
}
