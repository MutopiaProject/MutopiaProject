%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Tendre Fleur"
  subtitle          = "Zartes Blümlein  *  A dainty Flower"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Moderato"
  copyright         = "Public domain"
  mutopiatitle      = "Tendre Fleur"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/22"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/22-221"
}

Global = \notes {\key d\major \time 4/4}
Treble = \clef treble
Bass = \clef bass

tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)
tsDownI = \property Voice.TextScript \override #'extra-offset = #'(0 . -1)
tsZero = \property Voice.TextScript \revert #'extra-offset 
tsUph = \property Voice.TextScript \override #'extra-offset = #'(0 . 0.5)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'(0 . 1)
tsUpIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 1.5)
tsUpII = \property Voice.TextScript \override #'extra-offset = #'(0 . 2)

dimpoc = #'(italic "dim. e poco rall.")
delicato = #'(italic "delicato")

VoiceI = \notes \relative c' {
  \repeat volta 2 {
  
  \stemBoth \slurBoth \property Voice.DynamicText \override #'extra-offset = #'(0 . -2) d8_"1"_\p () e-._"3"_\delicato fis_"2" () a-._"4" a^"1" () d-.^"3" d^"2" () fis-.^"4"
  fis^"4" ( e cis a ) a'2^"5"
  a8^"1" () fis'-.^"4" fis () d-. d^"3" () a-.^"1" a^"4" () fis-.^"2"
  fis^"4" ( e cis a ) a'2
  
  \property Voice.Hairpin \override #'extra-offset = #'(0 . -1) a8^"5" ( g fis e d4\cr e8 fis\rc
  g\decr fis e d\rced ) cis^"2" ( e^"1" \tsUpIh a^"2" \tsZero \tsUpI cis^"4"
  d^"5" \property Voice.TextScript \set #'extra-offset = #'(0 . -0.2) b^"3" \tsZero a g fis^"3" g fis e
  d b^"3" a g <fis4 ) d'> r
  }
  
  \repeat volta 2 {
  
  \property Voice.DynamicText \revert #'extra-offset cis'2^"2"_\mf ~ cis8 cis\cr ( e a\rc
  gis2\decr ~ gis8\rced fis e d
  cis2^"2" ~ ) cis8 cis\cr ( e a\rc
  gis2\decr ~ gis8\rced fis e d
  
  \tsDownI cis^"2" \tsZero \tsUph ) e^"4" \grace {[d16 e]} d8 ( cis b ) d^"4" \grace {[cis16 d]} \tsZero cis8 ( b
  a e' cis a gis_"3" e fis gis
  ) a gis b a \tsDownII g_\dimpoc \tsZero fis a g
  fis e g_"4" fis a-. g-. ( fis-. e-.
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -1) ) d_"1"_\p^#'(italic "a tempo") () fis-._"3"_\delicato fis_"2" () a-._"4" a^"1" () d-.^"3" d^"2" () fis-.^"4"
  fis^"4" ( e cis a ) a'2^"5"
  a8^"1" () fis'-.^"4" fis () d-. d^"3" ( \tsUph ) a-.^"1" \tsZero a^"4" () fis-.^"2"
  fis^"4" ( e cis a ) a'2
  
  a8^"5" ( g fis e d4\cr e8 fis\rc
  g\decr fis e d\rced ) cis^"2" ( e^"1" \tsUpIh a^"2" \tsZero \tsUpI cis^"4" \tsZero
  d^"5" b a g \property Voice.TextScript \override #'extra-offset = #'(0 . -0.2) fis^"3" g fis e
  \tsZero d b^"3" a g <fis4 ) d'> r 
  }
  
  
  }

VoiceII = \notes \relative c' {
  \stemBoth \slurBoth r1
  \Treble <a2 g'> g'8 ( e cis a
  <) d4 fis> r r2
  <a2 g'> g'8 ( e cis a
  
  <) d4 fis> r b'8_"1" ( a g fis
  e fis g gis a4. ) g8_"2" (
  fis g fis b \tsUpII a^\dimpoc \tsZero b a g
  fis g_"1" fis e ) d4 r
  
  \Bass a8^"5" () cis cis () e e2
  b8^"4" () d d () e e2
  a,8 () cis cis () e e2
  b8 () d d () e e2
  
  a,4 r <d fis> r
  <e, cis'> r <e d'> r
  <a cis> r r2
  r1
  
  r1
  \Treble <a2 g'> g'8 ( e cis a
  <) d4 fis> r r2
  <a2 g'> g'8 ( e cis a
  
  <) d4 fis> r b'8_"1" ( a g fis
  e fis g gis a4. ) g8_"2" (
  fis g fis b \tsUpII a^\dimpoc b a g
  fis \property Voice.TextScript \set #'extra-offset = #'(0 . 0.2) g_"1" fis e ) d4 r
  
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "10. ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >
  \context Staff = "down" <
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >
>
}
\paper {}
\midi {\tempo 4=152}
}

