\version "2.6.4"

\header {
 mutopiatitle = "Ach Gott und Herr"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 693"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/12"

 title = "Ach Gott und Herr"
 composer = "Johann Sebastian Bach"
 opus="BWV 693"

 footer = "Mutopia-2006/03/13-699"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key c \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

staffup = {
   \change Staff = "right" \halsdown
}

staffdown = {
   \change Staff = "left" \halsup
}

restup = {
   \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . 1.0 )
}

sopran = {
   \new Voice \relative c'' {
      \global
      \halsup
      \restup R1
      \restup R1
      r2 c
      h2 a
      %% Takt 5 ==============================================
      g2 r
      r2 g
      a2 h
      c2 r
      r2 d
      %% Takt 10 =============================================
      c2 h
      a2 h
      a2 g2
      R1
      r8 g a h c2
      %% Takt 15 =============================================
      h2 c
      d2 r
      \restup R1
      \restup R1
      r2 d
      %% Takt 20 =============================================
      e2 c
      d2 d\rest
      r2 g,
      a2 h
      c4. d8 e2
      %% Takt 25 =============================================
      d2 c~
      c8 e d c h c16 d h4\trill
      c1~
      c1
      \bar "|."
   }
}

alt = {
   \new Voice \relative f' {
      \global
      \halsdown
      g2\rest g4\rest g8\rest f
      e4 d c8 c d e
      f8 f f g16 f e4 e\rest
      e8\rest c d e f f f e16 d
      %% Takt 5 ==============================================
      e4 d~ d8 c16 h c8 d
      e8 c' h a g h, c d
      e4. f8 e4 d
      c8 c d e f g f e16 d
      e8 d' c h a h a4
      %% Takt 10 =============================================
      g4 d\rest d\rest e8\rest d
      e4 fis g e
      f!8 f f e16 d e8 f e d
      c8 d c h16 a h8 g' f! e
      d8 e d4 e fis
      %% Takt 15 =============================================
      g4 e\rest e8\rest g f e
      d4 c\rest c8\rest c h c
      d8 d e c d h' a g
      fis8 g fis4 g8 d c \staffdown h
      a8 h a4 \halsdown g r
      %% Takt 20 =============================================
      \staffup h'8\rest d c h a h a4
      g4 e\rest e8\rest g f e16 d
      e8 g f e d e d4
      c8 c d e f g f e16 d
      e4 e\rest e8\rest e f g
      %% Takt 25 =============================================
      a8 a g f e4 f
      g4 a g2~
      g8 a g f e c d e
      f8 e f e16 d e2
   }
}

tenor = {
   \new Voice \relative c' {
      \global
      \halsdown
      r4 r8 c h4 a
      g4 r8 g a4 h
      c4 r8 d e4 fis
      g4 r r2
      %% Takt 5 ==============================================
      r8 c, h a g g a h
      c8 e d c h g a h
      c4 r r r8 g
      a2. h4
      \clef treble c8 h' a g fis g4 fis8
      %% Takt 10 =============================================
      g8 \clef bass c, h a g f'e d
      c4 r8 c d4 r8 g,
      a4 h c r
      r8 d, e fis g e' d c
      h8 c h4 a r
      %% Takt 15 =============================================
      r8 f e d c c d e
      f8 f f e16 d e4 r8 c'
      h4 a g8 d' c h
      a8 h a4 g8 h a g
      fis8 g fis4 \halsup g8 \staffup c' h a
      %% Takt 20 =============================================
      g8 \staffdown g, a h \halsdown c4 r8 c
      h4 a g8 g a h
      c8 e d c h c4 h8
      c4 r r2
      r8 g a h c2~
      %% Takt 25 =============================================
      c4 h c r
      r8 g' f e d e d4
      c4 r r8 e, f g
      a8 g a h c2
   }
}

right = {
   \clef treble
   <<
   \alt
   \sopran
   >>
}

left = {
   \clef bass
   <<
   \tenor
   >>
}

pedal = {
   \global
   \clef bass
   \relative c' {
      r8 c h a g g, a h
      c8 c d e f4 r8 g
      a4 h c8 c, h a
      g4 r8 g a4 h
      %% Takt 5 ==============================================
      c4 r8 f e4 d
      c4 r r2
      r8 c h a g4 r
      r8 g' f e d e d4
      c4 r r r8 d
      %% Takt 10 =============================================
      e4 fis g8 g, a h
      c8 c' h a g4 r
      r2 r8 d c h
      a8 h a4 g r
      r2 r8 c h a
      %% Takt 15 =============================================
      g4 r8 g a4 r8 a
      h4 r8 h c4 r
      r4 c h c
      d4 r8 d e4 r8 cis
      d4. c!8 h a g4
      %% Takt 20 =============================================
      c4 r r2
      r4 f e d
      c4 r r2
      r8 g' f e d e d4
      c4 r r8 c d e
      %% Takt 25 =============================================
      f4 g a8 a g f
      e4 f g4. f8
      e8 f e d c2~
      c1
   }
}

\score {
   \new PianoStaff {
      \set PianoStaff.instrument = \markup { \large \center-align {
         "" "" "Manuale." "" "" "" "" "" "" "" "Pedale." } \hspace #1.3 }
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "pan flute"
            \context Voice = right \right
         }
         \context Staff = left {
                  \set Staff.midiInstrument = "pan flute"
                  \context Voice = left \left
         }
         \context Staff = pedal {
            \set Staff.midiInstrument = "pan flute"
            \context Voice = pedal \pedal
         }
      >>
   }
   \layout{}
   \midi{ \tempo 4 = 54 }
}
