\header {
  enteredby = "Allen Garvin"
  maintainer = "Allen Garvin"
  maintainerEmail = "AGarvin@tribalddb.com"
  copyright = "Public Domain"
  filename = "bach-invention-15.ly"
  title = "Invention 15"
  opus = "BWV 786"
  composer = "Johann Sebastian Bach (1685-1750)"
  style = "Baroque"
  source = "Bach-Gesellschaft"
  lastupdated = "2005/12/25"

  mutopiainstrument = "Harpsichord, Piano"
  mutopiatitle =      "Invention 15"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV 786"

 footer = "Mutopia-2008/08/23-68"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.46"

voiceone =  \relative c'' {
  \key b \minor
  \time 4/4

  r8  b16[ ais]  b8[ fis]  g[\prall fis]  b[ fis] |
  fis[\prall e]  cis'[ e,]  e[\prall d16 cis]  d[ e fis e] |
  fis8\mordent r r16  a[ gis a]  b[ cis b gis]  a[ b a fis] |
  gis[ a gis fis]  eis[ gis fis eis]  cis'8[ fis,16 eis]  fis[ a gis b] |
  a[ b cis d]  gis,8.[\prall fis16]  fis8[ fis'16 eis]  fis8[ cis] |
  d[\prall cis]  fis[ cis]  cis[\prall b]  gis'[ b,] |
  b[\prall a16 gis]  a[ b a eis]  fis8[ fis'16 e!]  fis8[ cis] |
  d16[ e d b]  e[ b fis' b,]  g'[ a g e]  a[ e b' d,] |
  cis[ d cis a]  d[ a e' a,]  fis'[ g fis d]  g[ d a' d,] |
  b'[ c b e,]  a[ b a d,]  g[ a g cis,]  fis[ g fis d] |
  e8[ g,16\prall fis]  g8[ e']  fis,[ d']  e,[ cis'] |
  d r r16  fis,[ e fis]  g[ a g e]  fis[ g fis d] |
  e[ fis e d]  cis[ e d cis]  d8[ a']  d16[ cis b d] |
  cis[ b a gis]  a8[ e]  fis[\prall e]  a[ e] |
  e[\prall d]  b'[ d,]  d[\prall cis16 b]  cis[ dis e dis] |
  a'[ fis( g  a)]  gis[( ais b  ais)]  e'[( cis d  e)]  dis[( eis fis  eis)] |
  b'[( gis a  b,)]  cis[( dis  e!) dis]  a'[( fis  g) a,]  b[( cis d  cis)] |
  g'[ e fis cis]  d[ e fis d]  e[ fis e cis]  d[ e d b] |
  cis[ d cis b]  ais[ b cis ais]  fis8[ b16 ais]  b8[ fis] |
  g[\prall fis]  b[ fis]  fis[\prall e]  cis'[ e,] |
  e[\prall d16 cis]  d[ fis e g]  fis8.[ d'16]  ais8.[\prall b16] |
  b1 \fermata \bar "|."
}


voicetwo =  \relative c {
  \key b \minor
  \time 4/4
  \clef "bass"

  b8 r d r e r d r |
  cis r ais r b r g r |
  fis[ fis'16 eis]  fis8[ cis]  d[\prall cis]  fis[ cis] |
  cis[\prall b]  gis'[ b,]  b[\prall a16 gis]  a8[ b] |
  cis[ b cis cis,]  fis8.[ gis16]  a[ b gis a] |
  b[ cis b gis]  a[ b a fis]  gis[ a gis fis]  eis[ gis fis eis] |
  fis8[ fis'16 eis]  fis8[ cis]  d[ d'16 cis]  d[ e! d ais] |
  b8[ a! g fis]  e[ e, fis g] |
  a[ g' fis e]  d[ d, e fis] |
  g[ g' fis b]  e,[ a d, d'] ~ |
  d16[ e d b]  cis[ d cis a]  d[ cis b a]  g[ fis g a] |
  d,8[ d'16 cis]  d8[ a]  b[\prall a]  d[ a] |
  a[\prall g]  e'[ g,]  g[\prall fis16 e]  fis[ gis a gis] |
  a8[ e]  d16[ cis b a]  d[ e d b]  cis[ d cis a] |
  b[ cis b a]  gis[ b a gis]  a8[ a' g! fis] |
  e[ e' d cis]  b[ b, a gis] |
  fis[ fis'16 g!]  a8[ b]  e,[ e,16 fis]  g8[ a] |
  d,8[ b''16 ais]  b8[ fis]  g[\prall fis]  b[ fis] |
  fis[ e]  cis'[ e,]  e[\prall d16 cis]  d[ b cis d] |
  e[ fis e cis]  d[ e d b]  cis[ d cis b]  ais[ cis b ais] |
  b8[ b'16 ais]  b8[ g]  d16[ fis e g]  fis8[ fis,] |
  b1\fermata \bar "|."
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
      tempoWholesPerMinute = #(ly:make-moment 105 4)
      }
    }


}

%{
changes by Urs Metzger, 2005/12/25
version 2.4.0 => 2.6.4
voiceone, bar 6: gis' => gis''
voiceone, bar 13: 8th 16th, c => cis
voicetwo, bar 12: d,8[ d'16 e] ...  => d,8[ d'16 cis] ...
voiceone, bar 13: a[\prall g] e[ g] => a[\prall g] e'[ g,]
%}

