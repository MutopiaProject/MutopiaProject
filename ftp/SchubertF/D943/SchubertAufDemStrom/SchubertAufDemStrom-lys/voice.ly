\version "2.11.37"

\include "voice_notes.lyi"
\include "defs.lyi"

\paper
{
  #(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
}

instrument = "Voice"

\include "header.lyi"

\score
{
  <<
    \new Staff
    {
      #(set-accidental-style 'modern)
      \set Score.skipBars = ##t
      \clef treble
      \new Voice = "singstimme" << \voice \outline >>
    }
    \new Lyrics \lyricsto "singstimme" {\text}
  >>
}

