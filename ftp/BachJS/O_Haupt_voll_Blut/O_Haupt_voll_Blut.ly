\header {
  title = "Choral ``O Haupt voll Blut und Wunden''"
  subtitle = "Matthäus Passion"
  composer = "J.S. Bach (1685-1750)"
  piece = "CHORAL. CORO I.II"
  
  mutopiatitle = "Matth&auml;us Passion, Choral &quot;O Haupt voll Blut und Wunden&quot;"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiainstrument = "Voice (SATB) and Piano"
  date = "1729"
  source = "Edition Peters"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "dwb"
  maintainerEmail = "dwbrand@worldonline.nl"
  lastupdated = "2001/Sept/14"

 footer = "Mutopia-2001/09/14-107"
 tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}

global = {
  \time 4/4
  \partial 4    
}

Key = \notes \key d \minor

soprano = \notes \relative c'' {
  \stemUp
  a4 | 
  d c bes a |
  g2 a4\fermata e' |
  f f [e8 d] e4 |
  d2.\fermata  a4 |
%%5  
  d c bes a |
  g2 a4\fermata  e' |
  f f [e8 d] e4 |
  d2.\fermata  f4 |
  [e8 d] c4 d e |
%%10
  f2 f4\fermata  c |
  d c [bes8 a] bes4 |
  a2.\fermata f'!4 |
  [e8 f] g4 f e |
  d2 e4\fermata  a, |
%%15
  bes a g c |
  a2.\fermata  \bar "|."
}


alto = \notes \relative c' {
  \stemDown
  f4 | 
  [f8 g] a4 [d,8 e] f4 |
  f( )e f a |
  a a a [a8 g] |
  f2.  f4 |
%%5  
  [f8 g] a4 [d,8 e] f4 |
  f( )e f  a |
  a a a [a8 g] |
  f2.  a4 |
  g [g8 f] f4 bes |
%%10
  bes( [a8 )g] a4  a |
  [a8 g] a4 [g8 fis] g4 |
  fis2.  g4 |
  g c c c |
  c( )b c  [f,8 e] |
%%15
  [d8 e] f4 f e |
  f2.  \bar "|."
}


tenore = \notes \relative c' {
  \stemUp
  d4 | 
  [d8 e] f4 g c, |
  d( )c c e |
  e d d cis |
  a2.  d4 |
%%5
  [d8 e] f4 g c, |
  d( )c c  e |
  e d d cis |
  a2.  [d8 c!] |
  bes4 c c [bes8 c] |
%%10
  d4( [c8 )bes] c4 [f8 es] |
  d4 d d d |
  d2.  d4 |
  [c8 d] e4 f g |
  a( )g g c, |
%%15
  bes c [c8( bes16 )a] [g8 c] |
  c2.  \bar "|."  
}


basso = \notes \relative c {
  \stemDown
  [d'8 c] | 
  bes4 a g f |
  bes,( )c f\fermata cis |
  [d8 e] [f g] a4 a, |
  d2.\fermata  [d'8 c] |
%%5  
  bes4 a g f |
  bes,( )c f\fermata  cis |
  [d8 e] [f g] a4 a,4 |
  d2.\fermata  d4 |
  g a [bes8 a] g4 |
%%10
  f2 f4\fermata f |
  bes fis g g, |
  d'2.\fermata  b4 |
  c [c'8 b] a4 g |
  f( )g c,\fermata  f |
%%15
  g [a8 bes] c4 c, |
  f2.\fermata \bar "|."
}

textOne = \lyrics {
  O  Haupt voll Blut und Wun -- den, voll Schmerz und vol -- ler Hohn!
  O  Haupt, zu Spott ge- bund -- den mit ei -- ner Dor -- nen -- kron!
  O  Haupt, sonst schön ge -- zie -- ret mit höch -- ster Ehr' und Zier,
  jetzt a -- ber hoch schimp -- fi -- ret: ge -- grüs -- set seist du mir!
}  

textTwo = \lyrics {
  Du ed -- les An -- ge -- Sich -- te, vor dem sonst schrickt und scheut
  das gros -- se Welt -- ge -- rich -- te, wie bist du so be -- speit!
  Wie bist du so er -- blei -- chet, wer hat dein Au -- gen -- licht,
  dem sonst kein Licht niet glei -- chet, so schänd -- lich zu -- ge -- richt't?
}  


\score {
  <
   \global
    \property Score.BarNumber \override #'padding = #3
    \context StaffGroup = coro <
      \context Staff = women <
        \property Staff.midiInstrument = #"choir aahs"
        \property Staff.instrument = #`(lines "SOPRANO." "ALTO.")
        \property Staff.instr = #`""
        \Key
        \context Voice=one \soprano
        \context Voice=two \alto
      >
        \addlyrics
          \context Staff = men <
            \clef bass
            \property Staff.midiInstrument = #"choir aahs"
            \property Staff.instrument = #`(lines "TENORE." "BASSO.")
            \property Staff.noAutoBeaming = ##t
            \property Staff.automaticMelismata = ##t
            \property Staff.instr = #`""
            \Key
            \context Voice=one \tenore
            \context Voice=two \basso
          >
          \context Lyrics <
            \context LyricsVoice = stanzaOne {
              \property LyricsVoice . stanza = "1." \textOne }
            \context LyricsVoice = stanzaTwo {
              \property LyricsVoice . stanza = "2." \textTwo }
          >
    >
  >
  \paper {}
  \midi {}
}
