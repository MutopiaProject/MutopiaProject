\header {
  enteredby =  "Allen Garvin"
  maintainer =    "Allen Garvin"
  maintainerEmail = "AGarvin@tribalddb.com"
  copyright =  "Public Domain"
  filename =   "bach-invention-10.ly"
  title =   "Invention 10"
  opus =    "BWV 781"
  composer =   "Johann Sebastian Bach (1685-1750)"
  style =   "Baroque"
  source =  "Bach-Gesellschaft"
  lastupdated = "2005/12/25"

  mutopiainstrument = "Harpsichord, Piano"
  mutopiatitle =      "Invention 10"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV 781"
 
 footer = "Mutopia-2008/06/15-62"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.46"

voiceone =  \relative c'' {
  \set Staff.midiInstrument = "harpsichord"
  \key g \major
  \time 9/8
  g8[ b d]  b[ g d']  b[ g g'] |                     % bar 1
  fis4\prall d8  a'[ fis d]  a'[ fis d] |            % bar 2
  g[ d b]  f'[ d b]  f'[ d b] |                      % bar 3
  e[ c a]  fis[ a c]  e[ d c] |                      % bar 4
  d[ b g]  e[ g b]  d[ c b] |                        % bar 5
  c[ a fis]  d[ fis a]  c[ b a] |                    % bar 6
  b[\mordent c d]  e[ b g']  e[ b g'] |              % bar 7
  a,[ b cis]  d[ a fis']  d[ a fis'] |               % bar 8
  g,4.\mordent ~  g8[ a g]  fis[ g e] |              % bar 9
  fis[ g fis]  e[ fis d]  a'[ b c] |                 % bar 10
  b[\mordent c b]  a[ b g]  e'[ fis g] |             % bar 11
  cis,[\mordent d cis]  b[ cis a]  g'[ a b] |        % bar 12
  a[ g fis]  e[ fis d]  a[ d cis] |                  % bar 13
  d4.\mordent r4. r4. |                              % bar 14
  a8[ cis e]  cis[ a e']  cis[ a g'] |               % bar 15
  fis4.\prall d r |                                  % bar 16
  g,8[ b d]  b[ g d']  b[ g f'] |                    % bar 17
  e[ c a]  a'[ e c]  a[ b c] |                       % bar 18
  d[ b g]  g'[ d b]  g[ a b] |                       % bar 19
  c2.\prall ~ c4. ~|                                 % bar 20
  c2. ~ c4. |                                        % bar 21
  \tieUp b2.\prall ~ b4. ~ |                         % bar 22
  b2. ~ b4. ~ |                                      % bar 23
  b8[ e d]  c[ d b]  a[ b g] |                       % bar 24
  a[ c b]  a[ b g]  fis[ g e] |                      % bar 25
  fis4\prall d8 a'4\mordent fis8 d'4\mordent fis,8 | % bar 26
  g8[ b d]  b[ g d']  b[ g g'] |                     % bar 27
  d[ fis a]  fis[ d a']  fis[ d c'] |                % bar 28
  b[ a g]  fis[ g a]  d,[ g fis] |                   % bar 29
  g[ fis e]  d[ c b]  a[ b c] |                      % bar 30
  b[ a g]  fis[ g a]  d,[ g fis] |                   % bar 31
  g[ d b] g4. r \bar "|."                            % bar 32
}


voicetwo =  \relative c {
  \set Staff.midiInstrument = "harpsichord"
  \key g \major
  \time 9/8
  \clef "bass"
  r2. r4. |                   % bar 1
  d8[ fis a]  fis[ d a']  fis[ d c'] |               % bar 2
  b4\prall g8  d'[ b g]  d'[ b g] |                  % bar 3
  c[ e c]  a[ c a]  fis[ g a] |                      % bar 4
  b[ d b]  g[ b g]  e[ fis g] |                      % bar 5
  a[ c a]  fis[ a fis]  d[ e fis] |                  % bar 6
  g4.\mordent ~  g8[ fis e]  d[ e cis] |             % bar 7
  fis4.\mordent ~  fis8[ e d]  cis[ d b] |           % bar 8
  e[ fis g]  a[ e cis']  a[ e cis'] |                % bar 9
  d4.\mordent ~  d8[ d, e]  fis[ e d] |              % bar 10
  g4.\mordent ~  g8[ e fis]  g[ fis e] |             % bar 11
  a4.\mordent ~  a8[ g fis]  e[ d cis] |             % bar 12
  d[ e fis]  g[ a b] a4 a,8 |                        % bar 13
  d[ fis a]  fis[ d a']  fis[ d d'] |                % bar 14
  cis4.\prall a r |                                  % bar 15
  d,8[ fis a]  fis[ d a']  fis[ d c'] |              % bar 16
  b4.\prall g r |                                    % bar 17
  c,\mordent ~  c8[ d e]  fis,[ g a] |               % bar 18
  b4.\mordent ~  b8[ c d]  e,[ fis g] |              % bar 19
  a[ c e]  a[ e c]  a[ b c] |                        % bar 20
  d[ fis a]  d[ a fis]  d[ e fis] |                  % bar 21
  g[ b d]  g[ d b]  g[ a b] |                        % bar 22
  e,[ g b]  e[ b g]  e[ fis g] |                     % bar 23
  c,2.\prall ~ c4. ~ |                               % bar 24
  c2. ~ c4. ~ |                                      % bar 25
  c8[ d fis]  a[ fis d]  c[ b a] |                   % bar 26
  b[ g b]  d[ b g]  d'[ b g] |                       % bar 27
  fis[ d fis]  a[ fis d]  a'[ fis d] |               % bar 28
  g[ a b]  a[ b c]  b[ c d] |                        % bar 29
  e,4. ~ e4 e'8  fis[ e d] |                         % bar 30
  g4\mordent b,8  e[ d c] d4\mordent d,8 |           % bar 31
  g4. ~  g8[ b d] g4.  \bar "|."                     % bar 32
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
      tempoWholesPerMinute = #(ly:make-moment 172 4)
      }
    }


}

%{
changes by Urs Metzger, 2005/12/25
version 1.6.10 => 2.6.4
voiceone, bar 8: e[ b g'] => d[ a fis']
voiceone, bar 28: c => c'
voiceone, bar 29: d => d,
midiInstrument none = "harpsichord"
midi tempo 4 = 160 => 4 => 172
%}

