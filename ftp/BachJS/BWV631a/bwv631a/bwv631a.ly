\version "2.10.33"

\header {
 mutopiatitle = "Komm Gott Schöpfer, Heiliger Geist"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 631a"
 mutopiainstrument = "Organ"
 date = "1714"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/24"

 title = "Komm Gott Schöpfer, Heiliger Geist"
 composer = "Johann Sebastian Bach"
 opus="BWV 631a"
 footer = "Mutopia-2007/11/25-1164"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key c \major
   \time 12/8
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   head-separation = 0.6 \cm
   foot-separation = 0.2 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative g' {
      \global
      \halsup
      \partial 8*3 \compressMusic #'( 3 . 2 ) { g4
         a4 g f g
         c4 d c\fermata c
         g4 a8 h c4 d
         e4 e d\fermata d
         %% Takt  5 ==================================================
         e4 c a g
         h4 cis d\fermata g,
         c4 a f a
         g2 g4\fermata \bar "|."
      }
   }
}

alt = {
   \new Voice \relative cis' {
      \global
      \halsdown \dotsDown
      \partial 8*3 r8 d16 c d8
      e8 c f d h e c d16 c d8 h e16 d e8~
      e8 f16 g a g f8 d g \compressMusic #'( 3 . 2 ) { e4 } r8 g16 f g8
      d8 h e c f16 e f8 g a16 g f e d8 g16 f g8~
      g8 e g c16 h a g a fis~ fis8 g16 fis g a h a g fis! g8~
      %% Takt  5 ==================================================
      g8 g c g e g~ g f!16_\prall e f8~ f e16 d e8
      d8 g16 fis g8~ g g16 fis g8~ g f16 e f8~ f e16 d e8~
      e8 c f~ f e16 d e8~ e d16 cis d e f g f e d c
      h!16 d g,8 c16 d e d \appoggiatura d8 e8. f16 \appoggiatura e16 d4.
   }
}

tenor = {
   \new Voice \relative d' {
      \global
      \partial 8*3 r8 h16 a h8
      c8 a d h g c a h16 a h8 g c16 h c8
      a16 g a h c8~ c h16\prall a h8 c8\mordent g16 f g8 c,8 e'16 d e8
      h8 g c f, d'16 c d8 e\mordent e, a f d g
      c,16 e g f e d e8 c c'~ c h16~\prall a h8 g h16 a h g
      %% Takt  5 ==================================================
      c,8 c'16 h c8 e, c'16 h c8 f, a d h g c
      g16 a h c d h e g, a b a g a8 d, d' h g c
      c,16 e f g a b c d c b a8~ a16 d, f a b!8 a16 cis, d e f8~
      f8 e16 d e f g8 c, c'~\mordent c \tempo 4 = 50 h16\prall a \tempo 4 = 12 h8
   }
}

right = {
   \clef "treble"
   <<
      \alt
      \sopran
   >>
}

left = {
   \clef "bass"
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative g {
      \partial 8*3 r8 r g
      r r f r r e r r d r r e
      r r f r r g c,4._\fermata r8 r c
      r r e r r d r r c r r h
      r r c r r c, g'4._\fermata r8 r g
      %% Takt  5 ==================================================
      r r c r r e r r f r r g
      r r g, r r e d4._\fermata r8 r e
      r r a r r cis r r d r r a
      r r c! r r e g4._\fermata
   }
}


\score {
   <<
      \new PianoStaff {
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
         \context Voice = pedal \pedal
      }
   >>

   \layout{
      \context {
         \PianoStaff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
      \context {
         \Staff      \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 3.5)
      }
      indent = 1.0\cm
   }
}

\score {
   \unfoldRepeats {
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "church organ"
            \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "church organ"
            \left
         }
         \new Staff {
            \set Staff.midiInstrument = "church organ"
            \transpose g g, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 76 4)
      }
   }
}
