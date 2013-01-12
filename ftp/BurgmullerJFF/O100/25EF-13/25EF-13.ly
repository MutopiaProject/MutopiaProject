\version "2.16.0"
#(set-global-staff-size 16)
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
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-224"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\major \time 4/4}
staffUp = \change Staff = "up"
staffDown = \change Staff = "down"
Treble = \clef treble
Bass = \clef bass

dimrit = \markup{\italic "dim. e poco rit."}
atempo = \markup{\italic "a tempo"}

VoiceI =  \relative c'' {
  \stemUp \slurUp r8 d-4 ( e-5 d e d e  d)
  r c-3 ( d-4 c d c d  c)
  r f-4 ( g f g f g  f)
  r e-3 ( f e f e f  e)

  r e-4 ( f e dis e f  e)
  \stemNeutral e-4-> (
  d cis d-1 b'-5 a_ \markup{\italic "smorz."} f d
  c!-3 g_ \markup{\italic "rall."} b-2 c \stemUp e4  d)

  \repeat volta 2 {

  r8 s c4^\atempo d e
  e d cis d
  c! ( b a b
  d  c) s2

  a8 g c4 d e
  e b c b
  s1
  s
  }

  \repeat volta 2 {

  \stemNeutral d4-4^\atempo ( cis d b
   c) ( b c a
   b)-2 ( c-1 cis-2 d
  c!-1 d dis  e)

  \stemUp d4-2 ( cis-2 d-2 b-1
  c! b c a
  \stemNeutral b8)-1 ( c d e f d a b
  }

  \alternative {
    { c8) g ( e' g,  c4) r}
    {c8 g ( e' g, d'-5 a-2 b g}
  }

   c) g ( e' g, d' a b g
   c)-3 b ( c-1 e-3 g-5 dis-2 e-1 g-2
  c4)-5 r r2
  \bar "|."
  }

VoiceII =  \relative c'' {
  \stemDown g1_\p_ \markup{\italic "dolce lusingando"}
  g
  b_\cresc
  c_1\!

  a
  s
  s2 e'8 g, d' g,

  \slurUp s8 g_\p\< ( c g d' g, e' g,\!
  e' g, d' g, cis g d'  g,)
  c g b g a g b g
  d' g, c g \stemNeutral a8-2 ( g fis-2 g-1

  \stemDown a_\cresc g\! c g d' g, e' g,
  e' g, b g c g b g
  \stemNeutral b-3 ais_\dimrit b c b-1 a'-5 g fis
   e) b ( g' b,  e4) r

  \staffDown \stemUp f,8-2_\p g e g f g d g
  e g d g e g c, g'
  d^\cresc g\! e g e g f g
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

VoiceIII =  \relative c' {
  \stemNeutral \slurNeutral <g f'>1
  <g e'>
  <g d'>
  <g c>

  <g-5 a-4 cis-2>
  <f-5 a-3 d-1>
  <g c e>2 <g b f'>

  \Treble <c e>1
  <b f'>
  <g f'>
  <c e>

  <c e>
  <b e>-1-4
  \tieNeutral <b dis>2-3-5 ~ <b dis>8 fis'-2 ( b-1 a
  <e g>2.)-3-5 r4

  \stemDown f4 e f d
  e d e c
  d e e f
  e b b c

  \stemNeutral f^\mf ( e f d
  e d e  c)
  d2-2 ( g,

    <c e>2. r4)
    <c e>2 <g  f'>(

  <c e>) <g  f'>(
  <c e >)^\dimrit r
  \Bass c,4^\p r r2
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "13."}
  \context Staff = "up" <<
    \Global \clef treble
    \context Voice=VcI \VoiceI
    \context Voice=VcII \VoiceII
  >>
  \context Staff = "down" <<
    \Global \clef bass
    \context Voice=VcIII \VoiceIII
  >>
>>
}
\layout {}

  \midi {
    \tempo 4 = 152
    }


}

