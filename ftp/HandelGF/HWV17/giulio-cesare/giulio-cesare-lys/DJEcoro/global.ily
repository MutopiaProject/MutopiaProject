\override Staff.TimeSignature   #'style = #'C
\time 2/2
\tag #'other \key g \major
\tag #'horn \clef treble
\partial 4
s4 s1*43 s2. \tag #'with-breaks \break
\tag #'other \key g \minor
\repeat volta 2 { s4 s1*7 s2. } \tag #'with-breaks \break
\repeat volta 2 { s4 s1*15 s2. } \tag #'with-breaks \break
\key g \major
s4 s1*38
\bar "|."
