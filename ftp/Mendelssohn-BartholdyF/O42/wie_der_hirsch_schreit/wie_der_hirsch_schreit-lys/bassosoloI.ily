\version "2.18.0"

<<
\new Staff = "bassosoloI" {
	\set Staff.instrumentName = "Basso I"
	\set Staff.midiInstrument = "Choir aahs"
	<<
		\new Voice = "bassosoloI" \bassosoloI
		\Markings
	>>
}
\new Lyrics \lyricsto "bassosoloI" \bassosoloILyrics
>>
