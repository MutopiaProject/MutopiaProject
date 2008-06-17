\include "english.ly"

\header {
  enteredby = 	"Allen Garvin"
  maintainer = 	"Allen Garvin"
  maintainerEmail =   "AGarvin (at) tribalddb.com"
  copyright = 	"Public Domain"
  filename = 	"bach-english-suite-2-bourree-2.ly"
  title = 	"English Suite II: Bourree II"
  opus = 	"BWV 807"
  composer =	"Johann Sebastian Bach (1685-1750)"
  style =	"Baroque"
  source =	"Bach-Gesellschaft"
  lastupdated =	"2001/Apr/24"

  mutopiainstrument = "Harpsichord, Piano, Clavichord"
  mutopiatitle =      "English Suite II: Bourree II"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV 807"
 footer = "Mutopia-2008/06/17-83"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.46"

voiceone =  \relative c' {
  \key a \major
  \clef "treble"
  
  \override Staff.TimeSignature   #'style = #'single-digit
  \time 2/2

  \repeat "volta" 2 {
    \partial 4
    << { \stemUp e4 }
      { \context Voice = "two" { \stemDown cs4 } } >>	|
    << { e fs  g8[ fs e d] }
      { \context Voice = "two" { \stemDown cs4 d  e8[ d cs b] } }
    >>							|
    << { e4  a8[ gs!] a4 e }
      { \context Voice = "two" { \stemDown cs4  cs8[ b] cs4 cs } }
    >>
     fs8[ d cs d]  e[ d cs b] 				|
     d[ cs b cs] a4 << { e' } { \context Voice = "two" { \stemDown cs } } >> |
    << { e fs  g8[ fs e d] }
      { \context Voice = "two" { \stemDown cs4 d  e8[ d cs b] } }
    >>							|
    << { e4  a8[ gs]  a[ cs] b4 }
      { \context Voice = "two" { \stemDown cs,2. ds4 } }
    >>							|
    << { b'2 \slurUp  a8[( gs fs  e)] }
      { \context Voice = "two" { \stemDown e2. ds4 } }
    >>							|
    << { e2. } { \context Voice = "two" { \stemDown e2. } } >>	
  }
  \repeat "volta" 2 {
    << { \stemUp gs4 }
      { \context Voice = "two" { \stemDown b,4 } }
    >>							|
    << { gs'4 a  b8[ a gs fs] }
      { \context Voice = "two" { b,4 cs  d8[ cs b a] } }
    >>							|
    << {  a'[ gs fs gs] e4 a }
      { \context Voice = "two" {  cs,8[ b a b] gs4 e' } }
    >>							|
     fs8[ es fs a]  gs[ a b fs] 				|
     gs8[ es fs ds]  es[ cs] 
	<< { cs'4 } { \context Voice = "two" { \stemDown cs,4 } } >>	|
    << { \stemUp  cs'8[ d! e cs]  d[ b cs as] }
      { \context Voice = "two" { as,4 cs b e } }
    >>							|
    << {  b'8[ cs d b] }
      { \context Voice = "two" { \stemDown d,4 b } }
    >> \stemUp  cs'8[ a! b gs]					|
     cs[ b d cs]  b[ a gs a]					|
    \grace gs8 fs2. << { a4 } { \context Voice = "two" { \stemDown cs,4 } } >>	| 
    << { a'2. a4 }
      { \context Voice = "two" { b,4  ds8[ cs] ds4 ds } }
    >>							|
    << {  a'8[ gs a fs]  gs[ e] g4 }
      { \context Voice = "two" { e2. b4 } }
    >>							|
    << { g'2. g4 }
      { \context Voice = "two" { a,4  cs8[ b] cs4 cs } }
    >>							|
    << {  g'8[ fs g e]  fs[ d] b'4 }
      { \context Voice = "two" { d,2. d4 } }
    >>							|
    << { b'4 cs  d8[ cs b a] }
      { \context Voice = "two" { d,4 e e2 } }
    >>							|
    << { b'4  e8[ d] e4 gs, }
      { \context Voice = "two" { e2. e4 } }
    >>							|
    << { a4. b8 b4. a8 }
      { \context Voice = "two" { e4. a8 gs2 } }
    >>							|
    << { a2. }
      { \context Voice = "two" { r8 e cs2 } }
    >>							
  }
}

voicetwo =  \relative c' {
  \key a \major
  \clef "bass"

  \override Staff.TimeSignature   #'style = #'single-digit
  \time 2/2

  \repeat "volta" 2 {
    \partial 4 a4					|
    a1 ~						|
    a ~							|
    << { \stemDown a4 a gs e \stemNeutral }
      { \context Voice = "two" { << 
         \override NoteColumn   #'horizontal-shift = #-1
         \stemDown b'1 
      >> } } 
    >>							|
    << { \stemUp a2. a4 \stemNeutral }
      { \context Voice = "two" { r4 e cs e } } >>		|
    a1^~				|
    a4 gs fs a						|
     a8[( gs fs  e)] b'4 b,				|
    e b e,						
  }
  \repeat "volta" 2 {
    e'4							|
    e1 ~						|
    e2. cs4						|
    << { \stemUp  a'2 b4 fs }
      { \context Voice = "two" { \stemDown d4 cs b d } } >>	|
    << { es a gs <gs es> }
      { \context Voice = "two" { cs,2. cs4 } } >>		|
    fs1 ~						|
    << { fs1_~ }
      { \context Voice = "two" { \voiceOne r4 r a! gs } } >>	|
    << { \stemDown  fs4 b, cs2 }
      { \context Voice = "two" { \stemUp a'4 gs fs es } } >>	|
    << { \stemUp fs4 r r fs }
      { \context Voice = "two" { \stemDown  fs8[ d cs b]  a[ gs a fs] } } >> |
    << { ds'4  fs8[ e] fs4 fs }
      { \context Voice = "two" { b,2. b4 } } >>		|
    << { e2. e4 }
      { \context Voice = "two" { e,2. e4 } } >>		|
    << { cs'4  e8[ d] e4 e }
      { \context Voice = "two" { a,2. a4 } } >>		|
    << { d2. fs4 }
      { \context Voice = "two" { d,2. d'4 } } >>		|
    << { e2 e4 fs }
      { \context Voice = "two" { gs,2 a } } >>		|
    << { gs'2. b4 }
      { \context Voice = "two" { d,2. d 4 } } >>		|
    << { a'2 e2 }
      { \context Voice = "two" { cs4 d r e, } } >>		|
    << { r4 r8 e' a4 }
      { \context Voice = "two" { a,2. } } >>
   
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

  \layout{ line-width = 18.0 \cm }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 92 2)
      }
    }


}
