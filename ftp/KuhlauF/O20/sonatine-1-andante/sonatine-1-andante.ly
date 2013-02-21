\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Sonatine I"
  subtitle          = "Drei Sonatines"
  composer          = "Frederik Kuhlau (1786-1832)"
  opus              = "Op.20 no.1-2"
  meter             = "Andante"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonatine I - Andante"
  mutopiacomposer   = "KuhlauF"
  mutopiainstrument = "Piano"
  date              = "Early 19th century"
  source            = "B. Schott's Söhnen, 19th century"
  style             = "Classical"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Apr/10"

  tagline           = "\\parbox{\paper-width}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/04/10-233"
}

Global =  {\key f\major \time 6/8 \partial 8}

dolce = \markup {\italic "dolce"}


VoiceI =  \relative c' {
  f16._\p ( a32
  
  c8)_\dolce c c c ( f  a,)
  c8. ( b16 d c  bes4) bes'16. ( g32)
  e4 g16. ( e32) c4 d16. ( bes32)
  g4 ( gis8) a4 r8
  
  r4 <f  a>8(\< ~ <f a> <e g> <fis a>)\!
  <<{c'4 ( bes8)} \\ {g8 d e}>>
  <f! a>4 a'16. ( g32)
  f8..[ ( e32 d16.  c32)]  b8..[ ( a'32 g16.  b,32)]
  c8[ <e, c'> <e c'>] <e c'>4
  \bar "|."
  
  \repeat volta 2 {
  
  <c  e>16.( <d f>32
  
  <e g>4) <e a>16._\markup{\italic "cresc."}( <f a>32 <g bes>4) <g bes >16.( <a c>32
  <bes d>4)\> <g bes>8\! <e g>4 \set doubleSlurs = ##t <bes'  e >8(
  <as f'>)_\f <as f'> <as f'> <f b> <f b> <f b>
  \set doubleSlurs = ##f
  <e c'>8[ c'16. ( b32 c16. b32]  c16.[ b32 c16._ \markup{\italic "dim."} b32 c16.  b32)]
  
  c8_\dolce c c c ( f  a,)
  c8.[ ( b16 d  c)] bes4 a8
  g32\< ( fis a g bes a c bes d cis e  d)\! f,4 ( <e a>16.  g32)
  f8[ <a, f'> <a f'>] <a f'>4
  }
  
  }

VoiceII =  \relative c {
  r8
  
  r <f a c> <f a c> <f a c> <f a c> <f a c>
  <e g c>4. ~ <e g c>4 r8
  <g bes c> <g bes c> r <g bes c> <g bes c> r
  r <e bes' c> <e bes' c> <f a c>4 f,16. ( a32
  
   c8) c c c bes a
  g4 c8 f,4 r8
  \clef treble <f'' a>8 <f a> r \clef bass <g, f'> <g f'> r
  <c e>[ <c, c'> <c c'>] <c c'>4
  
  r8
  
  r <c c'>4 r8 <c c'>4
  r8 <c c'> <c c'> <c c'>4.
  <des des'>8 <des des'> <des des'> <des des'> <des des'> <des des'>
  <c c'> <c' e g> <c e g> <c e g>4 r8
  
  r <f, a c>^\p <f a c> <f a c> <f a c> <f a c>
  <e g c>4. ~ <e g c>4 <f c'>8
  <bes d>4. r8 <c, a'> <c bes'>
  <f a>[ <f, f'> <f f'>] <f f'>4
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup {\large "Andante."}
  \context Staff = "up" <<
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >>
  \context Staff = "down" <<
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >>
>>
}
\layout {
  indent = 2.0 \cm
  }

  \midi {
    \tempo 4 = 72
    }


}

