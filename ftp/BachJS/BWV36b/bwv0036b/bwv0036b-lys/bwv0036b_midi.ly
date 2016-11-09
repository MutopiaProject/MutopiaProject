#(ly:set-option 'relative-includes #t)

\include "common/version.ily"
\include "common/definitions.ily"
\pointAndClickOff
markupInstrumentName =
#(define-scheme-function
   (parser location text)
   (markup?)
   #{ \markup{
     \override #'(font-name . "Linux Libertine O Bold")
     #text }
   #} )
\include "common/cantataInstrumentNames.ily"
\include "common/woodwindStaves.ily"
\include "common/stringStaves.ily"
\include "common/vocalStaves.ily"
\include "common/continuoStaff.ily"

\include "parts/bwv0036b_01.ily"
\book {
  \bookOutputName "bwv0036b_01"
  \score {
    <<
      \fluteStaff \fluteMusic
      \oboeStaff \oboeMusic
      \vlIvlIIvla \violinIMusic \violinIIMusic \violaMusic
      \satbchoirNoLyrics \sopranoMusic \altoMusic \tenorMusic \bassMusic
      \continuoStaff \continuoMusic { }
    >>
    \midi { }
  }
}

\include "parts/bwv0036b_02.ily"
\book {
  \bookOutputName "bwv0036b_02"
  \score {
    <<
      \tenorStaff \tenorMusic { }
      \continuoStaff \continuoMusic { }
    >>
    \midi { }
  }
}

\include "parts/bwv0036b_03.ily"
\book {
  \bookOutputName "bwv0036b_03"
  \score {
    <<
      \oboeStaff { \oboeMusicPartial \oboeMusicOne \oboeMusicTwo
                   \oboeMusicOne \oboeMusicEnd }
      \tenorStaff { \tenorMusicPartial \tenorMusicOne \tenorMusicTwo
                    \tenorMusicOne \tenorMusicEnd } { }
      \continuoStaff { \continuoMusicPartial \continuoMusicOne \continuoMusicTwo
      \continuoMusicOne \continuoMusicEnd } { }
    >>
    \midi { }
  }
}

\include "parts/bwv0036b_04.ily"
\book {
  \bookOutputName "bwv0036b_04"
  \score {
    <<
      \vlIvlIIvla \violinIMusic \violinIIMusic \violaMusic
      \altoStaff \altoMusic { }
      \continuoStaff \continuoMusic { }
    >>
    \midi { }
  }
}

\include "parts/bwv0036b_05.ily"
\book {
  \bookOutputName "bwv0036b_05"
  \score {
    <<
      \fluteStaff \fluteMusic
      \vlIvlIIvla \violinIMusic \violinIIMusic \violaMusic
      \altoStaff \altoMusic { }
      \continuoStaff \continuoMusic { }
    >>
    \midi { }
  }
}

\include "parts/bwv0036b_06.ily"
\book {
  \bookOutputName "bwv0036b_06"
  \score {
    <<
      \sopranoStaff \sopranoMusic { }
      \continuoStaff \continuoMusic { }
    >>
    \midi { }
  }
}

\include "parts/bwv0036b_07.ily"
\book {
  \bookOutputName "bwv0036b_07"
  \score {
    <<
      \fluteStaff { \fluteMusic \fluteMusicDaCapo }
      \violinSoloStaff { \violinMusic \violinMusicDaCapo }
      \sopranoStaff { \sopranoMusic \sopranoMusicDaCapo } { }
      \continuoStaff { \continuoMusic \continuoMusicDaCapo } { }
    >>
    \midi { }
  }
}

\include "parts/bwv0036b_08.ily"
\book {
  \bookOutputName "bwv0036b_08"
  \score {
    <<
      \fluteStaff \fluteMusic
      \oboeStaff \oboeMusic
      \vlIvlIIvla \violinIMusic \violinIIMusic \violaMusic
      \satbchoirNoLyrics \sopranoMusic \altoMusic \tenorMusic \bassMusic
      \continuoStaff \continuoMusic { }
    >>
    \midi { }
  }
}

