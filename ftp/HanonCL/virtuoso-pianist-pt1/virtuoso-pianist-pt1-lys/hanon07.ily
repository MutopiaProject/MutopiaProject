% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST
% Fingering and annotations by Javier Ruiz-Alma

lblExNum = \markup \bold \huge "7."

LH = \relative e, {
\repeat volta 2 {
  \subdivideBeams
  \stemDown \fingerDown \fingerNoPad
  c16-5 e-3 d-4 f-2 e-3 g-1 f-3 e-4 
  d-5 f-3 e-4 g-2 f-3 a-1 g-3 f-4 
  e-5 g f a g b a-3 g 
  f-5 a g b a c b-3 a 
  g-5 b a c b d c-3 b 
  a-5 c b d c e d-3 c 
  b-5 d c e d f e-3 d 
  \fingerUp c-5 e d f e g f-3 e-4
  d-5 f e g f a g-3 f-4
  e-5 g f a g b a-3 g
  f-5 a g b a c b-3 a
  g-5 b a c b d c-3 b 
  a-5 c b d c e d-3 c 
  b-5 d c e d f e-3 d 
  \bar "||"
  g-1 e-3 f-2 d-4 e-3 c-5 d-4 e-3 
  f-1 d e c d b-5 c-4 d 
  e-1 c d b c a b c 
  d-1 b c a b g a b 
  c-1 a b g a f g a 
  b-1 g a f g e f g 
  a-1 f g e f d e f 
  g-1 e f d e c d e 
  f-1 d e c d b c d 
  \fingerDown e-1 c d b c a b c 
  d-1 b c a b g a b 
  c-1 a b g a f g a 
  b-1 g a f g e f g 
  a-1 f g e f d e-3 f
  }
  c2
  \bar "|."
}

RH = \relative e {
\repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp \fingerNoPad
  c16-1 e-3 d-2 f-4 e-3 g-5 f-4 e-3 
  d-1 f-3 e-2 g-4 f-3 a-5 g-4 f-3 
  e-1 g f a g b a-4 g 
  f-1 a g b a c b-4 a 
  g-1 b a c b d c-4 b 
  a-1 c b d c e d-4 c 
  \beamLessSlant b-1 \staffUp d c e d f e-4 d 
  \fingerDown c-1 e d f e g f-4 e-3 
  d-1 f e g f a g-4 f-3 
  e-1 g f a g b a-4 g 
  f-1 a g b a c b-4 a 
  \stemDown \fingerUp g-1 b a c b d c-4 b 
  a-1 c b d c e d-4 c 
  b-1 d c e d f e-3 d 
  \bar "||"
  g-5 e-3 f-4 d-2 e-3 c-1 d-3 e-4 
  f-5 d e c d b c-3 d 
  e-5 c d b c a b-3 c 
  \stemUp \fingerDown d-5 b c a b g a-3 b 
  c-5 a b g a f g-3 a 
  b-5 g a f g e f-3 g 
  a-5 f g e f d e-3 f 
  g-5 e f d e c d-3 e 
  f-5 d e c d b c-3 d 
  \beamLessSlant \fingerUp e-5 c d b c \staffDown a b-3 c 
  d-5 b c a b g a-3 b 
  c-5 a b g a f g-3 a 
  b-5 g a f g e f-3 g 
  a-5 f g e f d e-3 f
  }
  c2
  \bar "|."
}

