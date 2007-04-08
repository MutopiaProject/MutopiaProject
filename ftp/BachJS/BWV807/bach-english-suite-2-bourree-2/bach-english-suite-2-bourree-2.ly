\include "english.ly";

\header {
  enteredby = 	"Allen Garvin";
  maintainer = 	"Allen Garvin";
  copyright = 	"Public Domain";
  filename = 	"bach-english-suite-2-bourree-2.ly";
  title = 	"English Suite II: Bourree II";
  opus = 	"BWV 807";
  composer =	"Johann Sebastian Bach (1685-1750)";
  style =	"Baroque";
  source =	"Bach-Gesellschaft";
  lastupdated =	"2001/Apr/24";

  mutopiainstrument = "Harpsichord,Clavichord";
  mutopiatitle =      "English Suite II: Bourree II";
  mutopiacomposer =   "J. S. Bach (1685-1750)";
  mutopiaopus =       "BWV807";
  tagline =           "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer =            "Mutopia-2001/04/24-83";
}

\version "1.3.117";

voiceone = \notes \relative c' {
  \key a \major;
  \clef "treble";
  
  \property Staff.TimeSignature \set #'style = #'1style
  \time 2/2;

  \repeat "volta" 2 {
    \partial 4;
    < { \stemUp e4 }
      { \context Voice=two { \stemDown cs4 } } >	|
    < { e fs [g8 fs e d] }
      { \context Voice=two { \stemDown cs4 d [e8 d cs b] } }
    >							|
    < { e4 [a8 gs!] a4 e }
      { \context Voice=two { \stemDown cs4 [cs8 b] cs4 cs } }
    >
    [fs8 d cs d] [e d cs b] 				|
    [d cs b cs] a4 < { e' } { \context Voice=two { \stemDown cs } } > |
    < { e fs [g8 fs e d] }
      { \context Voice=two { \stemDown cs4 d [e8 d cs b] } }
    >							|
    < { e4 [a8 gs] [a cs] b4 }
      { \context Voice=two { \stemDown cs,2. ds4 } }
    >							|
    < { b2 \slurUp [a8( gs fs )e] }
      { \context Voice=two { \stemDown e2. ds4 } }
    >							|
    < { e2. } { \context Voice=two { \stemDown e2. } } >	
  }
  \repeat "volta" 2 {
    < { \stemUp gs4 }
      { \context Voice=two { \stemDown b,4 } }
    >							|
    < { gs4 a [b8 a gs fs] }
      { \context Voice=two { b,4 cs [d8 cs b a] } }
    >							|
    < { [a gs fs gs] e4 a }
      { \context Voice=two { [cs,8 b a b] gs4 e' } }
    >							|
    [fs8 es fs a] [gs a b fs] 				|
    [gs8 es fs ds] [es cs] 
	< { cs'4 } { \context Voice=two { \stemDown cs,4 } } >	|
    < { \stemUp [cs8 d! e cs] [d b cs as] }
      { \context Voice=two { as,4 cs b e } }
    >							|
    < { [b8 cs d b] }
      { \context Voice=two { \stemDown d,4 b } }
    > \stemUp [cs8 a! b gs]					|
    [cs b d cs] [b a gs a]					|
    \grace { \property Grace.Stem \override #'flag-style = #'() gs8 }
    fs2. < { a4 } { \context Voice=two { \stemDown cs,4 } } >	| 
    < { a2. a4 }
      { \context Voice=two { b,4 [ds8 cs] ds4 ds } }
    >							|
    < { [a8 gs a fs] [gs e] g4 }
      { \context Voice=two { e2. b4 } }
    >							|
    < { g2. g4 }
      { \context Voice=two { a,4 [cs8 b] cs4 cs } }
    >							|
    < { [g8 fs g e] [fs d] b'4 }
      { \context Voice=two { d,2. d4 } }
    >							|
    < { b4 cs [d8 cs b a] }
      { \context Voice=two { d,4 e e2 } }
    >							|
    < { b4 [e8 d] e4 gs, }
      { \context Voice=two { e2. e4 } }
    >							|
    < { a4. b8 b4. a8 }
      { \context Voice=two { e4. a8 gs2 } }
    >							|
    < { a2. }
      { \context Voice=two { r8 e cs2 } }
    >							
  }
}

voicetwo = \notes \relative c' {
  \key a \major;
  \clef "bass";

  \property Staff.TimeSignature \set #'style = #'1style
  \time 2/2;

  \repeat "volta" 2 {
    \partial 4; a4					|
    a1 ~						|
    a ~							|
    < { \stemDown a4 a gs e \stemBoth }
      { \context Voice=two { < 
         \property Voice.NoteColumn \override #'horizontal-shift = #-1
         \stemDown b'1 
      > } } 
    >							|
    < { \stemUp a2. a4 \stemBoth }
      { \context Voice=two { r4 e cs e } } >		|
    a1 \tieUp ~ \tieBoth				|
    a4 gs fs a						|
    [a8( gs fs )e] b'4 b,				|
    e b e,						
  }
  \repeat "volta" 2 {
    e'4							|
    e1 ~						|
    e2. cs4						|
    < { \stemUp  a'2 b4 fs }
      { \context Voice=two { \stemDown d4 cs b d } } >	|
    < { es a gs <gs es> }
      { \context Voice=two { cs,2. cs4 } } >		|
    fs1 ~						|
    < { fs1 ~ }
      { \context Voice=two { \stemUp r4 r a! gs } } >	|
    < { \stemDown fs4 b, cs2 }
      { \context Voice=two { \stemUp a'4 gs fs es } } >	|
    < { \stemUp fs4 r r fs }
      { \context Voice=two { \stemDown [fs8 d cs b] [a gs a fs] } } > |
    < { ds4 [fs8 e] fs4 fs }
      { \context Voice=two { b,2. b4 } } >		|
    < { e2. e4 }
      { \context Voice=two { e,2. e4 } } >		|
    < { cs4 [e8 d] e4 e }
      { \context Voice=two { a,2. a4 } } >		|
    < { d2. fs4 }
      { \context Voice=two { d,2. d'4 } } >		|
    < { e2 e4 fs }
      { \context Voice=two { gs,2 a } } >		|
    < { gs2. b4 }
      { \context Voice=two { d,2. d 4 } } >		|
    < { a2 e2 }
      { \context Voice=two { cs4 d r e, } } >		|
    < { r4 r8 e a4 }
      { \context Voice=two { a,2. } } >
   
  }

}

\score {
  \notes \context GrandStaff < 
    \context Staff = one <
      \voiceone
    >
    \context Staff = two <
      \voicetwo
    >
  >

  \paper{ linewidth = 18.0 \cm; }
  \midi { \tempo 2 = 92; }
}
