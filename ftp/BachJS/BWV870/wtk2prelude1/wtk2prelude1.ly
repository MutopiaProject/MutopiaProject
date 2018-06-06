\version "2.18.2"
\language "deutsch"

\header {
  title = "Praeludium I"
  composer = "J. S. Bach (1685-1750)"
  opus = "BWV 870-Praeludium"

  mutopiatitle = "Das Wohltemperierte Clavier II, Praeludium I"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 870"
  style = "Baroque"
  source = "Bach-Gesellschaft, Leipzig: Breitkopf und Härtel, 1866"
  maintainer = "Urs Metzger"
  maintainerEmail = "urs@ursmetzger.de"
  license = "Public Domain"
  footer = "Mutopia-2018/06/01-2223"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

\paper {
  system-count = #12
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  left-margin = 7.5 \mm
  right-margin = 7.5 \mm
}

global = { \mergeDifferentlyDottedOn }
halsup = { \stemUp \tieUp \dotsUp }
halsdown = { \stemDown \tieDown \dotsDown }
halsneutral = { \stemNeutral \tieNeutral \dotsNeutral }
staffup = { \change Staff = "right" \halsdown }
staffdown = { \change Staff = "left" \halsup }
bps = #(define-music-function
        (parser location pos) (pair?)
        #{ \once \override Beam.positions = #pos #})
ncs = #(define-music-function
        (parser location offset) (number?)
        #{ \once \override NoteColumn.force-hshift = #offset #})
tsp = #(define-music-function
        (parser location value) (number?)
        #{ \once \override Tie.staff-position = #value #})

voiceA = \relative c'' {
  r16 c d e g, e' f, d' e,32 c' h a g16 b e, g c, b'
  a32 g f e f16 a d, f a, c h d e f g, f' e d
  \halsup \shape #'((-0.8 . 0.9) (-3 . 2.6) (0 . 2.5) (0 . 0.8)) Tie e1~
  e4~ e16 d8 c16 h! d g8~ g16 g f e

  \barNumberCheck 5
  f4~ f16 f e d e2
  d4~ d16 d e g c,4~ c16 a'32 g a16 c,
  \tsp -4.5 h4~ h16 d e f! g4~ g8. g16
  f2 e4~ e16 e f g
  a32 g f e f16 a d, c' h a gis4~ gis16 e a8~

  \barNumberCheck 10
  a8 a g! f e8. e16~ e e d cis
  d16 a' h cis d f8.~ f16 f es d es g cis, d
  cis4~ cis8 d~ d16 d cis h cis d e8~
  e16 a, d cis d8. e16 f4~ f16 e f8
  e4~ e16 e a gis a4~ a16 g a f

  \barNumberCheck 15
  d4~ d16 f! e g c,!4~ c8. es16
  d4~ d16 f8 e16 f8. c16 f a d, f
  h,!16 d g8~ g16 g f e f4~ f16 d f8~
  f16 f e8~ e16 es d cis d4~ d8. d16
  cis8 c~ c8. c16 h8 b~ b8. b16

  \barNumberCheck 20
  a2 g4~ g16 g a c
  f,4~ f16 d'32 c d16 f, e4~ e16 g a h
  c4~ c8. c16 h4~ h8 cis32 d e16
  a,4~ a16 a b c d32 c b a b16 d g, f' e d
  cis4~ cis16 a d8~ d d c b!

  \barNumberCheck 25
  a8. a16~ a a g fis g d' e fis g b8.~
  b16 b as g as c fis, g fis4~ fis8 g~
  g16 g fis e fis g a8~ a16 d, g fis g8. a16
  b4~ b16 a b8 a4~ a8. as16
  <<
    {
      g4~ g8. g16 fis4~ fis16 e f8~
      \hideNotes f8
    }
    \\
    {
      s2. \tieDown \tsp 1.0 d4~
      \oneVoice \halsup \bps #'(4.6 . 4.1) <d f>8 <c e>16 <h d> \shiftOff <c e>4~ e16 e d c d f a c,
    }
  >>

  \barNumberCheck 31
  h!4 c~ c~ c8. h16
  c2 d16\rest c d e f a d, f
  b,4~ b16 b8 g16~ g e f g a8. h!16
  <c, e g c>1 ^\fermata
}

voiceB = \relative c' {
  s1
  s1
  a16\rest \halsup c8.~ c4~ c2
  \halsdown a2 g8. h16 c4~

  \barNumberCheck 5
  c16 c d a h4 c2~
  c16 c h a h4 a2~
  a16 a g fis g8 a\rest c16\rest e h d cis e a,8~
  a4. d8~ d16 d c! h c4~
  c4 d~ d16 f e d c8. c16

  \barNumberCheck 10
  h4. d8~ d16 d cis8 a4~
  a16 c\rest c8\rest e8\rest a16 c b2~
  b16 b a8~ a16 a8 gis16 a4~ a8. g16
  f4~ f16 f b8 a8. a16 d8. d16~
  d16 d c h c4~ c16 cis d e a,4~

  \barNumberCheck 15
  a16 fis g a b8 g\rest e\rest b'~ b16 a32 g a16 c
  b4. b8~ b16 g a8~ a f
  g8. h16 cis4 d8~ d32 c b a b8. a16
  gis8. gis16 a4~ a16 c! b a b fis g8~
  g8. b16 a g fis es d e f a g f e des

  \barNumberCheck 20
  c4. f8~ f16 f e d e4
  d2~ d16 d c h c8 c\rest
  e16\rest a e g fis a d,8~ d4~ d8 g~
  g16 g f e f2 g4~
  g16 b a g f8. f16 e4. g8~

  \barNumberCheck 25
  g16 g fis8 d4~ d16 e\rest e8\rest g\rest d'16 f
  es2~ es16 es d8~ d16 d8 cis16
  d4~ d8. c!16 b8 c~ c16 b es8
  d8. d16 g8. g16~ g g f e f4~
  f16 f e d e4~ e16 es d c \once \override Rest.extra-offset = #'(0.8 . 0) e,8\rest g~

  \barNumberCheck 30
  g4~ g8 b a4~ a8. a16
  g4 g~ g16 g f e d e f8~
  f16 f e d e g c, e s2
  e16\rest a g f g8 e c4 c16\rest f d8
}

voiceC = \relative c' {
  s1
  s1
  \halsdown s16 c h a g4~ g2
  \staffdown f16\rest c d e f8 e d4 e

  \barNumberCheck 5
  d2 c16 f\rest f8\rest a4\rest
  a2\rest a4\rest a8\rest d,~
  d4. f8\rest f8\rest e4.~
  e16 a, h cis d e'\rest c8\rest s2
  s1

  \barNumberCheck 10
  a2\rest a8\rest a16\rest g~ g g f e
  f2 g~
  g8. g16 fis8 f e d e a~
  a8 b a g f16 g a8~ a16 gis a8
  a16\rest e fis gis a4~ a16 a h cis d4~

  \barNumberCheck 15
  d16 d e fis g8. f16 e4~ e16 c f8~
  f4 b,8 c~ c8. a16 d4~
  d4 g,8 a~ a16 e f a d8. c16
  h!8 c\rest c4\rest a16\rest d, e fis g a b8~
  b16 a e! g fis g a8~ a16 g d f e f g8~

  \barNumberCheck 20
  g16 c, d e f g'\rest c,8\rest a2\rest
  a4\rest a8\rest g~ g4. a8\rest
  a8\rest a4.~ a16 d, e fis g g'\rest c,8\rest
  s1
  s1

  \barNumberCheck 25
  c8\rest c16\rest c~ c c b a b2
  c2~ c8. c16 h!8 b
  a8 g a d~ d es d c
  b16 c d8~ d16 cis d8 c16\rest a h cis! d g\rest e8\rest
  c16\rest g a h c e\rest c8\rest c8\rest a~ a16 g d f

  \barNumberCheck 30
  e16 f g8~ g16 c\rest c8\rest a4\rest e'16\rest a, d8~
  d4 e~ e16 e, d c g'4~
  \tieDown \tsp 2 g2~ \stemDown \shiftOff g8 f16 e d e \tsp 2 f8~
  \ncs 0.1 \bps #'(-1.5 . -2.3) f8 e16 d e4 <f a>8 <e g> <d f>4
}

voiceD = \relative c, {
  <c c'>1~
  <c c'>1~
  <c c'>4 \halsdown r16 f' e d c32 d c h c16 e g, b a g
  f2~ f4 e8 a

  \barNumberCheck 5
  d,4 g c,16 g' a h c e a, c
  fis,8 d g4~ g16 a32 h c d e16 fis,4
  g4. f!8 e g a cis
  d,4~ d16 f' h, d \halsneutral gis,8 e a g
  f8 e f d e2~

  \barNumberCheck 10
  \halsdown e16 h' c d e g h, d cis e a,8 d4~
  d8 a b d g,2
  a2. a4
  d2~ d8. c!16 h!8. a16
  gis8 g\rest g16\rest c f e f4~ f16 e f d

  \barNumberCheck 15
  b'2~ b16 a g b a4~
  a16 g f a g8 <c, g'> f2~
  f16 f e d e8 a, d2~
  d16 d c h! c8 f b,4~ b8. es16
  a,4~ a8. fis'!16 g,4~ g8. e'16

  \barNumberCheck 20
  f,4~ f16 a' d, f h,8 g c4~
  c16 d32 e f g a16 h,4 c4. h8
  a8 c d fis g,4~ g16 h' e, g
  \halsneutral cis,8 a d c b a b g
  a2~ a16 e' f g a c e, g

  \barNumberCheck 25
  \halsdown fis16 a d,8 g4~ g8 d es g
  c,2 d~
  d4 d g2~
  g8. f16 e!8. d16 cis8 d\rest d16\rest a' d, f
  h,8 h\rest h16\rest g' c, e a,4 h

  \barNumberCheck 30
  c4~ c16 e a, c f, c' d e f4~
  f16 a g f e g c, e g,2
  \shape #'((0 . 0) (0 . -1.5) (0 . -1.5) (0 . 0)) Tie c1~
  \shiftOff \ncs -1 \shape #'((0 . 0) (0 . -1.5) (0 . -1.5) (0 . 0)) Tie c1~
  <c e g>1 _\fermata \bar "|."
}

voiceX = \relative d'' {
  s1 * 31
  \staffdown s2 \shiftOff a,2
  g4~ g16 f g8 s4 c8\rest as
}

\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \context Staff = "right" <<
        \global \clef "treble"
        \voiceA
        \voiceB
        \voiceC
      >>
      \context Staff = "left" <<
        \global \clef "bass"
        \voiceD
        \voiceX
      >>
    >>
  }
  \midi { \tempo 4 = 70}
  \layout { } % \indent = 7 \mm
}
