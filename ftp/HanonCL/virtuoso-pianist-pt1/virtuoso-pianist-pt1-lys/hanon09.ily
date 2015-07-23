% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST
% Fingering and annotations by Javier Ruiz-Alma

lblExNum = \markup \bold \huge "9."

LH = \relative e, {
  \subdivideBeams
  \stemDown \fingerDown \fingerNoPad
  \repeat volta 2 {
  c16-5 e-4 f-3 e-4 g-2 f-3 a-1 g-2
  d-5 f-4 g-3 f-4 a-2 g-3 b-1 a-2 
  e-5 g-4 a g b a c b 
  f-5 a-4 b a c b d c 
  g-5 b-4 c b d c e d 
  a-5 c-4 d c e d f e 
  \fingerUp b-5 d-4 e d f e g f 
  c-5 e-4 f e g f a g 
  d-5 f-4 g f a g b a 
  e-5 g-4 a g b a c b 
  f-5 a-4 b a c b d c 
  g-5 b-4 c b d c e d 
  a-5 c-4 d c e d f e 
  b-5 d-4 e d f e g f 
  \bar "||"
  g-1 e-2 d-3 e-2 c-4 d-3 b-5 c-4 
  f-1 d-2 c-3 d-2 b-4 c-3 a-5 b-4 
  e-1 c-2 b c a b g a 
  d-1 b-2 a b g a f g 
  c-1 a-2 g a f g e f 
  b-1 g-2 f g e f d e 
  a-1 f-2 e f d e c d 
  g-1 e-2 d e c d b c 
  \fingerDown f-1^[ d-2 c d b c a b ]
  e-1 c-2 b c a b g a 
  d-1 b-2 a b g a f g 
  c-1 a-2 g a f g e f 
  b-1 g-2 f g e f d e 
  a-1 f-2 e f d e d e 
  }
  c2
  \bar "|."
}

RH = \relative e {
  \repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp \fingerNoPad
  c16-1 e-2 f-3 e-2 g-4 f-3 a-5 g-4 
  d-1 f-2 g-3 f-2 a-4 g-3 b-5 a-4 
  e-1 g-2 a g b a c b 
  f-1 a-2 b a c b d c 
  g-1 b-2 c b d c e d 
  \beamLessSlant a-1 c-2 d c \staffUp e d f e 
  \fingerDown b-1 d-2 e d f e g f 
  c-1 e-2 f e g f a g 
  d-1 f-2 g f a g b a 
  e-1 g-2 a g b a c b 
  f-1 a-2 b a c b d c 
  \stemDown \fingerUp g-1 b-2 c b d c e d 
  a-1 c-2 d c e d f e 
  b-1 d-2 e d f e g f 
  \bar "||"
  g-5 e-4 d-3 e-4 c-2 d-3 b-1 c-2 
  f-5 d-4 c-3 d-4 b-2 c-3 a-1 b-2 
  e-5 c-4 b c a b g a 
  \stemUp \fingerDown d-5 b-4 a b g a f g 
  c-5 a-4 g a f g e f 
  b-5 g-4 f g e f d e 
  a-5 f-4 e f d e c d 
  g-5 e-4 d e c d b c 
  f-5 d-4 c d b c a b 
  \beamLessSlant e-5 c-4 b c \staffDown a b g a 
  \fingerUp d-5 b-4 a b g a f g 
  c-5 a-4 g a f g e f 
  b-5 g-4 f g e f d e 
  a-5 f-4 e f d e d e 
  }
  c2
  \bar "|."
}

