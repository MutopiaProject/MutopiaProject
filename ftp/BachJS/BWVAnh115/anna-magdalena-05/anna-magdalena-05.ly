\version "2.18.2"

\header {
  enteredby = 	"Allen Garvin"
  maintainer = 	"Allen Garvin"
  license = 	"Public Domain"
  filename = 	"anna-magdalena-05.ly"
  title = 	"Menuet"
  opus = 	"BWV Anh. 115"
  composer =	"Johann Sebastian Bach (1685-1750)"
  		%This piece has been attributed to Christian Petzold
  style =	"Baroque"
  source =	"Bach-Gesellschaft"

  mutopiainstrument = "Harpsichord, Piano, Clavichord"
  mutopiatitle =      "Menuet"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV Anh. 115"
  maintainerEmail =   "AGarvin@tribalddb.com"

 footer = "Mutopia-2015/08/21-76"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

voiceone =  \relative c''' {
  \key g \minor
  \time 3/4
  \clef "treble"

  \repeat "volta" 2 {
    bes4 a g |
    a d, d |
    g  g,8[ a bes c] |
    d2. |
    ees4  f8[ ees d c] |
    d4  ees8[ d c bes] |
    c4  d8[ c bes c] |
    a2.\prall |
    bes'4 a\prall g |
    a d, d |
    g  g,8[ a bes c] |
    d2. |
    f4\mordent  g8[ f ees d] |
    ees4  f8[ ees d c] |
    d4 g c,\prall |
    << { \stemUp bes2. \stemNeutral } 
      { \context Voice = "ii" { << \stemDown { <f d>2. } >> } }
    >> |
  }
  \repeat "volta" 2 { 
    d'4  bes8[ c d e!] |
    f4 g a |
    bes  g8[ a bes g] |
    a4  g8[ a] f4 |
    f,8[ g a bes c d] |
    ees4 d\mordent c |
    f bes, a |
    bes2. |
    g4  d'8[ c] d4 |
    g,  ees'8[ d] ees4 |
    \stemDown g,8[ d' fis, c' g bes] \stemNeutral|
    a2 r4 |
     d,8[ e fis g a bes] |
    c4 bes a |
     bes8[\prall c16 d] g,4 fis |
    << { \stemUp g2. \stemNeutral }
       { \context Voice = "ii" { << \stemDown { <d bes>2. } >> } } 
    >> |
  }
}

voicetwo =  \relative c' {
  \clef "bass"
  \time 3/4
  \key g \minor

  \repeat "volta" 2 {
    g2. |
    f |
    ees |
    d4  d'8[ c bes a] |
    <g bes>2 a4 |
    bes2 g4 |
    a fis g |
    d  d'8[ c bes a] |
    g2. |
    f |
    ees |
    d4  d'8[ c b a] |
    <d b>2 g,4 |
    c a f |
    bes ees, <f a> |
    bes bes,2 |
  }
  \repeat "volta" 2 {
    bes'2. |
    a4 g f |
    g e c |
    f2 r4 |
    a g f |
    g f ees |
    d ees f |
    bes, d' c |
    <d b>2. |
    c |
    bes4 a g |
    d'  a8[ g fis e] |
    d2 r4 |
    ees d c |
    bes c d |
    g g,2 |
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

  \layout{  }
  
  \midi {
    \tempo 4 = 140
    }
}

\markup {\italic \smaller "This piece has been attributed to Christian Petzold (1677 – 1733)"}

