\score {
  \new StaffGroupNoBar <<
    \new Staff = "up" \with {
      autoBeaming = ##f
      \override VerticalAxisGroup #'remove-empty = ##t
      \override VerticalAxisGroup #'remove-first = ##t
      \override Beam #'auto-knee-gap = #'()
      \consists "Hara_kiri_engraver"
      \remove "Axis_group_engraver" } <<
      \global
      \new Voice = "libye" <<
        \includeNotes "libye"
        { \change Staff = "down"
          s1.*5 s2
          \libyeMark r2 s2 s1.*4 s2
          \libyeMark s1 s1.*8 s1 s1.*6 s1 s1.*2 s1 s1.*7 s1*2 s2.
          s1*3 s2. s1 s2. s1 s1.
          \libyeMark s1.*13 s1 s1.*3 s1 s1 s2. s1 s2.*3 s4
          \libyeMark s2. s2.*2 s1*3 s4
          \libyeMark s2. s1*3 s2. s4
          \libyeMark s2 s2.*4 s1 s2. s4
          \libyeMark s2 s2. s2
          \libyeMark s2 s2. \break
          \change Staff = "up"
          r4 r8 s8^\markup \character Libye s2 s1 s4
          r2 R1 r2 s4 s2.*3 s1*2 s1 s2.*2 s1
          R1*4
          \change Staff = "down"
          s4
          \libyeMark s2. s1 s2. s2
          \libyeMark s4 s1 s2.*6 \break
          \change Staff = "up"
          r2 s1^\markup \character Libye s1.*21 R1
          
        }
       >>
    >>
    \lyricsto "libye" \new Lyrics { \includeLyrics "paroles-libye-up" }
    \new Staff = "down" \with {
      autoBeaming = ##f
      \override VerticalAxisGroup #'remove-empty = ##t
      \override VerticalAxisGroup #'remove-first = ##f
      \override Beam #'auto-knee-gap = #'()
      \consists "Hara_kiri_engraver"
      \remove "Axis_group_engraver" } <<
      \global
      \new Voice = "epaphus" <<
         \includeNotes "epaphus"
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
           \epaphusMark r4 s4 s1*2 s2. s1 s2 r4 R2.*3 R1*2
           r2 r4 s4 s2.*2 s1*6 s4.
           \epaphusMark s8 s2 s2.*2 s1 s2. s2
           \epaphusMark s4 s2.*4 s2 r1 r2 s1 s1.*20 R1
         }
      >>
    >>
    \lyricsto "libye" \new Lyrics = "lyricsDown" { \includeLyrics "paroles-libye-down" }
    \lyricsto "epaphus" \context Lyrics = "lyricsDown" { \includeLyrics "paroles-epaphus" }
    \new Staff <<
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { }
}
