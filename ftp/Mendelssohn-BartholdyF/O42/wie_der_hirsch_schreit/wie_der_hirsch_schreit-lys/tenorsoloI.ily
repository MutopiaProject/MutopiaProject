\version "2.18.0"

<<
\new Staff = "tenorsoloI" {
	\set Staff.instrumentName = "Tenore I"
	\set Staff.midiInstrument = "Choir aahs"
	<<
		\new Voice = "tenorsoloI" \tenorsoloI
		\Markings
	>>
}
\new Lyrics \lyricsto "tenorsoloI" \tenorsoloILyrics
>>
