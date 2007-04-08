\version "2.6.4"

\header {
 mutopiatitle = "Herr Jesu Christ, dich zu uns wend'!"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 632"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/12"

 title = "Herr Jesu Christ, dich zu uns wend'!"
 composer = "Johann Sebastian Bach"
 opus="BWV 632"

 footer = "Mutopia-2006/03/27-707"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\include "deutsch.ly"

global = {
   \key f \major
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
      r4 g, a a
      \repeat volta 2 {
         g4 c c4. h8
         c2 r
         r4 a b a
         %% Takt 10 =============================================
         g4 f f
      }
      \alternative {
         {
               e4
            f2 r
            r4 g a a
         }
         {
            \partial 4 e4
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
      f8 e16 d e8 c b16 d b g c4
      %% Takt 5 ==============================================
      \staffdown c16\rest c a f b8 c \staffup d16 g e c f e d f
      \staffdown b,16 d b g \staffup c4 c c16\rest f d a
      \repeat volta 2 {
         h8 d e16\rest c f a e8 g g16\rest a f d
         e16 g e c f a c f
         h,8 c f,16 a d f,
         %% Takt 10 =============================================
         e8 g~ g f~ f16 g e c d f d c
         \staffdown b8 a~ a16 d a f g4~
      }
      \alternative {
         \relative g {
               g16 d' c b
            a8 c c16\rest f, a c b g b d b g b c
            a16 c a f \staffup c'4~ c c16\rest a d f
         }
         \relative g {
            \partial 4 g8 \staffup c~
            c16 f c \staffdown a~ a2
         }
      }
   }
}

tenor = {
   \new Voice \relative f, {
      \global
      \halsdown
      \partial 4 f4\rest
      r16 c'' a f e8 c r16 f, a c f c e g
      f16 c f a d, g h d c8. c16 d g, d' f
      e8 es r16 d b g e!8 c r16 c a f
      c16 c' e g c c, f a d,8 f r16 b g e
      %% Takt 5 ==============================================
      c8 es r16 d f a b4~ b16 c, f a
      d,4 r16 g e c f f, a c f4~
      \repeat volta 2 {
         f16 d' h g e8 c' r16 g e c f4
         g8 b \clef treble r16 c f a d, g e c d8 \clef bass g,
         r16 g c e a, f' c a f b g e f a f d
         %% Takt 10 =============================================
         e16 g e a, d4 r16 d b g
      }
      \alternative {
         {
               c g' e c
            f16 a f c d8 f~ f4 e
            f8 c\rest e16\rest g e c f f, a c f4~
         }
         {
            \partial 4 c16 e g b
            a4  <<
               \new Voice \relative f, {
                  \halsup a16\rest f16 a c~ c4
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
   \clef "bass_8"
   \relative f,, {
      \partial 4 r4
      r2 r8 f a c
      a4 g a h
      c4 r r2
      r8 c b a g d' c b
      %% Takt 5 ==============================================
      a8 c b a g4 f
      f4 e f r
      \repeat volta 2 {
         r8 g a a g c d d
         c8 g' a a g c c h
         c8 e, f e d c c h
         c8 cis d c b[ a
      }
      \alternative {
         {
               b8 c]
            d8 a b a g f g c,
            f4 r r2
         }
         {
               b8 c
            f,2.
         }
      }
      %% Takt 10 =============================================
   }
}

\score {
   \new PianoStaff {
      \set PianoStaff.instrument = \markup { \large \center-align {
         "" "" "Manuale." "" "" "" "" "" "" "" "Pedale." } \hspace #1.3 }
      <<
         \context Staff = right {
            \context Voice = right \right
         }
         \context Staff = left {
            \context Voice = left \left
         }
         \context Staff = pedal {
            \context Voice = pedal \pedal
         }
      >>
   }
   \layout {}
}

%% for midi with repeats
\score {
   \unfoldRepeats {
      \new PianoStaff {
         <<
            \context Staff = right {
               \set Staff.midiInstrument = "church organ"
               \context Voice = right \right
            }
            \context Staff = left {
                     \set Staff.midiInstrument = "church organ"
                     \context Voice = left \left
            }
            \context Staff = pedal {
               \set Staff.midiInstrument = "contrabass"
               \context Voice = pedal \pedal
            }
         >>
      }
   }
   \midi{
      \tempo 4 = 60
   }
}
