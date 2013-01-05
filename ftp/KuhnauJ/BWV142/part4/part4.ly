\version "2.16.1"

\header {
  mutopiatitle = "Uns ist ein Kind geboren: 4. Coro"
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
  piece = "4. Coro"

  %  footer = "VVE 2002"
  %  tagline = "VAK Vokaal Ensemble 2002"

 footer = "Mutopia-2013/01/05-282"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

global = {
  \time 3/4
}

\paper {
  line-width = 15.0\cm
  markup-system-spacing #'padding = #4
}

sopraan = \relative c'' {
  \clef "violin"
  \dynamicUp
  \key c \major
				%1
  R2. * 7 |
				%8
  c4 c c |  b8[ a b c]  d[ b] | e2 e4 |  c8[ b a b c a] | d2 d4 |  b8[ a b c d b]
				%14
  e[ d e g f e] | d4 d r | R2. * 4 | e4 e e |
				%21
  d8[ c d b]  c[ d] | e4 e2 | d4 d e | fis2 g4 ~ | g fis2 | g2 r4 | R2. |
				%28
  d4 d d | e2 e4 | d2 g4|  e8[ d] c4 e | f2 f4 ~ | f e2 | f r4 | R2. |
				%36
  r4 r4 e | e e e | d d r | R2. | r4 r e | e4. d8 c4 | b b e |
				%43
  e4 d d | c c b | c4. d8 b4 | a2 e'4 | e4. e8 f4 | f4. g8 e4 | e4. e8 d4 |
				%50
  c2 r4 | R2. | r4 r e | d4. d8 d4 | g4. f8 e4 | e4. e8 d4 | c2 d4 |
				%57
  e4. e8 d4 | e4. e8 d4 | c2 r4 | R2. * 5 |
}

alto = \relative c' {
  \clef "violin"
  \dynamicUp
  \key c \major
				%1
  g'4 g g |  e8[ d e f]  g[ e] | a2 a4 |  f8[ e d e f d] | g2 g4 |  e8[ d e g f e] |
				%7
  d[ c d e f d] | e4 e r | R2. * 11
				%20
  g4 g g |
				%21
  g2 g4 | g2 g4 | g g g | a2 b4 ~ | b a2 | g r4 | R2. |
				%28
  g4 g g | g2 g4 | g2 g4 | g g g | a2 a4 ~ | a g2 | f r4 | R2. |
				%36
  r4 r g | g g g | g g r | R2. | r4 r c a4. gis8 a4 | gis gis gis |
				%43
  a4. gis8 a4 | e e gis | a4. a8 gis4 | a2 a4 | a4. a8 a4 | b4. b8 g4 | g4. g8 g4 |
				%50
  e2 r4 | R2. | r4 r a| a4. a8 g4 | g4. g8 g4 | g4. g8 g4 | e2 g4 |
				%57
  g4. g8 g4 | g4. g8 g4 | e2 r4 | R2. * 5 |
}

tenor = \relative c' {
  \clef "violin_8"
  \dynamicUp
  \key c \major
				%1
  R2. | c4 c c |  a8[ g a b]  c[ a] | d2 d4 |  b8[ a g a b g] |  c[ b c e d c] |
				%7
  b[ a b c d b] | c4 c r | R2. * 11 |
				%20
  c4 c c |
				%21
  d2 d4 | c2 c4 | b4 b c | c2 d4 ~ | d c2 | b r4 | R2. |
				%28
  b4 b b | c2 c4 |  b8[ a b c]  d[ b] | c4 c c | c2 c4 ~ | c c2 | a r4 | R2. |
				%36
  r4 r c | c c c | b b r | R2. | r4 r a | c4. b8  c[ d] | e4 e e |
				%43
  a,4 d  a8[ b] | c4 c e | e4. e8 e4 | c2 c4 | c4. c8 d4 | d4. d8 c4 | c4. c8 b4 |
				%50
  c2 r4 | R2. | r4 r4 c | c4. c8 b4 | c4. b8 c4 | c4. c8 b4 | c2 b4 |
				%57
  c4. c8 b4 | c4. c8 b4 | c2 r4 | R2. * 5 |
}

bas = \relative c {
  \clef "bass"
  \dynamicUp
  \key c \major
				%1
  R2. * 8 |
				%9
  g'4 g g |  e8[ d e f]  g[ e] | a2 a4 |  f8[ e d e f d] |  g[ f g a b g] |
				%14
  c[ b c e d c] |  b[ a] g4 r | R2. * 4 | c4 c c |
				%21
  b8[ a b g]  a[ b] | c4  c,8[ d]  e[ f] | g4 g c | a2 g4 ~ | g d'2 | g,2 r4 | R2. |
				%28
  g4 g g |  e8[ d c d]  e[ f] |  g[ f g a ]  b[ g] | c4 c, c' | a2 f4 ~ | f c2 | f,2 r4 | R2. |
				%36
  r4 r c' | e4. d8  e[ f] | g4 g r | R2. * 3 | r4 r e |
				%43
  fis4. e8  fis[ gis] | a4 a e | a4. a8 e4 | a,2 a'4 | a4. a8 d4 | g,4. g8 c4 | e,4. f8 g4 |
				%50
  c,2 r4 | R2. | r4 r a' | f4. f8 g4 | e4. d8 c4 | g'4. g8 g,4 | c2 g'4 |
				%57
  c4. c8 g4 | c4. c8 g4 | c,2 r4 | R2. * 5 | \bar "|."
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
				%	\override Score.TimeSignature   #'style = #'numbered

    \context Staff = "soprano" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Soprano"
      \set Staff.shortInstrumentName = #"S"
      \global
      \sopraan
      \context Lyrics = "soprano" \soptext
    >>

    \context Staff = "alto" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Alto"
      \set Staff.shortInstrumentName = #"A"
      \global
      \alto
      \context Lyrics = "alto" \alttext
    >>

    \context Staff = "tenoren" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Tenore"
      \set Staff.shortInstrumentName = #"T"
      \global
      \tenor
      \context Lyrics = "tenoren" \tentext
    >>

    \context Staff = "bassen" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = #"Basso"
      \set Staff.shortInstrumentName = #"B"
      \global
      \bas
      \context Lyrics = "bassen" \bastext
    >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 70
  }
}
