\version "2.6.0"

\header {
  title = "Sonate Opus KV 331 - Variation 6"
  composer = "Wolfgang Amadeus Mozart"
  mutopiatitle = "Sonate Opus KV 331 - Variation 6"
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
  
  footer = "Mutopia-2005/10/30-620"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \major
 \time 4/4
 \repeat volta 2 { cis''8\staccato^\markup { \large "Allegro" }\p^\markup { \huge "VAR. VI." }
 \appoggiatura d''16 cis''16( b' cis''8) d''\staccato fis''( e'') d''\staccato cis''\staccato
 b'8\staccato \appoggiatura cis''16 b'16( ais' b'8) cis''\staccato e''( d'') cis''\staccato b'\staccato
 gis'8( a'!) r8 ais' r b' r bis'
 \appoggiatura d''16 cis''8\staccato cis''\staccato \appoggiatura e''16 d''8\staccato d''8\staccato cis''4( b'!8) r8
 cis''16\f( a' e' a' cis'' a' d'' b' e'' cis'' e'' cis'' fis'' e'' d'' cis'' b' gis' e' gis' b' gis' cis'' a' d'' b' d'' b' e'' d'' cis'' b'
 a' cis'' b' a' b' d'' cis'' b' cis'' e'' a'' e'' fis'' a'' b' d'' cis'' e'' a' cis'' b' d'' gis' b' a' e' cis' e' a'4) }
 \repeat volta 2 { a'16\p( b' cis'' d'' e'' fis'' gis'' a'' gis'' fis'' eis'' fis'' eis'' fis'' eis'' fis''
 a''16 gis'' a'' gis'' b'' a'' gis'' fis'') fis''( e''! dis'' e'' dis'' e'' dis'' e'')
 e''16\f\staccato( a'' cis''' b'' a'' gis'' fis'' e'' d''! gis'' b'' a'' gis'' fis'' e'' d''
 cis'' e'' a'' gis'' fis'' e'' d'' cis'' b' a' gis' fis' e') r r8
 cis''8\p\staccato \appoggiatura d''16 cis''16( b' cis''8) d''\staccato fis''( e'') d''\staccato cis''\staccato
 b'8\staccato \appoggiatura cis''16 b'16( ais' b'8) cis''\staccato e''( d'') cis''\staccato b'\staccato
 gis'8( a'!) r8 b' r \appoggiatura bis'16 cis''8 r \appoggiatura e''16 d''8
 r8 \appoggiatura d''16 cis''8 r \appoggiatura cis''16 b'8 << { b'8([ bis'] cis'') } \\ { gis'4( a'8) } >> r8
 cis''16\f( a' e'' cis'' d'' b'! fis'' d'' e'' cis'' a'' e'' gis'' fis'' e'' d'' }
 \alternative {
 { cis'' e'' a' cis'' b' d'' gis' b' a' e' cis' e' a'4) }
 { cis''16( e'' a' cis'' b' d'' gis' b' a'_\markup { \italic "dim." } b' cis'' d'' e'' fis'' gis'' a'' }
 }
 gis''16\p fis'' eis'' fis'' b'' a'') gis''\staccato fis''\staccato fis''( e'' dis'' e'' a' cis'' e'' a''
 gis'' fis'' eis'' fis'' b'' a'') gis''\staccato fis''\staccato e''8. e''16\staccato \grace { fis''32[ e'' dis''] } e''4
 r8 r16 d''!\staccato \grace { e''32[ d'' cis''] } d''4 r8 r16 cis''\staccato \grace { d''32[ cis'' b'] } cis''4
 r8 r16 b'\staccato \grace { cis''32[ b' ais'] } b'4 r16 e''\f( dis'' e'' fis'' e'' dis'' e'')
 r16 d''!( cis'' d'' e'' d'' cis'' d'') r cis''( bis' cis'' d'' cis'' bis' cis'')
 r16 b'!( ais' b' cis'' b' ais' b') a'8 cis''16\p([ a'] e'' d'' b' gis' a'4)
 <gis' b' e''>4\f <a' cis'' e'' a''>8 cis''16([ a'] e'' d'' b' gis' a'4) <gis' b' e''>\f <a' cis'' e'' a''> r \bar "||"
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 4/4
 \repeat volta 2 { a8_\markup { \italic "legato" } e' b e' cis' e' a e' gis e' a e' b e' d' e'
 cis' e' cis' e' gis e' gis e' a e' d b << { a4( gis8) } \\ { e4. } >> r8
 <a,, cis, e, a,>4\arpeggio r \clef treble <a cis' e' a'>\arpeggio r
 \clef bass <e, gis, b, e>4\arpeggio r <e gis b e'>\arpeggio r
 fis,8 fis gis, gis a cis' d' gis a fis d e a,4 a,, }
 \repeat volta 2 { a8( e' cis' e' a fis' d' fis' a fis' d' fis' a e' cis' e')
 <a, cis e a>4\arpeggio r <b, d gis b>\arpeggio r
 <cis e a cis'>\arpeggio <d fis b d'>\arpeggio <e gis b e'>\arpeggio r16 d'([ cis' b]
 a8 e' b e' cis' e' a e' gis e' a e' b e' gis e' fis e' gis e' a e' d b e a e gis) <a d' e'>4( <a cis' e'>8) r
 a,16_\markup { \italic "legato" } cis e a b, d gis b cis e a cis' d fis b d' }
 \alternative { 
 { e16 a cis' e' e, gis, b, e a, cis e a a,4  }
 { e16 a cis' e' e gis b d' <a cis'>8 <cis' e'> <cis' e'> <cis' e'> }
 }
 a8\p <d' fis'> <d' fis'> <d' fis'> a <cis' e'> <cis' e'> <cis' e'> a <d' fis'> <d' fis'> <d' fis'> <a cis' e'>4 r
 <d b>4 r <e a> r <d gis> r <cis a> r <d b> r <e a> r <e gis> r a r r <e gis b e'> <a, cis e a> r
 r4 <e gis b e'> <a, cis e a> r4 \bar "||"
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
 \time 4/4
 \repeat volta 2 { cis''8\staccato^\markup { \large "Allegro" }\p^\markup { \huge "VAR. VI." }
 \appoggiatura d''16 cis''16( b' cis''8) d''\staccato fis''( e'') d''\staccato cis''\staccato
 b'8\staccato \appoggiatura cis''16 b'16( ais' b'8) cis''\staccato e''( d'') cis''\staccato b'\staccato
 gis'8( a'!) r8 ais' r b' r bis'
 \appoggiatura d''16 cis''8\staccato cis''\staccato \appoggiatura e''16 d''8\staccato d''8\staccato cis''4( b'!8) r8
 cis''16\f( a' e' a' cis'' a' d'' b' e'' cis'' e'' cis'' fis'' e'' d'' cis'' b' gis' e' gis' b' gis' cis'' a' d'' b' d'' b' e'' d'' cis'' b'
 a' cis'' b' a' b' d'' cis'' b' cis'' e'' a'' e'' fis'' a'' b' d'' cis'' e'' a' cis'' b' d'' gis' b' a' e' cis' e' a'4) }
 \repeat volta 2 { a'16\p( b' cis'' d'' e'' fis'' gis'' a'' gis'' fis'' eis'' fis'' eis'' fis'' eis'' fis''
 a''16 gis'' a'' gis'' b'' a'' gis'' fis'') fis''( e''! dis'' e'' dis'' e'' dis'' e'')
 e''16\f\staccato( a'' cis''' b'' a'' gis'' fis'' e'' d''! gis'' b'' a'' gis'' fis'' e'' d''
 cis'' e'' a'' gis'' fis'' e'' d'' cis'' b' a' gis' fis' e') r r8
 cis''8\p\staccato \appoggiatura d''16 cis''16( b' cis''8) d''\staccato fis''( e'') d''\staccato cis''\staccato
 b'8\staccato \appoggiatura cis''16 b'16( ais' b'8) cis''\staccato e''( d'') cis''\staccato b'\staccato
 gis'8( a'!) r8 b' r \appoggiatura bis'16 cis''8 r \appoggiatura e''16 d''8
 r8 \appoggiatura d''16 cis''8 r \appoggiatura cis''16 b'8 << { b'8([ bis'] cis'') } \\ { gis'4( a'8) } >> r8
 cis''16\f( a' e'' cis'' d'' b'! fis'' d'' e'' cis'' a'' e'' gis'' fis'' e'' d'' }
 \alternative {
 { cis'' e'' a' cis'' b' d'' gis' b' a' e' cis' e' a'4) }
 { cis''16( e'' a' cis'' b' d'' gis' b' a'_\markup { \italic "dim." } b' cis'' d'' e'' fis'' gis'' a'' }
 }
 gis''16\p fis'' eis'' fis'' b'' a'') gis''\staccato fis''\staccato fis''( e'' dis'' e'' a' cis'' e'' a''
 gis'' fis'' eis'' fis'' b'' a'') gis''\staccato fis''\staccato e''8. e''16\staccato \grace { fis''32[ e'' dis''] } e''4
 r8 r16 d''!\staccato \grace { e''32[ d'' cis''] } d''4 r8 r16 cis''\staccato \grace { d''32[ cis'' b'] } cis''4
 r8 r16 b'\staccato \grace { cis''32[ b' ais'] } b'4 r16 e''\f( dis'' e'' fis'' e'' dis'' e'')
 r16 d''!( cis'' d'' e'' d'' cis'' d'') r cis''( bis' cis'' d'' cis'' bis' cis'')
 r16 b'!( ais' b' cis'' b' ais' b') a'8 cis''16\p([ a'] e'' d'' b' gis' a'4)
 <gis' b' e''>4\f <a' cis'' e'' a''>8 cis''16([ a'] e'' d'' b' gis' a'4) <gis' b' e''>\f <a' cis'' e'' a''> r \bar "||"
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 4/4
 \repeat volta 2 { a8_\markup { \italic "legato" } e' b e' cis' e' a e' gis e' a e' b e' d' e'
 cis' e' cis' e' gis e' gis e' a e' d b << { a4( gis8) } \\ { e4. } >> r8
 <a,, cis, e, a,>4\arpeggio r \clef treble <a cis' e' a'>\arpeggio r
 \clef bass <e, gis, b, e>4\arpeggio r <e gis b e'>\arpeggio r
 fis,8 fis gis, gis a cis' d' gis a fis d e a,4 a,, }
 \repeat volta 2 { a8( e' cis' e' a fis' d' fis' a fis' d' fis' a e' cis' e')
 <a, cis e a>4\arpeggio r <b, d gis b>\arpeggio r
 <cis e a cis'>\arpeggio <d fis b d'>\arpeggio <e gis b e'>\arpeggio r16 d'([ cis' b]
 a8 e' b e' cis' e' a e' gis e' a e' b e' gis e' fis e' gis e' a e' d b e a e gis) <a d' e'>4( <a cis' e'>8) r
 a,16_\markup { \italic "legato" } cis e a b, d gis b cis e a cis' d fis b d' }
 \alternative { 
 { e16 a cis' e' e, gis, b, e a, cis e a a,4  }
 { e16 a cis' e' e gis b d' <a cis'>8 <cis' e'> <cis' e'> <cis' e'> }
 }
 a8\p <d' fis'> <d' fis'> <d' fis'> a <cis' e'> <cis' e'> <cis' e'> a <d' fis'> <d' fis'> <d' fis'> <a cis' e'>4 r
 <d b>4 r <e a> r <d gis> r <cis a> r <d b> r <e a> r <e gis> r a r r <e gis b e'> <a, cis e a> r
 r4 <e gis b e'> <a, cis e a> r4 \bar "||"
}
>>

 \midi { \tempo 4 = 118 }

}
