\version "2.18.2"

\language "deutsch"

\include "defn.ily"

RH= \relative c'' {
  \time 6/8
  \key f \major \partial 8
  \mark \markup  "Allegretto animato."
  \once \override Voice.Slur #'positions = #'(2.8 . 0.6)
  \once \override TextScript.extra-offset = #'( -16.5 . 3.5 )
  c8-.-1
  \grace { f32( g } f8)-.-3 r c-. \grace { g'32( a } g8)-.-3 r c,-. %Takt 1
  \grace { a'32( b } a8)-.-3 r f-. \slashedGrace g8^3 f8(-2 e f)
  \grace { g32( a } g8)-.-3 r c,-. \grace { a'32( b } a8)-.-3 r c,-. |
  \grace { b'32( c } b8)-. r g-. \grace a8 \posSlurPriority g(-3 fis8-2 g-1) |
  \grace { 
    c32 d_\markup { \italic \small "cresc." }
  } c8(-3 a)-. f-.
  \set fingeringOrientations = #'(left)
  < d'-4 f-5 >4(-> < b-2 d-4 >8) |
  \grace { c32 d } c8( a)-. f-. < d' f >4(-> < b d >8) |
  < a c >8-._\p\noBeam gis'32(-4 a) r16 e32(-2 f) r16 cis32(-2 d) r16 e32(-4 d)-3 r16 c32(-3 b) r16
  < f-2 a-4 >4.( < e g >8) r \bar ":..:"
  c'-.-5_\f c8.->( b16 g e) c8-1-. d-. e-3-.
  f-.-1 a-. d-. c4-> c8
  c8.->( b16 g e) c8-. d-. e-.
  f-. a-. d-. c4-> c8-2\p
  \grace { d32 e } d8(-3 b)-. f-.  < d' f>4(-> < b d >8)
  \grace { c32 d } c8(-2 a-1-.)-. a'-.-5 \grace { b,32 c } \posSlurPriority b8(-2 g-.)-. g'-.
  \grace { a,32 b } \posSlurPriority a8(-2 f-.)-. f'-. \grace { g,32 a } g8(-2 e-.-1)-. e'-.-4
  f-5-. c-. a-. f-. r^\markup { "Fine." }
  \mark \markup \fontsize #-1.5 { \bold "B Dur." \italic "(Si" \raise #0.5 \smaller \flat \italic " majeur)" }
  \bar ":..:"
  \key b \major
  \omitDynamic f,8\mf < d'-4 f-5 >4.( < b-2 d-4 >8)-. q q
  < c-1~ es-3~ >4. < c es >8 \posTextB es'16-5(\p d c b-4 a g f g a b-4
  \ottava #1 c-1 d es f-1 g a b-4 a-2 b-3 c d b f8) \ottava #0 r8 \posTextB f,,_\f
  < d' f >4.( < b d >8)-. q-. q-.
  < b g' >4.->( e8-4-.) \ottava #1 \posTextB c''-4-.\p c-.
  d16-5( c b a g-1 f-4 e d c-1 b-4 a g)
  f a c f c a f8 r8 \ottava #0
  \bar ":..:"
  \posSlurPriority
  g'16-5(\p f es! d c-1 b-4 a g f-1 es-3 d c-1 b-2 a)
  b-2( c b a b d-4 \autoBeamOff f8-5-.) \autoBeamOn b16-3(_\markup { \italic "cresc." } c d c
  b a g-1 f-4 e d c_1 b_4 a g f_1 e_2)
  f_1 fis_2 g_1 gis_2 a_1 b_2 h-1 c-2 cis-3 d-1 es!-3 e-4
  \posTextB < d^3 f^5 >4.(\f < b^2 d^4 >8-.) < c^1 es!^3 >-. < d f >-.
  < es~ g^~ >4. < es g >8\noBeam es16-2\p g-1 b-2 es-4
  d-2 f-4 es d c-1 b-4 a g f-1 es-3 d c
  b-2 d-1 f-2 b-4 f d b8 r8
  \bar ":..:"
}

LHI = \relative c {
  \clef bass  \key f \major \partial 8
  \voiceOne
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \set fingeringOrientations = #'(down)
  \override Fingering.direction = #DOWN
  \override Fingering.staff-padding = #'()
  d8\rest
  f a c e, b' c
  f, a c f, a c
  c, e g c, f a
  c, e b' e, b' c
  f, a c f, b d
  f, a c f, b d
  \omitDynamic f,\p a c \clef treble b d g c, c'_( h \once\stemDown c) d8\rest
  \omitDynamic b8\rest\f \clef bass
  \omitDynamic c,,\f < g' b > q c, q q
  c < f a > q c q q
  c < g' b > q c, q q
  f < a c > q f q q
  b, d f b, d f
  a, c f b, d g
  c, f a c, g' b
  s4. s8 s8 \omitDynamic d,8\rest\mf
  s2.
  f,16_( a c f c a f8) \omitDynamic d'8\rest\p d8\rest
  s2. s2. s2.
  s2.
  \clef treble
  < c' f a >4 < c f a >8 < c g' b >4 < c e b' >8
  < f a >8 q q q b8\rest
  b8\rest \clef bass
  s2.
}

LHII = \relative c {
  \partial 8
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.direction = #LEFT
  \override Fingering.staff-padding = #'()
  s8
  f4. e f f c c c e f f f f \omitDynamic f\p b
  s4 s4. s8 c,4. c c c c c f f b, b a b c c
  < f a >8 q q q d8\rest \key b \major s8
  b16-5^( d-3 f-2 b-1 f d \stemUp b8-.) \stemNeutral d8\rest d8\rest
  s2.
  < f c' es >4 < f c' es >8 < f c' es >4 < f c' es >8
  < b~ d^~ >4. < b d >8 d,8\rest d8\rest
  b16^( d f b f d \stemUp b8) \stemNeutral d8\rest d8\rest
  c16^( e g c g e \stemUp c8-.) \stemNeutral d8\rest d8\rest
  s2. s2.
  < f c' es! >4. < f c' es >
  < b~ d^~ >4. < b d >8 d,8\rest d8\rest
  < c g' b>4. q
  < f a >8 d8\rest d8\rest d4\rest d8\rest
  b16 d f b f d \stemUp b8 \stemNeutral d8\rest d8\rest
  es16^5 g^3 b^2 es^1 b^2 g^3 es8^5 d8\rest d8\rest
  < f b d >4 < f b d >8 < f c' es >4 < f c' es>8
  < b d >8 q q q
  \override TextScript.self-alignment-X = #RIGHT
  \override TextScript.extra-offset = #'( 3 . 0 )
  d,8\rest_\markup "D.C. sino al fine."
}

Struktur= {
  s8
  s2.*3 \break
  \grace { s32 s32 }  s2.*4 \break
  s2.*4 \break
  s2.*4 s2 s8 \break
  s8 s2.*3 \break
  s2.*4
  \pageBreak
  s2.*3 \break
  s2.*3 \break
}

dynamics = { }

LH = {
     <<
      \new Voice = "first"
      \relative c'
      \LHI
      \new Voice= "second"
      \LHII
      \new Voice \Struktur
    >> 
}
