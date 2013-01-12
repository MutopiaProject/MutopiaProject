%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Consolation"
  subtitle          = "Trost"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Allegro moderato"
  copyright         = "Public Domain"
  mutopiatitle      = "Consolation"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Apr/5"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/04/05-224"
}

Global = \notes {\key c\major \time 4/4}
staffUp = \translator Staff = "up"
staffDown = \translator Staff = "down"
Treble = \clef treble
Bass = \clef bass

crescendo = #'(italic "cresc.")
dimrit = #'(italic "dim. e poco rit.")
atempo = #'(italic "a tempo")

tsUpIIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 2.5)
tsUpII = \property Voice.TextScript \override #'extra-offset = #'(0 . 2)
tsUpIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 1.5)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'(0 . 1)
tsUph = \property Voice.TextScript \override #'extra-offset = #'(0 . 0.5)
tsZero = \property Voice.TextScript \revert #'extra-offset
tsDownh = \property Voice.TextScript \override #'extra-offset = #'(0 . -0.5)
tsDownI = \property Voice.TextScript \override #'extra-offset = #'(0 . -1)
tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)

dtUpII = \property Voice.DynamicText \override #'extra-offset = #'(0 . 2)
dtUpI = \property Voice.DynamicText \override #'extra-offset = #'(0 . 1)
dtZero = \property Voice.DynamicText \revert #'extra-offset
dtDownI = \property Voice.DynamicText \override #'extra-offset = #'(0 . -1)
dtDownII = \property Voice.DynamicText \override #'extra-offset = #'(0 . -2)


VoiceI = \notes \relative c'' {
  \stemUp \slurUp r8 d^"4" ( \tsUpI e^"5" \tsZero d e d e ) d
  r c^"3" ( \tsUpI d^"4" \tsZero c d c d ) c
  r f^"4" ( g f g f g ) f
  r e^"3" ( f e f e f ) e

  r e^"4" ( f e dis e f ) e
  \scriptDown \stemBoth e^"4"-> ( \scriptBoth d cis d^"1" \tsUpI b'^"5" \property Voice.TextScript \set #'extra-offset = #'(-2 . -1) a_#'(italic "smorz.") \tsZero f d
  c!^"3" g_#'(italic "rall.") b^"2" c \stemUp e4 ) d

  \repeat volta 2 {

  r8 s \property Voice.TextScript \override #'extra-offset = #'(-5 . 1) c4^\atempo \tsZero d e
  e d cis d
  c! ( b a b
  d ) c s2

  a8 g c4 d e
  e b c b
  s1
  s
  }

  \repeat volta 2 {

  \stemBoth d4^"4"^\atempo ( cis d b
  ) c ( b c a
  ) b^"2" ( c^"1" \tsUph cis^"2" \tsZero d
  \tsUpI c!^"1" \tsZero d dis ) e

  \stemUp \tsDownII d4^"2" ( cis^"2" d^"2" b^"1"
  \tsZero c! b c a
  \stemBoth \tsUpI ) b8^"1" ( \tsZero c d e f d a b
  }

  \alternative {
    {) c8 g ( e' g, ) c4 r}
    {c8 g ( e' g, \tsUpIh d'^"5" a^"2" \tsZero b g}
  }

  ) c g ( e' g, d' a b g
  ) c^"3" b ( \tsUph c^"1" \tsZero \tsUpI e^"3" g^"5" \tsZero dis^"2" e^"1" g^"2"
  \property Voice.TextScript \override #'extra-offset = #'(0.5 . 0.5) ) c4^"5" r r2
  \bar "|."
  }

VoiceII = \notes \relative c'' {
  \stemDown \property Voice.TextScript \override #'extra-offset = #'(1.5 . -2) \dtDownII g1_\p_#'(italic "dolce lusingando")
  \tsZero \dtZero g
  \tsDownII b_\crescendo
  \tsZero c_"1"

  a
  s
  s2 e'8 g, d' g,

  \slurUp \property Voice.Slur \override #'y-free = #3 s8 g_\p\cr ( c g d' g, e' g,\rc
  e' g, d' g, cis g d' ) g, \property Voice.Slur \set #'y-free = #2
  c g b g a g b g
  d' g, c g \stemBoth a8_"2" ( g fis_"2" g_"1"

  \stemDown \tsDownII a_\crescendo \tsZero g c g d' g, e' g,
  e' g, b g c g b g
  \stemBoth \tsDownh b^"3" \property Voice.TextScript \set #'extra-offset = #'(-2.5 . -2) ais_\dimrit \tsZero b c b^"1" a'^"5" g fis
  ) e \property Voice.Slur \set #'y-free = #1 b ( g' b, ) e4 r

  \dtDownII \staffDown \stemUp f,8^"2"_\p g e g f g d g
  e g d g e g c, g'
  \tsUpIIh d^\crescendo \tsZero g e g e g f g
  e g b, g' b, g' c, g'

  \staffUp \stemDown d' g cis, g' d g b, g'
  c, g' b, g' c, g' a, g'
  s1

    s
    s

  s
  s
  s
  }

VoiceIII = \notes \relative c' {
  \stemBoth \slurBoth <g1 f'>
  <g e'>
  <g d'>
  <g c>

  <g_"2"_"4"_"5" a cis>
  <f_"1"_"3"_"5" a d>
  <g2 c e> <g b f'>

  \Treble <c1 e>
  <b f'>
  <g f'>
  <c e>

  <c e>
  <b_"1"_"4" e>
  \tieBoth <b2_"3"_"5" dis> ~ <b8 dis> fis'_"2" ( \tsUpI b_"1" \tsZero a
  <) e2._"3"_"5" g> r4

  \stemDown f4 e f d
  e d e c
  d e e f
  e b b c

  \dtUpII \stemBoth f^\mf ( e f d
  e d e ) c
  d2^"2" ( g,

    <) c2. e> r4
    <c2 e> <g ( f'>

  <) c e> <g ( f'>
  \tsUpIIh <) c e^\dimrit > r
  \Bass c,4^\p r r2
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "13. ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
    \context Voice=VcII \VoiceII
  >
  \context Staff = "down" <
    \property Staff.VoltaBracket = \turnOff
    \Global \clef bass
    \context Voice=VcIII \VoiceIII
  >
>
}
\paper {}
\midi {\tempo 4=152}
}

