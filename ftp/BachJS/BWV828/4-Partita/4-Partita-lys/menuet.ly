\include "defs.ly"
global = {
   \key d \major
   \time 3/4
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
   \override Beam.auto-knee-gap = #2.5
   \override TupletNumber #'stencil = ##f
   \override TupletBracket #'stencil = ##f
}

sopranF = \new Voice \relative fis'' {
   \global
   \markLeft \markPadding \mark \markup { \vspace #4 \huge \bold "Menuet" }
   \repeat volta 2 {
      \halsneutral fis4.^\mordent g32 fis e fis g4
      e4 a2^\mordent
      \tuplet 3/2 { d,8 e fis g fis e a g fis }
      e2^\prallmordent d4

      \barNumberCheck 5
      fis4.^\mordent g32 fis e fis g4
      e4 a2
      \tuplet 3/2 { d,8 e fis g fis e a g fis }
      e2.
   }
   \repeat volta 2 {
      \barNumberCheck 9
      \tuplet 3/2 { a,8 h cis d cis h cis h a }
      a'4 e8 d cis h
      \tuplet 3/2 { a8 h cis d cis h cis h a }
      g'2.

      \barNumberCheck 13
      \tuplet 3/2 { fis8 e d cis d e d cis h
      ais8 h cis h ais gis } fis4~
      \tuplet 3/2 { fis8 gis ais h cis d e d cis
      d8 e fis g fis e fis g a

      \barNumberCheck 17
      g8 fis g a, cis e g fis e
      fis8 e fis ais, cis d e d cis
      d8 cis h} cis4 ais
      \halsup h2.
      
      \barNumberCheck 21
      fis4.^\mordent g32 fis e fis g4
      a4 c2
      \halsneutral \tuplet 3/2 { h8 cis d cis d e d e fis
      e8 d cis d cis h a cis e }
      
      \barNumberCheck 25
      a4. h32 a g a h4
      \halsup cis,4 g'2
      \halsneutral \tuplet 3/2 { fis8 e d e fis g a, h cis }
      d2. \mark \markup \fermata
   }
}

altF = \new Voice \relative d' {
   \global
   \repeat volta 2 {
      \staffdown \halsup c4\rest d8 cis d4~
      d4 cis8 h cis4
      d4 cis d~
      d4 cis d8 a

      \barNumberCheck 5
      d4 a h
      g4 e2
      \times 8/9 fis,8. \times 4/3 d'16 \times 8/9 e,8. \times 4/3 cis'16 \times 8/9 d,8. \times 4/3 d'16~
      d8 h cis e a4
   }
   \repeat volta 2 {
      \barNumberCheck 9
      s2. * 4

      \barNumberCheck 13
      c4\rest e h
      c4\rest cis2~
      cis4 h ais
      h4 e, h'~

      \barNumberCheck 17
      h4 e, e
      d4 g fis~
      fis4 e cis
      s2.
      
      \barNumberCheck 21
      s2.
      \staffup \halsup \shiftOn s4 a''2
      s2.
      s2.
      
      \barNumberCheck 25
      s4 \staffdown \shiftOff d, d
      \staffup \stemUp \shiftOn a'4 e'2
      s4 \staffdown \shiftOff g,, g~
      g8 e fis d d,4
   }
}

tenorF = \new Voice \relative a {
   \global
   \repeat volta 2 {
      \halsup \shiftOn s2.
      s2.
      a4 << \new Voice { \stemUp \shiftOn a4 a }
            \new Voice { \stemUp \shiftOnn g4 fis } >>
      s2.

      \barNumberCheck 5
      s2. * 4
   }
   \repeat volta 2 {
      \barNumberCheck 9
      s2. * 4

      \barNumberCheck 13
      s4 h g
      s2.
      \once \override Rest.extra-offset = #'( 1.6 . 0 ) 
         \tweak #'font-size #-1 g4\rest fis fis
      fis4 s2

      \barNumberCheck 17
      s2 cis4
      s4 e cis
      s2.
      \staffup \tuplet 3/2 { e'8\rest fis d \staffdown h fis d h d fis }
      
      \barNumberCheck 21
      \staffup d'2.~
      d2.
      s2. 
      s2. 
      
      \barNumberCheck 25
      \staffdown s4 << \new Voice { \stemUp \shiftOn a4 }
                       \new Voice { \stemUp \shiftOnn fis4 } >> s4
      \staffup e'4 a2
      \staffdown d,,4 h e
      s2.
   }
}

bassF = \new Voice \relative d {
   \global
   \repeat volta 2 {
      \halsdown d2 h'4
      g2.
      fis4 e d
      a'2 d,4

      \barNumberCheck 5
      d4\rest d2~
      d4 cis8 h a g
      fis4 e d
      a'2.
   }
   \repeat volta 2 {
      \barNumberCheck 9
      r2.
      \halsneutral a8 h cis d e fis
      g4 r r
      ais,8 h cis d e cis

      \barNumberCheck 13
      \halsdown d4 g e
      \times 10/9 fis4. \times 2/3 d8 \times 8/9 e8. \times 4/3 cis16
      d2 cis4
      h4 cis dis

      \barNumberCheck 17
      e4 cis a
      d,4 cis' ais
      h4 e, fis
      h2 s4
      
      \barNumberCheck 21
      \halsneutral h'4 a8 g fis e
      fis8( g16 a g8 fis e d)
      \times 8/9 g8. \times 4/3 fis16 \times 8/9 g8. \times 4/3 e16 \times 8/9 fis8. \times 4/3 d16
      \times 8/9 a'8. \times 4/3 e16 \times 8/9 a,8. \times 4/3 cis16 \times 8/9 e8. \times 4/3 g16
      
      \barNumberCheck 25
      fis4 d g~
      \tuplet 3/2 { g8 fis e d cis h cis h a }
      \halsdown d4 g, a
      d4. s
      \override Staff.RehearsalMark.direction = #DOWN
      \mark \markup { \musicglyph #"scripts.dfermata" }
   }
}

rightF = {
   \clef "treble"
   <<
      \sopranF
      \altF
   >>
}

leftF = {
   \clef "bass"
   <<
      \tenorF
      \bassF
   >>
}

