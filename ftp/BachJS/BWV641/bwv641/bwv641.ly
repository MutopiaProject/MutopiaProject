\version "2.10.33"

\header {
 mutopiatitle = "Wenn wir in höchsten Nöten sein"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 641"
 mutopiainstrument = "Organ"
 date = "1714"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Dec/01"

 title = "Wenn wir in höchsten Nöten sein"
 subtitle = \markup { "Wenn Wir in höchsten Nöthen seyn . à 2 Clav & Ped" }
 composer = "Johann Sebastian Bach"
 opus="BWV 641"
 footer = "Mutopia-2007/12/02-1174"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
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

\paper {
   head-separation = 0.6 \cm
   foot-separation = 0.2 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
%#(set-global-staff-size 18)
#(define set-script-property (lambda (script property value)
   (append! (cdr (assoc script default-script-alist))
      (list (cons property value)))))
#(set-script-property "mordent"    'avoid-slur 'outside)
#(set-script-property "prall"      'avoid-slur 'outside)
#(set-script-property "prallprall" 'avoid-slur 'outside)

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
      g4~ g32 a h a g16 a32 fis \appoggiatura fis16 \compressMusic #'( 5 . 6 )
         g8.\mordent \set stemLeftBeamCount = #1 \set stemRightBeamCount = #3 a32 \set stemLeftBeamCount = #3 g a a8.\prallprall g32 a
      \appoggiatura a16 h8~ h32 e d! e a, h a h h16\prall a32 h
         c8~ c32 a' g a h,8~\prall h32 g' fis g
      a,32 g a h c h e d c h16. a16\prall g
         g32\fermata d e fis g16 h32 a \appoggiatura a16 h32\mordent c h a g h a c64 h
      c8~\mordent c32 d c h h16.\mordent c32 d c d e
         a,8. c32 h\appoggiatura a16 g8~ g32 fis e fis
      %% Takt  5 ==================================================
      fis8~\prallprall fis32 g fis g \once \override Script #'extra-offset = #'( 0.4 . 0 ) g8.\upprall fis32 g
         \appoggiatura g16 a4\mordent\fermata d32 e d c h a h g
      c8~\mordent c32 d64 c h32 c64 d \once \override Script #'extra-offset = #'( 0.4 . 0 ) h8.\prallprall a16
         a16 h32 a g fis g16 \appoggiatura g16 fis8~\prall fis32 g64 fis e32 g64 fis
      g16\mordent a32 g fis g a h \once \override Script #'extra-offset = #'( 0.4 . 0 ) e,8.\prallprall d32 e
         d4\fermata h'8~ h32 d c! h64 e
      \appoggiatura d16 c8~ c32 e dis e \once \override Script #'extra-offset = #'( 0.4 . 0 ) h8.\prallprall a32 h
         a8~ a32 c h a64 d d16 g,8 h32 a
      \appoggiatura a16 h16.~\mordent c32d e fis g h,16( a) a\prall g32 a
         g2\mordent \bar "|."
   }
}

alt = {
   \new Voice \relative h {
      \global
      \halsdown \dotsDown
      r8 h[ h c] d4 e8 fis
      g8 h, e d c d d4
      e8 c d c h d16 fis g4
      r8 g[ g fis] e fis g g,
      %% Takt  5 ==================================================
      c8 d d e fis fis fis g
      a fis d4~ d2~
      d8 d d cis d a' a g
      g fis g4~ g8 fis g fis
      g8 d d c c h16 a h4
   }
}

tenor = {
   \new Voice \relative g {
      \global
      r8 g[ g a] h4 cis8 dis
      e8 g, g fis e a a g~
      g8 g~ g fis g h16 c d4
      g,8. a16 h4 c8 d d4
      %% Takt  5 ==================================================
      r8 c[ c b] a4 h
      r8 a[ a g] fis h a4
      g8 a h a fis4 g
      a4 h8 c16 d! e8 d d c
      h16 a g a fis8\prall e16 fis g8 \tempo 4 = 24 d16 c \tempo 4 = 14 d4
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
      r2 r8 g[ g fis]
      e8 d c d a fis g h
      c8 a d d, g[ g' g fis]
      e8[ e, e' d] c[ c' c h]
      %% Takt  5 ==================================================
      a8[ d, g g,] d'[ d, d e]
      fis8 d g4 d8 d' d cis
      h8 a g a d,4 r
      r8 e'[ e d!] c4 h8 a
      g8 h16 c d8 d, g2_\fermata
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
         \new Staff {
            \set Staff.midiInstrument = "oboe"
            \sopran
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g' g''' \sopran
         }
         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \alt
         }
         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \tenor
         }
         \new Staff {
            \set Staff.midiInstrument = "pan flute"
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
         tempoWholesPerMinute = #(ly:make-moment 32 4)
      }
   }
}
