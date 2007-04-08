\include "english.ly";

\header {
  enteredby = 	"Allen Garvin";
  maintainer = 	"Allen Garvin";
  copyright = 	"Public Domain";
  filename = 	"bach-english-suite-2-prelude.ly";
  title = 	"English Suite II: Gigue";
  opus = 	"BWV 807";
  composer =	"Johann Sebastian Bach (1685-1750)";
  style =	"Baroque";
  source =	"Bach-Gesellschaft";
  lastupdated =	"2001/Apr/24";

  mutopiainstrument = "Harpsichord,Clavichord";
  mutopiatitle =      "English Suite II: Gigue";
  mutopiacomposer =   "J. S. Bach (1685-1750)";
  mutopiaopus =       "BWV807";
  tagline =           "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer =            "Mutopia-2001/04/24-84";
}

barSegno = \mark "\\font\\fetafont=feta16\\fetafont\\char63";

\version "1.3.117";

voiceone = \notes \relative c' {
  \key a \minor;
  \clef "treble";
  \time 6/8;
  
  \partial 8; e8				|\barSegno

  \repeat "volta" 2 {
    a4 a8 [a b c]				|
    [b d, b'] [e, f d]				|
    [c e a] [d, b' a]				|
    [gs a b] [e, e' d]				|
    [c d e] [a, f' e]				|
    [d e f] [b, g' f]				|
    [e f g] [g\prall f g]			|
    [a a, b] [c d e] 				|
    [f g a] [a\prall g a] 			|
    [b b, c] [d e f]				|
    [g a b] [b\prall a b]			|
    [c c, d] [e f g]				|
    [a b, c] [d e f]				|
    [g a, b] [c d e]				|
    [f g a] [d, e f]				|
    [b, c d] [g, a b]				|
    c4 c8 [c b c]				|
    [d f, d'] [e, f d]				|
    [c e g] [e g c]				|
    [g b d] [b d g]				|
    [g e c] [bf a g]				|
    a4. r8 r a					|
    [f' d b!] [a g f]				|
    g4. r8 r g					|
    [e' c a] [g f e]				|
    [d' b g] [f e d]				|
    [e g c] [fs, d' c]				|
    [b c d] g,4 d'8				|
    [e f g] [g, a b]				|
    [c d e] [b c d]				|
    [e f g] [g, a b]				|
    \stemUp
    [c d e] [b c d]				|
    [e f g] [e\prall d c]			|
    \stemBoth
  }
  \alternative { { [c g e] c4 e8 } { [c g e] c4 g'8 | c4 c8 [c d e] } }
  \repeat "volta" 2 {
  [d f, d'] [g, a f]
  [e c' e,] [d e c]
  [b c d] g,4 d'8
  [e fs g] [a b c]
  ds,4 c'8 b4.
  [d,!8 e fs] [gs a b]
  cs,4 b'8 a4.
  [c,!8 d e] [fs g a]
  b,4 a'8 g4.
  a,4 g'8 fs4.
  g,4 fs'8 [e ds e]
  [ds e fs] [b, b' a]
  [g a b] [e, c' b]
  [a b c] [fs, d' c]
  [b c d] [g, e' d]
  [cs ds e] [a, fs' e]
  [ds e fs] [fs\prall e fs]
  [g g, a] [b cs ds]
  [e fs g] [g\prall fs g]
  [a a, b] [cs ds e]
  [fs g a] [a\prall g a]
  [b cs, ds] [e fs g]
  [a b, cs] [ds e fs]
  [g a b] [b, e ds]
  r4. r8 r e 
  [e cs a] [g f! e]
  [f d f] [a f a]
  [d b g] [a e d]
  [e c e] [g e g]
  [c a f] [e d c]
  [b' gs e] [d c b]
  [c e a] [d, b' a]
  [gs a b] e,4 b'8
  [c d e] [e, fs gs]
  [a b c] [gs a b]
  [c d e] [e, fs gs]
  [a b c] [gs a b]
  [c d e] [c b a]
  }
  \alternative {
    { [a e c] a4 g'8 | c4 c8 c d e }
    { [a e c] a4 e'8 \bar "||";\barSegno [a^"Fine." e c] a4 \bar "|."; } }

}

voicetwo = \notes \relative c {
  \key a \minor;
  \clef "bass";
  \time 6/8;

  \partial 8; r8
  \repeat "volta" 2 {
  a4. a' ~
  a gs
  a f
  e ~ [e8 fs gs]
  [a b c] [f, g a]
  [b c d] [g, a b]
  [c d e] [e\prall d e]
  [f f, g] [a b c]
  [d e f] [f\prall e f]
  [g g, a] [b c d]
  [e f g] [g\prall f g]
  [a a, b] [c d e]
  [d g, a] [b c d]
  [e f, g] [a b c]
  [d e f] [b, c d]
  g,4. r8 r f'
  [e f g] [c, d e]
  [b c d] [g, a b]
  [e, f g] [c, d e]
  [b c d] [g, a b]
  e,4. r8 r e'8 
  [f g a] [a b! c]
  d,,4. r8 r d'
  [e d g] [g a b]
  c,,4. c' ~
  c b
  c a
  g ~ [g8 a b] 
  [c d e] [b c d] 
  [e f g] [g a b]
  [c d e] [b c d]
  \translator Staff = treble  
  \stemDown
  [e f g] [g a b]
  c4 f,8 g4 
    \translator Staff = bass
    \stemBoth
    g,8
  }
  \alternative { { c,4. ~ [c8 e c] } { c,4. ~ [c8 g e] | c4. c' ~ } }
  \repeat "volta" 2 {
    c,4. b
    c f,
    g ~ [g8 a b]
    [c d e] [fs g a]
    [b, b' a] [gs a fs]
    [gs fs e] [d e b]
    [a a' g!] [fs g e]
    [fs e d] [c b a]
    [g g' fs] [e ds e]
    [fs, fs' e] [ds cs ds]
    [e, e' d!] [c! b a]
    b4. ~ [b8 cs ds]
    [e fs g] [c,! d! e]
    [fs g a] [d, e fs]
    [g a b] [e, fs g]
    [a b c!] [fs, g a]
    [b cs ds] [ds\prall cs ds]
    [e e, fs] [g a b]
    [cs ds e] [e\prall ds e]
    [fs fs, g] [a b cs]
    [ds e fs] [fs\prall e fs]
    [g a, b] [cs ds e]
    [fs g, a] [b cs ds]
    e4 a,8 b4 b,8
    [e fs g] [g a bf]
    cs,4. r8 r a
    [d f a] d4 c,!8
    b4. r8 r g
    [c e g] c4 b,8
    a4. a' ~
    a gs
    a f
    e [e,8 fs gs]
    [a b c] [gs a b]
    [c d e] [e fs gs]
    [a b c] [gs a b]
    [c d e] [e fs gs]
    a4 d,8 e4 e,8
  }
  \alternative {
    { a4. ~ [a8 g f] | [e f g] c4. }
    { a4._#'(lines ((bold italic)"Da Capo")
                   (italic "dal Segno")
                   (italic "(senza repetizione)") (italic "al Fine"))  
       ~ [a8 e c] \bar "||";|\barSegno a4. ~ a4 \bar "|."; } }

}

\score {
  \notes \context GrandStaff < 
    \context Staff = treble<
      \voiceone
    >
    \context Staff = bass <
      \voicetwo
    >
  >

  \paper{ linewidth = 18.0 \cm; }
  \midi { \tempo 4. = 190; }
}
