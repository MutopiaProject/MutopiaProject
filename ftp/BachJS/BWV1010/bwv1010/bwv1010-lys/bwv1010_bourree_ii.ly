\version "2.4.0"
% Note - Character set converted to UTF-8 for source repository consistency
% For correct compilation with LilyPond 2.4 this change may need to be reverted

bourreeII = \relative c' {
	\time 4/4
	\key ees \major
	\set Staff.midiInstrument = "cello"

	% 1
	\partial 4 <ees g,>4 | <ees aes,> f <f bes,> d |
	<<{ees8 f g4} \\ c,8>> <g' g,>4( ees) | aes, f' bes, d |
	ees bes ees, \bar ":|:" <<bes'' \\ ees,>> |
	<<{bes' c c bes} \\ {aes s g s}>> | aes8 g aes4 f( aes) |
	<<{bes aes aes g} \\ {d s ees s}>> |
	f8 ees d c bes aes <ees' g,>4 |
	<ees aes,> f <f bes,> d |
	<<{ees8 f g4} \\ c,8>> <g' g,>4( ees) |
	aes, f'^\markup{\italic "(Bourrée 1 da capo)"} bes, d |
	<<ees2. \\ <bes ees,>4>> \bar ":|"
}
