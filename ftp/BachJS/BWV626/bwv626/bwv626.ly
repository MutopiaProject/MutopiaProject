\version "2.10.33"

\header {
 mutopiatitle = "Jesus Christus, unser Heiland"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 626"
 mutopiainstrument = "Organ"
 date = "1714"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/8"

 title = "Jesus Christus, unser Heiland"
 composer = "Johann Sebastian Bach"
 opus="BWV 626"
 footer = "Mutopia-2007/11/10-1134"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key a \minor
   \time 12/8
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
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
   \new Voice \relative a' {
      \global
      \halsup \dotsUp
      a4. a g a
      h4. a g fis!
      e4.\fermata g a h
      a4. gis a\fermata d
      %% Takt  5 ==================================================
      \times 4/3 a8. \times 2/1 h16 c4. h a
      h4.\fermata a a a
      h4. a g fis
      e4.\fermata g a h
      a4. gis a2.\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative cis' {
      \global
      \halsdown
      \once \override MultiMeasureRest #'staff-position = #-4 R1.
      r8 d g~ g fis e dis h e~ e4 dis!8
      e4. \dotsDown e~ e8 c f!~ f e d
      c4. h a8 c f~ f e d
      %% Takt  5 ==================================================
      c4 e8~ e a g! f h, e~ e e dis
      e4. cis d! d
      r8 d g~ g fis e dis h e~ e4 dis!8
      \dotsUp e4. \dotsDown e d!~ d8 e f!
      e8 c f~ f e d cis a d~ d4 \once \override Script #'extra-offset = #'(0 . -3.1) cis8\fermata
   }
}

tenor = {
   \new Voice \relative d' {
      \global
      \times 3/2 r2 r8 h e~ e d c
      h4. c h8 g c~ c h a
      g4. c~ c8 a d~ d c h
      c8 c, f~ f e d c e a~ a g! f
      %% Takt  5 ==================================================
      e4 h'8 a4.~ a4 gis8 a gis a~
      a8 fis gis g fis\prall e f4. fis
      g4 e8 c'4. h8 g c~ c h a
      g8 e b'~ b a g fis4 a8 gis4.
      a4 d8~ d c h a \tempo 8 = 120 g! f e \tempo 8 = 100 a, \tempo 8 = 20 a'\fermata
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
   \relative a, {
      r8 a c~ c h a e'4. fis
      g4. a h4 a8 h4 h,8
      e8 e, e'~ e d c f!4 d8 g4 gis8
      a4 d,8 e4 e,8 a4. h
      %% Takt  5 ==================================================
      c8 a g'~ g f e d4 e8 f4 fis8
      e4. a, r8 d, c'!~ c h a
      g4. a h4 a8 h4.
      e,4. c'~ c8 a f'!~ f e d
      c4 d8 e4 e,8 \once \override Script #'extra-offset = #'(0 . -0.5) a2._\fermata
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
      indent = 1.0\cm
   }
}

\score {
   \unfoldRepeats {
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "pan flute"
            \right
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d' d'' \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "pan flute"
            \left
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d' d'' \left
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d d, \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 144 8)
      }
   }
}
