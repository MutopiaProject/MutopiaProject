\version "2.18.0"
cr = \markup { \italic cresc. }
mbreak = \break

\layout {
  \context {
    \Staff
    \override TupletBracket.bracket-visibility = ##f
  }
}
