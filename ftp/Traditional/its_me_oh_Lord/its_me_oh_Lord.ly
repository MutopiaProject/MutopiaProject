\version "2.11.0"

\header {
  title = "It's a me, Oh Lord"
  subtitle = "Traditional"
  subsubtitle =""
  copyright = "Public Domain"
  source = "New arrangement"
  enteredby = "Simone Brun"
  maintainer = "Simone Brun"
  maintainerEmail = "brunsim@gmail.com"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Voice (SATB)"
  style = "Gospel"
  license = "Public Domain"

 footer = "Mutopia-2007/07/13-1003"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "italiano.ly"

verse= \lyricmode {
It's a me, it's a me, it's a me, Oh Lord.
Stan -- ding in the need of prayer.
It's a me, it's a me, it's a me, Oh Lord.
Stan -- ding in the need of prayer.
}
 

chorale = \new ChoirStaff  {
	<<
	\new Staff {
		\time 2/4
		\set Staff.instrumentName="Femmes"
		\set Staff.midiInstrument="choir aahs"
		\key re \major
		\clef treble
		<<
		\context Voice = "melodySAT" \relative do' { \voiceOne
			\partial 4	
		fad8 fa fad4 fad8 fa fad4 fad8 fa fad4 mi re2 |
		re8 re re re mi4 mi fad2 |
		\once \override Voice.Rest #'Y-offset = #-0.5
		r4 la8 la la4 la8 la la4 la8 la la4 sol fad2 |
		re8 re re re fad4 mi re2 |
		}
		\context Voice = "Alto" \relative do' { \voiceTwo
			\partial 4
		re8 re re4 re8 re re4 re8 re re4  dod la2 |
		si8 si si si dod4 dod re2 |
		s4 fad8 fad fad4 fad8 fad red4 red8 red red4 dod re!2 | 
		si8 si si si dod4 dod la2 |
		}
		>>
	}
	\context Lyrics = "lmelodySAT" { s1 }
	

	\new Staff {
		\set Staff.instrumentName="Hommes"
		\set Staff.midiInstrument="choir aahs"
		\key re \major
		\clef bass
		<<
		\context Voice = "Tenor" \relative do' { \voiceOne
			\partial 4
		la8 sold la4 la8 sold la4 la8 sold la4 la fad2 |
		fad8 fad fad fad sol4 sol la2 |
		\once \override Voice.Rest #'Y-offset = #-0.5
		r4 la8 la la4 la8 la do4 do8 do do4 la sold2 |
		sold8 sold sold sold la4 sol! fad2
		}
		\context Voice = "Bass" \relative do { \voiceTwo
			\partial 4
		re8 re re4 re8 re re4 re8 mi re4  sol re2 | 
		si8 si si si la4 la re2 |
		s4 re8 re re4 re8 re fad4 fad8 fad fad4 mi si2 |||
		si8 si si si la4 la re2 |
		}
		>>		
		}
	>>
}


\book {

\score {
	<<
		\chorale
		\context Lyrics = "lmelodySAT" \lyricmode  { \lyricsto "melodySAT" \verse }
		
	>>
	
	\midi {
	}

	\layout  {
	}
}

\markup \fill-line { \wordwrap-string #"
	It's a me, it's a me, it's a me Oh Lord,
	
	Standing in the need of prayer (bis)
	

	Not my mother, not my father, it's a me Oh Lord
	
	Standing in the need of prayer (bis)
	
	
	Not my brother, not my sister, it's a me Oh Lord
	
	Standing in the need of prayer (bis)
	
	
	Not my teacher, not my preacher, it's a me Oh Lord
	
	Standing in the need of prayer (bis)"}
}
\paper {
}

