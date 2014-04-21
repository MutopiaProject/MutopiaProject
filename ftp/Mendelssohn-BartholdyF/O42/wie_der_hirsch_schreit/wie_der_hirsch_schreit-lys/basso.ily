\version "2.18.0"

<<
\new Staff = "basso" {
	\set Staff.instrumentName = "Basso"
	\set Staff.midiInstrument = "Choir aahs"
	<<
		\new Voice = "basso" \basso
		\Markings
	>>
}
\new Lyrics \lyricsto "basso" \bassoLyrics
>>
