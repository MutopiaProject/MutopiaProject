\version "2.11.48"

\include "defs.lyi"
\include "horn_notes.lyi"
\include "bassoon1_notes.lyi"
\include "bassoon2_notes.lyi"
\include "bass_notes.lyi"
\include "continuo_notes.lyi"

\paper
{
  %#(define page-breaking ly:minimal-breaking)
  %#(define page-breaking ly:page-turn-breaking)
  ragged-last-bottom = ##f
  between-system-space = 0.5\cm
  between-system-padding = #0
  page-limit-inter-system-space = ##t
  page-limit-inter-system-space-factor = 1.5
}

#(set-global-staff-size 16)

instrument = "Score"

\book
{
  \include "header.lyi"
  \score
  {
    \new StaffGroup
    <<
      \new Staff
      {
        \set Staff.instrumentName = "Horn in D"
        \set Staff.shortInstrumentName = "Hn."
        << \hornAria \outlineAria >>
      }
      \new GrandStaff
      <<
        \new Staff
        {
          \set Staff.instrumentName = "Bassoon I"
          \set Staff.shortInstrumentName = "Bsn.I"
          \bassoonOneAria
        }
        \new Staff
        {
          \set Staff.instrumentName = "Bassoon II"
          \set Staff.shortInstrumentName = "Bsn.II"
          \bassoonTwoAria
        }
      >>
      \new Staff
      {
        \set Staff.instrumentName = "Bass"
        \set Staff.shortInstrumentName = "Bass"
        \new Voice = "bass" \bassAria
      }
      \new Lyrics \lyricsto "bass"
      {
        \override Score . LyricText #'font-size = #-0.5
        \textAria
      }
      \new Staff
      {
        \set Staff.instrumentName = "Continuo"
        \set Staff.shortInstrumentName = "Cont."
        <<
          \new Voice \continuoAria
          \new FiguredBass \continuoAriaFiguredBass
        >>
      }
    >>
  }

  \score
  {
    <<
      \new Staff
      {
        << \outlineAria \midiOutlineAria >>
      }
      \new Staff
      {
        \set Staff.midiInstrument = "french horn"
        \hornAria
      }
      \new Staff
      {
        \set Staff.midiInstrument = "bassoon"
        \bassoonOneAria
      }
      \new Staff
      {
        \set Staff.midiInstrument = "bassoon"
        \bassoonTwoAria
      }
      \new Staff
      {
        \set Staff.midiInstrument = "voice oohs"
        \bassAria
      }
      \new Staff
      {
        \set Staff.midiInstrument = "string ensemble 1"
        \continuoAria
      }
    >>
    \midi
    {
      \context
      {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

