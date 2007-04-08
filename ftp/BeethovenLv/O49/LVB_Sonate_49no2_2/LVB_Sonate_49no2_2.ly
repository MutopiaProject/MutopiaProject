\version "2.8.0"

\header {
  title = "Sonate Opus 49 No.2 - Part 2"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Sonata No. 20 (2nd Movement: Tempo di Menuetto)"
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
 footer = "Mutopia-2006/06/05-777"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key g \major
 \time 3/4
 \once \override TextScript #'padding = #2.0
 \partial 4 g'8.(^\markup { \large "Tempo di Menuetto" } fis'16) fis'2 fis'8.( g'16)
 g'2 g'8.( b'16) d''4( ~ d''8 e'' d'' c'') b'4( g'8) r8 g'8.( fis'16)
 fis'2 fis'8.( g'16) g'2 g'8.( b'16) d''4.( cis''8[ c'' a']) g'4 r4 b'8. b'16
 b'4( c''8) r c''8. c''16 c''4( b'8) r b'8. b'16 b'8( a' gis' a' dis'' e'') g'4( fis'8) r g''8.( fis''16)
 fis''2 fis''8.( g''16) g''2 g''8.( b''16) d'''4( ~ d'''8 e''' d''' c''') b''4( g''8) r8 g''8.( fis''16)
 fis''2 fis''8.( g''16) g''2 g''8.( b''16) d'''4 d'''16( cis''' d''' cis''' d''' c''' b'' a'') g''4 r <b' d''>
 <e'' g''>4 r <d'' fis''> <c'' e''>4 r <b' d''> <c'' d''>4 <c'' d''> <c'' d''> <b' d''> r r
 r16 d'' e'' fis'' g'' a'' b'' cis''' d'''8 d''' r16 d'' e'' fis'' g'' a'' b'' cis''' d'''8 d''' b''8 a'' g'' fis'' e'' d''
 \appoggiatura cis''16 a''4.\f b''16( a'') g''8\staccato a''16( g'')
 fis''8\staccato g''16( fis'') e''8\staccato fis''16( e'') d''8\staccato e''16( d'')
 cis''4 r8 cis''( d''16 cis'' b' cis'') d''4 r8 d''8( e''16 d'' cis'' d'')
 a''4. b''16( a'') g''8\staccato a''16( g'') fis''8\staccato g''16( fis'') e''8\staccato fis''16( e'') d''8\staccato e''16( d'')
 cis''4 r8 cis''8( e''16 d'' cis'' d'') e''8. g''16 d''4 cis''
 d''8 e''16 fis'' g'' a'' b'' cis''' d'''8 d''' d'''8[( a'')] a''[( fis'')] fis''[( d'')] d''2( e''8. cis''16)
 d''8 e''16 fis'' g'' a'' b'' cis''' d'''8 d'''
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { d'''8[ a'' a''] a''[ fis'' fis''] fis''[ d'' d''] } d''2( e''8. cis''16)
 d''8.[ d''16( cis''8. d''16 c''8. d''16)] b'8.[( d''16 b'8. d''16 cis''8. e''16)]
 d''8.[ d''16( cis''8. d''16 c''8. d''16)] b'8.[( d''16 b'8. d''16 cis''8. e''16)]
 d''8.[ d''16( cis''8.\pp d''16 c''8. d''16)] b'8.[( d''16 a'8. d''16)] g'8.( fis'16)
 fis'2 fis'8.( g'16) g'2 g'8.( b'16) d''4( ~ d''8 e'' d'' c'') b'4( g'8) r8 g'8.( fis'16)
 fis'2 fis'8.( g'16) g'2 g'8.( b'16) d''4.( cis''8[ c'' a']) g'4 r4 b'8. b'16
 b'4( c''8) r c''8. c''16 c''4( b'8) r b'8. b'16 b'8( a' gis' a' dis'' e'') g'4( fis'8) r g''8.( fis''16)
 fis''2 fis''8.( g''16) g''2 g''8.( b''16) d'''4( ~ d'''8 e''' d''' c''') b''4( g''8) r8 g''8.( fis''16)
 fis''2 fis''8.( g''16) g''2 g''8.( b''16) d'''4 d'''16( cis''' d''' cis''' d''' c''' b'' a'') g''4 r4 c''8. e''16 \bar "||"
 \break
 \key c \major
 <e'' g''>4. <g' e''>8[ <a' f''> <f' d''>] <e' c''>4 <e' c''>8[ g' c'' e'']
 <e'' g''>4. <g' e''>8[ <a' f''> <f' d''>] <e' c''>4 r8 c''8[( b' c'')]
 d''8[( b')] g'8 d''[( c'' d'')] e''8[( c'')] g'8 e''[( d'' e'')] f''8( g'' a'' e'' f'' d'') c''4( b'8) g'[ c'' e'']
 <e'' g''>4. <g' e''>8[ <a' f''> <f' d''>] <e' c''>4 <e' c''>8[ g' c'' e'']
 <e'' g''>4. <g' e''>8[ <a' f''> <f' d''>] <e' c''>4 r8 c''8[( b' c'')]
 d''8[( b')] g'8 d''[( c'' d'')] e''8[( c'')] g'8 e''[( d'' e'')]
 fis''8[( c'')] a' fis''[( e'' fis'')] g''8[( d'')] b' g''[ a'' b''] c'''8[ b'' a'' g'' fis'' e''] d''8[ c'' b' a' g' fis'] \bar "||"
 \break
 \key g \major
 e'8 d' r4 r r4 r g'8. fis'16 fis'2 fis'8.( g'16) g'2 g'8.( b'16) d''4( ~ d''8 e'' d'' c'') b'4( g'8) r8 g'8.( fis'16)
 fis'2 fis'8.( g'16) g'2 g'8.( b'16) d''4.( cis''8[ c'' a']) g'4 r4 b'8. b'16
 b'4( c''8) r c''8. c''16 c''4( b'8) r b'8. b'16 b'8( a' gis' a' dis'' e'') g'4( fis'8) r g''8.( fis''16)
 fis''2 fis''8.( g''16) g''2 g''8.( b''16) d'''4( ~ d'''8 e''' d''' c''') b''4( g''8) r8 g''8.( fis''16)
 fis''2 fis''8.( g''16) g''2 g''8.( b''16) d'''4 d'''16( cis''' d''' cis''' d''' c''' b'' a'') g''4 r g''8.\p( f''16)
 f''4 r f''8.( e''16) e''4 r e''8.( d''16) d''4 r d''8.( c''16) c''4 r c''8.( a'16)
 \override Voice.DynamicLineSpanner #'padding = #1.0
 g'8\<( fis'\!) d''4.\> g'8\! g'8\<( fis'\!) d''4.\> b'8\!
 r8 a'16 c'' r8 g'16 b' r8 fis'16 a'
 r16 g'16 a' b' c'' d'' e'' fis'' g'' a'' b'' g''
 fis''8 d'''4 d'''8 c'''16 b'' a'' g'' fis''16 d''' cis''' d''' cis''' d''' cis''' d''' c''' b'' a'' g''
 dis'''16 e''' dis''' e''' g''4 b''16 a'' g'' a'' g''4 r <c' fis'> <b g'>4 r4 \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key g \major
 \time 3/4
 \partial 4
 <g b>8 d'
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' <fis a>8 d' d d' <fis a> d' <g b>8 d' d d' <g b> d'
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' r4 <d c'> < d c'> <g b> g, r4
 \clef treble <dis' fis'>4( <e' g'>8) r r4 <e' g'>4( <d'! fis'>8) r r4
 \clef bass r4 c'4 c' << { b4( a8) } \\ { d4. } >> r8 r4
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' <fis a>8 d' d d' <fis a> d' <g b>8 d' d d' <g b> d'
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' r4 <d c'> <d c'> <g b> g, r
 r16 g a b c' d' e' fis' g'8 g' r16 g a b c' d' e' fis' g'8 g' fis'8[ e' fis' d' e' fis'] \clef treble g'8[ d' e' fis' g' a']
 <g' b'>4 r <fis' a'> <e' g'> r <d' fis'> r4 \clef bass g4 gis
 a16 cis' e' cis' a cis' e' cis' a cis' e' cis' a d' fis' d' a d' fis' d' a d' fis' d'
 a16 e' g' e' a e' g' e' a e' g' e' a d' fis' d' a d' fis' d' a d' fis' d'
 a cis' e' cis' a cis' e' cis' a cis' e' cis' a d' fis' d' a d' fis' d' a d' fis' d' a e' g' e' ais e' g' e' b d' fis' d'
 g8 g' <a fis'>4 < a e'> <d' fis'> r4 r4 R2. r4 \clef treble <a fis'>4 <a g'> <d' fis'> r4 r R2. r4 <a fis'>4 <a g'>
 <d' fis'>4 r <d' fis'> <d' g'> r <d' e'> <d' fis'>4 r <d' fis'> <d' g'> r <d' e'> <d' fis'>4 r r
 r4 r \clef bass <g b>8 d'
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' <fis a>8 d' d d' <fis a> d' <g b>8 d' d d' <g b> d'
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' r4 <d c'> < d c'> <g b> g, r4
 \clef treble <dis' fis'>4( <e' g'>8) r r4 <e' g'>4( <d'! fis'>8) r r4
 \clef bass r4 c'4 c' << { b4( a8) } \\ { d4. } >> r8 r4
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' <fis a>8 d' d d' <fis a> d' <g b>8 d' d d' <g b> d'
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' r4 <d c'> <d c'> <g b> g, r \bar "||"
 \break
 \key c \major
 c8[ c' c c' c c'] c8[ c' c c' c c'] c8[ c' c c' c c'] c8[ c' c] r r4
 r4 <g b d'> r  r4 <c' e'> r r4 r8 cis'( d' f') << { e'4( d'8) } \\ { g4. } >> r8 r4
 c8[ c' c c' c c'] c8[ c' c c' c c'] c8[ c' c c' c c'] c8[ c' c] r r4
 r4 <g b d'> r  r4 <c' e'> r r4 <c' d'> r  r <b d'> r r <fis d'> r R2. \bar "||"
 \break
 \key g \major
 r4 cis'8\pp[( d' cis' d')] c'!8[( d' c' d')] <g b>8[ d']
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' <fis a>8 d' d d' <fis a> d' <g b>8 d' d d' <g b> d'
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' r4 <d c'> < d c'> <g b> g, r4
 \clef treble <dis' fis'>4( <e' g'>8) r r4 <e' g'>4( <d'! fis'>8) r r4 \clef bass r4 c'4 c'
 << { b4( a8) } \\ { d4. } >> r8 <g b>8 d'
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' <fis a>8 d' d d' <fis a> d' <g b>8 d' d d' <g b> d'
 <a c'>8 d' d d' <a c'> d' <g b>8 d' d d' <g b> d' r4 <d c'> <d c'> <g b>4 g, r
 b8 g' d' g' b g' c'8 e' c' e' c' e' gis8 e' b e' gis e' a8 e' c' e' c' e'
 <a c'>8 d' <fis a> d' <g b> d' <a c'>8 d' <fis a> d' <g b> d' c4 d d
 g4 r4 r8 \clef treble<g' b'>8 <a' c''>8 d'' <fis' a'> d'' < g' b'> d'' <a' c''>8 d'' <fis' a'> d'' < g' b'> d''
 c'4 <d' b'> <d' c''> <g' b'>4 r \clef bass <d a>4 <g, g>4 r4 \bar "|."
 }
>>

 \layout {
 \context {
   \Staff
   \override VerticalAxisGroup #'minimum-Y-extent = #'(-5.0 . 5.0)
   fontSize = #-1 }
 }

 \midi { \tempo 4 = 134 }

}
