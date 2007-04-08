\version "2.8.1"

\header {
 mutopiatitle = "Wer nur den lieben Gott lässt walten"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 647"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Apr/08"

 title = "Wer nur den lieben Gott lässt walten"
 composer = "Johann Sebastian Bach"
 opus = "BWV 647"
 footer = "Mutopia-2006/04/09-728"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key c \minor
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsneutral = { \stemNeutral \tieNeutral }
halsdown = { \stemDown \tieDown }
halsup = { \stemUp \tieUp }
noflag = { \once \override Stem #'flag-style = #'no-flag }
restright = { \once \override Rest #'extra-offset = #'( 4.0 . 0.0 ) }
restdown = { \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -1.0 ) }
restdownn = { \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -2.0 ) }
restdownnn = { \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -3.0 ) }
restup = { \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . 1.0 ) }
staffup = { \change Staff = "right" \halsdown }
staffdown = { \change Staff = "left" \halsup }
scriptup = { \once \override Script #'extra-offset = #'(0 . 1.3) }
scriptdown = { \once \override Script #'extra-offset = #'(0 . -1.3) }

sopran = {
   \new Voice \relative g' {
      \global
      \halsup
      r4 g c8 h c d
      \repeat volta 2 {
         es8 d16 c d8 h c4 g8 es'
         es8 d d4 f8\rest c16 b c8 a!
         b8 c d e f c f f
         %% Takt  5 ==================================================
         f8 es16 d es8 c d8. es32 d c8 d
         es4 d4 es\rest g,
         c8 h c d es d16 c d8 h
         c4 g8 c c b! b4
         d8\rest c16 b c8 a b c d b
         %% Takt 10 ==================================================
         es8 d es f g f16 es f8 d
         es4 b8 g' g f f4
         as8\rest es16 d es8 c d es f es
         es8 d d4 d8\rest c16 h c8 d
         es8. f16 d8. c16 c4 d8\rest b!
         %% Takt 15 ==================================================
         b8 as as g' g f f[ es!16 d]
         c8 es d[ c16 h] c8. d16 h8. c16
      }
      \alternative {
         {
            c4 g c8 h c d
         }
         {
            \set Score.currentBarNumber = #17
            c4 d4\rest d2\rest
         }
      }
      \restup R1
      es4\rest d8\rest a b es4 d16 c
      %% Takt 20 ==================================================
      d8 g4 f16 es f8 b, d16 c b a
      b8 c b as g es' d f
      b,8 es \tieDown as,4~ as8 \tieUp c b16 as g f
      g4 as'8\rest g, as8 des!4 c16 b
      c8 f4 es16 des es8 as, c16 b as g
      %% Takt 25 ==================================================
      as8 c b as g es' d f
      b,8 es as,4. g8 b16 as g f
      g8 es'8. d16 c8 h d c es
      as, g c4. es!16 d h8. c16
      c8 des c b! as des! c e
      %% Takt 30 ==================================================
      f8 f, b4. des!8 c16 b as g
      as8 c16 h c4~ c8 h16 c d8 g,
      c8 c16 h c8 d es d16 c d8 h
      c2~ c8 d g, h
      c4 c\rest b2\rest
   }
}

alt = {
   \new Voice \relative c' {
      \global
      \halsdown
      \restdownnn R1
      \repeat volta 2 {
         es2\rest es4\rest c
         g'8 fis g a b8 a16 g a8 fis!
         g4 d8 b' b as! as4
         %% Takt  5 ==================================================
         r8 g16 f g8 es f g a h
         c8 c, g' g g f16 es f8 d
         es8 f16 g as! g as8 g f f f
         f8 es es4 es8\rest es16 d es8 c
         d8 e fis a~ a g g4
         %% Takt 10 ==================================================
         g8\rest g16 f g8 as! b as16 g as8 f
         es4 es8\rest es b' a b c
         d8 c16 b c8 a b4 f8 g
         g8 f f4 es8\rest es16 d es8 f
         g8 f16 es f8 d es as as g
         %% Takt 15 ==================================================
         g8 c c b b as16 g as8 g~
         g8 f16 es f8 d es8. f16 d8. c16
      }
      \alternative {
         {
            c4 b4\rest es2\rest
         }
         {
            c4 c8\rest d es as4 g16 f

         }
      }
      g8 c4 b16 as b8 es, g16 f es d
      es8 g f es d b' a c
      %% Takt 20 ==================================================
      f,8 b es,4 es8\rest d f16 es d c
      d8 as'! g f es c as'4
      es8\rest g es c' d, es b d
      es8 b' des c as4 es4\rest
      \restdownnn R1
      %% Takt 25 ==================================================
      c4\rest c8\rest d! es as4 g16 f
      g8 c c[ b16 as] b8 es, g16 f es d
      es8 g8. f16 es8 d as' g c
      f,4 e8 g c, as' g f
      e8 f g4~ g8 f e g
      %% Takt 30 ==================================================
      c,8 c\rest c\rest des' e, f16 e f8 g~
      g8 as16 g f es! d c g'2~
      g2~ g8 f16 es f4~
      f8 es16 d es8 f g as es[ d16 c]
      c4 c\rest es2\rest
   }
}

tenor = {
   \new Voice \relative c {
      \global
      c8 c'16 h c8 g as as16 g as8 f
      \repeat volta 2 {
         g8 f16 es f8 d es es16 d es8 c
         b8 b16 a b8 fis g es' c d
         g,8 a b c f, g as b
         %% Takt  5 ==================================================
         c8 g' c c c b16 a g8 f
         es8 d16 c h8 g c c c b
         as!8 g f[ es16 f] g8 a h g
         c,8 c'16 d es8 c g' fis g a
         b8 a16 g a8 fis g8 b16 a b8 g
         %% Takt 10 ==================================================
         c8 c, b as! g c as b
         es,8 es'16 f g8 es d d16 c d8 a
         b8 g' es f b, c d es
         c8 c16 b c8 d16 c h8 c as'![ g16 f]
         es8 f g g, c h c d
         %% Takt 15 ==================================================
         e8 d16 c d8 e f e f g
         as8 as16 g as8 f g f g g,
      }
      \alternative {
         {
            c8 c'16 h c8 g as as16 g as8 f
         }
         {
            c8 c' h! g c c,16 h c8 d
         }
      }
      es8 es16 d es8 f g c, as b
      es, es' d c g' f16 es f8 a
      %% Takt 20 ==================================================
      b8 es,16 d es8 c d g es f
      b,4 r8 b c c' b as
      g8 c16 b c8 as b8 b16 as b8 b,
      es,8 es'16 d es8 c f f16 es f8 g
      as8 as16 g as8 b c f, des es
      %% Takt 25 ==================================================
      f8 es d! b c d16 es f8 d
      es8 as,16 g as8 f g c as b
      es,8 es'16 d es8 c d c16 h c4~
      c8 b!16 as b8 g as8 g16 f g8 g
      c,4 r8 e' f b4 as16 g
      %% Takt 30 ==================================================
      as8 des4 c16 b c8 f, as16 g f e
      f8 f16 g as8 f g g16 as g8 f
      es8 es16 f es8 d c8 as' f g
      as g16 f es8 d es f g g,
      c,4 r r2
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
   \new Voice  \relative g, {
      \global
      \clef "bass"
      R1
      \repeat volta 2 {
         R1*3
         %% Takt  5 ==================================================
         r2 r4 g
         c4 d es d
         c4 d h g~
         g2 r
         R1
         %% Takt 10 ==================================================
         R1
         R1
         r2 r4 b
         b4 as! g c
         c4 h c2~
         %% Takt 15 ==================================================
         c4 r r2
         R1
      }
      \alternative {
         {
            R1
         }
         {
            R1
         }
      }
      R1
      R1
      %% Takt 20 ==================================================
      R1
      r4 d es f
      g4 g f f
      es2 r
      R1
      %% Takt 25 ==================================================
      R1
      R1
      r4 g f es
      d4 c es d
      c1~
      %% Takt 30 ==================================================
      c4 r r2
      R1*4 \bar "|."
   }
}

\score {
   <<
      \new PianoStaff {

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
   \layout{
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
         \new Staff = right {
            \set Staff.midiInstrument = "pan flute"
            \right
         }
         \new Staff = left {
            \set Staff.midiInstrument = "pan flute"
            \context Voice = left \left
         }
         \new Staff = pedal {
            \set Staff.midiInstrument = "bassoon"
            \transpose c c' \pedal
         }
      >>
   }
   \midi{ \tempo 4 = 60 }
}
