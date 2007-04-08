\version "2.6.4"

\header {
 mutopiatitle = "Gottes Sohn ist kommen"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 724"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/22"

 title = "Gottes Sohn ist kommen"
 composer = "Johann Sebastian Bach"
 opus="BWV 724"

 footer = "Mutopia-2006/03/27-701"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

#(set-default-paper-size "a4" 'landscape)

global = {
   \key g \major
   \time 3/4
   #(set-accidental-style 'default)
}

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

restdown = {
   \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -1.0 )
}

restright = {
   \once \override Rest #'extra-offset = #'( 4.0 . 0.0 )
}

sopran = {
   \new Voice \relative g' {
      \global
      \halsup
      R1*3/4
      R1*3/4
      R1*3/4
      R1*3/4
      %% Takt 5 ==============================================
      R1*3/4
      R1*3/4
      g2 g4
      h2 c4
      d2 e4
      %% Takt 10 =============================================
      d2 e4\rest
      \restup R1*3/4
      e2 fis4
      g2 d4
      h2 cis4
      %% Takt 15 =============================================
      d2.
      \restright f1*3/4\rest
      \restup R1*3/4
      \restup R1*3/4
      \restright f1*3/4\rest
      %% Takt 20 =============================================
      \restup R1*3/4
      c2 a4
      h2 c4
      h4 a2
      g2. R1*3/4
      %% Takt 25 =============================================
      fis2 g4
      a2 g4
      fis4 e2
      d2.
      %% Takt 30 =============================================
      R1*3/4
      R1*3/4
      r4 r d
      g2 g8 a
      h2 c4
      %% Takt 35 =============================================
      d2 e4
      d2 r4
      R1*3/4
      g,2 a4
      h2 c4
      %% Takt 40 =============================================
      h2 a4
      g2.~
      g2.~\fermata
   }
}

alt = {
   \new Voice \relative g {
      \global
      \halsup
      g2 g4
      h2 \staffup c4
      d2 e4
      d2.
      %% Takt 5 ==============================================
      c4 e d
      h2 c4
      h4 c d~
      d4 g8 fis e4
      d4 g4. a8
      %% Takt 10 =============================================
      h2 a4~
      a4 g2
      e4 a fis
      h4 g a~
      a4 g2
      %% Takt 15 =============================================
      fis4 g8 a h4
      a4 h8 c d4
      g,4 a8 h c4~
      c4 h8 a g a
      h8 c d4. c8
      %% Takt 20 =============================================
      h8 c h a g fis
      e4~ e8 e fis e
      d8 e f4 e8 fis
      g4 c,8\rest e d c
      h4 e d
      %% Takt 25 =============================================
      c4 h2
      a4 d8 c h4
      a4 d8 c h cis
      d4~ d8 d c4~
      c8 c h4 a
      %% Takt 30 =============================================
      h4~ h8 h c d
      e8 d c h a g
      a4~ a8 a h c
      d2 e4
      d4 g8 fis e4
      %% Takt 35 =============================================
      d4 g4~ g8 a
      fis4~ fis8 fis~ fis e
      d2 d4~
      d4 e4~ e8 fis
      g2 fis4
      %% Takt 40 =============================================
      g2 e4
      d2 e4
      d2.
   }
}

tenor = {
   \new Voice \relative d {
      \global
      \halsdown
      \restdown R1*3/4
      \restdown R1*3/4
      \restdown R1*3/4
      d2 d4
      %% Takt 5 ==============================================
      e2 fis4
      g2 a4
      g4 a h
      g2 a4
      h2 c4
      %% Takt 10 =============================================
      d4 g8 fis e4
      d2 e8 d
      c4 h8 c d c
      h4 c a
      h4 e2
      %% Takt 15 =============================================
      d2~ d8 e
      fis2~ fis8 d
      \clef treble e4 fis8 g a4
      d,4 g8 fis e fis
      g4 d8 e fis4
      %% Takt 20 =============================================
      g4 d2
      \clef bass c4~ c8 c d c
      h8 c d4 c
      d8 g, a g fis4
      g4~ g8 c~ c h~
      %% Takt 25 =============================================
      h8 a~ a d, g4
      fis8 e d4. e8
      fis8 g a fis g a
      h8 d, e h' a g
      fis4~ fis8 g~ g fis
      %% Takt 30 =============================================
      r8 a g f e d
      c4~ c8 cis d e
      fis4~ fis8 fis g a
      \halsup h2 c4
      h8 c d4 c
      %% Takt 35 =============================================
      h4 d c~
      c4 h c~
      c4 h2~
      h8 a h4 c
      h8 c d4 c8 h16 c
      %% Takt 40 =============================================
      d2 c4
      d8\rest a h g c4
      h2._\fermata
   }
}

bass = {
   \new Voice \relative e {
      \global
      \halsdown
      s2.*32
      e8\rest a g fis e c
      g'4 h a8 g
      %% Takt 35 =============================================
      fis4 h a~
      a4 fis g
      a4 fis g~
      g8 fis e d c4
      d4~ d8 g c,4
      %% Takt 40 =============================================
      g'8 fis e d e fis
      g2~ g8 a
      h2.
   }
}

right = {
   \clef treble
   <<
   \sopran
   >>
}

left = {
   \clef bass
   <<
   \alt
   \tenor
   \bass
   >>
}

pedal = {
   \global
   \clef bass
   \relative g {
      R1*3/4
      R1*3/4
      R1*3/4
      R1*3/4
      %% Takt 5 ==============================================
      R1*3/4
      R1*3/4
      R1*3/4
      R1*3/4
      r4 g8 fis e4
      %% Takt 10 =============================================
      g2 c4
      h4. a8 g4
      a2 d,4
      e2 fis4
      g4 e a
      %% Takt 15 =============================================
      h4 a g
      d'4 c h
      c4 h a
      h2 c4
      h2 a4
      %% Takt 20 =============================================
      g4. a8 h g
      a8 h a g fis4
      g4 g, a
      h4 c d
      e8 d c4 g'
      %% Takt 25 =============================================
      a8 a, h4. c8
      d8 c h a g4
      d2 e4
      h'4 g a d,2.
      %% Takt 30 =============================================
      R1*3/4
      R1*3/4
      r8 e' d c h a
      g2 r4
      g2 a4
      %% Takt 35 =============================================
      h2 c4
      d2 e4
      fis8 e d c h a
      g4 r4 r4
      g2 a4
      %% Takt 40 =============================================
      h2 c4
      h4 e~ e8 fis
      g2.\fermata
      \bar "|."
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
   \midi{ \tempo 4 = 100 }
}
