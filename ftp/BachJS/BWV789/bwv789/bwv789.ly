#(set-global-staff-size 20)

\header {
  title = "Sinfonia 3" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 789"
  mutopiatitle = "Sinfonia 3"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 789"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "30/December/2001"

 footer = "Mutopia-2008/06/15-143"
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
  % bars 1-5
  \stemUp \tu r8 fis16 g a8 c, b e16 fis g8 b, |
  a d16 e fis8 a, g16 fis' e d cis b' a g |
  fis e d e fis e fis gis a4 e ~ |
  e d ~ d cis ~ |
  cis16 e d cis b8 gis' a2 ~ | 

  % bars 6-9
  a16 cis, d e fis g fis e dis b cis! dis e fis e d  |
  cis a b cis d e d cis b4 e ~  | 
   e8[ a,]  d8.[ e16] cis b a b cis b cis dis |
   e8[ b]  e8.[ fis16] d! cis b cis d cis d e | 

  % bars 10-13
  fis e d e fis8 a,! \stemDown gis cis16 d e8 g, \stemUp |
  fis b16 cis d8 fis, e16 d' cis b \stemDown ais g' fis e | 
  d cis b cis d b cis d \stemUp eis, gis a b cis4 ~ |
  cis16 fis, gis a b4 ~ b16 eis, fis gis a4 ~ | 

  % bars 14-17
  a16 a gis fis eis4 fis8 fis'16 g! a8 c, |
  b4 fis' ~ fis16 g fis e dis c' b a | 
  g a g fis e fis g e cis!8 e16 fis g8 b, |
  a2(   a16) g fis g a g a b | 

  % bars 18-21
  c b c d e d c b a g a b c b c d |
  b a g a b c d8 ~ d4 c ~ | 
  c b ~  b8[ g']  a,[ fis']  |
  g16 d e fis g b a g fis e d e fis g fis e  | 

  % bars 22-25
  dis b cis! dis e fis e d cis a b cis d e d cis |
  b a g fis e8 cis' d fis16 g a8 c, | 
  b e16 fis g8 b, a d16 e fis8 a,  |
  g16 fis' e d cis4 d2\fermata \bar "|." | 
}

meltwo =  \relative c'' {
  % bars 1-5
  \stemDown \td R1 |
  R1 |
  r2 r8 cis16 d e8 g,! |
  fis b16 cis d8 fis, e a16 b cis8 e,  |
  d16 cis' b a gis fis' e d cis b a b cis a b cis |

  % bars 6-9
  d4 a ~ a g ~ |
  g fis ~fis16 a g fis e d' cis b |
  a g fis g a gis a b e,2 ~ |
  e8 g16 a b a b cis fis,4 b, ~ |

  % bars 10-13
  b16 ais b cis d e d \sd \stemUp \tu cis b gis ais b cis d cis b |
  ais fis gis ais b4 ~ b16 b cis d e8 ais, |
  b a! gis fis gis4 ~ gis16 \su \stemDown \td gis'! fis e! |
  dis4 ~ dis16 fis e d cis4 ~ cis16 e d! cis |

  % bars 14-17
  b4 ~ b16 d cis b a8 r r4 |
  r8 fis'16 g a8 c, b2 ~ |
  b8 e16 fis g8 b, a4 e' ~ |
  e16 fis e d cis b' a g fis4 r |

  % bars 18-21
  r8 a16 b c!8 e, fis16 g8. ~ g8 fis |
  g4 r16 c b a gis e fis! gis a b a g  |
  fis d e fis g a g fis e8 r r4 |
  r2 r8 fis16 g a8 c, |

  % bars 22-25
  b e16 fis g8 b, a d16 e fis8 a, |
  g16 fis' e d cis b' a g fis8 a ~ a4 ~ |
  a g ~ g fis ~ |
  fis16 a g fis e b' a g fis2 |
}

melthree =  \relative c' {
  % bars 1-5
  \stemDown \td d4 r8 fis, g4  r8 e |
  fis4 r8 d  b'[ g]  a[ a,] |
  d d' cis b a16 gis a b cis d cis b |
  ais fis gis ais b cis b a gis e fis gis a b a g |
   fis8[ d] \stemUp  e[ e,] a16 b cis d \stemDown e fis g! e |

  % bars 6-9
  fis e fis g a8 c, b e16 fis g8 b, |
  \stemUp a d16 e fis8 a, g16 fis' e d \stemDown cis b' a g   |
  fis e d e fis e fis gis  a8[ e]  a8.[ b16] |
  g!16 fis e fis g fis g a b8 a g4 |

  % bars 10-13
  fis2 ~ fis4 e ~ |
  e r16 d e fis g4 fis |
  b,2 ~ b4 a ~ |
  \stemUp a~ \stemDown  a16 a' gis fis eis cis dis eis fis8 b,16 cis |

  % bars 14-17
  \stemUp  d8[ b]  cis[ cis,] fis4 r8 \stemDown fis'16 g |
  a g a b c fis, g a dis,8 fis16 g a8 dis, |
  e4 r8 e16 fis g fis g a b e, fis g |
  cis,8 e16 fis g8 cis, \stemUp d a16 b c8 e, \stemDown |
 
  % bars 18-21
  d1 |
  g8 b'16 c d8 f, e a16 b c8 e, |
  d g16 a b8 d, c16 b' a g fis e' d c! |
  b a g a b a b cis! d4 a ~ \tu |

  % bars 22-25
  a g ~ g fis ~  |
  fis16 e fis g a g fis e d cis d e fis g fis e |
  \stemUp dis b cis! dis \stemDown e fis e d \stemUp cis a b cis \stemDown d e d cis |
   b8[ g']  a[ a,] \stemUp d,2\fermata 
}


\score {
\context PianoStaff

<<
  \override Score.TimeSignature   #'style = #'C
  \context Staff = "up"   <<
    \override Staff.NoteCollision   #'merge-differently-dotted = ##t
    \time 4/4 \key d \major \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 4/4 \key d \major \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 70 4)
      }
    }


\layout {}
}

