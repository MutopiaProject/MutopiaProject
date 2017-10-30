\version "2.18.0"

 guitartwo = \relative c' {
	\cadenzaOn
	d32[ c d c d c16.] \bar "||" %Trill
	c32[ b c8.] \bar "||" %Mordant
	d32[ c d c d c b c] \bar "||" %Trill and Mordant
	d32[ c b c] \bar "||" %Turn
	b32[ c d c d c d c]  \bar "||" %Ascending Trill
	d32[ c b c d c d c] \bar "||" %Descending Trill
	b32[ c d c d c b c] s64 \bar "||" %Ascending Trill with Mordant
	d32[ c b c d c d c d c b c] \bar "||" %Descending Trill with Mordant
	d8[ c32 d c d c16] \bar "||" %Appoggiatura and Trill
	s32 \grace s16 a32[ b c8.] \bar "||" %Schleifer
}

