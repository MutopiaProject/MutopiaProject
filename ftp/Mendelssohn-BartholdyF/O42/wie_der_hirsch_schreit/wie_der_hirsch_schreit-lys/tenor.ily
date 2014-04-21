\version "2.18.0"

<<
\new Staff = "tenor" {
	\set Staff.instrumentName = "Tenore"
	\set Staff.midiInstrument = "Choir aahs"
	<<
		\new Voice = "tenor" \tenor
		\Markings
	>>
}
\new Lyrics \lyricsto "tenor" \tenorLyrics
>>
