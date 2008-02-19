\version "2.10.33"

\header {
   mutopiatitle = "Fantasia super: Komm Heiliger Geist, Herre Gott"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 651"
   mutopiainstrument = "Organ"
   date = "1708"
   source = "Autograph"
   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2005/Nov/20"

   title = "Fantasia super: Komm Heiliger Geist, Herre Gott"
   subtitle = "\"Fantasia sup Kom Heiliger Geist. canto fermo in Pedal. Di J S Bach\""
   composer = "Johann Sebastian Bach"
   opus = \markup { \lower #2 "BWV 651" }

 footer = "Mutopia-2008/02/19-633"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

\paper {
   head-separation = 0.2 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

staffup = { \change Staff = "right" }
staffdown = { \change Staff = "left" }

halsup = { \stemUp \tieUp \dotsUp }
halsdown = { \stemDown \tieDown \dotsDown }
halsneutral = { \stemNeutral \tieNeutral \dotsUp }
shiftnote = #(define-music-function (parser location xy)
                                (number-pair?)
   #{
      \once \override Stem     #'extra-offset = #$xy
      \once \override NoteHead #'extra-offset = #$xy
   #})

global = {
   \key f \major
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

sopran = {
   \new Voice \relative f' {
      \global
      s1 * 3
      r16 f a c f a, c f a f d f b, a' g f
      e8 b'4 a16 g f g e f g f e d
      \halsup
      c16 d es4 d16 c b c a b c b a g
      \tieUp
      \once \override Tie #'staff-position = #-1 f2~ \once \override Tie #'staff-position = #-1 f4~ f8. b16~
      b16 b8 b16 a4~ a8 d g, c~
      c16 c h a h c a h c g c e g c, e g
      %% Takt 10 =============================================
      a=''16 f c f b,! a' g f e!8 c f es~
      es16 es d c d4~ d8 c~ c16 c h8
      c8 b! a4 g2~
      g4 r4 r2
      \once \override MultiMeasureRest #'staff-position = #4 R1
      d'2\rest d16\rest g, c e g c, e g
      a f d f h, a' g f e8 c16 e a4~
      a8 g16 f h4 c8 g b a~
      a8 g4 f16 es d16 a b d g4~
      g16 g, a c f4~ f8 es16 d \once \override Tie #'staff-position = #4 es4~
      %% Takt 20 =============================================
      es=''8 d16 c d4 c4~ c8 b~
      b8 a16 g a8 c~ c b16 a g a b8~
      b8 a g8. a16 f4~ f16 a g f
      e16 g c e g c, e g a f d f h, a' g f
      e8 fis g4~ g8 fis!16 g a4~
      a8 g4 f!8 e!16 f g4.~
      g8 f f\rest f f e f\rest e
      e d f\rest d d c~ c16 d f a
      h,16 d g8~ g16 e c e a, c f e f c h! f'
      e16 g e c a e' c a f a d c d b! g b
      %% Takt 30 =============================================
      e,='8 r r f' d b'4 a16 g
      f16 g e f g f e d c d es4 d16 c
      b16 c a b c b a g f8 b e, g
      f8 a4 g16 f e c e g c g c d
      es16 c a c fis, es' d c h g h d \once \override Tie #'staff-position = #4 e4~
      e8 d4 c8~ c16 a h d f8 h,
      c4 d4 e16 c a c f, e' d c
      h16 c a h c a g f e8 c'4 h16 a
      g16 a f g a g f e d e f4 e16 d
      e16 c e g c f, a c d b! g b e, d' c b
      %% Takt 40 =============================================
      a8 d8\rest d2 e4
      f8 f\rest f4\rest f8\rest g4 f8
      e16 f d e f es d c d4 a'\rest
      c4\rest a8\rest fis g16 a b a g f e! d
      cis8 d \once \override Tie #'staff-position = #4 e4~ e16 a, d f a d, f a
      b16 g e g cis, b' a g f d b d gis, f' e d
      cis4 r16 es d c h4 r16 d c b
      a4 f'4\rest dis4 f4\rest
      e8 d! c4 h!16 c d8~ d4~
      d8 c d\rest c c b f'\rest g
      %% Takt 50 =============================================
      g=''8 f f\rest f f e d\rest g,
      g8 f d'\rest d d c!~ c4~
      c8 d16 c b!4~ b8 c16 b a8 d~
      d4 c4 f16\rest f e f g f e d
      e8 d c2 h4
      c8 b! a4 g2~
      g4 r4 r2
      \once \override MultiMeasureRest #'staff-position = #4 R1
      d'2\rest d16\rest g, c e g c, e g
      a16 f d f h, a' g f e8 c16 e a4~
      %% Takt 60 =============================================
      a=''8 g16 f h4 c8 g b a~
      a8 g4 f16 es d16 a b d g4~
      g16 g, a c f4~ f8 es16 d \once \override Tie #'staff-position = #4 es4~
      es8 d16 c d4 c4. b8~
      b8 a16 g a8 c~ c b16 a g a b8~
      b8 a g8.[ a16] f4~ f16 a g f
      e16 g c e g c, e g a f d f h, a' g f
      e8 fis g4~ g8 fis!16 g a4~
      a8 g4 f!8 e!16 f g8~ g4~
      g8 f f\rest f f e f\rest e
      %% Takt 70 =============================================
      e=''8 d f\rest d d c~ c16 d f a
      h,16 d g8~ g16 e c e a, c f e f c h! f'
      e16 g e c a e' c a f a d c d b! g b
      e,8 r r f' d b'4 a16 g
      f16 g e f g f e d c d es4 d16 c
      b16 c a b c b a g f8 b e, g
      f8 a4 g16 f e c e g c g c d
      es16 c a c fis, es'! d c h g h d \once \override Tie #'staff-position = #4 e4~
      e8 d4 c8~ c16 a h d f8 h,
      c4 d4 e16 c a c f, e' d c
      %% Takt 80 =============================================
      h='16 c a h c a g f e8 c'4 h!16 a
      g16 a f g a g f e d e f4 e16 d
      e16 c e g c f, a c d b! g b e, d' c b
      a8 d8\rest d2 e4
      f8 f\rest f4\rest f8\rest g4 f8
      e16 f d e f e? d c d4 a'4\rest
      c4\rest a8\rest fis g b4 a16 g
      f!16 g e f g f e d c!2~
      c16 d b c d c b a g a b4 a16 g
      a4 r4 r2
      %% Takt 90 =============================================
      r16 f=' e f g f e d c c' b c d c b a
      g g' f g a g f e d8. e16 e8.\prall f16
      f2 \once \override Tie #'staff-position = #4 e2~
      e16 d cis d e d cis d cis8. a16 d4~
      d8. e16 c!2 b8. es16
      a,16 c b c d c b a b f'! e! f g f e d
      cis8 d\rest d4\rest d16\rest a b a g a h cis!
      d2~ d8 g fis a
      \once \override Beam #'positions = #'( 3.65 . 3 ) d,8 cis a'\rest e e d a'\rest a
      a8 g a\rest g \once \override Beam #'positions = #'( 5.5 . 5.1 ) g f16 e f4
      %% Takt 100 ============================================
      e=''2 c'16\rest a g a b a g f!
      e4 f~ f8 e16 d e4
      \shiftnote #'( -0.15 . 0 ) f4 \once \override Rest #'extra-offset = #'( -0.2 . 0 ) c'4\rest c16\rest g e f g f e d
      c2~ c16 a b d c b a g
      a16 f a c f c f g as f d f h, as'! g f \tempo 4 = 72
      << \new Voice {
         \halsup \once \override Tie #'staff-position = #4 e4~ e16 c \tempo 4 = 68 f8~ \tempo 4 = 64 f16 f e \tempo 4 = 60 d \tempo 4 = 50 e8. e16
         f1 \fermata }
         \new Voice {
            \halsdown r16 d c b a8. as16 g4~ g16 a  \tempo 4 = 36 b8
            a1
         }
      >>
   }
}

alt = {
   \new Voice \relative c' {
      \global
      \halsup \once \override TextScript #'extra-offset = #'( -4 . 1.5 )
      r16^"In Organo pleno" c f a c f, a c d b g b e, d' c b
      a8 f'4 e16 d c d b c d c b a
      g16 a b4 a16 g f g e f g f e d
      \staffdown c4. a8 f a d16 c b a
      b16 c d8~ d16 d c b a8 c d b
      c8 \staffup \halsdown r16 b' a g f es d es c d es4~
      es16 es d c d8. d16 c4. d8
      e!8 g4 f16 e f4. e8
      f2~ f8 e16 d e4
      %% Takt 10 =============================================
      f='8 es d4 c4~ c16 c g' fis
      g2~ g16 g8 fis16  g8. f16
      e!8 g \once \override Tie #'staff-position = #-4 f2~ f16 f e d
      e16 g, c e g c, e g a f d f h, a' g f
      e8 c'4 h16 a g a f g a g f e
      d16 e f4 e16 d c8 g c4~
      c8 a d4~ d16 c e g c a c e
      f16 d h d f, a' g f e4 d8\rest es
      d8 e!~ e16 c a c f,4 g16\rest d g b
      c2 b2
      %% Takt 20 =============================================
      c=''4. b8~ b16 g a8~ a16 f8 e!16
      \once \override Tie #'staff-position = #-4 f2~ f8 c\rest c\rest g'~
      g8 f4 e8 d2
      c4 e8\rest g f4 c8\rest h
      c16 e a c d g, b! d es c a c fis, es'! d c
      b4 a8 d~ d cis16 d e4~
      e8 d g,\rest d' d c! g\rest c
      c8 h g\rest h h a e\rest a
      g4 e8\rest g f4 e\rest
      \override MultiMeasureRest #'staff-position = #-6 R1
      %% Takt 30 =============================================
      a,16\rest c e g  c f, a c d b g b e, d' c b
      a8 g16 f e8 c \once \override Tie #'staff-position = #-4 f4~ f16 g f es
      d8 es4   f16 es   d8 g  \staffdown \halsup c,4~
      c16 d b c   d c b a  g4 c4\rest
      r8 es c a \staffup \halsdown d g~ g4
      e16\rest a, d f! g c, e! g a f d f  h, a' g f
      e16 f d e   f g e f  g8 c,8\rest a4\rest
      c2\rest a16\rest g' e c  d e f8
      e16 \staffdown \halsup c a c f, e' d c h c a h c a g f
      g4 e'8\rest c b! d \staffup \halsdown e4
      %% Takt 40 =============================================
      c16\rest a c f a d, f a b g e g  c, b' a g
      c16 a f a d, c' b a   g4 a8 h
      c8 g\rest g4\rest g16\rest d g b d g, b d
      es c a c fis, es'! d c b8 d, e! g~
      g16 f e d \staffdown \halsup cis4~ cis8 a \staffup \halsdown d4~
      d8 cis16 d e8 cis d f d h
      r16 a' e g  fis4  r16 g d f e!4~
      e16 a, d f  a d, f a c a fis a   dis, c' h a
      gis8 h4 a4 gis!16 a h4~
      h8 a e\rest a a g! g\rest b
      %% Takt 50 =============================================
      b8 a g\rest d' d cis e,\rest e
      e8 d e\rest h' h4 a8 g!
      a4. g16 f! g4~ \once \override NoteColumn #'X-extent = #'( 0 . 2 ) g16 f8 f16
      e16 f d e   f e d c  h4.     h8
      c16 g' f g  a g f e  d4~   d16 a' g f
      e8 g \once \override Tie #'staff-position = #-4 f2~ f16 f e d
      e16 g, c e  g c, e g a f d f  h, a' g f
      e8 c'4 h16 a g a f g a g f e
      d16 e f4 e16 d c8 \staffdown \halsup g \staffup \halsdown c4~
      c8 \staffdown \halsup a \staffup \halsdown d4~ d16 c e g c a c e
      %% Takt 60 =============================================
      f=''16 d h d f, a' g f e4 r8 es
      d8 e!~ e16 c a c f,4 e16\rest d g b
      c2 b2
      c4. b8~ b16 g a8~ a16 f8 e!16
      f2. c8\rest g'8~
      g8 f4 e8 d2
      c4 c8\rest g' f4 c8\rest h
      c16 e a c d g, b! d es c a c fis, es' d c
      b4 a8 d~ d cis16 d e4~
      e8 d g,\rest d' d c! g\rest c
      %% Takt 70 =============================================
      c=''8 h g\rest h h a e\rest a
      g4 g8\rest g f4 e4\rest
      \override MultiMeasureRest #'staff-position = #-6 R1
      a,16\rest c e g  c f, a c d b g b e, d' c b
      a8 g16 f e8 c \once \override Tie #'staff-position = #-4 f4~ f16 g f es
      d8 es4   f16 es   d8 g  \staffdown \halsup c,4~
      c16 d b c   d c b a  g4 c4\rest
      g'8\rest es c a \staffup \halsdown d g4 e8\rest
      e16\rest a, d f! g c, e g a f d f  h, a' g f
      e16 f d e f g e f  g8 c,8\rest a4\rest
      %% Takt 80 =============================================
      c2\rest a16\rest g' e c d e f8
      e16 c \staffdown \halsup a c f, e' d c h c a h c a g f
      g4 e'8\rest c b d \staffup \halsdown e4
      \staffdown \halsup e16\rest a, c \staffup \halsdown f a d, f a b g e g  c, b' a g
      c16 a f a d, c' b a   g4 a8 h
      c8 g\rest g4\rest g16\rest d g b! d g, b d
      es c a c fis, es'! d c b a g f e! d cis e
      d4 e8\rest f g4 g8\rest g
      c,8 a'4 g16 f  es f d e f d c b
      \staffdown \halsup a16 c b c d c b a g8. a16 a8.\prall g32 a
      %% Takt 90 =============================================
      b=2~ b16 a g a   b a g f
      c'2~ c16 b a b   c b a g
      a16 \staffup \halsdown a' g a  b a g f g8. b16 \once \override Script #'extra-offset = #'( 0 . -2 ) a8.\prall g16
      f8. g16  g2    f8. d16
      e4~   e8. a16  d,16 es c d es d c b
      c16 es d es a,8 d~   d16 a' g a  b a g f
      e16 f e f g f e8~ e d g4~
      g16 g a g fis g a b! c!8 b a c
      \shiftOn \halsup b8 g h\rest a a4 h8\rest d
      f8 e h\rest << \new Voice { \shiftOn \stemUp e8 e d16 cis! }
                     \new Voice { \shiftOnn \stemUp cis8 \stemDown cis[ d] } >> d8. c16
      %% Takt 100 ============================================
      b='16 c a b c b a g d'2
      c2 b2
      \once \override Rest #'extra-offset = #'( -0.7 . 0 ) h16\rest d b c d c b a \once \override Stem #'length = #6 g2~
      \halsdown g16 a f g   a g f es d8. e16  e8. d32 e
      f16 s8. s8
      \staffdown \halsup c8~ c h e8\rest \shiftnote #'( -0.6 . 0 ) h!
      %% Takt 105 --------------------------------------------
      \shiftOff c4~ c8. h16  c2
      c1
   }
}

altzwo = {
   \new Voice \relative d' {
      \global
      \halsup
      s1*96
      s2 r16 d es d  c d e fis
      \staffup \halsdown \shiftOff g8 e c\rest g' g f c\rest a'
      d4 c,8\rest a' a4 g16\rest a b a
      %% Takt 100 ============================================
      g='16 a f g a g fis e fis d e fis g f e d
      g='4 a4 g2
      f4 e8\rest f c16 e c d e d \staffdown \halsup c b
      a16 c a b c b a g  f4 \shiftOn g4\rest
      a16\rest a c \staffup \halsdown f a f \staffdown c a f4 f8\rest g
      %% Takt 105 --------------------------------------------
      \shiftOff g4. \once \override Stem #'length = #6 f8 g2
      f1
   }
}

tenor = {
   \new Voice \relative f {
      \global
      R1
      r16 f a c \staffup \halsdown f a, c f a f d f b, a' g f
      e16 f d e f d c b \staffdown a b g a b4~
      b8 a16 g a8 f  c f~  f4
      g8. f16  e4 f8 a  b g
      a16 b c8 \halsneutral f,4~  f4.     g8
      a4~   a16 a b8~   b16 b a g   f g a8
      g16 c, e g  c f, a c d h g h  e, d' c b
      a8 g  f4 g4 r8 c8~
      %% Takt 10 =============================================
      c='8 f,4   b8~ b16 b a g   a4
      h16 g h d f! h, d f e!8 es d4
      c16 c, e g  c f, a c d h g h  d, a' g f
      e4 r8 g8~   g f16 e  d8 h'
      c16 c, e g  c e, g c e c a c  f, e' d c
      h16 c a h   c a g f  e4 r8 e
      f4 r8 f  g8 r8 r8 e'
      d4 r8 \clef "treble" f   g16 g, c e  g c, fis a
      b16 g e g   \clef "bass"
         c,4~  c8 d16 c b4~
      b8 c16 b a16 c, f a  b g b d  g es b es
      %% Takt 20 =============================================
      a,16 g' f es  d c d e  f8. es16 d8 des
      c16 c, f a  c f, a c d! b g b  e, d' c b
      a16 g a h   c g c8~  c16 c h! a   h4
      c8 e16 d e8 c~ c8 h16 c d8 g,
      c8 a b! g \clef "treble" c es d fis
      g16 g, b d f! d f a b g e! g cis, b' a g
      f16 d f a h, a' g f e c! e g a, g' f e
      d16 h d f   gis, f' e d c a c e  f,8 f'~
      f8 e16 d e4~   e8 d16 c d8 g,
      \clef "bass"
      c8 c, c'4~ c8 b!16 a b4~
      %% Takt 30 =============================================
      b8 a16 g a8 f  b4 c4~
      c8 b16 a b4~ b8 a16 g a4~
      a8 g4 f8~ f16 g e! f \halsdown g f e d
      c8 f4   d8  e4 r16 c e g
      c4 a8 fis   g d'~ d16 h c e
      \clef "treble" \halsup a8 r r4 r2
      \clef "bass" r8 \halsdown c,4 h16 a  g a f g  a g f e
      d e f4     e16 d  c8 e  f g
      c,8 h8\rest a4\rest r2
      r8 b'! a4~ a8 b16 a \halsneutral g4~
      %% Takt 40 =============================================
      g8 f16 e   f8 a~ a g16 f  g8 b~
      b8 a4   g16 f  e f d e  f e d c
      g'8 f16 g a4~ a8 g16 fis  g4~
      g8 fis16 g a4 d,4 r8 b'
      \halsdown a4~ a16 b a g f4. f8
      \halsneutral e4. a8 d, d' h gis
      a8 a, r d g g, r c
      f4 r4 fis4 r4
      r16 e gis h e a, c e f! d! h d gis,! f' e d
      c16 a c e fis, es' d c b! g! b d e,! d' c b
      %% Takt 50 =============================================
      a16 f! a c d, c' b a g e g b cis, b' a g
      f16 d f a h, a'gis fis e c e gis! c a c es
      fis,16 d fis a d b! g b e,! c e g c a f a
      g8 f16 g a4~ a8 g f4
      g4 r4 r16 f e f   g f e d
      a'16 c, e g c f, a c d h g h  d, a' g f
      e4 r8 g8~   g8 f16 e d8 h'
      c16 c, e g  c e, g c e c a c  f, e' d c
      h16 c a h c a g f  e4 r8 e
      f4 r8 f g8 r8 r8 \clef "treble" e'
      %% Takt 60 =============================================
      d='8 r r f g16 g, c e  g c, fis a
      b16 g e g \clef "bass" c,4~ c8 d16 c b4~
      b16 e, f a c c, f a b g b d  g es b es
      a, g' f es d c d e  f8. es16 d8 des
      c16 c, f a c f, a c d! b g b e,! d' c b
      a16 g a h c g c8~ c16 c h! a h4
      c8 e16 d e8 c~ c h16 c d8 g,8
      c8 a b! g \clef "treble" c es d fis
      g16 g, b d f! d f a b g e! g  cis, b' a g
      f16 d f a h, a' g f e c! e g a, g' f e
      %% Takt 70 =============================================
      d='16 h d f gis, f' e d c a c e f,8 f'~
      f8 e16 d e4~ e8 d16 c d8 g,
      \clef "bass" c8 c, c'4~ c8 b!16 a b4~
      b8 a16 g a8 f  b4 c4~
      c8 b16 a b4~   b8 a16 g a4~
      a8 g4 f8~ f16 g e! f \halsdown g f e d
      c8 f4 d8  e4 r16 c e g
      c4 a8 fis g d'~ d16 h c e
      \clef "treble" \halsup a8 r r4 r2
      \clef "bass" r8 \halsdown c,4 h16 a  g a f g  a g f e
      %% Takt 80 =============================================
      d e f4 e16 d c8 e  f g
      c,8 h8\rest a4\rest h2\rest
      h8\rest b'! a4~ a8 b16 a g4~
      g=8 f16 e \halsneutral f8 a~ a g16 f g8 b~
      b8 a4   g16 f  e f d e  f e d c
      g'8 f16 g   a4~   a8 g16 fis  g4~
      g8 fis16 g  a4 d,8 r r4
      r8 f! b4~ b16 c! a b  c b a g
      a8 f b4~ b8 b,16 c d8 e
      \halsdown f4 r8 f~ f16 es d es f es d c
      %% Takt 90 =============================================
      d=8. e16 e8._\prall f16 f2~
      f16 e d e f e d c  g'2
      d4 \halsneutral d'4~ d16 cis h cis d cis h a
      d8. c!16 b!8.\prall a32 b a16 b g a b a g f
      g16 a f g a g fis e fis8. d16 g4~
      g4 fis4 g4 r4
      r16 d' cis d e d cis h a8 f b[ a16 g]
      a16 b a b c! b a g fis8 g a4
      r16 g b a g a h cis d a, d f a d, f a
      b!16 g e g cis, b' a g f d f a d4~
      %% Takt 100 ============================================
      d='4 c!2 b4~
      b16 c, e g  c f, a c d b g b  e, d' c b
      a8 f \halsdown b4~ b8 g d4\rest
      h4\rest h8\rest c d b h4\rest
      g2\rest \once \override Rest #'extra-offset = #'( 0.6 . 0 ) e4\rest g8\rest d'
      \once \override Tie #'staff-position = #-3 \shiftOn \stemUp \shiftnote #'( -0.3 . 0 ) c1~
      \shiftOff c1
      }
}

pedal = {
   \relative f, {
   \clef "bass"
   \global
   f1~
   f1~
   f1~
   f1~
   f1~
   f1~
   f2~ f8 g a b
   c1
   d2 c4 b!4
   %% Takt 10 =============================================
   a4 b4 c2
   g1
   a2 h2
   c1~
   c2 r2
   R1
   c1
   d2 c2
   g4 a4 b2
   a2 g2
   %% Takt 20 =============================================
   f1~
   f1
   R1
   R1
   R1
   R1
   R1
   R1
   R1
   R1
   %% Takt 30 =============================================
   R1
   f1
   g4 a4 b2
   a4 b4 c2~
   c2 g2
   f4 e4 d2
   c1~
   c2 r2
   R1
   c1
   %% Takt 40 =============================================
   f2 g2
   a4 b4 c2~
   c2 b2
   a2 g2
   a1~
   a2 r2
   R1
   R1
   R1
   R1
   %% Takt 50 =============================================
   R1
   R1
   r2 a4. b8
   c2 d2
   c2 g2
   a2 h2
   c1~
   c2 r2
   R1
   c1
   %% Takt 60 =============================================
   d2 c2
   g4 a4 b2
   a2 g2
   f1~
   f2 r2
   R1
   R1
   R1
   R1
   R1
   %% Takt 70 =============================================
   R1
   R1
   R1
   R1
   f1
   g4 a4 b2
   a4 b4 c2~
   c2 g2
   f4 e4 d2
   c1~
   %% Takt 80 =============================================
   c2 r2
   R1
   c1
   f2 g2
   a4 b4 c2~
   c2 b2
   a2 g2
   d2 e2
   f1~
   f2 r2
   %% Takt 90 =============================================
   R1
   R1
   R1
   R1
   R1
   r2 g2
   a4. g8   f4. e8
   d1~
   d2 r2
   R1
   %% Takt 100 =============================================
   R1
   r2 g2
   d2 e2    \break
   f1~
   f4 r8 a8 d,4 r8 g8
   c,1
   f1_\fermata \bar "|."
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
      \altzwo
      \tenor
   >>
}

\score {
   <<
      \new PianoStaff {
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
         \context Voice = pedal \pedal
      }
   >>

   \layout{
      indent = 1.0\cm
   }
}

%{
\score {
   \unfoldRepeats {
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "church organ"
            \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "church organ"
            \left
         }
         \new Staff {
            \set Staff.midiInstrument = "church organ"
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "trombone"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
   }
}
%}
