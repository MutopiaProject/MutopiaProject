\version "2.18.0"

<<
\new Staff = "tenorsoloII" {
	\set Staff.instrumentName = "Tenore II"
	\set Staff.midiInstrument = "Choir aahs"
	<<
		\new Voice = "tenorsoloII" \tenorsoloII
		\Markings
	>>
}
\new Lyrics \lyricsto "tenorsoloII" \tenorsoloIILyrics
>>
