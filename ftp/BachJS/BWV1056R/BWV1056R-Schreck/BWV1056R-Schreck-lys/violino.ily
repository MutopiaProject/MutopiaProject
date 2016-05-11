\version "2.18.2"

largoViolino = {
  \set Staff.midiInstrument = #"violin"
  \transpose g g' {
	\key g \minor
	\time 4/4
	% 1
	d'4\mordent~  d'16 ees' f' g'  \appoggiatura d'8 c'4~  c'16 d' ees' f' |
	bes8 bes'16 g'  ees'8~ ees'32 f' ees' d'  ees'16 c'' a' f'  ees'8\trill d'16 ees' |
	\appoggiatura ees'8 d'8 c'16 bes  r4  bes'4~  bes'16 a'32 g' a'16 bes' |
	% 2
	c'4~  c'16 e' g' bes'  a'4~  a'32 g' f' e' d'16 c' |
	bes8~ bes32 c' bes a  bes16 d' f' a'  g'4~  g'32 f' e' f' g' e' c' bes |
	a16 c' e' g'  f'4~  f'16 g'32 a' bes'32 a' bes' d''  e'8.\mordent f'16 |
	% 3
	f'4  r4  aes'4~  aes'16 \appoggiatura g'16 f'16 \appoggiatura ees'16 d'16 c' |
	b4~  b16 c' d' ees'  f' g' aes' b'  d'' f'~ f'32 g' aes' g' |
	f'16( ees') d'\prall c'  ees''8. g'16  \appoggiatura aes'16 g'32 f' g'16 ees''16. \tuplet 3/2 {d''64 c'' b'}  \appoggiatura {\scaleDurations #' (1 . 2) b'16} c''8. g'16 |
	% 4
	g'32 e' f'16~ f'32 g'64 aes' g'32 f' d''8. \tuplet 3/2 {f'32 ees' d'} ees'16 g' c'' d'' d''8. c''16 |
	\mark "H" c''4 r4 ees'4~ ees'32 f' ees' d' ees'16 c'' |
	\appoggiatura ees'8 d'4~  d'16 bes c' d'  ees'32( f' ees' d' ees' f' g' aes')  bes'16 aes'32 g' aes' d' aes'16( |
	% 5
	aes'8) g'  r16 c'16 d'\turn ees'  \tuplet 3/2 {a16 g a} \tuplet 3/2 {bes a bes}  \tuplet 3/2 {c' d' c'} \tuplet 3/2 {bes c' d'} |
	\tuplet 3/2 {ees'16 d' ees'} c''8~  c''32 d' ees' f' ees' d' c'16  d'( f' bes' g)  f'( ees' a' bes') |
	d'8\prall c'  r4  d'4~  d'32 c' ees' d' f' ees' g'16 |
	% 6
	g'16 c'8.~  c'32 bes d' c' ees' d' f'16  f' bes bes' g'  \appoggiatura f'8 ees'4~ |
	ees'16 c'' a' f'  f'( ees'\trill d' ees')  \appoggiatura ees'16 d'16 ees'32 f' ees' d' c' b  b8( aes32\prall) g aes16 |
	g16( a) \appoggiatura bes16 a16( bes)  bes4~  bes32 c' bes a bes ees' c'16  a8.\trill bes16 |
	% 7
	bes16 d' g'32 e' f'16  f'8. f'16~  f'16 g'32 a' bes' g' d'16  ees'16~ ees'32 d' c' d' ees'16 |
	\appoggiatura bes16 a16 bes32 c' c'\prall bes c'16  d'8~ d'64 c' bes a bes d' fis32  g16 g'16. a'64 g' fis'32 g'  d'8( c'16.) d'32 |
	d'1\fermata |
	\bar "||"
  }
}
