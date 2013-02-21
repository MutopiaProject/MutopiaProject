\version "2.16.1"
#(set-global-staff-size 18)
\header
{
  title             = "Sonatine I"
  subtitle          = "Drei Sonatines"
  composer          = "Frederik Kuhlau (1786-1832)"
  opus              = "Op.20 no.1-3"
  meter             = "Allegro"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonatine I - Rondo"
  mutopiacomposer   = "KuhlauF"
  mutopiainstrument = "Piano"
  mutopiaopus       = "O 20, No. 1: 3"
  date              = "Early 19th Century"
  source            = "B. Schott's Söhnen, 19th Century"
  style             = "Classical"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/02/21-234"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global = {\key c \major \time 2/4 \partial 8}

VoiceI =  \relative c''
{
  \set doubleSlurs = ##t 
  e16_\p f
  
  g8. g16 fis g a g
  e8. e16 dis e f e
  c8. c16 d! c b c
  cis4\> ( d8)\! d16 e
  
  f8. f16 e f g f
  d8. d16 cis d e d
  b8 <b g'> <b g'> <b g'>
  <b g'>4( c8) e16 f
  
  g8._\f g16 fis g a g
  e8. e16 dis e f e
  c8. c16 d c b c
  cis4-> ( d8) d16 e
  
  f8. f16 e f g f
  d8. d16 cis d e d
  b8 <b g'> <b g'> <b g'>
  c4 r8 e'16 d
  
  c b a g-3 fis g a g
  f! e d-3 c b c d e
  f8 <b, f'> <b f'> <b f'>
  <b f'>4->( <c e>8) c'16 b
  
  a g f e-3 dis e f e
  d! c b-4 a gis a-1 b c
  d8 <gis, d'> <gis d'> <gis d'>
  \set fingeringOrientations = #'(up)
  <gis d'>4( <a-1 c-4>8) e'16 d
  
  c b a g!-3 fis g a fis
  g-1 a b c d-1 e fis g
  fis g-1 a b c a g fis
  g a b a g fis-4 e d
  
  c b-3 a g fis g a fis
  g a b c d e fis g
  fis g a b c a g fis
  g a b g fis g a fis
  
  g a b g fis g a fis
  g8 g16 fis g fis g fis 
  g fis g fis g f e f
  g8._\p g16 fis g a g
  
  e8. e16 dis e f! e
  c8. c16 d! c b c
  cis4-> ( d8) d16 e
  f8. f16 e f g f
  
  d8. d16 cis d e d
  b8 <b g'> <b g'> <b g'>
  <b  g' >4( c8) e16 f
  g8._\f g16 fis g a g
  
  e8. e16 dis e f! e
  c8. c16 d! c b c
  cis4-> ( d8) d16 e
  f8. f16 e f g f
  
  d8. d16 cis d e d
  b8 <b g'> <b g'> <b g'>
  c4 r8 e'16 dis
  e8_\p e16 d! c8 c16 b
  
  a4. gis16 a
  b8 b b b
  c16 d c b a8 e'16 dis
  e8 e16 d! c8 c16 b 
  
  a4 ~ a16 a b a
  g! g a g fis fis g fis
  e4 r8 e,16 fis
  gis8 gis16 a b8 b16 c
  
  d c b a gis8 gis
  a a16 b c8 c16 d
   e8[ e e] e16[ fis]
  \override DynamicTextSpanner #'style = #'none
  \crescTextCresc
  gis8\< gis16 a b8 b16 c 
  \crescHairpin
  
  d c b a gis8 gis
  a a16 b c8 c16 d
  e8 e16 dis e dis e dis
  e8_\p e16 d! c8 c16 b
  
  a4. gis16 a
  b8 b b b
  c16 d c b a8 e'16 dis
  e_\f e a g! f e d! c
  
  b a g f e d c b
  \override DynamicTextSpanner #'style = #'none
  \dimTextDim
  a b c a gis\> a b gis
  \dimHairpin
  a4 r8 e'16 d
  c4 r8 c16^\markup{\italic "rallent."} b
  
  a4 r8 a'16 g
  f4 r8 f16 e
  d4 r8 f'16_\markup{\italic "a tempo"} e
  \override DynamicTextSpanner #'style = #'none
  \crescTextCresc
  d cis e d\< c b d c
  \crescHairpin
  
  b ais c b a gis b a
  g! fis a g f e d c
  b c cis d dis e f fis
  g8._\p g16 fis g a g
  
  e8. e16 dis e f! e
  c8. c16 d! c b c
  cis4-> ( d8) d16 e
  f8. f16 e f g f
  
  d8. d16 cis d e d
  b8 <b g'> <b g'> <b g'>
  <b  g' >4( c8) e16 f
  g8._\f g16 fis g a g
  
  e8. e16 dis e f! e
  c8. c16 d! c b c
  cis4-> ( d8) d16 e
  f8. f16 e f g f 
  
  d8. d16 cis d e d
  b8 <b g'> <b g'> <b g'>
  c4 r8 e'16 d
  c b a g fis g a g
  
  f! e d c b c d e
  f8 <b, f'> <b f'> <b f'>
  <b f' >4(-> <c e>8) c'16 b
  a g f e dis e f e
  
  d! c b a gis a b c
  d8 <gis, d'> <gis d'> <gis d'>
  <gis  d' >4->( <a c>8) e'16 d
  c b a g fis g a fis
  
  g a b c d e fis g
  fis g a b c a g fis
  g a b a g fis e d
  c b a g fis g a fis
  
  g a b c d e fis g
  fis g a b c a g fis
  g a b g fis g a fis
  g a b g fis g a fis
  
  \override DynamicTextSpanner #'style = #'none
  \dimTextDim
  g8 g16\> fis g fis g fis
  \dimHairpin
  g fis g fis g f e f
  g8._\p g16 fis g a g
  e8. e16 dis e f e
  
  c8. c16 d! c b c
  cis4-> ( d8) d16 e
  f8. f16 e f g f
  d8. d16 cis d e d
  
  b8 <b g'> <b g'> <b g'>
  <b  g' >4->( c8) e16 f
  g8._\f g16 fis g a g
  e8. e16 dis e f! e
  
  c8. c16 d! c b c
  cis4->( d8) d16 e
  f8. f16 e f g f
  d8. d16 cis d e d
  
  b8 <b g'> <b g'> <b g'>
  c8_\p c16 b a g f e
  d c b a g a b g
  \override DynamicTextSpanner #'style = #'none
  \crescTextCresc
  c8 e'16\< d c b a g
  \crescHairpin
  
  f e d c b c d b
  c8_\f g''16 f e d c b
  a g f e d c b a
  g8 r <c e> r
  
  <c d> r <b g'> r
  <c e> c''16_\p b a g f e
  d c b a g a b g
  \override DynamicTextSpanner #'style = #'none
  \crescTextCresc
  c8 e'16 d c\< b a g
  \crescHairpin
  
  f e d c b c d b
  c8 g''16_\f f e d c b
  a g f e d c b a
  g8 r <c e> r
  
  <c d> r <b g'> r
  <c e>4 r8 e16 f
  g8._\p_\markup{\italic "dolce"} g16 fis g a g
  c4 r8 e,16 f!
  
  g8. g16 fis g a g
  c, c d e f!-1_\f g a b
  c\< c d e \ottava #1 f g a b\!
  c4 \ottava #0 <c,, e g c>
  
  <c e g c> r
  \bar "|." 
}

VoiceII =  \relative c'
{
  \set doubleSlurs = ##t 
  \clef treble r8
  
  <c e g> <c e g> r4
  <c e g>8 <c e g> r4
  r8 <c e g> <c e g> <c e g>
  <b f' g>4~ <b f' g>8 r
  
  <b d g> <b d g> r4
  <b f' g>8 <b f' g> r4
  \clef bass r8 <g d' f> <g d' f> <g d' f>
  <g d' f>4( <c e>8) r
  
  c,16 g' e g c, g' e g
  c, g' e g c, g' e g
  c, g' e g c, g' e g
  b, g' f g b, g' f g
  
  b, g' d g b, g' d g
  b, g' f g b, g' f g
  g, f' d f g, f' d f
  c e g c c,8 r
  
  R2*2
  r8 <g' d'> <g d'> <g d'>
  <g  d'>4( <c e>8) r
  
  R2*2
  r8 <e, b'> <e b'> <e b'>
  <e  b'>4( <a c>8) r
  
  <d, a' c>2( <g b>4) r
  \clef treble <d' a' c>2( <g b>4) r
  
  \clef bass <d, a' c>2( <g b>4) r
  \clef treble <d' a' c>2( <g b>8) r <d a' c> r
  
  <g b> r <d a' c> r
  <g b> r r4
  R2
  <c, e g>8 <c e g> r4
  
  <c e g>8 <c e g> r4
  r8 <c e g> <c e g> <c e g>
  <b f' g>4~ <b f' g>8 r
  <b d g> <b d g> r4
  
  <b f'g>8 <b f' g> r4
  \clef bass r8 <g d' f> <g d' f> <g d' f>
  <g d' f >4( <c e>8) r
  c,16 g' e g c, g' e g
  
  c, g' e g c, g' e g
  c, g' e g c, g' e g
  b, g' f g b, g' f g
  b, g' d g b, g' d g
  
  b, g' f g b, g' f g
  g, f' d f g, f' d f
  c e g c c,8 r
  <<
    \new Voice=VcII
    {
      \voiceOne
      a'2
      a
      gis
      a
      a
      a
    }
    \new Voice=VcIIb
    {
      \voiceTwo
      a8 <c e> <c e> <c e>
      a <c e> <c e> <c e>
      gis <d' e> <d e> <d e>
      a <c e> <c e> <c e>
      a <c e> <c e> <c e>
      a <c e> <c e> <c e>
    }
  >>
  
  <b e> r <b dis> r
  r16 e dis e e,8 r
  <<
    \new Voice=VcII
    {
      \voiceOne
      e2
      e
      e
      e
      e

      e
      e 
    }
    \new Voice=VcIIb
    {
      \voiceTwo
      e8 <b' d!> <b d> <b d>
      e, <b' d> <b d> <b d> 
      e, <a c> <a c> <a c>
      e <gis b> <gis b> <gis b>
      e <b' d> <b d> <b d>

      e, <b' d> <b d> <b d>
      e, <a c> <a c> <a c>
    }
  >> 
  
  <e gis b>4 r
  <<
    \new Voice=VcII
    {
      \voiceOne
      a2
      a
      gis
      a
    }
    \new Voice=VcIIb
    {
      \voiceTwo
      a8 <c e> <c e> <c e>
      a <c e> <c e> <c e>
      gis <d' e> <d e> <d e>
      a <c e> <c e> <c e>
    }
  >>
  a2 
  
  <d f>
  e8 r e, r
  r16 a gis a a,8 r
  r <a' c e>[ <a c e>] r
  
  r <a c e>[ <a c e>] r
  r \clef treble <b d g>[ <b d g>] r
  r <b f' g>[ <b f' g>] r
  R2*4
  <c e g>8 <c e g> r4
  
  <c e g>8 <c e g> r4
  r8 <c e g> <c e g> <c e g>
  <b f' g>4 ~ <b f' g>8 r
  <b d g> <b d g> r4
  
  <b f' g>8 <b f' g> r4
  \clef bass r8 <g d' f> <g d' f> <g d' f>
  <g  d' f >4( <c e>8) r
  c,16 g' e g c, g' e g
  
  c, g' e g c, g' e g
  c, g' e g c, g' e g
  b, g' f g b, g' f g
  b, g' d g b, g' d g
  
  b, g' f g b, g' f g
  g, f' d f g, f' d f
  c e g c c,8 r
  R2*2
  r8 <g' d'> <g d'> <g d'>
  <g d'>4( <c e>8) r
  R2*2
  r8 <e, b'> <e b'> <e b'>
  <e  b'>4( <a c>8) r
  <d, a' c>2(
  
  <g b>4) r
  \clef treble <d'  a' c >2( <g b>4) r
  \clef bass <d,  a' c >2(
  
  <g b>4) r
  \clef treble <d'  a' c >2(
  <g b>8) r <d a' c> r
  <g b> r <d a' c> r
  
  <g b> r r4
  R2
  <c, e g>8 <c e g> r4
  <c e g>8 <c e g> r4
  
  r8 <c e g> <c e g> <c e g>
  <b f' g>4 ~ <b f' g>8 r
  <b d g> <b d g> r4
  <b f' g>8 <b f' g> r4
  
  \clef bass r8 <g d' f> <g d' f> <g d' f>
  <g d' f>4( <c e>8) r
  c,16 g' e g c, g' e g
  c, g' e g c, g' e g 
  
  c, g' e g c, g' e g
  b, g' f g b, g' f g
  b, g' d g b, g' d g
  b, g' f g b, g' f g
  
  g, f' d f g, f' d f
  <c e g>8 r r4
  r <g  d' >4(
  <c e>8) r r4
  
  r <g  d' >(
  <c e>8) r r4
  R2
  r4 g'16 fis g fis
  
  g fis g fis g f e d
  c8 r r4
  r <g'  d' >(
  <c e>8) r r4
  
  r <g  d' >(
  <c e>8) r r4
  R2
  \clef treble r4 g'16 fis g fis
  
  g fis g fis g f e d
  c4 r
  <b f' g>2(
  <c e g>4) r
  
  <b f' g>2(
  <c e g>4) r
  <c e g> r
  <c e g> \clef bass <c, c'>
  
  <c,c'> r
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark #'direction = #DOWN
  \mark "Fine"
}

\paper
{
  ragged-last-bottom = ##f
}

\score
{
  \new PianoStaff
  <<
    \set PianoStaff.midiInstrument = "acoustic grand"
    \set PianoStaff.instrumentName = \markup{\large \bold "Rondo.  "}
    \new Staff = "up"
    <<
      \Global \clef treble
      \new Voice=VcI \VoiceI
    >>
    \new Staff = "down"
    <<
      \Global \clef bass
      \override Staff.NoteCollision   #'merge-differently-dotted = ##t
      \new Voice=VcII \VoiceII
    >>
  >>
  \layout
  {
    indent = 2.0 \cm
  }
  \midi
  {
    \tempo 4 = 120
  }
}

