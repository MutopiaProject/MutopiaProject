%% Aria. Sesto e Cornelia: Son nato a sospirar/Son nata a lagrimar, e il dolce
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \new InnerStaffGroup <<
        \instrStaff \markup { Violino I.II. } <<
          \keepWithTag #'up \global
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
        \instrStaff \markup Viola. <<
          \keepWithTag #'() \global
          \clef alto \includeNotes #"viola"
        >>
      >>
    >>
    \new InnerChoirStaff <<
      \lyricStaff \markup Sesto. <<
        \keepWithTag #'() \global
        \sesto \includeNotes #"sesto"
      >> \includeLyrics #"sesto-lyrics"
      \lyricStaff \markup Cornelia. <<
        \keepWithTag #'() \global
        \cornelia \includeNotes #"cornelia"
      >> \includeLyrics #"cornelia-lyrics"            
    >>
    \instrStaff \markup Bassi. <<
      \scoreInit 
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 72 }
}
