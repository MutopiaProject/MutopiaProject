\version "2.16.1"

\header {
  title             = "Waves of the Danube"
  composer          = "Ion Ivanovici"
  instrument        = "Piano"
  mutopiatitle      = "Waves of the Danube"
  mutopiacomposer   = "IvanoviciI"
  mutopianstrument  = "Piano"
  date              = "1880"
  source            = "Steinbrecher,1936"
  license           = "Public Domain"
  style             = "Romantic"
  maintainer        = "Colin Kinloch"
  
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\score {
  
  \new PianoStaff
  <<
  \new Staff = "up" {
  \clef treble
  \key a \minor
  \time 3/4
  \partial 4 e'4_\markup{ \dynamic p \whiteout \italic (dolce) }^\markup {\bold "Tempo di Valse" } \bar "||"
  \mark \markup { \musicglyph #"scripts.segno" }
  e'2.( ~ e'4 gis' a')
  b'2.( ~ b'4 gis' e')
  c''2.\<( ~ c''4 b' a'\!)
  e''2. ~ e''4 r e''
  f''2.( ~ f''4 e'' d'')
  e''2.\>( ~ e''4 d'' c''\!)
  b'2.( ~ b'4 \acciaccatura d''8 c''4 b')
  a'2.
  b'8\staccato\< c''\staccato d''\staccato e''\staccato f''\staccato g''\staccato \!
  < f'' a'' >4\staccato \f
  \repeat unfold 5 {
  < f'' a'' >4\staccato
  }
  < f'' a'' >( <e'' g''>4. <dis'' fis''>8
  <e'' g''>2.)
  \repeat unfold 6 {
  <d'' f''>4\staccato
  }
  < d'' f''>( <c'' e''>4. <bis' d''>8
  <c'' e''>2.)
  \repeat unfold 6 {
  <gis' d''>4\staccato
  }
  <f' d''>( <e' c''>4. b'8
  a'2 a''4)
  f''(d'' b')
  \acciaccatura d''8 c''2( b'4)
  a'2. ~
  a'4 r e'
  e'2.( ~
  e'4 gis' a')
  b'2.( ~ 
  b'4 gis' e')
  c''2.( ~
  c''4 b' a')
  e''2. ~
  e''4 r e''
  f''2.( ~
  f''4 e'' d'')
  e''2.\>( ~
  e''4 d'' c''\!)
  b'2.( ~
  b'4 \acciaccatura d''8 c''4 b')
  <c' e' a'>2. ~
  <c' e' a'>4 _\markup{\italic Fine} r c' \p
  \bar "||" \key d \minor
  a'2.( ~
  a'4 gis' a')
  c'2.( ~
  c'4 f' g')
  a'\<( gis' a')\!
  a'( d''4. c''8)
  c''2.\>(
  bes'4)\! r r
  g'2. ~
  g'4 fis' g'
  c'2. ~
  c'4 e' f'
  g'\<( fis' g')\!
  <e' g'>\>( <c'' e''>4. <bes' d''>8)
  <a' c''>2.\!
  c''4( b' bes')
  a'2.( ~
  a'4 gis' a')
  c'2.( ~
  c'4 f' g')
  a'\<( gis' a')\!
  <f'' a''>\>( <e'' g''>4. <d'' f''>8)
  <c'' e''>2.(
  <bes' d''>4)\! r r
  e''( d'' fis'
  g' bes' e'')
  d''( c'' e'
  f' a' d'
  ')
  c''( bes' e')
  a'2( g'4)
  <a c' f'>2. ~
  <a c' f'>4 r e'\p
  \bar "||" \key a \minor
  \mark \markup { \musicglyph #"scripts.segno" }
  }
  
  \new Staff = "down" {
  \clef bass
  \key a \minor
  \time 3/4
  \partial 4 r4 \bar "||"
  \repeat unfold 4 {
  e <gis d'> <gis d'>
  }
  \repeat unfold 4 {
  a <c' e'> <c' e'>
  }
  \repeat unfold 2 {
  a <d' f'> <d' f'>
  }
  \repeat unfold 2 {
  a <c' e'> <c' e'>
  }
  \repeat unfold 2 {
  e <gis d'> <gis d'>
  }
  \repeat unfold 3 {
  <c' a>
  }
  r4 r4 r4
  \clef treble
  b4 <f' d'> <f' d'>
  g <f' b> <f' b>
  \repeat unfold 2 {
  c' <g' e'> <g' e'>
  }
  \repeat unfold 2 {
  g <f' b> <f' b>
  }
  \repeat unfold 2 {
  c' <g' e'> <g' e'>
  }
  \clef bass
  gis <b d'> <b d'>
  e <gis d'> <gis d'>
  a, c e
  a e c
  d <f a b> <f a b>
  e <gis d'> <gis d'>
  <a c'> e' c'
  a r4 r4
  \repeat unfold 4 {
  e <gis d'> <gis d'>
  }
  \repeat unfold 4 {
  a <e' c'> <e' c'>
  }
  \repeat unfold 2 {
  a <f' d'> <f' d'>
  }
  \repeat unfold 2 {
  a <e' c'> <e' c'>
  }
  \repeat unfold 2 {
  e <gis d'> <gis d'>
  }
  a e c
  a, r r
  \bar "||" \key d \minor
  f <a c'> <a c'>
  c <a c'> <a c'>
  f a a
  c <a c'> <a c'>
  f <a c'> <a c'>
  c <a c'> <a c'>
  g <bes c' e'> <bes c' e'>
  c <e bes> <e bes>
  e <bes c'> <bes c'>
  \repeat unfold 2 {
  c <e bes> <e bes>
  e <bes g> <bes g>
  }
  c <e bes> <e bes>
  f <c' a> <c' a>
  c( d e)
  f <c' a> <c' a>
  c <c' a> <c' a>
  f a a
  c <c' a> <c' a>
  \repeat unfold 2 {
  f <c' a> <c' a>
  }
  \repeat unfold 4 {
  bes, <g d> <g d>
  }
  \repeat unfold 2 {
  c <a f> <a f>
  }
  c <bes g> <bes g>
  c <bes e> <bes e>
  f c a,
  f, r r
  \bar "||" \key a \minor
  \mark \markup { \musicglyph #"scripts.segno" }
  }
  >>
  
  \layout { }
  
  \midi {
    \tempo 4 = 60
  }
}

