\include "defs.ly"

global = {
   \key d \major
   \time 4/4
   % \override TupletNumber #'stencil = ##f
   \override TupletBracket #'stencil = ##f
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

sopranB = \new Voice \relative fis' {
   \global
   \markLeft \markPadding \mark \markup { \vspace #4 \huge \bold "Allemande" }
   \repeat volta 2 {
      \halsup \partial 8 fis8
      fis2~ fis16 e fis a g fis e d
      d16 a'8.~ a16 g fis e fis a h c~ c a g fis~
      \halsneutral fis16 c' h a h g e'8~ e16 d cis h a g32 fis g16 e'
      g,4( fis)~\prall fis16 a h cis d cis h a

      \barNumberCheck 5
      \halsup a8 fis'4.~ fis16 g fis e fis d ais8~
      ais16 cis h ais ais16 h8.~ h16 d cis h cis d e fis
      \tuplet 3/2 { g16 fis e } h'8~ h16 a g fis \tuplet 3/2 { g16 fis e } g8~ g16 fis e d!
      \tuplet 3/2 { e16 d cis } e8~ e16 d cis h \tuplet 3/2 { cis16 h ais } fis'8~ fis16 e d cis
      d16 h ais h h d8.~ d16 e32 fis e16 d d16 e32 fis e16 d

      \barNumberCheck 10
      d16 gis32 a h8~ h16 a gis fis \tuplet 3/2 { e16 d cis } d8~ \tupletSpan 8 \tuplet 3/2 { d16 cis h fis' e d }
      cis16 a gis a a cis8.~ cis16 d32 e d16 cis cis16 d32 e d16 cis
      \halsneutral c16 fis32 gis a8~ a16 gis fis e \tuplet 3/2 { dis16 cis h } c8~ \tuplet 3/2 { c16 h a c h a }
      a16 gis8.~ \tupletSpan \default \ntn \times 5/6 { gis8. } dis'32 e fis e16 dis dis e e gis a c
      e,32 f g! f e f e d~ \ntn \times 5/6 d8. cis32 d e d16 cis cis d d e gis h

      \barNumberCheck 15
      d,32 e f e d e d c~ { \ntn \times 5/6 c8. } h32 c d c16 h h c c fis32 gis a16 c,~
      \halsup \tupletSpan 8 \tuplet 3/2 { c h a h a gis f'e d e d c a' gis fis gis fis e c' h a h a gis }
      gis8 a32 gis fis e dis16 a' a,8~ a16 h cis8~ cis16 d32 e d cis h16
      a2~ a4~ a16 fis g8~
      g32 e fis g fis16 d~ d d32 e fis gis a16~ a32 fis gis a gis16 e~ e e32 fis gis a h16~

      \barNumberCheck 20
      h32 gis a h a16 fis~ fis fis32 gis a h cis16~ cis32 a h cis h16 gis~ gis gis32 a h cis d16~
      \tuplet 3/2 { d cis h cis h a d c h c h a } c16 dis,8 e16~ \tuplet 3/2 { e16 a h c h a }
      \halsneutral f'16 gis,8 a16~ \tuplet 3/2 { a16 d e f e d gis d e f e d a' d, e f e d }
      h'32 f e d e16 h c gis a dis,~ dis32 e fis! gis a h cis d~ d16 h gis a
      \halsup a4~ a16 gis8 a16~ a4.
   } \pageBreak
   \repeat volta 2 {
      e'8 \noBreak

      \barNumberCheck 25
      e2~ e16 e fis g fis e d cis
      a'4~ a16 g fis e d h cis e~ e d cis h~
      \halsneutral h16 a cis d~ d cis32 h fis'16 g~ g e32 fis g a h16~ h32 a g fis g16 e
      e4(\prall fis4~)\mordent fis16 fis fis32\prall e fis16 a h, c8~
      c16 c c32\prall h c16 fis gis, a8~ a16 h32 cis dis e fis16~ fis dis32 e fis g! a16~

      \barNumberCheck 30
      a16 fis g8~\mordent g16 fis32 g a g fis16 g32 fis e16 h' a~ a g32 fis e16 dis
      e32 dis cis h a'16 g~ g fis32 e d16 cis \tuplet 3/2 { d16 cis h } g'16 fis~ fis e32 d cis d e16
      h8 ais~ \tupletSpan \default \ntn \times 5/6 ais8. eis'32 fis gis fis16 eis eis fis fis ais ais h
      fis32 g! a! g fis g fis e~ \ntn \times 5/6 e8. dis32 e fis e16 dis dis e e ais ais h
      e,32 fis g fis e fis e d!~ \ntn \times 5/6 d8. cis32 d e d16 cis cis d d gis32 ais h16 d,~

      \barNumberCheck 35
      \tupletSpan 8 \tuplet 3/2 { d16 cis h cis h ais } ais16 g'8.~ \tuplet 3/2 { g16 fis e fis e dis } dis16 c'8.~
      c32 a h c h8~ \tuplet 3/2 { h16 a g a g fis } g32 fis e dis e8~ \tuplet 3/2 { e16 d c d c h }
      c16 g8 a32 h \tuplet 3/2 { c16 d e f e d } c16 g8 a32 h \tuplet 3/2 { c16 d e f e d }
      cis!16 ais8 fis'32 e fis16 h~ h32 fis e d e16 cis8 e32 d e16 ais~ ais32 e d cis
      d16 h8 h'32 a g16 g32 fis e16 e32 d cis g' fis e fis16 h, d8 cis16.(\prall h32)

      \barNumberCheck 40
      \halsup h2 s4 r16 d, fis g
      a4 s a16 fis d e fis g a h
      c32 h a16 h8~ h4~ h16 a h c h a h dis~
      dis16 e a, dis~ dis e g, dis'~ dis e fis, e'~ e dis32 e fis16 a,~
      \tuplet 3/2 { a16 fis g a g fis } fis16 g8.~ g16 a32 h a16 g g a32 h a16 g

      \barNumberCheck 45
      g16 cis32 d e8~ e16 d cis h a g32 fis g8~ \tuplet 3/2 { g16 fis e h' a g }
      fis16 d cis d d fis8.~ fis16 g32 a g16 fis fis g32 a g16 fis
      f16 h32 cis d8~ d16 cis h a \tuplet 3/2 { gis16 fis e } f8~ \tuplet 3/2 { f16 e d f e d
      cis16 h a } g'8~ \tuplet 3/2 { g16 f e f e d e d cis } b'8~ \tuplet 3/2 { b16 a g a g f
      g f e } d'8~ \tuplet 3/2 { d16 cis h cis h a g' fis! e fis e d } a'16 c,8.~

      \barNumberCheck 50
      c32 a h c h16 g~ g g32 a h cis d16~ d32 h cis d cis16 a~ a a32 h cis d e16~
      e32 cis d e d16 h~ h16 h32 cis d e fis16~ fis32 d e fis e16 cis~ cis cis32 d e fis g16~
      \tuplet 3/2 { g16 fis e fis e d g f e f e d } f16 gis,8 a16~ \tuplet 3/2 { a16 d e f e d }
      b'16 cis,8 d16~ \tuplet 3/2 { d16 g, a b a g cis g a b a g d' g, a b a g }
      \halsneutral e'32 b a g a16 e f cis d gis,~ gis32 a h! cis d e fis g~ \tuplet 3/2 { g16 fis e fis e d }

      \barNumberCheck 55
      d32 fis e d c'8~ c16 h32 a h16 e~ e32 d cis h a d gis,16~ \tuplet 3/2 { gis16 a d, g fis e }
      \halsup d4~ d16 cis8 d16~ d4. \mark \markup \fermata
   }
}

mezzoB = \new Voice \relative d' {
   \global
   \repeat volta 2 {
      \halsup \shiftOn \partial 8 s8
      d2 s
      s1
      s1
      s1

      \barNumberCheck 5
      s1 * 15

      \barNumberCheck 20
      s1
      s1
      s1
      s1
      s2..
   }
   \repeat volta 2 {
      s8

      \barNumberCheck 25
      cis'2 s2
      e4 s2.
      s1
      s1
      s1

      \barNumberCheck 30
      s1 * 26
      s2..
   }
}

altB = \new Voice \relative a {
   \global
   \repeat volta 2 {
      \halsdown \partial 8 s8
      a2 s
      d2 s
      s1
      s1

      \barNumberCheck 5
      a'2 s
      s1
      s1
      s1
      s1

      \barNumberCheck 10
      s1
      s1
      s1
      s1
      s2 \staffdown e8\rest \once \override Tie.staff-position = #9 h4.~

      \barNumberCheck 15
      h8 s s4 s2
      \staffup e8\rest d4 c8 \staffdown h e dis d~
      d8 h c8 e16 dis \staffup a'4 gis
      s1
      s1

      \barNumberCheck 20
      s1
      s1
      s1
      s4 \staffdown e8\rest c h a h \staffup d~
      \tupletSpan \default \ntn \times 5/6 d8. fis32 e d e4 d8( cis4)
   }
   \repeat volta 2 {
      s8

      \barNumberCheck 25
      a'2 s
      cis4 s2.
      s1
      s1
      s1

      \barNumberCheck 30
      s1
      s1
      s1
      s2 \staffdown g8\rest \once \override Tie.staff-position = #8.7 cis,4.~
      cis4 s2.

      \barNumberCheck 35
      s1 * 5

      \barNumberCheck 40
      \staffup e16\rest e fis cis d2 s4
      s1
      e8\rest e16\rest fis g d h8 s2
      s1
      s1

      \barNumberCheck 45
      s1 * 10

      \barNumberCheck 55
      s2 s4 s8 cis
      \ntn \times 5/6 d8. h32 a g a4 \staffdown \once \override NoteColumn.force-hshift = #-0.5 g8( fis4)
   }
}

tenorB = \new Voice \relative d {
   \global
   \repeat volta 2 {
      \halsup \partial 8 s8
      d4\rest a d2~
      d4 a d2~
      d2. cis4
      s1

      \barNumberCheck 5
      a'8\rest fis a cis \staffup d a d fis~
      fis8 h, d fis g e\rest e4\rest
      \staffdown h8\rest g h \staffup dis e8 h e g~
      g8 cis, e g fis2~
      fis8 d fis a gis4 e8\rest fis~

      \barNumberCheck 10
      fis8 e16 d e4 \staffdown d8\rest a d8\rest h
      \staffup e8\rest cis e g! fis4 \staffdown e8\rest e
      dis8 c16 h c8 a~ a a4 fis8
      e4 c'8\rest gis a c a fis
      gis8 h fis a gis4 \shiftOn gis~

      \barNumberCheck 15
      gis8 gis a c a2~
      a8 gis a4 \halsdown h8 s s4
      s2 \halsup e4 h8 e~
      e16 a, cis e d4 c16\rest e, a cis e4
      c8\rest a h4~ h8 h cis4~

      \barNumberCheck 20
      cis8 cis d4~ d8 d e4~
      e8 e4 e8 c8\rest a4 a8
      c8\rest h e, a f\rest d4 d8~
      d4 s2.
      a'8 a, cis e a4.
   }
   \repeat volta 2 {
      s8

      \barNumberCheck 25
      e4\rest cis e a
      e'4\rest cis e2~
      e4 d2 cis4
      d8 s s4 c4\rest c8\rest fis,
      a8 fis a c~ c fis, h4~

      \barNumberCheck 30
      h8 h cis dis e2~
      e4 cis8 fis~ fis d h e~
      e8 cis ais cis d cis h gis
      ais8 cis gis h ais4 ais~
      ais8 ais h d h2

      \barNumberCheck 35
      ais8 d\rest d\rest ais h g'\rest g\rest dis
      e8 e\rest e\rest dis e e\rest e4\rest
      s1
      s1
      s1

      \barNumberCheck 40
      s4 c16\rest ais h fis \halsdown d h d fis h4
      s1
      \halsup f4\rest f8\rest f16\rest d g2~
      g8 a4 h c dis,8
      e4. h8 e2~

      \barNumberCheck 45
      e8 a16 g a4 a8\rest d, a'8\rest e
      a8\rest fis a c h4 a8\rest a
      gis8 f16 e f8 d~ d d4 h8
      f'8\rest h, cis d f\rest cis d f
      f8\rest e g a f8\rest c d fis

      \barNumberCheck 50
      \staffup c'8\rest d e4~ e8 e fis4~
      fis8 fis g4~ g8 g a4~
      a8 a4 a8 e\rest d4 d8
      e8\rest e a, d \staffdown c8\rest g4 g8
      a8\rest e a\rest f~ f e16 d cis4

      \barNumberCheck 55
      d8\rest d4 g fis e8
      \once \override Beam.positions = #'( 3.3 . 2.2 ) fis8 d, fis a \halsdown d4.
   }
}

bassB = \new Voice \relative d, {
   \global
   \repeat volta 2 {
      \halsdown \partial 8 r8
      d2. e4
      fis2. d4
      g4 e a2
      \halsneutral d8 cis16 h a d fis, a d,4~ d16 a' h cis

      \barNumberCheck 5
      d2. r4
      g2~ g8 a! g fis
      e2. r4
      ais2~ ais8 cis ais fis
      h2~ h8 h a!4

      \barNumberCheck 10
      gis4. e8 fis4 gis
      a2~ a8 a g!4
      fis4 e fis dis
      \halsdown g,8\rest e e'4~ e2~
      e2~ e4. e8

      \barNumberCheck 15
      f2~ f8 f e dis
      e1
      f4 fis r8 e4.
      fis4~ fis16 fis e d cis4~ cis8. a16
      d4. dis8 e4. eis8

      \barNumberCheck 20
      fis4. fis8 gis4. gis8
      a4 g fis e
      d4 c h a
      gis8 gis' a4 e2
      s8 a,4.~ a4.
   }
   \repeat volta 2 {
      s8

      \barNumberCheck 25
      a2. a'4
      g2. g4
      fis4 h e, a
      d8 cis16 h a d fis, a d,8 a d4~
      d2 dis4. h8

      \barNumberCheck 30
      e2~ e8 g fis a
      g8 h ais4 h g
      fis1~
      fis2~ fis4. fis8
      g2~ g8 g fis eis

      \barNumberCheck 35
      fis8 g fis e! dis c' h a
      g8 a g fis e g, a h
      \halsneutral e, e' c g e e' c g
      e8 e' d g cis, h cis fis
      h,8 d e fis g e fis fis,

      \barNumberCheck 40
      h2 s
      r16 fis a d fis a \staffup d fis \staffdown r4 d,,
      \halsdown g2. g4
      c4 h a h
      e8 h e,4. cis'8 d h

      \barNumberCheck 45
      cis4. a8 h4 cis
      d2~ d8 d c4
      h4 a h gis
      a2 a
      a2 a

      \barNumberCheck 50
      g'4. gis8 a4. ais8
      h4. h8 cis4. cis8
      d4 c h a
      g4 f e d
      cis4 d a4. g8

      \barNumberCheck 55
      fis4 g8 e' cis d a4
      d8 d,4.~ d4.
      \override Staff.RehearsalMark.direction = #DOWN
      \mark \markup { \musicglyph #"scripts.dfermata" }
   }
}

rightB = {
   \clef "treble"
   <<
      \sopranB
      \mezzoB
      \altB
   >>
}

leftB = {
   \clef "bass"
   <<
      \tenorB
      \bassB
   >>
}

