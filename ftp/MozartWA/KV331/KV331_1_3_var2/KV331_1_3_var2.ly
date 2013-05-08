\version "2.6.0"

\header {
  title = "Sonate Opus KV 331 - Variation 2"
  composer = "Wolfgang Amadeus Mozart"
  mutopiatitle = "Sonate Opus KV 331 - Variation 2"
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
  
  footer = "Mutopia-2005/10/29-616"
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
 cis''8\staccato\p^\markup { \huge "VAR.II." } cis''\staccato d''16^\trill([ cis''32 d'' e''8]) r8
 fis''32( e'' d'' cis'' b'8) b'\staccato cis''16^\trill([ b'32 cis'' d''8]) r8
 \stemDown e''32( d'' cis'' b' a'8) a'\staccato a'16^\trill([ gis'32 a'] b'8) b'\staccato
 b'16^\trill([ a'32 b'] cis''8) cis''\staccato
 << { e''16.( d''32) cis''4( b'8) } \\ { b'8 a'4( gis'8) } >>
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { \stemUp cis''16\f([ a' e'] cis''[ a' e'] d''[ b' e'] e''[ cis'' e'] e''[ cis'' e']) }
 \stemDown fis''32( e'' d'' cis''
 \times 2/3 { \stemUp b'16[ gis' e'] b'[ gis' e'] cis''[ a' e'] d''[ b' e'] d''[ b' e']) }
 \stemDown e''32( d'' cis'' b'
 \times 2/3 { \stemUp a'16[ e' cis'] a'[ e' cis'] b'[ e' d'] cis''[ a' e'] cis''[ a' e'] d''[ b' fis']
 cis''[ a' e'] cis''[ a' e'] b'[ gis' d'] a'[ e' cis'] } a8) r }
 \repeat volta 2 { \stemDown e''8\p\staccato d''\staccato e''\staccato fis''\staccato r
 fis''32^\prall( e'' fis'' gis'' a''8) gis''8\staccato fis''\staccato e''\staccato r
 cis''32^\prall( b' cis'' d'' e''8 cis'') r16 r32 \stemUp a'32 \stemDown e''8( d'') r16 r32 b'\staccato
 e''8\f( cis'') a'\staccato \stemUp <a' cis''>4\sf\>( <gis' b'>8\!)
 \stemDown cis''8\staccato\p cis''\staccato d''16^\trill([ cis''32 d'' e''8]) r8
 fis''32( e'' d'' cis'' b'8) b'\staccato cis''16^\trill([ b'32 cis'' d''8]) r8
 e''32( d'' cis'' b' \stemUp a'8) a'\staccato b'16^\trill([ a'32 b'] \stemDown cis''8) cis''\staccato
 d''16^\trill([ cis''32 d''] cis''8) cis''\staccato
 \stemUp b'16^\trill([ a'32 b']) << { b'8( bis' cis'') } \\ { gis'4( a'8) } >>
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { \stemUp cis''16\f([ a' e'] cis''[ a' e'] d''[ gis' e']
 \stemDown e''[ cis'' a'] e''[ cis'' a'] fis''[ b' a']
 \stemUp cis''[ a' e'] cis''[ a' e'] b'[ gis' d'] a'[ e' cis']) } a8 r8 }
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 6/8
 \repeat volta 2 { \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { a16\p[ dis' e'_\markup{ \large "legato" }] a[ dis' e'] b[ dis' e']
 cis'[ dis' e'] cis'[ dis' e'] a[ dis' e']
 gis[ dis' e'] gis[ dis' e'] a[ dis' e'] b[ dis' e'] b[ dis' e'] gis[ dis' e']
 fis[ dis' e'] fis[ dis' e'] fis[ dis' e'] gis[ d'! e'] gis[ d' e'] gis[ d' e']
 a[ cis' e'] a[ cis' e'] d[ fis b] e[ a cis'] e[ a cis'] e[ gis b] }
 a,8\f \grace gis16 a8 r8 a,8 \grace gis16( a8) r8 e,8 \grace dis16 e8 r8 e,8 \grace dis16( e8) r8
 fis,8 \grace eis16 fis8 \grace fisis16 gis8 a,8 \grace gis16 a8 \grace cis16 d8
 e,8 \grace dis16 e8 \grace dis16 e8 a,,8 \grace gis,16 a,8 r8 }
 \repeat volta 2 { \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \clef treble \times 2/3 { a16\p[ cis'_\markup{ \large "legato" } e'] a[ cis' e'] a[ cis' e']
 a[ d' fis'] a[ d' fis'] a[ d' fis']
 a[ fis' a'] a[ e' gis'] a[ d' fis'] a[ cis' e'] a[ cis' e'] a[ cis' e']
 a[ cis' e'] a[ cis' e'] a[ cis' e'] b[ d' e'] b[ d' e'] b[ d' e']
 a\f[ cis' e'] a[ cis' e'] \clef bass fis[ a dis'] } <e e'>4.
 \times 2/3 { a16\p[ dis' e'] a[ dis' e'] b[ dis' e'] cis'[ dis' e'] cis'[ dis' e'] a[ dis' e']
 gis[ dis' e'] gis[ dis' e'] a[ dis' e'] b[ dis' e'] b[ dis' e'] gis[ dis' e']
 fis[ dis' e'] fis[ dis' e'] gis[ d' e'] a[ cis' e'] a[ cis' e'] d[ fis b]
 e[ a cis'] e[ a cis'] e[ gis b] }
 << { d'4( cis'8) } \\ { <a e'>4. } >>
 a,8\f \grace gis16 a8 \grace ais16 b8 cis8 \grace bis16 cis'8 \grace cis'16 d'8
 e,8 \grace dis16 e8 \grace dis16 e8 a,,8 \grace gis,16 a,8 r8 }
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
 cis''8\staccato\p^\markup { \huge "VAR.II." } cis''\staccato d''16^\trill([ cis''32 d'' e''8]) r8
 fis''32( e'' d'' cis'' b'8) b'\staccato cis''16^\trill([ b'32 cis'' d''8]) r8
 \stemDown e''32( d'' cis'' b' a'8) a'\staccato a'16^\trill([ gis'32 a'] b'8) b'\staccato
 b'16^\trill([ a'32 b'] cis''8) cis''\staccato
 << { e''16.( d''32) cis''4( b'8) } \\ { b'8 a'4( gis'8) } >>
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { \stemUp cis''16\f([ a' e'] cis''[ a' e'] d''[ b' e'] e''[ cis'' e'] e''[ cis'' e']) }
 \stemDown fis''32( e'' d'' cis''
 \times 2/3 { \stemUp b'16[ gis' e'] b'[ gis' e'] cis''[ a' e'] d''[ b' e'] d''[ b' e']) }
 \stemDown e''32( d'' cis'' b'
 \times 2/3 { \stemUp a'16[ e' cis'] a'[ e' cis'] b'[ e' d'] cis''[ a' e'] cis''[ a' e'] d''[ b' fis']
 cis''[ a' e'] cis''[ a' e'] b'[ gis' d'] a'[ e' cis'] } a8) r }
 \repeat volta 2 { \stemDown e''8\p\staccato d''\staccato e''\staccato fis''\staccato r
 fis''32^\prall( e'' fis'' gis'' a''8) gis''8\staccato fis''\staccato e''\staccato r
 cis''32^\prall( b' cis'' d'' e''8 cis'') r16 r32 \stemUp a'32 \stemDown e''8( d'') r16 r32 b'\staccato
 e''8\f( cis'') a'\staccato \stemUp <a' cis''>4\sf\>( <gis' b'>8\!)
 \stemDown cis''8\staccato\p cis''\staccato d''16^\trill([ cis''32 d'' e''8]) r8
 fis''32( e'' d'' cis'' b'8) b'\staccato cis''16^\trill([ b'32 cis'' d''8]) r8
 e''32( d'' cis'' b' \stemUp a'8) a'\staccato b'16^\trill([ a'32 b'] \stemDown cis''8) cis''\staccato
 d''16^\trill([ cis''32 d''] cis''8) cis''\staccato
 \stemUp b'16^\trill([ a'32 b']) << { b'8( bis' cis'') } \\ { gis'4( a'8) } >>
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { \stemUp cis''16\f([ a' e'] cis''[ a' e'] d''[ gis' e']
 \stemDown e''[ cis'' a'] e''[ cis'' a'] fis''[ b' a']
 \stemUp cis''[ a' e'] cis''[ a' e'] b'[ gis' d'] a'[ e' cis']) } a8 r8 }
}

 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 6/8
 \repeat volta 2 { \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { a16\p[ dis' e'_\markup{ \large "legato" }] a[ dis' e'] b[ dis' e']
 cis'[ dis' e'] cis'[ dis' e'] a[ dis' e']
 gis[ dis' e'] gis[ dis' e'] a[ dis' e'] b[ dis' e'] b[ dis' e'] gis[ dis' e']
 fis[ dis' e'] fis[ dis' e'] fis[ dis' e'] gis[ d'! e'] gis[ d' e'] gis[ d' e']
 a[ cis' e'] a[ cis' e'] d[ fis b] e[ a cis'] e[ a cis'] e[ gis b] }
 a,8\f \grace gis16 a8 r8 a,8 \grace gis16( a8) r8 e,8 \grace dis16 e8 r8 e,8 \grace dis16( e8) r8
 fis,8 \grace eis16 fis8 \grace fisis16 gis8 a,8 \grace gis16 a8 \grace cis16 d8
 e,8 \grace dis16 e8 \grace dis16 e8 a,,8 \grace gis,16 a,8 r8 }
 \repeat volta 2 { \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \clef treble \times 2/3 { a16\p[ cis'_\markup{ \large "legato" } e'] a[ cis' e'] a[ cis' e']
 a[ d' fis'] a[ d' fis'] a[ d' fis']
 a[ fis' a'] a[ e' gis'] a[ d' fis'] a[ cis' e'] a[ cis' e'] a[ cis' e']
 a[ cis' e'] a[ cis' e'] a[ cis' e'] b[ d' e'] b[ d' e'] b[ d' e']
 a\f[ cis' e'] a[ cis' e'] \clef bass fis[ a dis'] } <e e'>4.
 \times 2/3 { a16\p[ dis' e'] a[ dis' e'] b[ dis' e'] cis'[ dis' e'] cis'[ dis' e'] a[ dis' e']
 gis[ dis' e'] gis[ dis' e'] a[ dis' e'] b[ dis' e'] b[ dis' e'] gis[ dis' e']
 fis[ dis' e'] fis[ dis' e'] gis[ d' e'] a[ cis' e'] a[ cis' e'] d[ fis b]
 e[ a cis'] e[ a cis'] e[ gis b] }
 << { d'4( cis'8) } \\ { <a e'>4. } >>
 a,8\f \grace gis16 a8 \grace ais16 b8 cis8 \grace bis16 cis'8 \grace cis'16 d'8
 e,8 \grace dis16 e8 \grace dis16 e8 a,,8 \grace gis,16 a,8 r8 }
}
>>

 \midi { \tempo 8 = 112 }

}
