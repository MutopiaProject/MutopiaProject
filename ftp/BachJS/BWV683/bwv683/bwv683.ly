\version "2.19.32"

\header {
   mutopiatitle = "Vater unser im Himmelreich"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 683"
   mutopiainstrument = "Organ"
   date = "1739"
   source = "Edition Peters 8660"
   style = "Baroque"
   license = "Creative Commons Attribution-ShareAlike 4.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"

   title = "Vater unser im Himmelreich"
   subtitle = "Manualiter"
   composer = "Johann Sebastian Bach"
   opus = "BWV 683"
 footer = "Mutopia-2016/02/17-1626"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\include "deutsch.ly"

global = {
   \key d \dorian
   \time 6/8
   \accidentalStyle default
   \override Score.MetronomeMark.transparent = ##t
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup   = { \stemUp \tieUp \dotsUp }
halsdown = { \stemDown \tieDown \dotsDown }
up       = { \change Staff = "right" \halsdown }
down     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice = "soprano" \relative a' {
      \voiceOne
      \global
      \halsup
      \partial 4. a4.
      a4. f
      g4. a
      f4. e
      d4 g8\rest a4.
      %% Takt  5 ==================================================
      a4. g
      c4. a
      f4. g
      a4 h8\rest a4 h!8
      c4 cis8 d4 e8
      %% Takt 10 ==================================================
      f4. e
      d4. cis
      d4 d8\rest d4.
      e4. \once \override Dots.extra-offset = #'( -0.55 . 0 ) d
      \once \override NoteColumn.force-hshift = #-0.5 \once \override Dots.extra-offset = #'( -2.1 . 0 ) c4.
         \once \override NoteColumn.force-hshift = #-0.5 \once \override Dots.extra-offset = #'( -1.3 . 0 ) h
      %% Takt 15 ==================================================
      \once \override NoteColumn.force-hshift = #-0.5 \once \override Dots.extra-offset = #'( -1.3 . 0 ) a4.
         \once \override Dots.extra-offset = #'( -2.6 . 0 )h
      a4 d8\rest d4.
      c4. h
      c4. a
      a4. g
      %% Takt 20 ==================================================
      f4 h8\rest a4.
      b4. a4 g8
      f4. g
      f4. e
      d4.\fermata
      \bar "|."
   }
}

alt = {
   \new Voice = "alto" \relative a {
      \voiceTwo
      \global
      \halsdown
      \partial 4. c4.\rest
      e16\rest g f e d cis d4.~
      d16 f e d cis h! cis8 d e
      a,8 d4~ d cis8
      a4 a8\rest c4.\rest
      %% Takt  5 ==================================================
      e16\rest g f e d c! h!8 d g~
      g8 e c~ c16 a h! cis d e
      f4.~ f8 e16 d cis d
      cis4 c8\rest c4.\rest
      g'16\rest b a g f e d8 f a~
      %% Takt 10 ==================================================
      a8 a d~ d cis16 h! cis8
      \once \override Staff.NoteCollision.merge-differently-dotted = ##t d8 f, b~ b a \shiftOn g
      a4 g8\rest e4.\rest
      h'16\rest d c! h a g \halsup \once \override Beam.positions = #'( 0.9 . 2.3 ) fis8 gis \tieDown h~
      h16 h a g! f! e d8 e f!
      %% Takt 15 ==================================================
      e8 a16 gis a8~ \once \override NoteColumn.force-hshift = #1.5 a gis!4
      e4 \halsdown g8\rest e4.\rest
      g16\rest h a g! f e d8 e f
      g8 e c~ c f e f4.~ f8 e16 d e8
      c4 c8\rest c4.\rest
      %% Takt 20 ==================================================
      e16\rest a g f e d e8 cis a~
      a8 d cis d f e~
      e8 cis d~ d4 cis!8
      a4.
     }
}

tenor = {
   \new Voice = "tenor" \relative a {
      \voiceThree
      \global
      \halsup
      \partial 4. a4.\rest
      a4.\rest c16\rest c! b a g f
      e4.~ e16 g f e d cis
      d4 a'8 b g a
      f4 a8\rest c4.\rest
      %% Takt 5 ===================================================
      \once \override MultiMeasureRest.staff-position = #6 R2.
      e16\rest d c b a g f4 e8
      d16 f g a h! cis d a g f e d
      e4 f8\rest \up f16\rest f' e d \down c! h!
      a4.~ a~
      %% Takt 10 ==================================================
      a4 a8\rest a16\rest b a g f e
      f16 cis d e f g! a4 \up e'8
      d4 c8\rest \down c16\rest a g f! e d
      c8 g' c a \up e' f!
      e4 h8\rest \down e4.\rest
      %% Takt 15 ==================================================
      e16\rest d c h a g! f \up f' e d c h
      c4 c8\rest \down c4.\rest
      \once \override MultiMeasureRest.staff-position = #6 R2.
      e16\rest d c b a g f4 a8\rest
      c16\rest f, g a b c d8 c b
      %% Takt 20 ==================================================
      a4 c8\rest c4.\rest
      c4.\rest c16\rest b a g f e
      d4 f8\rest a16\rest cis, d e f g
      a4. b8 g a
      fis4.
   }
}

bass = {
   \new Voice ="bass" \relative h, {
      \voiceFour
      \global
      \halsdown
      \partial 4. h4.\rest
      \once \override MultiMeasureRest.extra-offset = #'( 0 . -1 ) R2.
      g4.\rest a4.~
      a16 c! b a g f g8 e a
      d,16 a' h! cis d e f g f e d cis!
      %% Takt  5 ==================================================
      d8 e f~ f16 a g f e d
      e4.~ e8 d cis
      d4 a8 b4.
      a16 b a g f e d4 g8\rest
      h8\rest h\rest g' f16 g f e d cis
      %% Takt 10 ==================================================
      d16 e d c! b a g8 g\rest g\rest
      gis8 g\rest g\rest h16\rest a h! cis! d e
      fis16 g fis e d c! h!4.
      \once \override Staff.NoteCollision.merge-differently-dotted = ##t c4.~ c16 d c h a gis
      a8 e' a~ a16 a gis fis e d
      %% Takt 15 ==================================================
      c4 f!8 d e4
      a16 a, h c d e f e d e f g
      a8 f d g16 a g f e d
      e4 d8\rest h16\rest f g a h! cis
      d4 c!8 b c c,
      %% Takt 20 ==================================================
      f16 g a b c d es g f es d c
      d8 e!16 f g8 cis,4 h8\rest
      e,16\rest d e f g a b4.
      h16\rest a g f e d \tempo 8 = 114 g8 \tempo 8 = 110 e \tempo 8 = 80 a
      \tempo 8 = 44 d,4._\fermata


   }
}

right = {
   \clef "treble"
   <<
      \sopran
      \alt
   >>
}

left = {
   \clef "bass"
   <<
      \tenor
      \bass
   >>
}

\score {
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
      >>
   }

   \layout{
      indent = 1.0\cm
   }

   \midi {
      \tempo 8 = 124
   }
}



%{
convert-ly.py (GNU LilyPond) 2.19.35  convert-ly.py: Processing `'...
Applying conversion: 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16,
2.13.18, 2.13.20, 2.13.27, 2.13.29, 2.13.31, 2.13.36, 2.13.39,
2.13.40, 2.13.42, 2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7,
2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25,
2.15.32, 2.15.39, 2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4,
2.17.5, 2.17.6, 2.17.11, 2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20,
2.17.25, 2.17.27, 2.17.29, 2.17.97, 2.18.0, 2.19.2, 2.19.7, 2.19.11,
2.19.16, 2.19.22, 2.19.24, 2.19.28, 2.19.29, 2.19.32
%}
