\version "2.10.33"

\header {
 mutopiatitle = "Es ist das Heil uns kommen her"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 638"
 mutopiainstrument = "Organ"
 date = "1714"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Dec/01"

 title = "Es ist das Heil uns kommen her"
 composer = "Johann Sebastian Bach"
 opus="BWV 638"
 footer = "Mutopia-2007/12/01-709"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key d \major
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

#(set-default-paper-size "a4" 'landscape)

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative a' {
      \global
      \halsup
      \partial 4 a4
      \repeat volta 2 {
         a4 a a8. h16 c4
         h4 a g\fermata a8. g16
         fis8. e16 d8. e16 fis4 gis
      }
      \alternative {
         {
            a4 h a\fermata a
         }
         {
            \set Score.currentBarNumber = #4
            a4 h a\fermata a
         }
      }
      %% Takt 5 ==============================================
      d8 e16 d cis4 h cis
      d8. cis16 h4 a\fermata a
      d4 a h8 a16 g fis g fis g
      a4 g fis\fermata d
      e8 fis g4 fis e
      %% Takt 10 =============================================
      \shifttieupp
      d4~ d8 cis d4\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative g' {
      \global
      \halsdown \dotsDown
      \partial 4 c,4\rest
      \repeat volta 2 {
         c4\rest e16\rest g fis e d fis e d g8 d~
         d8 g4 fis8 g4 e16\rest fis e d
         cis16 d cis8~ cis16 \staffdown h a g fis \staffup e' d cis h d cis h
      }
      \alternative {
         {
            a16 gis' fis e d fis e d cis4 cis4\rest
         }
         {
            a16 gis'! fis e d fis e d cis4 e16\rest g fis e
         }
      }
      %% Takt 5 ==============================================
      d16 a' gis fis e4~ e16 fis e d cis e fis g
      a16 h a g fis8 e16 d cis4 d8. e16
      fis16 h a g fis g fis e d2
      dis16 fis e dis e8 \staffdown ais, h4 h
      h8 a g[ a~] a[ \staffup d8]~ d8. cis16
      %% Takt 10 =============================================
      d16 e d c \staffdown h8 a a4
   }
}

tenor = {
   \new Voice \relative a' {
      \global
      \partial 4 r16 g fis e
      \repeat volta 2 {
         d16 fis e d cis h a g fis a g fis g c h a
         g16 a g fis e e' d c h d h g r d' cis h
         a16 h a g fis g fis e d8 fis~ fis[ e~]
      }
      \alternative {
         \relative e {
            e8 a4 gis8 a16 h a g fis g' fis e
         }
         \relative e {
            e8 a4 gis8 a16 h a g fis8 g
         }
      }
      %% Takt 5 ==============================================
      a8 h r16 cis h a gis a gis fis e g fis e
      d8 a'~ a16 a gis8 a16 h a g fis g fis e
      d4~ d16 e' d c h d c h a h a g
      fis16 a g fis e g fis e dis e d e fis a g fis
      e16 fis e d \stemDown cis e d cis d fis g a h a h cis
      %% Takt 10 =============================================
      fis,16 g \halsdown a8~ \tempo 4 = 48 a16 e fis \tempo 4 = 34 g \tempo 4 = 18 fis4
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
   #(override-auto-beam-setting '(end * * * *) 1 4)
   #(override-auto-beam-setting '(end * * * *) 2 4)
   #(override-auto-beam-setting '(end * * * *) 3 4)
   #(override-auto-beam-setting '(end * * * *) 4 4)
   \relative d {
      \partial 4 d8 e
      \repeat volta 2 {
         fis8 g a a, d d, e' fis
         g8 h, c d g,4_\fermata fis8 g
         a8 fis h cis d h e d
      }
      \alternative {
         {
            cis8 d h e a,4 d8 e
         }
         {
            cis8 d h e a,4 d8 e
         }
      }
      %% Takt 5 ==============================================
      fis8 gis a a, e' e, a g!
      fis8 e d e a4_\fermata d8 cis
      h8 cis d d, g4 d'8 e
      fis8 h, e e, h'4_\fermata h8 a
      g8 fis e a d, d' g, a
      %% Takt 10 =============================================
      h8 fis g a d,4_\fermata
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
            \set Staff.midiInstrument = "church organ"
            \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "church organ"
            \left
         }
         \new Staff {
            \set Staff.midiInstrument = "church organ"
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 62 4)
      }
   }
}
