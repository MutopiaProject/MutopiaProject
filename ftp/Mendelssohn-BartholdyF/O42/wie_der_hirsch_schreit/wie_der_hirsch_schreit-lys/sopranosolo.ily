\version "2.18.0"

<<
\new Staff = "sopranosolo" {
	\set Staff.instrumentName = "Soprano Solo"
	\set Staff.midiInstrument = "Choir aahs"
	<<
		\new Voice = "sopranosolo" \sopranosolo
		\Markings
	>>
}
\new Lyrics \lyricsto "sopranosolo" \sopranosoloLyrics
>>
