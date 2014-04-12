\version "2.18.0"

<<
\new Staff = "alto" {
	\set Staff.instrumentName = "Alto"
	\set Staff.midiInstrument = "Choir aahs"
	<<
		\new Voice = "alto" \alto
		\Markings
	>>
}
\new Lyrics \lyricsto "alto" \altoLyrics
>>
