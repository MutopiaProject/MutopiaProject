\version "2.16.0"

\header {
  mutopiatitle = "Uns ist ein Kind geboren: 8. Choral"
  mutopiacomposer = "KuhnauJ"
  mutopiainstrument = "Voice (SATB)"
  style = "Classical"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Robert de Vries"
  maintainerEmail = "rhdv@xs4all.nl"
  lastupdated = "2002/Oct/10"

  title = "Uns ist ein Kind geboren"
  composer = "attr. J. Kuhnau"
  opus = "BWV 142"
  piece = "8. Choral"
  source = "Unknown"

  %  footer = "VVE 2002"
  %  tagline = "VAK Vokaal Ensemble 2002"

 footer = "Mutopia-2013/01/05-283"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

global = {
  \time 3/4
}

\paper {
  line-width = 15.0\cm
  % this adds space between composer and the first staff
  markup-system-spacing #'padding = #4
}

\layout {
  \context {
    \Score
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 16)
  }
  \context {
    \Voice
    \dynamicUp
  }
}

sopraan = \relative c'' {
  \clef "violin"
  \key c \major
				%1
  R2. * 6 | \break
				%7
  r4 r a | c2 b4 | a2 r4 |
				%10
  r r a | c2 b4 | a2 r4 |
				%13
  R2. | r4 r4 e' | d d c |
				%16
  b2 r4 | r r b | c2 c4 |
				%19
  d2 d4 | e2 e4 | d2 c4 ~ |
				%22
  c b2 | a2. | R2. |
				%25
  r4 r4 e' | d2 c4 | b2. |
				%28
  R2. r4 r e | d2 c4 |
				%31
  b2. | r4 r b | c2 c4 |
				%34
  d2 d4 | e2 e4 | d2 c4 ~ |
				%37
  c b2 | a2. | R | R | R\fermataMarkup |
}

alto = \relative c' {
  \clef "violin"
  \key c \major
				%1
  R2. * 6 |
				%7
  r4 r c | e2 e4 | e2 r4 |
				%10
  r r c | e2 e4 | e2 r4 |
				%13
  R2. | r4 r g | g g e |
				%16
  e2 r4 | r r e | e2 e4 |
				%19
  g2 g4 | g2 g4 | g2 e4( |
				%22
  f) b,( e) | e2. | R2. |
				%25
  r4 r g | g2 e4 | e2. |
				%28
  R2. | r4 r g | g2 e4 |
				%31
  e2. | r4 r e | e2 e4 |
				%34
  g2 g4 | g2 g4 | g2 e4( |
				%37
  f) b,( e) | e2. | R | R | R\fermataMarkup |
}

tenor = \relative c' {
  \clef "violin_8"
  \key c \major
				%1
  R2. * 6 |
				%7
  r4 r a | a2 gis4 | a2 r4 |
				%10
  r r a | a2 gis4 | a2 r4 |
				%13
  R2. | r4 r c | b b a |
				%16
  gis2 r4 | r r gis | a2 a4 |
				%19
  b2 b4 | c2 c4 | b2 a4 ~ |
				%22
  a a( gis) | a2. | R2. |
				%25
  r4 r c | b2 a4 | gis2. |
				%28
  R2. | r4 r c | b2 a4 |
				%31
  gis2. | r4 r gis | a2 a4 |
				%34
  b2 b4 | c2 c4 | b2 a4 ~ |
				%37
  a a( gis) | a2. | R | R | R\fermataMarkup |
}

bas = \relative c {
  \clef "bass"
  \key c \major
				%1
  R2. * 6 |
				%7
  r4 r a' | a2 e4 | a,2 r4 |
				%10
  r r a' | a2 e4 | a,2 r4 |
				%13
  R2. | r4 r c'4 | g g a |
				%16
  e2 r4 | r r e | a2 a4 |
				%19
  g2 g4 | c2 c4 | g2 a4( |
				%22
  d,) e2 | a,2. | R2. |
				%25
  r4 r c' | g2 a4 | e2. |
				%28
  R2. | r4 r c | g'2 a4 |
				%31
  e2. | r4 r e | a2 a4 |
				%34
  g2 g4 | c2 c,4 | g'2 a4( |
				%37
  d,) e( e,) | a2. | R | R | R\fermataMarkup | \bar "|."
}

lyricsText = \lyricmode {
  _2. _ _ _ _ _
				%7
  _2 Al4 -- le2 -- lu4 -- ja,2 _4
				%10
  _2 Al4 -- le2 -- lu4 -- ja,2 _4
				%13
  _2. _2 ge4 -- lo -- bet sei
				%16
  Gott,2 _4 _ _ sin -- gen2 wir4
				%19
  all'2 aus4 un2 -- sers4 Her2 -- zens2 __
				%22
  Grun -- de;2. _
				%25
  _4 _ denn Gott2 hat4 heut,2.
				%28
  _2. _4 _ ge -- macht2 solch'4
				%31
  Freud',2. _4 _ der wir2 ver4 --
				%34
  ges2 -- sen4 solln2 zu4 kei2 -- ner __
				%37
  Stun -- de.2.
}

\score {
  \context ChoirStaff = "coro" <<
    \override Score.BarNumber   #'padding = #2

    \context Staff = "soprano" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = #"flute"
      \set Staff.instrumentName = "Soprano"
      \set Staff.shortInstrumentName = "S"
      \global
      \sopraan
      \context Lyrics = "soprano" \lyricsText
    >>
    \context Staff = "alto" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = "flute"
      \set Staff.instrumentName = #"Alto"
      \set Staff.shortInstrumentName = #"A"
      \global
      \alto
      \context Lyrics = "alto" \lyricsText
    >>

    \context Staff = "tenoren" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = "flute"
      \set Staff.instrumentName = #"Tenore"
      \set Staff.shortInstrumentName = #"T"
      \global
      \tenor
      \context Lyrics = "tenoren" \lyricsText
    >>

    \context Staff = "bassen" <<
      \set Staff.autoBeaming = ##f
      \unset Staff.melismaBusyProperties
      \set Staff.midiInstrument = "flute"
      \set Staff.instrumentName = #"Basso"
      \set Staff.shortInstrumentName = #"B"
      \global
      \bas
      \context Lyrics = "bassen" \lyricsText
    >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 80
  }
}
