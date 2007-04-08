\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Menuett"
  composer          = "Ignaz Joseph Pleyel (1757-1831)"
  meter             = "Moderato."
  tagline           = "Public Domain"
  copyright         = "Public Domain"
  mutopiatitle      = "Rondo"
  mutopiacomposer   = "I.J. Pleyel (1757-1831)"
  mutopiainstrument = "Piano"
  date              = "18th century"
  source            = "Unknown, late 19th century"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Feb/25"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/02/25-191"
}

Global = \notes {\key c\major \time 3/4}
slurUp = \property Voice.Slur \set #'direction = #1
slurDown = \property Voice.Slur \set #'direction = #-1
phraseUp = \property Voice.PhrasingSlur \set #'direction = #1
phraseDown = \property Voice.PhrasingSlur \set #'direction = #-1

VoiceI = \notes \relative c' {
  \repeat volta 2 {
  \stemBoth <e4 c'> <e c'> <e c'>
  \slurDown \phraseUp <e2 ( c' \( > <) d4-. \) b'>
  <f a> <f a> <f a>
  <f2 ( a \( > <) e4-. \) g>
  
  <c' e> <c e> <c e>
  \slurUp <c2 e (> <d4 f>
  <e g> <d f> <c ) e>
  <c2 e (> <b4 ) d>
  }
  
  \repeat volta 2 {
  <b d> <b d> <cis e>
  <cis2 e (> <d4 ) f-.>
  <a c!> <a c> <b d>
  \slurDown <b2 ( d \(> <) c4 \) e-.>
  
  <e, c'> <e c'> <e c'>
  <e2 c'> <f4 d'>
  <g2 e'> <f4 d'>
  <e c'> r_#'(large (italic (lines (" " "Fine.")))) r
  }
  
  \repeat volta 2 {
  \slurUp f'8-> ( e d c bes a
  g4 a bes
  ) a8 ( g a bes c d
  e4 f g
  
  ) f-. e8-> ( g e c
  ) f4-. e8-> ( g e c
  f c <e g> c <f a> c
  <f2 a> <e4 ) g>
  }
  
  \repeat volta 2 {
  c8 ( d e f g e
  c4 bes a
  ) g g8 ( a bes g
  f4 a ) c
  
  g ( a bes
  c8 a f a c a
  bes g a f g e
  ) f2 r4
  }
  }
VoiceII = \notes \relative c {
  \stemBoth \slurUp c4 ( e c
  g'8 fis g fis ) g4-.
  f! ( a b
  c8 b c b ) c4-.
  
  c, ( c' b
  a g f
  e f fis
  g8 fis g fis ) g4 
  
  g ( g' e
  d8 cis d e ) d4-.
  f, ( f' d
  c8 b c d ) c4-.
  
  c, ( c' b
  a g f
  \phraseDown e8 f g4 g,
  ) c-. \( g-. \) c,-. 
  
  <f' a> r r
  e8 c' f, c' g c
  f,4 r r
  g8 c a c bes c
  
  a c bes2->
  a8 c bes2->
  a4 g f
  c'8 b! c b c4
  
  c, r r
  e8 c' e, c' f, c'
  bes c bes c bes c
  a c a c a c
  
  e, c' f, c' g c
  a2 r4
  bes ( c c,
  ) f-._#'(large (italic (lines(" " "D.C. al Fine.")))) c-. f,-.
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "bright acoustic"
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
\midi {\tempo 4=104}
}

