#(set-global-staff-size 20)

\header {
  title = "Sinfonia 4" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 790"
  mutopiatitle = "Sinfonia 4"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 790"
  mutopiainstrument = "Harpsichord, Piano"
  style = "Baroque"
  source = "Unknown"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  maintainerEmail = "olivier.vermersch (at) wanadoo.fr"
  lastupdated = "01/February/2002"
  
 footer = "Mutopia-2008/06/15-172"
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
  \stemUp \tu r16 d cis d a8 f' ~ f16 e d e a,8 g' ~ |
  g16 f e d a'4 ~ a16 gis fis gis gis8. a16 | %\break
  a4 ~ a16 d, cis d g4 ~ g16 cis,! b! cis |
  f4.  a8 g4 ~ g16 f e f | %\break

  % bars 5-8
  d4 r16 bes' a bes e,4 ~ e16 a g a |
  d,4 ~ d16 d e f g4 ~ g16 f e d | %\break
  c2 ~ c16 bes a bes g d' c d |
  g, bes a bes ~ bes c bes c a4 r8 f' ~ | %\break

  % bars 9-12
  f16 e8. r8 g8 ~ g16 f e f c8 a' ~ |
  a16 g f g c,8 bes' ~ bes16 a8. ~ a4 ~ | %\break
  a16 d, cis d g4 ~ g16 f e g f4 ~ |
  f16 e d e a,8 d ~ d16 c b c fis,8 b ~ | %\break

  % bars 13-16
  b16 a gis a ~ a gis fis gis r a gis a e8 c' ~ |
  c16 b a b e,8 d' ~ d16 c b c ees4 ~ | %\break
  ees16 d8. r8 fis g2 ~ |
  g16 fis bes a fis4 g16 d c d g,8 f' ~ | %\break

  % bars 17-20
  f16 e! d e c8 bes' ~ bes16 a g bes a g f e |
  d4~ d16 f e d cis4 ~ cis16 a d c | %\break
  bes2 ~ bes16 a gis b a g f g |
  f4 ~ f16 a g a  bes!8[ b]  c[ cis] | %\break

  % bars 21-23
  d2 ~ d4. d8 |
   cis[ c]  b[ bes] a4 gis8 g |
  fis f e4 d2\fermata \bar "|."
}

meltwo =  \relative c'' {
  % bars 1-2
  \stemDown \td R1 |
  r16 a gis a e8 c' ~ c16 b a b e,8 d' ~ |

  % bars 3-4
  d16 c b c 
  \once \override Tie #'staff-position = #-0.5
  f!4 ~ f16 
  b, a b \once \override Tie #'staff-position = #-1.0 e4 ~ |
  e8 a, d16 e d c! b8. cis16 cis4_\prall |

  % bars 5-8
  d16 d cis d g,4 ~ g16 c bes c f,4 ~ |
  f16 bes a c bes4 ~ bes16 c bes a bes a g f |
  e8 bes' ~ bes16 a g a f2 ~ |
  f4 e! r16 f e f c8 a' ~ |

  % bars 9-12
  a16 g f g c,8 bes' ~ bes16 a8. r8 f' ~ |
  f16 e8. r8 g ~ g16 f8. ~ f16 e d c |
  bes4 ~ bes16 a bes g cis!4 d16 bes a bes |
   gis8[ a]  fis[ f] e4 dis8 d |

  % bars 13-16
  cis c b4 a r |
  r2 r16 e'16 dis e a,8 g' ~ |
  g16 fis e! fis d!8 c' ~ c16 bes a bes c d c d |
  ees4 ~ ees16 d ees c d  r r8 r4 |
 
  % bars 17-20
  r2 r16 f, e f c8 a' ~ |
  a16 g f g bes,8 g' ~ g16 f e f a,8 f' ~ | 
  f16 e d f ees d cis d cis8 d e4 ~ |
  e8 a, d4 ~ d16 g f g e bes' a g |
 
  % bars 21-23
  a d, c'!8 ~ c16 bes a bes a g fis g d8 bes' ~ |
  bes16 a g a d,8 g ~ g16 f e! f b,8 e ~ |
  e16 d cis d ~ d cis b cis d2 |
}

melthree =  \relative c {
  % bars 1-4
  \stemDown  \tu d8 e f d a' b cis a |
  d4 ~ d16 c! b a e'4 e, |
  \stemUp a, r r2 |
  r16 d cis d a8 f'~ \stemDown f16 e d e a,8 g' ~ |

  % bars 5-8
  g16 f e d bes'!4 ~ bes16 e, d c a'4 ~ |
  a16 d, c d \stemUp g,8 f' ~ \stemDown f16 e d e c8 bes' ~ |
  bes16 a g a f8 ees' d c bes a |
  bes g c c, \stemUp f, g a f \stemDown |

  % bars 9-12
  c' d e c f g a f |
  c' d e c f16 c bes c f,8 f' ~ |
  f16 bes, a bes e,8 e' ~ e16 a, g a d,8 d' ~ |
  d c! ~ c16 b a b gis8 a ~ a16 gis fis gis |

  % bars 13-16
   a8[ dis,] \stemUp  e[ e,] a b c a \stemDown |
  e' fis gis e a4 ~ a16 g fis! g |
  \stemUp  d8[ c]  bes![ a] g16 g' fis g \stemDown d8 bes' ~ |
  bes16 a g a d,8 c' ~ c16 bes a bes c bes a g |

  % bars 17-20
  c8 d e c f,4 r8 f |
  bes a g bes a g f d |
  g f g e! a b cis a |
  d16 d, cis d \stemUp a8 f' ~ \stemDown f16 e d e a,8 g' ~ |

  % bars 21-23
  g16 fis e fis d8 c' bes a bes16 a g a |
  g fis e fis g f ees d \stemUp \td cis8 d ~ d16 cis b cis |
  d8 gis, a4 d,2\fermata
}


\score {
\context PianoStaff

<<
  \override Score.TimeSignature   #'style = #'C
  \context Staff = "up"   <<
    \override Staff.NoteCollision   #'merge-differently-dotted = ##t
    \time 4/4 \key d \minor \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>>

  \context Staff = "down" <<
    \time 4/4 \key d \minor \clef F \melthree>>
>>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
    }


\layout {}
}

