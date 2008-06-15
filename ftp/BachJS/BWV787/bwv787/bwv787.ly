#(set-global-staff-size 20)

\header {
  title = "Sinfonia 1" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 787"
  mutopiatitle = "Sinfonia 1"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 787"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "30/December/2001"

 footer = "Mutopia-2008/06/15-142"
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


%
% Warning: if you change papersize you may tune the last tie on bar 17.
% This is not very good but I didn't find a better way to handle properly 
% the collision.
%
% One may print the whole score on one page by removing the \break and 
% using paper16 (and good eyes :) )
% 

melone =  \relative c'' {
  % bars 1-4
  r16 g a b c d e f g f g a f a g f |
  e2 ~ e4 fis | \break
  g8 f! e4 d8 e16 f d4 ~ |
  d8 g16 f e4 ~ e8 e d4 ~ | \break

  % bars 5-9
  d4. c8 ~ c b16\prall a b c d b |
  g4 ~ g16 c d e a, b a b b8.\prall a32 b | \break
  c8 g c4 ~ c8 b16\prall a d4 ~ |
  d16 b c d e4 ~  e8[ a] ~  a[ g] ~ | \break

  % bars 10-13
  g  fis16 e fis g a fis d4 ~ d16 g a b |
  \stemDown e, fis e fis fis8. e32 fis g16 a g fis e d c b \stemNeutral | \break
  a b a g a fis g a \stemUp b4~ \stemNeutral b16 g a bes |
  a e f g a b! cis d e d e f \stemDown e bes' a g \stemNeutral | \break

  % bars 14-17
  \stemUp f g f e d cis d e f4 fis |
  g f! ~ f8 e16 d e4 ~ | \break
   e8[ d] ~  d[ c] ~ c b16\prall a b8 d |
  g4 ~ g16 a f g a4 b | \break

  % bars 17-21
  c bes a r16 e d c |
  b d e f g2 ~ g16 c, f e | \break 
  f4 e d2 ~ |
  d16 f e d c2 b!4 |
  c1\fermata \bar "|."
}

meltwo =  \relative c' {
  % bars 1-4
  R1 |
  r16 c d e f g a b c b c d c e d c |
  b8 d8 ~ d c ~ c4 b ~ |
  b r16 d c b a4. a8 |

  % bars 5-8
  g f e4 d2 ~ |
  d16 f e d c \sd \stemUp b a g f g f e f d e f |
  e4 \su \stemDown r8 e' fis4 \stemNeutral r16 c' b a |
  \stemDown g4 ~ g16 g c b c4 b4 \stemNeutral |

  % bars 9-12
  \stemDown a2 ~ a16 c b a g fis e \sd \stemUp \tu d |
  c d c b c a b c b4 ~ b16 b a g  |
  fis8 r r4 r16 d' e f! e4 ~ |
  e16 r r8 r4 r8 a,8 b cis |

  % bars 13-16
  d16 d \su \stemDown \td e f g a b! cis! d cis d e c ees d c |
  bes a bes c a c bes a g4. g8 |
  f4 e8 r r2 |
  r16 f g a b c d e f e f g f a g f |

  % bars 17-18
   e8[ a] ~  a[ g] ~ g16 c, d e
  \once \override Tie #'staff-position = #-0.5
  f4 ~ | f 
  r16 f e d c d c bes a4 ~ |

  % bars 19-21
   a8[ d] ~  d[ c] ~ c b16 a b c d b |
  g4 r16 bes a g f g f e f d e f |
  e1 |
}

melthree =  \relative c {
  % bars 1-4
  c4 r8 c' b g a b |
  c4 r8 b a g a d, |
  g,16 g' a b c d e f g f g a f a g f |
  e f e d c b a g f g f e f d e f |

  % bars 5-8
  e g, a b c d e f g f g a f a g f |
  e2 ~ \td e4 d |
  \stemDown c16 d c b \stemNeutral a g fis e d e' d c b a g fis |
  \stemUp e f'! e d \stemNeutral c b a g fis d e fis g a b c |

  % bars 9-12
  \stemUp d c d e \stemNeutral c e d c b4 b' ~ \td |
  b a e8 d \stemDown c4 \stemNeutral |
  \stemDown d16 g fis! e d c b a g a g f! g e f g |
  cis,8 d' cis b a g' f e \stemNeutral |

  % bars 13-16
  d r r4 r16 g' f e d c bes a |
  g c, d e! f g a bes c bes c d bes d c bes |
  a g a b! c d e f g f g a f a g f |
  e4 r \clef G r16 c' b a g f e d \clef F |

  % bars 17-21
  c d c bes c a bes c f, g f e d c b! a |
  g a' g f e d c bes a bes' a g f e d c |
  b! g a b c d e f g f g a f a g f |
  e8 f16 g a8 c, d e16 f \stemUp g8 g, |
  c1\fermata
}


\score {
\context PianoStaff

<<
  \override Score.TimeSignature   #'style = #'C
  \context Staff = "up"   <<
    \time 4/4 \key c \major \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 4/4 \key c \major \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 70 4)
      }
    }


\layout {}
}

