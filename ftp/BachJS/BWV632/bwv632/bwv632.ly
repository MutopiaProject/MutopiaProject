\version "2.10.33"

\header {
 mutopiatitle = "Herr Jesu Christ, dich zu uns wend"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 632"
 mutopiainstrument = "Organ"
 date = "1715"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/24"

 title = "Herr Jesu Christ, dich zu uns wend"
 composer = "Johann Sebastian Bach"
 opus="BWV 632"
 footer = "Mutopia-2007/11/25-707"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key f \major
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

#(set-default-paper-size "a4" 'landscape)

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative f' {
      \global
      \halsup
      \partial 4 f8. g16
      a8. b16 c8. b16 a4. g8
      a4 h c r
      r4 d c8. b16 a4
      g4. f8 f4 e
      %% Takt 5 ==============================================
      f2. d'4\rest
      r4 g, a a \break
      \repeat volta 2 {
         g4 c c4. h8
         c2 r
         r4 a b! a
         %% Takt 10 =============================================
      }
      \alternative {
         {
            g4 f f e4
            f2 r
            r4 g a a
         }
         {
            g4 f f e4
            <<
               \new Voice {
                  f2. \bar "|."
               }
               \new Voice {
                  s8 c~ c2
               }
               \new Voice {
                  \staffdown s4 \shiftOn f,2
               }

            >>
         }
      }
   }
}

alt = {
   \new Voice \relative f {
      \global
      \halsdown
      \partial 4 \staffdown a16\rest f a c
      \staffup f4 e16\rest g e c f8 c c\rest c~
      c16 e f8~ f8 e~ e16 e f a g4~
      g16 c a f b!4 r16 g e c f4~
      f8 e16 d e8 c \staffdown b16 d b g c4
      %% Takt 5 ==============================================
      c16\rest c a f b8 c \staffup d16 g e! c f e d f
      \staffdown b,16 d b g \staffup c4 c c16\rest f d a
      \repeat volta 2 {
         h8 d e16\rest c f a e8 g g16\rest a f d
         e16 g e c f a c f
         h,8 c f,16 a d f,
         %% Takt 10 =============================================
         e8 g~ g f~ f16 g e c d f d c

      }
      \alternative {
         \relative g {
            \staffdown b!8 a~ a16 d a f g4~ g16 d' c b
            a8 c c16\rest f, a c b g b d b g b c
            a16 c a f \staffup c'4~ c c16\rest a d f
         }
         \relative g {
            \staffdown b!8 a~ a16 d a f g4~ g8 \staffup c~
            c16 f c \staffdown a~ a2
         }
      }
   }
}

tenor = {
   \new Voice \relative f, {
      \global
      \halsdown
      \partial 4 g4\rest
      r16 c' a f \halsneutral e8 c r16 f, a c f c e g
      f16 c f a d, g h d c8. c16 d g, d' f
      e8 es r16 d b g e!8 c r16 c a f
      c16 c' e g c c, f a \halsdown d,8 f r16 b g e
      %% Takt 5 ==============================================
      c8 es r16 d f a \halsneutral b4~ b16 c, f a
      d,4 r16 g e c f f, a c f4~
      \repeat volta 2 {
         f16 d' h g e8 c' r16 g e c f4
         g8 b! \clef "treble" r16 c f a d, g e c \clef "bass" d8 g,
         r16 g c e a, f' c a f b g e f a f d
         %% Takt 10 =============================================
      }
      \alternative {
         {
            e16 g e a, d4 r16 \halsdown d b g c g' e c
            f16 a f c d8 f~ f4 e
            f8 b,\rest r16 \halsneutral g' e c f f, a c
            \once \override LaissezVibrerTie #'control-points = #'((1.4 . 1.6) (4.6 . 2.5) (8.8 . 2.5) (12 . 1.6))
               f4\laissezVibrer
         }
         {
            e16 g e a, d4 r16 \halsdown d b g c16 e g b
            a4  <<
               \new Voice \relative f, {
                  \halsup g16\rest f16 a \tieDown c~ c4
               }
               \new Voice \relative f {
                  s4 \halsup f
               }
               \new Voice \relative a, {
                  s8 \halsdown a~ \halsup a4

               }
               \new Voice \relative f, {
                  s16 \halsdown \once \override Staff.NoteCollision #'merge-differently-dotted = ##t f8.~ f4
               }
            >>
         }
      }
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
   \relative f, {
      \partial 4 r4
      r2 r8 f a c
      a4 g a h
      c4 r r2
      r8 c b! a g d' c b
      %% Takt 5 ==============================================
      a8 c b a g4 f
      f4 e f r
      \repeat volta 2 {
         r8 g a a g[ c] d[ d]
         c8 g' a a g[ c] c[ h]
         c8[ e,] f[ e] d c c h
      }
      \alternative {
         {
            c8[ cis] d[ c] b! a b c
            d8[ a] b[ a] g f g c,
            f4 r r2
         }
         {
            c'8[ cis] d[ c] b! a b c
            f,2.
         }
      }
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
            \transpose d d, \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "trombone"
            \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
   }
}
