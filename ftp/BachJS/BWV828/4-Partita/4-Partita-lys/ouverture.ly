\include "defs.ly"

global = {
   \key d \major
   \override TupletNumber #'stencil = ##f
   \override TupletBracket #'stencil = ##f
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
   \override Score.BarNumber #'extra-offset = #'( 1 . 0 )
}

sopranA = \new Voice \relative fis'' {
   \time 2/2
   \global
   \repeat volta 2 {
      \markLeft \mark \markup { \huge \bold "Ouverture" }
      \halsup
      fis2~ fis8. fis16 g8.^\mordent a16
      \grace fis8 e2 e
      d4~ d32 g, a h c d e fis g2~
      g8. g16 a8. h16 cis,8.^\prall e16 a8. \arpeggio g16

      \barNumberCheck 5
      \grace g8 fis4 e8 d \times 7/6 fis4. \times 1/2 fis8
      fis4~ fis16 h32 a g fis e dis \times 7/6 e4. \times 1/2 e8
      \times 5/6 e8. d32 cis d d8.^\prall cis16 d2~
      \times 5/6 d8. d32 cis h cis8.^\mordent d16 \once \override Beam.positions = #'( 5.8 . 7.4 )e8. fis16 gis8. a16
      gis4~ ^\mordent gis16 fis32 gis a gis fis e \once \override Tie.staff-position = #10 h'2~

      \barNumberCheck 10
      \once \override Beam.positions = #'(7 . 4) h16. \times 2/3 { h,64 cis d } cis32 h a gis a h cis d e fis gis16
         \times 5/6 a8. d,32 cis h cis16 e g8~
      \times 5/6 g8. cis,32 d e fis g fis e d cis h a gis8. h16 e4~
      \times 5/6 e8. fis32 gis a \times 5/6 gis8.^\prall fis32 gis a h,4.^\prall a8
      \times 5/6 a8. cis32 h a g'8. e16 fis2~
      \times 5/6 fis8. fis32 e d e4~ e4~ \times 5/6 e8. e32 d cis

      \barNumberCheck 15
      d2~ \times 5/6 d8. f32 e d \times 5/6 h'8. gis32 fis e
      c'2~ \times 5/6 c8. h32 a gis a4~
      \times 5/6 a8. h32 a gis a16 fis8 gis16 gis4.^\prall a8
   }
   \alternative {
      { a2~ a8 s s4 }
      { \time 9/8 a4 c8\rest c4.\rest c\rest}
   }

   \once \override MultiMeasureRest.staff-position = #6 R4. * 3

   \barNumberCheck 20
   a8\rest fis a h e, g a d, fis
   g8 a16 g fis e a8 d, fis g cis, e
   fis4.~ fis16 d e fis gis a h a gis fis e d
   e4. a16\rest cis, d e fis gis a gis fis e d \tieDown cis~
   \halsdown cis4. h \halsup cis16 d d8.\prall cis32 d

   \barNumberCheck 25
   e4.~ e8 d4~ d8 cis4~
   cis8 h d~ d8 cis4~ cis8 h4~
   h8 a cis fis,4. gis
   a4. a'16\rest d, e d cis d~ d d e d cis d
   cis4. d e

   \barNumberCheck 30
   fis8 g!16 fis e d c' h a c h a gis h a gis a h
   e,8 e4~ e8 d4~ d8 cis4~
   cis8 fis, h~ h e, a gis4\prall a8
   a16 h cis d e cis a4.( gis4)\prall fis16 gis
   a8 e g! fis16 gis a8 fis e gis a

   \barNumberCheck 35
   d,8 e16 d cis d e gis a8 e d gis a
   \appoggiatura d,8 cis4 h'8\rest h4.\rest a'\rest
   d,16 e fis g a fis
      \once \override Dots #'extra-offset = #'( -1.2 . 0 ) d4.( cis4)\prall h16 cis
   d8 a c h16 cis d8 h a cis d
   g,8 a16 g fis g a cis d8 a g cis d

   \barNumberCheck 40
   \appoggiatura g,8 fis4 d'8\rest d4.\rest f4.\rest
   g,16 fis g8 d'~ d cis! h~ h a g
   fis8 eis cis'~ cis h a~ a g fis
   e8 dis h'~ h a g~ g fis e
   cis' e, a d fis, a e' g, a

   \barNumberCheck 45
   fis'16 a, d fis d a a'\rest h, d fis d h a'\rest cis, e fis e cis
   d8 h d g h, d a' c, d
   h'16 d, g h g d c'\rest e, g h g e c'\rest fis, a h a fis
   \halsneutral g16 fis e dis e g a, fis' e dis e g g, fis' e dis e g
   c,16 fis a4~ a8 g16 fis e d! c! dis fis4~

   \barNumberCheck 50
   fis8 g, h c fis, a h e, g
   a8 h16 a g fis h8 e, g a dis, fis
   g16 e fis g a h c a h cis dis e fis dis e fis g a
   h16 a g fis e dis e8 fis16 g a fis \grace e8 dis!4 e8
   s2. \halsup f4\rest g8

   \barNumberCheck 55
   g2.~ g8 e g
   fis16 e d e fis g a g fis g a h c4.
   \halsneutral h8 e, g a d, fis g cis, e
   fis8 g16 fis e d g8 cis, e fis h, d
   e8 fis16 e d cis fis8 h, d e ais, cis

   \barNumberCheck 60
   d8 e16 d cis h e8 fis16 e d cis fis8 e16 d cis h
   \halsup ais16 gis fis gis ais h cis h ais h cis d e4.~
   e16 fis e fis e fis d e d e d e
      \once \override NoteColumn #'force-hshift = #-1 cis8 fis4~
   fis16 h, cis d e fis g8 cis, e fis h, d
   e8 fis16 e d cis fis8 h, d e ais,! cis

   \barNumberCheck 65
   d16 cis h cis d e fis e dis e fis g a4.~
   a16 h a h a h g a g a g a
      \once \override NoteColumn #'force-hshift = #-1 fis8 h4~
   h16 e, fis g a h c8 fis, a h e, g
   \shiftOff a8 h16 a g fis h8 e, g a dis,! fis
   g4.~ g8 fis16 e d cis fis8 e16 d cis h

   \barNumberCheck 70
   e4 cis8 fis4 d8 e4.~
   e8 d cis h4 cis8 fis, h ais
   h8 fis h \halsneutral d4.~ d16 d, fis h d cis
   d16 gis, a h cis d e8 a, cis d gis, h
   cis8 e, a c4.~ c16 c, e a c h

   \barNumberCheck 75
   c16 fis, g a h c d8 g, h c fis, a
   h8 c16 h a g e'4.~ e8 fis16 e d cis
   a'4.~ a8 h16 a g fis g8 a16 g fis e
   fis8 g16 fis e d g8 a16 g fis e a8 g16 fis e d
   \halsup cis16 d cis h a g a'\rest g fis e d c f\rest e d c h a

   \barNumberCheck 80
   d16\rest c h a g fis f'\rest fis e d cis h d\rest d cis h a g
   h16\rest h a g fis e f'\rest e d cis h a d\rest c h a g fis
   h16\rest a g fis e d d'\rest d cis h a g h\rest h a g fis e
   \halsneutral fis16 a, h cis d e fis d e fis g a h4.~
   h16 cis, d e fis gis a gis a h cis d e4.~

   \barNumberCheck 85
   e16 fis, g a h cis d h cis d e fis g4.~
   g16 a, h c d e fis e fis g a h c4.~
   c16 d, e fis g a h8 a g~ g fis e
   d8 cis a'~ a g fis~ fis e d
   c8 h g'~ g fis e~ e d cis

   \barNumberCheck 90
   h8 a e'~ e d cis~ cis h a
   g8 f f'~ f e d~ d c h
   a8 gis h'~ h a gis~ gis fis e
   d16 h cis d e cis a4.( g!4)\prall fis16 g
   fis16 a h cis d h g4.( fis4)\prall e16 fis

   \barNumberCheck 95
   e16 gis a h cis a fis4.( e4)\prall d16 e
   d16 fis gis a h gis e4.( d4)\prall cis16 d
   cis16 e d cis h a r a' g fis e d r h' a g fis e
   fis16 a g fis e d r d' cis h a g r e' d cis h a
   gis16 h a gis fis e r d' cis h a gis r fis' e d cis h

   \barNumberCheck 100
   cis4 r8 r16 cis d e fis g! \halsup a4.~
   a8 g fis g8 c\rest c\rest g4.~
   g8 fis e s2.
   g,4.~ g8 e' g, fis16 g g8.\prall fis32 g
   a4.~ a8 g4~ g8 fis4~

   \barNumberCheck 105
   fis8 e g~ g fis4~ fis8 e4~
   e8 d fis h,4. cis
   d4 h'8\rest d16\rest g,! a! g fis g~ g g a g fis g
   fis4. g4. a4.
   h8 c16 h a g f'e d f e d cis e d cis d e

   \barNumberCheck 110
   a,8 a'4~ a8 g4~ g8 fis4~
   fis8 h, e~ e a, d cis4\prall d8
   \times 9/8 d1\fermata \bar"|."
}

mezzoA = \new Voice \relative d'' {
   \time 2/2
   \global
   \repeat volta 2 {
      \halsup \shiftOn
      \once \override Accidental.transparent = ##t
         \once \override Script.extra-offset = #'( -2.0 . -4.0 ) d!2~ ^\mordent
         \halsdown \once \override NoteColumn #'force-hshift = #-1 d8.
         \halsup \small h16\rest \normalsize h4\rest
      h4~ h32 s8.. \halsdown  e8. a,16 gis8.^\prall a16~
      a4~ a32 s8.. h8.\rest h16 e8. d16
      cis!8. d16 e8. fis16 a,4 \halsup e' \arpeggio

      \barNumberCheck 5
      d2 \once \override Script.extra-offset = #'( -2.2 . -4.0 ) d4. ^\mordent s8
      s1
      s1
      s2 s8. d16 d8. e16
      e4 s d8.\rest \tieDown gis!16~ gis4~

      \barNumberCheck 10
      gis16 s8. s4 s4 s16 \halsdown e8.~
      e8. s16 s4 s2
      s1
      s1
      s1

      \barNumberCheck 15
      s1
      s1
      s1
   }
   \alternative {
      { s1 }
      { \time 9/8 s4. * 3 }
   }

   s4. * 3

   \barNumberCheck 20
   s4. * 3 * 10

   \barNumberCheck 30
   s4. * 3
   s4. * 3
   s4. * 3
   s4. * 3
   \staffdown \halsup \shiftOff cis,4 s8 s2.

   \barNumberCheck 35
   s4. * 3
   s4. * 3
   s4. * 3
   \staffup \halsup \shiftOn fis4 s8 s2.
   s4. * 3

   \barNumberCheck 40
   s4. * 3 * 20

   \barNumberCheck 60
   s4. * 3
   s4. * 3
   s2. \halsdown \once \override Tie.staff-position = #0.5 cis'4.~
   \stemUp cis16 s s4 s2.
   s4. * 3

   \barNumberCheck 65
   s4. * 3
   s2. \stemDown \once \override Tie.staff-position = #4.3 fis4.~
   \stemUp \once \override NoteColumn.force-hshift = #1.1 \dotsUp fis16 s s4 s2.
   s4. * 3
   s4. * 3

   \barNumberCheck 70
   s4. * 3 * 20

   \barNumberCheck 90
   s4.* 3
   \staffdown \shiftOff s2. f,4 h8\rest
   f4 h8\rest \small h4.\rest \normalsize gis4 h8\rest
   a4 h8\rest s2.
   s4. * 3

   \barNumberCheck 95
   s4. * 3 * 15

   \barNumberCheck 110
   s4. * 3 s2. \staffup \stemUp \shiftOn a4.
   \shiftOff \times 9/8 a1
}

altA = \new Voice \relative a' {
   \time 2/2
   \global
   \repeat volta 2 {
      \halsdown
      \once \override Accidental.transparent = ##t
         \once \override Tie.staff-position = #-4.7 a!2~ a8. d,16 e8. fis16
      g4~ g32 e fis g a h cis d s2
      s1
      s2. a4 \arpeggio

      \barNumberCheck 5
      a2 \times 7/6 a4. \times 1/2 a8
      \shiftOn h4 \stemDown a4\rest \once \override Tie.staff-position = -0.2 h2~
      h4 e,4\rest h'2~
      h8. e,16\rest e4\rest g8.\rest a16 h8. cis16
      h4 g\rest e\rest d'~

      \barNumberCheck 10
      d16 s8. s4 s4 cis~
      cis8. g16\rest g4\rest \times 7/6 gis4. \times 1/2 gis8
      a8 g8\rest g4\rest gis2
      s2 h8\rest h32\rest e d cis d4~
      d4~ \times 5/6 d8. d32 cis h cis2~

      \barNumberCheck 15
      \times 5/6 cis8. cis32 h a h4~ h g\rest
      g2\rest g4\rest g16\rest g32\rest e fis! gis a h
      c4 h16\rest fis'8. e4 d!
   }
   \alternative {
      { cis!2 s2 }
      { \set Score.tempoHideNote = ##t \time 9/8 \tempo 4. = 85 d8 \repeatTie cis e fis h, d e a, cis }
   }

   d8 e16 d cis h e8 a, cis d gis, h

   \barNumberCheck 20
   cis8 d16 cis h a d8 g,\rest g\rest c g\rest g\rest
   h8 c16 h a g fis8 e\rest e\rest a e\rest e\rest
   d8 e16 fis g a h8 g\rest g\rest a g\rest g\rest
   gis8 a16 gis fis e a8 e\rest e\rest gis e\rest e\rest
   \halsup d'4.~ d8 h' d, \halsdown a8 h4~

   \barNumberCheck 25
   h8. d16 cis h a8. cis16 h a gis4 e8
   fis4. gis8. h16 a gis fis8. a16 gis fis
   e4.~ e16 d e d cis d~ d d e d cis d~
   d16 cis d e fis gis a4. h~
   h8 gis a~ a gis a~ a gis a~

   \barNumberCheck 30
   a4 g8\rest g\rest f a h e, gis
   a8. d16 cis h a8. cis16 h a gis4 a8
   d,4. cis \staffdown h
   a4 a8\rest h8 cis d h cis d
   \shiftOn a4 c8\rest d4 c8\rest cis4 c8\rest

   \barNumberCheck 35
   h4 c8\rest cis4 c8\rest h4 a8\rest
   a4 s8 s2.
   \staffup \halsup a'4 h8\rest e,8 fis g e fis g
   \halsdown d4 e8\rest g4 e8\rest fis4 e8\rest
   e4 h8\rest fis'4 c8\rest e4 c8\rest

   \barNumberCheck 40
   d4 c8\rest s2.
   \staffdown d4 c8\rest c4.\rest d4 c8\rest
   \staffdown cis4 c8\rest c4.\rest cis4 c8\rest
   \staffdown h4 c8\rest c4.\rest h4 c8\rest
   a4 cis8 a4 d8 g,4 cis8

   \barNumberCheck 45
   d4 c8\rest \staffup gis'4 e8\rest ais4 e8\rest
   h'4 e,8\rest e4 e8\rest fis4 e8\rest
   g4 g8\rest cis!4 h8\rest dis4 h8\rest
   s4. * 3
   s4. * 3

   \barNumberCheck 50
   s4. * 3
   s4. * 3
   s4. * 3
   s4. * 3
   \once \override Beam.positions = #'( -3.6 . -13.4 )
      e16[ d! c h a g fis e dis cis! \staffdown \halsdown h a g fis e d! cis! h]

   \barNumberCheck 55
   \staffup g''8\rest a16 h cis d e fis e d cis h a4.~
   a8 g\rest g\rest g4.\rest c'16 a g fis e d
   s4. * 3
   s4. * 3
   s4. * 3

   \barNumberCheck 60
   s4. * 3
   s4. s4 cis8~ cis4.~
   cis8 cis cis h h h \shiftOff ais4.~
   ais16 s s4 h8\rest cis4~ cis8 h4~
   h8 ais4~ ais8 h4~ h8 ais4

   \barNumberCheck 65
   h8 e,8\rest e\rest g4\rest fis'8~ fis4.~
   fis8 fis fis \once \override Beam.positions = #'( -0.2 . -0.2 ) e e e
      \once \override Tie.staff-position = #1.5
      \once \override NoteColumn.force-hshift = #0 \dotsUp dis4.~
   \once \override NoteColumn.force-hshift = #1.1 dis16 s s4 f8\rest
      \tieDown fis4~ \once \override NoteColumn.force-hshift = #0 fis8 e4~
   \override NoteColumn.force-hshift = #0 e8
      \once \override Tie.staff-position = #2 dis4~ dis8
      \once \override Tie.staff-position = #2 e4~ e8 dis4
   \revert NoteColumn.force-hshift h8\rest
      \once \override Beam.positions = #'( -1.2 . -1.8 ) e cis ais4.~ ais8 h4~

   \barNumberCheck 70
   h8 ais cis~ cis h4~ h8 ais cis
   fis,4.~ fis8 e4 d cis8
   d4 c8\rest s2.
   s2. \staffdown h4 s8
   a4 s8 s2.

   \barNumberCheck 75
   s2. a4 s8
   g4 s8 s2.
   s4. * 3
   s4. * 3
   s4. * 3

   \barNumberCheck 80
   s4. * 3 * 10

   \barNumberCheck 90
   \staffdown s2. cis4 d8\rest
   d4 d8\rest \small d4.\rest \normalsize \shiftOn d4 d8\rest
   d4 d8\rest \small d4.\rest \normalsize d4 d8\rest
   e4 d8\rest s2.
   s4. * 3

   \barNumberCheck 95
   s4. * 3
   s4. * 3
   s4. * 3
   s2. \shiftOff fis4 g8\rest
   d4 g8\rest g4.\rest e4 g8\rest

   \barNumberCheck 100
   \staffup s2. a'16 g fis e dis cis
   h4. h16\rest h cis d! e fis g fis e d cis h
   a4. \stemNeutral fis'16 fis, g a h cis d cis h a g fis~
   \stemDown fis4. e d8 e4~
   e8. g16 fis e d8. fis16 e d cis4 a8

   \barNumberCheck 105
   h4. cis8. e16 d cis h8. d16 cis h
   \staffdown a4.~ a16 g a g fis g~ g g a g fis g^~
   g16 fis gis ais h cis \staffup d4. e4.~
   e8 cis d~ d cis d~ d cis d~
   d4 c8\rest \staffdown e\rest b d e a, cis

   \barNumberCheck 110
   d8 \staffup h'16\rest g' fis! e d8. fis16 e d cis4 d8
   g,4. fis e
   \times 9/8 fis1
}

tenorA = \new Voice \relative d {
   \time 2/2
   \global
   \repeat volta 2 {
      \halsup d4 s2.
      s2 a''8.\rest e16 d8. cis16
      d2~ d8. s16 s4
      e8.\rest h16 cis8. d16 e8. e16\rest s4

      \barNumberCheck 5
      s1
      \staffup \shiftRest c8.\rest d16 e8. fis16 g8. e16\rest c4\rest
      \staffdown a8.\rest fis16 gis8. ais16 h8 c8\rest a4\rest
      s1
      s1

      \barNumberCheck 10
      s1 * 5

      \barNumberCheck 15
      s1
      s1
      s4 c h e~
   }
   \alternative {
      { e2 s2 }
      { \time 9/8 e4 \repeatTie s8 s2. }
   }

   s4. * 3

   \barNumberCheck 20
   s4. * 3 * 10

   \barNumberCheck 30
   s4. * 3
   s4. * 3
   s4. * 3
   s4. \halsdown \shiftOnn h h
   \halsup e,4 s8 s2.

   \barNumberCheck 35
   gis4 s8 s2.
   s4. * 3
   \staffup \shiftOff fis'4 c8\rest
      \once \override NoteColumn.force-hshift = #1 e4.
      \once \override NoteColumn.force-hshift = #1 e
   \staffdown a,4 s8 s2.
   cis4 s8 s2.

   \barNumberCheck 40
   s4. * 3 * 20

   \barNumberCheck 60
   s4. * 3
   s4. * 3
   s4. fis,8 h d e ais, cis
   d8 e16 d cis h e8 ais, cis d gis, h
   cis8 d e d16 e d e d e cis d cis d cis d

   \barNumberCheck 65
   h4. s2.
   s4. \staffup c8\rest e g \once \override NoteColumn.force-hshift = #0.5 a dis, fis
   \once \override NoteColumn.force-hshift = #0 g8 a16 g fis e a8 dis, fis
      \once \override NoteColumn.force-hshift = #0.5 g cis, e
   \once \override NoteColumn.force-hshift = #0.5 fis8
      \once \override NoteColumn.force-hshift = #0.5 g a
      \once \override NoteColumn.force-hshift = #1 g16 a
      \once \override NoteColumn.force-hshift = #0.5 g a g a
      \once \override NoteColumn.force-hshift = #0.5 fis g
      \once \override NoteColumn.force-hshift = #0.5 fis g fis g
   e8 c\rest c\rest s2.

   \barNumberCheck 70
   \staffdown s4. * 3
   s4. * 3
   s2. h4.~
   h8 fis16 gis a h cis4 c8\rest \shiftOn gis4 c8\rest
   e,4 s8 s4. \stemUp a4.~

   \barNumberCheck 75
   a8 e16 fis g a h4 a8\rest fis4 a8\rest
   d,4 d8\rest s2.
   s4. h8 d g cis, e a
   d,8 a' c s2.
   s4. * 3

   \barNumberCheck 80
   s4. * 3 * 5

   \barNumberCheck 85
   s4. * 3
   s4. * 3
   s2. h4 a8\rest
   a4 a8\rest a4.\rest a4 a8\rest
   g4 a8\rest c4.\rest g4 a8\rest

   \barNumberCheck 90
   g4 a8\rest a4.\rest \halsdown a4 f8\rest
   a4 f8\rest \small f4.\rest \normalsize a4 f8\rest
   h4 f8\rest \small f4.\rest \normalsize h4 f8\rest
   a4 f8\rest e'4.\rest \halsup e
   d4 c8\rest c4.\rest d

   \barNumberCheck 95
   cis4 c8\rest c4.\rest cis
   h4 c8\rest c4.\rest h
   a4 a8\rest a4.\rest cis4 a8\rest
   d4 c8\rest c4.\rest d4 a8\rest
   h4 a8\rest g4.\rest h4 a8\rest
}

bassA = \new Voice \relative d, {
   \time 2/2
   \global
   \repeat volta 2 {
      \halsdown
      d4~ d32 d' e fis g a h cis d2~
      d2~ d8. cis16 h8. a16
      h2~ ~h8. e,16 fis8. g16
      a2~ a8. e16 cis8. a16

      \barNumberCheck 5
      d4~ d16 cis32 h a g fis e d8. d'16 e8. fis16
      g,8 g8\rest g4\rest g8.\rest g16 fis8._\prall e16
      h'2~ h8. h16 cis8. d16
      \halsneutral \times 5/6 gis,8. e'32 fis gis a8. h16 cis8. d16 h8. a16
      e'8. d32 cis h8. d16 gis,8. h16 e,8. gis16

      \barNumberCheck 10
      fis,4~ \times 5/6 fis8. fis'32 e d cis8. e16 a,8. cis16
      \times 5/6 d,8. a'32 h cis d4~ d8. d16 cis8. h16
      cis16 e d cis h[ cis a8] e'4 e,
      a4~ a16 h32 cis d e fis g a4~ a16. h32 cis d e fis
      \clef "treble" g2~ g16. a,32 h cis d e fis4~

      \barNumberCheck 15
      fis4~ \times 5/6 fis8. a32 gis fis gis4~ gis32 a, h c d e fis gis
      \times 5/6 a8. g32 f e f16 g a f \appoggiatura e8 dis2~
      \times 5/6 dis8. d32 c h \clef "bass" c16 a dis,8 e2
   }
   \alternative {
      { \halsdown a2~ \once \override Beam.positions = #'( -2.0 . 6.0 )a32[ h cis \staffup d e fis g fis e fis g a h cis d e] }
      { \set Score.currentBarNumber = #18 \time 9/8 \staffdown \halsdown a,,4 r8 r4. r }
   }

   R4. * 3

   \barNumberCheck 20
   R4. * 3
   R4. * 3
   R4. * 3
   R4. * 3
   \clef "treble" \halsneutral fis'8 gis16 fis e fis gis8 a16 gis fis gis a8 gis16 fis e d

   \barNumberCheck 25
   \clef "bass" cis8 cis, e fis h, d e a, cis
   d8 e16 d cis h e8 a, cis d gis, h
   cis8 d16 cis h a d8 d, d' e e, e'
   fis8 cis a fis fis' fis, gis gis' gis,
   a8 h16 a gis a h8 cis16 h a h cis8 d16 cis h cis

   \barNumberCheck 30
   d8 fis a d2.~
   d8 cis e fis h, d e a, cis
   fis, a gis a cis, d e4 e,8
   \halsdown <a cis e>4 g8\rest \rr g4.\rest \rr g\rest
   a4 g8\rest g4.\rest g\rest

   \barNumberCheck 35
   a4 h8\rest g4.\rest g\rest
   h16\rest \stemUp \once \override Beam.positions = #'( 3.6 . 13 ) 
      a[ h cis d e fis g! a h cis \staffup \stemUp d e fis g a h cis]
   \staffdown \halsdown s4. * 3
   d,,4 r8 r4. r
   d4 r8 r4. r

   \barNumberCheck 40
   r16 \stemUp \once \override Beam.positions = #'(3.1 . 11.2)
      d,[ e fis g a h cis d e fis g a h c \staffup \stemUp d e fis]
   \staffdown \halsdown h,4 d,8\rest h4 d8\rest h'4 d,8\rest
   h'4 d,8\rest a4 d8\rest a'4 d,8\rest
   a'4 d,8\rest g,4 d'8\rest g4 d8\rest
   g4 d8\rest fis4 d8\rest e4 d8\rest

   \barNumberCheck 45
   d4 r8 r4. cis'4 r8
   h 4 r8 r4. a4 r8
   g4 r8 r4. fis'4 r8
   \halsneutral e8 g, h c fis, a h e, g
   a8 h16 a g fis h8 e, g a dis, fis

   \barNumberCheck 50
   g16 fis e dis e g a, fis' e dis e g g, fis' e dis e g
   c,16 fis a4~ a8 g16 fis e d! c! dis fis4~
   fis8 r16 e fis g a h a g fis e dis h cis dis e fis
   g16 e fis g a h c d c h c a h4 h,8
   e,4 r8 s2.

   \barNumberCheck 55
   a8 cis e a e a cis8 d16 cis h a
   \clef "treble" d8 a d fis d fis a h16 a g fis
   g8 a16 g fis e fis8 g16 fis e d e8 fis16 e d cis
   d8 e16 d cis h e8 fis16 e d cis d8 e16 d cis h
   cis8 d16 cis h ais d8 e16 d cis h cis8 d16 cis h ais

   \barNumberCheck 60
   \clef "bass" h8 fis a! g fis e d fis e
   fis4.~ fis8 e16 d cis h ais h cis h ais gis
   fis8 ais cis \halsdown fis2.~
   fis2.~ fis4.~
   fis2.~ fis4.

   \barNumberCheck 65
   h4.~ h8 a!16 g fis e dis e fis e dis cis
   h8 dis fis h2.~
   h2.~ h4.~
   h2.~ h4.~
   h16 e, g h e d e8 ais, cis d gis, h

   \barNumberCheck 70
   \halsneutral cis8 d16 cis h ais d8 gis, h cis fis, ais
   h16 h, cis d e fis g a g fis g e fis4 fis,8
   \halsdown h4.~ h16 h d fis h ais h,8\rest d h
   \shiftOn e4 h8\rest h4.\rest e4 h8\rest
   a4.~ a16 a c e a g! h,8\rest c a

   \barNumberCheck 75
   d4 h8\rest h4.\rest d4 h8\rest
   g4.~ \halsneutral g16 a h cis! d e fis,4.~
   fis16 d e fis g a \halsdown h4. cis
   d4. \halsneutral h'8 a g fis a g
   a4 r8 \staffup fis'4 e8\rest d4 c8\rest

   \barNumberCheck 80
   \staffdown \stemDown g4 r8 \staffup e'4 e8\rest cis4 c8\rest
   \staffdown \stemDown fis,4 r8 \staffup d'4 c8\rest h4 c8\rest
   \staffdown \halsneutral e,4 r8 cis'4 r8 a4 r8
   d,4.~ d16 e d c h a g a g fis e d
   cis4.~ cis16 d' cis h a g! fis g fis e d cis

   \barNumberCheck 85
   h4.~ h16 cis' h a g fis e fis e d cis h
   a4.~ a16 h' a g fis e d e d c h a
   g16 h c d e fis g4 h8\rest g'4 h,8\rest
   \halsdown g'4 h,8\rest fis4 h8\rest fis'4 h,8\rest
   fis'4 h,8\rest e4 h8\rest d4 h8\rest

   \barNumberCheck 90
   cis4 h8\rest a4 g8\rest \rr g4.\rest
   \rr g4.\rest a4 g8\rest \rr g4.\rest
   \rr g4.\rest a4 g8\rest \rr g4.\rest
   \rr g4.\rest d'16\rest a cis e a cis e8 d cis~
   cis4 d,8\rest d16\rest a d fis a cis d8 cis h~

   \barNumberCheck 95
   h4 d,8\rest d16\rest a cis e a h cis8 h a~
   a4 d,8\rest d16\rest a h d e gis h8 a gis
   a4 h,8\rest a4 h8\rest a'4 h,8\rest
   a'4 h,8\rest a4 h8\rest a'4 h,8\rest
   a'4 h,8\rest a4 h8\rest gis'4 h,8\rest

   \barNumberCheck 100
   \halsneutral a'8 h16 cis d e fis4 r8 e4 r8
   dis8 e16 dis cis h e4 r8 d4 r8
   cis8 d16 cis h a d4 r8 cis4 r8
   h8 cis16 h a h cis8 d16 cis h cis d8 cis16 h a g
   fis8 fis, a h e, g a d, fis

   \barNumberCheck 105
   g8 a16 g fis e a8 d, fis g cis, e
   \halsdown fis8 g16 fis e d g8 g, g' a a, a'
   h8 fis d \halsneutral h h' h, cis cis' cis,
   d8 e16 d cis d e8 fis16 e d e fis8 g16 fis e fis
   g8 h d \tieDown g2.~

   \barNumberCheck 110
   g8 fis a h e, g a d, fis
   h,8 d cis d fis, g a g a
   \times 9/8 <d, d'>1_\fermata
}

rightA = {
   \clef "treble"
   <<
      \sopranA
      \mezzoA
      \altA
   >>
}

leftA = {
   \clef "bass"
   <<
      \tenorA
      \bassA
   >>
}

