\version "2.18.0"

% The Blue Danube Waltz
% Johann Strauss Jr.
%
% typeset by Nikos Kouremenos <kourem AT gmail DOT com>
% source by Christian Mondrup Four Hand Piano reduction (Werner Icking Music Archive)
% also transposed to C major and some other changes. The main theme only (one page)
% so beginners will love me :)
% the 4hand full original can be downloaded from
% http://icking-music-archive.org/ByComposer/J.Strauss.html
%
% This file was last updated on 2014-3-22, previously 2005-1-12
%
% This music is part of the Mutopia project (http://www.MutopiaProject.org/).
% Copyright (c) The Mutopia Project and Nikos Kouremenos, 2005-2014.
%
% This work is licensed under the Creative Commons Attribution-ShareAlike International License 4.0.
% To view a copy of that license visit https://creativecommons.org/licenses/by-sa/4.0/
%

%%
%% MUSIC
%%

\header {
  title = "The Blue Danube Waltz"
  composer = \markup { \fill-line { \pad-to-box #'(0 . 0) #'(0 . 5) { "Johann Strauss Jr. (1825 - 1899)" }}}

  mutopiatitle = "The Blue Danube Waltz (main theme)"
  mutopiacomposer = "StraussJJ"
  mutopiaopus = "Op. 314"
  mutopiaarranger = "N. Kouremenos"
  mutopiainstrument = "Piano"
  date = "1867"
  source = "Christian Mondrup, from the Werner Icking Music Archive"
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Nikos Kouremenos"
  maintainerEmail = "kourem@gmail.com"
  maintainerWeb = "http://members.hellug.gr/nkour/"
  lastupdated = "2014/3/22"

 footer = "Mutopia-2014/03/24-519"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-markup-spacing #'padding = #6
  markup-system-spacing #'padding = #6
  system-system-spacing #'padding = #6
}

middleDynamics = {
  % the first piano is set in soprano even though centered
  % other dynamics that are not centered will be found in their voices
  \time 3/4
  \partial 4

  % bar 1
  s1*0 \mf s4

  % bar 2 - 16
  s2.*15

  % bar 17
  s4 s4_\markup { "cresc." } s4 |

  % bar 18 - 22
  s2.*5

  % bar 23
  s4_\markup { "cresc." } s2 |

  % bar 24
  s2.

  % bar 25
  s2 s4.\f
}

upper =  {
  \relative c' {
    \context Voice = "upper" {
      \clef treble
      \time 3/4
      \key c \major

      % bar 1
      \partial 4
      \stemUp
      c4

      % bar 2
      \slurDown
      c( e g)

      % bar 3
      \stemNeutral
      g2 <e' g>4

      % bar 4
      <e g>2
      <c e>4

      % bar 5
      <c e>2
      c,4

      % bar 6
      c( e g)

      % bar 7
      g2 <f' g>4

      % bar 8
      <f g>2
      <b, f'>4

      % bar 9
      <b f'>2
      b,4

      % bar 10
      b( d a')

      % bar 11
      a2
      <f' a>4

      % bar 12
      <f a>2
      <b, f'>4

      % bar 13
      <b f'>2
      b,4

      % bar 14
      b( d a')

      % bar 15
      a2
      <e' a>4

      % bar 16
      <e a>2
      <c e>4

      % bar 17
      <c e>2
      c,4

      % bar 18
      c( e g)

      % bar 19
      c2
      <g' c>4

      % bar 20
      <g c>2
      <e g>4

      % bar 21
      <e g>2
      c,4

      % bar 22
      c( e g)

      % bar 23
      c2
      <a' c>4

      % bar 24
      <a c>2
      <f a>4

      % bar 25
      <f a>2
      d,4

      % bar 26
      d( f a)

      % bar 27
      a2.~

      % bar 28
      a4
      fis( g)

      % bar 29
      e'2. ~

      % bar 30
      e4
      \stemDown \slurUp
      c( \stemUp e,)
      \stemNeutral
      \slurNeutral

      % bar 31
      e2( d4)

      % bar 32
      a'2( g4)

      % bar 33
      c,4.( c'8->) c4->

      % bar 34 (finish)
      c4-> r2 \bar "|."
    }
  }
}

lower =  {
  \relative c {
    \context Voice = "lower" {
      \clef bass
      \time 3/4
      \key c \major
      \partial 4

      r4
      r2.

      % bar 3 - 6
      c4 \p <e g> <e g>

      c <e g> <e g>
      c <e g> <e g>
      c <e g> <e g>

      % bar 7 - 14
      d <f g> <f g>
      d <f g> <f g>
      d <f g> <f g>
      d <f g> <f g>
      d <f g> <f g>
      d <f g> <f g>
      d <f g> <f g>
      d <f g> <f g>

      % bar 15 - 18
      c <e g> <e g>
      c <e g> <e g>
      c <e g> <e g>
      c <e g> <e g>

      % bar 19 - 22
      e <g c> <g c>
      e <g c> <g c>
      e <g c> <g c>
      e <g c> <g c>

      % bar 23 - 24
      f <a d> <a d>
      f <a d> <a d>

      % bar 25
      <f a d>2.

      % bar 26
      a4 f d

      % bar 27
      d <f g> <f g>

      % bar 28
      b, <f' g> <f g>

      % bar 29
      c <e g> <e g>

      % bar 30
      e <g c> <g c>

      % bar 31
      <f a c>2.

      % bar 32
      <d g b>2.

      % bar 33
      <c e g>2
      <c e g-> >4

      % bar 34 (finish)
      <c e g-> >
      r2
    }
  }
}

#(set-global-staff-size 24)

\score {
  \context PianoStaff <<
    \accidentalStyle piano-cautionary
    \set PianoStaff.instrumentName = "PIANO  "
    \context Staff = "up" {
      \upper
    }
    \context Dynamics=dynamics \middleDynamics
    \context Staff = "down" {
      \lower
    }
  >>

  \layout {  }
  \midi {
    \tempo 4 = 150
    \context {
      \type "Performer_group"
      \name Dynamics
      \consists "Dynamic_performer"
    }
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}
