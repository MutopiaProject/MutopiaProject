\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Rondo"
  composer          = "Johann Wanhal (1739-1813)"
  opus              = "Opus 42, No. 1"
  meter             = "Allegretto"
  copyright         = "Public Domain"
  tagline           = "Public Domain"
  mutopiatitle      = "Rondo"
  mutopiacomposer   = "J. Wanhal (1739-1813)"
  mutopiainstrument = "Piano"
  date              = "18th century"
  source            = "Unknown, late 19th century"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Feb/25"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/02/25-192"
}

Global = \notes {\key c\major \time 2/4}
staffUp = \translator Staff = "up"
staffDown = \translator Staff = "down"
tieUp = \property Voice.Tie \set #'direction = #1
tieBoth = \property Voice.Tie \set #'direction = #0
tieDown = \property Voice.Tie \set #'direction = #-1
slurUp = \property Voice.Slur \set #'direction = #1
slurBoth = \property Voice.Slur \set #'direction = #0
slurDown = \property Voice.Slur \set #'direction = #-1
phraseUp = \property Voice.PhrasingSlur \set #'direction = #1
phraseDown = \property Voice.PhrasingSlur \set #'direction = #-1
Treble = \clef treble
Bass = \clef bass


VoiceI = \notes \relative c''' {
  \stemBoth \slurUp g8-> ( e ) c4
  g'8-> ( f ) d4
  [e8 ( g e c]
  ) d8-. [fis ( a ) g-.]
  
  g ( e ) c4
  g'8 ( f ) d4
  [e8 \( g b, d]
  c4 () \) c8 r
  
  [d8 ( g e g]
  [f g e g]
  [d g e g]
  ) d-. [fis ( a ) g]
  
  [f! ( g e g]
  [d g e g]
  [f g e g]
  [) d e ( f fis]
  
  g e ) c4
  g'8 ( f ) d4
  [e8 ( g e c]
  ) d-. [fis ( a ) g-.]
  
  g ( e ) c4
  c'8 ( a ) f4
  [e8 \( g b, d]
  c4 () \) c8 \property Voice.Script \override #'direction = #1 
              \property Voice.Script \override #'extra-offset = #'(4.5 . 1) r\fermata
  \property Voice.Script \revert #'direction 
    \property Voice.Script \revert #'extra-offset 
    \bar "||"
  
  \key f\major f4 ( a8 f
  c4 ) a
  c ( f8 c
  a4 ) f
  
  f-. ( f8-. f-.
  g4-. g8-. ) g-.
  \stemUp [a () c bes () d]
  \property Voice.Script \override #'direction = #1 [g,8.-> ( a16 ) g8] r
  
  \stemBoth \property Voice.Script \revert #'direction f'4 ( a8 f
  c4 ) a
  c ( f8 c
  a4 ) f
  
  f-. ( f8-. f-.
  g4-. g8-. ) g-.
  \slurDown [a ( bes <e, g> a]
  ) f4 r
  
  \slurBoth g () a8-. a (
  bes4 ) a (
  [g8 a bes a]
  ) g4. a8 (
  
  [bes c d c]
  bes4 a
  g a
  ) g4. r8
  
  f'4 ( a16 f a f
  c4 ) a (
  c f16 c f c
  a4 ) f
  
  f-. ( f8-. f-.
  g4-. g8-. ) g-.
  [a () bes <e, ( g> ) a]
  f4 r
  \bar "||"
  }

VoiceII = \notes \relative c' {
  \stemBoth <c4. e> <c8 e>
  <g4. d'> <g8 d'>
  <c4 e> <e, c'>
  <g b> r
  
  \stemUp \slurUp [c,8 ( g' e g]
  [b, g' f g]
  [c, e d f]
  [e g ) e] \stemBoth r
  
  <g4 b> <g c>
  <g d'> <g c>
  <g b> <g c>
  <g b> r
  
  [d'8 ( g, c g]
  [b g c g]
  [d' g, c ) g]
  <g4 b> r 
  
  \stemUp [c,8 ( g' e g]
  [b, g' f g]
  [c, g' e g]
  <g,4 ) b> r
  
  [c8 ( bes' g bes]
  [f c' a ) c]
  \stemBoth [<g c (> e' <g, d'> f']
  [<c e> g' <c, ) e>] \property Voice.Script \override #'direction = #-1 
                      \property Voice.Script \override #'extra-offset = #'(4.5 . 0) 
                      \property Voice.TextScript \override #'extra-offset = #'(3 . 0)
                      r\fermata_#'(large (italic ("Fine.")))
  
  \property Voice.Script \revert #'direction 
    \property Voice.Script \revert #'extra-offset 
    \property Voice.TextScript \revert #'extra-offset 
    \key f\major [f,8 c' a c]
  [f, c' a c]
  [f, c' a c]
  [f, c' a c]
  
  a4-. ( a8-. a-.
  c4-. c8-. ) c-.
  f4 bes,
  c () c8 r
  
  [f,8 c' a c]
  [f, c' a c]
  [f, c' a c]
  [f, c' a c]
  
  a4-. ( a8-. a-.
  c4-. c8-. ) c-.
  f4 \slurUp \phraseDown <c, \( bes' (>
  <\) f ) a> r
  
  \Treble \slurBoth c' () f8-. f (
  g4 ) f (
  [c8 f g f]
  ) c4. f8 (
  
  [g a bes a]
  g4 f
  c f
  ) c4. r8
  
  \Bass [f,8 c' a c]
  [f, c' a c]
  [f, c' a c]
  [f, c' a c]
  
  \slurBoth a4-. ( a8-. a-.
  c4-. c8-. ) c-.
  f4 \slurUp <c,_#'(large (italic ("D.C. al Fine."))) \( bes' (>
  <\) f ) a> r
  }
VoiceIII = \notes \relative c {
  s2 s s s
  
  \stemDown c2
  b
  c4 g
  c c8 s
  
  s2 s s s
  
  s s s s
  
  c
  b
  c
  s
  
  c
  f
  s
  s
  
  s s s s
  
  s
  s
  \staffUp \stemDown \tieDown s4 g'8 s
  e4 ~ e8 s
  
  s2 s s s
  
  s s s s
  
  s s s s
  
  s s s s
  
  s s s s
  
  s s s s
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
    \context Voice=VcIII \VoiceIII
  >
>
}
\paper {}
\midi {\tempo 4=108}
}

