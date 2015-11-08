\version "2.18.2"

\include "hanon-definitions.ily"

lblExNum = \markup \bold \huge "1."

RH = \relative c {
  \tempo \metMark
  \repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16-1^\mf e-2 f-3 g-4 a-5 g f e 
  d-1 f-2 g-3 a-4 b-5 a g f 
  e-1 g-2 a b c b a g 
  f-1 a-2 b c d c b a 
  g-1 b-2 c d e d c b 
  \beamLessSlant a-1 c-2 \staffUp d e f e d c 
  \fingerDown b-1 d-2 e f g f e d 
  c-1 e-2 f g a g f e 
  d-1 f-2 g a b a g f 
  e-1 g-2 a b c b a g 
  f-1 a-2 b c d c b a
  \stemNeutral
  g b c d e d c b 
  a c d e f e d c 
  b d e f g f e d 
  \bar "||"
  \fingerUp \fingerNoPad \posScriptB g-5^\markup{"descending"} e-4 d-3 c-2 b-1 c d e 
  f-5 d-4 c b a b c d 
  e-5 c-4 b a g a b c 
  \fingerDown d-5 b-4 a g f g a b 
  c-5 a-4 g f e f g a 
  b-5 g-4 f e d e f g 
  a-5 f-4 e d c d e f 
  g-5 e-4 d c b c d e 
  \beamLessSlant \stemUp f-5 d-4 c \staffDown  b a b c d 
  \fingerUp e-5 c-4 b a g a b c 
  d-5 b-4 a g f g a b 
  c-5 a-4 g f e f g a 
  b-5 g-4 f e d e f g 
  a-5 f-4 e d c d e f 
  g-5 e-4 d c b c d e 
  }
  c2
  \bar "|."
}

LH = \relative c, {
  \stemDown \subdivideBeams
  \repeat volta 2 {
  \fingerDown
  \posScriptA c16-5_\markup{"ascending"} e-4 f-3 g-2 a-1 g f e 
  d-5 f-4 g-3 a-2 b-1 a g f 
  e-5 g-4 a b c b a g 
  f-5 a-4 b c d c b a 
  g-5 b-4 c d e d c b 
  a-5 c-4 d e f e d c 
  \fingerUp \fingerNoPad b-5 d-4 e f g f e d 
  c-5 e-4 f g a g f e 
  d-5 f-4 g a b a g f 
  e-5 g-4 a b c b a g 
  f-5 a-4 b c d c b a 
  g b c d e d c b 
  a c d e f e d c 
  b d e f g f e d 
  \bar "||"
  g-1 e-2 d-3 c-4 b-5 c d e 
  f-1 d-2 c b a b c d 
  e-1 c-2 b a g a b c 
  d-1 b-2 a g f g a b 
  c-1 a-2 g f e f g a 
  b-1 g-2 f e d e f g 
  a-1 f-2 e d c d e f 
  g-1 e-2 d c b c d e 
  f-1 d-2 c b a b c d 
  \fingerDown e-1 c-2 b a g a b c 
  d-1 b-2 a g f g a b 
  c-1 a-2 g f e f g a 
  b-1 g-2 f e d e f g 
  a-1 f-2 e d c d e f 
  g-1 e-2 d c b c d e 
  }
  c2
  \bar "|."
}
