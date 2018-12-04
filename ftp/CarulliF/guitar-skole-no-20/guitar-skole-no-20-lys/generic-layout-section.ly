\version "2.18.0"
\layout
{
  \context
  {
    \Score
    tempoHideNote = ##t
  }
  \context
  {
    \Staff
%    \override TimeSignature.style = #'numbered
%    \override StringNumber.transparent = ##t
%    \override VerticalAxisGroup.minimum-Y-extent = #'(-2 . 2)
  }
    \context
    {
      \GrandStaff
      \accepts "Lyrics"
    }
  \context
  {
    \Voice
    \override TextSpanner.style = #'line
  }
  \context
  {
    \TabStaff
%     \override TimeSignature.style = #'numbered
      \override Stem.transparent = ##t
      \override Beam.transparent = ##t
      \override Dots.transparent = ##t
      \override Rest.transparent = ##t
   }
  \context
  {
    \TabVoice
      %\remove "Phrasing_slur_engraver"
      %\remove "Slur_engraver"
      %\remove "Script_engraver"
      %\remove "Auto_beam_engraver"
      \remove "Text_engraver"
  }
}
