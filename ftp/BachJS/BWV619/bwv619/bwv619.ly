\version "2.6.4"

\header {
 mutopiatitle = "Christe, du Lamm Gottes"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 619"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/12"

 title = "Christe, du Lamm Gottes"
 composer = "Johann Sebastian Bach"
 opus="BWV 619"

 footer = "Mutopia-2006/03/13-697"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key f \major
   \time 3/2
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

restup = {
   \once \override Rest #'extra-offset = #'( 5.0 . 0.0 )
}

sopran = {
   \new Voice \relative c'' {
      \global
      \halsup
      \once \override Rest #'extra-offset = #'( 7.0 . 0.0 ) g'1*3/2\rest
      \once \override Rest #'extra-offset = #'( 7.0 . 0.0 ) g1*3/2\rest
      \once \override Rest #'extra-offset = #'( 7.0 . 0.0 ) g1*3/2\rest
      \once \override Rest #'extra-offset = #'( 7.0 . 0.0 ) g1*3/2\rest
      %% Takt 5 ==============================================
      c,1 d2
      e1 e2
      f1.
      e1 r2
      e1 d2
      %% Takt 10 =============================================
      e1 f2
      g1 f2
      e1 r2
      e2 d c
      e1.
      %% Takt 15 =============================================
      d1.~
      d1.
   }
}

alt = {
   \new Voice \relative f'' {
      \global
      \halsdown
      r4 f e d c b
      a4 d c b a g
      f2 c'1~
      c4 f e d c b
      %% Takt 5 =============================================
      a4 e f g a2
      r4 f g a b2
      r4 a h cis d2
      r4 a' g f e d
      c1 gis2
      %% Takt 10 =============================================
      r4 a h cis d2
      e2 cis d
      cis4 e, f g a h
      c2 h a
      h4 d g,2 c~
      %% Takt 15 =============================================
      \once \override NoteColumn #'force-hshift = #0.6 c4 c h a g fis
      g1.
   }
}

tenor = {
   \new Voice \relative f' {
      \global
      \halsup
      \once \override Rest #'extra-offset = #'( 7.0 . 0.0 ) f,1*3/2\rest
      a4\rest f' e d c b
      a4 d c b a g
      f4 d'\rest d2\rest d2\rest
      %% Takt 5 ==============================================
      r4 c d e f2
      r4 d e f g2
      cis,2 d4 e f g
      a2 d,2\rest d2\rest
      r4 a' g f e d
      %% Takt 10 =============================================
      c2 e d
      r4 cis d e f g
      a2 r r
      r4 h, c d e fis
      g4 f e d c2
      %% Takt 15 =============================================
      g'4 e d c h a
      h1.
   }
}

bass = {
   \new Voice \relative f {
      \global
      \halsdown
      \once \override Rest #'extra-offset = #'( 7.0 . 0.0 ) b,1*3/2\rest
      \once \override Rest #'extra-offset = #'( 7.0 . 0.0 ) b1*3/2\rest
      \once \override Rest #'extra-offset = #'( 7.0 . 0.0 ) b1*3/2\rest
      f'1 g2
      %% Takt 5 ==============================================
      a1 a2
      b1.
      a1 r2
      a1 g2
      a1 h2
      %% Takt 10 =============================================
      c1 b2
      a1 r2
      a2 g f
      a1.
      g1.~
      %% Takt 15 =============================================
      g1.~
      g1.
   }
}

right = {
   \clef treble
   <<
   \sopran
   \alt
   >>
}

left = {
   \clef bass
   <<
   \tenor
   \bass
   >>
}

pedal = {
   \global
   \clef "bass_8"
   \relative f,, {
      f1.~
      f1.~
      f4 f' e d c b
      a4 d c b a g
      %% Takt 5 =============================================
      f4 b' a g f d
      g,4 c' b a g e
      a,4 a' g f e d
      cis2 d b
      a1 r2
      %% Takt 10 =============================================
      r4 a' g f e d
      cis4 a g f e d
      a'1 r2
      R1*3/2
      r4 h c d e fis
      %% Takt 15 =============================================
      g1.
      g,1. \bar "|."
   }
}

\score {
   \new PianoStaff {
      \set PianoStaff.instrument = \markup { \large \center-align { "a" "" "" "2 Clav." "" "" "e" "" "" "Pedale." } \hspace #1.3 }
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
   \midi{ \tempo 2 = 64 }
}
