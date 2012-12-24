\header {
  enteredby = 	"Allen Garvin"
  maintainer = 	"Allen Garvin"
  copyright = 	"Public Domain"
  filename = 	"anna-magdalena-22.ly"
  title = 	"Musette"
  opus = 	"BWV Anh. 126"
  composer =	"Johann Sebastian Bach (1685-1750)"
  style =	"Baroque"
  source =	"Bach-Gesellschaft"
  lastupdated =	"2012/Aug/19"

  mutopiainstrument = "Harpsichord,Clavichord"
  mutopiatitle =      "Musette"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV Anh. 126"
  footer =            "Mutopia-2012/08/19-79"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.14.0"

voiceone =  \relative c'' {
  \clef "treble"
  \key d \major
  \time 2/4

  \repeat "volta" 2 {
    a'4  g16[ fis e d] |
    a'4  g16[ fis e d] |
     fis,16[ g a8]  g[ fis] |
     e[ a fis d] |
    a''4  g16[ fis e d] |
    a'4  g16[ fis e d] |
     fis,16[ g a8]  g[ fis] |
     e[ a] d,4\fermata |
  }
  \repeat "volta" 2 {
     cis'16[ d e8]  cis16[ d e8] |
     a[ e] e4 |
     a8[ e]  a[ e] | \break
     d16[ cis b a]  b8[ e,] |
     e'[ dis e, d'] ~ |
     d[ cis a' gis] |
     e[ dis e, d'] ~ |
     d[ cis a' gis] | \break
     e16[ dis cis dis]  e[ dis cis dis] |
     e8[ gis, a d!] |
     cis16[ d e8]  a,[ d,] |
     cis16[ d e8] a,4 |
  }
}

voicetwo =  \relative c, {
  \clef "bass"
  \time 2/4
  \key d \major

  \repeat "volta" 2 {
     d8[ d']  d,[ d']
     d,[ d']  d,[ d'] |
     fis16[ g a8]  g[ fis] |
     e[ a fis d] |
     d,[ d']  d,[ d'] |
     d,[ d']  d,[ d'] |
     fis16[ g a8]  g[ fis] |
     e[ a] d,4\fermata |
  }
  \repeat "volta" 2 {
     a8[ a']  a,[ a'] |
     a,[ a']  a,[ a'] |
     a,[ a']  a,[ a'] |
     a,[ a']  e,[ e'] |
     e,[ e']  e,[ e'] |
     e,[ e']  e,[ e'] |
     e,[ e']  e,[ e'] |
     e,[ e']  e,[ e'] |
     e,[ e']  e,[ e'] |
     e,[ d']  cis[ d] |
    e4  a,8[ d] |
     cis16[ d e8] a,4 |
  }
}
  
\score {
   \context GrandStaff << 
    \context Staff = "one" <<
      \voiceone
    >>
    \context Staff = "two" <<
      \voicetwo
    >>
  >>

  \layout{}
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }


}
