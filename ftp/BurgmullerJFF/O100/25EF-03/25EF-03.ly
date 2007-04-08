%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "La Pastorale"
  subtitle          = "Hirtenlied  *  Pastoral"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Andantino"
  copyright         = "Public Domain"
  mutopiatitle      = "La Pastorale"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/18"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/18-218"
}

crescendo = #'(italic "cresc.")
Global = \notes {\key g\major \time 6/8}
Treble = \clef treble
Bass = \clef bass
tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)
tsDownIh = \property Voice.TextScript \override #'extra-offset = #'(0 . -1.5)
tsDownI = \property Voice.TextScript \override #'extra-offset = #'(0 . -1)
tsDownh = \property Voice.TextScript \override #'extra-offset = #'(0 . -0.5)
tsZero = \property Voice.TextScript \revert #'extra-offset 
tsUph = \property Voice.TextScript \override #'extra-offset = #'(0 . 0.5)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'(0 . 1)
tsUpIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 1.5)
tsUpII = \property Voice.TextScript \override #'extra-offset = #'(0 . 2)



MD = \notes \relative c'' {
  \slurBoth \stemDown g8^"1"_\p ( b^"2"_#'(italic "dolce cantabile") c d \tsUpI b^"1" \tsZero \tsUpIh e^"3"
  \tsZero \tsUpI d g^"5" \tsZero \property Voice.TextScript \override #'extra-offset = #'(0 . -0.2) e^"3" d b c^"2"
  
  \repeat volta 2 { \tsZero
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -1) \stemBoth ) d4._\p ( b8^"1" d^"2" \grace fis e
  \property Voice.DynamicText \revert #'extra-offset d4. ) g8 ( d b^"1"
  a4.^"2" \grace {[a16 b]} c8 a b
  ) g4. g8^"1" ( b^"2" c
  
  d4. b8^"1" d^"2" \grace fis e
  d4. ) d8 ( b g'
  \tsDownII fis4._\crescendo \tsZero e8 fis e
  d4. ) d'4 r8
  }
  
  \tsDownh a4._\mf ( c,8^"1" \tsZero \tsUpI e^"4" \tsZero d
  ) b4.^"1" d8 ( cis d^"1"
  a'4. c,8^"1" \tsUpIh e^"4" \tsZero d
  ) b4. d8 ( e d
  
  \tsUpIh cis2.^"2" \tsZero 
  ) d8 es^"3"\decr es^"3" es^"3" ( d c\rced
  \tsUpIh b!^"2"\cr c^"1" \tsZero d\rc \tsUpI fis^"4"\decr e c^"1"\rced
  b4.^"2" \tsZero ) a8^"1" d^"4" d^"3" 
  
  d4._\p ( b8 d \grace fis e
  d4. ) g8 ( d b^"1"
  a4.^"2" \grace {[a16 b]} c8 a b
  ) g4. g8^"1" ( \tsUpI b^"2" \tsZero c
  
  d4.^"4" b8^"1" d^"2" e
  d4. ) c8\cr ( e g-.\rc
  g\decr d ) b^"1"\rced b4 ( a8
  ) g4._\p \grace b8 a8 ( e fis
  
  ) g4. \grace b8 a8 ( e fis 
  ) g-.^"1" b-.^"2" d-.^"3" g-.^"1" b-. d-.
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -2) g4_\pp r8 r4 r8
  \bar "|."
  }

MSI = \notes \relative c' {
  \stemBoth R2.
  R
  
  <g8_#'(lines ("1" "3" "5")) b d> <g b d> <g b d> <g4. b d>
  <g8 b d> <g b d> <g b d> <g4. b d>
  <g8 c d> <g c d> <g c d> <g4. c d>
  <g8 b d> <g b d> <g b d> <g4. b d>
  
  <g8 b d> <g b d> <g b d> <g4. b d>
  <g8 b d> <g b d> <g b d> <g4. b d>
  \Treble a8 () a' a g ( a ) g
  fis ( a ) fis d4 r8
  
  \stemUp \Bass r8 d d d4.
  r8 d d d4.
  r8 d d d4.
  r8 d d d4.
  
  \Treble \property Voice.Hairpin \override #'extra-offset = #'(0 . 12) \stemBoth r8 bes'_"2"\decr bes_"2" bes_"2" ( a_"1" g\rced
  ) fis2. \property Voice.Hairpin \revert #'extra-offset 
  g4. <c, e>
  \stemUp r8 g' g fis4 r8
  
  \stemBoth \Bass <g,8 b d> \tsUpIh <g b d^#'(italic "dolce") > <g b d> <g4. b d>
  <g8 b d> <g b d> <g b d> <g4. b d>
  <g8 c d> <g c d> <g c d> <g4. c d>
  <g8 b d> <g b d> <g b d> <g4. b d>
  
  <f8 g b d^\crescendo> <f g b d> <f g b d> <f4. g b d>
  <e8 g c> <e g c> <e g c> <e4. g c>
  <d4. g b> d8 ( d' ) c
  <g b> <g b d> <g b d> <g4. c d>
  
  <g8 b d> <g b d> <g b d> <g4. c d>
  \property Voice.TextScript \override #'extra-offset = #'(-0.7 . 1) <g4 b d^#'((font-relative-size . -1) (italic "dim.e poco rall."))> r8 <g4 b d> r8
  g,4 r8 r4 r8
  }
MSII = \notes \relative c {
  s2. s 
  
  s s s s
  
  s s s s
  
  \stemDown <fis2. c'>
  <g b>
  <fis c'>
  <g b>
  
  s2.
  s
  s
  \tieDown d'4. ~ d4 s8
  
  s2. s s s
  s s s s
  
  s s s
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "3. ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VoiceI \MD
  >
  \context Staff = "down" <
    \Global \clef bass
    \context Voice=VoiceI \MSI
    \context Voice=VoiceII \MSII
  >
>
}
\paper {}
\midi {\tempo 4=100}
}

