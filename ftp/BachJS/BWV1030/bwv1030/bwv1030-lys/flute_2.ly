taktEinsBisSieben = {
   \relative d'' {
      d8. fis16 a8 \appoggiatura c16 h8 a r
      \appoggiatura d,16 cis32 h cis16~ cis32 d e16~ e32 fis g16 \appoggiatura g16 fis32 e d16 d4
      d8. fis16 a8 \acciaccatura  { a16[ h] } c8 h8 r
      \appoggiatura e,16 dis32 cis dis16~ dis32 e fis16~ fis32 g a16 \appoggiatura a16 g32 fis e16 e4
      g16 g8 g g16~ g16[ a,32 h cis d e fis g fis g e]
      fis32 gis fis gis gis8.\trill a16 a8~[ a32 gis a h a gis fis e]
      d32 cis d16~ d d~ d32 e d cis d16 h'~ h32[ d cis h a gis fis e]
   }
}

taktAcht = {
   \relative a'' {
      a16[ cis, \appoggiatura cis16 d8 \appoggiatura cis16 h32 a h16] a4.
   }
}

taktNeunBisFuenfzehn = {
   \relative a' {
      a8. cis16 e8 \acciaccatura { e32[ fis] } g8 fis8 r
      ais,32 g' fis e \appoggiatura e16 cis'16. h32 ais( g! fis e) d cis d cis h4
      g'32([ a g fis) g( fis eis fis) fis16 d'] d32[ c h c c h ais h ais16 g']
      fis32[ d cis h d8 cis16.\trill h32] h4 r8
      gis16 gis 8 gis gis16~ gis32[ h a gis a gis fis e d cis h a]
      d32 e fis16~ fis32 g a16~ a32 c h a d h c a g4
      e'16 cis8 b g16~ g16[ e8 d32 cis d cis h a]
   }
}

taktSechzehn = {
   \relative a'' {
      a8[ g16 fis e32 g fis16] \appoggiatura e8 d4.
   }
}


fluteB = {
   \globalB
   \set Score.skipBars = ##t
   \set Staff.midiInstrument = "flute"

   \repeat volta 2 {
      \taktEinsBisSieben
      \taktAcht
   }
   \repeat volta 2 {
      \taktNeunBisFuenfzehn
      \taktSechzehn
   }
}


fluteBforScore = {
   \globalB
   \set Score.skipBars = ##t
   \set Staff.midiInstrument = "flute"

   \repeat volta 2 {
      \taktEinsBisSieben
   }
   \alternative {
      \taktAcht
      \taktAcht
   }
   \repeat volta 2 {
      \taktNeunBisFuenfzehn
   }
   \alternative {
      \taktSechzehn
      \taktSechzehn
   }
}
