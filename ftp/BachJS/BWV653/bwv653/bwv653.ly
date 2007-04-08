\version "2.8.1"

\header {
 mutopiatitle = "An Wasserflüssen Babylon"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 653"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Apr/24"

 title = "An Wasserflüssen Babylon"
 subtitle = "a 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus="BWV 653"
 footer = "Mutopia-2006/04/28-747"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
   \time 3/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsdown = { \stemDown \tieDown \slurDown }
halsup = { \stemUp \tieUp \slurUp}
mmrestup = { \once \override MultiMeasureRest #'staff-position = #4 }
scriptup = { \once \override Script #'extra-offset = #'(0 . 1.3) }
showBrackets = { \override TupletBracket #'bracket-visibility = ##t }
showTripletNumber = { \set tupletNumberFormatFunction = #denominator-tuplet-formatter }
staffdown = { \change Staff = "left" \halsup }
staffup = { \change Staff = "right" \halsdown }
std = { \change Staff = "left" }
stu = { \change Staff = "right" }

sopran = {
   \new Voice \relative d'' {
      \global
      \halsup
      d4 e d8. e32 c
      h4. c8 d4~
      d4 c8 h c d
      h4 d\rest d\rest
      %% Takt  5 ==================================================
      a4 h8. cis16 cis8.\prallprall h32cis
      d4. c!8 h a
      c8 h a4.\prall g16 a                                   \break
      g4 a'\rest fis8\rest d
      e8. fis16 fis4.\prall e16 fis
      %% Takt 10 ==================================================
      g4. fis8 e4
      fis8. g16 e4.\prall fis8
      d4 d\rest d
      e4 d4.\prall c8
      h4. c8 d4~
      %% Takt 15 ==================================================
      d4 c8 h c d                                            \break
      h4 d\rest d\rest
      a4 h8. cis16 cis8.\prallprall h32cis
      d4. c!8 h a
      c8 h a4.\prall g16 a
      %% Takt 20 ==================================================
      g4 a'\rest fis8\rest d
      e8. fis16 fis4.\prall e16 fis
      g4. fis8 e4
      fis8. g16 e4.\prall fis8                               \break
      d4 d\rest d8\rest \once \override NoteColumn #'force-hshift = #0.7 d,
      %% Takt 25 ==================================================
      e8. fis16 fis4.\prall e16 fis
      g4. f8 e4
      f8 g16 a \once \override Script #'extra-offset = #'(1 . 0) d,2\downprall
      c4 h'\rest a
      h8. cis16 cis4.\prall h16 cis
      %% Takt 30 ==================================================
      d4. c!8 h4
      c8 d16 e a,4.\prall g16 a
      g4 d'\rest d\rest                                      \break
      d4 e d8. e32 c
      h4. c8 d4~
      %% Takt 35 ==================================================
      d4 c8 h c d
      h8 d e c a8.[ h32 c]
      h8. cis16 cis4.\prall h16 cis
      d4. c!8 h4
      c8 d16 e a,4.\prall g16 a
      %% Takt 40 ==================================================
      g4 fis'\rest fis\rest                                  \break
      \mmrestup R2.
      \mmrestup R2.
      fis4\rest fis\rest a
      h4 a g
      %% Takt 45 ==================================================
      fis4. g8 a4~
      a g8 fis g a
      fis8 d16 e fis4 gis
      a4. g!8 fis4
      g8. a16 fis4.\prall e16 fis
      %% Takt 50 ==================================================
      e16 h e8~ e8 d!4 cis16 h
      cis4. dis16 e dis4
      e16 g fis e a8 fis dis4
      e4 f e8. f32 d
      cis4. d8 e4~
      %% Takt 55 ==================================================
      e4 d8 c! d e
      c8 cis4 d8 e4~
      e8 a, d4 d\rest
      e4 f e8. f32 d
      c4. d8 e4~
      %% Takt 60 ==================================================
      e4 d8 c! d e
      c4 f\rest f\rest
      h,4 c8. d16 d8.\prallprall c32 d
      e4. d8 c4~
      c8. d16 h4.\prall a16 h
      %% Takt 65 ==================================================
      a8 e'4 fis!16 g a4
      d, e d8. e32 c
      h4. cis8 d4~
      d4. e8 cis4
      d8 a h!8.^[ c!16] c8.\prallprall h32 c
      %% Takt 70 ==================================================
      d4. c8 h a
      c8 h a4. h8
      g8 d' e4 d8. e32 c
      h4. c8 d4~
      d4 c8 h16 c d8 fis,
      %% Takt 75 ==================================================
      g2.
      a8 g fis2~
      fis4 e8 fis g a
      h8 c d e f d
      e4. d8 e fis!
      %% Takt 80 ==================================================
      g8 d e4 d8. e32 c
      h4. c8 d4~
      d4 c8 h c d
      h2.\fermata
   }
}

alt = {
   \new Voice \relative h' {
      \global
      \halsdown
      h4 a8. h32 g fis4
      g8 a16 g fis g e8 d4
      e8. fis16 fis4._\prall e16 fis
      g4. a16 g fis g e8
      %% Takt  5 ==================================================
      d16 e fis8 e4._\prall g8
      fis8 g a4 d,~
      d8 g4 g8 fis4
      g8 d'4 c h8~
      h8 a a2
      %% Takt 10 ==================================================
      g8 a h4 cis
      d4. h8 a g
      fis8 h4 a g8~
      g8 g4 g8 fis4
      g4 fis8. g32 e d4
      %% Takt 15 ==================================================
      e8. fis16 fis4._\prall e16 fis
      g4. a16 g fis g e8
      d16 e fis8~ fis e~ e g
      fis8 g a4 d,~
      d8 g4 g8 fis4
      %% Takt 20 ==================================================
      g8 d'4 c h8~
      h8 a a2
      g8 a h4 cis
      d4. h8 a g
      fis8 h4 a \tieUp g8~
      %% Takt 25 ==================================================
      g4 \tieDown d c
      h8 e4 d cis8
      d4 a8\rest c4 h8~
      h8 \staffdown e, a h \staffup c d
      \staffdown g,8 \staffup g'4 h8 a g
      %% Takt 30 ==================================================
      fis8 h4 a gis8
      a8 g!4 g8 fis4
      g8 d e4 d8. e32 c
      h8 h'~ h[ a16 h32 c] h8 a~
      a8 g fis e d4
      %% Takt 35 ==================================================
      e8. fis16 fis4._\prall e16 fis
      g4. a8 fis4
      g4 e2
      d8 e fis4 gis
      a8 g!4 g8 fis4~
      %% Takt 40 ==================================================
      fis8 e16 fis g8[ h] a8. h32 g
      fis4. g8 a4~
      a4 g8 fis g a
      fis8 a4 g fis8~
      fis8 e4 d cis8
      %% Takt 45 ==================================================
      d8 d'4 c!8 h a
      h2 a4~
      a4 g\rest g\rest
      h8\rest fis'4 e dis8
      e2 dis4
      %% Takt 50 ==================================================
      e8 gis, a4 h~
      h8 e, a4. h16 c
      h4 c h8. c32 a
      gis4. a8 h4~
      h4 a8 fis g! a
      %% Takt 55 ==================================================
      fis4 a gis8. a32 fis
      e4. f8 g!4~
      g f8 e f g
      e8 a4 a8 gis4
      a8 e a g f e
      %% Takt 60 ==================================================
      fis8. gis16 gis4._\prallprall fis16 gis
      a4. h16 a g! a fis8
      e16 fis g8~ g8 fis4 a8
      gis8 a h4. e,8
      a4. a8 gis4
      %% Takt 65 ==================================================
      a4 c h8. c32 a
      g8 h e, g~ g[ fis]
      g4 d\rest d\rest
      a'4 b a8. b32 g
      fis4. g8 a4~
      %% Takt 70 ==================================================
      a4 g8 fis g a
      fis8 g4 g8 fis4
      g8 h, c d e fis
      g8 a h a g fis
      g8 d e4 d8 c
      %% Takt 75 ==================================================
      h4. c8 d4~
      d4 c8 h c d
      h4. a8 h c
      d e f e h'4~
      h8 g c4 h8 a
      %% Takt 80 ==================================================
      g8 f e d e fis
      g8 d g a h4~
      h8 a16 g <a d,~>2
      <h d,> 2.
   }
}

tenor = {
   \new Voice \relative d' {
      \global
      R2.
      R2.
      R2.
      R2.
      %% Takt  5 ==================================================
      R2.
      R2.
      d4 e d8. e32 c
      h4.\downprall c8 d4~
      d4 c8\prall h c d
      %% Takt 10 ==================================================
      h2 r4
      a4 h8. cis16 cis8.\prallprall h32 cis
      d4. c!8 h4
      c8. d32 h a4.\prall g16 a
      g2.~
      %% Takt 15 ==================================================
      g4 r r
      R2.
      R2.
      R2.
      d'4 e d8. e32 c
      %% Takt 20 ==================================================
      h4.\downprall c8 d4~
      d4 c8\prall h c d
      h2 r4
      a4 h8. cis16 cis8.\prallprall h32 cis
      d4. c!8 h4
      %% Takt 25 ==================================================
      c8.( d32 e) a,4.\prall g8
      g2 r4
      R2.
      \clef bass R2.
      R2.
      %% Takt 30 ==================================================
      R2.
      R2.
      R2.
      R2.
      \clef alto g4 a h
      %% Takt 35 ==================================================
      c16 d e c a2\prall
      h8. c16 a4.\prall g16 a
      g4 r r
      R2.
      R2.
      %% Takt 40 ==================================================
      g8. a16 h4 cis
      d2 e16 d e8
      h8.( cis32 d) cis4. h16 cis
      d4 r r
      R2.
      %% Takt 45 ==================================================
      R2.
      h8. c16 d4 e
      d4. c!8 d h
      c2.\prallprall
      h2.~
      %% Takt 50 ==================================================
      h4 r r
      R2.
      R2.
      R2.
      R2.
      %% Takt 55 ==================================================
      R2.
      e4 e e
      a,2 d4
      c8. h16 h4.\prall a16 h
      a2.~ a4 r r
      %% Takt 60 ==================================================
      R2.
      R2.
      R2.
      R2.
      r4 r c
      %% Takt 65 ==================================================
      h2 a4
      \clef alto g4. b8 a g
      f8. g16 e4.\prall d16 e
      d2 r4
      R2.
      %% Takt 70 ==================================================
      R2.
      R2.
      d4 g a
      h8. c16 c4.\prall h16 c
      d4. c8 h4
      %% Takt 75 ==================================================
      c8. d32 h a4.\prall g16 a
      \clef bass g2.~
      g2.~
      g2.~
      g2.~
      %% Takt 80 ==================================================
      g2.~
      g4. fis16 e d c h a
      g2.\fermata \bar "|."
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
   \clef alto
   <<
   \tenor
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative g {
      g4 c, d
      e4 d8 c h4
      c4 a d
      g4 h a8 g
      %% Takt  5 ==================================================
      fis4 g a~
      a4 g8 fis g a
      fis8 g c,4 d
      g,4 e' h
      c4 a d
      %% Takt 10 ==================================================
      g4 e a
      d,4 g, a
      h4 fis g
      c,4 d2
      g4 a h
      %% Takt 15 ==================================================
      c4 a d
      g4 h a8 g
      fis4 g a~
      a4 g8 fis g a
      fis8 g c,4 d
      %% Takt 20 ==================================================
      g,4 e' h
      c4 a d
      g4 e a
      d,4 g, a
      h4 fis g
      %% Takt 25 ==================================================
      c,4 d2
      g4 e a
      d,4 fis! gis
      a4. g!8 fis4
      g4 e2
      %% Takt 30 ==================================================
      d4 d' e
      a,8 h c4 d
      g4 c h8 a
      g4 c, d
      g,2.~
      %% Takt 35 ==================================================
      g2.~
      g4 c, d
      g4 a2
      d,4 r r
      a'4 cis dis
      %% Takt 40 ==================================================
      e2 a,4
      h8 cis d4 cis
      d4 e a,
      d4 cis d
      g4 fis e
      %% Takt 45 ==================================================
      d4 e fis
      g4 h, cis
      d4 h e
      a,4 e' a
      g8 e h'4 h,
      %% Takt 50 ==================================================
      e,4 fis gis
      a4. g!8 fis4
      g4 fis2
      e8 e' h a gis e
      a8 e' a d, cis a
      %% Takt 55 ==================================================
      d8 c! h4 e
      a,8 a' g! b~ b cis,
      d4. c!8 h!4
      c4 d e
      a,4. h8 cis4
      %% Takt 60 ==================================================
      d4 h e
      a8 h c4 h8 a
      g4 a h~
      h4 a8 gis a g
      f8 e d h e e,
      %% Takt 65 ==================================================
      a4 e fis!
      g4 c, d
      g8 f e4 f8 e
      d4 g a
      d, d' c
      %% Takt 70 ==================================================
      h2 e4~
      e8 d c4 d
      g,2.~
      g2.~
      g2.~
      %% Takt 75 ==================================================
      g8 a h a g fis
      e2 dis4
      e8 h' e4 d8 c
      h4. c8 d4~
      d4 c8 h c d
      %% Takt 80 ==================================================
      h4 c c,
      <<
         \new Voice { \stemDown
            g'2.~
            g2.~
            g2._\fermata
         }
         \new Voice { \stemUp
            a'4\rest a\rest d,
            e4 fis2
            g2.
         }
      >>
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
   \layout{}
}

\score {
   <<
      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         <<
            \sopran
            \alt
         >>
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         <<
            \transpose c c' \sopran
            \transpose c c' \alt
         >>
      }

      \new Staff {
         \set Staff.midiInstrument = "oboe"
         \tenor
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \tenor
      }

      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c, \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \pedal
      }
   >>
   \midi{ \tempo 4 = 54 }
}
