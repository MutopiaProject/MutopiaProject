\version "2.16.1"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Rondo"
  composer          = "Johann Wanhal (1739-1813)"
  opus              = "Opus 42, No. 1"
  meter             = "Allegretto"
  copyright         = "Public Domain"
  %tagline           = "Public Domain"
  mutopiatitle      = "Rondo"
  mutopiacomposer   = "WanhalJ"
  mutopiainstrument = "Piano"
  date              = "18th Century"
  source            = "Unknown, late 19th Century"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/13-192"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\major \time 2/4}
Treble = \clef treble
Bass = \clef bass


VoiceI =  \relative c''' {
  g8-> ( e  c4)
  g'8-> ( f  d4)
   e8[ ( g e c]
   d8)-.  fis[ ( a  g)-.]
  
  g ( e  c4)
  g'8 ( f  d4)
   e8[ \( g b, d]
  c4 ( c8)\) r
  
   d8[ ( g e g]
   f[ g e g]
   d[ g e g]
   d)-.  fis[ ( a  g)]
  
   f![ ( g e g]
   d[ g e g]
   f[ g e g]
  d)[ e ( f fis]
  
  g e  c4)
  g'8 ( f  d4)
   e8[ ( g e c]
   d)-.  fis[ ( a  g)-.]
  
  g ( e  c4)
  c'8 ( a  f4)
   e8[ \( g b, d]
  \override Script #'extra-offset = #'(2 . 0)
  c4 ( c8)\) r\fermata
  \revert Script #'extra-offset
  \bar "||"
  
  \key f\major f4 ( a8 f
  c4  a)
  c ( f8 c
  a4  f)
  
  f-. ( f8-. f-.
  g4-. g8-.  g)-.
<<{
  a[ ( c) bes ( d)]
  g,8.[-> ( a16  g8)]
} \\ {
  s4 g8 s
  e4 ~ e8
}>> r
  
  f'4 ( a8 f
  c4  a)
  c ( f8 c
  a4  f)
  
  f-. ( f8-. f-.
  g4-. g8-.  g)-.
  a[ ( bes <e, g> a]
   f4) r
  
  g ( a8)-. a (
  bes4  a) (
   g8[ a bes a]
   g4.) a8 (
  
   bes[ c d c]
  bes4 a
  g a
   g4.) r8
  
  f'4 ( a16 f a f
  c4  a) (
  c f16 c f c
  a4  f)
  
  f-. ( f8-. f-.
  g4-. g8-.  g)-.
   a[ ( bes) <e,  g>(  a)]
  f4 r
  \bar "||"
  }

VoiceII =  \relative c' {
  <c e>4. <c e>8
  <g d'>4. <g d'>8
  <c e>4 <e, c'>
  <g b> r
  
<<{
  c,8[ ( g' e g]
  b,[ g' f g]
  c,[ e d f]
  e[ g  e)] r
} \\ {
  c2
  b
  c4 g
  c c8 s
}>>
  
  <g' b>4 <g c>
  <g d'> <g c>
  <g b> <g c>
  <g b> r
  
   d'8[ ( g, c g]
   b[ g c g]
   d'[ g, c  g)]
  <g b>4 r 
  
<<{
  c,8[ ( g' e g]
  b,[ g' f g]
  c,[ g' e g]
  <g, b>4) r
} \\ {
  c2
  b
  c
}>>
  
<<{
   c8[ ( bes' g bes]
   f[ c' a  c)]
} \\ {
  c,2
  f
}>>
  <g c>8[( e' <g, d'> f']
  \override Script #'script-priority = #-100
  \override Script #'extra-offset = #'(2 . 0)
  <c e>[ g' <c, e>)] r_\fermata_\markup {\large\italic Fine.}
  \revert Script #'extra-offset
  
    \key f\major  f,8[ c' a c]
   f,[ c' a c]
   f,[ c' a c]
   f,[ c' a c]
  
  a4-. ( a8-. a-.
  c4-. c8-.  c)-.
  f4 bes,
  c ( c8) r
  
   f,8[ c' a c]
   f,[ c' a c]
   f,[ c' a c]
   f,[ c' a c]
  
  a4-. ( a8-. a-.
  c4-. c8-.  c)-.
  \set doubleSlurs = ##t
  f4 <c,  bes' >(
  <f a>) r
  \set doubleSlurs = ##f
  
  \Treble c' ( f8)-. f (
  g4  f) (
   c8[ f g f]
   c4.) f8 (
  
   g[ a bes a]
  g4 f
  c f
   c4.) r8
  
  \Bass  f,8[ c' a c]
   f,[ c' a c]
   f,[ c' a c]
   f,[ c' a c]
  
  a4-. ( a8-. a-.
  c4-. c8-.  c)-.
  \set doubleSlurs = ##t
  f4 <c, bes'>_ \markup{\large \italic "D.C. al Fine."}(
  <f a>) r
  }

\score { {
\new PianoStaff <<
  \set PianoStaff.midiInstrument = "bright acoustic"
  \new Staff = "up" <<
    \Global \clef treble
    \new Voice=VcI \VoiceI
  >>
  \new Staff = "down" <<
    \Global \clef bass
    \new Voice=VcII \VoiceII
  >>
>>
}
\layout {}

  \midi {
    \tempo 4 = 108
    }
}
