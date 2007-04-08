\version "1.6.9"

IILute = \notes\relative c'' {
  \key f \major
  \time 4/4
  \repeat "volta" 2 {
  \partial 8 r8 |
  \property Score.currentBarNumber = #183
  <c2_#'(italic "Arpeggio") f a> <e g bes> |
  %184
  <e g bes> <c f a> |
  %185
  <e g c> <d f bes> |
  <c e g> <cis e a> |
  %187
  <d f a> <f, d' f> |
  %188
  <f d' f> <cis'4 e a> <d f a> |
  <cis2 e a> <d4 f a>
  }
  \repeat "volta" 2 {
  r4 |
  %190
  <d2 fis a> <d g bes> |
  <e g bes> <c f a> |
  %192
  <c f a> <c e g> |
  <c f a> <e g bes> |
  <c4 f a> <c e g> <c f a> <c e g> |
  <c f a> <c e g> <a2 c f a>
  }
%{
  c16 f a f c f a f e g bes 
  g e g bes g |
  % 184
  e g bes g e g bes g c, f 
  a f c f a f |
  % 185
  e g c g e g c g d f bes 
  f d f bes f |
  % 186
  c e g e c e g e cis e a 
  e cis e a e |
  % 187
  d f a f d f a f f, d' f 
  d f, d' f d |
  % 188
  f, d' f d f, d' f d cis e 
  a e d f a f |
  % 189
  cis e a e cis e a e <a4 d, f >
  }
  \repeat "volta" 2 {
  r4 |
  % 190
  d,16 fis a fis d fis a fis d 
  g bes g d g bes g |
  % 191
  e g bes g e g bes g c, f 
  a f c f a f |
  % 192
  c f a f c f a f c e g 
  e c e g e |
  % 193
  c f a f c f a f e g bes 
  g e g bes g |
  % 194
  c, f a f c e g e c f a 
  f c e g e |
  % 195
  c f a f c e g e <a2^\fermata f a, c >
  }
%}
}

