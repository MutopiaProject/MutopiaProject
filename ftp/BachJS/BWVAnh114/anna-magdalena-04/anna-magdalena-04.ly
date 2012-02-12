\header {
  enteredby = 	"Allen Garvin"
  maintainer = 	"Allen Garvin"
  copyright = 	"Public Domain"
  filename = 	"anna-magdalena-04.ly"
  title = 	"Menuet"
  opus = 	"BWV Anh. 114"
  composer =	"Johann Sebastian Bach (1685-1750)"
  style =	"Baroque"
  source =	"Bach-Gesellschaft"
  lastupdated =	"2010/Oct/30"

  mutopiainstrument = "Harpsichord,Clavichord,Piano"
  mutopiatitle =      "Menuet"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV Anh. 114"

 footer = "Mutopia-2012/02/08-75"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\pointAndClickOff

\version "2.14.2"

voiceone =  \relative c'' {
  \clef "treble"
  \time 3/4
  \key g \major

  \repeat "volta" 2 {
    d4  g,8[ a b c] |
    d4 g, g |
    e'  c8^[\mordent d e fis] |
    g4 g, g |
    c4^\mordent  d8[ c b a] | \break
    b4  c8[ b a g] |
    fis4  g8[ a b g] |
    \grace b8 a2. |
    d4  g,8[ a b c] |
    d4 g, g | \break
    e'4  c8[\mordent d e fis] |
    g4 g, g |
    c4\mordent  d8[ c b a] |
    b4  c8[ b a g] |
    a4  b8[ a g fis] |
    g2. | \break
  }
  \repeat "volta" 2 {
    b'4  g8[ a b g] |
    a4  d,8[ e fis d] |
    g4  e8[ fis g d] |
    cis4  b8[ cis] a4 |
    a8[ b cis d e fis] | \break
    g4 fis e |
    fis a, cis |
    d2. |
    d4  g,8[ fis] g4 |
    e'4  g,8[ fis] g4 | \break
    d'4 c b |
     a8[ g fis g] a4 |
     d,8[ e fis g a b] |
    c4 b^\prall a |
     b8[ d] g,4 fis |
    << { \stemUp g2. \stemNeutral }
      { \context Voice = "ii" { << \stemDown { <d b> } >> } }
    >> |
  }
}

voicetwo =  \relative c' {
  \clef "bass"
  \time 3/4
  \key g \major

  \repeat "volta" 2 {
    << { \stemUp { <b d>2 } \stemNeutral }
      { \context Voice = "ii" { << \stemDown g2 >> } }
    >> a4 |
%     <g b d>2 a4 |
    b2. |
    c2. |
    b2. |
    a2. |
    g2. |
    d'4 b g |
    d'  d,8[ c' b a] |
    b2 a4 |
    g b g |
    c2. |
    b4  c8[ b a g] |
    a2 fis4 |
    g2 b4 |
    c d d, |
    g2 g,4 |
  }
  \repeat "volta" 2 {
    g'2. |
    fis2. |
    e4 g e |
    a2 a,4 |
    a'2. |
    b4 d cis |
    d fis, a |
    d d, c'! |
    << { \stemUp { r4 d2 } \stemNeutral }
      { \context Voice = "ii" { << \stemDown { b2 b4 } >> } }
    >> |
    << { \stemUp { r4 e2 } \stemNeutral }
      { \context Voice = "ii" { << \stemDown { c2 c4 } >> } }
    >> |
    b4 a g |
    d'2 r4 |
    << { \stemUp { r4 r f, } \stemNeutral }
      { \context Voice = "ii" { << \stemDown d2. >> } }
    >> |
    e4 g fis |
    g b, d |
    g d g, |
  }
}

\paper{
  top-margin = 3\mm
  bottom-margin = 3\mm
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

  \layout{ line-width = 18.0 \cm }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 140 4)
      }
    }

}

