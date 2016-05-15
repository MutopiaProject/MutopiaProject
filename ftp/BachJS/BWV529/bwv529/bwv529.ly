\version "2.18.2"
\include "deutsch.ly"

\header {
  mutopiatitle = "Trio Sonata V in C major BWV 529"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 529"
  mutopiainstrument = "Organ"
  date = ""
  source = "Edition Peters, 8656"
  style = "Baroque"
  license = "Public Domain"
  maintainer = "Urs Metzger"
  maintainerEmail = "urs@ursmetzger.de"
  lastupdated = "2006/Mar/25"

  title = "Sonata V"
  composer = "Johann Sebastian Bach"
  opus="BWV 529"

 footer = "Mutopia-2016/05/15-703"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

globalOne = {
  \key c \major
  \time 3/4
  \accidentalStyle modern
}

rightOne = {
  \globalOne
  \clef treble
  \relative c'' {
    r16^\markup { \hspace #-4 \large "Allegro" } c h c e c h c g c e, g
    \stemUp c,8 \stemDown g'' e g a[ g16 f16] \stemNeutral
    g4 r r
    r8 e c e f[ e16 d]
    %% Takt 5 ==============================================
    e8 g c, e a,16 c d e
    f8 a d, f h,16 d e f
    g8 c16 g e8 g16 e c e f g
    a16 g a b a g f e d c h a
    h16 c h g d' e d h f' g f d
    %% Takt 10 =============================================
    es8 c g' es c'4~
    c16 b a g fis a es d es c g' fis
    g16 d c d h'2~
    h16 c, h c a'2~
    a16 h, a h g'2~
    %% Takt 15 =============================================
    g16 fis e d c h a g fis e d c
    d8 c' h[ e16 d] c h a g
    g4 r r
    r8 h' g h c[ h16 a]
    h16 g fis g h g fis g d g h, d
    %% Takt 20 =============================================
    g,8 d' h d e[ d16 c16]
    d16 h g h e h g h g'4~
    g16 c, a c fis c a c a'4~
    a16 d, h d g d h d h'4~
    h8 a16 gis a8 e c'4~
    %% Takt 25 =============================================
    c8 a fis a d, fis
    g16 a b16 c b a g f e d cis h
    cis8 g e' cis g'4~
    g16 fis e d h'!4~ h16 c h a
    g4~ g8 fis16 e d c h a
    %% Takt 30 =============================================
    g4~ g16 e' d c g'4~
    g16 e a g f e d c h8 f'~
    f16 e d e g e d e c e a, c
    f,8 a' f a b4~
    b16 g f g b g f g e g c, e
    %% Takt 35 =============================================
    a,16a' g a c a g a f a c8~
    c16 b a b c b a b f a b8~
    b16 a g a b a g a f g a8~
    a16 g f g b g f g e f g8~
    g8 c, f a~ a d,~
    %% Takt 40 =============================================
    d8 h e g~ g c,~
    c8 a d f~ f h,
    r8 c e g b[ a16 g]
    a8 f c f a[ g16 f]
    g8 e c e g[ f16 e]
    %% Takt 45 =============================================
    f8 d h d f16 e d e
    f16 e d e c a' g f e d c b
    a16 b g a f g' f e d c h! a
    g16 a f g e f' e d c h a g
    f8 a4 d f8~
    %% Takt 50 =============================================
    f16 c d h c8 d g, h
    c16 g a h c h c e d c h a
    g16 a h c d f e d g f e d
    e8 g d g c, c'~
    c16 h a g fis e d c h a g fis
    %% Takt 55 =============================================
    g4 r8 g c16 h c d
    e16 c h a g f e d c4~
    c4 r8 a' d16 cis d e
    f16 d c! b a g f e d4~
    d16 h' d, h' c, a' c, a' h, a' a, a'
    %% Takt 60 =============================================
    gis16 e fis gis a gis a c h a gis fis
    e fis g! a h d c h e d c h
    c2.~
    c2.~
    c16 a h cis d cis d f e d cis h
    %% Takt 65 =============================================
    a16 h c! d e g f e a g f e
    f16  e d e f e f a g f e d
    e8 a, r4 r4
    r16 d cis d f d cis d a d f, a
    d,8 r r4 r4
    %% Takt 70 =============================================
    r16 c'! h! c e c h c g c e, g
    c,8 r8 r4 r4
    r16 f' e f a f e f c f a, c
    f,8 a' f a b[ a16 g]
    a4 r r
    %% Takt 75 =============================================
    r8 c, a c d[ c16 b]
    c8 f, 16 g a8 c, d h'!
    c16 g a h c h c e d c h a
    h8 g16 a h8 d, e cis'
    d16 a h c! d c d f e d c h
    %% Takt 80 =============================================
    c4 r r
    r8 e c e f[ e16 d]
    e16 a gis a c a gis a e a c, e
    a,8 c a c d[ c16 h]
    c4 r r
    %% Takt 85 =============================================
    R1*3/4
    r16 a h cis d cis d f e d cis h
    a16 h cis d e g f e a g f e
    f16 d cis h a g f e d4~
    d4 r8 g c16 h c d
    %% Takt 90 =============================================
    e16 e d c h a gis fis e4~
    e4 r8 a dis16 cis dis e
    fis8 h,4 e a,8
    h2.~
    h2.~
    %% Takt 95 =============================================
    h16 g a h c h c e d c h a
    g16 a h c d f e d g f e d
    e2.~
    e2.~
    e16 e, fis gis a gis a c h a gis fis
    %% Takt 100 ============================================
    e16 fis gis a h d c h e d c h
    c2.~
    c16 h a h c e d c f e d c
    d2.~
    d16 c h c d f e d g f e d
    %% Takt 105 ============================================
    e16 c h c e c h c g c e, g
    \stemUp c,8 \stemDown g'' e g a[ g16 f16] \stemNeutral
    g4 r r
    r8 e c e f[ e16 d]
    e8 g c, e a,16 c d e
    %% Takt 110 ============================================
    f8 a d, f h,16 d e f
    g8 c16 g e8 g16 e c e f g
    a16 g a b a g f e d c h a
    h16 c h g d' e d h f' g f d
    es8 c g' es c'4~
    %% Takt 115 ============================================
    c16 b a g fis a es d es c g' fis
    g16 d c d h'2~
    h16 c, h c a'2~
    a16 h, a h g'2~
    g16 fis e d c h a g fis e d c
    %% Takt 120 ============================================
    d8 c' h[ e16 d] c h a g
    g4 r r
    r8 h' g h c[ h16 a]
    h16 g fis g h g fis g d g h, d
    g,8 d' h d e[ d16 c16]
    %% Takt 125 ============================================
    d16 h g h e h g h g'4~
    g16 c, a c fis c a c a'4~
    a16 d, h d g d h d h'4~
    h8 a16 gis a8 e c'4~
    c8 a fis a d, fis
    %% Takt 130 ============================================
    g16 a b16 c b a g f e d cis h
    cis8 g e' cis g'4~
    g16 fis e d h'!4~ h16 c h a
    g4~ g8 fis16 e d c h a
    g4~ g16 e' d c g'4~
    %% Takt 135 ============================================
    g16 e a g f e d c h8 f'~
    f16 e d e g e d e c e a, c
    f,8 a' f a b4~
    b16 g f g b g f g e g c, e
    a,16a' g a c a g a f a c8~
    %% Takt 140 ============================================
    c16 b a b c b a b f a b8~
    b16 a g a b a g a f g a8~
    a16 g f g b g f g e f g8~
    g8 c, f a~ a d,~
    d8 h e g~ g c,~
    %% Takt 145 ============================================
    c8 a d f~ f h,
    r8 c e g b[ a16 g]
    a8 f c f a[ g16 f]
    g8 e c e g[ f16 e]
    f8 d h d f16 e d e
    %% Takt 150 ============================================
    f16 e d e c a' g f e d c b
    a16 b g a f g' f e d c h! a
    g16 a f g e f' e d c h a g
    f8 a4 d f8~
    f16 c d h c8 d g, h
    %% Takt 155 ============================================
    c4 r r \bar "|."
  }
}

leftOne = {
  \globalOne
  \clef treble
  \relative e' {
    R1*3/4
    r8 e[ c e] f e16 d
    e16 c h c e c h c \clef bass g c e, g
    c,8 \clef treble g''[ e g] a g16 f16
    %% Takt 5 ==============================================
    g16 e c e a e c e c'4~
    c16 f, d f h f d f d'4~
    d16 g, e g c g e g e'4~
    e8 d16 c d8 a f'4~
    f8 d h d g, h
    %% Takt 10 =============================================
    c16 d es16 f es d c b a g fis e
    fis8 c a' fis c'4~
    c16 h! a h g e' d c h a g fis
    e16 fis d e c d' c h a g fis e
    d e c d h c' h a g fis e d
    %% Takt 15 =============================================
    c8 e4 a c8~
    c16 g a fis g8 a d, fis
    r16 g fis g h g fis g d g h, d
    \stemUp g,8 d'' h d \stemNeutral e[ d16 c16]
    d4 r r
    %% Takt 20 =============================================
    \clef bass r8 h, g h c[ h16 a]
    h8 d g, h e,16 g a h
    c8 e a, c fis,16 a h c
    d8 g16 d h8 d16 h g h c d
    e16 d e f! e d c h a g! fis e
    %% Takt 25 =============================================
    fis16 g fis d a' h a fis c' d c a
    b8 g d' b \clef treble g'4~
    g16 f e d cis e b a b g d' cis
    d4~ d16 h'! a g d'4~
    d16 h e d c h a g fis8 c'~
    %% Takt 30 =============================================
    c16 h a g e'4~ e16 f! e d
    c4. h16 a g f e d
    c8 g' e g a4~
    a16 f e f a f e f d f b, d
    g,8 b' g b c4~
    %% Takt 35 =============================================
    c8 f, a c es[ d16 c]
    d8 b f b d[ c16 b]
    c8 a f a c[ b16 a]
    b8 g e g b[ a16 g]
    a16 f e f a f e f d f h,! d
    %% Takt 40 =============================================
    g,16 e' d e g e d e c e a, c
    \clef bass f,16 d' c d f d c d h d g, h
    e,16 \clef treble e'[ d e] g e d e c e g8~
    g16 f e f g f e f c e f8~
    f16 e d e f e d e c d e8~
    %% Takt 45 =============================================
    e16 d c d f d c d h8 h'
    c16 g f g e'2~
    e16 f, e f d'2~
    d16 e, d e c'2~
    c16 h a g f e d c \clef bass h a g f
    %% Takt 50 =============================================
    g8 \clef treble f' e[ a16 g] f e d c
    c4 r r
    R1*3/4
    r16 c e fis g fis g h a g fis e
    d16 e fis g a c h a d c h a
    %% Takt 55 =============================================
    h16 g f! e d c h a g4~
    g4 r8 c f16  e f g
    a16 a g f e d cis h a4~
    a4 r8 d gis16 fis gis a
    h8 e,4 a d,8
    %% Takt 60 =============================================
    e2.~
    e2.~
    e16 c d e f e f a g f e d
    c16 d e f g b a g c b a g
    a2.~
    %% Takt 65 =============================================
    a2.~
    a16 a, h cis d cis d f e d cis h
    a16 h cis d e g f e a g f e
    f2.~
    f16 e d e f a g f b a g f
    %% Takt 70 =============================================
    g2.~
    g16 f e f g b a g c b a g
    a4 r r
    r8 c, a c d[ c16 b]
    c16 f e f a f e f c f a, c
    %% Takt 75 =============================================
    f,8 a' f a b8[ a16 g]
    a16 c, d e f e f a g f e d
    e8 c16 d e8 g, a fis'
    g16 d e f! g f g b a g f e
    f8 d16 e fis8 a, h gis'
    %% Takt 80 =============================================
    r16 a gis a c a gis a e a c, e
    a,8 c' a c d[ c16 h]
    c4 r r
    r8 e, c e f[ e16 d]
    \clef bass e16 e, fis gis a gis a c h a gis fis
    %% Takt 85 =============================================
    e16 fis gis a h d c h e d cis h
    cis8 e a, d g, g'~
    g16 f! e d cis h a g f e d cis
    d4 r8 \clef treble d' g16 fis g a
    h16 g fis e d c h a g4~
    %% Takt 90 =============================================
    g4 r8 e' a16 gis a h
    c16 a g! f! e d c h \clef bass a4~
    a16 fis' a, fis' g, e' g, e' fis, e' e, e'
    \clef treble dis16 h cis dis e dis e g fis e dis cis
    h16 cis d! e fis a g fis h a g fis
    %% Takt 95 =============================================
    g2.~
    g2.~
    g16 e fis gis a gis a c h a gis fis
    e16 fis g! a h d c h e d c h
    c16 h a h c h c e d c h a
    %% Takt 100 ============================================
    h8 e, r4 r
    r16 a gis a c a gis a e a c, e
    a,8 r r4 r
    r16 g'! fis g h g fis g d g h, d
    g,8 r r4 r4
    %% Takt 105 ============================================
    R1*3/4
    r8 e'[ c e] f e16 d
    e16 c h c e c h c \clef bass g c e, g
    c,8 \clef treble g''[ e g] a g16 f16
    g16 e c e a e c e c'4~
    %% Takt 110 ============================================
    c16 f, d f h f d f d'4~
    d16 g, e g c g e g e'4~
    e8 d16 c d8 a f'4~
    f8 d h d g, h
    c16 d es16 f es d c b a g fis e
    %% Takt 115 ============================================
    fis8 c a' fis c'4~
    c16 h! a h g e' d c h a g fis
    e16 fis d e c d' c h a g fis e
    d e c d h c' h a g fis e d
    c8 e4 a c8~
    %% Takt 120 ============================================
    c16 g a fis g8 a d, fis
    r16 g fis g h g fis g d g h, d
    \stemUp g,8 d'' h d \stemNeutral e[ d16 c16]
    d4 r r
    \clef bass r8 h, g h c[ h16 a]
    %% Takt 125 ============================================
    h8 d g, h e,16 g a h
    c8 e a, c fis,16 a h c
    d8 g16 d h8 d16 h g h c d
    e16 d e f! e d c h a g! fis e
    fis16 g fis d a' h a fis c' d c a
    %% Takt 130 ============================================
    b8 g d' b \clef treble g'4~
    g16 f e d cis e b a b g d' cis
    d4~ d16 h'! a g d'4~
    d16 h e d c h a g fis8 c'~
    c16 h a g e'4~ e16 f! e d
    %% Takt 135 ============================================
    c4. h16 a g f e d
    c8 g' e g a4~
    a16 f e f a f e f d f b, d
    g,8 b' g b c4~
    c8 f, a c es[ d16 c]
    %% Takt 140 ============================================
    d8 b f b d[ c16 b]
    c8 a f a c[ b16 a]
    b8 g e g b[ a16 g]
    a16 f e f a f e f d f h,! d
    g,16 e' d e g e d e c e a, c
    %% Takt 150 ============================================
    \clef bass f,16 d' c d f d c d h d g, h
    e,16 \clef treble e'[ d e] g e d e c e g8~
    g16 f e f g f e f c e f8~
    f16 e d e f e d e c d e8~
    e16 d c d f d c d h8 h'
    %% Takt 155 ============================================
    c16 g f g e'2~
    e16 f, e f d'2~
    d16 e, d e c'2~
    c16 h a g f e d c \clef bass h a g f
    g8 \clef treble f' e[ a16 g] f e d c
    %% Takt 160 ============================================
    c4 r r \bar "|."
  }
}

pedalOne = {
  \globalOne
  \clef bass
  \relative c {
    c4 r r
    r8 c' c, c' c, c'
    c,4 r r
    r8 c c, c' c, c'
    %% Takt 5 ==============================================
    c,4 c' r8 c,
    d4 d' r8 d,
    e4 e' r8 e,
    f4 f' r8 d
    g4 g,2~
    %% Takt 10 =============================================
    g2.~
    g2.~
    g8 d' e fis g h,
    c8 e fis g a c,
    d8 fis g a h d,
    %% Takt 15 =============================================
    e8 g a h c e,
    fis8 d g c, d d,
    g4 r r
    r8 g' g, g' g, g'
    g,4 r r
    %% Takt 20 =============================================
    r8 g' g, g' g, g'
    g,4 g' r8 g,
    a4 a' r8 a,
    h4 h' r8 h,
    c4 c' r8 a8
    %% Takt 25 =============================================
    d4 d,2~
    d2.~
    d2.~
    d8 fis g a h d,
    e8 g a h c fis,
    %% Takt 30 =============================================
    g8 h, c d e g,
    a8 c d e f h,
    c8 c c, c' c, c'
    d,8 d' d, d' d, d'
    e,8 e' e, e' e, e'
    %% Takt 35 =============================================
    f,2.~
    f2.~
    f2.~
    f2.~
    f8 f' d f h,! d
    %% Takt 40 =============================================
    e,8 e' c e a, c
    d,8 d' h d g, h
    c,2.~
    c2.~
    c2.~
    %% Takt 45 =============================================
    c2.~
    c8 g' a h c e,
    f8 a h! c d f,
    g8 h c d e g,
    a8 c d e f a,
    %% Takt 50 =============================================
    h8 g c f g g,
    c8 r e r f r
    h,8 r g r h r
    c8 r h r c r
    fis,8 r d r d' r
    %% Takt 55 =============================================
    g,8 g'4 f!8 e d
    c8 c'4 b8 a g
    f8 a4 g8 f e
    d8 d'4 c8 h! a
    gis8 r a r f! r
    %% Takt 60 =============================================
    e8 r f r fis r
    g8 r gis r e r
    a8 r a, r c r
    e8 r c r e r
    f8 r b, r h r
    %% Takt 65 =============================================
    c8 r cis r a r
    d8 r d, r d'4~
    d4 cis8 a h cis
    d4 r8 e f d
    b'8 r b, r d r
    %% Takt 70 =============================================
    e4 r8 d e c
    a'8 r b r e, r
    f4 f, r
    \stemUp r8 f' f, f' f, f'
    f,4 r r
    %% Takt 75 =============================================
    r8 f' f, f' f, f'
    \stemNeutral f,8 r e r d r
    c8 r h' r a r
    g8 r f r e r
    d8 r c' r h r
    %% Takt 80 =============================================
    a4 r r
    r8 a' a, a' a, a'
    a,4 r r
    r8 a' a, a' a, a'
    a,8 r c r d r
    %% Takt 85 =============================================
    gis,8 r e r g4~
    g4 f8 r g r
    a8 a' a, a' a, a'
    d,,8 d'4 c!8 h a
    g8 g'4 f!8 e d
    %% Takt 90 =============================================
    c8 e4 d8 c h
    a8 a'4 g8 fis e
    dis8 r e r c r
    h8 r c! r cis r
    d8 r dis r h r
    %% Takt 95 =============================================
    e8 r e, r g r
    h8 r g r h r
    c8 r f! r fis r
    g!8 r gis r e r
    a8 r a, r a'4~
    %% Takt 100 ============================================
    a4 gis8 e fis gis
    a4 r8 h, c a
    f'8 r f, r a r
    h4 r8 a h g
    e'8 r f r h, r
    %% Takt 105 ============================================
    c4 r r
    r8 c' c, c' c, c'
    c,4 r r
    r8 c c, c' c, c'
    c,4 c' r8 c,
    %% Takt 110 ============================================
    d4 d' r8 d,
    e4 e' r8 e,
    f4 f' r8 d
    g4 g,2~
    g2.~
    %% Takt 115 ============================================
    g2.~
    g8 d' e fis g h,
    c8 e fis g a c,
    d8 fis g a h d,
    e8 g a h c e,
    %% Takt 120 ============================================
    fis8 d g c, d d,
    g4 r r
    r8 g' g, g' g, g'
    g,4 r r
    r8 g' g, g' g, g'
    %% Takt 125 ============================================
    g,4 g' r8 g,
    a4 a' r8 a,
    h4 h' r8 h,
    c4 c' r8 a8
    d4 d,2~
    %% Takt 130 ============================================
    d2.~
    d2.~
    d8 fis g a h d,
    e8 g a h c fis,
    g8 h, c d e g,
    %% Takt 135 ============================================
    a8 c d e f h,
    c8 c c, c' c, c'
    d,8 d' d, d' d, d'
    e,8 e' e, e' e, e'
    f,2.~
    %% Takt 140 ============================================
    f2.~
    f2.~
    f2.~
    f8 f' d f h,! d
    e,8 e' c e a, c
    %% Takt 145 ============================================
    d,8 d' h d g, h
    c,2.~
    c2.~
    c2.~
    c2.~
    %% Takt 150 ============================================
    c8 g' a h c e,
    f8 a h! c d f,
    g8 h c d e g,
    a8 c d e f a,
    h8 g c f g g,
    %% Takt 155 ============================================
    c4 r r \bar "|."
  }
}

globalTwo = {
  \key a \minor
  \time 6/8
  \accidentalStyle modern
}

rightTwo = {
  \globalTwo
  \clef treble
  \relative a' {
    a16(^\markup { \hspace #-4 \large "Largo" } c32 e f8) r a,8( gis) r
    a16 c32 e a16 a a a~ a16 g32 f g16 b, a g'~
    g16 f32 e f16  a, gis f' e32( d f e d c h! a gis! d' c h)
    c32 h a8 h16 c cis d16 dis~ dis32 e fis g a g fis a
    %% Takt 5 ==============================================
    g8~ g32 fis e fis g16 gis a8~ a32 g fis! g a16 ais
    h8~ h32 a! c h a g fis e g16( fis) r8 h
    e,8 r a~ a16 g fis32 g a8 dis,16
    e32 fis g a b8 r16 cis, d32 e f g as8 r16 h,
    c16 e32 g c8 r32 c, d e d32 c h d h'4~
    %% Takt 10 =============================================
    h32 e, d e a16 g!~ g32 f e g f8 r a~
    a32 d, cis d g16 f~ f32 e d f h,! f' e h c f e c d f e d
    c32 h a h c16 cis d dis e32 d e f h,8.[\prall a16]
    \stemDown a32 h c a gis a d a gis a e' a, gis a f' a, gis a e' a, gis a d h
    \stemNeutral c16 a' h, a' c, a' d, a' c, a' h, a'
    %% Takt 15 =============================================
    \stemDown a,16 e'~ e32 d c h a g! fis e \stemNeutral fis8 c' r
    r16 d~ d32 c h a g f! e d e8 b' r
    r32 a g a d16 c~ c32 h! a c h8 r32 g fis g h16 e~
    e32 c h c f16 e~ e32 d c e d8 r32 h a h d16 g~
    g16 c d, c' e, c' f, c' e, c' d, c'
    %% Takt 20 =============================================
    c,32 d e c h c f c h c g' c, h c a' c, h c g' c, h c f d
    e8~ e32 d c d e f g a f8~ f32 e d e f g a h
    g8~ g32 f a g f e d c e16( d) r8 g
    c,8 r f~ f16 e d32 e f8 h,16
    c8 r r r4 r8
    %% Takt 25 =============================================
    g16( h32 d e8) r g,8( fis) r
    g16 h32 d g16 g g g~ g16 fis32 e fis16 a, g f'~
    f16 e32 d e16 g, fis e' d32 c e d c h a g fis! c' h a
    h32 a g8 a16 b h c cis~ cis32 d e f g f e g
    f32 d, e f g a h cis d8~ d32 c b a b d g, b d, f e d
    %% Takt 30 =============================================
    e32 c d e f g a h! c8~ c32 b a g a c f, a c, es d c
    d8 r32 b' a b d16 g~ g32 e d e a16 g~ g32 f e g
    f4.~ f32 d cis d g16 f~ f32 e d e
    cis16 a' d, a' e a f a g a f a
    e32 a g e f a f d cis e cis a d e d a e' f e a, d e d a
    %% Takt 35 =============================================
    cis32 h a8.~ a32 g a h c16 cis~ cis32 d e f g f e g
    f8 r a~ a32 d, cis d g16 f!~ f32 es d f
    es8 r d cis d\prall e
    a,8~ a32 g a d d,8~ d~ d32 cis h! cis cis16.\prall d32
    \stemUp d16 f'~ f32 e d c! h! a h d \stemNeutral gis,8 a16 h c a
    %% Takt 40 =============================================
    d4.~ d32 a' h c h a gis fis e d c h
    c32( a c e f8) r a,8( gis) r
    a16 c32 e a16 a a a~ a16 g32 f g16 b, a g'~
    g16 f32 e f16  a, gis f' e32 d f e d c h! a gis! d' c h
    c32 h a8 h16 c cis d16 dis~ dis32 e fis g a g fis a
    %% Takt 45 =============================================
    g8~ g32 fis e fis g16 gis a8~ a32 g fis! g a16 ais
    h8~ h32 a! c h a g fis e g16( fis) r8 h
    e,8 r a~ a16 g fis32 g a8 dis,16
    e32 fis g a b8 r16 cis, d32 e f g as8 r16 h,
    c16 e32 g c8 r32 c, d e d32 c h d h'4~
    %% Takt 50 =============================================
    h32 e, d e a16 g!~ g32 f e g f8 r a~
    a32 d, cis d g16 f~ f32 e d f h,! f' e h c f e c d f e d
    c32 h a h c16 cis d dis e32 d e f h,8.[\prall a16]
    a16 f'8 dis e16~ e32 d c h d16 c~ c32 h c a
    \acciaccatura a4 gis2.
  }
}

leftTwo = {
  \globalTwo
  \clef treble
  \relative e' {
    R1*6/8
    R1*6/8
    R1*6/8
    R1*6/8
    %% Takt 5 ==============================================
    e16( g32 h c8) r e,8( dis) r
    e16 g32 h e16 e e e~ e16 d!32 c d16 f,! e d'~
    d16 c32 h c16 e, dis c' h32 a c h a g fis e dis! a' g fis
    g32 fis e8 d!16 cis g' f32 e d8 c16 h f'
    e32 d c8 d32 e f16 fis g gis~ gis32 a h c d c h d
    %% Takt 10 =============================================
    c8 r e~ e32 a, g! a d16 c~ c32 b a c
    b8 r a gis a h
    e,8~ e32 d e a \clef bass a,8~ a~ a32 gis fis gis gis16.\prall a32
    \clef treble a16 a' h, a' c, a' d, a' c, a' h, a'
    \clef bass a,32 h c a gis a d a gis a e' a, gis a f' a, gis a e' a, gis a d h
    %% Takt 15 =============================================
    c32[ a h c] \clef treble d e fis gis a8~ a32 g fis! e fis a d, fis a, c h a
    h32 g a h c d e f! g8~ g32 f e d e g c, e g, b a g
    \clef bass a8 r32 f e f a16 d~ d32 h! a h e16 d~ d32 c h d
    c8 r32 a[ g! a] \clef treble c16 f~ f32 d c d g16 f~ f32 e d f
    e32 d e c h c f c h c g' c, h c a' c, h c g' c, h c f d
    %% Takt 20 =============================================
    e16 c' d, c' e, c' f, c' e, c' d, c'
    c,16( e32 g a8) r c,8( h) r
    \stemUp c16 e32 g c16 c c c~ c16 h32 a h16 d, c b'~
    \stemNeutral b16 a32 g a16 c, h! a' g32 f a g f e d c h f' e d
    e32 d c8 d16 es e f fis~ fis32 g a h! c h a c
    %% Takt 25 =============================================
    h8~ h32 a g a h c d e c8~ c32 h a h c d e fis
    d8~ d32 c e d c h a g h16( a) r8 d
    g,8 r c~ c16 h a32 h c8 fis,16
    g8 r r r4 r8
    r16 a~ a32 g f e d c! b a b8 f' r
    %% Takt 30 =============================================
    r16 g~ g32 f e d c b a g a8 es' r
    r32 d c d g16 f~ f32 e d f e8 r32 c h! c e16 a~
    a32 f e f b16 a~ a32 g f a g4.~
    g32 a g e f a f d cis e cis a d e d a e' f e a, d e d a
    cis16 a' d, a' e a f a g a f a
    %% Takt 35 =============================================
    e16. f32 e d cis h a8 r \clef bass e'4~
    e32 a, g a d16 c!~ c32 b a c b8 r d~
    d32 g, fis g c16 b~ b32 a g b e, b' a e f b a f g b a g
    f32 e d e f16 fis g gis a32[ g a b] e,8.\prall d16
    d8 r f' h,16 e~ e32 d c h a gis a c
    %% Takt 40 =============================================
    fis,32 a gis fis gis a h c d e f d e4.~
    e8~ e32 gis, a h c16 cis d8~ d32 c h c d16 dis
    e8~ e32 d! f e d c h a c16( h) r8 e
    a,8 r d~ d16 c h32 c d8 gis,16
    a8 r r r4 r8 \clef treble
    %% Takt 45 =============================================
    e'16( g32 h c8) r e,8( dis) r
    e16 g32 h e16 e e e~ e16 d!32 c d16 f,! e d'~
    d16 c32 h c16 e, dis c' h32 a c h a g fis e dis! a' g fis
    g32 fis e8 d!16 cis g' f32 e d8 c16 h f'
    e32 d c8 d32 e f16 fis g gis~ gis32 a h c d c h d
    %% Takt 50 =============================================
    c8 r e~ e32 a, g! a d16 c~ c32 b a c
    b8 r a gis a h
    e,8~ e32 d e a \clef bass a,8~ a~ a32 gis fis gis gis16.\prall a32
    a8 c h c16 a \clef treble e'8 dis\prall
    \appoggiatura dis4 e2.
  }
}

pedalTwo = {
  \globalTwo
  \clef bass
  \relative a, {
    a4 a'8 h4 h,8
    c4 d8 e d cis
    d8 c! h c8 d e
    a,8 a' g! fis h h,
    %% Takt 5 ==============================================
    e4 e,8 fis4 fis'8
    g4 a8 h a gis
    a8 g! fis g8 a h
    e,8 g a d, f! g
    c,8 h a h e e,
    %% Takt 10 =============================================
    a8 h cis d4 r8
    d,8 r d'~ d c gis
    a8 g f c'16 d e8 e,
    a4 r8 r4 r8
    a8 r r r4 r8
    %% Takt 15 =============================================
    a8 h c d d, r
    g8 a h c c, r
    f8 r fis g r gis
    a8 r a' h r h,
    c8 r r r4 r8
    %% Takt 20 =============================================
    c,4 r8 r4 r8
    c'4 c,8 d4 d'8
    e4 f8 g f e
    f8 e d e f g
    c,8 c' b a d d,
    %% Takt 25 =============================================
    g4 g,8 a4 a'8
    h8 h, c d c h
    c8 h a h c d
    g,8 g' f! e a a,
    d8 e f g g, r
    %% Takt 30 =============================================
    c8 d e f f, r
    b8 r h c r cis
    d8 r c b r b'
    a4 r8 r4 r8
    a,4 r8 r4 r8
    %% Takt 35 =============================================
    a'8 g f e a a,
    d8 e fis g4 r8
    g,8 r g'~ g f! cis
    d8 c b f16 g a4
    d,8 d'4~ d8 c4~
    %% Takt 40 =============================================
    c8 h a gis e gis
    a4 a'8 h4 h,8
    c4 d8 e d cis
    d8 c! h c8 d e
    a,8 a' g! fis h h,
    %% Takt 45 ==============================================
    e4 e,8 fis4 fis'8
    g4 a8 h a gis
    a8 g! fis g8 a h
    e,8 g a d, f! g
    c,8 h a h e e,
    %% Takt 50 =============================================
    a8 h cis d4 r8
    d,8 r d'~ d c gis
    a8 g f c'16 d e8 e,
    a4 g8 f4.
    e2. \bar "|."
  }
}

globalThree = {
  \key c \major
  \time 2/4
  \accidentalStyle modern
}

rightThree = {
  \globalThree
  \clef treble
  \relative g'' {
    r8^\markup { \hspace #-4 \large "Allegro" } g e a
    f8 d g4~
    g16 c, d e f8 a,
    g8 f' e16\prall d e f
    %% Takt 5 ==============================================
    d8 e16 fis g a h g
    a16 g a h a c h a
    g4~ g16 e d c
    a'16 g fis e d8 g~
    g16 fis g e fis8 h
    %% Takt 10 =============================================
    g8 e a4~
    a16 d, e fis g4~
    g4 fis8.\prallprall e32 fis
    g4 r16 g d f!
    e16 g h, d c e d c
    %% Takt 15 =============================================
    h16 g h d g4~
    g2~
    g4 r16 e h d
    c8 a' r16 d, a c
    h8 g' r16 c, g b
    %% Takt 20 =============================================
    a8 a'16 g f e d c
    h!8 g r16 g' e c
    d16 c d e d g d h
    c16 h c d c e c a
    h16 a h c h e h g
    %% Takt 25 =============================================
    a16 g a h a c a f
    g4~ g16 e' c a
    f8 a~ a g16 f
    e8 c' d, h'
    c,16 d c d e f e f
    %% Takt 30 =============================================
    d16 e d e f g f g
    e8 c' c, c'
    f,8 c' d, h'
    c8 r g' r
    a8 r h r
    %% Takt 35 =============================================
    r8 c16  h a g f e
    d16 e d e f g f g
    c,16 d c d e f e f
    h,16 c h c d e d e
    c8 e a, a'
    %% Takt 40 =============================================
    f a h, gis'
    a,16 h a h c d c d
    h16 c h c d e d e
    c16 h c e a4~
    a8 g!16 f g e a, g'
    %% Takt 45 =============================================
    f4~ f16 d h d
    gis, a h gis e8 a'~
    a16 g! a fis g8 c!
    a8 fis h4~
    h16 e, fis g a8 c,
    %% Takt 50 =============================================
    h8 a' g16 fis g a
    fis4 r16 h a g
    fis16 g fis g a h a h
    a16 gis fis e a4~
    a4 g!~
    %% Takt 55 =============================================
    g4 r16 a g f!
    e16 f e f g a g a
    g16 fis e d g4~
    g4 fis
    g8 d h e
    %% Takt 60 =============================================
    c8 a d4~
    d16 g, a h c4~
    c16 fis, g a h a h c
    a16 d, fis a d4~
    d2~
    %% Takt 65 =============================================
    d4 r16 d a c
    h16 d fis, a g h a g
    fis16 d fis a d4~
    d16 c h d c4~
    c16 d, fis a h4~
    %% Takt 70 =============================================
    h16 a g h a4~
    a16 g fis a g4~
    g4 fis\trill
    g8 d' h e
    cis a d4~
    %% Takt 75 =============================================
    d16 g a b cis, b' a g
    f16 g f e d e f d
    e16 f e d c! d e c
    d8 h h'4~
    h8 a16 gis a4~
    %% Takt 80 =============================================
    a8 g!16 fis g fis e d
    c16 h a g fis e dis cis
    h8 r r4
    r8 fis'' d g
    e8 cis fis a
    %% Takt 85 =============================================
    dis,8 h e4~
    e8 d!16 c! d4~
    d16 h gis h c e a, c
    f! d e f e d cis h
    a8 a' f b
    %% Takt 90 =============================================
    g8 e a4~
    a16 d, e f g8 b,
    a8 g' f16\prall e f g
    e16( d e f e d cis d)
    b'16 cis,( d e d cis h! cis)
    %% Takt 95 =============================================
    d16 c! b a b d g e
    d16( cis h! a) a'8 d,~
    d16 cis h cis d a d8~
    d8 c!16 h c4~
    c4 b~
    %% Takt 100 ============================================
    b8 a16 g a4~
    a4 g~
    g16 e f g f a f d
    e16 d e f e g e cis
    a'8 g16 f g f e g
    %% Takt 105 ============================================
    f16 d f a d4~
    d16 b d g g, d' b g
    e'16 c, e g c4~
    c16 a c f f, c' a f
    d'16 b d f b4~
    %% Takt 110 ============================================
    b16 g e c a'8. f16
    b,16 d c b a8 d
    b8 g c4~
    c16 f, g a b8 d,
    c8 b' a16 g a b
    %% Takt 115 ============================================
    g8 a16 b c d e c
    d16 c d e d f e d
    c4~ c16 a g f
    d' c b a g c b c
    a8 f' f, f'
    %% Takt 120 ============================================
    b,8 f' g, e'
    f16 g f g a b a b
    g16 a g a b c b c
    a8 f f, f'
    b,8 f' g, e'
    %% Takt 125 ============================================
    f8 c f4~
    f4 e~
    e4 d~
    d4 cis8 a'
    d,16 e d e f g f g
    %% Takt 130 ============================================
    e16 f e f g a g a
    f16 g f g a b a b
    g16 a g f e4~
    e8 a f b
    g8 e a4~
    %% Takt 135 ============================================
    a16 d, e f g8 b,
    a8 g' f16\prall e f g
    e8 fis16 gis a h c! a
    h16 a h c h e, fis gis
    a4~ a16 f! e d
    %% Takt 140 ============================================
    h'16 a gis fis e8 a~
    a16 gis fis gis a4~
    a4 g!~
    g4 r16 a g f!
    e16 f e f g a g a
    %% Takt 145 ============================================
    g16 fis e d g4~
    g4 f!~
    f4 r16 g f e
    d16 e d e f g f g
    e4 r8 c
    %% Takt 150 ============================================
    a8 d h g
    c4~ c16 f g a
    h,16 d e f g, h c d
    h4 r16 g' d f
    e16 g h, d c e d c
    %% Takt 155 ============================================
    h16 g h d g4~
    g2~
    g4 r16 e h d
    c8 a' r16 d, a c
    h8 g' r16 c, g b
    %% Takt 160 ============================================
    a8 a'16 g f e d c
    h8 g c4~
    c4 h
    c2\fermata
  }
}

leftThree = {
  \globalThree
  \clef treble
  \relative c'' {
    R2
    R2
    R2
    R2
    %% Takt 5 ==============================================
    r8 c h e
    c8 a d4~
    d16 g, a h c8 e,
    d8 c' h16\prall a h c
    a8 h16 c d e fis d
    %% Takt 10 =============================================
    e16 d e fis e g fis e
    d4~ d16 h a g
    e'16 d c h a8 d
    h16 g h d g4~
    g2~
    %% Takt 15 =============================================
    g4 r16 g d f!
    e16 g h, d c e d c
    h16 g h d g4~
    g16 f e g f4~
    f16 g, h d e4~
    %% Takt 20 =============================================
    e16 d c e d4~
    d16 c h d c4~
    c8 h16 a h4~
    h4 a4~
    a8 g16 f g4~
    %% Takt 25 =============================================
    g4 f~
    f16 d e f e g e c
    d16 c d e d f d h
    g'8 f16 e f e d e
    c8 r r4
    %% Takt 30 =============================================
    R2
    c16 d c d e f e f
    d16 e d e f g f g
    e8 c' c, c'
    f,8 c' d, h'
    %% Takt 35 =============================================
    c8 g c4~
    c4 h~
    h4 a~
    a4 gis8 e
    a16 h a h c d c d
    %% Takt 40 =============================================
    h16 c h c d e d e
    c16 d c d e f e f
    d16 e d c h4~
    h8 e c f
    d8 h e4~
    %% Takt 45 =============================================
    e16 a, h c! d8 f,
    e8 d' c16\prall h c d!
    h8 cis16 dis e fis g e
    fis16 e fis g fis a g fis
    e4~ e16 c h a
    %% Takt 50 =============================================
    fis'16 e dis cis h8 e~
    e16 dis cis dis e4~
    e4 d!~
    d4 r16 e d c
    h16 c h c d e d e
    %% Takt 55 =============================================
    d16 cis h a d4~
    d4 c!~
    c4 r16 d c h
    a16 h a h c d c d
    h4 r8 g
    %% Takt 60 =============================================
    e8 a fis d
    g4~ g16 c d e
    fis,16 a h c d, fis g a
    fis4 r16 d'a c
    h16 d fis, a g h a g
    %% Takt 65 =============================================
    fis16 d fis a d4~
    d2~
    d4 r16 h fis a
    g8 e' r16 a, e g
    fis8 d' r16 g, d f!
    %% Takt 70 =============================================
    e8 e'16 d c h a g
    fis8 d r16 d c h
    e16 d c h a h c a
    h4 r
    R2
    %% Takt 75 =============================================
    R2
    r8 a' f b
    gis8 e a4~
    a16 d e f gis, f' e d
    c16 d c h a h c a
    %% Takt 80 =============================================
    h16 c h a g! a h g
    a8 fis fis'4~
    fis8 e16 dis e4~
    e8 d!16 cis d c! h a
    g16 fis e d c! h a g
    %% Takt 85 =============================================
    fis8 h' g c
    a8 fis h d
    gis,8 e a4~
    a8 g!16 f! g4~
    g16 e cis e f a d, f
    %% Takt 90 =============================================
    b16 g a b e, g f e
    d4 r
    R2
    r8 a' f b
    g8 e a4~
    %% Takt 95 =============================================
    a16 d, e f g8 b,
    a8 g' f16\prall e f g
    e4 r16 a f d
    e16 d e f e a e c
    d16 c d e d f d b
    %% Takt 100 ============================================
    c16 b c d c f c a
    b16 a b c b d c b
    a4~ a16 f' d b
    g'8 \clef bass b,~ b a16 g
    f8 d' e, cis'
    %% Takt 105 ============================================
    d4 r16 a f d
    b'16 g b d \clef treble g4~
    g16 e g c c, g' e c
    a'16 f, a c f4~
    f16 d f b b, f' d b
    %% Takt 110 ============================================
    g'4~ g16 c, f8~
    f16 b, a g f d' e f
    g16 f g a g b a g
    f4~ f16 d c b
    g'16 f e d c8 f~
    %% Takt 115 ============================================
    f16 e f d e8 a
    f8 d g4~
    g16 c, d e f4~
    f4 e8.\prallprall d32 e
    f16 g f g a b a b
    %% Takt 120 ============================================
    g16 a g a b c b c
    a8 f f, f'
    b,8 f' g, e'
    f8 r c' r
    d8 r e r
    %% Takt 125 ============================================
    r8 f16 e d c b a
    g16 a g a b c b c
    f,16 g f g a b a b
    e,16 f e f g a g a
    f8 a d, d'
    %% Takt 130 ============================================
    b8 d e, cis'
    d,16 e d e f g f g
    e16 f e f g a g a
    f16 e f a d4~
    d8 c!16 b c a d, c'
    %% Takt 135 ============================================
    b4~ b16 g e g
    cis,16 d e cis a8 d'~
    d16 c! d h! c8 f!
    d8 h! e4~
    e16 a, h c d8 f,
    %% Takt 140 ============================================
    e8 d' c16\prall h c d
    h4 r16 e d c
    h16 c h c d e d e
    d16 cis h a d4~
    d4 c!~
    %% Takt 145 ============================================
    c4 r16 d16 c h
    a16 h a h c d c d
    c16 h a g c4~
    c4 h
    c8 g e a
    %% Takt 150 ============================================
    f8  d g4~
    g16 c, d e f4~
    f16 h, c d e d e f
    d16 g, h d g4~
    g2~
    %% Takt 155 ============================================
    g4 r16 g d f
    e16 g h, d c e d c
    h16 g h d g4~
    g16 f e g f4~
    f16 g, h d e4~
    %% Takt 160 ============================================
    e16 d c e d4~
    d16 c' h a g f e f
    e16 d a' g f e d f
    e2\fermata
  }
}

pedalThree = {
  \globalThree
  \clef bass
  \relative c {
    c4 c'~
    c8 h16 a h8 g
    a4 r8 d
    h8 g c c,
    %% Takt 5 ==============================================
    g'2~
    g8 fis16 e fis8 d
    e4 r8 a
    fis8 d g g,
    d'2~
    %% Takt 10 =============================================
    d8 c16 h c8 a
    h4 r8 e
    c8 a d d,
    g4 r8 h
    c8 d e f
    %% Takt 15 =============================================
    g8 a h g
    c8 g e c
    g'4 r8 e
    a8 c, d f
    g8 g, c e
    %% Takt 20 =============================================
    f2~
    f8 g e a
    f8 d g4
    r8 e c f
    d8 h e4
    %% Takt 25 =============================================
    r8 c a d
    h8 g c4~
    c4 h
    c8 a f g
    c8 r a r
    %% Takt 30 =============================================
    f8 r g r
    c,8 r r4
    R2
    c'16 d c d e f e f
    d16 e d e f g f g
    %% Takt 35 =============================================
    e8 c' c, c'
    f,8 c' d, h'
    e,8 h' c, a'
    d,8 a' h, gis'
    a,8 r f r
    %% Takt 40 =============================================
    d8 r e r
    a8 e' a4~
    a4 gis
    a4 r16 d, c d
    h4 r8 cis
    %% Takt 45 =============================================
    d4 r8 d'~
    d8 gis, a dis,
    e2~
    e8 d!16 c d8 h
    c4 r8 fis
    %% Takt 50 =============================================
    dis8 h e e,
    h'8 h' g c
    a8 fis h4
    r8 e, c f!
    d8 h e4
    %% Takt 55 =============================================
    r8 a f b
    g8 e a4
    r8 d, h! e
    c8 a d4
    g,4 r
    %% Takt 60 =============================================
    r4 r8 d'
    h8 e c a
    d8 fis, g c,
    d4 r8 fis
    g8 a h c
    %% Takt 65 =============================================
    d8 e fis d
    g8 d h g
    d'4 r8 h
    e8 g, a c
    d8 d, g h
    %% Takt 70 =============================================
    c2~
    c8 d h e
    c8 a d d,
    g4 g'~
    g8 f!16 e f8 b
    %% Takt 75 =============================================
    g8 e a a,
    d2~
    d8 c f a,
    h8 d e e,
    a8 e' c f
    %% Takt 80 =============================================
    dis8 h e4~
    e dis8 h'
    g8 c a fis
    h2~
    h4 a~
    %% Takt 85 =============================================
    a16 fis g e c' g a e
    fis16 e fis e f e f d
    e8 e c f
    d8 h e g
    cis,8 a d4~
    %% Takt 90 =============================================
    d8 c!16 b c8 a
    b4 r16 e16 d e
    cis16 e a, cis d,8 d'~
    d8 cis d g
    e8 b' a g
    %% Takt 95 =============================================
    f8 d r4
    R2
    r8 a' f b
    g8 e a4
    r8 f d g
    %% Takt 100 ============================================
    e8 c f4
    r8 d e g
    cis,8 a d4~
    d4 cis
    d8 b g a
    %% Takt 105 ============================================
    d,8 d' f d
    r8 g b g
    r8 c, e c
    r8 f a f
    r8 b, d b
    %% Takt 110 ============================================
    e8 c f a
    d,8 e f4~
    f8 e16 d e8 c
    d4 r8 g
    e8 c f f,
    %% Takt 115 ============================================
    c'2~
    c8 b'16 a b8 g
    a4 r8 d
    b8 g c c,
    f8 r d r
    %% Takt 120 ============================================
    g8 r c, r
    f8 r r4
    R2
    f16 g f g a b a b
    g16 a g a b c b c
    %% Takt 125 ============================================
    a8 f g a
    b8 d, g e
    a8 c, f d
    g8 h,! e cis
    d8 r b r
    %% Takt 130 ============================================
    g8 r a r
    d,8 a' d4~
    d4 cis
    d4 r16 g f g
    e4 r8 fis
    %% Takt 135 ============================================
    g4 r8 g~
    g8 cis, d gis,
    a2~
    a8 g'!16 f g8 e
    f4 r8 h
    %% Takt 140 ============================================
    gis8 e a a,
    e8 e' c f
    d8 h e4
    r8 a f b!
    g8 e a4
    %% Takt 145 ============================================
    r8 d, h! e
    c8 a d4
    r8 g e a
    f8 d g g,
    c4 r
    %% Takt 150 ============================================
    r4 r8 g'
    e8 a f d
    g8 h, c fis,
    g4 r8 h
    c8 d e f
    %% Takt 155 ============================================
    g8 a h g
    c8 g e c
    g'4 r8 e
    a8 c, d f
    g8 h, c e
    %% Takt 160 ============================================
    f2~
    f8 g e a
    f8 d g g,
    <c, c'>2\fermata \bar "|."
  }
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 20)

\book {
  \score {
    <<
      \new PianoStaff {
        \set PianoStaff.instrumentName = \markup { \large "Manual" }
        <<
          \context Staff = rightOne {
            \context Voice = rightOne \rightOne
          }
          \context Staff = leftOne {
            \context Voice = leftOne \leftOne
          }
        >>
      }
      \context Staff = unten {
        \set Staff.instrumentName = \markup { \large "Pedal" \hspace #2 }
        \context Voice = pedalOne \pedalOne
      }
    >>

    \layout{}
  }

  \score {
    <<
      \new Staff {
        \set Staff.midiInstrument = "harpsichord"
        \set Staff.midiPanPosition = 0.8
        \rightOne
      }
      \new Staff {
        \set Staff.midiInstrument = "harpsichord"
        \set Staff.midiPanPosition = -0.8
        \leftOne
      }
      \new Staff {
        \set Staff.midiInstrument = "harpsichord"
        \pedalOne
      }
    >>

    \midi {
      \tempo 4 = 80
    }
  }

  \pageBreak

  \score {
    <<
      \new PianoStaff {
        <<
          \context Staff = rightTwo {
            \context Voice = rightTwo \rightTwo
          }
          \context Staff = leftTwo {
            \context Voice = leftTwo \leftTwo
          }
        >>
      }
      \context Staff = unten {
        \context Voice = pedalTwo \pedalTwo
      }
    >>
    \layout{
      indent = 1.0\cm
    }
  }

  \score {
    <<
      \new Staff {
        \set Staff.midiInstrument = "harpsichord"
        \set Staff.midiPanPosition = 0.8
        \rightTwo
      }
      \new Staff {
        \set Staff.midiInstrument = "harpsichord"
        \set Staff.midiPanPosition = -0.8
        \leftTwo
      }
      \new Staff {
        \set Staff.midiInstrument = "harpsichord"
        \pedalTwo
      }
    >>

    \midi {
      \tempo 8 = 56
    }
  }

  \pageBreak

  \score {
    <<
      \new PianoStaff {
        <<
          \context Staff = rightThree {
            \context Voice = rightThree \rightThree
          }
          \context Staff = leftThree {
            \context Voice = leftThree \leftThree
          }
        >>
      }
      \context Staff = unten {
        \context Voice = pedalThree \pedalThree
      }
    >>
    \layout{
      indent = 1\cm
    }
  }

  \score {
    <<
      \new Staff {
        \set Staff.midiInstrument = "harpsichord"
        \set Staff.midiPanPosition = 0.8
        \rightThree
      }
      \new Staff {
        \set Staff.midiInstrument = "harpsichord"
        \set Staff.midiPanPosition = -0.8
        \leftThree
      }
      \new Staff {
        \set Staff.midiInstrument = "harpsichord"
        \pedalThree
      }
    >>

    \midi {
      \tempo 4 = 82
    }


  }
}
