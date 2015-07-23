% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST
% Fingering and annotations by Javier Ruiz-Alma

lblExNum = \markup \bold \huge "8."

LH = \relative e, {
  \subdivideBeams
  \stemDown \fingerDown \fingerNoPad
  \repeat volta 2 {
  c16-5 e-4 g-2 a-1 f-3 g-2 e-4 f-3 
  d-5 f-4 a-2 b-1 g-3 a f g 
  e-5 g-4 b-2 c a b g a 
  f-5 a-4 c-2 d b c a b 
  g-5 b-4 d-2 e c d b c 
  a-5 c-4 e-2 f d e c d 
  b d f g e f d e 
  \fingerUp c-5 e-4 g-2 a f g e f 
  d-5 f-4 a-2 b g a f g 
  e-5 g-4 b-2 c a b g a 
  f-5 a c d b c a b 
  g-5 b d e c d b c 
  a-5 c e f d e c d 
  b-5 d f g e f d e 
  \bar "||"
  g-1 e-2 c-4 b-5 d-3 c-4 e-2 d-3 
  f-1 d-2 b-4 a-5 c-3 b-4 d-2 c-3 
  e-1 c-2 a-4 g-5 b a c b 
  d-1 b-2 g-4 f-5 a g b a 
  c-1 a f e g f a g 
  b-1 g e d f e g f 
  a-1 f d c e d f e 
  g-1 e c b d c e d 
  \fingerDown f-1 d b a c b d c 
  e-1 c a g b a c b 
  d-1 b g f a g b a 
  c-1 a f e g f a g 
  b-1 g e d f e g f 
  a f d c e d f e 
  }
  c2
  \bar "|."
}

RH = \relative e {
\repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp \fingerNoPad
  c16-1 e-2 g-4 a-5 f-3 g-4 e-2 f-3 
  d-1 f-2 a-4 b-5 g-3 a f g 
  e-1 g-2 b-4 c a b g a 
  f-1 a-2 c-4 d b c a b 
  g-1 b-2 d-4 e c d b c 
  \beamLessSlant a-1 c-2 \staffUp e-4 f d e c d 
  b-1 d-2 f-4 g e f d e 
  \fingerDown c-1 e-2 g-4 a f g e f 
  d-1 f-2 a-4 b g a f g 
  e-1 g-2 b-4 c a b g a 
  f-1 a c d b c a b 
  \stemDown \fingerUp g-1 b d e c d b c 
  a-1 c e f d e c d 
  b-1 d f g e f d e 
  \bar "||"
  g-5 e-4 c-2 b-1 d-3 c-2 e-4 d-3 
  f-5 d-4 b-2 a-1 c-3 b-2 d-4 c-3 
  e-5 c-4 a-2 g-1 b a c b 
  \stemUp \fingerDown d-5 b-4 g-2 f-1 a g b a 
  c-5 a f e g f a g 
  b-5 g e d f e g f 
  a-5 f d c e d f e 
  g-5 e c b d c e d 
  \beamLessSlant \fingerUp f-5 d \staffDown b a c b d c 
  e-5 c a g b a c b 
  d-5 b g f a g b a 
  c-5 a f e g f a g 
  b-5 g e d f e g f 
  a-5 f d c e d f e
  }
  c2
  \bar "|."
}

