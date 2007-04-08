\version "2.8.1"

\header {
 mutopiatitle = "Nun danket alle Gott"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 657"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Apr/29"

 title = "Nun danket alle Gott"
 composer = "Johann Sebastian Bach"
 opus="BWV 657"
 footer = "Mutopia-2006/05/07-754"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsdown = { \stemDown \tieDown \slurDown }
halsup = { \stemUp \tieUp \slurUp}mmrestdown = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestup = { \once \override MultiMeasureRest #'staff-position = #4 }
mmrestupp = { \once \override MultiMeasureRest #'staff-position = #6 }
scriptdown = { \once \override Script #'extra-offset = #'(0 . -1.3) }
scriptdownn = { \once \override Script #'extra-offset = #'(0 . -2.3) }
scriptdownnn = { \once \override Script #'extra-offset = #'(0 . -3.3) }
staffdown = { \change Staff = "left" \halsup }
staffup = { \change Staff = "right" \halsdown }
textscriptdown = { \once \override TextScript #'extra-offset = #'(0 . -1.5) }
textscriptdownn = { \once \override TextScript #'extra-offset = #'(0 . -2.5) }
textscriptdownnn = { \once \override TextScript #'extra-offset = #'(0 . -3.5) }


sopran = {
   \new Voice \relative d'' {
      \global
      \halsup
      \mmrestup R1
      \repeat volta 2 {
         \mmrestup R1
         \mmrestup R1
         \mmrestup R1
         %% Takt  5 ==================================================
         d2\rest d
         d2 d
         e2 e
         d1
         \mmrestup R1
         %% Takt 10 ==================================================
         \mmrestup R1
         \mmrestup R1
         \mmrestup R1
         \mmrestup R1
         d2\rest h
         %% Takt 15 ==================================================
         c2 h
         a2 h
         a1\trill
         g1~
      }
      \alternative {
         \relative g' {
            g2 d'\rest
            %% Takt 20 ==================================================
            \mmrestup R1
         }
         \relative g' {
            \set Score.currentBarNumber = #19
            \override RepeatTie #'direction = #UP g2.\repeatTie h4\rest
            %% Takt 20 ==================================================
            \mmrestup R1
         }
      }
      %% Takt 20 ==================================================
      \mmrestup R1
      \mmrestup R1
      \mmrestup R1
      d'2\rest a
      %% Takt 25 ==================================================
      a2 a
      h2 h
      a1
      \mmrestup R1
      \mmrestup R1
      %% Takt 30 ==================================================
      \mmrestup R1
      d2\rest a
      h4. cis8 d2
      d2 cis
      d1
      %% Takt 35 ==================================================
      \mmrestup R1
      \mmrestup R1
      \mmrestup R1
      f2\rest d
      e2. d4
      %% Takt 40 ==================================================
      c2 h
      c1
      \mmrestup R1
      \mmrestup R1
      \mmrestupp R1
      %% Takt 45 ==================================================
      \mmrestup R1
      d2\rest h
      a2 h
      a2 a
      g1~
      %% Takt 50 ==================================================
      g1~
      g1~
      g1 \bar "|."
   }
}

alt = {
   \new Voice \relative d' {
      \global
      \halsdown
      d4\rest d d d
      \repeat volta 2 {
         e4 \scriptdownnn \textscriptdownnn e16\prall^\markup { \tiny \natural } d e f d8 e16 fis g4~
         g4~ g16 fis e fis g8 a16 h a8 g
         fis8 g16 a d,8 g e fis16 g a4~
         %% Takt  5 ==================================================
         a8 g c4~ c8 h16 a h8 c16 h
         a2~ a8 g16 fis g4~
         g4 a8 h e,16 d e fis g8 e
         a8 g16 fis g4~ g fis
         g4 g8\rest h e, a d, g~
         %% Takt 10 ==================================================
         g8 fis4 e8~ e dis16 cis dis e cis dis
         e16 fis g8 fis4 e fis
         e2 d4~ d16 d g fis
         e8. c'16 d,16 c d e c e d c d c h d
         c8 a'4 c,8 h c16 d e4~
         %% Takt 15 ==================================================
         e8 d16 e fis8 e16 fis g4. fis8
         e4 d~ d8 e16 fis g4~
         g16 a g fis g4~ g16 g fis e fis4~
         fis16 fis e dis e4 d d\rest
      }
      \alternative {
         \relative a {
            \staffdown a8\rest g a h \staffup c d e fis
            %% Takt 20 ==================================================
            g4 d d d
         }
         \relative a {
            \staffdown c16\rest g a h \staffup c d e8 d4~ d8. cis16
            %% Takt 20 ==================================================
            d4 e\rest e2\rest
         }
      }
      \mmrestdown R1
      e4\rest e e e
      fis4~ \scriptdownn fis16\prall e fis g e4~ e16 d e a
      d,4~ d16 cis d g cis,8. cis16 d fis e g
      %% Takt 25 ==================================================
      fis16 g fis e d \staffdown cis h a d8[ g,] fis c'\rest
      c2\rest \staffup c16\rest h e dis e fis g8~
      g8 g fis16 g e fis d a d8~ d16 d cis8
      d4 e\rest e2\rest
      e2\rest e4\rest d
      %% Takt 30 ==================================================
      e8 fis g4~ g fis
      g8 d g fis e4. d16 c!
      h4 e d8 fis16 e d8 e16 fis
      e4  e\rest e8\rest e16 fis g8 fis16 e
      a8 e\rest e4\rest e16\rest d e fis g fis e g
      %% Takt 35 ==================================================
      fis16 e fis g a4 h4. a8
      g4 fis gis8 a4 g8~
      g8 fis e a~ a16 g fis g c!4~
      c8 h4 a8~ a16 d, g a g8 f
      e16 f e d c \staffdown h a gis a \staffup e'16\rest e8\rest e4\rest
      %% Takt 40 ==================================================
      e16\rest e fis gis a2~ a16 gis! fis! gis
      a8 e\rest e4\rest e16\rest h' a g! a fis! g a
      fis2 e4 fis
      e4~ e16 d e cis d fis e d g!4~
      g8. fis16 d'8. g,16 c!8 fis, h4~
      %% Takt 45 ==================================================
      h16 a h e a,4~ a16 g a d g,4~
      g16 fis g c h a g fis g4 c,16\rest h c! d
      e16 d c h a d c d h8 c\rest e16\rest g fis g
      e8 e\rest e16\rest a g a fis4~ fis16 g e fis
      g16 f e d e4 d16 c d e d f! h, d
      %% Takt 50 ==================================================
      c16 d e8 d4~ d16 c d e d e f8~
      f16 e d8~ d16 c8 h16 c2~
      c16 c \staffdown h a << \new Voice { \stemUp \once \override Beam #'beamed-stem-shorten = #'(0 0 0) h8 a h2 }
                              \new Voice { \stemUp \shiftOn fis16\rest g8 fis!16 g2 } >>
   }
}

tenor = {
   \new Voice \relative g {
      \global
      r2 r4 g
      \repeat volta 2 {
         g4 g h h16\prall a h c
         a8 h16 cis d4~ d c~
         c4~ c16 h a h c8 d16 e d8 c
         %% Takt  5 ==================================================
         h8 c16 d \clef treble e8 fis16 g a8 fis g4
         \clef bass r8 d4 c8 h4. a16 h
         c8 e16 d e8 h c2~
         c4 h8 c16 h a8 g a[ h16 c]
         h4 h c h
         %% Takt 10 ==================================================
         a4 h a2
         g16 a h cis d4~ d8 cis8~ cis16 ais h d
         gis,8 ais16 h ais h gis ais h fis h a g4~
         g16 e a4 g8~ g8 fis4 g8~
         g8 fis16 e fis4 g4. fis16 g
         %% Takt 15 ==================================================
         a4. g16 a h8 c16 d e8 d
         c2 h4. c16 d
         e4 r8 e a, d4 c!8
         h4~ h16 a h c d c h a g f e d
      }
      \alternative {
         {  e4 h8\rest d e fis! g a
            %% Takt 20 ==================================================
            h4 r r g
         }
         {
            e4 r8 r16 c'~ c c h a h g e8
            %% Takt 20 ==================================================
            fis4 a a a
         }
      }
      h4 h16 a h c! a8 h16 cis d a d8~
      d8 cis16 h cis8. d16 h8. cis16 cis8.\prallprall h32 cis
      d2~ d16 cis d h cis4~
      cis16 h cis a h4 a r
      %% Takt 25 ==================================================
      \stemDown r2 h,8\rest cis d16 fis e g
      fis16 e fis a g fis e fis g8 a h8.[ h16]
      e16 d cis e d8 g, fis8. fis16 e8. g16
      fis4 \stemNeutral a h8 cis d4~
      d4 cis d8 a d c
      %% Takt 30 ==================================================
      h8 c d[ e16 d] c8 h c[ d16 c]
      h8 a g4~ g8 fis16 e fis4~
      fis8 g16 a g4 fis8 r r4
      r8 h16 a g8 a16 h e,8 r r4
      r8 a16 h c!8 h16 a h2
      %% Takt 35 ==================================================
      a4 r r d
      e4. d8 c4 h
      cis8 d4 cis8 d4 e8 fis
      g16 g, fis g c!4~ c8 h4 a8
      g8 d\rest h4\rest h16\rest e' d c h a gis fis!
      %% Takt 40 ==================================================
      gis8 r r16 c d e f e d c h8 e~
      e16 f e d e c h a dis4. e8
      fis16 h, a g a c h a g d'! cis h ais fis h8~
      h16 ais h gis ais4 h2
      a!4 h a~ a16 g a fis
      %% Takt 45 ==================================================
      g4~ g16 fis g e fis4~ fis16 e fis dis
      e8. e'16 g fis e dis e h a h g4~
      g4 fis g8 h e d
      cis8 a d e~ e16 e d cis d4~
      d4~ d16 h c! fis,! g2~
      %% Takt 50 ==================================================
      g8. c16~ c c h a h4~ h8. h16
      c8 d16 f, e8 d e16 d e f g f e f
      \stemDown d4. c8 d2
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
   \relative d {
      R1
      \repeat volta 2 {
         r2 r4 d
         d4 d e e
         d8 e16 fis g4~ g fis
         %% Takt  5 ==================================================
         g8 a16 h a8 g fis d g4~
         g8 fis16 e fis8 d g h e, g
         c,8 c'16 h c8 gis a c e, g
         fis8 d g g, d'4 d,4
         g8 d' g4~ g8 fis g e
         %% Takt 10 ==================================================
         c8 d g, c fis,4 h
         e,8 e' fis16 e fis d a'8 a, d4~
         d8 cis16 h cis8 fis, h2
         c!4 h a h
         a2 g4 r
         %% Takt 15 ==================================================
         r2 r8 g g'4~
         g8 fis16 e fis8 d g dis e h
         c4 r8 cis d4 r8 dis
         e4 r8 e h4 r8 h
      }
      \alternative {
         {
            c4  r8 g c,8. c'16 h c a h
            %% Takt 20 ==================================================
            g4 r r2
         }
         {
            c8 g e c g'2
            %% Takt 20 ==================================================
            d4 r r d'
         }
      }
      d4 d fis fis
      e8 fis16 g a e a8~ a g~ g16 fis g e
      h'8 h, h' a gis e a g
      fis8 d g4~ g16 fis g e fis8 cis
      %% Takt 25 ==================================================
      d8 e fis g fis e d cis
      dis8 h cis dis e fis g e
      cis8 a h cis d fis,16 g a8 a
      d,4 r r d'
      e8 fis g4~ g fis
      %% Takt 30 ==================================================
      g8 a h g a g a d,
      g8 fis e d cis a d4~
      d8 dis e ais, h h'4 a!8
      g8 fis e[ fis16 g] a8 a, a' g
      fis8 d e fis g g,16 a h8 cis
      %% Takt 35 ==================================================
      d8 e fis d g a g fis
      e c a h e,4 r
      r4 a' h4. a8
      g4 fis g8 g, a h
      c, c' d e f e f d
      %% Takt 40 ==================================================
      e8 h c f d h e e,
      a8 a'4 g!8 fis! fis,!4 e8
      dis8 e4 dis8 e e'4 d!8
      cis8 h cis fis, h4 r16 e h d
      cis16 a d8~ d16 h e8~ e16 dis e cis! dis8 h
      %% Takt 45 ==================================================
      e8 h cis a d! a h g
      c!8 g a h e, h' e d
      c8 a d d, g d' g4~ \break
      g8 fis16 e fis8 cis d a' d c!
      h8 g c4~ c8 h16 a h8 g
      %% Takt 50 ==================================================
      e8 c g'4~ g8 f16 e f8 d
      e8 h c g e g e c
      g'1
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
   \unfoldRepeats {
      <<
         \new Staff = right {
            \set Staff.midiInstrument = "pan flute"
            \right
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose c c' \right
         }

         \new Staff = left {
            \set Staff.midiInstrument = "pan flute"
            \context Voice = left \left
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose c c' \left
         }

         \new Staff = pedal {
            \set Staff.midiInstrument = "recorder"
            \transpose c c, \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \pedal
         }         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose c c' \pedal
         }
      >>
   }
   \midi{ \tempo 4 = 72 }
}
