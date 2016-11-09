sopranoStaff =
#(define-music-function
     (parser location notes lyrics)
     (ly:music? ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        instrumentName = #sopranoMarkup
        midiInstrument = #"voice oohs"
      } <<
        \incipitNote { \clef "soprano" } { s4 }
        \new Voice = "sopranoVoice" { #notes }
        \new Lyrics \lyricsto "sopranoVoice" { #lyrics }
      >>
   #}
)

altoStaff =
#(define-music-function
     (parser location notes lyrics)
     (ly:music? ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        instrumentName = #altoMarkup
        midiInstrument = #"voice oohs"
      } <<
        \incipitNote { \clef "alto" } { s4 }
        \new Voice = "altoVoice" { #notes }
        \new Lyrics \lyricsto "altoVoice" { #lyrics }
      >>
   #}
)

tenorStaff =
#(define-music-function
     (parser location notes lyrics)
     (ly:music? ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        instrumentName = #tenorMarkup
        midiInstrument = #"voice oohs"
      } <<
        \incipitNote { \clef "tenor" } { s4 }
        \new Voice = "tenorVoice" { #notes }
        \new Lyrics \lyricsto "tenorVoice" { #lyrics }
      >>
   #}
)

bassStaff =
#(define-music-function
     (parser location notes lyrics)
     (ly:music? ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        instrumentName = #bassMarkup
        midiInstrument = #"voice oohs"
      } <<
        \new Voice = "bassVoice" { #notes }
        \new Lyrics \lyricsto "bassVoice" { #lyrics }
      >>
   #}
)

satbchoir =
#(define-music-function
     (parser location sopNts sopLyr altNts altLyr tenNts tenLyr basNts basLyr) 
     (ly:music? ly:music? ly:music? ly:music? ly:music? ly:music? ly:music?
      ly:music?)
   #{
      \new ChoirStaff \with {
        \consists "Keep_alive_together_engraver"
        % midiInstrument = #"choir aahs"
      } <<
          \sopranoStaff #sopNts #sopLyr
          \altoStaff #altNts #altLyr
          \tenorStaff #tenNts #tenLyr
          \bassStaff #basNts #basLyr
      >>
   #}
)

satbchoirNoLyrics =
#(define-music-function
     (parser location sopNts altNts tenNts basNts) 
     (ly:music? ly:music? ly:music? ly:music?)
   #{
      \new ChoirStaff \with {
        \consists "Keep_alive_together_engraver"
        % midiInstrument = #"choir aahs"
      } <<
        \sopranoStaff #sopNts { }
        \altoStaff #altNts { }
        \tenorStaff #tenNts { }
        \bassStaff #basNts { }
      >>
   #}
)

