% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST
% Fingering and annotations by Javier Ruiz-Alma

lblExNum = \markup \bold \huge "4."

LH = \relative e, {
\repeat volta 2 {
  \subdivideBeams
  \stemDown \fingerDown \fingerNoPad
  \posScriptC c16-5_"(1)" d-4 c-5 e-3 a-1 g f e 
  d-5 e-4 d-5 f-3 b-1 a g f 
  e-5 f e g c b a g 
  f-5 g f a d c b a 
  g-5 a g b e d c b 
  a-5 b a c f e d c 
  \fingerUp b-5 c b d g f e d 
  c-5 d c e a g f e 
  d-5 e d f b a g f 
  e-5 f e g c b a g 
  f-5 g f a d c b a 
  g-5 a g b e d c b 
  a-5 b a c f e d c 
  b-5 c b d g f e d 
  \bar "||"
  g-1 f-2 g-1 d-3 b-5 c d e 
  f-1 e-2 f-1 c-3 a-5 b c d 
  e-1 d e b g a b c 
  d-1 c d a f g a b 
  c-1 b c g e f g a 
  b-1 a b f d e f g 
  a-1 g a e c d e f 
  g-1 f g d b c d e 
  f-1 e f c a b c d 
  \fingerDown e-1 d e b g a b c 
  d-1 c d a f g a b 
  c-1 b c g e f g a 
  b-1 a b f d e f g 
  a-1 g a e c d e f
  }
  c2
  \bar "|."
}

RH = \relative e {
\repeat volta 2 {
  \subdivideBeams
  \staffDown \stemUp \fingerNoPad
  c16-1 d-2 c-1 e-2 a-5 g f e 
  d-1 e-2 d f-2 b-5 a g f 
  e-1 f e g c b a g 
  f-1 g f a d c b a 
  g-1 a g b e d c b 
  \beamLessSlant a-1 b a c \staffUp f e d c 
  \fingerDown b-1 c b d g f e d 
  c-1 d c e a g f e 
  d-1 e d f b a g f 
  e-1 f e g c b a g 
  f-1 g f a d c b a 
  \stemDown \fingerUp g-1 a g b e d c b 
  a-1 b a c f e d c 
  b-1 c b d g f e d 
  \bar "||" \mark \markup{ \smaller "(1)"}
  g-5 f-4 g-5 d-2 b-1 c d e 
  f-5 e-4 f-5 c-2 a-1 b c d 
  e-5 d e b g a b c 
  d-5 c d a f g a b 
  c-5 b c g e f g a 
  \stemUp \fingerDown b-5 a b f d e f g 
  a-5 g a e c d e f 
  g-5 f g d b c d e 
  \beamLessSlant f-5 e f c \staffDown a b c d 
  \fingerUp e-5 d e b g a b c 
  d-5 c d a f g a b 
  c-5 b c g e f g a 
  b-5 a b f d e f g 
  a-5 g a e c d e f
  }
  c2
  \bar "|."
}

