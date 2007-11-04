\version "2.10.33"

\header {
 mutopiatitle = "Mit Fried und Freud ich fahr dahin"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 616"
 mutopiainstrument = "Organ"
 date = "1715"
 source = "Edition Peters 8660"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/3"

 title = "Mit Fried und Freud ich fahr dahin"
 composer = "Johann Sebastian Bach"
 opus="BWV 616"
 footer = "Mutopia-2007/11/04-1089"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
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
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup        = { \stemUp \tieUp }
halsdown      = { \stemDown \tieDown }
halsneutral   = { \stemNeutral \tieNeutral }
mmrestdown    = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn   = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestup      = { \once \override MultiMeasureRest #'staff-position = #4 }
mmrestupp     = { \once \override MultiMeasureRest #'staff-position = #6 }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.5 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.5 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative d' {
      \global
      \halsup
      d2 a'4 a
      g d' c h
      a2\fermata c
      a16 h32 c h16 c32 d c4 h8 a h4
      %% Takt  5 ==================================================
      a2\fermata h
      c4 h c8. b16 a4
      g4 f g8. f16 e4
      d2\fermata a'4. g8
      f8 e d4 c2\fermata
      %% Takt 10 ==================================================
      \shifttieup a'4~ a16 b32 a g16 f32 e f4 c'16 d32 c b!16 a32 g
      \shifttieup a4~ a16 b32 c d16 e32 f g,4 g
      a2\fermata g
      f4 d8.\prallprall c!32 d c4 f
      e8 d e4 \override Tie #'extra-offset = #'( 0 . 1.2 ) d2~
      %% Takt 15 ==================================================
      d2~ d4~ d16 \tempo 4=22 d32 cis \tempo 4=8 \override Script #'padding = #0.5 d8_\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative d' {
      \global
      \halsdown
      d2~ d16 e32 f e16 f32 g \shifttiedown f4~
      f16 e32 d e16 d32 c d8 e~ e16 fis32 gis a16 h32 c f,8 h,
      e8 d~ d16 c!32 h c8 r2
      r4 a'16 g32 f g16 f32 e f8 dis r16 h32 c d16 e32 f
      %% Takt  5 ==================================================
      cis8 d e16 f32 g fis16 g32 a g16 fis32 e dis16 e32 fis e8 d
      c!8 a'~ a16 g32 f! g8~ g e~ e16 f32 g f16 g32 a
      d,8 e~ e16 d32 cis d8~ d16 cis32 d e16 f32 g cis,!8 c~
      c16 \staffdown b32 a b16 a32 g a4 \staffup e'8 d~ d16 e32 f e16 f32 g
      h,16 c!32 d c16 d32 e r32 \staffdown c h a gis!8 a16 h32 c h16 \staffup c32 d c16 d32 e d16 e32 f
      %% Takt 10 ==================================================
      e2~ e16 d32 c! d16 c32 h! c8 e
      a16 g32 f g16 f32 e \shifttiedown f4~ f8. e32 d c16 \staffdown b!32 a g16 f32 e
      f16 a h! \staffup cis32 d cis16 d32 e d16 e32 f h,8. cis!32 d e16 f32 g f16 g32 e
      f4 r \staffdown r a,16 h32 cis h16 cis32 d
      cis8 \staffup d~ d16 cis32 h cis8 d16 c32 b c16 \staffdown b32 a b16 a32 g a16 g32 fis
      %% Takt 15 ==================================================
      <<
         \new Voice { \stemUp f'4\rest b, \override Stem #'details #'beamed-lengths = #'( 4.5 ) a8. a32 g a4 }
         \new Voice { \stemUp \tieDown \shiftOn g2~ g16[ fis32 e \shifttiedown fis8~] fis4 }
      >>
    }
}

tenor = {
   \new Voice \relative d {
      \global
      d16 e32 f e16 f32 g f16 g32 a g16 a32 b a4~ a16 h32 c! d16 e32 f
      h,8 c~ c h~ h a~ a \shifttieup g!~
      g16 f32 e f16 e32 d \shifttieup e8~ e16 fis32 gis a16 h32 c h16 c32 d c16 d32 e d16 e32 f!
      e4~ e8~ e16 d32 c d16 c32 h c16 h32 a gis4
      %% Takt  5 ==================================================
      r16 a32 g! f16 e32 d cis16 d32 e dis16 e32 fis e16 fis32 g fis16 g32 a \shifttieup g4~
      g16 a32 h c!16 d32 e f!8~ f16 e32 d e16 d32 c b16 a32 g a8 r
      d,16 e32 f g16 a32 b a8~ a16 g32 f b8 g a4~
      \halsdown a16 d, g8~ g16 f!32 e f16 e32 d cis16 d32 e f16 g32 a h!16 cis32 d cis16 d32 e
      gis,16 a32 h a16 h32 c r8 r32 f, e d e4 \halsneutral a,16 h32 c h16 c32 d
      %% Takt 10 ==================================================
      \stemUp c16 d32 e d16 e32 f \stemNeutral e8 a~ a4~ a8 c~
      c8 cis a4 d16 c!32 b a16 g32 f \tieDown \shifttiedown e4~
      e16 d32 cis d16 e32 f e16 f32 g f16 g32 a d,16 e32 f g16 a32 b cis,!4\trill
      d4 \halsdown r a16 h!32 c h16 c32 d cis16 d32 e d16 e32 f
      g8 f e8. f32 g \halsdown a8 d,~ d16 c!32 b c16 b32 a
      %% Takt 15 ==================================================
      b16 g32 a h16 cis32 d cis16 a32 h! cis!16 d32 e d2_\fermata
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
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative d {
      r4 d16 f e g f8 cis d h
      e4 fis16 a gis h a8 f d16 f e g
      cis,8 d a4 r a16 c h d
      c8 gis a a' d, fis e e,
      %% Takt  5 ==================================================
      a2 r4 g'16 e f! d
      e8 a d, g c,4 cis16 e d f
      h,8 cis d b g e' a16 fis g e
      fis8 g d4 r f16 d e cis
      d16 h c! a h8 e, a4 r
      %% Takt 10 ==================================================
      a16 c h d c8 cis d4 a'16 f g e
      f16 d e cis d8 c b g c c,
      f2~ f8 f' e a,
      d16 f e g f a g b a4 a,
      b16 g a f g e a8 fis4 g
      d1\fermata
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
      indent = 1\cm
      \context {
         \PianoStaff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 4)
      }
      \context {
         \Staff      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
   }
}

\score {
   \unfoldRepeats {
      <<
         \new PianoStaff {
            <<
               \context Staff = right {
                  \set Staff.midiInstrument = "church organ"
                  \right
               }
               \context Staff = left {
                  \set Staff.midiInstrument = "church organ"
                  \left
               }
            >>
         }
         \context Staff = pedal {
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
         tempoWholesPerMinute = #(ly:make-moment 48 4)
      }
   }
}
