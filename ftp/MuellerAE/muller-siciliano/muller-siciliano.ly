%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Siciliano"
  composer          = "August Eberhardt Müller (1767-1817)"
  copyright         = "Public Domain"
  tagline           = "Public Domain"
  mutopiatitle      = "Siciliano"
  mutopiacomposer   = "A. E. Müller (1767-1817)"
  mutopiainstrument = "Piano"
  date              = "18th century"
  source            = "Unknown, late 19th century"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Feb/27"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/02/27-208"
}

Global = \notes {\key a\minor \time 6/8}
staffUp = \translator Staff = "up"
staffDown = \translator Staff = "down"
slurUp = \property Voice.Slur \override #'direction = #1
slurBoth = \property Voice.Slur \override #'direction = #0
slurDown = \property Voice.Slur \override #'direction = #-1
Treble = \clef treble
Bass = \clef bass

VoiceI = \notes \relative c'' {
  \repeat volta 2 {
  
  \stemBoth \slurBoth \property Voice.DynamicText \override #'extra-offset = #'(0 . -1) c8.\p ( d16 c8 ) b4 b8 (
  a8. b16 a8 ) gis4 gis8 (
  \property Voice.DynamicLineSpanner \override #'padding = #-0.5 a4\cr c8 ) b4 <gis8\rc e'>
  <b4\decr d> <a8 c> <gis4\rced b> r8
  
  \property Voice.DynamicText \revert #'extra-offset c8.\mf ( d16 c8 ) b4 b8 (
  a8. b16 a8 ) gis4 gis8 (
  \property Voice.DynamicLineSpanner \set #'padding = #1 a4\cr c8 d4 ) f8-.\rc
  \stemUp \slurUp b,8. ( a16 b8 ) c4 \stemBoth \slurBoth r8
  }
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -2) e8.\p ( f16 e8 ) g4 g8-.
  \stemUp \slurUp cis,8. ( b16 cis8 d4 \stemBoth ) a8
  \slurBoth \property Voice.DynamicLineSpanner \revert #'padding d8.\cr ( e16 d8 ) f4 f8-.\rc
  f8.\decr ( g16 f8 e4 ) d8\rced (
  
  c8.\p d16 c8 ) b4 b8 (
  a8. b16 a8 ) gis4 gis8 (
  \property Voice.DynamicLineSpanner \revert #'padding a4\cr c8 ) b4 <gis8 e'\rc (>
  <b4\decr d> <a8 c> <gis4\rced ) b> r8
  
  \property Voice.DynamicText \revert #'extra-offset c8.\mf ( d16 c8 ) b4 b8 (
  a8. b16 a8 ) gis4 \slurUp gis8 (
  \property Voice.TextScript \override #'extra-offset = #'(0 . -2.5) a4_#'(italic "cresc.") c8 \stemUp d4 dis8
  ) e4 e8 a,4 r8
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -3) gis'8.\p ( a16 gis8 ) a4 r8
  \property Voice.DynamicText \override #'extra-offset = #'(-5 . -2.5) e4\mf e8 a,4 r8
  \bar "|."
  }
VoiceII = \notes \relative c' {
  s2. s s s
  
  s
  s
  s
  \stemDown f4 f8 e4 s8
  
  s2.
  g4 g8 f4.
  s2.
  s4. \staffDown gis,
  
  s2. s s s
  
  s
  s
  s4. \staffUp a'
  \slurDown a4 ( gis8 ) a4 s8
  
  d4 d8 c4 s8
  gis8. ( a16 gis8 ) a4 s8
  }

VoiceIII = \notes \relative c' {
  \stemBoth \slurBoth <a4 e'-.(> <)a8 e'-.> <d4 e-.(> <)d8 e-.>
  <c4 e> <c8 e> <b4 d e> <b8 d e>
  <c4 e> <a8 e'> <gis4 e'> e8 (
  a4 dis,8 e4 ) e,8
  
  <a'4 e'> <a8 e'> <d4 e> <d8 e>
  <c4 e> <c8 e> <b4 d e> <b8 d e>
  <c4 e> a8 ( f4 d8
  g4 g,8 c4 ) c,8
  
  r4 r8 <c''4 e> <bes8 d>
  <a4 e'> <a8 e'> d4 r8
  r4 r8 <b!4 d> <b8 d>
  <a4 d> <a8 d> \stemUp b4 e8
  
  \stemBoth <a,4 e'> <a8 e'> <d4 e> <d8 e>
  <c4 e> <c8 e> <b4 d e> <b8 d e>
  <c4 e> <a8 e'> <gis4 e'> e8
  a4 dis,8 e4 e,8  
  
  <a'4 e'> <a8 e'> <d4 e> <d8 e>
  <c4 e> <c8 e> <b4 d e> <b8 d e>
  <c4 e> a8 f4 f8
  <e4 c' (> <e8 b'> ) a4 r8
  
  \Treble <e'4 b'> <e8 b'> a4 r8
  \Bass <e,4 d'> <e8 d'> <a4 c> r8
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "bright acoustic"
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
    \context Voice=VcII \VoiceII
  >
  \context Staff = "down" <
    \Global \clef bass
    \context Voice=VcIII \VoiceIII
  >
>
}
\paper {}
\midi {\tempo 4=84}
}

