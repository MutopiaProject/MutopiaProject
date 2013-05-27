\version "2.6.0"

\header {
  title = "Sonate Opus KV 331 - Variation 5"
  composer = "Wolfgang Amadeus Mozart"
  mutopiatitle = "Sonate Opus KV 331 - Variation 5"
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
  
  footer = "Mutopia-2005/10/30-619"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \major
 \time 6/8
 \repeat volta 2 { cis''8\p^\markup { \large "Adagio" }\p^\markup { \huge "VAR. V." } cis''8.( d''16)
 fis''16( e'') r16 e''16\staccato fis''32( e'' d'' cis'')
 cis''16([ b']) b'8.([ cis''16]) e''8( d''!16) r32 d''\staccato e''32( d'' cis'' b')
 b'16( a') r32 a'( gis' a' b' a' d''! cis'' ais'16 b') r32 b'32( ais' b' cis'' b' e'' d''!)
 d''32( cis'' bis' cis'' d'' cis'' bis' cis'' e'' d'' cis'' d''
 cis'' b' ais' b' a' gis' fisis' gis' fis' e' dis' e')
 <a' cis''>16\f\staccato[ <a' cis''>8] <ais' cis''>16\p([ <b' d''> <bis' dis''>] <cis'' e''>32)
 a'32\staccato b'\staccato cis''\staccato d''\staccato e''\staccato fis''\staccato gis''\staccato
 a''( b'' cis''') r
 <a' cis''>32\f([ <gis' b'>) <gis' b'>8] <gis' b'>16\p([ <a' c''> <ais' cis''>] <b' d''>32)
 b'32\staccato cis''\staccato d''\staccato e''\staccato fis''\staccato gis''\staccato a''!\staccato b''( cis''' d''') r
 b'32( a') a'16 ~ a'32 a'( d'' cis'' ais' b' e'' d'' bis' cis'') a''!\staccato a''\staccato
 a''32\staccato a''\staccato a''\staccato a''\staccato a''( fis'' d'' b') \break }
 \alternative {
 { \once \override TextScript #'script-priority = #-100 e''16.^\turn^\markup { \sharp }( fis''32)
 << { a'8.( cis''32 b') <gis' b'>8([ a'16) r32. e'64] } \\ { a'8. gis'16 e'4 } >>
 fis'64([ a' gis' b'] a'[ cis'' b' d''!]) }
 { \once \override TextScript #'script-priority = #-100 e''16.^\turn^\markup { \sharp }( fis''32)
 << { a'8.( cis''32 b') b'8([ a'16.^\markup { \translate #(cons 2 -2) { \musicglyph #"scripts.turn" } } b'32
 cis''16.^\markup { \translate #(cons 2 -2) { \musicglyph #"scripts.turn" } } d''32]) } \\ { a'8. gis'16 <e' gis'>4 } s8 >> }
 }
 \repeat volta 2 { e''16.\p( fis''64 e'' d''16)[ cis''16\staccato( b'\staccato a'\staccato]) a'16.([ fis''32) fis''8]
 d'8\f ~ d'64([ fis' e' d'] e'[ fis' g' a'] b'[ cis'' d'' e''])
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8) \times 2/3 { fis''32[ g''\staccato a''\staccato] }
 b''32\staccato cis'''\staccato d'''32.\staccato fis''64 a''16.([ fis''32 e''16] e''16\staccato[ e''\staccato e''\staccato])
 fis''32\sfp( e'' cis'' b' a'16) e''16\staccato( e''\staccato e''\staccato)
 fis''32\sfp( e'' d'' b' gis'16) e''16\staccato( e''\staccato e''\staccato)
 fis''32\sfp( e'' cis'' a') fis''( e'' d'' b') fis''( e'' cis'' a') cis''8\>([ b'32) e'\!\p( e'' e'] dis'' e' d'' e')
 cis''8 cis''( ~ cis''32 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8) \times 2/3 { d''64[ cis'' b'] }
 cis''32[ d''] fis''16[ e''32]) r32 dis'''16 e'''32 r64 e''64\staccato fis''32([ e'' d''! cis''])
 cis''16( b'8) b'( \grace { cis''32[ b' ais'] } b'32 cis'' e''16 d''!32) r32 cis'''16( d'''32) r64 d''64\staccato e''32([ d'' cis'' b'])
 b'16( a') ~ a'32 a' d''!( cis'' ais' b' e'' d'' bis' cis'') a''!\staccato a''\staccato
 a''32\staccato_\markup { \italic "cresc." }( a''\staccato a''\staccato a''\staccato) a''32( fis'' d'' b')
 e''16\f \grace { fis''32[ e'' dis''] } e''32 fis''
 << { a'8. b'16 b'8.( bis'16 cis''8) } \\ { a'8. gis'16 gis'4( a'8) } >>
 \grace { e'32[ a'] } cis''8\f( ~
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 16)
 \times 2/3 { cis''32[ e'' d''] cis''[ d'' e''] d''[ fis'' e''] d''[ e'' fis''] } e''64[ a' b' cis'']
 d''64[ e'' fis'' gis''] a''[ b'' cis''' b''] a''[ gis'' fis'' eis''] fis''[ gis'' a'' gis''] b''[ a'' gis'' fis'']) }
 \alternative {
 { e''!32\staccato\p e'''( cis''' a'' e''\staccato) a''( e'' cis'' e'' d'' cis'' b')
 <gis' b'>8([ \set Voice.tupletSpannerDuration = #(ly:make-moment 1 16)
 \times 2/3 { a'32) e'\staccato fis'\staccato] g'\staccato[ gis'\staccato a'\staccato]
 ais'32\staccato[ b'\staccato bis'\staccato] cis''\staccato[ d''\staccato dis''\staccato] } }
 { e''!32\staccato\p e'''( cis''' a'' e''\staccato) a''( e'' cis'' e'' d'' cis'' b') << { <gis' b'>4( a'8) } \\ { e'4. } >> \bar "||" }
 }
}
 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 6/8
 \repeat volta 2 { a32\p( e' cis' e' a e' cis' e' a e' b e' cis' e' a e' cis' e' a e' cis' e' a e'
 gis e' dis' e' gis e' dis' e' gis e' a e' ais e' dis' e' b e' dis' e' gis e' e e'
 fis e' dis' e' fis8) r8 gis32( e' dis' e') gis8 r8 <a e'>8 <fis a> <d b> <e gis> r r
 a,32\f a a a a\p a a a a a a a a8 r r e,32\f e e e e\p e e e e e e e e8 r r
 r8 <fis e'> <gis e'> <a e'> r <d fis b> \break } 
 \alternative {
 { << { <a cis'>4( <b d'>8) d'8([ cis']) } \\ { e4. a4 } >> r8 }
 { << { <a cis'>4( <b d'>8) d'8([ cis']) } \\ { e4. a4 } >> r8 } 
 }
 \repeat volta 2 { \clef treble a32\p( a' cis' a' a gis' b gis' a g' cis' g' a fis' d' fis'
 \clef bass fis d' a d' d a fis a) a,( fis d fis a, fis d fis a, fis d fis) << { d8[ cis] } \\ { a,8[ a,] } >> r8
 <a cis' e'>4. <b d' e'>4. <a cis' e'>8 <gis b e'> <a cis' e'> << { <a cis'>8([ <gis b>]) } \\ { e4 } >> r8
 a32( e' cis' e' a e' cis' e' a e' b e' cis' e' a e' cis' e' a e' cis' e' a e'
 gis e' dis' e' gis e' dis' e' gis e' a e' b e' dis' e' gis e' b e' e e' gis e'
 fis e' dis' e' fis e' dis' e' gis e' dis' e' a8) r <d! fis b>
 << { <a cis'>4 <b d'>8 d'4( cis'8) } \\ { e4. <a e'>4. } >>
 a,32( cis e a a, cis e a b, d gis b <cis a>4) <d a>8 }
 \alternative {
 { <e cis'>8 <e cis'> <e gis d'> << { d'8([ cis']) } \\ { a4 } >> r8 }
 { <e cis'>8 <e cis'> <e gis d'> << { d'4( cis'8) } \\ { a4. } >> \bar "||" }
 }
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
 \repeat volta 2 { cis''8\p^\markup { \large "Adagio" }\p^\markup { \huge "VAR. V." } cis''8.( d''16)
 fis''16( e'') r16 e''16\staccato fis''32( e'' d'' cis'')
 cis''16([ b']) b'8.([ cis''16]) e''8( d''!16) r32 d''\staccato e''32( d'' cis'' b')
 b'16( a') r32 a'( gis' a' b' a' d''! cis'' ais'16 b') r32 b'32( ais' b' cis'' b' e'' d''!)
 d''32( cis'' bis' cis'' d'' cis'' bis' cis'' e'' d'' cis'' d''
 cis'' b' ais' b' a' gis' fisis' gis' fis' e' dis' e')
 <a' cis''>16\f\staccato[ <a' cis''>8] <ais' cis''>16\p([ <b' d''> <bis' dis''>] <cis'' e''>32)
 a'32\staccato b'\staccato cis''\staccato d''\staccato e''\staccato fis''\staccato gis''\staccato
 a''( b'' cis''') r
 <a' cis''>32\f([ <gis' b'>) <gis' b'>8] <gis' b'>16\p([ <a' c''> <ais' cis''>] <b' d''>32)
 b'32\staccato cis''\staccato d''\staccato e''\staccato fis''\staccato gis''\staccato a''!\staccato b''( cis''' d''') r
 b'32( a') a'16 ~ a'32 a'( d'' cis'' ais' b' e'' d'' bis' cis'') a''!\staccato a''\staccato
 a''32\staccato a''\staccato a''\staccato a''\staccato a''( fis'' d'' b') \break }
 \alternative {
 { \once \override TextScript #'script-priority = #-100 e''16.^\turn^\markup { \sharp }( fis''32)
 << { a'8.( cis''32 b') <gis' b'>8([ a'16) r32. e'64] } \\ { a'8. gis'16 e'4 } >>
 fis'64([ a' gis' b'] a'[ cis'' b' d''!]) }
 { \once \override TextScript #'script-priority = #-100 e''16.^\turn^\markup { \sharp }( fis''32)
 << { a'8.( cis''32 b') b'8([ a'16.^\markup { \translate #(cons 2 -2) { \musicglyph #"scripts.turn" } } b'32
 cis''16.^\markup { \translate #(cons 2 -2) { \musicglyph #"scripts.turn" } } d''32]) } \\ { a'8. gis'16 <e' gis'>4 } s8 >> }
 }
 \repeat volta 2 { e''16.\p( fis''64 e'' d''16)[ cis''16\staccato( b'\staccato a'\staccato]) a'16.([ fis''32) fis''8]
 d'8\f ~ d'64([ fis' e' d'] e'[ fis' g' a'] b'[ cis'' d'' e''])
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8) \times 2/3 { fis''32[ g''\staccato a''\staccato] }
 b''32\staccato cis'''\staccato d'''32.\staccato fis''64 a''16.([ fis''32 e''16] e''16\staccato[ e''\staccato e''\staccato])
 fis''32\sfp( e'' cis'' b' a'16) e''16\staccato( e''\staccato e''\staccato)
 fis''32\sfp( e'' d'' b' gis'16) e''16\staccato( e''\staccato e''\staccato)
 fis''32\sfp( e'' cis'' a') fis''( e'' d'' b') fis''( e'' cis'' a') cis''8\>([ b'32) e'\!\p( e'' e'] dis'' e' d'' e')
 cis''8 cis''( ~ cis''32 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8) \times 2/3 { d''64[ cis'' b'] }
 cis''32[ d''] fis''16[ e''32]) r32 dis'''16 e'''32 r64 e''64\staccato fis''32([ e'' d''! cis''])
 cis''16( b'8) b'( \grace { cis''32[ b' ais'] } b'32 cis'' e''16 d''!32) r32 cis'''16( d'''32) r64 d''64\staccato e''32([ d'' cis'' b'])
 b'16( a') ~ a'32 a' d''!( cis'' ais' b' e'' d'' bis' cis'') a''!\staccato a''\staccato
 a''32\staccato_\markup { \italic "cresc." }( a''\staccato a''\staccato a''\staccato) a''32( fis'' d'' b')
 e''16\f \grace { fis''32[ e'' dis''] } e''32 fis''
 << { a'8. b'16 b'8.( bis'16 cis''8) } \\ { a'8. gis'16 gis'4( a'8) } >>
 \grace { e'32[ a'] } cis''8\f( ~
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 16)
 \times 2/3 { cis''32[ e'' d''] cis''[ d'' e''] d''[ fis'' e''] d''[ e'' fis''] } e''64[ a' b' cis'']
 d''64[ e'' fis'' gis''] a''[ b'' cis''' b''] a''[ gis'' fis'' eis''] fis''[ gis'' a'' gis''] b''[ a'' gis'' fis'']) }
 \alternative {
 { e''!32\staccato\p e'''( cis''' a'' e''\staccato) a''( e'' cis'' e'' d'' cis'' b')
 <gis' b'>8([ \set Voice.tupletSpannerDuration = #(ly:make-moment 1 16)
 \times 2/3 { a'32) e'\staccato fis'\staccato] g'\staccato[ gis'\staccato a'\staccato]
 ais'32\staccato[ b'\staccato bis'\staccato] cis''\staccato[ d''\staccato dis''\staccato] } }
 { e''!32\staccato\p e'''( cis''' a'' e''\staccato) a''( e'' cis'' e'' d'' cis'' b') << { <gis' b'>4( a'8) } \\ { e'4. } >> \bar "||" }
 }
}
 \context Staff = "down" {
 \clef bass
 \key a \major
 \time 6/8
 \repeat volta 2 { a32\p( e' cis' e' a e' cis' e' a e' b e' cis' e' a e' cis' e' a e' cis' e' a e'
 gis e' dis' e' gis e' dis' e' gis e' a e' ais e' dis' e' b e' dis' e' gis e' e e'
 fis e' dis' e' fis8) r8 gis32( e' dis' e') gis8 r8 <a e'>8 <fis a> <d b> <e gis> r r
 a,32\f a a a a\p a a a a a a a a8 r r e,32\f e e e e\p e e e e e e e e8 r r
 r8 <fis e'> <gis e'> <a e'> r <d fis b> \break } 
 \alternative {
 { << { <a cis'>4( <b d'>8) d'8([ cis']) } \\ { e4. a4 } >> r8 }
 { << { <a cis'>4( <b d'>8) d'8([ cis']) } \\ { e4. a4 } >> r8 } 
 }
 \repeat volta 2 { \clef treble a32\p( a' cis' a' a gis' b gis' a g' cis' g' a fis' d' fis'
 \clef bass fis d' a d' d a fis a) a,( fis d fis a, fis d fis a, fis d fis) << { d8[ cis] } \\ { a,8[ a,] } >> r8
 <a cis' e'>4. <b d' e'>4. <a cis' e'>8 <gis b e'> <a cis' e'> << { <a cis'>8([ <gis b>]) } \\ { e4 } >> r8
 a32( e' cis' e' a e' cis' e' a e' b e' cis' e' a e' cis' e' a e' cis' e' a e'
 gis e' dis' e' gis e' dis' e' gis e' a e' b e' dis' e' gis e' b e' e e' gis e'
 fis e' dis' e' fis e' dis' e' gis e' dis' e' a8) r <d! fis b>
 << { <a cis'>4 <b d'>8 d'4( cis'8) } \\ { e4. <a e'>4. } >>
 a,32( cis e a a, cis e a b, d gis b <cis a>4) <d a>8 }
 \alternative {
 { <e cis'>8 <e cis'> <e gis d'> << { d'8([ cis']) } \\ { a4 } >> r8 }
 { <e cis'>8 <e cis'> <e gis d'> << { d'4( cis'8) } \\ { a4. } >> \bar "||" }
 }
}
>>
 \midi { \tempo 8 = 52 }
}
