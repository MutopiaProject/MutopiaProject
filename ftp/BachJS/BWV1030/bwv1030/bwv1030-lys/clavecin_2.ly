topB = \relative fis' {
   \globalB
   \set Staff.midiInstrument = "harpsichord"
   \clef treble


   \repeat volta 2 {
      \stemUp <a d>8 <h d> <a c d> << \new Voice { \stemUp   d8[ cis32 e d cis d cis h a] }
                                      \new Voice { \stemDown <g h>8 a d,                  } >>

      << \new Voice { \stemUp   r16 cis'8 cis cis16 d8.[ cis32 h a g fis e] }
         \new Voice { \stemDown <e g>8 <cis e> <e a> <fis a> c\rest c\rest  } >>
      \break
      <d fis a d>8 <fis a c d> <fis a c d> << \new Voice { \stemUp \tieUp d'8~[ d32 dis e fis e d c! h] }
                                              \new Voice { \stemDown      <fis a c>8 <g h> g\rest       } >>

      << \new Voice { \stemUp   r16 dis'8 dis dis16 e8.[ d32 c h a g fis]   }
         \new Voice { \stemDown <a c>8 <fis h> <fis h> <g h> c,\rest c\rest } >>
      \break
      %% Takt 5 ----------------------------------------------
      << \new Voice { \stemUp <a' e'>8 <g cis> <e h'> <e cis'>4 a8 }
         \new Voice { \stemDown e8 e e a[ g] <e g>                 } >>

      <d fis a>8 <d h' d> <e gis h> <e cis' e> <fis a cis> <a cis fis>

      <fis h d fis>8 <fis h d> <d fis h> <e h' e> <e gis h> <e gis d'>
   }
   \alternative {
      { << \new Voice { \stemUp cis'8 h16 cis d8 d cis16 d e cis }
           \new Voice { \stemDown <e, a>8 <e a> <e gis> <e a>4.  } >>
      }
      { << \new Voice { \stemUp cis'8 h16 cis d8 d cis4         }
           \new Voice { \stemDown <e, a>8 <e a> <e gis> <e a>4. } >>
      }
   }
   \pageBreak
   \repeat volta 2 {
      <e a cis>8 <fis a cis fis> <g a cis e> << \new Voice { \stemUp   e'16[ cis d32 e d cis h a g fis] }
                                                \new Voice { \stemUp \shiftOn  a8 s4                    }
                                                \new Voice { \stemDown g16 e fis e8.\rest               } >>

      %% Takt 10 =============================================
      << \new Voice { \stemUp \shiftOn <e' g>8 <e fis> <fis ais> <fis h>~[ h32 a g h a g fis a]          }
         \new Voice { \stemDown ais,16 h cis8 <cis e> << \new Voice { \stemDown e8[ d]           }
                                                         \new Voice { \shiftOn \stemDown h8. s16 } >> r8 } >>

      << \new Voice { \stemUp g'8. g8 \tieUp fis16~ fis16 e8 e e16~                                      }
         \new Voice { \stemDown << \new Voice { \shiftOn d16\rest e8. d8 }
                                   \new Voice { e,8\rest cis'8 h         } >> <h d>8 <g c> <e g ais cis> } >>

      << \new Voice { \stemUp <fis d'>8 <e h'> <e ais> h'32[ fis gis ais h cis d fis e d cis \tieDown h~] }
         \new Voice { \stemDown h8 g8. fis16 <d fis>16 s16 s4                                             } >>

      <h' e gis h>8 <h e gis> <gis h e> << \new Voice { \stemUp <h d e>8[ <a cis a'>]                 }
                                           \new Voice {  gis8[ \change Staff = bass  e] } >> r8

      <a d a'>8 <a d fis> <fis a c d> << \new Voice { \stemUp <a c d>8[ g'] h\rest          }
                                         \new Voice { \stemDown s8 h,32 cis d cis e d fis e } >>

      %% Takt 15 ---------------------------------------------
      <a, e' g>8 <g cis e> <e g cis> <e g cis e> <e g cis> <cis e g a>
   }
   \alternative {
      { <fis a d>8 <e h' d> <e g a cis> <fis a d>4. }
      { <fis a d>8 <e h' d> <e g a cis> <fis a d>4. }
   }
}

bottomB = \relative d' {
   \set Staff.midiInstrument = "harpsichord"
   \globalB
   \set Staff.midiInstrument = "harpsichord"
   \clef bass

   \repeat volta 2 {
      << \new Voice \relative fis' { \change Staff = "treble" \stemDown fis8 fis \change Staff = "bass" \stemUp d d e a,  }
         \new Voice \relative d'   { \stemDown d8 h fis g4 fis8 } >>
      e,8 a a, d4 e8
      fis8 a d g,4 c8
      fis,8 h h, e4 d8
      %% Takt 5 ----------------------------------------------
      cis8 e g a,4 cis8
      d8 h e cis fis fis,
      h8 fis' a gis d' h
   }
   \alternative {
      { cis16 a e'8 e, a, a'16 h cis a }
      { cis16 a e'8 e, a,8 a'4         }
   }
   \repeat volta 2 {
      a8 fis cis d4 d'8
      %% Takt 10 =============================================
      << \new Voice { \stemUp   e8 cis fis fis8. s8.        }
         \new Voice { \stemDown cis8 ais fis h8. h16 cis d  } >>
      e8 ais, h g e cis
      d8 e fis h, h' cis
      d8 e d cis8. a16 e' g,
      fis8 d fis << \new Voice { \stemUp fis'16 d8 d16 cis h }
                    \new Voice { \stemDown g8. fis16 e d     } >>
      %% Takt 15 ---------------------------------------------
      << \new Voice \relative a   { \stemUp a8 s4 a8 s4         }
         \new Voice \relative cis { \stemDown cis8 e g a, cis e } >>
   }
   \alternative {
      { << \new Voice \relative fis  { \stemUp   fis8 g a d,8. e16 fis d }
           \new Voice \relative fis, { \stemDown fis8 g a d,8. s8.       } >> }
      { << \new Voice \relative fis  { \stemUp   fis8 g a d,4.           }
           \new Voice \relative fis, { \stemDown fis8 g a d,4. \bar "|." } >> }
   }
}

clavecinB = \context PianoStaff <<
   \context Staff = "treble" {
      \topB
   }
   \context Staff = "bass" {
      \bottomB
   }

>>
