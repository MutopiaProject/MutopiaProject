\version "2.8.0"

\header {
  title = "Sonate Opus 49 No.2 - Part 1"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Sonata No. 20 (1st Movement: Allegro, ma non troppo)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 49, No. 2"
  date = "19th Century"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2006/June/04"
  version = "2.6.0"
 footer = "Mutopia-2006/06/05-776"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key g \major
 \time 2/2
 \once \override TextScript #'padding = #2.0
 <b d' g'>2^\markup { \large "Allegro, ma non troppo" }
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { d'8[ g' b'] d''[ c'' a'] }
 g'4 g'( fis' g') a'4. a'8 b'4. b'8 d''4 c''\trill \grace { b'16[ c''] } b'4 r4
 <b' d'' g''>2
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { d''8[ g'' b''] d'''[ c''' a''] }
 g''4 g''( fis'' g'') a''4. a''8 b''4. b''8 d'''4 c'''\trill \grace { b''16[ c'''] } b''8( c''' cis''' d''')
 dis'''8( e''') r8 e'''( d''' c''' b'' a'') cis'''8( d''') r8 d'''8( c'''! b'' a'' g'')
 fis''8 e'' d'' c'' b' a' g' fis'
 g'4.^\markup { \hspace #3.0 \bold \musicglyph #"scripts.turn" } a'8 b'( c'' cis'' d'')
 dis''8( e'') r8 e'' d''( c'' b' a') dis''8( e'') r8 e'' e''( cis'' a' g') fis'4\f
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { a''8 fis'' d'' } c''!4 \times 2/3 { a''8 fis'' c'' }
 b'4 \times 2/3 { g''8 d'' b' } g'4 \times 2/3 { d''8 b' g' }
 fis'4 \times 2/3 { a''8 fis'' d'' } c''4 \times 2/3 { a''8 fis'' c'' }
 b'4 \times 2/3 { g''8 d'' b' } g'4 \times 2/3 { d''8 b' g' }
 d'4 \times 2/3 { d''8 b' g' } d'4 \times 2/3 { d''8 b' g' }
 d'4 r4 r8 a'8 a' a' d''4( cis'' d'' e'') g''8( fis'') e''4 r8 a'8 a' a'
 e''4( d'' <cis'' e''> <d'' fis''>) <e'' a''>8( g'') <d'' fis''>4 r8 a''8( g'' fis'')
 fis''8( e'') e''\staccato e''\staccato d''\staccato a''( g'' fis'')
 fis''8( e'') e''\staccato e''\staccato d''\staccato a''( g'' fis'')
 fis''8( e'') r e'' e''( d'') r d'' d''8( cis'' b' a' gis' a' b' cis'')
 d''4( cis'' d'' e'') <d'' g''>8( fis'') <cis'' e''>4 r8 a' a' a'
 e''4( d'' <cis'' e''> <d'' fis''>) <e'' a''>8( g'') <d'' fis''>4 r8 a''8( g'' fis'')
 fis''8( e'') e''\staccato e''\staccato d''\staccato a''( g'' fis'')
 fis''8( e'') e''\staccato e''\staccato d''\staccato a''( g'' fis'')
 fis''8( e'' g'' e'') e''( d'') d''( cis'')
 \appoggiatura d''16 \times 2/3 { a''8[ g'' fis''] e''[ d'' cis''] b'[ a' g'] fis'[ e' d'] }
 cis'4 cis' cis' cis' \times 2/3 { d'8[ e' fis'] g'[ a' b'] cis''[ d'' e''] fis''[ g'' a''] }
 g''4 g'' g'' g'' \appoggiatura fis''16 \times 2/3 { a''8[ g'' fis''] e''[ d'' cis''] b'[ a' g'] fis'[ e' d'] }
 c'!4 c' c' c' \times 2/3 { b8[ e' g'] b'[ g' e'] } d'4 \appoggiatura fis'16 e'4
 \times 2/3 { d'8[ e' fis'] g'[ a' b'] cis''[ d'' e''] fis''[ g'' a''] }
 <g'' b''>1 <fis'' a''>4\staccato <e'' g''>\staccato <d'' fis''>\staccato <cis'' e''>\staccato
 \times 2/3 { a''8[ g'' fis''] e''[ d'' cis''] b'[ a' g'] fis'[ e' d'] }
 <g' b'>1 <fis' a'>4\staccato <e' g'>\staccato <d' fis'>\staccato <cis' e'>\staccato
 d'4 \times 2/3 { a''8 fis'' d'' } cis''4 \times 2/3 { g''8 e'' cis'' }
 d''4 \times 2/3 { a'8 fis' d' } cis'4 \times 2/3 { g'8 e' cis' }
 d'4 \times 2/3 { g'8 e' cis' } d'4 \times 2/3 { g'8 e' cis' } d'4 <fis a d'> <fis a d'> r4 \bar ":|"
 \break
 <f' a' d''>2\f ~ \times 2/3 { d''8[ f'' e''] d''[ c''! b'] } a'4 gis' a' b' c'' d'' e'' d''
 \grace { c''16[ e''] } a''2 ~ \times 2/3 { a''8[ c''' b''] a''[ g'' fis''] }
 e''4 dis'' e'' fis'' g''4. fis''16 g'' a''8 g'' fis'' e''
 dis''4 r8 <b'' g''>8 <fis'' a''>4 r8 <dis'' fis''>8 <e'' g''>4 r8 <e'' g''>8 <dis'' fis''>4 <e'' g''>4
 <dis'' fis''>4 r8 <g'' b''>8 <fis'' a''>4 r8 <dis'' fis''>8 <e'' g''>4 r8 <e'' g''>8 <dis'' fis''>4 <e'' g''>4
 <dis'' fis''>4 r4 r2 <e'' g''>4 r4 r2
 c'''8( b'' c''' b'' c''' b'' a'' g'') fis''8( e'' d'' c'' b' a' g' fis')
 <b d' g'>2 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { d'8[ g' b'] d''[ c'' a'] }
 g'4 g'( fis' g') a'4. a'8 b'4. b'8 d''4 c''\trill \grace { b'16[ c''] } b'4 r4
 <b' d'' g''>2 \times 2/3 { d''8[ g'' b''] d'''[ c''' a''] } g''4 g''( fis'' g'') a'' r8 a''8 b''4 r8 b''8
 c'''8 g'' a'' f'' e'' g'' f'' d''
 \appoggiatura c''16 \times 2/3 { g''8[ f'' e''] d''[ c'' b'] a'[ g' f'] e'[ d' c'] } b4 b b b
 \times 2/3 { c'8[ d' e'] f'[ g' a'] b'[ c'' d''] e''[ f'' g''] } f''4 f'' f'' f''
 \times 2/3 { e''8[ d'' c''] b'[ a' g'] f'[ e' d'] c'[ b a] } gis4 gis gis gis a a'2 g'!4
 fis'!4 \times 2/3 { a''8 fis'' d'' } c''!4 \times 2/3 { a''8 fis'' c'' }
 b'4 \times 2/3 { g''8 d'' b' } g'4 \times 2/3 { d''8 b' g' }
 fis'4 \times 2/3 { a''8 fis'' d'' } c''!4 \times 2/3 { a''8 fis'' c'' }
 b'4 \times 2/3 { g''8 d'' b' } g'4 \times 2/3 { d''8 b' g' }
 d'4 \times 2/3 { d''8 b' g' } d'4 \times 2/3 { d''8 b' g' }
 d'4 r4 r8 d'8 d' d' g'4( fis' g' a') c''8( b') a'4 r8 d' d' d'
 a'4( g' <fis' a'> <g' b'>) <a' d''>8( c'') <g' b'>4 r8 d''( c'' b')
 b'8( a') a'\staccato a'\staccato g'\staccato d''( c'' b')
 b'8( a') a'\staccato a'\staccato g'\staccato d''( c'' b')
 b'8( a') r a' a'( g') r g'
 fis'8\staccato g'\staccato a'\staccato
 b'\staccato c''\staccato d''\staccato e''\staccato fis''\staccato
 g''4( fis'' g'' a'') c'''8( b'') a''4 r8 d'' d'' d''
 a''4( g'' <fis'' a''> <g'' b''>) <a'' d'''>8( c''') <g'' b''>4 r8 d'''( c''' b'')
 b''8( a'') a''\staccato a''\staccato g''\staccato d'''( c''' b'')
 b''8( a'') a''\staccato a''\staccato g''\staccato d'''( c''' b'')
 b''8( a'' c''' a'') a''( g'') g''( fis'')
 \appoggiatura g''16 \times 2/3 { d'''8[ c''' b''] a''[ g'' fis''] e''[ d'' c''] b'[ a' g'] } fis'4 fis' fis' fis'
 \times 2/3 { g'8[ a' b'] c''[ d'' e''] fis''[ g'' a''] b''[ c''' d'''] } c'''4 c''' c''' c'''
 \appoggiatura b''16 \times 2/3 { d'''8[ c''' b''] a''[ g'' fis''] e''[ d'' c''] b'[ a' g'] } f'4 f' f' f'
 \times 2/3 { e'8[ a' c''] e''[ c'' a'] } g'!4 a'4\trill
 \times 2/3 { g'8[ a' b'] c''[ d'' e''] fis''[ g'' a''] b''[ c''' d'''] } <c''' e'''>1
 <b'' d'''>4\staccato <a'' c'''>\staccato <g'' b''>\staccato <fis'' a''>\staccato
 \times 2/3 { d'''8[ c''' b''] a''[ g'' fis''] e''[ d'' c''] b'[ a' g'] } <c'' e''>1
 <b' d''>4\staccato <a' c''>\staccato <g' b'>\staccato <fis' a'>\staccato
 g'4 \times 2/3 { d'''8 b'' g'' } fis''4 \times 2/3 { c'''8 a'' fis'' }
 g''4 \times 2/3 { d''8 b' g' } fis'4 \times 2/3 { c''8 a' fis' }
 g'4 \times 2/3 { d'''8 b'' g'' } fis''4 \times 2/3 { c'''8 a'' fis'' }
 g''4 \times 2/3 { d''8 b' g' } fis'4 \times 2/3 { c''8 a' fis' }
 g'4 \times 2/3 { c''8 a' fis' } g'4 \times 2/3 { c''8 a' fis' }
 g'4 r4 <a' c'' d'' fis''> r4 <b' d'' g''>4 r4 r2\fermata \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key g \major
 \time 2/2
 <g, g>2 r2 r4 b4( a g) fis4 d g f e4 fis g8 g b d'
 <g g'>2 r2 r4 \clef treble b'8\p[ d''] a'[ d'' g' d''] fis'8 d'' d' d'' g' d'' f' d'' e'8 g' fis'! a' g'4 r4
 r4 <c' e' a'>4 r2 r4 <b d' g'>4 r2
 \clef bass c'4 r4 d'4 r4 g4 r4 r2 r4 <c e a>4 r2 r4 <cis e a>4 r2
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { d8[ fis a] d[ fis a] d[ fis a] d[ fis a] d8[ g b] d8[ g b] d8[ g b] d8[ g b]
 d8[ fis a] d[ fis a] d[ fis a] d[ fis a] d8[ g b] d8[ g b] d8[ g b] d8[ g b]
 d8[ fis a] d[ g b] d[ fis a] d[ g b] } <d fis>4 r4 r2
 \clef treble fis'8 a' g' a' fis' a' cis' a' d' a' cis' a' a4 r4
 g'8 a' fis' a' e' a' d' a' cis' a' d' a' d'4 r4
 <g' b'>2 <fis' a'>4 r <g' b'>2 <fis' a'>4 r r4 g' r gis' a'4 a r2
 fis'8 a' g' a' fis' a' cis' a' d'8 a' a a' a4 r4
 g'8 a' fis' a' e' a' d' a' cis'8 a' d' a' d'4 r4
 <g' b'>2 <fis' a'>4 r <g' b'>2 <fis' a'>4 r
 \clef bass r4 g a a, d4 r4 r2
 \times 2/3 { e8[ g a] e8[ g a] e8[ g a] e8[ g a] } <d fis>4 r4 r2
 \times 2/3 { cis8[ e a] cis[ e a] cis[ e a] cis[ e a] } d4 r4 r2
 \times 2/3 {d8 [ fis a] d[ fis a] d[ fis a] d[ fis a] }
 << { r4 g4 fis g fis } \\ { g,2 a,4 a, d } >> r4 r2
 \times 2/3 { r8 \clef treble g[ a] b[ cis' d'] e'[ fis' g'] a'[ b' cis''] }
 d''4\staccato g'\staccato a'\staccato a\staccato R1
 \clef bass \times 2/3 { r8 g,[ a,] b,[ cis d] e[ fis g] a[ b cis'] }
 d'4\staccato g\staccato a\staccato a,\staccato
 \times 2/3 { d8[ fis a] d8[ fis a] d8[ g a] d8[ g a] } \times 2/3 { d8[ fis a] d8[ fis a] d8[ g a] d8[ g a] }
 \times 2/3 { d8[ fis a] d8[ g a] d8[ fis a] d8[ g a] } <d fis>4 <d, d> <d, d> r4 \bar ":|"
 \break
 <d d'>2 r2 \clef treble
 r8 e' d' e' c' e' gis e' a e' b e' c' e' b e'
 \times 2/3 { a8[ c' e'] a'[ e' c'] } a4 r4
 r8 b' a' b' g' b' dis' b' e' b' e' b' c' ais' c' ais'
 b8 b' b' b' b' b' b' b' b' b' b' b' b' b' b' b' b b' b' b' b' b' b' b' b'8 b' b' b' b' b' b' b'
 b'8( ais' b' ais' b' a' g' fis')
 \clef bass e'8( dis' e' dis' e' d' c' b) a8( gis a gis a g fis e)
 << { r2 c'2 } \\ { d1 } >> <g, g>2 r2 r4 b4( a g) fis4 d g f e4 fis g8 g b d' <g g'>2 r2
 r8 \clef treble d'' b' d'' a' d'' g' d'' fis' d'' d' d'' g' d'' f' d'' e'4 f' g' g c'4 r4 r2
 \clef bass \times 2/3 { d8[ f g] d[ f g] d[ f g] d[ f g] } c4 r4 r2
 \times 2/3 { b,8[ d g] b,[ d g] b,[ d g] b,[ d g] }c4 r4 r2
 \times 2/3 { b,8[ d e] b,[ d e] b,[ d e] b,[ d e] c8[ e a] c[ e a] cis[ e a] cis[ e a]
 d8[ fis a] d[ fis a] d[ fis a] d[ fis a] d8[ g b] d[ g b] d[ g b] d[ g b]
 d8[ fis a] d[ fis a] d[ fis a] d[ fis a] d8[ g b] d[ g b] d[ g b] d[ g b] d8[ fis a] d[ g b] d8[ fis a] d[ g b] } d4 r4 r2
 b8 d' c' d' b d' fis d' g8 d' fis d' d4 r4
 c'8 d' b d' a d' g d' fis8 d' g d' g4 r4
 <c' e'>2 <b d'>4 r <c' e'>2 <b d'>4 r r4 <c' e'> r <cis' e'> d'4 r4 r2
 \clef treble b'8 d'' c'' d'' b' d'' fis' d'' g'8 d'' fis' d'' d'4 r4
 c''8 d'' b' d'' a' d'' g' d'' fis'8 d'' g' d'' g' r r4
 << { e''4( fis'' d'') } \\ {  c''2 b'4 } >> r4 << { e''4( fis'' d'') } \\ {  c''2 b'4 } >> r4 r4 c'' d'' d' g'4 r4 r2
 \clef bass \times 2/3 { a8[ c' d'] a[ c' d'] a[ c' d'] a[ c' d'] } <g b>4 r4 r2
 \times 2/3 { fis8[ a d'] fis[ a d'] fis[ a d'] fis[ a d'] } <g b>4 r4 r2
 \times 2/3 { b,8[ d g] b,[ d g] b,[ d gis] b,[ d gis] c8[ e a] c[ e a] d[ g b] d[ fis c'] } g4 r r2
 \times 2/3 { r8 \clef treble c'[ d'] e'[ fis' g'] a'[ b' c''] d''[ e'' fis''] }
 g''4\staccato c''\staccato d''\staccato d'\staccato R1
 \clef bass \times 2/3 { r8 \stemUp c\f[ d] \stemDown e[ fis g] a[  b c'] d'[ e' fis'] }
 g'4\staccato c'\staccato d'\staccato d\staccato
 \times 2/3 { g,8[ b, d] g,[ b, d] g,[ c d] g,[ c d] g,8[ b, d] g,[ b, d] g,[ c d] g,[ c d]
 g,8[ b, d] g,[ b, d] g,[ c d] g,[ c d] g,8[ b, d] g,[ b, d] g,[ c d] g,[ c d]
 g,8[ b, d] g,[ c d] g,[ b, d] g,[ c d] }
 g,4 r4 <d, d> r4 <g,, g,>4 r r2\fermata \bar "|."
 }
>>

 \layout {
 \context {
   \Staff
   \override VerticalAxisGroup #'minimum-Y-extent = #'(-5.0 . 5.0)
   fontSize = #-1 }
 }

 \midi { \tempo 4 = 142 }
}
