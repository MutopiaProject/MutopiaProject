#(set-global-staff-size 20)

\header {
  title = "Sinfonia 7" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 793"
  mutopiatitle = "Sinfonia 7"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 793"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "07/february/2002"

 footer = "Mutopia-2008/06/15-175"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.46"

%
% a few macros for fine tuning
%

% force direction of tie
tu = \tieUp
td = \tieDown
tb = \tieNeutral


% explicit staff change 
su = { \change Staff = up}
sd = { \change Staff = down}


melone =  \relative c'' {
  % bars 1-4
  \stemUp r8  b[ e fis] g4 ~  |
  g8 fis a g fis e  |
  dis16 cis b cis d8 e fis4 ~ |
  fis8 e g fis e d | 

  % bars 5-9
  cis cis fis g! a4 ~  |
  a8 fis a g fis e |
  dis fis g a b g |
  e4.  e8[ fis g]  |
  a4 g2 ~ | 

  % bars 10-13
  g8 e g fis e d  |
  cis4.  d8[ e fis] |
  g4 fis8 e d4 ~ |
  d8 cis e d cis b | 
 
  % bars 14-17
  b4 r r |
  R2. |
  r8  fis[ b cis] d!4 ~  |
  d8 cis e d cis b | 

  % bars 18-21
  ais16 fis' e d cis fis cis b ais cis ais gis |
  fis4 r fis' ~ |
  fis16 b g fis e g e d cis g' cis, b |
  a4 r e' ~ | 

  % bars 22-24
  e16 a fis e d fis d cis b fis' b, a |
  g2. ~ |
  g2. | 

  % bars 25-27 
  fis8 a d e fis4 ~ |
  fis8 e g fis e d |
  cis16 e a g fis a fis e d a' d, cis | 

  % bars 28-30
  b d g fis e g e d cis g' cis, b |
  a2 ~ a16 a g fis |
  g e ais b cis fis, cis' d e fis g e | 

  % bars 31-33
  \stemDown fis g fis e d fis d cis b f' b, a! |
  \stemUp gis fis! gis a b gis b c \stemDown d gis, d' e |
  f b e, d c e c b a e' a, g! | 

  % bars 34-36
  \stemUp fis!16 e fis g a fis a b c fis, c' d |
  \stemDown ees a ees d c ees c bes \stemUp a c a g |
  fis e dis e fis dis fis g a dis, a' b! | 

  % bars 37-40
  c8 b e fis g4 ~ |
  g8 fis a g fis e |
  dis4 d2 ~ |
  d8 gis, a b c4 ~ | 

  % bars 41-44
  c8 e a b c4 ~ |
  c16 b a g fis a dis, e fis4 ~ |
  fis16 b dis, e e4 dis\trill |
  e2.\fermata \bar "|."
}

meltwo =  \relative c' {
  % bars 1-4
  \stemDown R2. |
  R2. |
  r8  fis[ b cis!] d4 ~ |
  d8 cis e d cis b |

  % bars 5-9
  ais16 gis fis gis a8 b c4 ~ |
  c8 a c b a g |
  fis4 r8  b[ e d!] |
  cis4.  cis8[ dis e] |
  fis4.  b,8[ e d!] |

  % bars 10-13
  cis4.  d8[ cis b] |
  ais4.  b8[ cis! d] |
  e8 d cis4. fis,8 |
  b2 ais4 |

  % bars 14-17
  b8 b, e fis g4 ~ |
  g8 fis a g fis e |
  dis4 r8 fis b16 a g fis |
  e4.  fis8[ g e] |

  % bars 18-21
  cis fis, cis' d e4 ~ |
  e16 g! fis e d fis d cis b fis' b, a! |
  g4 r g' ~ |
  g16 g e d cis e cis b a e' a, g |

  % bars 22-24
  \sd \stemUp fis4 \su \stemDown r fis' ~ |
  fis8 e16 d cis e cis b a8 b  |
  cis8 a16 b cis8 e a, cis |

  % bars 25-27
  d \sd \stemUp d,16 e fis d fis g a d, a' b  |
  cis a cis \su \stemDown d e a, e' fis g a b g |
  a2. |

  % bars 28-30
  g2. ~ |
  g16 g fis e d fis d cis b4 ~ |
  b8 r r4 r |

  % bars 31-33
  \sd \stemUp \tu r8  fis[ b cis] d4 ~ |
  d8 b d c! b a |
  gis e a b c4 ~ |

  % bars 34-36
  c8 a c b a g  |
  fis4. g8 a4 ~ |
   a8[ g]  c[ b a g] |

  % bars 37-40
  fis4 r \su \stemDown r8 b'  |
  e d! c b a g |
  fis c' b a gis b |
  e,4  fis!8[ gis!]  a[ e] |

  % bars 41-44
  a b c e a g |
  fis4 r r16 c b a |
  g4 fis8 g a4 |
  gis2. |
}

melthree =  \relative c {
  % bars 1-4
  \stemUp e8 e, \stemDown r  b''[ e d] |
  c4.  b8[ a c] |
  b4.  a8[ g fis] |
  e4.  fis8[ g e] |

  % bars 5-9
  fis4 ~ fis16 g! a g fis e dis e |
  dis4 r8 \stemUp  e[ c a] |
  b \clef G b' e fis g4 ~ |
  g8 fis a g fis e  |
  dis b e d cis b |

  % bars 10-13
  ais4.  b8[ cis d] |
  e16 d e fis g8 fis e d |
  \clef F \stemDown cis b ais fis b a |
  g e fis4 \stemUp fis, \stemDown

  % bars 14-17
  b16 fis' b a! g b g fis e b' e, d |
  c g' e d \stemUp c e c b a b c a \stemDown |
  b g' fis e d! fis d cis \stemUp b fis' b, a |
  g d' b a g b g fis e fis g e |

  % bars 18-21
  \stemDown fis8 fis' ais b cis fis,  |
  b4 r8 \stemUp  b,[ cis d] \stemDown |
  e4 r8  fis[ e d] |
  \stemUp cis4 r8  a[ b cis] \stemDown |

  % bars 22-24
  d4 r8  e[ d cis] |
  b16 b' g fis e g e d cis g' cis, b |
  \stemUp a e' cis b a cis a g fis cis' fis, e |

  % bars 25-27
  d8 r r4 r |
  R2. |
  r8  a'8[ d e] \stemDown fis4 ~ |

  % bars 28-30
  fis8 e g fis e d  |
  \stemUp cis fis, b cis \stemDown d4 ~ |
  \stemUp d8 cis e d cis b \stemDown |

  % bars 31-33
  ais4 b r8 d |
  e d f e d c |
  b gis a4 r8 c |

  % bars 34-36
  d c e d c a |
  d a d e! fis4 ~ \td |
  fis8 e a g fis e |

  % bars 37-40
  dis4 r8  b[ e d] |
  \stemUp c2. ~ \stemDown  \tu |
  c16 c' b a gis b gis fis e b' e, d |
  c f e d \stemUp c e c b a e' a, g! |

  % bars 41-44
  fis d' c b a c a g fis c' fis, e |
  dis4 r r |
  e b'2  |
  e,2.\fermata |
}


\score {
\context PianoStaff

<<
  \context Staff = "up"   <<
    \time 3/4 \key e \minor \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 3/4 \key e \minor \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


\layout {}
}
