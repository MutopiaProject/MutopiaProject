\version "2.8.0"

\header {
 mutopiatitle = "Meine Seele erhebt den Herren"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 648"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Apr/19"

 title = "Meine Seele erhebt den Herren"
 subtitle = "a 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus="BWV 648"
 footer = "Mutopia-2006/04/21-742"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key d \minor
   \time 6/8
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)

mmrestdown = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestup = { \once \override MultiMeasureRest #'staff-position = #4 }
mmrestupp = { \once \override MultiMeasureRest #'staff-position = #6 }


sopran = {
   \new Voice \relative a' {
      \global
      \stemUp \tieDown
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      %% Takt 5 ==============================================
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      a4. c
      %% Takt 10 =============================================
      a4. a
      b4. a
      g4. g
      f2.
      \mmrestup R2.
      %% Takt 15 =============================================
      \mmrestupp R2.
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      %% Takt 20 =============================================
      \mmrestup R2.
      \mmrestup R2.
      a4. c
      g4. g
      g4. g
      %% Takt 25 =============================================
      g4. d
      f4. e
      d2.~
      d2.
      \mmrestup R2.
      %% Takt 30 =============================================
      R2.
      R2.
      R2.
      R2.
      R2.
      %% Takt 35 =============================================
      R2.
   }
}

alt = {
   \new Voice \relative a' {
      \global
      \stemDown \tieDown
      \mmrestdown R2.
      \mmrestdown R2.
      \mmrestdown R2.
      \mmrestdown R2.
      %% Takt 5 ==============================================
      \mmrestdown R2.
      r8 r8 a a( gis) d
      cis8 e g g fis c
      h8 cis d d e cis
      d4 c8\rest c4\rest c8\rest
      %% Takt 10 =============================================
      c4\rest c8\rest c\rest c\rest a'
      a8 g d cis d fis
      g8 a b! b8 a16 g f e
      f4 c'8 c b f
      e!8 f! d e4_\trill f8
      %% Takt 15 =============================================
      f4 c'8 c( h) f
      e8 g b! b a es
      d8 f as as g des
      c8 f es d g f
      e!8 fis g g8. a16 fis8
      %% Takt 20 =============================================
      g4 f!8 e a g!
      fis8 gis a a8. h16 gis8
      a4 e8\rest e4\rest e8\rest
      \mmrestdownn R2.
      c8\rest g' c c h f
      %% Takt 25 =============================================
      e8 g b b a es
      d8 cis d cis b'! a
      f8 a d d cis g
      fis8 a c c h f
      e8 g b a4.~
      %% Takt 30 =============================================
      a8 g f f g e
      d4. c4\rest c8\rest
      \mmrestdownn R2.
      \mmrestdownn R2.
      \mmrestdownn R2.
      %% Takt 35 =============================================
      \mmrestdownn R2.
   }
}

tenor = {
   \new Voice \relative d' {
      \global
      R2.
      R2.
      R2.
      R2.
      %% Takt 5 ==============================================
      r8 r d d( cis) g
      fis8 a c! c( h) f
      e8 g b! b a d~
      d g, f e a g
      f4 r8 r4 r8
      %% Takt 10 =============================================
      \clef treble r8 r g' g fis c
      b8 d g e d d
      d4 d8 d c g
      c4 a8 f g as
      g8 c b as b g
      %% Takt 15 =============================================
      f4 r8 r4 r8
      r8 r g' g fis c
      h8 d f! f e b
      a!8 h c c8. d16 h8
      c4 b!8 a d c
      %% Takt 20 =============================================
      h8 cis d d8. e16 cis8
      d4 c!8 h8 e d
      c8 e g! g fis c
      h8 d e f! \appoggiatura e16 d8 \appoggiatura c16 h8
      c8 d e d g, d'
      %% Takt 25 =============================================
      e4 g8 g f c
      b8 a h e, d' cis
      d4 r8 r4 r8
      r8 d a' a g d
      cis8 e g g fis c
      %% Takt 30 =============================================
      h8 cis d d e cis
      d4. r4 r8
      R2.*4
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
   \relative d' {
      r8 r d d( cis-.) g
      fis8 a c! c( h-.) f
      e8 g b! b( a-.) b
      g( f e) a4 a,8
      %% Takt 5 ==============================================
      d4 r8 a4 r8
      d4 dis8 e4 gis,8
      a4 cis8 d4 fis,8
      g4 gis8 a4 a8
      d,4 f'8 f e g,
      %% Takt 10 =============================================
      f8 c' es d4 fis8
      g,4 g'8 g fis c!
      h8 d f f e b
      a8 c es es des c
      b8 as b c4 c,8
      %% Takt 15 =============================================
      f4 r8 d4 r8
      c4 cis'8 d4 fis8
      g4 h,8 c4 e8
      f4 fis8 g4 g,8
      c4 cis8 d4 d,8
      %% Takt 20 =============================================
      g4 gis'8 a4 a,8
      d4 dis8 e4 e,8
      a4 r8 a'4 r8
      r8 g c c h f
      e4 c8 g'4 h,8
      %% Takt 25 =============================================
      c4 e,8 f4 fis8
      g4 gis8 a g a
      d,8 d' f g a b
      c8 fis, d g4 gis8
      a4 cis,8 d4 fis8
      %% Takt 30 =============================================
      g4 gis8 a4 a,8
      d,4 d''8 d( cis) g
      fis8 a c! c( h) f
      e8 g b! b( a) b
      g( f e) a4 a,8
      %% Takt 35 ==============================================
      d4.\fermata r4 r8 \bar "|."
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
         \set Staff.midiInstrument = "flute"
         \sopran
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
%{
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose d d, \pedal
      }
      %}
  >>
   \midi{ \tempo 4 = 60 }
}
