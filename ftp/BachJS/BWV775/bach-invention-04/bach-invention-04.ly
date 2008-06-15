#(ly:set-option 'old-relative)
\header {
  enteredby = 	"Allen Garvin"
  maintainer = 	"Allen Garvin"
  maintainerEmail = "AGarvin@tribalddb.com"
  copyright = 	"Public Domain"
  filename = 	"bach-invention-04.ly"
  title = 	"Invention 4"
  opus = 	"BWV 775"
  composer =	"Johann Sebastian Bach (1685-1750)"
  style =	"Baroque"
  source =	"Bach-Gesellschaft"
  lastupdated =	"2003/May/17"

  mutopiainstrument = "Harpsichord, Piano"
  mutopiatitle =      "Invention 4"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV 775"

 footer = "Mutopia-2008/06/15-67"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.46"

voiceone =  \relative c' {
  \key d \minor
  \time 3/8

   d16[ e f g a bes] |						% bar 1
   cis,[ bes' a g f e] |						% bar 2
   f8[ a d] |							% bar 3
   g,[ cis e] |							% bar 4
   d16[ e f g a bes] |						% bar 5
   cis,[ bes' a g f e] |						% bar 6
   f[ d e f g a] |						% bar 7
   bes,[ a' g f e d] |						% bar 8
   e[ c d e f g] |						% bar 9
   a,[ g' f e d c] |						% bar 10
   d[ e f d e f] |						% bar 11
  g,8 r r |							% bar 12
   c16[ d e c d e] |						% bar 13
  f,8 r bes ~ |							% bar 14
   bes[ a g] |							% bar 15
   c16[ bes a g f e] |						% bar 16
   f[ g g8. f16] |						% bar 17
   f8[ c' c] |							% bar 18
  c4.\prall ~ |							% bar 19
  c ~ |								% bar 20
  c ~ |								% bar 21
   c16[ bes a g f e] |						% bar 22
   c'[ d, e fis g a] |						% bar 23
   bes[ a g f e d] |						% bar 24
   bes'[ c, d e f g] |						% bar 25
   a[ b c d e f] |						% bar 26
   gis,[ f' e d c b] |						% bar 27
   c[ b d c b a] |						% bar 28
   gis[ a gis fis e d] |						% bar 29
   c[ d e fis gis a] |						% bar 30
   d,[ c' b a gis fis] |						% bar 31
   e[ fis gis a b c] |						% bar 32
   fis,[ e' d c b a] |						% bar 33
   gis[ a b c d e] |						% bar 34
   a,[ f' e d c b] |						% bar 35
   a'[ gis fis e a8] ~ |						% bar 36
   a16[ d, b8. a16] |						% bar 37
   a8.[ a16 bes c] |						% bar 38
   d,8[ fis a] |							% bar 39
   bes16[ g a bes c d] |						% bar 40
   e,[ d' c bes a g] |						% bar 41
   a8[ f'16 e f8] |						% bar 42
   g,[ e'] r |							% bar 43
   d16[ e f g a bes] |						% bar 44
   cis,[ bes' a g f e] |						% bar 45
   f8[ d g,] ~ |							% bar 46
   g16[ d' cis e a, cis] |					% bar 47
   d[ b cis8. d16] |						% bar 48
   d[ c! bes! a g f] |						% bar 49
   bes[ cis, d e f g] |						% bar 50
   a[ d f,8 e16 d] |						% bar 51
  d4.\fermata \bar "|."					% bar 52
}

  
voicetwo =  \relative c {
  \key d \minor
  \time 3/8
  \clef "bass"

  r4. |								% bar 1
  r4. |								% bar 2
   d16[ e f g a bes] |						% bar 3
   cis,[ bes' a g f e] |						% bar 4
   f8[ a d] |							% bar 5
   e,[ g cis] |							% bar 6
   d,[ d' f,] |							% bar 7
   g[ a bes] |							% bar 8
   c,[ c' e,] |                  				% bar 9
   f[ g a] |                     				% bar 10
   bes16[ g a bes c d] |         				% bar 11
   e,[ d' c bes a g] |           				% bar 12
   a[ f g a bes c] |             				% bar 13
   d,[ c' bes a g f] |           				% bar 14
   e[ c d e f g] |               				% bar 15
   a,[ g' f e d c] |             				% bar 16
   d[ bes c8 c,] |               				% bar 17
   f16[ g a bes c d] |           				% bar 18
   e,[ d' c bes a g] |           				% bar 19
   a[ bes c d e f] |             				% bar 20
   g,[ f' e d c bes] |           				% bar 21
   a[ bes c a bes c] |           				% bar 22
  fis,8 r r |                   				% bar 23
   g16[ a bes g a bes] |         				% bar 24
  e,8 r r |                     				% bar 25
   f8[ f' d] |                   				% bar 26
   b[ gis e] |                   				% bar 27
   a16[ gis a b c d] |           				% bar 28
  e4.\prall ~ |                 				% bar 29
  e ~ |                         				% bar 30
  e ~ |                         				% bar 31
  e ~ |                         				% bar 32
  e ~ |                         				% bar 33
   e8[ e' d] |                   				% bar 34
   c[ b a] |                     				% bar 35
   d[ e f] |                     				% bar 36
   d[ e e,] |                    				% bar 37
   a16[ a, bes! c d ees] |       				% bar 38
   fis,[ ees' d c bes a] |       				% bar 39
   g8.[ g16 a bes] |             				% bar 40
   c,8[ g' c] |                  				% bar 41
   f16[ g a b cis d] |           				% bar 42
   e,[ d' cis b a g] |           				% bar 43
   f8[ a d] |                    				% bar 44
   e,[ g cis] |                  				% bar 45
   d,16[ e f g a bes] |          				% bar 46
   cis,[ bes' a g f e] |         				% bar 47
   f[ g a8 a,] |                 				% bar 48
   bes8.[ c16 bes a] |           				% bar 49
   g[ bes' a g f e] |            				% bar 50
   f[ g a8 a,] |                 				% bar 51
  d,4.\fermata \bar "|."       				% bar 52
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

  \layout{ }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }


}
