%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"

\header {
  %title        = "Catacombae. Sepulcrum romanum."
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  date         = "1874"
  source       = "Pavel Lamm"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2016/12/31-475"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

#(define (myDynamics dynamic)
    (if (equal? dynamic "ffsf")
      0.95
      (default-dynamic-absolute-volume dynamic)))

dimin = \markup { \italic "dim." }
cres = \markup { \italic "cresc." }
pocoCresc = \markup { \whiteout { \italic "poco a poco cresc." } }
attacca = \markup { \italic "     attacca" }
ffsf = #(make-dynamic-script "ffsf")
fsfdim = \markup { \dynamic "fsf" \italic "dim." }
pdim = \markup { \dynamic "p" \italic "dim." }

forceShiftBack = \override NoteColumn.force-hshift = #-1.2
forceShiftOn = \override NoteColumn.force-hshift = #1.2
forceShiftOff = \override NoteColumn.force-hshift = #0
adjustTextY = \once \override TextScript.Y-offset = #-6

slurAdjustOne = \shape #'((0.0 . 0.0) (0.0 . 0.5) (0.0 . 0.5) (-1.0 . 1.0)) Slur
slurAdjustTwo = \shape #'(
  ((0.0 . 0.0) (0.0 . -0.5) (0.0 . 0.0) (0.0 . -0.5))
  ((0.0 . 1.0) (0.0 . 0.0) (0.0 . 0.0) (0.0 . 0.0))
)Slur

upper = \relative c' {
  \tempo "Largo"
  | b2. \ff \fermata
  | g2. \p \fermata
  | g'2. _\cres \fermata
  | <g, b fs'>2. ~ _\ffsf
  | q _\pdim
  |
  <<
    { \forceShiftBack as2. ( _\ffsf | b2. _\pdim ) }
    \\
    { \forceShiftOff <g _~ fs' ^~ >2. | q2. }
  >>
  \break

  \barNumberCheck #8
  | <g cs fs>2. _\ffsf \fermata
  |
  <<
    { \forceShiftOn \slurAdjustOne d'2. _( | b2. ) }
    \\
    { \forceShiftOff <fs _~ fs' ^~>2. _\dimin | q _\pdim }

  >>
  | <fs cs' fs>2 \pp \fermata r4
  | <b, g' b>2. \ff \fermata
  | <bf g' bf>2. \fermata
  | <bf' g' bf>2. \fermata
  |
  <<
    { \forceShiftOn \slurAdjustTwo d2. ( \p | cs2. ) } % bar #16
    \\
    { <e, _~ a ~ e' ^~> | q }
  >>
  |
  <<
    { \forceShiftBack \adjustTextY cs'2. _\pocoCresc | \forceShiftOn d2 ( a'4 ) }
    \\
    { <a ^~ f ^~ a, _~ >2. | q }
  >>
  \clef treble
  |
  <<
    { \forceShiftOff d2. ( | cs2 d4 | c2. _\dimin | bf4 ~ bf8 ) }
    \\
    { <c, d a'>2. ~ | q2. | <d g>2. ~ | q4 ~ q8 }
  >>
  r8 g,4 \ff
  | <g' bf ef g>2. \sf \fermata
  \break

  \barNumberCheck #24
  | <g, c e g>2. \p \fermata
  \clef bass
  | <as e' g>2. ( _\fsfdim
  | <b d fs>2.
  | <g cs e>2. \p
  | <gs b d>2. )
  | <es gs b d>2. ~ \ffsf \> \fermata
  | q2 \p r4
  | \bar "|."
}

lower = \relative c {
  | <b b,>2. _\fermata
  | <g g,>2. _\fermata
  | <g' g,>2. _\fermata
  | <d d,>2. (
  | <cs cs,>2.
  | <c c,>2.
  | <b b,>2.

  \barNumberCheck #8
  | <bf bf,>2. ) _\fermata
  | <a a,>2. (
  | <g g,>2.
  | <fs fs,>2 ) _\fermata r4
  | <g g,>2. _\fermata
  | <g bf, g>2. _\fermata
  | <g' bf, g>2. _\fermata
  | <a, e a,>2. ~
  \break

  \barNumberCheck #16
  | q2.
  | <a f a,>2. ~
  | q2.
  | <a fs a,>2. ~
  | q2.
  | << { <g d'>2. ~ | q4 ~ q8 } \\ { a,2. ~ | a4 ~ a8 } >> r8 <g' g,>4
  | <g' bf ef>2. \fermata
  \break

  | <g, e'>2. _\fermata
  |
  <<
    { bs4 ( cs2 | d2. | e2. | es2. ) }
    \\
    { fs,2. ~ | fs2. ~ | fs2. | fs2. }
  >>
  | <fs b d>2. ~ _\fermata
  | q2 _\attacca r4
  |
}

global = {
  \clef bass
  \time 3/4
  \accidentalStyle piano
}

\bookpart {
  \header {
    subtitle = "No. 8 Catacombae. Sepulcrum romanum."
  }
  \score {
    \new PianoStaff <<
      \set Score.dynamicAbsoluteVolumeFunction = #myDynamics
      \new Staff = "up" {
        %\set Score.dynamicAbsoluteVolumeFunction = #myDynamics
        \global
        \upper
      }
      \new Staff = "down" {
        \global
        \lower
      }
    >>
    \layout {
    }
    \midi {
      \tempo 4 = 60
    }
  }
}
