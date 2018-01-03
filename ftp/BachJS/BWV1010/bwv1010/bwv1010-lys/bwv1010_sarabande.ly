\version "2.18.2"

sarabande = \relative c'' {
	\time 3/4
	\key ees \major
	\set Staff.midiInstrument = "cello"

	\repeat volta 2 {
	    % 1
	    <<{bes4( c) des} \\ ees,2.>> |
	    <<{des'8.( bes16) \stemNeutral \acciaccatura bes8 c4(~c16 bes aes g)} \\ <ees aes,>8>> |
	    <<{f4( g) aes} \\ bes,2.>> |
	    <<{aes'8.( f16) \stemNeutral g8. bes16 ees,4} \\ <bes ees,>8>> |
	    <<{ees8.( c16) \stemNeutral d8.( f16) aes4} \\ bes,8>> |
	    <<{aes'8.( f16) \stemNeutral g8.( bes16) des4} \\ <bes, ees,>8>> |
	    % 7
	    <<{des'8.( bes16) \stemNeutral c8.( e16) g4} \\ e,4>> |
	    <<{bes'4 \stemNeutral a8.( g16) f8.( ees16)} \\ f4>> |
	    <<{bes8.( d16) \stemNeutral f8.( a,16) bes4} \\ d,4>> |
	    <<{bes'8.( d16) \stemNeutral g8.( a,16) bes4} \\ ees,4>> |
	    <<{bes'8[ a16 g] \stemNeutral f8[ ees] \acciaccatura ees8 d[( ees16 c])} \\ f8>> |
	    bes,2.
	}
	\repeat volta 2 {
	    % 13
	    <<{f'4( g) aes} \\ bes,2.>> |
	    <<{aes'8.( f16) \stemNeutral \acciaccatura g8 g4(~g16 f ees d)} \\ b8.>> |
	    <<{<ees' g,>4 <d f,> <c fis,>} \\ {c,8 s aes s a s}>> |
	    <<{c'8.( a16) \stemNeutral b8.( d16) g,8.( f!16)} \\ <d g,>8>> |
	    <e bes>4( <f aes,>) <g g,> |
	    % 18
	    <<{aes8.( f16) \stemNeutral d8.( b'16) c4~} \\ {<c, f,>8 s s4 ees(}>> |
	    <<{c'8.( d16) d4.(^\trill c8)} \\ {f,4) g2}>> |
	    c8.( g16) ees8.( g16) c,8. bes16 |
	    <<{<c' f,>4( \stemNeutral d) ees} \\ a,,8>> |
	    <<{ees''8.( c16) \stemNeutral d8.( f16) aes,4} \\ <f bes,>8>> |
	    <aes bes,>8.( f16) g8.( bes16) <<<ees, a,>4 \\ c,8>> |
	    % 24
	    <ees' bes>8.( c16) d8.( f16) bes,8. aes!16 |
	    <ees' g,>8.( g16) bes8.( d,16) ees4 |
	    <ees aes,>8.( g16) c8.( d,16) ees4 |
	    <ees bes>8.( aes16) g8.( f16) ees8( f16 d) |
	    <<{ees8( g16 bes) \stemNeutral ees8( bes16 g) ees4} \\ c8>> |
	    % 29
	    <<{ees8.( ges16) \stemNeutral c8. f,16 ees'4} \\ a,,4>> |
	    <<{ees''8( d16 c) \stemNeutral d8. f16 bes,4} \\ <f aes,!>8>> |
	    <bes ees, g,>8 aes16 g f8[ ees] bes([ ees16 d)] |
	    ees,16( g bes d) ees( g bes d) ees4
	}
}
