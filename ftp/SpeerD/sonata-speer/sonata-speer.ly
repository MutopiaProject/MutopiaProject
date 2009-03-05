%edited with LilyBeans
\version "2.12.0"
\header {
    mutopiacomposer = "SpeerD"
    mutopiainstrument = "Brass Ensemble"
    %http://icking-music-archive.org/ByComposer/Speer.php
    source = "http://icking-music-archive.org/scores/speer/son_a/01_A_Speer_Partitur_B.pdf"
    style = "Baroque"
    copyright = "Public Domain"
    maintainer = "U. Weigelt"
    moreInfo = "edited by U. Weigelt"
    title = "Sonata in a for 2 cornets and 3 sackbuts and basso continuo"
    composer = "Daniel Speer (1636-1707)"
    copyright = "Public Domain"
 footer = "Mutopia-2009/03/05-1640"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
Sopran  =
\relative c'' {
\key bes \major
\set Staff.instrumentName = "Trumpet 1"
r1 r1 r1 r8 f \f d  bes  ees4 d
c4. c8 bes \breathe f' f f g d d d es  \breathe d d c d  \breathe a a a bes bes c c d4. d8 c bes a g g4. g8 a2
r2 r8 bes16 \p as g8 as16 bes16 c8 g g g8 a2 r2
 r8 d16 \f c16 bes8 c16 d es8 c16 bes a8 bes16 c16 d8 f16 es d8 es16 f16
g8 f es d c4 d c4. c8 d2 \bar ":|:" r1 r r r1
r r r1 r8 bes \f d8. c16 bes8 d c8. c16 d8  \breathe bes \p d8. c16 bes8 d8 c8. c16
d8 bes \mf \breathe d16 c bes16 a bes8 bes es16 d c16 bes c8 c f16 es d c16 d8 d8 g16 f es16 d c8 d c8. c16 d8  \breathe bes \f d8. c16
bes8 d8 c8. c16 d8  \breathe bes8 \p d8. c16 bes8 d c8. c16 d8   \breathe f, \mp  f8 g16 a bes8 bes bes8 bes a4. a8 b2 r r8 c c c8 d8 d d16 c bes16 a
g8  \breathe bes bes8 bes es8 es d4 c8  \breathe g' \f g8 g a8 a a16 g f16 es d8  \breathe d d8 c16 d es8 d c4  bes8  \breathe d bes g8 c2 ~ c4 bes a4. a8 b1 \fermata \bar ":|"
}

Alt  =
\relative c'' {
\key bes \major
\set Staff.instrumentName = "Trumpet 2"
r1 r1 r1 r8 d \f bes f bes c bes bes
bes4 a bes8  \breathe d  c c  bes bes a a g  \breathe g g8. g16 fis8  \breathe fis fis fis g g a a bes4. bes8 a g f f f4 e f2
r2 r8 g16 \p f16 es8 f16 g es8 es es es f2 r r8 bes16 \f a g8 a16 bes c8 es16 d c8 d16 es f8 d16 c bes8 c16 d es8 d c bes8 a4 bes bes a bes2 r1 r1 r r1 r1
r r r8 f8 \f bes8. a16 g8 bes bes8. a16 bes8  \breathe f \p bes8. a16 g8 bes bes8. a16
bes8  \breathe f \mf bes16 a g16 f g8 g c16 bes a16 g a8 a8 d16 c bes a bes8 bes es16 d c bes a8 bes bes a bes  \breathe f \f bes8. a16 g8 bes bes8. a16 bes8  \breathe f \p bes8. a16
g8 bes bes8. a16 bes8  \breathe d, \mp d es16 f g8 g g8 g g4 fis g2 r r8 a a a bes bes bes16 a g f
g8  \breathe g g g c c c b c  \breathe e \f e e f f f16 es d c d8  \breathe bes bes a16 bes g8 bes bes a bes  \breathe bes g es16 f g4 g g2 fis g1 \fermata
}
Tenoro  =
\relative c' {
\clef bass
\key bes \major
\set Staff.instrumentName = "Trambone 1"
r8 d \f bes g c4 bes a4. a8 g8 \breathe d' d d es bes bes bes  c bes bes a bes \breathe bes  bes bes bes a d bes
f'4. ees8 d  \breathe bes  c c d d f f  bes, \breathe  bes es8. es16 a,4. d8 d d f f f4. f8 f4 c4 c4. bes8 a c16 bes a8 bes16 c
d8 f, f f8 g2  r2 r8 c16 \mf bes a8 bes16 c16 d8 a a8 a bes8  \breathe d \f d8 d c4 c8 a a4 d8 d8
g,4 bes f d'8 bes c2 bes r4 bes8 \mf bes a4 a r d8  d c c f f f4 e f f d8. c16 bes8 bes a4 a8 a8
bes8 bes c g a a bes a g8. g16 a8 c bes c d d d4 cis d2 r8 d \f d d es f f8. es16 d8  \breathe d \p d d es f f8. es16
d4  \breathe bes \mf es c8 c f4 d8 d g4 es8 es f4. f8 bes,  \breathe d \f d d es f f8. es16 d8  \breathe d \p d d
es f f8. es16 d4  \breathe d \mp d d d4. c8 b d d d e e e16 d c bes c4 r4 r2
r8 es es es es c d4 e8  \breathe c \f c c c4. c8 d  \breathe f f f g f f8. es16 d8  \breathe f g g c,4 es a, bes8 c d2 d1 \fermata
}
Tenoru  =
\relative c' {
\clef bass
\key bes \major
\stemUp
\set Staff.instrumentName = "Trumbone 2"
r8 bes  g d g a g g g4 fis g8 \breathe bes a a g g f f ees f g c, d \breathe f  f f g c f, g
c4 f, f8  \breathe f8 a a bes g a8 a bes  \breathe  g g8. g16 d4. a'8 g bes a8 c bes4. bes8 c4 c g4. g8 f8 a16 g f8 g16 a16
bes8 d, d d8 es2 r2 r8 a16  g f8 g16 a16 f8 f f8 f g  \breathe bes bes8 bes g4 a8 f f4 bes8 bes
bes4 g a f f4. f8 f2 r4 g8  g fis4 fis r4 bes8  bes a a c c bes4. bes8 a4 a bes8. a16 g8 g fis4 fis8 fis
g d e e f c d f f8. e16 f8 a bes a g f e4. e8 d2 r8 bes'  bes bes bes bes c8. c16 bes8  \breathe bes  bes bes bes bes c8. c16
bes4 r4 r2 r1 r2 r8 bes  bes bes bes bes c8. c16 bes8  \breathe bes  bes bes
bes bes c8. c16 bes4  \breathe bes bes g8 es a4. a8 g b b b c c c16 bes a g a4 r r2
r8 bes bes bes c g g4 g8  \breathe g  g g f4. a8 bes  \breathe d bes bes bes bes c4 d8  \breathe bes bes bes c4 g8 es a4 g fis a g1 \fermata
}
Bass  =
\relative c' {
\clef bass
\key bes \major
\stemDown
\set Staff.instrumentName = "Tuba/Tra.2"
g,2 \f ees8 f g c d2 g,8 g' f f ees4 d c8 d ees f, bes2 g8 a bes ees,
f2 bes4 a g f es8 g es4   d2 g4 f bes2 f8 g a8 bes c2 f,
bes2 es c f d   g \f c,4 f d g
es2 f4 bes,4 f'2 bes,2 g \mf d' bes f' g f g8 g, bes c d2
g,4 c f, bes c f, g2 a d,  bes'2 \f es8 d f f, bes2 es8 \p d f4
bes, r4 r2 r1 r2 r8 bes \f bes bes es d f f, bes4   bes8 \p bes
es d f4 bes,2 g8 \mp a bes c d2 g,   c f bes,
 es c4 g' c,2   f, \f bes es,8 bes' f'4 bes, es c2 d1 g, \fermata

}


\score {
<<
    \context Staff = "Sopran" <<    \Sopran    >>
    \context Staff = "Alt" <<    \Alt    >>
    \context Staff = "Tenoro" <<    \Tenoro \\    >>
   \context Staff = "Tenoru" <<    \Tenoru \\ \Bass   >>



>>
\layout { }
\midi {
 \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
}
}

