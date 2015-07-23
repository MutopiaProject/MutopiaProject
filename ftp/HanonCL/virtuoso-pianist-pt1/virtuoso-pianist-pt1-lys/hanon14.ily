% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST
% Fingering and annotations by Javier Ruiz-Alma

lblExNum = \markup \bold \huge "14."

LH = \relative e, {
  \repeat volta 2 {
  \subdivideBeams
  \stemDown \fingerNoPad \fingerDown
  c16-5 d-4 f-2 e-3 f-2 e-3 g-1 f-3 
  d-5 e-4 g-2 f-3 g-2 f-3 a-1 g-3 
  e-5 f-4 a-2 g a g b-1 a-3 
  f-5 g b a b a c-1 b-3 
  g-5 a c b c b d-1 c-3 
  a-5 b d c d c e-1 d-3 
  b-5 c e d e d f-1 e-3
  \fingerUp c-5 d f e f e g-1 f-3 
  d-5 e g f g f a-1 g-3 
  e-5 f a g a g b-1 a-3 
  f-5 g b a b a c-1 b-3 
  g-5 a c b c b d-1 c-3 
  a-5 b d c d c e-1 d-3 
  b-5 c e d e d f-1 e-3 
  \bar "||"
  g-1 f-2 d-4 e-3 d-4 e-3 c-5 d-4 
  f-1 e-2 c-4 d c d b-5 c-4 
  e-1 d b c b c a-5 b-4 
  d-1 c a b a b g-5 a-4 
  c-1 b g a g a f-5 g-4 
  b-1 a f g f g e-5 f-4 
  a-1 g e f e f d-5 e-4 
  g-1 f d e d e c-5 d-4 
  f-1 e c d c d b-5 c-4 
  \fingerDown e-1 d b c b c a-5 b-4 
  d-1 c a b a b g-5 a-4
  c-1 b g a g a f-5 g-4 
  b-1 a f g f g e-5 f-4 
  a-1 g e f e f d-5 e-3 
  }
  c2
  \bar "|."
}

RH = \relative e {
\repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp \fingerNoPad
  c16-1 d-2 f-4 e-3 f-4 e-3 g-5 f-4 
  d-1 e-2 g-4 f-3 g-4 f-3 a-5 g-4 
  e-1 f-2 a-4 g-3 a g b-5 a-4 
  f-1 g b a b a c-5 b-4 
  g-1 a c b c b d-5 c-4 
  a-1 b d c d c e-5 d-4 
  \beamLessSlant b-1 c \staffUp e d e d f-5 e-4
  \fingerDown c-1 d f e f e g-5 f-4 
  d-1 e g f g f a-5 g-4 
  e-1 f a g a g b-5 a-4 
  f-1 g b a b a c-5 b-4 
  \stemDown \fingerUp g-1 a c b c b d-5 c-4
  a-1 b d c d c e-5 d-4 
  b-1 c e d e d f-5 e-3
  \bar "||"
  g-5 f-4 d-2 e-3 d-2 e-3 c-1 d-3 
  f-5 e-4 c-2 d c d b-1 c-3 
  e-5 d b c b c a-1 b-3 
  \stemUp \fingerDown d-5 c a b a b g-1 a-3 
  c-5 b g a g a f-1 g-3 
  b-5 a f g f g e-1 f-3 
  a-5 g e f e f d-1 e-3 
  g-5 f d e d e c-1 d-3 
  f-5 e c d c d b-1 c-3 
  \beamLessSlant e-5 d b c b c \staffDown \fingerUp a-1 b-3 
  d-5 c a b a b g-1 a-3 
  c-5 b g a g a f-1 g-3 
  b-5 a f g f g e-1 f-3
  a-5 g e f e f d-1 e-3 
  }
  c2
  \bar "|."
}