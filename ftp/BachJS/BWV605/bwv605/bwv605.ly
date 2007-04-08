\version "2.8.2"

\header {
   mutopiatitle = "Der Tag der ist so freudenreich"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 605"
   mutopiainstrument = "Organ"
   source = " Peters 8660 & Autograph"
   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2006/May/26"

    title = \markup {
         \center-align {
            \fontsize #0 "Der Tag der ist so freudenreich"
            \fontsize #-2 "á 2 Clav. & Ped"
         }
   }
   composer = "Johann Sebastian Bach"
   opus="BWV 605"
 footer = "Mutopia-2006/06/05-773"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
   \time 4/4
   #(set-accidental-style 'default)
   #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsdown = { \stemDown \tieDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral }
halsup = { \stemUp \tieUp }
staffdown = { \change Staff = "left" \halsup }
staffup = { \change Staff = "right" \halsdown }

sopran = {
   \new Voice \relative g' {
      \global
      \halsup
      \repeat volta 2 {
         g2 g4 g
         a4 h c8 h a4
         g2\fermata h                  \break
         a4 g8. f16 e4 fis
         %% Takt  5 ==================================================
         g4 a g2
      }
      g2 d'4 d
      e4 d8. c16 h4 cis                \break
      d2\fermata d
      d4 d e d8 c
      %% Takt 10 ==================================================
      h4 a g2\fermata
      g2 e4 fis                        \break
      g4 e d e
      d2\fermata g4 g
      a4 h c a
      %% Takt 15 ==================================================
      g2\fermata a4 g8. f16            \break
      e4 fis! g e
      d2\fermata f2
      e4 c8. d16 e4 fis!
      g4 a g2\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative d' {
      \global
      \halsdown
      \repeat volta 2 {
         c16\rest d32 c d8~ d16 c d8 c16\rest e32 d e8 c16\rest e d8
         c16\rest fis32 e fis8 e16\rest fis g8 e16\rest g32 fis g8~ g16 g fis8
         c16\rest d32 c d8~d16 d c8 c16\rest c32 h c8 c16\rest d e8
         c16\rest d32 c d8 c16\rest c h8 a16\rest c32 h c8 a16\rest h c8
         %% Takt  5 ==================================================
         c16\rest h32 a h8 e d16 c h32 c d16 c32 d e16 d16 g32 fis g16 d
      }
      c8\rest d c16\rest h d8 e16\rest g32 fis g8~ g16 d g8
      g16\rest g32 fis g8 g16\rest g16 fis8 c16\rest d32 cis d8 \staffdown e16\rest a, g8
      s4 a8 \staffup d16 e e16\rest fis32 e fis8 g16\rest g a8
      g16\rest h32 a h8 g16\rest a h8 g16\rest a32 g a8 g16\rest g16 a8
      %% Takt 10 ==================================================
      e16\rest g32 fis g8~ g16 g fis8 c16\rest d32 c d8 c16\rest h d8
      c16\rest d32 c d8 \staffdown e16\rest a, h8 e16\rest a,32 g a8 e'16\rest a, h8
      c16\rest h32 a h8 c16\rest h cis8 e16\rest a,32 g a8 h a16 g
      fis16 a32 g a16 fis c'16\rest fis, g8 \staffup c16\rest d32 c! \tieDashed d8~ d16 \tieSolid g, c8
      c16\rest c32 h c8 c16\rest h e8 e16\rest e32 d e8~ e16 e d c
      %% Takt 15 ==================================================
      c16\rest h32 a h8 c16\rest d cis8 c16\rest d32 cis d8 c16\rest c h8
      a16\rest c32 h c8~ c16 h c8 c16\rest d32 cis d8~ d16 d cis8
      a16\rest a32 g a8 a16\rest h cis8 c16\rest d32 cis d8 c16\rest h16 d8
      a16\rest c!32 h c8 f,16\rest g c8 a16\rest c32 h c8~ c16 h c8
      c16\rest h32 a h8 e d16 c h c32 h c8~ c16 c h8_\fermata
   }
}

tenor = {
   \new Voice \relative h {
      \global
      \repeat volta 2 {
         h8. a16 h8. a16 h8. h16 c8. g16
         c8. c16 h8. h16 a8. h16 c8. c16
         h8. f16 e8. fis16 g8. fis16 g8. g16
         fis8. fis16 g4 g8. g16 a8. a16
         %% Takt  5 ==================================================
         g8. g16~ g g fis8 g8 a h4
      }
      h16 d32 c d16 h g8. a16 h8. d16 h8. h16
      c8. h16 a4~ a8. g16 \dotsDown fis8. e16 \dotsNeutral
      d16 fis32 e fis16 d d\rest fis8 g16 a8. a16 h8. c16
      d8. d16 g8. f16 e8. e16 fis8. e16
      %% Takt 10 ==================================================
      d8. d16 e8 d16 c h8. h16 g8. a16
      \dotsDown h8. a16 g8. fis16 g8. g16 fis8. fis16
      \halsdown e8. h16 e8. g16 fis8. d16~ d d cis8
      d4 d8. e16 \halsneutral \dotsNeutral f8. f16 e8. d16
      e8. fis16 g8. g16 a8. g16 fis4
      %% Takt 15 ==================================================
      g8. fis16 e8. e16 f8. e16 d8 g
      g8. g16 a8. a16 h8. h16 a8. g16
      fis8. fis16 g8. g16 a8. a16 g8. h16
      g8. g16 e8. f16 g8. g16 a8. a16
      d,8. g16~ g g fis8 f8. e16 d4_\fermata
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
   \relative g, {
      \repeat volta 2 {
         r8 g g' fis e d c h
         a4 e'8 d c4 d
         g,2_\fermata g8 a h c
         d8 h e d c h a d
         %% Takt  5 ==================================================
         g,8 e' c d g,2
      }
      g2 g'8 f e d
      c4 d g, a
      d,2 d'8 c h a
      g f e d c4 d
      %% Takt 10 ==================================================
      g8 h c d g,2_\fermata
      g'8 fis e d cis4 dis
      e8 e, g a h fis g a
      d,2 h'8 g c h
      a4 e'8 d c a d d,
      %% Takt 15 ==================================================
      g2 d'8 c! h g
      c8 h a d g, e a4
      d,2~ d8 d' h g
      c8 d e d c h a d
      h8 g c, d g2_\fermata
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
   \unfoldRepeats {
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
            \set Staff.midiInstrument = "flute"
            \transpose c c, \pedal
         }
      >>
   }

   \midi{
      \tempo 4 = 54
   }
}
