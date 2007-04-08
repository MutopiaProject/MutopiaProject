%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "La Babillarde"
  subtitle          = "Plappermäulchen  *  Chatterbox"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegro moderato"
  copyright         = "Public domain"
  mutopiatitle      = "La Babillarde"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Apr/09"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/04/09-229"
}

Global = \notes {\key f\major \time 3/8}
crescendo = #'(italic "cresc.")

tsUpII = \property Voice.TextScript \override #'extra-offset = #'( 0 . 2)
tsUpIh = \property Voice.TextScript \override #'extra-offset = #'( 0 . 1.5)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'( 0 . 1)
tsUph = \property Voice.TextScript \override #'extra-offset = #'( 0 . 0.5)
tsZero = \property Voice.TextScript \revert #'extra-offset
tsDownI = \property Voice.TextScript \override #'extra-offset = #'( 0 . -1)
tsDownII = \property Voice.TextScript \override #'extra-offset = #'( 0 . -2)

VoiceI = \notes \relative c' {
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -2) <e4.^"1"^"3"_\p g> ~
  <e8 g> <\context Voice=VcI {\voiceOne g8 ( bes}
          \context Voice=VcIb {\voiceTwo e,4_"1"}>
  \stemBoth \slurBoth \tieBoth <f4._"3"_"1" a> ~
  <f8 ) a> <\context Voice=VcI {\voiceOne a8 ( d \tsDownII c4.^"4" ~ c8 \tsZero \tsUpIh bes^"3" ) g^"1"}
          \context Voice=VcIb {\voiceTwo f4_"1" e4._"1"\decr ~ e4\rced g8}>
  
  \repeat volta 2 {\stemBoth \slurBoth \tieBoth \tsZero
  
  r8 c16^"3" c^"2" c^"1" ( a'
  ) g8-. [c,16^"3" c^"2" c^"1" ( g']
  ) f8-. \stemDown [a,16^"3" a^"2" a^"1" ( \tsUph d^"5"]
  \stemUp \tsZero c_"4" e,_"1" dis_"2" e_"1" d'!_"5" ) c
  
  \stemBoth r8 c16^"3"_""_""_\crescendo c^"2" c^"1" ( a'
  ) g8-. \stemDown [g,16^"3" g^"2" g^"1" ( e']
  \stemBoth ) d8-. [g,16_"3" g_"2" g_"1" ( d'_"5"]
  ) c8 b16 ( c d ) c
  }

  \repeat volta 2 {
  
  <e,4_\p g^"1"^"2" (> <f8 a^"1"^"3">
  <g4 bes^"2"^"4"> <e8 ) g^"1"^"2">
  <bes'4\decr d^"3"^"5" (> <a8\rced c>
  <bes4\decr d> <a8\rced ) c>
  
  <g4_""_""_""_\crescendo bes^"1"^"3"> <g8 bes^"2"^"4" (>
  <f4 ) a^"1"^"3"> <f8 a^"2"^"4" (>
  <e ) g> [g16_"3" ( fis g_"1" a]
  \tsDownI bes_#'(italic "dim.") \tsZero \tsUpIh a^"1" bes^"2" b \tsZero \tsUpI d^"5" ) c
  
  r8 \tsZero c16^"3" c^"2" c^"1" ( a'
  ) g8-. [c,16 c c ( g']
  ) f8-. [a,16 a a ( d]
  c e, dis e d'! ) c
  
  r8 c16^"3"_""_""_""_\crescendo c^"2" c^"1" ( a'
  ) g8-. [g,16_"3" g_"2" g_"1" ( d']
  ) e,8-. [e16_"3" e_"2" e_"1" ( c']
  }
  
  \alternative {
    {) f,4 r8}
    {f,8 \stemDown [a16^"3" a^"2" a^"1" ( \tsUpI c^"2"]}
  }
  
  ) f8-. \tsZero [c16^"3"_""_""_""_\crescendo c^"2" c^"1" ( \tsUpI f^"3"]
  ) a8-. \tsZero [f16^"3" f^"2" f^"1" ( a]
  ) c8-. [a16^"3" a^"2" a^"1" ( c]
  ) f4_\f r8
  \bar "|."
  }
   
VoiceII = \notes \relative c, {
  r8 c-._"5" c'-._"1"
  c'4^"2" r8
  r c,,-._"5"^""^""^""^""^\crescendo c'^"1"
  c'4^"2" r8
  
  r c,,-._"5" c'-._"1"
  c'4_"2" r8
  
  <f, a c^\p> r <f a c>
  <e bes' c> r <e bes' c>
  <f a c> r <f a c>
  \scriptDown <g4.-> bes c>
  
  <f8 a c> r <f a c>
  <g c e_"5"_"2"_"1"> r <g c e>
  <g b f'> r <g b f'>
  <c e> r r
  
  c,16^"5" c'^"1" c^"2" c^"1" c^"2" c^"1"
  c, c' c c c c
  c, c' c c c c
  c, c' c c c c
  
  \slurDown e,^"5" ( c'^"1" b c e, c'
  f,^"4" c'^"1" b c f, c'
  ) c,8 r r
  R4.
  
  <f8 a c^\p> r <f a c>
  <e bes' c> r <e bes' c>
  <f a c> r <f a c>
  <g4.-> bes c>
  
  <f8 a c> r <f a c>
  <f b d> r <f b d>
  <f bes! c> r <f bes c>
  
    <f4 a c> r8
    <f4. a c>
    
  <f a c>
  <f a c>
  <f a c>
  f,4 r8
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "17. ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >
  \context Staff = "down" <
    \property Staff.VoltaBracket = \turnOff
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >
>
}
\paper {}
\midi {\tempo 4=108}
}

