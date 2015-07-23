% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST
% Fingering and annotations by Javier Ruiz-Alma

lblExNum = \markup \bold \huge "2."

RH = \relative e {
\repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp \fingerNoPad
  c16-1^"(1)" e-2 a-5 g-4 f-3 g-4 f-3 e-2 
  d-1 f-2 b-5 a g a g f 
  e-1 g-2 c-5 b a b a g 
  f-1 a-2 d c b c b a 
  g-1 b-2 e d c d c b 
  \beamLessSlant a-1 c-2 \staffUp f e d e d c 
  \fingerDown b-1 d-2 g f e f e d 
  c-1 e-2 a g f g f e 
  d-1 f-2 b a g a g f 
  e-1 g-2 c b a b a g 
  f-1 a-2 d c b c b a 
  \stemNeutral \fingerUp g-1 b-2 e d c d c b 
  a-1 c-2 f e d e d c 
  b-1 d-2 g f e f e d
  \mark \markup{ \smaller "(1)"}
  \bar "||"
  g-5 d-2 b-1 c-2 d-3 c-2 d-3 e-4 
  f-5 c-2 a-1 b c b c d 
  e-5 b-2 g-1 a b a b c 
  \fingerDown d-5 a-2 f-1 g a g a b 
  c-5 g-2 e-1 f g f g a 
  b-5 f-2 d-1 e f e f g 
  a-5 e-2 c-1 d e d e f 
  g-5 d-2 b-1 c d c d e 
  \stemUp \beamLessSlant \fingerUp f-5 c-2 \staffDown a-1 b c b c d 
  e-5 b-2 g a b a b c 
  d-5 a-2 f g a g a b 
  c-5 g-2 e f g f g a 
  b-5 f-2 d e f e f g 
  a-5 e-2 c d e d e f
  }
  c2
  \bar "|."
}

LH = \relative e, {
\repeat volta 2 {
  \subdivideBeams
  \stemDown \fingerDown \fingerNoPad
  c16-5 e-3 a-1 g-2 f-3 g-2 f-3 e-4 
  d-5 f-3 b-1 a g a g f 
  e-5 g-3 c-1 b a b a g 
  f-5 a-3 d-1 c b c b a 
  g-5 b-3 e d c d c b 
  a-5 c-3 f e d e d c 
  \fingerUp b-5 d-3 g f e f e d 
  c-5 e-3 a g f g f e 
  d-5 f-3 b a g a g f 
  e-5 g-3 c b a b a g 
  f-5 a-3 d c b c b a 
  g-5 b-3 e d c d c b 
  a-5 c-3 f e d e d c 
  b-5 d-3 g f e f e d 
  \bar "||"
  g-1 d-3 b-5 c-4 d-3 c-4 d-3 e-2 
  f-1 c-3 a-5 b c b c d 
  e-1 b-3 g-5 a b a b c 
  d-1 a-3 f-5 g a g a b 
  c-1 g-3 e-5 f g f g a 
  b-1 f-3 d-5 e f e f g 
  a-1 e-3 c-5 d e d e f 
  g-1 d-3 b-5 c d c d e 
  \fingerDown f-1 c-3 a-5 b c b c d 
  e-1 b-3 g a b a b c 
  d-1 a-3 f g a g a b 
  c-1 g-3 e f g f g a 
  b-1 f-3 d e f e f g 
  a-1 e-3 c d e d e f
  }
  c2
  \bar "|."
}