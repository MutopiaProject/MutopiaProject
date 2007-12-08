\version "2.11.34"

\include "kopp01.lyi"
\include "kopp02.lyi"
\include "kopp03.lyi"
\include "kopp04.lyi"
\include "kopp05.lyi"
\include "kopp06.lyi"
\include "kopp07.lyi"
\include "kopp08.lyi"
\include "kopp09.lyi"
\include "kopp10.lyi"
\include "kopp11.lyi"
\include "kopp12.lyi"
\include "kopp13.lyi"
\include "kopp14.lyi"
\include "kopp15.lyi"
\include "kopp16.lyi"
\include "kopp17.lyi"
\include "kopp18.lyi"
\include "kopp19.lyi"
\include "kopp20.lyi"
\include "kopp21.lyi"
\include "kopp22.lyi"
\include "kopp23.lyi"
\include "kopp24.lyi"
\include "kopp25.lyi"
\include "kopp26.lyi"
\include "kopp27.lyi"
\include "kopp28.lyi"
\include "kopp29.lyi"
\include "kopp30.lyi"
\include "kopp31.lyi"
\include "kopp32.lyi"
\include "kopp33.lyi"
\include "kopp34.lyi"
\include "kopp35.lyi"
\include "kopp36.lyi"
\include "kopp37.lyi"
\include "kopp38.lyi"
\include "kopp39.lyi"
\include "kopp40.lyi"
\include "kopp41.lyi"
\include "kopp42.lyi"
\include "kopp43.lyi"
\include "kopp44.lyi"
\include "kopp45.lyi"
\include "kopp46.lyi"
\include "kopp47.lyi"
\include "kopp48.lyi"
\include "kopp49.lyi"
\include "kopp50.lyi"
\include "kopp51.lyi"
\include "kopp52.lyi"
\include "kopp53.lyi"
\include "kopp54.lyi"
\include "kopp55.lyi"
\include "kopp56.lyi"
\include "kopp57.lyi"
\include "kopp58.lyi"
\include "kopp59.lyi"
\include "kopp60.lyi"

#(set-global-staff-size 18)

\paper
{
  #(define page-breaking ly:minimal-breaking)
  %#(define page-breaking ly:page-turn-breaking)

  %Doesn't play nicely with minimal-breaking
  %ragged-last-bottom = ##f
}

\book
{
  \header
  {
    title = "60 Studies for Low Horn"
    composer = "Georg Kopprasch"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Jay Anderson"
    mutopiatitle = "60 Studies for Low Horn"
    mutopiacomposer = "KoppraschG"
    mutopiaopus = "Op.6"
    mutopiainstrument = "Horn"
    mutopiastyle = "Classical"
    maintainerEmail = "horndude77@gmail.com"
    maintainerWeb = "http://open-scores.sourceforge.net/"
    lastupdated = "2007/Dec/04"
    source = "B&H c 5407, d 5407. 1832/1833"
 footer = "Mutopia-2007/12/08-1186"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
  }
  %Junk midi file inorder to get correct numeric suffix.
  \score
  {
    \new Staff { r4 }
    \midi { }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.1. Moderato}}
      \koppOne
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.2. Moderato}}
      \koppTwo
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 72 2)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.3. \line {Poco Allegro}}}
      \koppThree
    }
    \layout
    {
      indent = 2.0\cm
    }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.4. Allegro}}
      \koppFour
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    \with
    {
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    }
    {
      \koppFourArticulations
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold {No.5.}}
      \koppFive
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.6. Allegro vivace}}
      \koppSix
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    \with
    {
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    }
    {
      \koppSixArticulations
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.7. Adagio}}
      \koppSeven
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.8. Allegro}}
      \koppEight
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    \with
    {
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    }
    {
      \koppEightArticulations
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.9. Tempo Giusto}}
      \koppNine
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.10. Allegro vivace}}
      \koppTen
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    \with
    {
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    }
    {
      \koppTenArticulations
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.11. Maestoso}}
      \koppEleven
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.12. Allegro Moderato}}
      \koppTwelve
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    \with
    {
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    }
    {
      \koppTwelveArticulations
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.13. Allegro}}
      \koppThirteen
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 96 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.14. Allegro vivace}}
      \koppFourteen
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.15. Adagio}}
      \koppFifteen
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.16. Moderato}}
      \koppSixteen
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.17. Allegro molto}}
      \koppSeventeen
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.18. Vivace}}
      \koppEighteen
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.19. Allegro}}
      \koppNineteen
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 144 8)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.20. Moderato risoluto}}
      \koppTwenty
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.21. Allegro vivace}}
      \koppTwentyOne
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.22. Adagio espressivo}}
      \koppTwentyTwo
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 100 8)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.23. Moderato}}
      \koppTwentyThree
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.24. Allegro risoluto}}
      \koppTwentyFour
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.25. Andantino}}
      \koppTwentyFive
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 220 8)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.26. Allegro vivace}}
      \koppTwentySix
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 96 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.27. Allegro}}
      \koppTwentySeven
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.28. Maestoso}}
      \koppTwentyEight
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.29. Andante}}
      \koppTwentyNine
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.30. Presto}}
      \koppThirty
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.31. Allegro moderato}}
      \koppThirtyOne
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.32. Moderato}}
      \koppThirtyTwo
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.33. Adagio}}
      \koppThirtyThree
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.34. Allegro}}
      \koppThirtyFour
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.35. Allegro}}
      \koppThirtyFive
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.36. Allegro}}
      \koppThirtySix
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    \with
    {
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    }
    {
      \koppThirtySixArticulations
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.37. Allegro}}
      \koppThirtySeven
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.38. Presto}}
      \koppThirtyEight
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.39. Allegro molto.}}
      \koppThirtyNine
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.40. Presto}}
      \koppForty
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 220 8)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      %This make is less readable
      %#(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.41. Allegro moderato.}}
      \koppFortyOne
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.42. Allegro moderato.}}
      \koppFortyTwo
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.43. Allegretto.}}
      \koppFortyThree
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 240 8)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.44. Allegro.}}
      \koppFortyFour
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.45. Allegro vivace}}
      \koppFourtyFive
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 72 2)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.46. Adagio con espressione.}}
      \koppFortySix
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 52 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.47. Moderato.}}
      \koppFortySeven
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 52 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.48. Allegro Moderato.}}
      \koppFortyEight
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 96 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.49. Adagio.}}
      \koppFortyNine
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 52 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.50. Presto}}
      \koppFifty
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 116 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      %#(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.51. Moderato}}
      \koppFiftyOne
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.52. Allegro vivace.}}
      \koppFiftyTwo
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.53. Largo.}}
      \koppFiftyThree
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 52 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.54. Allegro con spirito.}}
      \koppFiftyFour
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.55. Largo.}}
      \koppFiftyFive
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 52 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.56. Moderato.}}
      \koppFiftySix
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.57. Moderato.}}
      \koppFiftySeven
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.58. Allegro.}}
      \koppFiftyEight
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.59. Larghetto.}}
      \koppFiftyNine
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 48 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
  \score
  {
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Staff.instrumentName = \markup{\bold \center-align {No.60. Moderato.}}
      \koppSixty
    }
    \layout { }
    \midi
    {
      \context
      {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

