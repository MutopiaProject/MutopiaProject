
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global 
      \override Staff . Clef #'full-size-change = ##t
      \set Staff . explicitClefVisibility = #end-of-line-invisible
      \override Score.BreakAlignment #'break-align-orders =
      ##(;; end-of-line:
         (instrument-name left-edge ambitus breathing-sign
          clef key-cancellation key-signature
          time-signature custos staff-bar)
         ;; unbroken
         (instrument-name left-edge ambitus breathing-sign
          staff-bar clef key-cancellation key-signature
          staff time-signature custos)
         ;; begin of line
         (instrument-name left-edge ambitus breathing-sign
          clef key-cancellation key-signature staff-bar
          time-signature custos))
      \override Score.PaperColumn #'keep-inside-line = ##t
      \includeNotes "voix"
    >>  \includeLyrics "paroles"
    \newStaff << \global \basse \includeNotes "basse" >> 
  >>
  \layout { #(define tweak-key (*current-piece*)) 
            indent = \noindent }
  \midi { \tempo 4 = 108 }
}
