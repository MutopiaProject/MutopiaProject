\header {
  enteredby =  "Allen Garvin"
  maintainer =    "Allen Garvin"
  maintainerEmail = "AGarvin@tribalddb.com"
  copyright =  "Public Domain"
  filename =   "bach-invention-14.ly"
  title =   "Invention 14"
  opus =    "BWV 785"
  composer =   "Johann Sebastian Bach (1685-1750)"
  style =   "Baroque"
  source =  "Bach-Gesellschaft"
  lastupdated = "2005/12/25"

  mutopiainstrument = "Harpsichord, Piano"
  mutopiatitle =      "Invention 14"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV 785"

 footer = "Mutopia-2008/06/15-72"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.46"

voiceone =  \relative c'' {
  \set Staff.midiInstrument = "harpsichord"
  \key bes \major
  \time 4/4

  r16  bes32[ c d c bes16]  f'[ d bes' f]
  d[ f32 ees d ees f16]  bes,[ d f, aes] |                         % bar 1
  g[ ees32 f g f ees16]  bes'[ g ees' bes]
  g[ bes32 aes g aes bes16]  ees,[ g c, ees] |                     % bar 2
  a,[ c32 d ees d c16]  a'[ f c' a]
  ees'[ f,32 g a g f16]  c'[ a f' c] |                             % bar 3
  d8 r r16  g32[ f ees f g16] c,8 r r16  f32[ ees d ees f16] |     % bar 4
  bes,8 r r16  ees32[ d c d ees16]  a,[ c32 bes a bes c16] f,8 r | % bar 5
  f'8[ f, a c] f4 r |                                              % bar 6
  r8  f,[ bes d] f4 r |                                            % bar 7
  r8  g,[ bes c] e4 r |                                            % bar 8
  r16  f,32[ g a g f16]  c'[ a f' c]
  a'[ ees32 d c d ees16]  a,[ c fis, a] |                          % bar 9
  bes8[ d bes g]  aes[ f' aes, f] |                                % bar 10
  g16[ c,32 d ees d c16]  g'[ ees c' g]
  d'[ aes32 g f g aes16]  d,[ f b, g'] |                           % bar 11
  ees8 r r16  c32[ d ees d c16]
  c'8.[ bes16]  a[ f32 g a g f16] | \break                         % bar 12
  f'8.[ ees16]  d[ bes32 c d c bes16]  bes'8.[ aes16]
  g[ bes32 aes g aes bes16] |                                      % bar 13
  ees,[ g32 f ees f g16]  c,[ ees32 d c d ees16]
  a,[ c32 d ees d c16]  f[ aes,32 g f g aes16] |                   % bar 14
  g[ bes32 c d c bes16]  ees[ g,32 f ees f g16]
  f[ a32 bes c bes a16]  d[ f,32 ees d ees f16] |                  % bar 15
  ees[ g32 a bes a g16]  c[ ees,32 d c d ees16] d4
  \stemUp r16  bes'32[ c d c bes16] \stemNeutral |                 % bar 16
  f'[ d bes' f]  d[ f32 ees d ees f16]
  bes,[ ees bes ees]  g,[ ees32 f g f ees16] |                     % bar 17
  bes'[ g ees' bes]  g[ bes32 aes g aes bes16]
  ees,8[ ees'] ~  ees16[ ees32 d c d ees16] |                      % bar 18
  f,8[ ees'] ~  ees16[ c32 d ees d c16]
  f[ d32 c bes c d16]  f,[ bes c a] |                              % bar 19
  bes1\fermata \bar "|."                                           % bar 20

}

voicetwo =  \relative c' {
  \set Staff.midiInstrument = "harpsichord"
  \key bes \major
  \time 4/4
  \clef "bass"

  bes8[ bes, d f] bes4 r |                                         % bar 1
  r8  bes,[ ees g] bes4 r |                                        % bar 2
  r8  bes,[ c ees] a4 r |                                          % bar 3
  r16  bes32[ c d c bes16] ees8 r
  r16  a,32[ bes c bes a16] d8 r |                                 % bar 4
  r16  g,32[ a bes a g16]  c[ c,32 d ees d c16]
  f8[ f,] r16  c''[ a f] |                                         % bar 5
  r16  f32[ g a g f16]  c'[ a f' c]
  a[ c32 bes a bes c16]  f,[ a c, ees] |                            % bar 6
  d[ bes32 c d c bes16]  f'[ d bes' f]
  d[ f32 ees d ees f16]  bes,16[ d g, bes] |                       % bar 7
  e,[ g32 a bes a g16]  e'[ c g' e]
  bes'[ c,32 d e d c16]  g'[ e c' g] |                             % bar 8
  a8[ c a f]  fis[ a fis d] |                                      % bar 9
  g16[ g,32 a bes a g16]  d'[ bes g' d]
  bes'[ aes32 g f g aes16]  d,[ f bes, d] |                        % bar 10
  ees8[ g ees c]  b[ d b g] |                                      % bar 11
  c16[ c,32 d ees d c16]  c'8.[ bes16]
  a[ f32 g a g f16]  f'8.[ ees16] |                                % bar 12
  d[ bes32 c d c bes16]  bes'8.[ aes16]
  g[ ees32 f g f ees16]  ees'8.[ d16] |                            % bar 13
  c[ ees32 d c d ees16]  a,[ c32 bes a bes c16]
  f,[ a32 bes c bes a16]  d[ f,32 ees d ees f16] |                 % bar 14
  ees[ g32 a! bes a g16]  c[ ees,32 d c d ees16]
  d[ f32 g a g f16]  bes[ d,32 c bes c d16] |                      % bar 15
  c[ ees32 f g f ees16]  a[ c,32 bes a bes c16]
  bes[ bes'32 c d c bes16]  f'[ d bes' f] |                        % bar 16
  d[ f32 ees d ees f16]  bes,[ d f, aes]
  g[ ees32 f g f ees16]  bes'[ g ees' bes] |                       % bar 17
  g[ bes32 aes g aes bes16]  ees,[ g bes, d]
  c[ f,32 g a! g f16]  c'[ a ees' c] |                             % bar 18
  a[ c32 bes a bes c16]  f,[ a c, ees]
  d[ bes'32 c d c bes16]  f'8[ f,] |                               % bar 19
  bes1\fermata \bar "|."                                           % bar 20

}

\score {
   \context GrandStaff <<
    \context Staff = "one" <<
      \voiceone
    >>
    \context Staff = "two" <<
      \voicetwo
    >>
  >>

  \layout{ }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 65 4)
      }
    }


}

%{
changes by Urs Metzger, 2005/12/25
version 1.6.10 => 2.6.4
voiceone, bar 11: g16[ c32 d ees d c16]  g[ ees c' g] => g16[ c,32 d ees d c16]  g'[ ees c' g]
voicetwo, bar 6, 4/4 + bar 7, 1/4, one octave down
midiInstrument none = "harpsichord"
%}

%{
changes by Chris Sawer, 2005/12/27
remove line-width command in layout section
%}

