\version "2.18.0"
\score
{
  <<
    \new ChordNames
    {
      \set chordChanges = ##t
      \myChords
    }
    \new StaffGroup
    <<
      \new Staff = "staffOne"
      {
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        <<

          \new Voice = "staffOneVoiceOne"
          {
            \voiceOne % this is a lilypondism, not mine
            \mergeDifferentlyDottedOn
            \mergeDifferentlyHeadedOn
            \set fingeringOrientations = #'(left)
            % this line is only here to ensure guitar notes written for treble clef come out OK in midi.
            % the parameter defaults to c' so indicating a c makes midi notes an octave lower.
            \transposition c
            \staffOneVoiceOneNotes
          }
          \new Voice = "staffOneVoiceTwo"
          {
            \voiceTwo % this is a lilypondism, not mine
            \mergeDifferentlyDottedOn
            \mergeDifferentlyHeadedOn
            \set fingeringOrientations = #'(left)
            % this line is only here to ensure guitar notes written for treble clef come out OK in midi.
            % the parameter defaults to c' so indicating a c makes midi notes an octave lower.
            \transposition c
            \staffOneVoiceTwoNotes
          }
          \new Voice = "staffOneVoiceThree"
          {
            \voiceThree % this is a lilypondism, not mine
            \mergeDifferentlyDottedOn
            \mergeDifferentlyHeadedOn
            \set fingeringOrientations = #'(left)
            % this line is only here to ensure guitar notes written for treble clef come out OK in midi.
            % the parameter defaults to c' so indicating a c makes midi notes an octave lower.
            \transposition c
            \staffOneVoiceThreeNotes
          }
          \new Voice = "staffOneVoiceFour"
          {
            \voiceFour % this is a lilypondism, not mine
            \mergeDifferentlyDottedOn
            \mergeDifferentlyHeadedOn
            \set fingeringOrientations = #'(left)
            % this line is only here to ensure guitar notes written for treble clef come out OK in midi.
            % the parameter defaults to c' so indicating a c makes midi notes an octave lower.
            \transposition c
            \staffOneVoiceFourNotes
          }
        >>
      }
    >>
  >>
  % layout can be in a score as well as outside
  \layout { }
  \midi
  {
    \context
    {
      \Voice
      %\remove "Dynamic_performer"
    }
  }
}
