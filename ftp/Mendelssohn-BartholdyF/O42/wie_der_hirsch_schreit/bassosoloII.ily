\version "2.18.0"

<<
\new Staff = "bassosoloII" {
	\set Staff.instrumentName = "Basso II"
	\set Staff.midiInstrument = "Choir aahs"
	<<
		\new Voice = "bassosoloII" \bassosoloII
		\Markings
	>>
}
\new Lyrics \lyricsto "bassosoloII" \bassosoloIILyrics
>>
