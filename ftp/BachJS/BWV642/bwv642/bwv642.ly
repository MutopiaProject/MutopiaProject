\version "2.12.3"

\header {
 mutopiatitle = "Wer nur den lieben Gott lässt walten"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 642"
 mutopiainstrument = "Organ"
 date = "1714"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Dec/02"

 title = "Wer nur den lieben Gott lässt walten"
 composer = "Johann Sebastian Bach"
 opus="BWV 642"
 footer = "Mutopia-2013/06/16-1183"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key a \minor
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
   #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
   #(override-auto-beam-setting '(end * * * *) 1 4)
   #(override-auto-beam-setting '(end * * * *) 2 4)
   #(override-auto-beam-setting '(end * * * *) 3 4)
   #(override-auto-beam-setting '(end * * * *) 4 4)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

\paper {
   head-separation = 0.6 \cm
   foot-separation = 0.2 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
}

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative e' {
      \global
      \halsup
      \partial 4 e4
      \repeat volta 2 {
         a4 h c h
         a4 h8 a gis4 e~
         e4 g! g f
         e4 a a gis
      }
      %% Takt  5 ==================================================
      \alternative {
         {
            a2. e4
         }
         {
            \set Score.currentBarNumber = #5
            a2. h4
         }
      }
      c4 d e e
      d4. d8 c2~
      c4 e d c
      h4 a8 h c4 h
      %% Takt 10 ==================================================
      a2.\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative gis {
      \global
      \staffdown
      \partial 4 a16\rest gis 32 a h16 a32 h
      \repeat volta 2 {
         \staffup c8 e f e~ e a16 g! f!16 e32 f g16 f32 g
         e16 d32 e f8~ f4~ f16 h,32 c! d16 c32 d e8 c~
         c16 \staffdown a32 h c16 d32 c h8. a32 h c16 a32 h c16 h32 c d16 h32 c \staffup d16 c32 d
         e8 c~ c16 c32 d e16 d32 e f16 h,32 c d16 c32 d e4~
      }
      %% Takt  5 ==================================================
      \alternative {
         {
            e16 cis32 d e16 f32 e d16 h32 cis d16 e32 d cis!16 \staffdown a32 h c!16 h32 a a16\rest gis 32 a h16 a32 h
         }
         {
            \staffup e16 cis32 d e16 f32 e d16 h32 cis d16 e32 d cis!8 c h16 e32 fis gis16 fis32 gis
         }
      }
      a8 g!~ g16 a f g e g32 a h16 a32 h c4~
      c4 h16 a g f e e32 f g16 f32 g a8 f
      e4 e16\rest e32 f g16 f32 g a16 g32 a h16 a32 h c16 c,32 d e16 d32 e
      f!16 e32 f g!16 f32 g a8 f e a~ a gis
      %% Takt 10 ==================================================
      a16 cis,32 d e16 d32 e f16 h,32 cis! d16 e32 d cis4_\fermata
   }
}

tenor = {
   \new Voice \relative e {
      \global
      \partial 4 h16\rest e32 fis gis!16 fis32 gis
      \repeat volta 2 {
         a4. gis8 r16 a32 h c16 h32 c d16 c32 d e16 d32 e
         cis16 h32 cis d8~ d4~ d16 gis,32 a h16 a32 h c8 a~
         a16 fis32 gis a16 h32 a g16 e32 f g16 f32 g a16 f32 g a16 g32 a h16 g32 a h16 a32 h
         c16 c,32 d e16 d32 e f16 a,32 h c16 h32 c d4~ d16 h32 c d16 e32 d
      }
      %% Takt  5 ==================================================
      \alternative {
         {
            cis16 e32 f g!16 a32 g f16 d32 e f16 g32 f e4 h16\rest e32 fis gis!16 fis32 gis
         }
         {
            cis,16 e32 f g!16 a32 g f16 d32 e f16 g32 f e16 fis32 gis a16 h32 a gis8 e~
         }
      }
      e16 e32 f! g!16 f32 g a16 g32 a h16 a32 h c4 \clef "treble" r16 e32 f g16 f32 g
      a16 d,32 e f16 e32 f \stemDown g16 \clef "bass" g,32 a h16 a32 h \stemNeutral c4. a8
      g16 g32 a h16 a32 h c16 c,32 d e16 d32 e fis16 e32 fis gis16 fis32 gis a16 a,32 h c16 h32 c
      d16 c32 d e16 d32 e f!8 a gis16 a32 h c16 h32 c d16 c32 d e16 d32 e
      %% Takt 10 ==================================================
      cis16 a32 h cis16 h32 cis d16 \tempo 4 = 44 d,32 e f16 \tempo 4 = 36 g32 f \tempo 4 = 16 e4\fermata
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
      \partial 4 r4
      \repeat volta 2 {
         r16 a c a d h e d32 e a,8 a'4 g!8~
         g8 f16 e32 f d16 f h, d32 h e4 r16 a, c a
         e'8 e,~ e e'~ e e, d d'
         c8 a f f' d h e, e'
      }
      %% Takt  5 ==================================================
      \alternative {
         {
            a,2. r4
         }
         {
            a2. r8 e'
         }
      }
      a8 e f g c, g a e
      f8 d g g' a e f16 a, h a32h
      c,4 r8 c'~ c h a a'~
      a8 g! f!16 f e f32 d e8 d, e4
      %% Takt 10 ==================================================
      a2._\fermata
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
            \set Staff.midiInstrument = "trombone"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 50 4)
      }
   }
}
