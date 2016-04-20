% showLastLength = R8 * 94
\include "defs.ly"

global = {
   \key d \major
   \time 3/2
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
   \override TupletNumber #'stencil = ##f
}

sopranC = \new Voice \relative fis' {
   \global
   \markLeft \markPadding \mark \markup { \vspace #4 \huge \bold "Courante" }
   \repeat volta 2 {
      \halsup \partial 8 fis8
      fis4. d16 fis g8 d16 g a4 h^\mordent cis
      d2 e4 fis fis8 g fis e
      fis8 d16 fis g8[ d16 g] \halsneutral a4. h,8 e fis16 g fis8 e
      \grace d8 cis4.^\prall a16 cis d8 a16 d e4 \appoggiatura a,8 g2~

      \barNumberCheck 5
      g8 fis16 e fis8 ais h4.^\mordent cis8 d cis e4
      \grace e8 d4. h16 d e8 cis16 e fis4 gis4.^\mordent a8
      gis4.\prall e16 gis a8 e16 a h4 a8 gis fis e
      d4( cis8)^\prall a16 cis d8 a16 d e4 fis4.^\mordent g8
      fis4. h,8[ h16\prall a h8] e4 a,8 h cis a

      \barNumberCheck 10
      \halsup d2.~ d2 cis4~
      cis4 h8[ a16 gis a8 h] \halsneutral gis8 e16 gis a8[ e16 a] h8 e,16 h'
      cis8 e,16 cis' \appoggiatura cis16 d4. cis16 h cis8[ a16 cis] d8[ a16 d] e8[ a,16 e']
      fis8 a,16 fis' \appoggiatura fis16 g4. fis16 e fis8[ d16 fis] gis8[ d16 gis] a8[ d,16 a'16]
      \appoggiatura a8 h4~ h16 a gis fis e8 a~ a16[ gis fis e] d8 fis~ fis16[ e d cis]

      \barNumberCheck 15
      h8 d~ d16[ cis h a] gis8 e'~ e[ a,] \slurDown cis4( h8^\prall a16 h)
      a2. \times 5/4 a2
   } 
   \pageBreak
   \repeat volta 2 {
      \halsup e'8 \noBreak
      e4. a16 e cis8 e16 cis a4 \appoggiatura a8 h4. cis8
      \once \override Tie.staff-position = #5.2 d2.~ d8[ fis e d e fis]
      g8[ d16 g] a8[ d,16 a'] h2 a8 g fis e

      \barNumberCheck 20
      dis2. \halsneutral e4^\mordent e8 d c h
      c4.^\prall a16 c e8[ c16 e] a8 c,4 h a8
      h4.^\mordent g16 h d8[ h16 d] g8 h,4 a g8
      a4. fis16 a c8[ a16 c] fis8 a,4 g fis8
      g8 c4 h8[ dis e] a, g'4 fis8 e dis

      \barNumberCheck 25
      \halsup e2. g~
      g4 fis8[ g e g] fis2.~
      fis4 e8[ fis d fis] e2.~
      e8[ a,16 d] \halsneutral fis8[ d16 fis] a8 c,4 h cis d8
      d4( cis16)[ h a h] cis[ h a h] c8[ fis16 g] a[ g fis e] d8[ c]

      \barNumberCheck 30
      c4( h16)[ a g a] h[ a g a] h8[ e16 fis] g[ fis e d ]cis!8 h
      h16([ a) d e] fis[ e d cis] h8[ a] a16([ g) cis d] e[ d cis h] a8[ g]
      fis4. d16 fis g8 d16 g a4 \appoggiatura a16 h4. c8
      h4. e,8 e16\prall d e8 a4 d,8 e fis d
      \halsup g2.~ g2 fis4~

      \barNumberCheck 35
      fis4 \halsneutral e8[^\prall d16 cis d8 e] cis8[ a16 cis] d8[ a16 d] e8[ a,16 e' ]
      fis8 a,16 fis' g4. fis16 e fis8[ d16 fis] g8[ d16 g] a8[ d,16 a']
      h8 d,16 h' c4. h16 a h8[ g16 h] cis8[ g16 cis] d8 g,16 d']
      e4~ e16 d cis h a8[ d~] d16 cis h a g8[ h~] h16 a g fis
      e8[ g~] g16 fis e d cis8[ a'~] a8[ d,] fis4 e8^\prall d16 e

      \barNumberCheck 40
      \halsup d2.~ d2 \mark \markup \fermata
   }
}

mezzoC = \new Voice \relative d' {
   \global
   \repeat volta 2 {
      \halsup \shiftOn \partial 8 s8
      d4. s s2.
      a'2 s4 s2.
      s1.
      s1.

      \barNumberCheck 5
      s1. * 10

      \barNumberCheck 15
      s1.
      s2. \times 5/4 e2
   }
   \repeat volta 2 {
      s8
      s1.
      \override Stem.length = #6 g8\rest \shiftOn a~ a2 \revert Stem.length s2.
      s1.

      \barNumberCheck 20
      s1. * 19
      s2. s8 \halsdown d,~ d4 cis

      \barNumberCheck 40
      a2. a2
   }
}

altC = \new Voice \relative a {
   \global
   \repeat volta 2 {
      \halsdown \partial 8 s8
      a4. s s2.
      d2 h'4 cis d a~
      a4 \staffdown d,2~ d4 h2
      a2.~ a~

      \barNumberCheck 5
      a4 d8 cis d4 h2 ais4
      s1.
      s1.
      s1.
      d2 fis4 gis g\rest e

      \barNumberCheck 10
      fis8 \staffup fis fis16_\prall e fis8 h4 e,8[ fis gis e] a4
      fis2. s
      s1.
      s1.
      s1.

      \barNumberCheck 15
      s1.
      s2. \times 5/4 cis2
   }
   \repeat volta 2 {
      s8
      cis'4. s s2.
      s4 \halsup \shiftOnn fis,2 s2.
      s1.

      \barNumberCheck 20
      g8\rest h fis2 s2.
      s1.
      s1.
      s1.
      s1.

      \barNumberCheck 25
      \halsdown g8\rest h g2 h8\rest e16 h g8[ h16 g] e8[ g16 e]
      a2.~ a8[ d16 a] fis8[ a16 fis] d8[ fis16 d]
      g2.~ g8[ a,16 cis] e8[ cis16 e] a8[ e16 a]
      cis8 s s2 s2.
      s1.

      \barNumberCheck 30
      s1.
      s1.
      s1.
      s1.
      \staffdown h,8[ \staffup h] h16[_\prall a h8] e4 a,8[ h cis a] d4

      \barNumberCheck 35
      h4 s2 s2.
      s1.
      s1.
      s1.
      s1.

      \barNumberCheck 40
      \staffdown\shiftOff fis2. fis2
   }
}

tenorC = \new Voice \relative d {
   \global
   \repeat volta 2 {
      \halsup \partial 8 s8
      d4\rest d e fis g e
      fis4. d16 fis g8 d16 g s2.
      s1.
      s1.

      \barNumberCheck 5
      s1. * 5

      \barNumberCheck 10
      s2. s2 c8\rest a
      a16^\prall gis a8 d4 cis h a gis
      \tieDown a4~ \stemDown a gis g fis e
      d4~ \halsup e'2 d2.~
      d4 cis2~ cis4 h2~

      \barNumberCheck 15
      h4 gis! h a2 gis4
      f4\rest cis e \times 5/4 a2
   }
   \repeat volta 2 {
      s8
      f4\rest cis e s2.
      \staffup a4\rest \once \override Rest.extra-offset = #'( 0.8 . 0 ) c8\rest d4. \staffdown s2.
      s1.

      \barNumberCheck 20
      s2. e4\rest h e~
      e8 c e2~ e4 a, d~
      d8 h d2~ d4 g, c~
      c8 a c2~ c4 fis, h~
      h4 a h e, a fis

      \barNumberCheck 25
      e4. s s2.
      s1.
      s1.
      s2. a4\rest g fis
      e8 s s2 s2.

      \barNumberCheck 30
      s1.
      s1.
      s1.
      g2 h4 cis c\rest a
      s2. s2 a8\rest d,

      \barNumberCheck 35
      d16^\prall cis d8 g4 fis e d cis
      \tieDown d4~ \stemDown d cis c h a
      g4 \halsup a'2 g2.~
      g4 fis2~ fis4 e2~
      e4 cis e d2 g4

      \barNumberCheck 40
      \shiftOn d2. d2
   }
}

bassC = \new Voice \relative d, {
   \global
   \repeat volta 2 {
      \halsdown \partial 8 r8
      d2. s
      d'4. s a'4 h cis
      d4 h fis g2 gis4
      h,4\rest a h cis d8 cis h a

      \barNumberCheck 5
      d2. g4 e fis
      \halsneutral h,8[ fis' h d cis e d fis e d cis h]
      e8[ h e, d cis h a gis fis e fis gis]
      a8[ e' a cis h d cis e d cis h a]
      \halsdown r4 d, d'~ d cis2~

      \barNumberCheck 10
      cis8[ cis h a gis a] gis4 e fis
      d2.~ d4 cis h
      a4 \stemUp h'2 a4 h cis
      \once \override Tie.staff-position = #5.6 d4~ \halsdown d cis~ cis h a
      gis4 a gis fis gis a

      \barNumberCheck 15
      gis4 e d cis d e
      a,2.~ \times 5/4 a2
   }
   \repeat volta 2 {
     r8
     a2. \halsneutral g'8[ fis a g fis e]
     fis4. a16 fis d8 fis16 d h4 \appoggiatura h8 c4. a8
     h8 d g fis g[ h16 g] e8[ g16 e] c'4 a

     \barNumberCheck 20
     \halsdown h4. a16 g a8 g16 fis g2 gis4
     a4. fis8[ g e] fis2.
     g4. e8[ fis d] e2.
     fis4. a8[ fis e] dis2.
     e4 fis g c, a h

     \barNumberCheck 25
     e,4. e'16 g h8[ g16 h] e2 r4
     \halsneutral r8 cis,16 e a8[ e16 a] cis8[ a16 cis] d2 r4
     r8 h,16 d g8[ d16 g] h8[ g16 h] cis8 r r4 r8 cis16 a
     \halsdown fis8[ a16 fis] d8[ fis16 d] h8[ d16 h] g4 e' d
     \halsneutral a8[ cis e g fis e d a' d, c h a]

     \barNumberCheck 30
     g8[ h d fis e d cis! g' cis, h a g]
     fis8[ fis' h, a g fis e e' a, g fis e]
     d8[ a' d fis e g fis a g fis e d]
     \halsdown g,4\rest g g'~ g fis2~
     fis8[ fis e d cis d] cis4 a h

     \barNumberCheck 35
     g2.~ g4 fis e
     d4 \stemUp e'2 d4 e fis
     \tieDown g4~ \halsdown g fis~ fis e d
     cis4 d cis h cis d
     cis4 a g fis g a

     \barNumberCheck 40
     e4\rest d a' d,2
     \override Staff.RehearsalMark.direction = #DOWN
     \mark \markup { \musicglyph #"scripts.dfermata" }
   }
}

rightC = {
   \clef "treble"
   <<
      \sopranC
      \mezzoC
      \altC
   >>
}

leftC = {
   \clef "bass"
   <<
      \tenorC
      \bassC
   >>
}

