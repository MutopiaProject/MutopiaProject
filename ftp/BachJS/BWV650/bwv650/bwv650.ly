\version "2.8.0"

\header {
   mutopiatitle = "Kommst du nun, Jesu, vom Himmel herunter"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 650"
   mutopiainstrument = "Organ"
   date = ""
   source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2006/Apr/07"

   title = "Kommst du nun, Jesu, vom Himmel herunter"
   subtitle = "a 2 Clav. e Pedale"
   composer = "Johann Sebastian Bach"
   opus="BWV 650"

   footer = "Mutopia-2006/04/08-726"
   tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
   \time 9/8
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

sopranA = {
   \relative g' {
      g16 h d h g fis g h d h g fis g8 e' d
      \mark \markup { \tiny \musicglyph #"scripts.segno" } \bar "||"
   }
}

sopranB = {
   \relative d'' {
      d4.~ d16 g h g e d c fis a fis d c
      h16 d g d h a g h d h g fis e8 c' a
      fis4\trill e8 d4. d'~
      %% Takt  5 ==================================================
      d16 e, gis h  d c d gis h gis e d c4 h8
      c4.~ c16 a gis a e a c, e a, c e a
      c16 d, fis a c h c fis a fis d c h4 a8
      h4.~ h16 g fis g d g h, d g, h d f
      e4.~ e16 c' h c a' c, e, c' h c g' c,
      %% Takt 10 ==================================================
      \stemDown d,16 c' h c fis c d, c' h c a' c, d, c' h c fis c
      d,16 h' a h g' h, d, h' a h d h d, h' a h g' h,
      cis16 b' a g fis g c, h' a g fis g h,8 c a
   }
}

sopranC = {
   \relative g' {
      \stemNeutral g4.\fermata_\markup { \italic "Fine." } r r
      g16 h d h g fis g h d h g fis g8 e' d
      %% Takt 15 ==================================================
      d4.~ d16 fis a fis c h c fis a fis h, a
      g8 r r r4. r
      r16 d fis a c h c fis a fis d c h4 a8
      h4.~ h16 g fis g d g h, d g, h d f
      e4.~ e16 c' h c a' c, e, c' h c g' c,
      %% Takt 20 ==================================================
      \stemDown d,16 c' h c fis c d, c' h c a' c, d, c' h c fis c
      d,16 h' a h g' h, d, h' a h d h d, h' a h g' h,
      cis16 b' a g fis g c, h' a g fis g h,8 c a
      \stemNeutral g4. r r
      g16 h d h g fis g h d h g fis g8 e' d
      %% Takt 25 ==================================================
      d4.~ d16 fis a fis c h c fis a fis h, a
      g8 r r r4. r
      r16 d fis a c h c fis a fis d c h4 a8
      h16 d g d h a g h d h g fis e8 c' a
      fis4 e8 d4. d'~
      %% Takt 30 ==================================================
      d16 e, gis h  d c d gis h gis e d c4\trill h8
      c4.~ c16 a gis a e a c, e a, c e a
      c16 dis, fis a c h c fis a fis c h a8 g fis
      g4.~ g16 e dis e h e g, h e g h d!
      c4.~ c16 f e f a f c f e f c' e,
      %% Takt 35 ==================================================
      dis16 h a! h cis h dis h a h e h fis' h, a h a' h,
      g'16 h, a h e h g' h, a h h' h, g' h, a h g' e
      ais,16 g' fis e dis e a, g' fis e dis e g,8 a fis
      e4. r r
      \stemDown r16 c' h c a' c, e, c' h c e c e, c' h c g' c,
      %% Takt 40 ==================================================
      d,16 c' h c fis c d, c' h c a' c, d, c' h c fis c
      d,16 h' a h g' h, d, c' h c a' c, d, d' c d h' d,
      \stemNeutral g,8 r r r4. r
      d16 fis a fis d cis d fis a fis d cis d8 h' a
      a4.~ a16 cis e cis g fis g cis e cis fis, e
      %% Takt 45 ==================================================
      fis16 a d a fis e d fis a fis d cis h8 g' e
      cis4 h8 a4. g'~
      g16 g fis g cis g a, g' fis g e' g, a, g' fis g cis g
      a,16 fis' e fis d' fis, a, fis' e fis a fis a, fis' e fis d' fis,
      gis16 f' e d cis d g, fis' e d cis d fis,8 g e
      %% Takt 50 ==================================================
      d16 fis a d c! h c fis a fis d c h4 a8
      h2.*3/2~
      h16 e g e c! h a d a' c, h a g8 r r
      r4. r16 d fis a c h c fis a fis d c
      h16 d g d h a g h d h g fis g8 e' d
      \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \once \override Score.RehearsalMark #'self-alignment-X = #right
      \mark \markup { \small \italic \raise #-0.5 "dal Segno" \null \tiny \musicglyph #"scripts.segno" } \bar "||"
   }
}

sopranD = {
   \relative g' {
      g4. r4. r4.
   }
}

bassA = {
   \relative g {
      g4 r8 e4 r8 c4 r8
   }
}

bassB = {
   \relative c {
      c'8 h a h a g a g fis
      g4 r8 h,4 r8 c a c
      d4.~ d16 e fis8 d h16 c d8 h
      %% Takt  5 ==================================================
      gis16 a h8 gis e4 r8 e'4 r8
      a,8 c e a4.~ a16 h c8 a
      fis16 g a8 fis d4 r8 d,4 r8
      g8 h d g4.~ g16 a h8 g
      c,16 d e8 c a c e a g a
      %% Takt 10 ==================================================
      d,8 fis a fis4.~ fis8 g a
      d,8 g h g4.~ g8 a h
      e,4 r8 fis4 r8 g8 c, d
   }
}

bassC = {
   \relative g, {
      \override Staff.NoteCollision #'merge-differently-dotted = ##t
      << \new Voice { \stemDown g4.*1/3_\fermata } \new Voice { g8 h d } >> g16 a h8 g fis e d
      g4 r8 h,4 r8 cis4 r8
      %% Takt 15 ==================================================
      c'!8 h a h a g fis d g
      c,8 h a h c d e d c
      d4.~ d8 fis a d4 d,8
      g8 d h g4.~ g16 a h8 g
      c16 d e8 c a c e a g a
      %% Takt 20 ==================================================
      d,8 fis a fis4.~ fis8 g a
      d,8 g h g4.~ g8 a h
      e,4 r8 fis4 r8 g8 c, d
      g, h d g16 a h8 g fis e d
      g4 r8 a4 r8 h4 r8
      %% Takt 25 ==================================================
      c8 h a h a g fis d g
      c,8 h a h c d e d c
      d4.~ d8 fis a d4 d,8
      g4 r8 h,4 r8 c a c
      d4.~ d16 e fis8 d h16 c d8 h
      %% Takt 30 ==================================================
      gis16 a h8 gis e4 r8 e'4 r8
      a,8 c e a4.~ a16 h c8 a
      fis16 g a8 fis dis4 r8 h4 r8
      e,8 g h e4.~ e16 fis g8 e
      a16 h c8 a8 a, c f a g a
      %% Takt 35 ==================================================
      h,8 dis fis a4.~ a8 fis dis
      h8 e g h4.~ h8 g e
      cis4 r8 dis4 r8 e a, h
      e,8 g h e16 fis g8 e c16 d e8 c
      a8 c e a4.~ a8 g a
      %% Takt 40 ==================================================
      d,8 fis a d4.~ d8 c d
      g,8 d h g4.~ g8 h a
      h8 c d e g h e d c
      d4 r8 h4 r8 g4.~
      g8 fis e fis e d e d cis
      %% Takt 45 ==================================================
      d4 r8 fis,4 r8 g4 r8
      a'16 h cis8 a e16 fis g8 e cis16 d e8 cis
      a8 cis e cis4.~ cis8 d e
      a,8 d fis d4.~ d8 e fis
      h,4 r8 cis4 r8 d8 g, a
      %% Takt 50 ==================================================
      d,8 fis a d4.~ d8 e fis
      g16 a h8 a g fis e dis cis h
      e4 r8 fis4 r8 g8 a h
      c8 h a d4 r8 d,4 r8
      g4 r8 e4 r8 c4 r8
   }
}

bassD = {
   \relative g, {
      g4. r4. r4.
   }
}

right = {
   \new Voice {
      \global
      \clef treble
      \sopranA
      \sopranB
      \sopranC
   }
}

left = {
   \new Voice \relative g {
      \global
      \clef bass
      \bassA
      \bassB
      \bassC
   }
}

pedal = {
   \new Voice \relative g {
      \global
      \set tupletNumberFormatFunction = #'()
      \override TupletBracket #'bracket-visibility = ##f
      \clef bass
      \times 3/2 {
         R2.
         R2.*11
         g4 g h8. c32 d
         h4. a8 g fis16 g
         %% Takt 15 ==================================================
         fis4.\trill e8 d4
         e8. fis16 g8. fis16 g8. a16
         \new Voice { << { fis2. \startTrillSpan } { s8 s8\stopTrillSpan s2 } >> }
         g4 r r
         R2.
         %% Takt 20 ==================================================
         R2.*3
         g4 g h8. c32 d
         h4. a8 g4
         %% Takt 25 ==================================================
         fis4. e8 d4
         e8. fis16 g8. fis16 g8. a16
         \new Voice { << { fis2. \startTrillSpan } { s8 s8\stopTrillSpan s2 } >> }
         g4 r r
         R2.
         %% Takt 30 ==================================================
         R2.*8
         h4 c8. h16 a8. h16
         c2.~
         %% Takt 40 ==================================================
         c2.
         h4. c8 d4
         d4 g,8. fis16 g8. c16
         %% Takt 50 ==================================================
         a4 r r
         R2.*7
         d,4 e fis
         g4 a } h8 c d
         \times 3/2 { \new Voice { << { a2. \startTrillSpan } { s8 s8\stopTrillSpan s2 } >> }
         %% Takt 55 ==================================================
         g4 r r
      }
   }
}

pedalMidi = {
   \new Voice \relative g {
      \global
      \clef bass
      R4.*3
      R4.*3
      R4.*3
      R4.*3
      %% Takt 5 ===================================================
      R4.*3
      R4.*3
      R4.*3
      R4.*3
      R4.*3
      %% Takt 10 ==================================================
      R4.*3
      R4.*3
      R4.*3
      g4. g4. h4~ h16 c32 d
      h4.~ h4 a8 g4 fis16 g
      %% Takt 15 ==================================================
      fis4.~ fis4 e8 d4.
      e4 fis8 g4 fis8 g4 a8
      fis2.~ fis4.
      g4. r r
      R4.*3
      %% Takt 20 ==================================================
      R4.*3
      R4.*3
      R4.*3
      g4. g4. h4~ h16 c32 d
      h4.~ h4 a8 g4.
      %% Takt 25 ==================================================
      fis4.~ fis4 e8 d4.
      e4 fis8 g4 fis8 g4 a8
      fis2.~ fis4.
      g4. r r
      R4.*3
      %% Takt 30 ==================================================
      R4.*3
      R4.*3
      R4.*3
      R4.*3
      R4.*3
      %% Takt 35 ==================================================
      R4.*3
      R4.*3
      R4.*3
      h4. c4 h8 a4 h8
      c2.~ c4.~
      %% Takt 40 ==================================================
      c2.~ c4.
      h4.~ h4 c8 d4.
      d4. g,4 fis8 g4 c8
      a4. r r
      R4.*3
      %% Takt 45 ==================================================
      R4.*3
      R4.*3
      R4.*3
      R4.*3
      R4.*3
      %% Takt 50 ==================================================
      R4.*3
      d,4. e4. fis
      g4. a4. h8 c d
      a2.~ a4.
      g4. r r
      R4.*30
      r2. \tempo 4 . = 56 r4 \tempo 4 . = 48 r8
      r2. r4
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
      %% right
      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \new Voice {
            \global
            \sopranA
            \sopranB
            \sopranC
            \sopranB
            \sopranD
         }
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \new Voice \transpose d d'' {
            \global
            \sopranA
            \sopranB
            \sopranC
            \sopranB
            \sopranD
         }
      }

      %% left
      \new Staff  {
         \set Staff.midiInstrument = "pan flute"
         \new Voice {
            \global
            \bassA
            \bassB
            \bassC
            \bassB
            \bassD
         }
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \new Voice \transpose d d' {
            \global
            \bassA
            \bassB
            \bassC
            \bassB
            \bassD
         }
      }

      %% pedal
      \new Staff {
         \set Staff.midiInstrument = "oboe"
         \transpose d d' \pedalMidi
      }
   >>
   \midi{ \tempo 4 . = 60 }
}