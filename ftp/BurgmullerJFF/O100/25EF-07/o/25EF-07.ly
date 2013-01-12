%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Le Courant Limpide"
  subtitle          = "Rieselnder Bach  *  The limpid Stream"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Allegro vivace"
  copyright         = "Public Domain"
  mutopiatitle      = "Le Courant Limpide"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/20"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/20-216"
}

Global = \notes {\key g\major \time 4/4}

tsDownIV = \property Voice.TextScript \override #'extra-offset = #'(0 . -4)
tsDownIIh = \property Voice.TextScript \override #'extra-offset = #'(0 . -2.5)
tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)
tsZero = \property Voice.TextScript \revert #'extra-offset 
tsUpI = \property Voice.TextScript \override #'extra-offset = #'(0 . 1)

crescendo = #'(italic "cresc.")
diminuendo = #'(italic "dim.")

VoiceI = \notes \relative c' {
  \repeat volta 2 {
  \property Voice.TupletBracket \override #'tuplet-number-visibility = ##f
  \property Voice.TupletBracket \override #'tuplet-bracket-visibility = ##f
  \stemUp \slurUp \property Voice.tupletSpannerDuration = #(make-moment 1 4) \times 2/3 {b8 ( \tsDownIV g'_#'(italic "mormorando") \tsZero d b g' d c a' d, a_"1" fis'_"4" d_"2" 
  b8 g' d \tsDownIIh b_\crescendo \tsZero g' d d b' g g d' ) b}
  b4^"1" ( b c a
  b \tsDownIIh b_\diminuendo \tsZero g \times 2/3 {d8 a' ) g}
  
  \times 2/3 {b,8( g' d b g' d c a' d, a_"1" fis'_"4" d_"2" 
  b8 g' d \tsDownIIh b_\crescendo \tsZero g' d d_"1" b' g g_"1" d' ) b}
  b4^"1" ( b c a
  \stemBoth \times 2/3 {b8 d \property Voice.TextScript \override #'extra-offset = #'(-0.5 . -0.5) ) g^"5" \tsZero g^"1" ( b d} \tsDownIIh ) g4_#'(large (italic "Fine.")) \tsZero r
  }
  
  \times 2/3 {r8 fis, () a, r fis' () a, r fis' () a, r fis' () a,
  r g' () a, r e' () a, \tsDownIIh r_\crescendo \tsZero cis () a r d () a
  r e' () a, r fis' () a, r g' () a, r e' () a,
  r fis' () a, r e' ( \tsDownII ) a,_\diminuendo \tsZero r d () a r e' () a,
  
  r fis' () a, r fis' () a, r e' () a, r fis' () a,
  r g' () a, r e' (\tsDownIIh ) a,_\crescendo \tsZero r cis () a r d () a
  r e' ()a, r fis' () a, r g' () a, r cis ( a
  ) d^"4" e ( d c! b a g_"4"_""_\diminuendo fis e d cis_"3" ) c}
  \bar "||"   
  }
  
VoiceII = \notes \relative c' {
  \property Voice.TupletBracket \override #'tuplet-number-visibility = ##f
  \property Voice.TupletBracket \override #'tuplet-bracket-visibility = ##f
  \property Voice.tupletSpannerDuration = #(make-moment 1 4)
  
  \stemDown b4_\pp b c a
  b b d g
  \times 2/3 {b8 g' d b g' d c a' d, a fis' d
  b g' d b e^"5" d g,^"1" c^"5" b } d,4_"1"
  
  \stemDown b4_\pp b c a
  b b d g
  \times 2/3 {b8 g' d b g' d c a' d, a fis' d}
  s1
  
  s s s s
  
  s s s s
  }

VoiceIII = \notes \relative c {
  \slurDown \stemBoth g4 ( d' g, d'
  g, d' g, ) d'
  g, ( d' g, d'
  g, d' g, ) d'
  
  g, ( d' g, d'
  g, d' g, ) d'
  g, ( d' g, d'
  g, d' ) g, r
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . 1) d''^"2"^\p ( a^"5" cis^"3" d
  e cis a ) b
  cis ( d e cis
  d^"2" g^"1" fis ) e^"1"
  
  d^\p ( a^"5" cis^"3" d
  e cis a ) b
  cis ( d e^"1" g^"2"
  ) fis^"3" r r2_#'(large (italic "D.C. al Fine."))
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "7. ")
  \context Staff = "up" <
    \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
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
\midi {\tempo 4=176}
}

