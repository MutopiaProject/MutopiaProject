\version "2.6.4"

\header {
 mutopiatitle = "Lobt Gott, ihr Christen allzugleich"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 609"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/12"

 title = "Lobt Gott, ihr Christen allzugleich"
 composer = "Johann Sebastian Bach"
 opus="BWV 609"

 footer = "Mutopia-2006/03/27-705"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\include "deutsch.ly"

global = {
   \key g \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

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
   \new Voice \relative g' {
      \global
      \halsup
      \partial 4 g4
      d'4 d d d
      e4 d8 c h4\fermata a
      h8 cis d4 e e
      d2~\fermata d4 d
      %% Takt 5 ==============================================
      d4 d d h16 c h c
      d4~ d16 d c h a4\fermata d
      c4 h a a
      g8 a h c d4\fermata d
      c4 h a a
      %% Takt 10 =============================================
      g2.\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative g' {
      \global
      \halsdown
      \partial 4 g16 h a g
      a8 h c16 fis, g a g8 a h16 c h a
      g8 g a16 g fis e d fis e d cis e d cis
      h8 e d16 e fis8 e16 fis g8~ g16 h a g
      fis16 g fis e d e fis g a c h a g8 fis
      %% Takt 5 ==============================================
      g16 h a g fis g e fis d fis g a h8 fis
      g16 c h a g h a g fis g fis e d8 fis
      e16 g fis e d e c d e8 cis d dis
      e16 g fis e d h' a g fis d' c h a c h a
      g8 a~ a16 a g f e f d e c e d c
      %% Takt 10 =============================================
      \staffdown h16 c h a g h a c h4\fermata
   }
}

tenor = {
   \new Voice \relative h {
      \global
      \halsdown
      \partial 4 h16 d c h
      a16 h g a fis a h c d e c d h g a h
      c16 d h c a4~ a16 a g fis e8 a~
      a16 g8 g16 a8. a16 h8. h16 cis8. cis16
      d16 h a g fis g fis e d fis g a h c a h
      %% Takt 5 ==============================================
      g16 d' c h a8 g a16 c h a g e' d c
      h16 d e fis g8 r r16 e d c h c a h
      g8 a h g~ g16 h a g fis g e fis
      g16 e' d c \clef treble h g' fis e d h' a g fis e d c
      \clef bass h16 c a h g4~ g4. fis!8
      %% Takt 10 =============================================
      g16 e d c h d c e d4_\fermata
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
   \clef "bass_8"
   \relative g, {
      \partial 4 g4
      fis8 e d c h a g f
      e8 e' fis d g4. fis8
      g8 e fis d g e a a,
      d,4. e8 fis d g a
      %% Takt 5 ==============================================
      h8 c d e fis d g a
      h8 a h c d4 r8 d,,
      e fis g h c a d h
      e8 fis g a h c d d,
      e8 fis g h, c a d4
      %% Takt 10 =============================================
      g,2._\fermata
   }
}

\score {
   \new PianoStaff {
      \set PianoStaff.instrument = \markup { \large \center-align {
         "" "" "Manuale." "" "" "" "" "" "" "" "Pedale." } \hspace #1.3 }
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "church organ"
            \context Voice = right \right
         }
         \context Staff = left {
                  \set Staff.midiInstrument = "church organ"
                  \context Voice = left \left
         }
         \context Staff = pedal {
            \set Staff.midiInstrument = "contrabass"
            \context Voice = pedal \pedal
         }
      >>
   }
   \layout{}
   \midi{ \tempo 4 = 60 }
}
