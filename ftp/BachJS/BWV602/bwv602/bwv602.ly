\version "2.8.2"

\header {
   mutopiatitle = "Lob sey dem allmächtigen Gott"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 602"
   mutopiainstrument = "Organ"
   source = "Autograph"
   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2006/May/23"

   title = "Lob sey dem allmächtigen Gott"
   composer = "Johann Sebastian Bach"
   opus="BWV 602"
 footer = "Mutopia-2006/05/25-771"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key f \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup = { \stemUp \tieUp }
halsdown = { \stemDown \tieDown }

sopran = {
   \new Voice \relative f' {
      \global
      \halsup
      \partial 4 f4
      a4 h c c
      d4 b! c\fermata c
      d4 b c b
      a4 g a\fermata c
      %% Takt  5 ==================================================
      b4 a b g
      a4 g f\fermata f
      a4 b c b
      a4 g a2~\fermata
      a2. \bar "|."
   }
}

alt = {
   \new Voice \relative c' {
      \global
      \halsdown
      \partial 4 a4\rest
      c16\rest c f g32 e d16 e d e c e a b32 g f4~
      f16 g f g32 e d8 f~ f16 f e f32 d e16 f e f
      d16 f b c32 a g16[ a32 f e16 f32 d] c8[ a'] d,[ g]
      c,16\rest c f g32 e d16[ e32 d c16 d32 b] a8 c c16\rest c f g32 es
      %% Takt  5 ==================================================
      d16 b c es32 d es16 f es f d c b d32 c d16 e d e
      cis16 h cis e32 d e4 f16 d c d32b a8 d
      c16 d c f d e d e c8[ f]~ f[ e]
      f8 d~ d16[ e32 d cis16 e32 d] e4. e8
      f8 g a16 d cis e32 d \once \override Script #'extra-offset = #'(0 . 0.8) e4\fermata
   }
}

tenor = {
   \new Voice \relative b {
      \global
      \partial 4 r16 b a b32 g
      f16 a d e32 c g'8 g,~ g16 g c d32 b a4~
      a16 b a b32 g f16 g f g a8 g16 a32 f g8 a~
      a16 a g a32 f g4~ g8 f~ f[ e]
      f4. e8 r16 c f a32 g a4~
      %% Takt  5 ==================================================
      a16 g a c32 b c16 d c d g, d g b32 a b16 c b c
      a16 g a cis32 h cis16 d h cis d b a b32 g f8 b
      e,8[ a]~ a[ g]~ g[ f] g4
      c,16 f g b32 a b4 a8 h cis4
      d8 e f16[ g32 f e16 f32 d] cis4_\fermata
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
   \clef "bass"
   \relative f, {
      \partial 4 r8 f
      f'4~ f16 g f g e4~ e16 f e f
      d4~ d16 e d e c4~ c16 d c d
      b4~ b16 c b c a b a b g a g a
      f8 a b c f,4. d'8
      %% Takt  5 ==================================================
      g4~ g16 a g a f4~ f16 g f g
      e4~ e16 f e f d4~ d16 e d e
      c16 d c d b c b c a b a b g a g a
      f8 f' e d cis16 d h cis a b g a
      f16 g e f d8 d' \once \override Script #'extra-offset = #'(0 . -0.8) a4_\fermata
   }
}

\score {
   <<
      \new PianoStaff
      {
         \set PianoStaff.instrument = \markup { \large "Manual" }
         <<
            \new Staff = right { \right }
            \new Staff = left { \left }
         >>
      }
      \new Staff {
         \set Staff.instrument = \markup { \large "Pedal" \hspace #1.8 }
         \pedal
      }
   >>
   \layout { }
}


\score {
   <<
      \new Staff = right {
         \set Staff.midiInstrument = "pan flute"
         \right
      }
      \new Staff = right {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \right
      }

      \new Staff = left {
         \set Staff.midiInstrument = "pan flute"
         \left
      }
      \new Staff = left {
         \set Staff.midiInstrument = "pan flute"
         \transpose c c' \left
      }

      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c, \pedal
      }
   >>

   \midi{
      \tempo 4 = 54
   }
}
