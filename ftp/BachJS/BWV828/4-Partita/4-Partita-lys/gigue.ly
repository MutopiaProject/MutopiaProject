\include "defs.ly"
global = {
   \key d \major
   \time 9/16
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
   \override Beam.auto-knee-gap = #2.5
   \override TupletNumber #'stencil = ##f
   \override TupletBracket #'stencil = ##f
}

sopranG = \new Voice \relative d' {
   \global
   \markLeft \markPadding \mark \markup { \vspace #4 \huge \bold "Gigue" }
   \repeat volta 2 {
      \halsneutral d8.~ d16 fis a d a fis
      d16 fis a c8. r
      h16 a h e,8.~ e16 fis g
      a16 g a d,8.~ d16 e fis

      \barNumberCheck 5
      g16 e cis a cis e g fis e
      fis16 d e fis gis a h cis d
      cis16 h a d cis h cis h a
      e'8.~ e16 cis d e fis g
      a8.~ a16 h, cis d e fis

      \barNumberCheck 10
      g8.~ g16 a, h cis d e
      fis8. gis, h'~
      h16 cis, e a8. \halsup dis,
      e16 e, fis g a h cis d! e
      d8. c' fis,

      \barNumberCheck 15
      g16 g, a h cis! d e fis g
      fis16 e d a'8. g8.~
      g8. fis a\rest
      fis8. g8 a16\rest a8.\rest
      g8. fis8 f16\rest f8.\rest

      \barNumberCheck 20
      d8. cis e~
      e8. d gis
      a8. cis, dis~
      dis8. e ais
      h8. dis, eis

      \barNumberCheck 25
      fis8. a a
      a8. a\rest a\rest
      g16 fis e g8. g
      g8. a\rest a\rest
      fis16 d h~ h ais h cis d e

      \barNumberCheck 30
      d16 h g~ g fis g a! h c
      h16 g e'~ e dis e fis g a
      \once \override Tie.staff-position = 8 \times 3/2 g4.~
      g16 s8 \halsneutral g16 e cis a e cis
      \staffdown a16 \staffup \stemUp d fis \stemNeutral a d fis d a fis

      \barNumberCheck 35
      \stemUp d16 \staffdown h \staffup \stemNeutral d gis h d gis h gis
       a16 e cis a e cis \staffdown a \staffup \stemNeutral cis e
      a16 cis e g8. r
      fis16 e fis h,8.~ h16 cis d
      e16 d e a,8.~ a16 h cis

      \barNumberCheck 40
      d16 h gis e gis h \halsup d cis h
      cis8.~ cis d\rest
      cis8.~ cis d\rest
      c8.~ c d\rest
      c8.~ c d\rest

      \barNumberCheck 45
      r16 fis, gis a h c~ c h a
      gis16 a h << \new Voice { s8. \halsup \shiftOff e8.~
                              e16 d cis h cis a e a gis }
                   \new Voice { \stemUp \tieDown \shiftOn e16 gis h~ h8. }
                   \new Voice { \halsdown \shiftOnn s16 gis8~ \halsup gis8. }
                   \new Voice { \halsdown \once \override Tie.staff-position = -7.5
                                 e8.~ \once \override NoteColumn.force-hshift = 1 e8. } >>
      \staffdown a,,16 cis e a cis \staffup \halsup e a8.
   } \break
   \repeat volta 2 {
      s8. * 3

      \barNumberCheck 50
      s8. * 3 * 10

      \barNumberCheck 60
      s8. * 3
      s8. * 3
      s8. * 3
      s8. * 3
      cis16 d e fis, e' d cis d e

      \barNumberCheck 65
      gis,16 e' d cis d e ais, h cis
      d16 fis a gis fis e d cis h
      cis16 e g! fis e d c h a
      h16 c d c h a h a g
      a16 h c h a g a g fis

      \barNumberCheck 70
      \halsneutral g16 h' a g fis e d cis h
      cis16 d e d e fis e fis g
      fis16 a g fis e d \halsup c h ais
      h16 cis! d cis d e d e fis
      e8. cis g'

      \barNumberCheck 75
      fis8. e4.
      fis8. h4.~
      h8. a g!
      \times 3/2 fis4.~
      fis8.~ fis16 fis e d cis h

      \barNumberCheck 80
      \once \override Tie.staff-position = 4.5 \times 3/2 e4.~
      e8.~ e16 e d cis h a
      \times 3/2 d4.~
      d8.~ d16 d cis h a gis!
      cis16 h a d4.

      \barNumberCheck 85
      e16 fis e d h c~ c8 c'16
      \halsneutral h16 a h e,8.~ e16 fis g
      a16 g a d,8.~ d16 e fis
      g16 e cis a cis e g fis e
      \halsup \override Stem.length = 7.3 fis8.~ fis a\rest

      \barNumberCheck 90
      fis8.~ fis a\rest
      f8.~ f a\rest
      f8.~ f a\rest
      \revert Stem.length \halsneutral r16 h, cis d e f~ f e d
      cis16 d e \halsup a, cis e \once \override NoteColumn.force-hshift = 0
         \once \override Stem.length = 6.7 a8.~

      \barNumberCheck 95
      \halsneutral a16 g fis e fis d a d cis
      d16 a fis d16 \down a fis \stemUp d8.
      \mark \markup \fermata
   }
}

altG = \new Voice \relative e'' {
   \global
   \repeat volta 2 {
      s8. * 3 * 14

      \barNumberCheck 15
      s8. * 3
      s4. \halsup \shiftOn e8.~
      e8. s4.
      s8. * 3
      s8. * 3

      \barNumberCheck 20
      s8. * 3 * 9
      s4. ais,!8.

      \barNumberCheck 30
      s4. fis8.
      \halsdown c8.\rest e dis
      g'16 e \tieDashed \tieUp cis!~ \halsup cis \tieSolid h cis d cis h
      \halsdown a16 cis e s4.
      s8. * 3

      \barNumberCheck 35
      s8. * 3 * 5

      \barNumberCheck 40
      s8. * 3
      \halsdown cis16 gis a~ \halsup a8. g\rest
      \halsdown cis16 gis a~ \halsup a8. g\rest
      \halsdown c16 gis a~ \halsup a8. g\rest
      \halsdown c16 gis a~ \halsup a8. g\rest

      \barNumberCheck 45
      s8. * 3
      s8. * 3
      s8. * 3
      s8. * 3
   }
   \repeat volta 2 {
      R8. * 3

      \barNumberCheck 50
      R8. * 3 * 5

      \barNumberCheck 55
      \halsneutral fis16 g a h, a' g fis g a
      c,16 a' g fis g a d, e fis
      g16 h d cis h a g fis e
      fis16 a c h a g fis e d
      e16 fis g fis e d e d cis

      \barNumberCheck 60
      d16 a' g fis e d c! h a
      h8. dis a'~
      a16 h a gis fis e d cis h
      cis8. eis \halsdown h'~
      h8. ais fis

      \barNumberCheck 65
      d8. e cis
      h8.~ h16 cis d e fis gis
      a8.~ a16 h, c d e fis
      g8. \staffdown g,4.~
      g8. fis dis!

      \barNumberCheck 70
      e8. h' e
      \times 3/2 a,4.~
      a8. e'\rest \staffup fis~
      fis8. e h'~
      h8. ais e'

      \barNumberCheck 75
      d4. cis8.
      h4. gis'8.
      e8. d\rest e~
      e16 fis, g a h cis d e fis
      h,16 cis d gis,4.~

      \barNumberCheck 80
      gis16 e fis gis a h cis d e
      a,16 h cis fis,4.~
      fis16 d e fis gis a h cis d
      gis,16 a h e,4.~
      e8. g16\rest cis h a h g!~

      \barNumberCheck 85
      g4. fis8 e16\rest
      s8. * 3
      s8. * 3
      s8. * 3
      \halsdown fis'16 cis d~ \halsup d8. c\rest

      \barNumberCheck 90
      \halsdown fis16 cis d~ \halsup d8. c\rest
      \halsdown f16 cis d~ \halsup d8. c\rest
      \halsdown f16 cis d~ \halsup d8. c\rest
      s8. * 3
      << \new Voice { s8. s8 \halsdown \once \override Tie.staff-position = #2.2 e16~ \stemUp
                        \once \override NoteColumn.force-hshift = 0.5 e8. }
         \new Voice { s8. s16 \halsdown \once \override Tie.staff-position = #-1 cis8 ~
                        \once \override NoteColumn.force-hshift = 0.5 cis8. } >>

      \barNumberCheck 95
      s8. * 3
      s8. * 3
   }
}

tenorG = \new Voice \relative a {
   \global
   \repeat volta 2 {
      R8. * 3
      R8. * 3
      R8. * 3
      R8. * 3

      \barNumberCheck 5
      R8. * 3
      R8. * 3
      \clef "treble" a8.~ a16 cis e a e cis
      a16 cis e g8. r
      fis16 e fis h,8.~ h16 cis d

      \barNumberCheck 10
      e16 d e a,8.~ a16 h cis
      \clef "bass" d16 h gis e gis h d cis h
      cis16 a h cis \staffup dis e fis g! a
      g8. e ais,
      h16 cis d e fis g a h c

      \barNumberCheck 15
      h8. g cis,
      d8. e\rest cis'~
      cis8. d16 fis, g a h c
      d8.~ d16 e, fis g a h
      cis!8.~ cis16 d, e fis g a

      \barNumberCheck 20
      h8. e,\rest cis'
      a8. g\rest d'
      e8. e, fis
      h4. e8.
      fis8.fis, gis

      \barNumberCheck 25
      cis8. fis fis
      fis16 fis, g! a h cis dis e fis
      h,8.\rest e e
      e16 e, fis g a h cis d e
      e,8.\rest fis e

     \barNumberCheck 30
      c8.\rest d c
      \staffdown c8.\rest h a
      s8. \staffup g' fis
      s8. * 3
      s8. * 3

      \barNumberCheck 35
      s8. * 3 * 5

      \barNumberCheck 40
      s8. * 3
      \shiftOff s8. \once \override NoteColumn.force-hshift = 0.5 e c\rest
      s8. \once \override NoteColumn.force-hshift = 0.5 e c\rest
      s8. \once \override NoteColumn.force-hshift = 0.5 dis c\rest
      s8. \once \override NoteColumn.force-hshift = 0.5 e c\rest

      \barNumberCheck 45
      s8. * 3 * 4
   }
   \repeat volta 2 {
      s8. * 3

      \barNumberCheck 50
      s8. * 3 * 39
      \shiftOff s8. \once \override NoteColumn.force-hshift = 0.5 a' e\rest

      \barNumberCheck 90
      s8. \once \override NoteColumn.force-hshift = 0.5 a e\rest
      s8. \once \override NoteColumn.force-hshift = 0.5 gis e\rest
      s8. \once \override NoteColumn.force-hshift = 0.5 a e\rest
      s8. * 3
      s8. \halsdown \once \override Tie.staff-position = #-4.6
                  \once \override Tie #'X-extent = #'( 22 . 8 ) a~
         \once \override NoteColumn.force-hshift = #1 a

      \barNumberCheck 95
      s8. * 3
      s8. * 3
   }
}

bassG = \new Voice \relative d {
   \global
   \repeat volta 2 {
      s8. * 3 * 14

      \barNumberCheck 15
      s8. * 3
      \halsneutral d8.~ d16 fis a d a fis
      d16 fis a c8. r
      h16 a h e,8.~ e16 fis g
      a16 g a d,8.~ d16 e fis

      \barNumberCheck 20
      g16 e cis a cis e g fis e
      fis16 d e fis g a h cis d
      cis16 h a h a g a g fis
      g16 e fis g a h cis d e
      d16 cis h cis h a h a gis

      \barNumberCheck 25
      a16 gis fis fis a cis e dis cis
      dis8. r r
      e,8.~ e16 g h d cis h
      cis8. r r
      d,8. d' cis

      \barNumberCheck 30
      h,8. h' a
      g,8. g' fis
      e8. e' d
      cis8. r r
      a8. r r

      \barNumberCheck 35
      r16 h8 r8. r
      r8. r a
      r8. r16 a, cis e a cis
      d,8. r16 gis, h d fis h
      cis,8. r16 fis, a cis e a

      \barNumberCheck 40
      h,8. r16 e, gis h e gis
      a,8.~ a16 cis e a e cis
      gis8.~ gis16 cis e a e cis
      fis,8.~ fis16 a h c h a
      e8.~ e16 a h c h a

      \barNumberCheck 45
      dis,8. dis' dis,
      d!8.~ d16 e fis gis a h
      cis,8. d e
      \halsdown a4.~ a8.
   }
   \repeat volta 2 {
      \halsdown cis'16 d e fis, e' d cis d e

      \barNumberCheck 50
      g,16 e' d cis d e a, h cis
      d16 \up fis a gis fis e d cis h
      cis16 e g! fis e d \down cis h a
      h16 cis d cis h a h a gis
      \halsneutral a16 e' d cis h a g! fis e

      \barNumberCheck 55
      d8.~ d16 fis a d a fis
      d16 fis a c8. r
      h16 a h e,8.~ e16 fis g
      a16 g a d,8.~ d16 e fis
      g16 e cis a cis e g fis e

      \barNumberCheck 60
      fis8. a d,
      g16 d' c h a g fis e dis
      e8. h gis'
      a16 e' d cis! h a gis fis eis
      fis8. r ais

      \barNumberCheck 65
      h8. e, fis
      h,8. e r
      a,8. d r
      g,8. \halsdown e' d
      cis8. dis h

      \barNumberCheck 70
      e,8. r g'~
      g8. fis cis
      d8. a' d
      g,4. r8.
      \halsneutral cis,16 d e fis, e' d cis d e

      \barNumberCheck 75
      gis,16 e' d cis d e ais, h cis
      d16 fis a gis fis e d cis h
      cis16 e g! fis e d cis h a
      d8. d' h
      gis16 a h~ h a gis fis e d

      \barNumberCheck 80
      cis8. cis' a
      fis16 gis a~ a gis fis e d cis
      h8. h' gis
      e16 fis gis~ gis fis e d cis h
      a16 h cis h a' g! fis g a

      \barNumberCheck 85
      cis,16 a' g fis g a d, e fis
      g16 h d cis h a g fis e
      fis16 a c h a g fis e d
      e16 fis g fis e d e d cis
      d8.~ d16 fis a d a fis

      \barNumberCheck 90
      cis8.~ cis16 fis a d a fis
      h,8.~ h16 d e f e d
      a8.~ a16 d e f e d
      gis,8. gis' gis,
      g!8.~ g16 a h cis d e

      \barNumberCheck 95
      fis,8. g a
      d,4. d'8.
      \override Staff.RehearsalMark.direction = #DOWN
      \mark \markup { \musicglyph #"scripts.dfermata" }
   }
}

rightG = {
   \clef "treble"
   <<
      \sopranG
      \altG
   >>
}

leftG = {
   \clef "bass"
   <<
      \tenorG
      \bassG
   >>
}

