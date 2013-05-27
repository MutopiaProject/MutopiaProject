\version "2.6.0"

\header {
  title = "Lied Ohne Worte - Opus 53 No. 5 - Volkslied"
  composer = "Felix Mendelssohn"
  mutopiatitle = "Lied Ohne Worte - Opus 53 No. 5 - Volkslied"
  mutopiacomposer = "Mendelssohn-BartholdyF"
  mutopiapoet = "Felix Mendelssohn"
  mutopiainstrument = "Piano"
  date = "1841"
  source = "Breitkopf & Härtel, Leipzig"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2005/August/15"
  version = "2.6.0"
  
  piece = " "
  footer = "Mutopia-2005/08/18-592"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key a \minor
 \time 4/4
 \once \override TextScript #'padding = #1.5
 \partial 8 c''16^\markup { \large "Allegro con fuoco" }\p( d'' e'' c'' a'8) r16 e''( c'' a' f'' d'' a'8) r16 f''( d'' a' d''
 b' gis'8) r16 d''( b' gis' e'' c'' a'8) r16 b'( c'' d''
 \setTextCresc e''\< c'' a'8) r16 e''( c'' a' f'' d'' a'8) r16 f''( d'' a' d'' b' gis'8) r16 d''( b' gis' e'' c'' a'8) r16 d''( b' gis'
 e'' c'' a'8) r16 d''( b' gis' e'' c'' a'8) r16 d''( b' gis') e''^\accent c'' a' e' s2 \bar "||" e'4\!\f
 <e' a'>4. <e' b'>8 <a' c''>4 <b' d''> <c'' e''>4 <e'' g''>2\sfz( <d'' f''>8.) <c'' e''>16
 <c'' e''>4( <b' d''>8.) <a' c''>16 <a' c''>4 <f' c'' e''>8.( <b' d''>16) <a' c''>2( <gis' b'>8) r8 <d' e'>4\f
 <c' e' a'>4.\sfz <e' b'>8 <a' c''>4_\markup { \italic con \italic forza } <b' d''> <c'' e''> <g' e'' g''>2\sfz( <d'' f''>8.) <c'' e''>16
 <c'' e''>4( <b' d''>8.) <a' c''>16 <a' c''>4( <g' b'>8._\markup { \italic assai }) <f' a'>16
 <f' a'>8\staccato\f <b gis' b'>\staccato <c' a' c''>\staccato <d' b' d''>\staccato
 <e' c'' e''>\staccato[ <d' b' d''>\staccato <c' a' c''>\staccato r16 <b e' b'>\staccato] <b e' b'>2( <c' a'>4) r8
 gis'16(\p a' b' gis' e'8) r16 b'( gis' e' c'' a' e'8) r16 c''( a' e' a' fis' dis'8) r16 a'( fis' dis' b' gis' e'8) r16 fis'( gis' a'
 \setTextCresc b'\< gis' e'8) r16 b'( gis' e' c'' a' e'8) r16 c''( a' e' a' fis' dis'8) r16 a'( fis' dis' b' gis' e'8\!) r8\f e'
 <e' b'>4. <a' c''>8 <gis' d''>4 <a' c''> <gis' f''>8.\staccato <gis' e''>16\staccato <gis' d''>2\sfz
 <gis' f''>4_\markup { \italic sempre \italic con \italic forza } <a' e''>4 <e' c''> <e' b'> << { a'8. b'16 } \\ { <c' dis'>4 } >>
 <c' dis' a'>2( <b e' gis'>4) e'
 <b e' b'>4. <c' a' c''>8 <d' gis' d''>4 <f' gis' f''> <e' a' e''>8.\staccato <d' a' d''>16\staccato <c' a' c''>2 <e' c'' e''>4\f
 <d' b' d''>4 <e' a' c''> <d' g'! b'> <c' d' fis' a'>8. b'16 <c' d' fis' a'>2( <b d' g'>4) g'4
 <g' e'' g''>4.\sfz <f' d'' f''>8 <e' c'' e''>4 <f' d'' f''> <e' c'' e''>4( <d' b' d''>8.) <c' a' c''>16 <d' b' d''>4 <f' g'>
 <e' c'' e''>4. <d' b' d''>8 <c' a' c''>8\staccato <d' b' d''>\staccato <e' c'' e''>\staccato <d' b' d''>\staccato
 <c' a' c''>4( <b gis' b'>8.) <a fis' a'>16 <b gis' b'>4\< <d' e'>\!
 <c' e' a'>4.\f <e' b'>8 <a' c''>4 <b' d''> <c'' e''> <g' e'' g''>2\sfz( <d'' f''>8.) <c'' e''>16
 <c'' e''>4 <b' d''>8. <a' c''>16 <a' c''>8 c'' <e' f' c'' e''>8. <b' d''>16
 << { <a' c''>2( <gis' b'>8) } \\ { r4 dis'8. e'16 e'8 } >> r8 <d'! e'>4
 <c' e' a'>4.\sf <e' b'>8 <a' c''>8.[ <e' b'>16 <a' c''>8. <b' d''>16] <c'' e''>4 <e'' g''>2\sfz
 <g'' bes''>4\sfz ~ <g'' bes''>2 ~ <g'' bes''>8.[ <bes' g'' bes''>16\f\staccato <a' f'' a''>8.\staccato <g' e'' g''>16\staccato]
 <f' d'' f''>2 ~ <f' d'' f''>8.[ <f' d'' f''>16\staccato <e' c'' e''>8.\staccato <d' b' d''>16\staccato]
 <c' a' c''>2 ~ <c' a' c''>8 <b gis' b'>\staccato <a fis' a'>\staccato <b gis' b'>\staccato
 <c' a' c''>8\staccato <d' b' d''>\staccato <e' c'' e''>\staccato <f' d'' f''>\staccato
 <e' c'' e''>8\staccato[ <d' b' d''>\staccato <c' a' c''>\staccato r16 <e' b'>16] <e' b'>2\sfz( <c' a'>4) r16
 a'16\p( gis' a' b' gis' e'8) r16 b'( gis' e' c'' a' e'8) r16 c''( a' e' a' fis' dis'8) r16 a'( fis' dis' b' gis' e'8) r16
 fis'16( gis' a' b' gis' e'8) r16
 \setTextCresc b'\<( gis' e' c'' a' e'8) r16 c''( a' e' a' fis' dis'8) r16 a'( fis' dis' b' gis' e'8) r8 e'8\!\f
 <b e' b'>4. <c' e' c''>8 <d' e' d''>4 <c' e' c''>4 <f' gis' f''>8.\staccato <e' gis' e''>16\staccato <d' gis' d''>2\sfz
 <f' gis' f''>4_\markup { \italic piu \italic f \italic poco \italic a \italic poco } <e' a' e''> <c' e' c''> <b e' b'> <c' dis' a'>8. b'16
 <c' dis' a'>2( <b e' gis'>4) e'4
 <b e' gis' b'>4. <c' a' c''>8 <d' gis' d''>4 <f' gis' f''> <e' a' e''>8.\staccato <d' a' d''>16\staccato <c' a' c''>2
 <e' fis' c'' e''>4_\markup { \italic sempre \italic piu \italic \italic f }
 <d' g'! b' d''> <c' e' a' c''> <b d' g' b'> <a c' fis' a'>8. <b b'>16 <a c' fis' a'>2 <b d' g'>4 g'
 <g' e'' g''>4.\sfz <f' d'' f''>8 <e' c'' e''>4 <f' d'' f''> <e' c'' e''> <d' b' d''>8. <c' a' c''>16 <d' b' d''>4 <f' g'>
 <e' c'' e''>4.\sfz <d' b' d''>8\staccato <c' a' c''>\staccato <d' b' d''>\staccato <e' c'' e''>\staccato <d' b' d''>\staccato
 <c' a' c''>4 <b gis' b'>8._\markup { \italic sino } <a fis' a'>16 <b gis' b'>4_\markup { \italic al } <d' e'>
 <a c' e' a'>4.^\accent <b e' b'>8 <c' a' c''>4 <d' b' d''> <e' c'' e''> <g' e'' g''>2\sfz <f' d'' f''>8. <e' c'' e''>16
 <e' c'' e''>4 <d' b' d''>8. <c' a' c''>16 <c' a' c''>4 <e' c'' e''>8. <d' b' d''>16 <c' a' c''>2 <b gis' b'>4 <d' e'>
 <a c' e' a'>4.\sfz <b e' b'>8 <c' a' c''>8.[ <b gis' b'>16 <c' a' c''>8. <d' b' d''>16] <e' c'' e''>4 <g' e'' g''>2\sf <bes' g'' bes''>4 ~
 <bes' g'' bes''>2 ~ <bes' g'' bes''>8.[ <bes' g'' bes''>16 <a' f'' a''>8. <g' e'' g''>16]
 <f' d'' f''>2 ~ <f' d'' f''>8.[ <f' d'' f''>16 <e' c'' e''>8. < d' b' d''>16] <c' a' c''>2 ~ <c' a' c''>8 <b gis' b'>\mf <a fis' a'> <b gis' b'>
 <c' a' c''>8\staccato_\markup { \italic "poco a poco cresc." } <d' b' d''>\staccato <e' c'' e''>\staccato <f' d'' f''>\staccato
 <e' c'' e''>8\staccato <d' b' d''>\staccato <c' a' c''>\staccato <b gis' b'>\staccato
 <c' a' c''>8\staccato <d' b' d''>\staccato <e' c'' e''>\staccato <f' d'' f''>\staccato
 <e' c'' e''>8\staccato <d' b' d''>\staccato <c' a' c''>\staccato <b gis' b'>\staccato
 <c' a' c''>8\staccato\f\< <d' b' d''>\staccato <e' c'' e''>\staccato <f' d'' f''>\staccato\!
 <e' c'' e''>8\staccato\> <d' b' d''>\staccato <c' a' c''>\staccato\! \setTextCresc <b gis' b'>\staccato\<
 <c' a' c''>8\staccato <d' b' d''>\staccato <e' c'' e''>\staccato <f' d'' f''>\staccato
 <e' c'' e''>8\staccato <d' b' d''>\staccato <c' a' c''>\staccato <b gis' b'>\staccato
 <c' a' c''>8\staccato\!\ff <b gis' b'>\staccato_\markup { \italic "riten." } <c' a' c''>\staccato <b gis' b'>\staccato
 <c' a' c''>8\staccato <b gis' b'>\staccato <c' a' c''>\staccato <b gis' b'>\staccato
 <c' a' c''>8\staccato <b gis' b'>\staccato <c' a' c''>\staccato <d' b' d''>\staccato <e' c'' e''>4 <b e' b'>8. <c' c''>16
 <b e' b'>2\sfz( <a a'>4) r16^\markup { \italic "a tempo" }
 b'16( c'' d'' e'' c'' a'8) r16 e''( c'' a' f'' d'' a'8) r16
 f''( d'' a' d''_\markup { \italic dim } b' gis'8) r16 d''( b' gis' e'' c'' a'8) r16 b'( c'' d''
 e'' cis'' a'8) r16 e''( cis'' a' f'' d'' a'8) r16 f''( d'' a' d'' b' gis'8) r16 d''( b' gis' e'' c'' a'8) r16 d''( b' gis' e'' c'' a'8)
 r16 d''( b' gis' e''_\markup { \italic dim } c'' a' d'' b' gis' e'' c'' a' d'' b' gis' e'' c'' a' d'' b' gis' e'' c'' a' d'' b' gis'
 e'' c'' a' e'' c'' a' e'' c'' a' e'' c'' a' e'' c'' a' e''
 c''_\markup { \italic ritard. } a' e'' c'' a' e'' c'' a' e''2\p c''4 a'2.^\fermata) \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key a \minor
 \time 4/4
 \partial 8 r8
 r4 <a c' e'> r <a d' f'> r <a b d'> r <a c' e'> r4 <a c' e'> r <a d' f'> r <a b d'> r8 <a c' e'> <a d' f'>4
 r8 <a c' e'> <a d' f'>4 r8 <a c' e'> <a d' f'>4 s4 c'16 a e c <a,, a,>8 r8 \bar "||" e4\f
 <c a>4. <e b>8 <a c'>4 <b d'> <c' e'> <e' g'>2\sfz( <d' f'>8.) <c' e'>16
 <c' e'>4( <b d'>8.) <a c'>16 <a c'>4 << { <c' e'>8.( <b d'>16) <a c'>2( <gis b>8) } \\ { d4 e2 ~ e8 } >> r8 e4
 <a, c a>4.\sfz <e b>8 <a c'>4 <b d'> <c' e'>
 << { e'2( <d' f'>8.) <c' e'>16 <c' e'>4( <b d'>8.) <a c'>16 c'4 <g b> } \\ { e8\staccato f\staccato g2_\accent ~ g4 g a e } >>
 << { a8 gis a b c' b a s } \\ { f4 e8\staccato d\staccato c\staccato[ d\staccato e\staccato r16 e] } >> e2( <a, a>4) r4
 r4 <e gis b> r <e a c'> r <e fis a> r <e gis b> r <e b d'> r <e a c'> r <e fis a c'> r <e gis b>8 e
 <gis b>4. <a c'>8 <b d'>4 <a c'> <d' f'>8.\staccato <c' e'>16\staccato <b d'>2\sfz <d' f'>4
 <c' e'>4 <a c'> <gis b> << { a8. b16 a2( gis4) } \\ { fis4 e2 ~ e4 } >> e4
 gis4. a8 b4 d' c'8.\staccato b16\staccato a2 <a, fis>4\f <b, g!> <c c'> <d b> << { a8. b16 } \\ { d4 } >>
 <d a>2( <g, g>4) << { g4 e'4. d'8 c'4 d' c'4( b8.) a16 b4 g c'4. b8 a b c' b a4( gis8.) fis16 gis4 e } \\
 { f!4 e2. d4 g2 ~ g8 f\staccato e\staccato d\staccato c2. b,4 e2 ~ e8 d\staccato c\staccato b,\staccato } >>
 <a, c a>4.\f <e b>8 <a c'>4 <b d'> <c' e'>
 << { e'2( <d' f'>8.) <c' e'>16 <c' e'>4 <b d'>8. <a c'>16 c'4 c'8. <b d'>16 <a c'>2( <gis b>8) } \\
 { e8\staccato f\staccato g2 ~ g4 gis a d e2 ~ e8 } >> r8 e4
 <a, c a>4.\sfz <e b>8 <a c'>8.[ <e b>16 <a c'>8. <b d'>16] \clef treble <c' e'>4 <e' g'>2\sfz
 << { <g' bes'>4 ~ <g' bes'>2 ~ <g' bes'>8.[ g'16\staccato f'8.\staccato e'16\staccato]
 d'2 ~ d'8.[ d'16\staccato c'8.\staccato b16\staccato] } \\
 { s4 g'8 f'\staccato e'\staccato d'\staccato cis'2 d'8 c'!\staccato b\staccato a\staccato gis2 } >> \clef bass
 << { a2 ~ a8 gis fis gis a b c' d' c'[ b a r16 b] } \\ { a8 g!\staccato fis\staccato e\staccato dis2 e2 ~ e4 ~ e8[ r16 e] } >>
 <e b>2\sfz( <a, a>4) r4
 r4 <e gis b> r <e a c'> r <e fis a> r <e gis b> <e, e> <e b d'> r <e a c'> <e, e> <e fis a c'> r <e gis b>8 <e, e>\f
 <gis, e>4. <a, e>8 <b, e>4 <a, e> <d e>8.\staccato <c e>16\staccato <b, e>2\sfz <d e d'>4
 <c e c'>4 <a, e a> <gis, e gis> <fis, e fis> <e, e> <e,, e,>2 <e, e>4
 <d e gis>4. <c e a>8 <b, e b>4 <d e d'> <c e c'>8.\staccato <b, e b>16\staccato <a, e a>2 <a,, a,>4
 <b,, b,>4 <c, c> <d, d> <d, d> <g,, g,>4 <g, g>2 <f,! f!>4
 <e, g, c e>4\sustainDown <e g c' e'>2 <d, d>4\sustainUp <g, g> <g,, g,> ~ <g,, g,>8 <f, f> <e, e> <d, d>
 <c, c>4\sustainDown <c e a c'>2 <b,, b,>4\sustainUp <e, e> <e,, e,> ~ <e,, e,>8 <d, d> <c, c> <b,, b,>
 <a,, a,>8 <e, e> <c, c> <e, e> <a, a> <e, e> <b, b> <e, e> <c c'> <b, b> <c c'> <d d'> <e e'> <g, g> <a, a> <b, b>
 <c c'>8 <e, e> <fis, fis> <gis, gis> <a, a> <c, c> <f, f> <d, d> <e, e> <dis, dis> <e, e> <dis, dis> <e, e> <d, d> <b,, b,> <c, c>
 <a,, a,>8 <e, e> <c, c> <e, e> <a, a> <e, e> <a, a> <b, b> <c c'> <b, b> <c c'> <d d'> <e e'> <f f'> <g g'> <a a'>
 <bes bes'>8 <g g'> <e e'> <d d'> <cis cis'>8.[ g'16 f'8. e'16] <d d'>8 <c! c'!> <b, b> <a, a> <gis, gis>8.[ d'16 c'8. b16]
 <a, a>8 <g,! g!> <fis, fis> <e, e> <dis, dis> gis fis gis
 <e, e>8\staccato b\staccato c'\staccato d'\staccato c'\staccato b\staccato a\staccato e\staccato
 a8\staccato b\staccato c'\staccato d'\staccato c'\staccato b\staccato a\staccato <gis, b, gis>\staccato
 <a, c a>8\staccato <b, d b>\staccato <c e c'>\staccato <d f d'>\staccato
 <c e c'>8\staccato <b, d b>\staccato <a, c a>\staccato <gis, b, gis>\staccato
 <a, c a>8\staccato <b, d b>\staccato <c e c'>\staccato <d f d'>\staccato
 <c e c'>8\staccato <b, d b>\staccato <a, c a>\staccato <gis, b, gis>\staccato
 <a, c a>8\staccato <gis, b, gis>\staccato <a, c a>\staccato <gis, b, gis>\staccato
 <a, c a>8\staccato <gis, b, gis>\staccato <a, c a>\staccato <gis, b, gis>\staccato
 <a, c a>4 <f, a, f> <e, gis, e> << { e4 } \\ { e,4  } \\ { b,8. c16 } >> <e, b, e>2\sfz( <a,, a,>4) r4
 r4 <a c' e'> r <a d' f'> r <a b d'> r <a c' e'> r <a e' g'!> r <a d' f'> r <a b d' f'> r8 <a c' e'> <a d' f'>4
 r8 <a c' e'> <a d' f'>4 << { <c' e'>4( <d' f'> <c' e'>8 <d' f'>) <c' e'>4( <d' f'> <c' e'>8 <d' f'>) } \\ { a2 ~ a4 a2. } >>
 << { <a c' e'>1 ~ <a c' e'>1 ~ <a c' e'>1 } \\ { s1 s2 <a,, a,>2 ~ <a,, a,>1 } \\ { s1\sustainDown s1 s2 s4 s4\sustainUp } >>
 \bar "|."
}
>>

 \layout { }

 \midi { \tempo 4 = 128 }

}
