\version "2.16.1"

\header {
  mutopiatitle = "Uns ist ein Kind geboren: 2. Coro"
  mutopiacomposer = "KuhnauJ"
  mutopiainstrument = "Voice (SATB)"
  style = "Classical"
  source = "Unknown"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Robert de Vries"
  maintainerEmail = "rhdv@xs4all.nl"
  lastupdated = "2002/Oct/10"

  title = "Uns ist ein Kind geboren"
  composer = "attr. J. Kuhnau"
  opus = "BWV 142"
  piece = "2. Coro"

  %  footer = "VVE 2002"
  %  tagline = "VAK Vokaal Ensemble 2002"

 footer = "Mutopia-2013/01/05-286"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

global = {
  \time 4/4
}

\paper {
  line-width = 16.0\cm
  markup-system-spacing #'padding = #4
}

sopraan = \relative c'' {
  \clef "violin"
  \dynamicUp
  \key c \major
				%1
  R1 * 4 |
				%5
  r8 e e  d16[ c] d8  b16[ c] d4 | c8 c c  b16[ a]
				%6 II
  b4 b | c b r8 e, e e | a4 c b2 |
				%9
  a8 a a  g16[ fis] g8  e16[ fis] gis4 | a8 e' e  d16[ c] b4 e | e ( dis)
				%11 II
  e r | r8 a, a a e'4 g | fis2 e8 e e  d16[ c] |
				%14
  d8 d d  c16[ b] c8 e e  d16[ c] | d8  b16[ c] d4 c8  cis16[ d]  e[ f]  g[ e] | f4 d e2 |
				%17
  a,4 r r8 e'8 e  d16[ c] | d8 d d  c16[ b] c4. f8 | b,2 a4 r |
				%20
  R1 | R1 | R1 |
				%23
  r8 e' e  d16[ c] d8  b16[ c] d4 | c r r2 | R1 |
				%26
  R1 | R1 | R1 |
				%29
  R1 | r2 r8 e d  c16[ b] | c8 c b8. b16
				%31 II
  b8  a16[ b]  b8.[ a16] | a4 r8 f'8 f  e16[ d] e8 e | e  d16[ c] d8 d d  c16[ b] c8 b |
				%34
  c8. d16 b4 a8 cis cis8. cis16 | d8. d16 d8  c16[ b] b4. ( a8) |
				%36
  a4 r r2 | R1 | R1 |
				%39
  R1 | R1 | R1 |
}

alto = \relative c' {
  \clef "violin"
  \dynamicUp
  \key c \major
				%1
  R1 | r2 r8 a' a  g16[ f] | g8  e16[ f] g4 f8 f f  e16[ d] |
				%4
  e8 e a a gis a  a[ gis] | a4 a a ( gis) | a8 a, a a
				%6 II
  e'4 g | fis2 e8 e d  c16[ b] | c8 a' a  g16[ fis] g4 e |
				%9
  e ( dis) e8 e e e | e e  e[ fis] g b b c | b4 b
				%11 II
  r8 e, e e | a4 c b2 | a8 a a  g16[ fis] g8  e16[ fis]  gis[ fis gis a] |
				%14
  b8 b b  a16[ gis] a4 a | a ( gis) a r | r8 a a  g16[ f] g8  e16[ f] g4 |
				%17
  f8 f f  e16[ d] e8 g g a | b b b  a16[ gis] a4 a | a ( gis) a r |
				%20
  R1 | R1 | r2 r8 e e e |
				%23
  a4 c b2 | a4 r r2 | R1 |
				%26
  r8 g g  f16[ e] f8 f f4 ~ |  f8[ g16 f]  e[ g f e] d4 r | R1 |
				%29
  r2 r8 b' b  a16[ g] | a8  fis16[ g] a4 g8 e fis gis | a e e e
				%31 II
  e8. f16 e4 | e r8 a g g g b | a a a  gis16[ fis] gis8  a16[ gis] a8 gis |
				%34
  a a  a[ gis] a e e8. e16 | d8. f16 a8 f e2 |
				%36
  e4 r r2 | R1 | R1 |
				%39
  R1 | R1 | R1 |
}

tenor = \relative c' {
  \clef "violin_8"
  \dynamicUp
  \key c \major
				%1
  r8 e, e e a4 c | b2 a4 r | r8 e' e  d16[ c] d8  b16[ c] d4 |
				%4
  c8 c c  b16[ a] b8 c  b8.[ a16] | a4 r r8 d d  c16[ b] | c8  a16[ b] c4
				%6 II
  b8 b b e | e e  e[ dis] e c b  a16[ gis] | a8 c  c[ a] b b b  a16[ g] |
				%9
  a8  fis16[ g] a4 b r | r8 a a a e'4 g | fis2
				%11 II
  e8 e d  c16[ b] | c8  c16[ b]  a[ c b a] g8 b b e | c c b4 b r |
				%14
  r8 e, e e a4 c | b2 a8  a16[ b]  cis[ d]  e[ cis] | d4 d d ( cis) |
				%17
  d8 d d  c16[ b] c8 c e e | e e e8. e16 e4. d8 | b4 ( e) e r |
				%20
  R1 | R1 | R1 |
				%23
  r8 c c  b16[ a] b8 a gis4 | a r r2 | R1 |
				%26
  r4 r8 e' e  d16[ c] d8 d | d4 ( c) b r | R1 |
				%29
  r2 r8 g' g  fis16[ e] | fis8 e dis4 e r | r8 a, gis8. gis16
				%31 II
  gis8 a  a[ gis] | a c c  b16[ a] b8 b b  a16[ g] | a8 a a a e'4. e8 |
				%34
  e f b,4 c8 a a a | a8. a16 a8 a8 a4 ( gis) |
				%36
  a r r2 | R1 | R1 |
				%39
  R1 | R1 | R1 |
}

bas = \relative c {
  \clef "bass"
  \dynamicUp
  \key c \major
				%1
  R1 | R1 | R1 |
				%4
  r2 r8 e e e | a4 c b2 | a8 a a  g16[ fis]
				%6 II
  g8 g g  fis16[ e] | a8  g16[ fis]  b8[ b,] e4 r | r8 a, a a e'4 g |
				%9
  fis2 e8 e d  c16[ b] | c8 c c  b16[ a] g8 g' g a | b4 ( b,)
				%11 II
  e4 r | r2 r8 g g  fis16[ e] |  a[ c]  b[ a] b4 e, r |
				%14
  R1 | r2 r8 a, a a | d4 f e2 |
				%17
  d8 d d g c, c' c  b16[ a] | gis4 r8 e a8. a16 a8 d, | e2 a,4 r |
				%20
  R1 | R1 | R1 |
				%23
  R1 | R1 | R1 |
				%26
  r4 r8 c'8 a a b g | c4 ( c,) g' r | R1 |
				%29
  r8 b, b b e4 g | fis2 e4 r | r8 e d  c16[ b]
				%31 II
  c8. d16 e4 | a,8 a' a  g16[ f] g8 g g  f16[ e] | f8 f f  e16[ d] e4. e8 |
				%34
  a d, e4 a8 g g  f16[ e] | f8. f16 f8 d e4 ( e,) |
				%36
  a r r2 | R1 | R1 |
				%39
  R1 | R1 | R1 \bar "|."
}

soptext = \lyricmode {
}

alttext = \lyricmode {
}

tentext = \lyricmode {
}

bastext = \lyricmode {
}

\score {
  \context ChoirStaff = "coro" <<
    \override Score.BarNumber   #'padding = #2

    \context Staff = "soprano" <<
      \set Staff.autoBeaming = ##f
       \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Soprano"
      \set Staff.shortInstrumentName = #"S"
      \sopraan
      \context Lyrics = "soprano" \soptext
    >>

    \context Staff = "alto" <<
      \set Staff.autoBeaming = ##f
       \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Alto"
      \set Staff.shortInstrumentName = #"A"
      \alto
      \context Lyrics = "alto" \alttext
    >>

    \context Staff = "tenoren" <<
      \set Staff.autoBeaming = ##f
       \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Tenore"
      \set Staff.shortInstrumentName = #"T"
      \tenor
      \context Lyrics = "tenoren" \tentext
    >>

    \context Staff = "bassen" <<
      \set Staff.autoBeaming = ##f
       \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Basso"
      \set Staff.shortInstrumentName = #"B"
      \bas
      \context Lyrics = "bassen" \bastext
    >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 70
    }
}
