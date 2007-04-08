global = \includeNotes #"global"

\score {
  \instrStaff \markup "Violino I. II." <<
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotesWithName #"violino1" #'violino1
    \keepWithTag #'() \includeNotesWithName #"violino2" #'violino2
    \context Voice = "violino1" {
      \oneVoice s4. s4 \voiceOne s8 s2.
      s4. \oneVoice s4 \voiceOne s8 s2.
      \oneVoice s1.*2
      %% 5
      s4. s4 \voiceOne s8 s2.
      s1.*18
      s2. s4 \oneVoice s8 s4.
      %% 25
      s1.*5
      %% 30
      s4. s4 \voiceOne s8 s2.
      s1.*5
      s4. \oneVoice s4 \voiceOne s8 s2.
      \oneVoice s1.*2
      s4. \voiceOne s4. s2.
    }
    \context Voice = "violino2" {
      \voiceTwo
      s1.*35
      s4. \oneVoice s4 \voiceTwo
    }
  >>
  \header {
    opus = "Aria. Sesto e Cornelia: Son nato a sospirar/Son nata a lagrimar, e il dolce"
  }
  \layout { }
}

