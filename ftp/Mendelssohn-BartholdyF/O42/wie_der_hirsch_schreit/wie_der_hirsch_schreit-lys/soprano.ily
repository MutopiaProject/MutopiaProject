\version "2.18.0"

<<
\new Staff = "soprano" {
	\set Staff.instrumentName = "Soprano"
	\set Staff.midiInstrument = "Choir aahs"
	<<
		\new Voice = "soprano" \soprano
		\Markings
	>>
}
\new Lyrics \lyricsto "soprano" \sopranoLyrics
>>
