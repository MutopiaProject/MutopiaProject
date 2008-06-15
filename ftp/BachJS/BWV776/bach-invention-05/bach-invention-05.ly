\header {
  enteredby = "Allen Garvin"
  maintainer = "Allen Garvin"
  maintainerEmail = "AGarvin@tribalddb.com"
  copyright = "Public Domain"
  filename = "bach-invention-05.ly"
  title = "Invention 5"
  opus = "BWV 776"
  composer = "Johann Sebastian Bach (1685-1750)"
  style = "Baroque"
  source = "Bach-Gesellschaft"
  lastupdated = "2005/12/25"

  mutopiainstrument = "Harpsichord, Piano"
  mutopiatitle =      "Invention 5"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV 776"
 
 footer = "Mutopia-2008/06/15-55"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.46"

voiceone =  \relative c' {
  \set Staff.midiInstrument = "harpsichord"
  \key ees \major
  \time 4/4

  r8  ees16[ d]  ees8[\mordent f] g4\mordent aes |                 % bar 1
  r8  f16[ ees]  f8[\mordent g] aes4\mordent bes |                 % bar 2
  g8[ c bes\prall aes]  g16[ aes bes aes]  g8[ f] |                % bar 3
  ees[ g bes ees] ~  ees16[ c d ees]  f8[ ees] |                   % bar 4
  d16[ ees d\prall c]  d[ ees c d]  bes[ bes' a bes]  g[ a f g] |  % bar 5
  ees[ g f g]  ees[ f d ees]  c[ bes' a g]  a[ bes g a] |          % bar 6
  bes,[ bes' a g]  a[ bes g a]  f[ bes aes g]  f[ g ees f] |       % bar 7
  d[ g f ees]  d[ ees c d]  f,[ ees' d c]  d[ ees c d] |           % bar 8
  ees8[ bes16 aes]  bes8[\mordent c] des4\mordent ees |            % bar 9
  r8  c16[ bes]  c8[\mordent d!] ees4\mordent f |                  % bar 10
  r8  d16[ c]  d8[\mordent ees] f4\mordent g |                     % bar 11
  ees16[ f ees\prall d]  ees[ f d ees]
  c[ c' bes c]  aes[ bes g aes] |                                  % bar 12
  f[ aes g aes]  f[ g ees f]  d[ c' b a]  b[ c a b] |              % bar 13
  c,[ c' bes! aes!]  bes[ c aes bes]  g[ c bes aes]  g[ aes f g] | % bar 14
  e[ aes g f]  e[ f d e]  g,[ f' e d]  e[ f d e] |                 % bar 15
  f8[ f,16 e]  f8[\mordent g] aes4\mordent bes |                   % bar 16
  r8  g16[ f]  g8[\mordent aes] bes4\mordent c |                   % bar 17
  aes8[ des c\prall bes]  a16[ bes c bes]  a8[ g] |                % bar 18
  f[ a c ees] ~  ees16[ c des ees]  f8[ ees] |                     % bar 19
  des16[ ees des\prall c]  des[ ees c des]
  bes[ aes' g f]  g[ aes f g] |                                    % bar 20
  aes[ des, c bes]  c[ des bes c]  aes[ g' f e]  f[ g e f] |       % bar 21
  g[ c, bes aes]  bes[ c aes bes]  g[ f' e d]  e[ f d e] |         % bar 22
  f8[ aes,16 g]  aes8[\mordent bes] c4\mordent des |               % bar 23
  r8  bes16[ aes]  bes8[\mordent c] des4\mordent ees |             % bar 24
  c16[ aes' g aes]  f[ g ees f]
  des[ bes' aes bes]  c,[ des bes c] |                             % bar 25
  aes[ c bes c]  aes[ bes g aes]  f[ ees' d c]  d[ ees c d] |      % bar 26
  ees8[ ees,16 d]  ees8[\mordent f] g4\mordent aes |               % bar 27
  r8  f16[ ees]  f8[\mordent g] aes4\mordent bes |                 % bar 28
  \stemDown  g8[ c bes\prall aes] \stemNeutral
  g16[ aes bes aes]  g8[ f] |                                      % bar 29
  ees[ f' ees\prall des]  c16[ des ees des]  c8[ bes] |            % bar 30
  aes[ c ees aes] ~  aes16[ f g aes]  bes8[ aes] |                 % bar 31
  \grace {
     \override Stem   #'stroke-style = #"grace"
     \override Stem   #'stroke-style = #'()
     \set tupletNumberFormatFunction = #'()
     \override TupletBracket #'bracket-visibility = ##f
     aes
     \revert Stem #'stroke-style
     \revert Stem #'stroke-style
  }

  g8.[ \times 2/3 { f32 ees f] }
  f4\downmordent ees2\fermata\bar "|."                             % bar 32
}

voicetwo =  \relative c {
  \set Staff.midiInstrument = "harpsichord"
  \key ees \major
  \time 4/4
  \clef "bass"
  ees4\mordent ees, r16  ees''16[ d ees]  c[ d bes c] |
  aes[ c bes c]  aes[ bes g aes]  f[ ees' d c]  d[ ees c d] |
  ees,[ ees' d c]  d[ ees c d]  bes[ ees d c]  bes[ c aes bes] |
  g[ c bes aes]  g[ aes f g]  c,[ bes' a g]  a[ bes g a] |
  bes8[ bes,16 a]  bes8[ c] d4\mordent ees |
  r8  c16[ bes]  c8[ d] ees4\mordent f |
  d8[ g f\prall ees]  d16[ ees f ees]  d8[ c] |
  bes[ d f aes] ~  aes16[ f g aes]  bes8[ aes] |
  g16[ aes g f]  g[ aes f g]  ees[ ees' des ees]  c[ des bes c] |
  aes[ bes aes g]  aes[ bes g aes]  f[ f' ees f]  d[ ees c d] |
  bes[ c bes a]  bes[ c aes bes]  g[ aes f g]  ees[ f d ees] |
  c8[ c16 b]  c8[ d] ees4\mordent f |
  r8  d16[ c]  d8[ ees] f4\mordent g |
  ees8[ aes g\prall f]  e16[ f g f]  e8[ d] |
  c[ e g bes] ~  bes16[ g aes bes]  c8[ bes] |
  aes16[ bes aes g]  aes[ bes g aes]  f[ f' ees f]  des[ ees c des] |
  bes[ des c bes]  bes[ c aes bes]  g[ f' e d]  e[ f d e] |
  f,[ f' ees! des!]  ees[ f des ees]  c[ f ees des]  c[ des bes c] |
  a[ des c bes]  a[ bes g a]  c,[ bes'  a g]  a[ bes g a] |
  bes8[ bes,16 a]  bes8[ c] des4\mordent ees |
  r8  aes,16[ g]  aes8[ bes] c4\mordent des |
  r8  g,16[ f]  g8[ aes] bes4\mordent c |
  f,16[ c'' bes c]  aes[ bes g aes]  f[ aes g aes]  f[ g ees f] |
  des[ f ees f]  des[ ees c des]  bes[ aes' g f]  g[ aes f g] |
  aes8[ ees16 d!]  ees8[ f] g4\mordent aes |
  r8  f16[ ees]  f8[ g] aes4\mordent bes |
  g16[ aes g f]  g[ aes f g]  ees[ ees' d ees]  c[ d bes c] |
  aes[ c bes c]  aes[ bes g aes]  f[ ees' d c]  d[ ees c d] |
  ees,[ ees' d c]  d[ ees c d]  bes[ ees d c]  bes[ c aes bes] |
  g[ c bes aes]  g[ aes f g]  ees[ aes g f]  ees[ f des ees] |
  c[ f ees des]  c[ des bes c]  f,[ ees' d c]  d[ ees c d] |
  ees8[ g, aes bes] ees,2\fermata \bar "|."
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
      tempoWholesPerMinute = #(ly:make-moment 105 4)
      }
    }


}


%{
changes by Urs Metzger, 2005/12/25
version 1.6.10 => 2.6.4
voiceone, bar 16: f8[ f,16 g]  f8[\mordent g] aes4\mordent g => f8[ f,16 e]  f8[\mordent g] aes4\mordent bes
voiceone, bar 30: ees\mordent => ees\prall
voiceone, bar 32: hide triplet braket and number
voiceone, bar 32: f4\mordent => f4\downmordent
voicetwo, bar 4: 1st 16th: ees => g
midiInstrument none = "harpsichord"
%}

