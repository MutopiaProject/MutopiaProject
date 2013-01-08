\version "2.16.1"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Siciliano"
  composer          = "August Eberhardt Müller (1767-1817)"
  copyright         = "Public Domain"
  mutopiatitle      = "Siciliano"
  mutopiacomposer   = "MuellerAE"
  mutopiainstrument = "Piano"
  date              = "18th Century"
  source            = "Unknown, late 19th Century"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/08-208"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key a\minor \time 6/8}
staffUp = \change Staff = "up"
staffDown = \change Staff = "down"
Treble = \clef treble
Bass = \clef bass

VoiceI =  \relative c'' {
  \repeat volta 2 {
  
  \stemNeutral \slurNeutral c8.\p ( d16 c8  b4) b8 (
  a8. b16 a8  gis4) gis8 (
  a4\< c8  b4) <gis e'>8
  <b d>4\> <a c>8 <gis b>4\! r8
  
  c8.\mf ( d16 c8  b4) b8 (
  a8. b16 a8  gis4) gis8 (
  a4\< c8 d4  f8)-.\!
  \stemUp \slurUp b,8. ( a16 b8  c4) \stemNeutral \slurNeutral r8
  }
  
  e8.\p ( f16 e8  g4) g8-.
  \stemUp \slurUp cis,8. ( b16 cis8 d4 \stemNeutral  a8)
  \slurNeutral d8.\< ( e16 d8  f4) f8-.
  f8.\> ( g16 f8 e4  d8)\! (
  
  c8.\p d16 c8  b4) b8 (
  a8. b16 a8  gis4) gis8 (
  a4\< c8  b4) <gis e' >8(
  <b d>4\> <a c>8 <gis b>4\! r8)
  
  c8.\mf ( d16 c8  b4) b8 (
  a8. b16 a8  gis4) \slurUp gis8 (
  a4\cresc c8 \stemUp d4 dis8\!
   e4) e8 a,4 r8
  
  gis'8.\p ( a16 gis8  a4) r8
  e4\mf e8 a,4 r8
  \bar "|."
  }
VoiceII =  \relative c' {
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
  \slurDown a4 ( gis8  a4) s8
  
  d4 d8 c4 s8
  gis8. ( a16 gis8  a4) s8
  }

VoiceIII =  \relative c' {
  \stemNeutral \slurNeutral <a e'>4-.( <a e'>8)-. <d e>4-.( <d e>8)-.
  <c e>4 <c e>8 <b d e>4 <b d e>8
  <c e>4 <a e'>8 <gis e'>4 e8 (
  a4 dis,8 e4  e,8)
  
  <a' e'>4 <a e'>8 <d e>4 <d e>8
  <c e>4 <c e>8 <b d e>4 <b d e>8
  <c e>4 a8 ( f4 d8
  g4 g,8 c4  c,8)
  
  r4 r8 <c'' e>4 <bes d>8
  <a e'>4 <a e'>8 d4 r8
  r4 r8 <b! d>4 <b d>8
  <a d>4 <a d>8 \stemUp b4 e8
  
  \stemNeutral <a, e'>4 <a e'>8 <d e>4 <d e>8
  <c e>4 <c e>8 <b d e>4 <b d e>8
  <c e>4 <a e'>8 <gis e'>4 e8
  a4 dis,8 e4 e,8  
  
  <a' e'>4 <a e'>8 <d e>4 <d e>8
  <c e>4 <c e>8 <b d e>4 <b d e>8
  <c e>4 a8 f4 f8
  <e c' >4( <e b'>8  a4) r8
  
  \Treble <e' b'>4 <e b'>8 a4 r8
  \Bass <e, d'>4 <e d'>8 <a c>4 r8
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "bright acoustic"
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
    \tempo 4 = 84
    }


}

