\version "2.8.0"

\header {
 mutopiatitle = "Vater unser im Himmelreich"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 636"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/17"

 title = "Vater unser im Himmelreich"
 composer = "Johann Sebastian Bach"
 opus="BWV 636"

 footer = "Mutopia-2006/03/30-714"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key a \minor
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

sopran = {
   \new Voice \relative a' {
      \global
      \halsup
      \partial 4 a4
      a4 f g a
      f4 e d\fermata a'
      a4 h c a
      f4 g a\fermata a \break
      %% Takt 5 ==============================================
      c8 cis d e f4 e
      d4 cis d\fermata  d
      e4 d c h
      a4 h a\fermata d
      c4 h c8 b a4
      %% Takt 10 =============================================
      a4 g f\fermata a
      b4 a8 g f4 g
      f4 e d\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative a {
      \global
      \halsdown
      \partial 4 c4\rest
      c16\rest a e' cis d8 c d4 e8 g16 e~
      e16 cis a d~ d8 cis a16\rest a' e g f8 cis16 e
      d8 f~ f4 e16\rest c g' e f8 e~
      e8 es d c c4 c16\rest c f d
      %% Takt 5 ==============================================
      e8 g a g f a g b
      a8 f~ f16 a e g! fis4 g8 f
      e8 a~ a16 a d, f! e4 d8 f
      e4 e16\rest f h, d cis4 e16\rest d a' f
      e16 f g a d, g d f e8. g16 c, a e' cis
      %% Takt 10 =============================================
      d16 f c! es d f8 e!16 c16\rest a' e g fis8 d~
      d16 d g e cis8. e16 d4 c16\rest e h! d
      cis16 a d8~ d cis a4
   }
}

tenor = {
   \new Voice \relative a {
      \global
      \partial 4 r16 a e g
      f8 g16 a d,8 f~ f4 r16 a, e' cis
      d4 r16 b' e, g f4 r16 a e g
      f16 d a' f g4~ g8 e~ e16 f cis e
      d8 f~ f16 g c, e! f c a' e f8 d
      %% Takt 5 ==============================================
      a'8 b r16 a e' cis d4~ d16 d g e
      f16 d gis, h! a4~ a16 d a c! h4~
      h16 a e g fis8 gis a4~ a16 a d h
      c16 a e g f a8 gis16 a4~ a16 a f d
      a'8 g~ g4~ g16 c, g' e f8 g
      %% Takt 10 =============================================
      f4~ f16 d' g, b a4~ a16 d a c!
      b16 g e g a,8 a'~ a4 g8 f
      e8 d16 b' e, g a, g' fis4\fermata
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
   \relative d {
         \partial 4 r4
         r4 r16 d a c h e h d cis8 a
         d8 f, g a d4 d,
         r4 r16 g' d f e8 c f, a
         d,16 d' a c b8 c f,4 r
         %% Takt 5 ==============================================
         r16 a' e g f8 e r16 d a c! b8 g
         a2 d,4 r16 g d' h
         c4. h8 c16 a' e g! f8 d
         e8 c d e a,16 a' e g! f8 d
         r16 a e' c g'8 g, c4 r16 f cis e
         %% Takt 10 =============================================
         d8 a b c f,8 cis' d fis,
         g4 r16 a e' cis d d a c b8 g
         a8 b g a d,4_\fermata
   }
}

\score {
   <<
      \new PianoStaff {
         \set PianoStaff.instrument = \markup { \large "Manuale." }
         <<
            \context Staff = right {
               \context Voice = right \right
            }
            \context Staff = left {
                     \context Voice = left \left
            }
         >>
      }
      \context Staff = pedal {
         \set Staff.instrument = \markup { \large "Pedale." \hspace #1.8 }
         \context Voice = pedal \pedal
      }
   >>
   \layout{}
}

\score {
   <<
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \right
      }
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \left
      }
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "contrabass"
         \transpose d d, \pedal
      }
   >>
   \midi{ \tempo 4 = 62 }
}