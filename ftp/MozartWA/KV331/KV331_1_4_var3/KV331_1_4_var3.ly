\version "2.6.0"

\header {
  title = "Sonate Opus KV 331 - Variation 3"
  composer = "Wolfgang Amadeus Mozart"
  mutopiatitle = "Sonate Opus KV 331 - Variation 3"
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
  
  footer = "Mutopia-2005/10/29-617"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \minor
 \time 6/8
 \repeat volta 2 { \override Voice.TextScript #'padding = #3.0
 \stemDown c''16\p^\markup { \huge "VAR.III." }( b' a' b' c'' d'' e'' dis'' f'' e'' d'' c''
 b'16 a' gis' a' b' c'' d'' cis'' e'' d'' c'' b'
 a' e'' dis'' e'' c'' a' gis' e'' f'' e'' d'' b') b'( a' gis' a' b' c'')
 \stemUp <a' c''>4( <gis' b'>8)
 \stemDown <c'' c'''>16\f( <b' b''> <a' a''> <b' b''> <c'' c'''> <d'' d'''>
 <e'' e'''> <dis'' dis'''> <f'' f'''> <e'' e'''> <d'' d'''> <c'' c'''>)
 <b' b''>( <a' a''> <gis' gis''> <a' a''> <b' b''> <c'' c'''>
 <d'' d'''> <cis'' cis'''> <e'' e'''> <d'' d'''> <c'' c'''> <b' b''>)
 <a' a''>( <gis' gis''> <a' a''> <c'' c'''> <b' b''> <d'' d'''>
 <c'' c'''> <b' b''> <c'' c'''> <e'' e'''> <d'' d'''> <f'' f'''>)
 <e'' e'''>16( <dis'' dis'''> <e'' e'''>) <e' e''>( <fis' fis''> <gis' gis''>) <a' a''>4 r8 }
 \repeat volta 2 { a'16( gis' a' a'' gis'' g'') g''( f'' e'' f'' e'' f''
 a'' gis'' a'' gis'' a'' f'') f''( e'' dis'' e'' dis'' e'')
 e''( d''! c'' b' a' e'' f'' d'' b' a' gis' b')
 b'16\<( a') c''( b') d''( c''16\!) \grace { b'32[ c'' d''] } <a' c''>4\sf\>( <gis' b'>8\!)
 c''16\p( b' a' b' c'' d'' e'' dis'' f'' e'' d'' c'' b' a' gis' a' b' c'' d'' cis'' e'' d'' c'' b'
 a' gis' a' c'' b' d'' c'' b' c'' e'' d'' f'' e'' dis'' e'' e' fis' gis' \stemUp a' gis' a' e' c' e')
 \stemDown <a' a''>16\f( <gis' gis''> <a' a''> <c'' c'''> <b' b''> <d'' d'''>
 <c'' c'''> <b' b''> <c'' c'''> <e'' e'''> <d'' d'''> <f'' f'''>)
 <e'' e'''>( <dis'' dis'''> <e'' e'''>) <e' e''>( <fis' fis''> <gis' gis''>) <a' a''>4 r8 }
}

 \context Staff = "down" {
 \clef bass
 \key a \minor
 \time 6/8
 \repeat volta 2 {
 a16\p e'_\markup { \italic \large "legato" } c' e' a e' a e' c' e' a e' e e' b e' e e' e e' b e' e e'
 a16 e' c' e' a e' b e' d' e' b e' c' e' b e' a e' e e' dis' e' e e'
 a16\f e' c' e' a e' a e' c' e' a e' e e' b e' e e' e e' b e' e e'
 a16 e' c' e' gis e' a e' c' e' f d' e c' a c' e b
 \stemDown a,16\staccato c\staccato e\staccato a\staccato a,8 }
 \repeat volta 2 { << { c'4( cis'8) d'4. f'16( e' f' e' f' d') d'( c' b c' b c')
 c'16( d' e' d' c'8) b16( c' d' e' f'8) e'8 e' e' s4 s8 } \\
 { a4. a4. a4. a4. a4. gis16 a b c' d'8 c'8( gis a) dis4( e8) } >>
 a16\p( e' c' e' a e' a e' c' e' a e' e e' b e' e e' e e' b e' e e'
 a e' c' e' gis e' a e' c' e' f d' e c' a c' e b) <a, a>4 r8
 \stemUp a,16\f( e c e gis, e a, e c e f, d e, c a, c e, b,)
 a,,16\staccato c,\staccato e,\staccato a,\staccato a,,8 }
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
 \key a \minor
 \time 6/8
 \repeat volta 2 { \override Voice.TextScript #'padding = #3.0
 \stemDown c''16\p^\markup { \huge "VAR.III." }( b' a' b' c'' d'' e'' dis'' f'' e'' d'' c''
 b'16 a' gis' a' b' c'' d'' cis'' e'' d'' c'' b'
 a' e'' dis'' e'' c'' a' gis' e'' f'' e'' d'' b') b'( a' gis' a' b' c'')
 \stemUp <a' c''>4( <gis' b'>8)
 \stemDown <c'' c'''>16\f( <b' b''> <a' a''> <b' b''> <c'' c'''> <d'' d'''>
 <e'' e'''> <dis'' dis'''> <f'' f'''> <e'' e'''> <d'' d'''> <c'' c'''>)
 <b' b''>( <a' a''> <gis' gis''> <a' a''> <b' b''> <c'' c'''>
 <d'' d'''> <cis'' cis'''> <e'' e'''> <d'' d'''> <c'' c'''> <b' b''>)
 <a' a''>( <gis' gis''> <a' a''> <c'' c'''> <b' b''> <d'' d'''>
 <c'' c'''> <b' b''> <c'' c'''> <e'' e'''> <d'' d'''> <f'' f'''>)
 <e'' e'''>16( <dis'' dis'''> <e'' e'''>) <e' e''>( <fis' fis''> <gis' gis''>) <a' a''>4 r8 }
 \repeat volta 2 { a'16( gis' a' a'' gis'' g'') g''( f'' e'' f'' e'' f''
 a'' gis'' a'' gis'' a'' f'') f''( e'' dis'' e'' dis'' e'')
 e''( d''! c'' b' a' e'' f'' d'' b' a' gis' b')
 b'16\<( a') c''( b') d''( c''16\!) \grace { b'32[ c'' d''] } <a' c''>4\sf\>( <gis' b'>8\!)
 c''16\p( b' a' b' c'' d'' e'' dis'' f'' e'' d'' c'' b' a' gis' a' b' c'' d'' cis'' e'' d'' c'' b'
 a' gis' a' c'' b' d'' c'' b' c'' e'' d'' f'' e'' dis'' e'' e' fis' gis' \stemUp a' gis' a' e' c' e')
 \stemDown <a' a''>16\f( <gis' gis''> <a' a''> <c'' c'''> <b' b''> <d'' d'''>
 <c'' c'''> <b' b''> <c'' c'''> <e'' e'''> <d'' d'''> <f'' f'''>)
 <e'' e'''>( <dis'' dis'''> <e'' e'''>) <e' e''>( <fis' fis''> <gis' gis''>) <a' a''>4 r8 }
}

 \context Staff = "down" {
 \clef bass
 \key a \minor
 \time 6/8
 \repeat volta 2 {
 a16\p e'_\markup { \italic \large "legato" } c' e' a e' a e' c' e' a e' e e' b e' e e' e e' b e' e e'
 a16 e' c' e' a e' b e' d' e' b e' c' e' b e' a e' e e' dis' e' e e'
 a16\f e' c' e' a e' a e' c' e' a e' e e' b e' e e' e e' b e' e e'
 a16 e' c' e' gis e' a e' c' e' f d' e c' a c' e b
 \stemDown a,16\staccato c\staccato e\staccato a\staccato a,8 }
 \repeat volta 2 { << { c'4( cis'8) d'4. f'16( e' f' e' f' d') d'( c' b c' b c')
 c'16( d' e' d' c'8) b16( c' d' e' f'8) e'8 e' e' s4 s8 } \\
 { a4. a4. a4. a4. a4. gis16 a b c' d'8 c'8( gis a) dis4( e8) } >>
 a16\p( e' c' e' a e' a e' c' e' a e' e e' b e' e e' e e' b e' e e'
 a e' c' e' gis e' a e' c' e' f d' e c' a c' e b) <a, a>4 r8
 \stemUp a,16\f( e c e gis, e a, e c e f, d e, c a, c e, b,)
 a,,16\staccato c,\staccato e,\staccato a,\staccato a,,8 }
}
>>

 \midi { \tempo 4 = 82 }

}
