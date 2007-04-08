%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Sonatine I"
  subtitle          = "Drei Sonatines"
  composer          = "Frederik Kuhlau (1786-1832)"
  opus              = "Op.20 no.1-3"
  meter             = "Allegro"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonatine III - Rondo"
  mutopiacomposer   = "F. Kuhlau (1786-1832)"
  mutopiainstrument = "Piano"
  date              = "Early 19th century"
  source            = "B. Schott's Söhnen, 19th century"
  style             = "Classical"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Apr/10"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/04/10-234"
}

Global = \notes {\key c\major \time 2/4 \partial 8}
Treble = \clef treble
Bass = \clef bass

phraseUp = \property Voice.PhrasingSlur \override #'direction = #1
phraseBoth = \property Voice.PhrasingSlur \override #'direction = #0
phraseDown = \property Voice.PhrasingSlur \override #'direction = #-1
Both = \notes {\stemBoth \slurBoth \tieBoth \phraseBoth \scriptBoth}
tsZero = \property Voice.TextScript \revert #'extra-offset
tsDownIII = \property Voice.TextScript \override #'extra-offset = #'(0 . -3)
tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)
tsDownI = \property Voice.TextScript \override #'extra-offset = #'(0 . -1)
dtZero = \property Voice.DynamicText \revert #'extra-offset
dtDownI = \property Voice.DynamicText \override #'extra-offset = #'(0 . -1)
dtDownII = \property Voice.DynamicText \override #'extra-offset = #'(0 . -2)

crescendo = #'(italic "cresc.")
diminuendo = #'(italic "dim.")

 

VoiceI = \notes \relative c'' {
  \dtDownII \Both e16_\p f
  
  g8. g16 fis g a g
  e8. e16 dis e f e
  c8. c16 d! c b c
  cis4\decr () d8\rced d16 e
  
  f8. f16 e f g f
  d8. d16 cis d e d
  b8 <b g'> <b g'> <b g'>
  \phraseDown \slurUp <b4 \( g' (> \) ) c8 e16 f
  
  \dtZero \Both g8._\f g16 fis g a g
  e8. e16 dis e f e
  c8. c16 d c b c
  \scriptDown cis4-> () d8 d16 e
  
  f8. f16 e f g f
  d8. d16 cis d e d
  b8 <b g'> <b g'> <b g'>
  c4 r8 e'16 d
  
  c b a g^"3" fis g a g
  f! e d^"3" c b c d e
  f8 <b, f'> <b f'> <b f'>
  \phraseDown \slurUp <b4-> \( f' (> <\) c8 ) e> c'16 b
  
  a g f e^"3" dis e f e
  d! c b^"4" a gis a^"1" b c
  d8 <gis, d'> <gis d'> <gis d'>
  <gis4 \( d' (> <\) a8 ) c^"1"^"4"> e'16 d
  
  c b a g!^"3" fis g a fis
  g_"1" a b c d^"1" e fis g
  fis g^"1" a b c a g fis
  g a b a g fis^"4" e d
  
  c b^"3" a g fis g a fis
  g a b c d e fis g
  fis g a b c a g fis
  g a b g fis g a fis
  
  g a b g fis g a fis
  g8 g16 fis g fis g fis
  g fis g fis g f e f
  \dtDownII g8._\p g16 fis g a g
  
  e8. e16 dis e f! e
  c8. c16 d! c b c
  cis4-> () d8 d16 e
  f8. f16 e f g f
  
  d8. d16 cis d e d
  b8 <b g'> <b g'> <b g'>
  <b4 \( g' (> \) ) c8 e16 f
  g8._\f g16 fis g a g
  
  e8. e16 dis e f! e
  c8. c16 d! c b c
  cis4-> () d8 d16 e
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
  [e8 e e] [e16 fis]
  \tsDownII gis8_\crescendo \tsZero gis16 a b8 b16 c 
  
  d c b a gis8 gis
  a a16 b c8 c16 d
  e8 e16 dis e dis e dis
  e8_\p e16 d! c8 c16 b
  
  a4. gis16 a
  b8 b b b
  c16 d c b a8 e'16 dis
  e_\f e a g! f e d! c
  
  b a g f e d c b
  a b c a \tsDownII gis_\diminuendo \tsZero a b gis
  a4 r8 e'16 d
  c4 r8^#'(italic "rallent.") c16 b
  
  a4 r8 a'16 g
  f4 r8 f16 e
  d4 r8 f'16 e
  \tsDownIII d_#'(large "a tempo") \tsZero cis e \tsDownI d_\crescendo \tsZero c b d c
  
  b ais c b a fis b a
  g! fis a g f e d c
  b c cis d dis e f fis
  g8._\p g16 fis g a g
  
  e8. e16 dis e f! e
  c8. c16 d! c b c
  cis4-> () d8 d16 e
  f8. f16 e f g f
  
  d8. d16 cis d e d
  b8 <b g'> <b g'> <b g'>
  <b4 \( g' (> \) ) c8 e16 f
  g8._\f g16 fis g a g
  
  e8. e16 dis e f! e
  c8. c16 d! c b c
  cis4-> () d8 d16 e
  f8. f16 e f g f 
  
  d8. d16 cis d e d
  b8 <b g'> <b g'> <b g'>
  c4 r8 e'16 d
  c b a g fis g a g
  
  f! e d c b c d e
  f8 <b, f'> <b f'> <b f'>
  <b4-> f' (> <c8 ) e> c'16 b
  a g f e dis e f e
  
  d! c b a gis a b c
  d8 <gis, d'> <gis d'> <gis d'>
  <gis4-> \( d' (> <\) a8 ) c> e'16 d
  c b a g fis g a fis
  
  g a b c d e fis g
  fis g a b c a g fis
  g a b a g fis e d
  c b a g fis g a fis
  
  g a b c d e fis g
  fis g a b c a g fis
  g a b g fis g a fis
  g a b g fis g a fis
  
  g8 \tsDownII g16_\diminuendo \tsZero fis g fis g fis
  g fis g fis g f e f
  g8._\p g16 fis g a g
  e8. e16 dis e f e
  
  c8. c16 d! c b c
  cis4-> () d8 d16 e
  f8. f16 e f g f
  d8. d16 cis d e d
  
  b8 <b g'> <b g'> <b g'>
  <b4-> \( g' (> \) ) c8 e16 f
  g8._\f g16 fis g a g
  e8. e16 dis e f! e
  
  c8. c16 d! c b c
  cis4-> () d8 d16 e
  f8. f16 e f g f
  d8. d16 cis d e d
  
  b8 <b g'> <b g'> <b g'>
  c8_\p c16 b a g f e
  d c b a g a b g
  c8 \tsDownII e'16_\crescendo \tsZero d c b a g
  
  f e d c b c d b
  \dtZero c8_\f g''16 f e d c b
  a g f e d c b a
  g8 r <c e> r
  
  <c d> r <b g'> r
  <c e> \dtDownII c''16_\p b a g f e
  d c b a g a b g
  c8 e'16 d \tsDownII c_\crescendo \tsZero b a g
  
  f e d c b c d b
  c8 g''16_\f f e d c b
  a g f e d c b a
  g8 r <c e> r
  
  <c d> r <b g'> r
  <c4 e> r8 e16 f
  \property Voice.TextScript \override #'extra-offset = #'(2 . -2) g8._\p_#'(italic "dolce") \tsZero g16 fis g a g
  c4 r8 e,16 f!
  
  g8. g16 fis g a g
  c, c d e f!^"1"_\f g a b
  c\cr c d e \property Voice.TextSpanner \set #'type = #'dotted-line
  \property Voice.TextSpanner \set #'edge-height = #'(0 . 1.5)
  \property Voice.TextSpanner \set #'edge-text = #'("8va " . "")
  \property Staff.centralCPosition = #-13 f\spanrequest \start "text" g a b\rc
  c4\spanrequest \stop "text" \property Staff.centralCPosition = #-6 <c, e g c>
  
  <c e g c> r
  \bar "|." 
  }

VoiceII = \notes \relative c' {
  \Both \Treble r8
  
  <c e g> <c e g> r4
  <c8 e g> <c e g> r4
  r8 <c e g> <c e g> <c e g>
  <b4 f' g> ~ <b8 f' g> r
  
  <b d g> <b d g> r4
  <b8 f' g> <b f' g> r4
  \Bass r8 <g d' f> <g d' f> <g d' f>
  \slurUp \phraseDown <g4 \( d' f (> <\) c8 ) e> r
  
  c,16 g' e g c, g' e g
  c, g' e g c, g' e g
  c, g' e g c, g' e g
  b, g' f g b, g' f g
  
  b, g' d g b, g' d g
  b, g' f g b, g' f g
  g, f' d f g, f' d f
  c e g c c,8 r
  
  r2
  r
  r8 <g' d'> <g d'> <g d'>
  <g4 \( d' (> <\) c8 ) e> r
  
  r2 
  r
  r8 <e, b'> <e b'> <e b'>
  <e4 \( b' (> <\) a8 ) c> r
  
  <d,2 \( a' c (>
  <\) g4 ) b> r
  \Treble <d'2 \( a' c (>
  <\) g4 ) b> r
  
  \Bass <d,2 \( a' c (>
  <\) g4 ) b> r
  \Treble <d'2 \( a' c (>
  <\) g8 ) b> r <d a' c> r
  
  <g b> r <d a' c> r
  <g b> r r4
  r2
  <c,8 e g> <c e g> r4
  
  <c8 e g> <c e g> r4
  r8 <c e g> <c e g> <c e g>
  <b4 f' g> ~ <b8 f' g> r
  <b d g> <b d g> r4
  
  <b8 f'g> <b f' g> r4
  \Bass r8 <g d' f> <g d' f> <g d' f>
  <g4 d' f (> <c8 ) e> r
  c,16 g' e g c, g' e g
  
  c, g' e g c, g' e g
  c, g' e g c, g' e g
  b, g' f g b, g' f g
  b, g' d g b, g' d g
  
  b, g' f g b, g' f g
  g, f' d f g, f' d f
  c e g c c,8 r
  <\context Voice=VcII {\voiceOne
    a'2
    a
    gis
    a
    a
    a}
   \context Voice=VcIIb {\voiceTwo
    a8 <c e> <c e> <c e>
    a <c e> <c e> <c e>
    gis <d' e> <d e> <d e>
    a <c e> <c e> <c e>
    a <c e> <c e> <c e>
    a <c e> <c e> <c e> } >
  
  \Both <b e> r <b dis> r
  r16 e dis e e,8 r
  <\context Voice=VcII {\voiceOne
    e2
    e
    e
    e
    e
    
    e
    e}
   \context Voice=VcIIb {\voiceTwo
    e8 <b' d!> <b d> <b d>
    e, <b' d> <b d> <b d> 
    e, <a c> <a c> <a c>
    e <gis b> <gis b> <gis b>
    e <b' d> <b d> <b d>
    
    e, <b' d> <b d> <b d>
    e, <a c> <a c> <a c>} > 
  
  \Both <e4 gis b> r
  <\context Voice=VcII {\voiceOne
    a2
    a
    gis
    a}
   \context Voice=VcIIb {\voiceTwo
    a8 <c e> <c e> <c e>
    a <c e> <c e> <c e>
    gis <d' e> <d e> <d e>
    a <c e> <c e> <c e>}>
  \Both a2 
  
  <d f>
  e8 r e, r
  r16 a gis a a,8 r
  r [<a' c e> <a c e>] r
  
  r [<a c e> <a c e>] r
  r \Treble [<b d g> <b d g>] r
  r [<b f' g> <b f' g>] r
  r2
  
  r
  r
  r
  <c8 e g> <c e g> r4
  
  <c8 e g> <c e g> r4
  r8 <c e g> <c e g> <c e g>
  <b4 f' g> ~ <b8 f' g> r
  <b d g> <b d g> r4
  
  <b8 f' g> <b f' g> r4
  \Bass r8 <g d' f> <g d' f> <g d' f>
  \phraseDown <g4 \( d' f (> <\) c8 ) e> r
  c,16 g' e g c, g' e g
  
  c, g' e g c, g' e g
  c, g' e g c, g' e g
  b, g' f g b, g' f g
  b, g' d g b, g' d g
  
  b, g' f g b, g' f g
  g, f' d f g, f' d f
  c e g c c,8 r
  r2
  
  r
  r8 <g' d'> <g d'> <g d'>
  <g4 \( d' (> <\) c8 ) e> r
  r2
  
  r
  r8 <e, b'> <e b'> <e b'>
  <e4 \( b' (> <\) a8 ) c> r
  <d,2 \( a' c (>
  
  <\) g4 ) b> r
  \Treble <d'2 \( a' c (>
  <\) g4 ) b> r
  \Bass <d,2 \( a' c (>
  
  <\) g4 ) b> r
  \Treble <d'2 \( a' c (>
  <\) g8 ) b> r <d a' c> r
  <g b> r <d a' c> r
  
  <g b> r r4
  r2
  <c,8 e g> <c e g> r4
  <c8 e g> <c e g> r4
  
  r8 <c e g> <c e g> <c e g>
  <b4 f' g> ~ <b8 f' g> r
  <b d g> <b d g> r4
  <b8 f' g> <b f' g> r4
  
  \Bass r8 <g d' f> <g d' f> <g d' f>
  <g4 d' f (> <c8 ) e> r
  c,16 g' e g c, g' e g
  c, g' e g c, g' e g 
  
  c, g' e g c, g' e g
  b, g' f g b, g' f g
  b, g' d g b, g' d g
  b, g' f g b, g' f g
  
  g, f' d f g, f' d f
  <c8 e g> r r4
  r <g4 \( d' (>
  <\) c8 ) e> r r4
  
  r <g \( d' (>
  <\) c8 ) e> r r4
  r2
  r4 g'16 fis g fis
  
  g fis g fis g f e d
  c8 r r4
  r <g' \( d' (>
  <\) c8 ) e> r r4
  
  r <g \( d' (>
  <\) c8 ) e> r r4
  r2
  \Treble r4 g'16 fis g fis
  
  g fis g fis g f e d
  c4 r
  <b2 \( f' g (>
  <\) c4 e ) g> r
  
  <b2 \( f' g (>
  <\) c4 ) e g> r
  <c e g> r
  <c e g> \Bass <c, c'>
  
  \tsDownII <c,_#'(large "Fine")  c'> r
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "Rondo.  ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >
  \context Staff = "down" <
    \Global \clef bass
    \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
    \context Voice=VcII \VoiceII
  >
>
}
\paper {
  indent = 2.0 \cm
  }
\midi {\tempo 4=120}
}

