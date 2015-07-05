% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST
% Fingering and annotations by Javier Ruiz-Alma

lblExNum = \markup \bold \huge "11."

LH = \relative e, {
  \repeat volta 2 {
  \subdivideBeams
  \stemDown \fingerDown \fingerNoPad
  c16-5 e-3 a-1 g-2 a-1 g-2 f-3 g-2 
  d-5 f-3 b-1 a b a g a 
  e-5 g-3 c-1 b c b a b 
  f-5 a-3 d-1 c d c b c 
  g-5 b-3 e-1 d e d c d 
  a-5 c-3 f e f e d e 
  b-5 d-3 g f g f e f 
  \fingerUp c-5 e-3 a g a g f g 
  d-5 f-3 b a b a g a 
  e-5 g-3 c b c b a b 
  f-5 a-3 d c d c b c 
  g-5 b-3 e d e d c d 
  a-5 c-3 f e f e d e 
  b-5 d-3 g f g f e f 
  \bar "||"
  g-1 d-3 b-5 c-4 b-5 c-4 d-3 c-4 
  f-1 c-3 a-5 b a b c b
  e-1 b-3 g-5 a g a b a 
  d-1 a-3 f-5 g f g a g 
  c-1 g-3 e-5 f e f g f 
  b-1 f-3 d e d e f e 
  a-1 e-3 c d c d e d 
  \fingerDown g-1 d-3 b c b c d c 
  f-1 c-3 a b a b c b
  e-1 b-3 g a g a b a 
  d-1 a-3 f g f g a g 
  c-1 g-3 e f e f g f 
  b-1 f-3 d e d e f e 
  a-1 e-3 c d c d e d
  }
  c2
  \bar "|."
}

RH = \relative e {
  \repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp \fingerNoPad
  c16-1 e-2 a-5 g-4 a-5 g-4 f-3 g-4 
  d-1 f-2 b-5 a b a g a 
  e-1 g-2 c-5 b c b a b 
  f-1 a-2 d-5 c d c b c 
  \beamLessSlant g-1 b-2 \staffUp e-5 d e d c d 
  \beamLessSlant \staffDown a-1 c-2 \staffUp f e f e d e 
  \beamLessSlant \staffDown b-1 \staffUp d-2 g f g f e f 
  \fingerDown c-1 e-2 a g a g f g 
  d-1 f-2 b a b a g a 
  e-1 g-2 c b c b a b 
  f-1 a-2 d c d c b c 
  \stemDown \fingerUp g-1 b-2 e d e d c d 
  a-1 c-2 f e f e d e 
  b-1 d-2 g f g f e f 
  \bar "||"
  g-5 d-2 b-1 c-2 b-1 c-2 d-3 c-2 
  f-5 c-2 a-1 b a b c b 
  e-5 b-2 g-1 a g a b a 
  \stemUp \fingerDown d-5 a-2 f-1 g f g a g 
  c-5 g-2 e-1 f e f g f 
  b-5 f-2 d e d e f e 
  a-5 e-2 c d c d e d 
  g-5 d-2 b c b c d c 
  \beamLessSlant f-5 c-2 \staffDown a b a b c b 
  \beamLessSlant \staffUp \fingerUp e-5 \staffDown b-2 g a g a b a 
  d-5 a-2 f g f g a g 
  c-5 g-2 e f e f g f 
  b-5 f-2 d e d e f e 
  a-5 e-2 c d c d e d 
  }
  c2
  \bar "|."
}