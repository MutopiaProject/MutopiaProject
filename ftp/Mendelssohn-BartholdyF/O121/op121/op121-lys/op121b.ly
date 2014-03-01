% II. Adagio

\include "defs.ly"

tenorB = \relative a {
   \global
   \set Score.currentBarNumber = #1
   \autoBeamOff
   \clef "G_8"
   \key f \major
   \time 2/4

   \tempo \markup { \huge "II. Adagio" }
   a8 a16 a a8 a16 a
   \once \override Script #'padding = #1 b4^\fermata a^\fermata
   a8 a16 a a a a a
   c4 a
   a8[( g]) a4^\fermata \bar "||" \time 3/4
}
tenorB_words = \lyricmode {
   \lyricsstyle
   A -- pe -- ri o -- cu -- los tu -- os
   et vi -- de tri -- bu -- la -- ti -- o -- nem no -- stram.
}

vcbB = {
   \global
   \clef bass
   \key f \major
   \time 2/4

   R2 
   R2^\fermataMarkup
   R2
   R2
   R2^\fermataMarkup \time 3/4
}


scoreB = {
   <<
      \new ChoirStaff <<
         \new Staff = "staffB_tenor" <<
            \set Staff.instrumentName = "Tenore solo"
            \new Voice = "voiceB_tenor" << \tenorB >>
            \lyricsto "voiceB_tenor" \new Lyrics \tenorB_words
         >>
      >>
      \new Staff  = "staffB_vcb" <<
         \set Staff.instrumentName = \markup { \center-column { "Violoncello" "e Basso" } }
         \new Voice = "voiceB_vcb" << \vcbB >>
      >>
   >>
}
