\version "2.16.0"
#(set-global-staff-size 16)
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
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-216"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key g\major \time 4/4}

VoiceI =  \relative c' {
  \override TupletBracket #'bracket-visibility = ##f
  \override TupletNumber #'stencil = ##f
  \repeat volta 2 {
  \stemUp \slurUp \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 {b8 ( g'_ \markup{\italic "mormorando"} d b g' d c a' d, a-1 fis'-4 d-2 
  b8 g' d b_\cresc g'\! d d b' g g d'  b)}
  b4-1 ( b c a
  b b_\dim g\! \times 2/3 {d8 a'  g)}
  
  \times 2/3 {b,8( g' d b g' d c a' d, a-1 fis'-4 d-2 
  b8 g' d b_\cresc g'\! d d-1 b' g g-1 d'  b)}
  b4-1 ( b c a
  \stemNeutral \times 2/3 {b8 d g)-5 g-1 ( b d} g4)_ \markup{\large {\italic "Fine."}} r
  }
  
  \times 2/3 {r8 fis, ( a,) r fis' ( a,) r fis' ( a,) r fis' ( a,)
  r g' ( a,) r e' ( a,) r_\cresc cis\! ( a) r d ( a)
  r e' ( a,) r fis' ( a,) r g' ( a,) r e' ( a,)
  r fis' ( a,) r e' ( a,)_\dim r\! d ( a) r e' ( a,)
  
  r fis' ( a,) r fis' ( a,) r e' ( a,) r fis' ( a,)
  r g' ( a,) r e' ( a,)_\cresc r\! cis ( a) r d ( a)
  r e' ( a,) r fis' ( a,) r g' ( a,) r cis ( a
   d)-4 e ( d c! b a g-4_\dim fis\! e d cis-3  c)}
  \bar "||"   
  }
  
VoiceII =  \relative c' {
  \override TupletBracket #'bracket-visibility = ##f
  \override TupletNumber #'stencil = ##f
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  
  \stemDown b4_\pp b c a
  b b d g
  \times 2/3 {b8 g' d b g' d c a' d, a fis' d
  b g' d b e-5 d g,-1 c-5 b } d,4-1
  
  \stemDown b4_\pp b c a
  b b d g
  \times 2/3 {b8 g' d b g' d c a' d, a fis' d}
  s1
  
  s s s s
  
  s s s s
  }

VoiceIII =  \relative c {
  \slurDown \stemNeutral g4 ( d' g, d'
  g, d' g,  d')
  g, ( d' g, d'
  g, d' g,  d')
  
  g, ( d' g, d'
  g, d' g,  d')
  g, ( d' g, d'
  g, d'  g,) r
  
  d''-2^\p ( a-5 cis-3 d
  e cis a  b)
  cis ( d e cis
  d-2 g-1 fis  e)-1
  
  d^\p ( a-5 cis-3 d
  e cis a  b)
  cis ( d e-1 g-2
   fis)-3 r r2_ \markup{\large {\italic "D.C. al Fine."}}
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "7."}
  \context Staff = "up" <<
%    \override Staff.NoteCollision   #'merge-differently-dotted = ##t
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
    \tempo 4 = 176
    }
}
