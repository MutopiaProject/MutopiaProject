% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST
% Fingering and annotations by Javier Ruiz-Alma

lblExNum = \markup \bold \huge "13."

LH = \relative e, {
  \repeat volta 2 {
  \subdivideBeams
  \stemDown \fingerNoPad \fingerDown
  e16-3 c-5 f-2 d-4 g-1 e-3 f-2 g-1
  f-3 d-5 g-2 e-4 a-1 f-3 g-2 a-1 
  g-3 e-5 a-2 f-4 b-1 g a b 
  a-3 f-5 b g c a b c 
  b-3 g-5 c a d b c d 
  c-3 a-5 d b e c d e 
  \fingerUp d-3 b-5 e c f d e f 
  e-3 c-5 f d g e f g 
  f-3 d-5 g e a f g a 
  g-3 e-5 a f b g a b 
  a-3 f-5 b g c a b c 
  b-3 g-5 c a d b c d 
  c-3 a-5 d b e c d e 
  d-3 b-5 e c f d e f 
  \bar "||"
  e-3 g-1 d-4 f-2 e-3 c-5 d-3 e-2 
  d-3 f-1 c-4 e-2 d-3 b-5 c-3 d-2 
  c-3 e-1 b d c a-5 b-3 c-2 
  b-3 d-1 a c b g-5 a-3 b-2
  a-3 c-1 g b a f-5 g-3 a-2 
  g b f a g e-5 f-3 g-2 
  f a e g f d-5 e-3 f-2 
  e g d f e c-5 d-3 e-2 
  d f c e d b-5 c-3 d-2 
  \fingerDown c e b d c a-5 b-3 c-2 
  b d a c b g-5 a-3 b-2 
  a c g b a f-5 g-3 a-2 
  g b f a g e-5 f-3 g-2 
  f a e g f d-5 e-3 f-2
  }
  c2
  \bar "|."
}

RH = \relative e {
\repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp \fingerNoPad
  e16-3 c-1 f-4 d-2 g-5 e-3 f-4 g-5 
  f-3 d-1 g-4 e-2 a-5 f-3 g-4 a-5 
  g-3 e-1 a-4 f-2 b-5 g a b 
  a-3 f-1 b g c a b c 
  b-3 g-1 c a d b c d 
  \beamLessSlant c-3 a-1 d b \staffUp e c d e 
  \fingerDown d-3 b-1 e c f d e f 
  e-3 c-1 f d g e f g 
  f-3 d-1 g e a f g a 
  g-3 e-1 a f b g a b 
  a-3 f-1 b g c a b c 
  \stemDown \fingerUp b-3 g-1 c a d b c d 
  c-3 a-1 d b e c d e 
  d-3 b-1 e c f d e f 
  \bar "||"
  e-3 g-5 d-2 f-4 e-3 c-1 d-3 e-4 
  d-3 f-5 c-2 e-4 d-3 b-1 c-3 d-4 
  c-3 e-5 b d c a-1 b-3 c-4 
  \stemUp \fingerDown b-3 d-5 a c b g-1 a-3 b-4 
  a-3 c-5 g b a f-1 g-3 a-4 
  g b f a g e-1 f-3 g-4 
  f a e g f d-1 e-3 f-4 
  e g d f e c-1 d-3 e-4 
  d f c e d b-1 c-3 d-4 
  \beamLessSlant \fingerUp c e b d c \staffDown a-1 b-3 c-4 
  b d a c b g-1 a-3 b-4 
  a c g b a f-1 g-3 a-4 
  g b f a g e-1 f-3 g-4 
  f a e g f d-1 e-3 f-4 
  }
  c2
  \bar "|."
}