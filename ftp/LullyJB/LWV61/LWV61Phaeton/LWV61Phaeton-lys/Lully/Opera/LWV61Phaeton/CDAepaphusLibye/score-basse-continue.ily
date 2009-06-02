\score {
  \new StaffGroupNoBar <<
    \newTinyStaff <<
      \global
      \new Voice = "libye" \with { autoBeaming = ##f } <<
        \includeNotes "libye"
        { s1.*5 s2
          \libyeMark r2 s2 s1.*4 s2
          \libyeMark s1 s1.*8 s1 s1.*6 s1 s1.*2 s1 s1.*7 s1*2 s2.
          s1*3 s2. s1 s2. s1 s1.
          \libyeMark s1.*13 s1 s1.*3 s1 s1 s2. s1 s2.*3 s4
          \libyeMark s2. s2.*2 s1*3 s4
          \libyeMark s2. s1*3 s2. s4
          \libyeMark s2 s2.*4 s1 s2. s4
          \libyeMark s2 s2. s2
          \libyeMark s2 s2.
          s4 \clef "vbas-dessus" \voiceOne s2. s1 s4 \oneVoice
          \clef "vbasse" s2 s1 s2
          \libyeMark s4 s2.*3 s1*2 s2.
          \set Staff.forceClef = ##t \clef "vbas-dessus" \voiceOne s4 s2.*2 s1 \oneVoice
          s1*4
          s4
          \libyeMark s2. s1 s2. s2
          \libyeMark s4 s1 s2.*6 \break
          s2 \clef "vbas-dessus" \voiceOne s1 s1.*21 s1
          
        }
       >>
      \new Voice = "epaphus" \with { autoBeaming = ##f } <<
         \includeNotes "epaphus-reduction"
         { \clef "vbasse" s1.*4 s1
           s2^\markup \character Épaphus s1.*2 s1
           \epaphusMark s2 s1.*4 s1
           \epaphusMark s2 s1.*6 s1 s1.*6 s1 s1.*2 s1 s1.*7 s1*2 s2.
           s1*3 s2. s1 s2. s1 s1. s1.*13 s1 s1.*3 s1 s2
           \epaphusMark s2 s2. s1 s2.*3 s1 s2.*2 s1 s4
           \epaphusMark s2. s1*5 s4
           \epaphusMark s2 s2.*3 s2
           \epaphusMark s4 s2. s1 s2.*2 s4
           \epaphusMark s2 s1 s4
           \epaphusMark r4 s4 s4. \voiceTwo s8 s2 s1 s4
           \epaphusMark \oneVoice s2 s1 s2 s4 s2.*3 s1*2
           s2 s4 \voiceTwo s4 s2.*2 s1
           \epaphusMark \oneVoice s1*5 s4.
           \epaphusMark s8 s2 s2.*2 s1 s2. s2
           \epaphusMark s4 s2.*4 s2 \voiceTwo s1 s2 s1 s1.*20
           \oneVoice R1
         }
      >>
    >>
    \lyricsto "libye" \new Lyrics = "lyricsDown" { \includeLyrics "paroles-libye-reduction" }
    \lyricsto "epaphus" \context Lyrics = "lyricsDown" { \includeLyrics "paroles-epaphus" }
    \new Staff <<
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
}
