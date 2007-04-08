%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Sonatine I"
  subtitle          = "Drei Sonatines"
  composer          = "Frederik Kuhlau (1786-1832)"
  opus              = "Op.20 no.1-2"
  meter             = "Andante"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonatine I - Andante"
  mutopiacomposer   = "F. Kuhlau (1786-1832)"
  mutopiainstrument = "Piano"
  date              = "Early 19th century"
  source            = "B. Schott's Söhnen, 19th century"
  style             = "Classical"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Apr/10"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/04/10-233"
}

Global = \notes {\key f\major \time 6/8 \partial 8}

dolce = #'(italic "dolce")

tsZero = \property Voice.TextScript \revert #'extra-offset
tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)

dtZero = \property Voice.DynamicText \revert #'extra-offset
dtDownI = \property Voice.DynamicText \override #'extra-offset = #'(0 . -1)
dtDownII = \property Voice.DynamicText \override #'extra-offset = #'(0 . -2)


VoiceI = \notes \relative c' {
  \stemBoth \slurBoth \tieBoth \dtDownII f16._\p ( a32
  
  \tsDownII ) c8_\dolce \tsZero c c c ( f ) a,
  c8. ( b16 d c ) bes4 bes'16. () g32
  e4 g16. () e32 c4 d16. () bes32
  g4 () gis8 a4 r8
  
  r4 <f8\cr ( a> ~ <f a> <e g> <) fis\rc a>
  <\context Voice=VcI {\voiceOne c'4 () bes8}
   \context Voice=VcIb {\voiceTwo g8 d e}>
   \stemBoth \slurBoth \tieBoth <f!4 a> a'16. () g32
  [f8.. ( e32 d16. ) c32] [b8.. ( a'32 g16. ) b,32]
  \partial 8*5 [c8 <e, c'> <e c'>] <e4 c'>
  \bar "|."
  
  \repeat volta 2 {
  
  \partial 8 <c16. ( e> <d32 f>
  
  <) e4 g> \tsDownII <e16._#'(italic "cresc.") ( \tsZero g> <f32 a> <) g4 bes> <g16. bes (> <a32 c>
  <bes4\decr ) d> <g8\rced bes> <e4 g> \slurDown \property Voice.PhrasingSlur \override #'direction = #1 <bes'8 ( e \(>
  \property Voice.DynamicText \set #'extra-offset = #'(-2 . -0.5) <) as_\f \) f'> \slurBoth <as f'> <as f'> <f b> <f b> <f b>
  [<e8 c'> c'16. ( b32 c16. b32] [c16. b32 \tsDownII c16._#'(italic "dim.") \tsZero b32 c16. ) b32]
  
  c8_\dolce c c c ( f ) a,
  [c8. ( b16 d ) c] bes4 a8
  g32\cr ( fis a g bes a c bes d cis e ) d\rc f,4 ( <e16. a> ) g32
  \partial 8*5 [f8 <a, f'> <a f'>] <a4 f'>
  }
  
  }

VoiceII = \notes \relative c {
  \stemBoth \slurBoth \tieBoth r8
  
  r <f a c> <f a c> <f a c> <f a c> <f a c>
  <e4. g c> ~ <e4 g c> r8
  <g bes c> <g bes c> r <g bes c> <g bes c> r
  r <e bes' c> <e bes' c> <f4 a c> f,16. ( a32
  
  ) c8 c c c bes a
  g4 c8 f,4 r8
  \clef treble <f''8 a> <f a> r \clef bass <g, f'> <g f'> r
  [<c e> <c, c'> <c c'>] <c4 c'>
  
  r8
  
  r <c4 c'> r8 <c4 c'>
  r8 <c c'> <c c'> <c4. c'>
  <des8 des'> <des des'> <des des'> <des des'> <des des'> <des des'>
  <c c'> <c' e g> <c e g> <c4 e g> r8
  
  r <f, a c^\p> <f a c> <f a c> <f a c> <f a c>
  <e4. g c> ~ <e4 g c> <f8 c'>
  <bes4. d> r8 <c, a'> <c bes'>
  \stemDown [<f a> <f, f'> <f f'>] <f4 f'>
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "Andante.  ")
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
\paper {
  indent = 2.0 \cm
  }
\midi {\tempo 4=72}
}

