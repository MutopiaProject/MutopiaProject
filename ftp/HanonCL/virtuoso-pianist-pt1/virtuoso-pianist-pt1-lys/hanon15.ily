% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST
% Fingering and annotations by Javier Ruiz-Alma

lblExNum = \markup \bold \huge "15."

LH = \relative e, {
  \repeat volta 2 {
  \subdivideBeams
  \stemDown \fingerDown \fingerNoPad
  c16-5 e-3 d-4 f-2 e-3 g-1 f-2 a-1 
  d,-5 f-3 e-4 g-2 f-3 a-1 g-2 b-1 
  e,-5 g-3 f-4 a-2 g-3 b-1 a-2 c-1 
  f,-5 a g b a-3 c-1 b-2 d-1 
  g,-5 b a c b-3 d-1 c-2 e-1 
  a,-5 c b d c-3 e-1 d-2 f-1 
  \fingerUp b, d c e d-3 f-1 e-2 g-1 
  c, e d f e-3 g-1 f-2 a-1 
  d, f e g f-3 a-1 g-2 b-1 
  e, g f a g-3 b-1 a-2 c-1 
  f, a g b a-3 c-1 b-2 d-1 
  g, b a c b-3 d-1 c-2 e-1 
  a, c b d c-3 e-1 d-2 f-1 
  b, d c e d-3 f-1 e-2 f-1 
  \bar "||"
  g-1 e-2 f-1 d-3 e-2 c-4 d-3 b-5 
  f'-1 d-2 e-1 c-3 d-2 b-4 c-3 a-5 
  e'-1 c-2 d-1 b-3 c-2 a b g 
  d'-1 b-2 c-1 a-3 b g a f 
  c'-1 a-2 b-1 g-3 a f g e 
  b'-1 g-2 a-1 f-3 g e f d 
  a'-1 f-2 g-1 e-3 f d e c 
  g'-1 e-2 f-1 d-3 e c d b 
  f'-1 d-2 e-1 c-3 d b c a 
  \fingerDown e'-1 c-2 d-1 b-3 c a b g 
  d'-1 b-2 c-1 a-3 b g a f 
  c'-1 a-2 b-1 g-3 a f g e 
  b'-1 g-2 a-1 f-3 g e f d 
  a'-1 f-2 g-1 e-3 f d e-3 d-4
  }
  c2
  \bar "|."
}

RH = \relative e {
  \repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp \fingerNoPad
  c16-1 e-2 d-1 f-3 e-2 g-4 f-3 a-5 
  d,-1 f-2 e-1 g-3 f-2 a-4 g-3 b-5 
  e,-1 g-2 f-1 a-3 g-2 b-4 a c 
  f,-1 a-2 g-1 b-3 a-2 c b d 
  g,-1 b-2 a-1 c-3 b d c e 
  \beamLessSlant a,-1 c-2 b-1 d-3 c \staffUp e d f 
  \fingerDown b,-1 d-2 c-1 e-3 d f e g 
  c,-1 e-2 d-1 f-3 e g f a 
  d,-1 f-2 e-1 g-3 f a g b 
  e,-1 g-2 f-1 a-3 g b a c 
  f,-1 a-2 g-1 b-3 a c b d
  \stemDown \fingerUp g,-1 b-2 a-1 c-3 b d c e 
  a,-1 c-2 b-1 d-3 c e d f 
  b,-1 d-2 c-1 e-3 d f e-3 f-4 
  \bar "||"
  g-5 e-3 f-4 d-2 e-3 c-1 d-2 b-1 
  f'-5 d-3 e-4 c-2 d-3 b-1 c-2 a-1 
  e'-5 c d b c-3 a-1 b-2 g-1 
  \stemUp \fingerDown d' b c a b g a-2 f-1 
  c' a b g a f g-2 e-1 
  b' g a f g e f-2 d-1 
  a' f g e f d e-2 c-1 
  g' e f d e c d-2 b-1 
  f' d e c d b c-2 a-1 
  \beamLessSlant \fingerUp e' c d b c \staffDown a b-2 g-1 
  d' b c a b g a-2 f-1 
  c' a b g a f g-2 e-1 
  b' g a f g e f-2 d-1
  a' f g e f-3 d-1 e-3 d-2
  }
  c2
  \bar "|."
}