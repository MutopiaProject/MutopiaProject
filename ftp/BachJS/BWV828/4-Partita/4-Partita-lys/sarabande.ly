\include "defs.ly"
global = {
   \key d \major
   \time 3/4
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
   \override Beam.auto-knee-gap = #2.5
   \override TupletBracket #'stencil = ##f
}

sopranE = \new Voice \relative fis'' {
   \global
   \markLeft \markPadding \mark \markup { \vspace #4 \huge \bold "Sarabande" }
   \repeat volta 2 {
      \halsup fis32 e d8. d4( cis8.)^\prall d16
      \halsdown fis,16[ g a] \halsup h32 c \halsdown a'2
      \halsup h,16 a h d~ d cis! e d cis h a g
      \halsneutral fis16 a g fis g fis e fis e d8 e16

      \barNumberCheck 5
      fis32 gis a8 gis16 a e32 d e16 cis'~ cis d e, h'
      cis32 dis e8 dis16 e16 h32 a h16 gis'16~ gis a h, fis'
      gis32 a h8 a32 gis fis e a16. gis32 fis e dis e fis8 a,16
      \halsup gis32 fis e16 d' h gis e \staffdown h gis e fis32 gis a h \staffup \stemUp cis d
      \halsneutral cis32 e a8 gis16 a16 e32 a cis h a gis a16 e32 a cis h a gis

      \barNumberCheck 10
      a32 cis d8 cis16 d16 a32 d fis e d cis d16 a32 d fis e d cis
      d32 fis e d cis h cis e a16 gis32 fis e d cis h cis16 a e gis
      \halsup a4~ a16 a8 gis16 a4
   } \pageBreak
   \repeat volta 2 {
      cis32 h a8.~ a4( g!8)^\prall fis16 g
      \staffdown \once \override TupletNumber.extra-offset = #'( 0 . 8 )
         \tuplet 6/4 { \stemDown ais,16[ h cis d] \staffup \stemUp e[ fis] } \stemDown e'2

      \barNumberCheck 15
      \halsup d16 cis h^\prall g'~ g32 fis e16 fis c~ c32 h ais16 h e~
      e16 ais, h cis h ais gis ais gis fis8 ais32 cis
      \halsneutral d32 cis h8 cis32 dis e32 dis cis8 dis32 e fis32 e dis8 e32 fis
      g32 fis e16~ e32 h e fis g fis e d! cis h ais gis ais cis e8 g,16
      fis32 g fis e e fis e d d e d cis cis d cis h h cis h ais e'16. d32

      \barNumberCheck 20
      \appoggiatura cis32 h8~ h32 cis d e fis e d16~ d32 e fis g a32 g fis16~ fis32 g a h
      c32 h a8 dis16 e h32 a h16 g'~ g a c, h
      a32 g a8 g'16 fis32 e dis8 e32 g c32 h a8 gis32 a
      h,32 a' g fis g16 e c f dis e~ e dis32 cis dis fis a16~
      a16 g32 fis g8~ g32 fis e fis g fis e d cis h a h cis d e fis

      \barNumberCheck 25
      g32 a, gis a h cis d e fis16 c32 h c16 g' a c, h a
      h32 g fis g a h cis! d cis16 g32 fis g16 d' e g, fis e
      \halsup fis32 a h cis d cis d16~ d32 gis a h a gis fis e d cis d16 h' d,
      d16 cis8.~ cis32 d e d cis d cis h h16 a8.
      fis'32 e d8. d4( cis8.)^\prall d16
      
      \barNumberCheck 30
      \halsdown fis,16[ g a] \halsup h32 c \halsdown a'2
      \halsup h,32 cis! d8 cis16 d a32 g a16 fis'~ fis g a, g'
      \halsneutral fis32 g a8 g32 fis e fis g8 fis32 e d e fis8 e32 d
      cis e d cis d cis h a~ a fis' e d e cis h a~ a g' fis e fis cis h a~
      \once \override Beam.positions = #'( -4 . -3 ) a32 a' g fis g fis e d cis e d cis d cis h a g h a g a g fis e
      
      \barNumberCheck 35
      fis32 a d,8 cis16 d16 a32 d fis e d cis d16 a32 d fis e d cis
      d32 fis g8 fis16 g16 d32 g h a g fis g16 d32 g h a g fis
      g32 h a g fis e fis a d16 cis32 h a g fis e fis16 d a cis
      d4 \staffdown fis,16 \staffup \stemUp a d cis d4 \mark \markup \fermata
   }
}

altE = \new Voice \relative a' {
   \global
   \repeat volta 2 {
      \halsup \shiftOn \override NoteColumn.force-hshift = #0.3 a4 g2 \revert NoteColumn.force-hshift
      s2. * 10
      << \new Voice { \stemDown c,16\rest e fis d cis8 h a4 }
         \new Voice { \stemUp s4 s8 d \shiftOnn cis4}
         \new Voice { \stemUp s2 \shiftOn e4 } >>
   }
   \repeat volta 2 {
      \halsdown e4 d e
      s2.

      \barNumberCheck 15
      s2. * 10
      
      \barNumberCheck 25
      s2.
      s2.
      s2.
      s2.
      \halsup \shiftOn \override NoteColumn.force-hshift = #0.3 a4 g2 \revert NoteColumn.force-hshift
      
      \barNumberCheck 30
      s2. * 5
      
      \barNumberCheck 35
      s2.
      s2.
      s2.
      s4 \stemDown s16 a,8 g16 a4
   }
}

tenorE = \new Voice \relative d' {
   \global
   \repeat volta 2 {
      \staffup \override NoteColumn.force-hshift = #0.3 d4 e2 \revert NoteColumn.force-hshift
      s2. * 8

      \barNumberCheck 10
      s2.
      s2 \staffdown e,4~
      e8 d e f e4
   }
   \repeat volta 2 {
      s2.
      s2.
      \barNumberCheck 15
      s2. * 10
      \barNumberCheck 25
      s2.
      s2.
      s2.
      s2.
      \staffup \override NoteColumn.force-hshift = #0.3 d'4 e2 \revert NoteColumn.force-hshift
      \barNumberCheck 30
      s2. * 8
      \staffdown
         << \new Voice { s4 \stemDown \once \override NoteColumn.force-hshift = #0 fis,8. e16 fis4 } 
            \new Voice { \stemUp d,16 fis a d~ \stemDown \once \override NoteColumn.force-hshift = #1 d2 } >>
   }
}

bassE = \new Voice \relative d' {
   \global
   \repeat volta 2 {
      s2.
      s2.
      \staffup g8 fis e g \staffdown a, cis
      \halsneutral d8 a d, a fis a

      \barNumberCheck 5
      d,8[ d''16 h cis8 a h gis]
      a,8[ a'16 fis gis8 e fis dis]
      e,8[ d'!16 h cis8 a] fis[ dis']
      e8 e, g4\rest g\rest
      a'8 h cis e cis a

      \barNumberCheck 10
      fis8 e fis a fis d
      \halsdown h16 gis' a e cis h cis d e8 e,
      a2.
   }
   \repeat volta 2 {
      a'4 h cis
      s2.

      \barNumberCheck 15
      \staffup h8 g' cis, dis \staffdown g, \staffup e'
      \staffdown fis,8 \staffup g' fis e d cis
      \staffdown \halsneutral h8 a g a g fis
      e8 d cis d cis h
      ais8 h e g fis fis,

      \barNumberCheck 20
      h8 cis d e fis g
      a8 fis g e e' d
      c8 a h g a fis
      dis'8 e a, c fis, h
      e,8 h e, h' e d

      \barNumberCheck 25
      cis a d e fis d
      g8 e a h cis a
      d8 h \staffup e fis gis e
      a8 h a g! fis e
      s2.

      \barNumberCheck 30
      s2.
      g8 e fis d e cis
      d8 \staffdown h cis a h gis
      \halsneutral a8 e g! cis, e a,
      cis,4 r r8 cis'
      
      \barNumberCheck 35
      d8 e fis a fis d
      h8 a h d h g
      e16 cis' d a fis e fis g a8 a,
      \shiftOn \stemDown d2.
      \override Staff.RehearsalMark.direction = #DOWN
      \mark \markup { \musicglyph #"scripts.dfermata" }
   }
}

rightE = {
   \clef "treble"
   <<
      \sopranE
      \altE
   >>
}

leftE = {
   \clef "bass"
   <<
      \tenorE
      \bassE
   >>
}

