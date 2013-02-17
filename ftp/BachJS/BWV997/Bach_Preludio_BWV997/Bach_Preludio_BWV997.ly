\header 
{
  title     =  "Preludio"
  opus      =  "BWV 997"
  composer  =  "Johann Sebastian Bach (1685-1750)"
  enteredby =  "Ian C. Williamson"

  % mutopia headers.
  mutopiatitle = "Prelude to Suite in C Major"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 997"
  mutopiainstrument = "Guitar"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Ian C. Williamson"
  maintainerEmail = "iwilliamson@home.com"
  source = "Transcribed by ear"
  
 footer = "Mutopia-2013/02/17-44"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.1"
#(set-global-staff-size 16)

global =  
{
  \key c \major
  \time 4/4
  \clef "treble_8"
}

melody =  \relative c'' \new Voice = "melody" 
{
   \global
   \voiceOne

   % 1
   r8 a16 b c8 e gis a r a |
   r8 a,16 b c8 e gis a r a |
   r8 a,16 b c8 e gis a r a |
   r16 g f e d c b a gis a b f e8 d' | 
   c16 b a8 r16 gis a b c e d c f e d c | 
   d f g,8  r16 a b c d f e d g f e d |
   e d e g b, a b g' c, b c g' d c d f |
   e d e c e b e a, gis fis gis f' gis, e' gis, d' |
   c16 b c e a8 c8 ~ c16 e,16 dis8 ~ dis16 e16 fis g |

   % 10
   a c, b8 ~ b16 cis16 dis e fis gis, a8 ~ a16 c16 b a |
   g b e dis e b c ais b dis fis e fis b, c ais |
   b e g fis g b, c ais b fis' a8 ~ a16 c,16 b ais |
   g b e fis g8 fis e16 a, gis8 ~ gis16 b16 c d |
   c f, e8 ~ e16 g16 a b a e dis8 ~ dis16 c''16 b a |
   g a b e, g fis e dis e g ais,8 ~ ais16 cis16 b ais |
   b cis dis e fis8 a, g e' fis, dis' |
   r8 e,16 fis g8 b dis e r e |
   r8 e,16 fis g8 b dis e r e |
   r8 e,16 fis g8 b dis e r e |

   % 20
   r16 d c b a g fis e dis e fis c b8 a' |
   g16 fis e8 r16 dis e fis g a b g c b a g |
   a c b a gis a b c d f e d e d c b |
   c b a8 r16 gis a b c e d c f e d c |
   d f e d cis d e f g bes a g a g f e |
   f e f a cis, b cis a' d, cis d a' e d e g |
   f e d e f d f c bes a bes a' bes, g' bes, f' |
   e d c d e c e bes a g a g' a, f' a, e' |
   d c bes c d bes d a g f g f' g, e' g, d' |
   cis b a8 r16 e f g cis, bes' a g e' g, f e |

   % 30
   f a g f d' f, e d cis bes' a g e' g, f e |
   f a g f d' f, e d ees f ees d ees aes g fis |
   g aes g fis g ees' d cis d8 a g'16 f e d |
   d8 f16 d a8 bes r e16 f a8 bes8 |
   r e,16 c gis8 a8 r dis16 e gis8 a |
   r16 g f e d c b a gis a b f e d' c b |
   c b c e gis, fis gis e' a, gis a e' b a b d |
   c b a b c a c g f e f e' f, d' f, c' |
   b a g a b g b f e d e d' e, c' e, b' |
   a g f g a f a e dis cis dis c' dis, b' dis, a' |

   % 40
   gis f' e d b' f e d gis, f' e d b' f e d |
   cis bes a g e' bes a g cis, bes' a g e' bes a g |
   fis ees' d c a' ees d c fis, ees' d c a' ees d c |
   b aes g f d' aes g f b, aes' g f d' aes g f |
   e des' c bes g' des c bes e, des' c bes g' des c bes |
   a g a cis d8 f ~ f16 a, gis8 ~ gis16 a b c |
   d f, e8 ~ e16 fis gis a b cis, d8 ~ d16 f e d |
   c e a gis a e f dis e gis b a b e, f dis |
   e a c b c e, f dis e b' d8 ~ d16 f e d |
   c e a b c8 b a16 d, cis8 ~ cis16 e f g |

   % 50
   f bes, a8(  a16) c d e d a gis8 ~ gis16 f' e d |
   c d c b c f e dis e f e dis e bes' a gis |
   a8 e d'16 c b a a b c a c b a g |
   fis g a fis a g fis e <dis a'>2 |
   <b e gis>4 r16 e, fis gis a b c d e d f e |
   d c b a gis f e d c8 a'' b, gis' |
   <c, e a>4 s2. \bar "|."
}

bass =  \relative c' \new Voice = "bass" 
{
   \global
   \voiceTwo

   % 1
   a2. g'4 |
   f2. e4  |
   d2. c4  |
   d2 e, |
   a4 c f a, |
   b d g b, |
   c f e g |
   c, c b e |
   a,4 g' fis e |

   % 10
   dis fis dis b |
   e b dis b |
   e b dis b |
   e8 c a b c4 b |
   a g fis b |
   e,8 g a b c e g cis, |
   dis fis dis b e c a b |
   e,2. d'4 |
   c2. b4 | a2. g4 | 
   a2 b |

   % 20
   e,4 g c e, | 
   f d' b gis |
   a c f a, |
   b g' e cis |
   d g f a,
   d d g8 f e d |
   c4 c f8 e d c |
   bes a g f e d' cis e |
   a,4 a e cis' |
   a a e cis' |

   % 30
   d f, g4. a8 |
   bes4. e,8 f a a a |
   d4. d16 cis d4. d8 |
   c4. c16 b c4. c8 |
   b2 e, |
   a4 d c e |
   a, a d8 c b a | 
   g'4 g, c8 b a g |
   f e d' c b a fis b | 
   e,4 e e2 |

   % 40
   a4 a a2 |
   d4 d d2 |
   g,4 g g2 |
   c4 c c2 |
   f,4 f' b, d |
   gis, b e, gis |
   a e gis e |
   a e gis e |
   a8 f' d e f4 e |
   d c b e, |

   % 50
   a4. b8 c4. d8 |
   c a e' e <fis dis'>2 |
   <a c>2 b,2 |
   d2 <c e>2 |
   <gis e'>2 a8 f' d e, |
   a4 s2. 
}

guitar_staff = \new Staff
<<
   \set Staff.midiInstrument = "acoustic guitar (nylon)"

   \transpose c' c \melody
   \transpose c' c \bass
>>

\score 
{ 
   % Music
   \guitar_staff

   % Paper output
   \layout 
   {
   }

   % Midi output
   
  \midi {
    \tempo 4 = 80
    }
}
