\version "2.8.0"

\header {
   mutopiatitle = "Nun freut euch, lieben Christen g'mein"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 734"
   mutopiainstrument = "Organ"
   date = ""
   source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2006/Mar/31"

   title = \markup { \center-align { "Nun freut euch, lieben Christen g'mein"
                                     \normalsize "oder: Es ist gewisslich an der Zeit" } }
   subtitle = "a 2 Clav. e Pedale"
   composer = "Johann Sebastian Bach"
   opus="BWV 734"

   footer = "Mutopia-2006/04/02-717"
   tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } ‚Ä¢ \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

right = {
   \new Voice \relative g' {
      \global
      \clef treble
      \partial 4 g16 fis g a
      \repeat volta 2 {
         h d c h a g a h c e d c h a h c
         d g fis e d c h a h c h a g fis g a
         h g a h c d e fis g h, a g d' cis d e
         fis a g fis e dis e fis g h a g c! fis, g h
         %% Takt  5 ==================================================
         e, a g fis e d e g fis g fis e d c h a
         g a h c d c d e f a g f e d e fis
         g h a g fis e fis g a d, cis h a g fis e
         fis g fis e d cis d e fis d e fis g a h c!
         d e d c h a h c d g fis e d c h a
         %% Takt 10 ==================================================
         g a h c d c d e f a g f e dis e fis
         g h a g a g fis e d a' g fis g fis e d
         e f e d e d c h c e d c d c h a
         h c h a h a g fis g a g fis g f e d
      }
      \alternative {
         {
            e f e d e d c h c e d c d c h a
            %% Takt 15 ==================================================
            h g a h c d e fis g d e fis g fis g a
         }
         {
            \set Score.currentBarNumber = #14
            e f e d e d c h c e d c d c h a
            %% Takt 15 ==================================================
            h8 g' fis a,~ a16 h cis dis e dis e fis
         }
      }
      g h a g fis e fis g a c h a g fis g a
      h e d c h a g fis g a g fis e dis e fis
      g h a g fis e fis g a h cis dis e dis e fis
      g h a g fis e fis g a c h a g fis g a
      %% Takt 20 ==================================================
      h g fis e d c h a g a h a g fis e d!
      cis d h cis d cis d e fis a g fis e d cis fis
      g h a g fis e fis g a d cis h a g fis e
      fis g fis e d cis d e fis a g fis e dis e fis
      g h a g fis e fis g a c h a g fis g a
      %% Takt 25 ==================================================
      h d, e fis g fis g a h d c h a g a h
      c e d c h a h c d g fis e d c h a
      g a h c d c d e f a g f e d e fis
      g h a g fis e fis g a c h a g fis g a
      h e, d! c! h a g fis e g' fis e d c h a
      %% Takt 30 ==================================================
      g fis g a h d c h a g a h c e d c
      h a h c d g fis e d c h a g fis e d
      e d e fis g h a g fis e fis g a c! h a
      h g a h c d e f g a g f g f e d
      e f e d e d c h c e d c d c h a
      %% Takt 35 ==================================================
      h c h a h a g fis g a g fis g f e d
      e f e d e d c h c e d c d c h a
      h c h a h a g fis! g4
   }
}

left = {
   \new Voice \relative h, {
      \global
      \clef bass
      \partial 4 h8 d
      \repeat volta 2 {
         g,8 g' d fis a, a' e g
         h,8 c d d, g d' h d
         g,8 g'4 fis8~ fis e d cis
         d8 h cis dis e fis e d
         %% Takt  5 ==================================================
         c8 a h c d e fis d
         g8 a16 g f8 e d g c, d
         e8 cis' d h fis g a a,
         d8 a fis a d, c'! h a
         h8 d g, a h e fis d
         %% Takt 10 ==================================================
         g8 g f e a a g fis
         h8 e, fis d g d e h
         c8 h c a fis'! e fis d
         g8 d g, a h d h g
      }
      \alternative {
         {
            c8 h c d e a fis d
            %% Takt 15 ==================================================
            g8 c, h a h a g fis
         }
         {
            c'8 g c, d e a fis d
            %% Takt 15 ==================================================
            g16 a h c d c d e fis8 a g fis
         }
      }
      e8 e, h' e dis h e c
      g8 a h dis e fis g fis
      e8 cis dis e fis h, cis dis
      e8 h e4. d!16 c h8 a
      %% Takt 20 ==================================================
      g8 g'4 fis8~ fis dis e g~
      g8 fis16 e fis8 cis d a cis a
      e'8 a, d h fis g a cis
      d,8 a' fis a d h cis dis
      e8 h e4. d!16 c h8 a
      %% Takt 25 ==================================================
      g8 c h a g e fis d
      e'8 c d h fis' d e f~
      f8 g f e d g c, d
      e8 cis dis e fis dis e fis
      g a h h, e c! fis d!
      %% Takt 30 ==================================================
      g8 d g4~ g8 fis16 g a4~
      a8 g4 a16 fis g8 d e h
      c8 a h cis d e fis d
      g8 f e c h d h g
      c8 h c d e a, h c
      %% Takt 35 ==================================================
      d8 g, c a h d h g
      c8 g c d e f16 e d e c8
      g2~ g4
   }
}

pedal = {
   \new Voice \relative g {
      \global
      \clef bass
      \partial 4 r4
      \repeat volta 2 {
         R1
         r2 g
         g4 a h2
         a2 g
         %% Takt  5 ==================================================
         a2 a
         h1~
         h8 r r4 r2
         R1
         r2 g4 a
         %% Takt 10 ==================================================
         h2 c
         d4 c h2
         a1
         g1~
      }
      \alternative {
         {
            g4 r r2
            %% Takt 15 ==================================================
            R1
         }
         {
            g4 r r2
            %% Takt 15 ==================================================
            R1
         }
      }
      R1
      r2 h
      h2 a
      g2 fis
      %% Takt 20 ==================================================
      g4 a h2
      a1~
      a4 r r2
      r2 a
      g2 fis
      %% Takt 25 ==================================================
      g2 d
      g2 a
      h1~
      h4 r r2
      r2 g4 a
      %% Takt 30 ==================================================
      h2 c
      d4 c h2
      a1
      g1~
      g1~
      %% Takt 35 ==================================================
      g1~
      g1~
      g16 e d c d c h a h4
      \bar "|."
   }
}

\score {
   <<
      \new PianoStaff \with {
         \override VerticalAlignment #'forced-distance = #9
      }
      {
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
   \unfoldRepeats {
      <<
         \new Staff = right {
            \set Staff.midiInstrument = "pan flute"
            \right
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d d' \right
         }
         \new Staff =left {
            \set Staff.midiInstrument = "pan flute"
            \left
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d d, \left
         }
         \new Staff {
            \set Staff.midiInstrument = "bassoon"
            \pedal
         }
      >>
   }
   \midi{ \tempo 4 = 98 }
}