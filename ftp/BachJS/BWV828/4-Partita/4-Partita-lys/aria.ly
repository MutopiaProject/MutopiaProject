\include "defs.ly"

global = {
   \key d \major
   \time 2/4
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
   \set Timing.beatStructure = #'( 2 )
}

sopranD = \new Voice \relative a' {
   \global
   \markLeft \markPadding \mark \markup { \vspace #4 \huge \bold "Aria" }
   \repeat volta 2 {
      \partial 8 a8
      fis8^\prall e4 d8~
      d8 cis4 d8~
      d8 e16 fis g8 fis
      fis8^\prall e r a8

      \barNumberCheck 5
      fis8 e4 d8~
      d8 cis4 d8~
      d8 e16 fis g8 fis
      fis8^\prall e r \halsneutral e
      fis16 gis a4 gis16 a

      \barNumberCheck 10
      h16 a gis fis e[ fis gis a]
      h16 cis d4 cis16 d
      e16[ d cis h] a[ h cis d]
      e16 fis g4 fis16 e
      fis16 a g fis h a gis fis

      \barNumberCheck 15
      e16 a gis fis e d cis h
      a4.
   } \pageBreak
   \repeat volta 2 {
      e'8 \noBreak
      cis8^\prall h4 a8~
      \stemUp a8 h16 cis d8 cis~
      \halsup cis8 d16 e fis8 h,~

      \barNumberCheck 20
      h8 ais d\rest \halsneutral fis
      d8^\prall cis4 h16 ais
      h16 d cis h cis dis e fis
      g16 h a g a h c8
      e,8( dis)^\prall r h

      \barNumberCheck 25
      g'8 fis4 e16 dis
      e16 g fis e d! cis h a
      fis'8 e4 d16 cis
      d16 fis e d cis h ais h
      e8 d4 c16 h

      \barNumberCheck 30
      c16 g' fis4 eis8
      fis8[ h,] d16[ cis h ais]
      h4 r8 d
      fis,16 a g4 fis16 g
      a16[ g fis e] d[ c' h a]
      
      \barNumberCheck 35
      h16[ g fis e] dis[ a' g fis]
      g16[ fis e d!] cis[ g' fis e]
      fis16[ d cis h] ais[ e' d cis]
      d16 fis e d e fis g a
      h16 g a d cis h a g
      
      \barNumberCheck 40
      fis8(^\prall e) r e'
      f16[ gis a8~] a16[ e f d]
      e16 d cis h a g! f e
      f16[ gis a8~] a16[ e f d]
      e16 d cis \staffdown h a g! fis! e
      
      \barNumberCheck 45
      \staffup \halsneutral r16 fis' e4 d16 cis
      d16 fis e d e fis g a
      h16 a c h a fis' h, a
      g16 h a g a h cis! d
      \halsup e16 d f e d h' e, d
      
      \barNumberCheck 50
      cis16 e d cis d e fis g
      a8 d, e cis
      d4.
      \mark \markup \fermata
   }
}

altD = \new Voice \relative d' {
   \global
   \repeat volta 2 {
      \halsdown \partial 8 s8
      s2
      s2
      s4. d8
      d8 cis s e

      \barNumberCheck 5
      d8 a\rest cis f,\rest
      s2
      s4. d'8
      d8 cis s4
      s2
      \barNumberCheck 10
      s2 * 5

      \barNumberCheck 15
      s2
      s4.
   }
   \repeat volta 2 {
      s8
      s2
      s2
      s2
      
      \barNumberCheck 20
      s2 * 20
      
      \barNumberCheck 40
      s2
      \staffdown g'8\rest f e d
      g8\rest g e cis
      e8\rest d cis h
      s2
      
      \barNumberCheck 45
      s2 * 5
      
      \barNumberCheck 50
      s2
      s4 \staffup \shiftOn h'8 a
      a4.
   }
}

tenorD = \new Voice \relative d' {
   \global
   \repeat volta 2 {
      \halsup \partial 8 s8
      s4 cis8 c\rest
      a8 c\rest g c\rest
      a4. a8
      s4 <<  \new Voice { \stemUp \override NoteColumn.force-hshift = #0 
                        c8\rest \once \override Stem.length = #9.5 a
                        \once \override Stem.length = #10 a8 c\rest \once \override Stem.length = #8.5 a8 c\rest
                        a8 c\rest a8 c\rest
                        a4. \once \override Stem.length = #7.7 a8 }
            \new Voice { \stemUp \override NoteColumn.force-hshift = #0.4
                        f8\rest \once \override Stem.length = #8 e
                        \once \override Stem.length = #8 fis8 f\rest \override NoteColumn.force-hshift = #0.9 g8 d\rest
                        \override Stem.length = #6 fis8 d\rest \stemDown g8 d\rest
                        \revert NoteColumn.force-hshift
                        \stemUp \shiftOn \once \override Beam.positions = #'( 3.8 . 2.9 ) fis8 e16 d cis8 d }
            \new Voice { \stemUp \override NoteColumn.force-hshift = #0.8
                        s8 \override Stem.length = #6 cis d8 h\rest \stemDown \override NoteColumn.force-hshift = #1 e8 }
         >>
      s4 c'8\rest cis
      s2

      \barNumberCheck 10
      s2 * 5

      \barNumberCheck 15
      s2
      s4.
   }
   \repeat volta 2 {
      s8
      a8 c\rest cis c\rest
      d8 c\rest g a\rest
      fis4 \staffup c'8\rest d~

      \barNumberCheck 20
      d8 cis c4\rest
      s2 * 19
      
      \barNumberCheck 40
      s2
      \staffdown \halsdown a8\rest d cis h
      a8\rest e' cis a
      f8\rest f e d
      f8\rest \shiftOn g e cis
      
      \barNumberCheck 45
      \halsup d8 d\rest << \new Voice { \shiftOff cis8 }
                         \new Voice { \shiftOn ais } >> d\rest
      s2
      s2
      s2
      s2
      
      \barNumberCheck 50
      s2
      \staffup \shiftOff fis'8 a g e
      fis4.
   }
}

bassD = \new Voice \relative d' {
   \global
   \repeat volta 2 {
      \halsdown \partial 8 r8
      d8 r a d,\rest
      fis8 d\rest e d\rest
      fis8 e16 d cis8 d
      a'8 r a,4~

      \barNumberCheck 5
      a2~
      a2~
      a2
      a'8 a, r a'
      \halsneutral d8 cis h a

      \barNumberCheck 10
      gis8 a gis fis
      e8 fis e d
      cis8 d cis h
      a8 h cis a
      d8 d, d' h

      \barNumberCheck 15
      cis8 a e' e,
      a4.
   }
   \repeat volta 2 {
      \halsdown r8
      a'8 d,\rest g r
      fis8 d\rest e h\rest
      d8 h16 cis d8 e

      \barNumberCheck 20
      \halsneutral fis16 e fis g fis e d cis
      h16 a g fis e d e fis
      g8 g'4 fis8
      e8 c'4 a8
      h16 a h c h a g fis

      \barNumberCheck 25
      e16[ h' a g] h,[ a' g fis]
      g8 h e cis,
      d16[ a' g fis] a,[ g' fis e]
      fis8 a d, fis
      g16[ g' fis e] h[ fis' e d]

      \barNumberCheck 30
      e,16[ e' d cis] g[ d' cis h]
      ais,8 d e fis
      h16 h, cis d e fis gis ais
      h16 a! h d cis h a g
      fis8 a fis d

      \barNumberCheck 35
      g8 a, h dis
      e8 g, a cis
      d8 e, fis ais
      h16 d cis h cis d e fis
      g8 fis16 e fis8 g

      \barNumberCheck 40
      a8 g16 fis e d cis h
      \halsdown a8 e\rest e4\rest
      a8 e\rest e4\rest
      a8 c,\rest h4\rest
      a'8 e' cis a
      
      \barNumberCheck 45
      d,8 e\rest fis e\rest
      \halsneutral h'8[ fis'] h[ a]
      g8[ e'] fis,[ dis']
      \stemDown e,8 h' \staffup e d!
      cis8[ a'] h,[ gis']
      
      \barNumberCheck 50
      a,8 e' a g!
      \staffdown r8 fis,, g a
      d,4.
      \override Staff.RehearsalMark.direction = #DOWN
      \mark \markup { \musicglyph #"scripts.dfermata" }
   }
}

rightD = {
   \clef "treble"
   <<
      \sopranD
      \altD
   >>
}

leftD = {
   \clef "bass"
   <<
      \tenorD
      \bassD
   >>
}

