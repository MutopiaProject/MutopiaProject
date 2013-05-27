\version "2.6.0"

\header {
  title = "Sonate Opus KV 331 - Variation 1"
  composer = "Wolfgang Amadeus Mozart"
  mutopiatitle = "Sonate Opus KV 331 - Variation 1"
  mutopiacomposer = "MozartWA"
  mutopiapoet = "Wolfgang Amadeus Mozart"
  mutopiainstrument = "Piano"
  date = "1778 or 1781-3"
  source = "Breitkopf & Härtel, Leipzig"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2005/October/23"
  version = "2.6.0"
  
  footer = "Mutopia-2005/10/29-615"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \major
 \time 6/8
 \repeat volta 2 { \override Voice.TextScript #'padding = #3.0
 bis'16_\p^\markup { \huge "VAR.I." } cis'' r cis''( bis' cis'') dis''( e'') r e''( fis'' e'')
 e''16( b'!) r b'( ais' b') cis''( d''!) r d''( e'' d'')
 d''16( a'!) r a'( gis' a') ais'( b') r b'( ais' b')
 bis'( cis'' bis' cis'' e'' d'' cis'' b' a'! gis' fis' e')
 <e' a' cis''>4\f <b' d''>8 <bis' dis''>8( <cis'' e''>8) r16 <a' cis''>16
 <e' gis' b'!>8\staccato <e' gis' b'>\staccato <e' a' cis''>\staccato
 << { <ais' cis''>8([ <b' d''>]) } \\ { e'4 } >> r16 <gis' b'>
 a'!8\staccato[ a'8\staccato] b'16^\trill([ a'32 b'] cis''8\staccato)[ cis''8\staccato] <fis' b' d''>8
 <e' a' cis''>8 <e' a' cis''> <d' e' gis' b'> <cis' e' a'> r r }
 \repeat volta 2 { dis''16\p( e'') r e''( dis'' e'') eis''( fis'') r fis''( eis'' fis'')
 gis''16( a'') fisis''( gis'') eis''( fis'') dis''( e''!) r e''16\staccato( e''\staccato e''\staccato)
 e''16\sf( cis'' a') e''\p\staccato( e''\staccato e''\staccato)
 e''16\sf( d'' gis') e''\p\staccato( e''\staccato e''\staccato)
 e''16\sf( cis'' a') e''\p( cis'' a') <a' cis''>4( <gis' b'>8)
 bis'16( cis'') r cis''( bis' cis'') dis''( e'') r e''( fis'' e'')
 e''16( b'!) r b'( ais' b') cis''( d''!) r d''( e'' d'')
 d''16( a'!) r a'16( cis'' b') d''( cis'') r cis''( e'' d'')
 bis'16( cis'') r cis''( d'' b'!) << { b'8.( bis'16 cis''8) } \\ { gis'4( a'8) } >>
 <e' a' cis''>8\f <e' a' cis''> <e' gis' d''> <e' a' e''> <a' e''>
 << { fis''16( gis''32 a'') } \\ { a'8 } >>
 <cis' e' a'>8 <cis' e' a'> <d' e' gis' b'> <cis' e' a'> r r }
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 6/8
 \repeat volta 2 { r8 <a e'>\p r r <cis' e'> r r <gis e'> r r <b e'> r
 r <fis e'> r r <gis e'> r <a e'>4 <d fis>8 <e gis>4 r8
 a,16\f a a a a a a, a a a a a e, e e e e e e, e e e e e fis, fis fis fis gis, gis a, a a a d, d
 e,16 e e e e, e a,,8 a, r }
 \repeat volta 2 { r8 <a cis'>8\p r r <a d'> r <a fis'> <a e'> <a d'> r <a cis'> r
 <a cis' e'>4. <b d' e'>4. <cis' e'>4 <fis a dis'>8 <e e'>4.
 r8 <a e'> r r <cis' e'> r r <gis e'> r r <b e'> r r <fis e'> <gis e'> r <a e'> <d b>
 r8 <e a> <e gis> a e a,
 a,,16\f a, a, a, b,, b, cis, cis cis cis d, d e, e e e e, e a,,8 a, r }
}
>>

 \layout { }

}

\score {

 \unfoldRepeats

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \major
 \time 6/8
 \repeat volta 2 { \override Voice.TextScript #'padding = #3.0
 bis'16_\p^\markup { \huge "VAR.I." } cis'' r cis''( bis' cis'') dis''( e'') r e''( fis'' e'')
 e''16( b'!) r b'( ais' b') cis''( d''!) r d''( e'' d'')
 d''16( a'!) r a'( gis' a') ais'( b') r b'( ais' b')
 bis'( cis'' bis' cis'' e'' d'' cis'' b' a'! gis' fis' e')
 <e' a' cis''>4\f <b' d''>8 <bis' dis''>8( <cis'' e''>8) r16 <a' cis''>16
 <e' gis' b'!>8\staccato <e' gis' b'>\staccato <e' a' cis''>\staccato
 << { <ais' cis''>8([ <b' d''>]) } \\ { e'4 } >> r16 <gis' b'>
 a'!8\staccato[ a'8\staccato] b'16^\trill([ a'32 b'] cis''8\staccato)[ cis''8\staccato] <fis' b' d''>8
 <e' a' cis''>8 <e' a' cis''> <d' e' gis' b'> <cis' e' a'> r r }
 \repeat volta 2 { dis''16\p( e'') r e''( dis'' e'') eis''( fis'') r fis''( eis'' fis'')
 gis''16( a'') fisis''( gis'') eis''( fis'') dis''( e''!) r e''16\staccato( e''\staccato e''\staccato)
 e''16\sf( cis'' a') e''\p\staccato( e''\staccato e''\staccato)
 e''16\sf( d'' gis') e''\p\staccato( e''\staccato e''\staccato)
 e''16\sf( cis'' a') e''\p( cis'' a') <a' cis''>4( <gis' b'>8)
 bis'16( cis'') r cis''( bis' cis'') dis''( e'') r e''( fis'' e'')
 e''16( b'!) r b'( ais' b') cis''( d''!) r d''( e'' d'')
 d''16( a'!) r a'16( cis'' b') d''( cis'') r cis''( e'' d'')
 bis'16( cis'') r cis''( d'' b'!) << { b'8.( bis'16 cis''8) } \\ { gis'4( a'8) } >>
 <e' a' cis''>8\f <e' a' cis''> <e' gis' d''> <e' a' e''> <a' e''>
 << { fis''16( gis''32 a'') } \\ { a'8 } >>
 <cis' e' a'>8 <cis' e' a'> <d' e' gis' b'> <cis' e' a'> r r }
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 6/8
 \repeat volta 2 { r8 <a e'>\p r r <cis' e'> r r <gis e'> r r <b e'> r
 r <fis e'> r r <gis e'> r <a e'>4 <d fis>8 <e gis>4 r8
 a,16\f a a a a a a, a a a a a e, e e e e e e, e e e e e fis, fis fis fis gis, gis a, a a a d, d
 e,16 e e e e, e a,,8 a, r }
 \repeat volta 2 { r8 <a cis'>8\p r r <a d'> r <a fis'> <a e'> <a d'> r <a cis'> r
 <a cis' e'>4. <b d' e'>4. <cis' e'>4 <fis a dis'>8 <e e'>4.
 r8 <a e'> r r <cis' e'> r r <gis e'> r r <b e'> r r <fis e'> <gis e'> r <a e'> <d b>
 r8 <e a> <e gis> a e a,
 a,,16\f a, a, a, b,, b, cis, cis cis cis d, d e, e e e e, e a,,8 a, r }
}
>>

 \midi { \tempo 4 = 92 }

}
