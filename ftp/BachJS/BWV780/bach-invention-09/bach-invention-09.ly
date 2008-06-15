\header {
   title             = "Invention 9"
   composer          = "J. S. Bach (1685-1750)"
   opus              = "BWV 780"
   
   mutopiatitle      = "Invention 9"
   mutopiacomposer   = "BachJS"
   mutopiaopus       = "BWV 780"
   mutopiainstrument = "Harpsichord, Piano"
   source            = "Bach-Gesellschaft"
   style             = "Baroque"
   copyright         = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer        = "jeff covey"
   maintainerEmail   = "jeff.covey@pobox.com"
   maintainerWeb     = "http://pobox.com/~jeff.covey/"
   lastupdated       = "2006/08/28"
 footer = "Mutopia-2008/06/15-171"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\version "2.11.46"

global =  { \key f \minor \time 3/4 }

voiceOne =
\relative c'' {
   
   c16[(  bes aes  g)]  aes8[ f] des'4 ~                 | % 1
   des16[ c(  bes  a)]  bes8[ g] e'4   ~                 | % 2
   e16[ f( g  aes)]  bes8[( g16  e)]  des!8[(  c)]       | % 3
   bes16[( aes g aes]  bes[ des c bes]  aes[ g f  e)]    | % 4
   aes8[ f'] ~  f16[ g(   aes g  ]  f[ ees des  c)]      | % 5
   bes8[ g'] ~  g16[ aes( bes aes]  g[ f   e    d)]      | % 6
   c[( d e f]  g[ aes bes g]  f[ e f  e)]                | % 7
   f8[ c] ~  c16[ bes aes g]  f[(  e) aes(  g)]          | % 8
   c16[   bes aes g]  aes8[ f] aes'4 ~                   | % 9
   aes16[ g(  f   e)]  f8[   d] b4 ~                     | % 10
   b16[ c d ees!]  f8[ d16 b]  aes!8[ g] ~               | % 11
   g16[( f ees  d)]  ees8[ c] ees'4 ~                    | % 12
   ees16[ d( c  b)]  c8[   a] fis'4 ~                    | % 13
   fis16[ g( a  bes)]  c8[( a16  fis)]  ees!8[(  d)]     | % 14
   b4.^\downprall b8 c4^\prallmordent ~                  | % 15
   %c8.[^\turn d16]
   c8.^\markup { \hspace #3.0 \musicglyph #"scripts.turn" } d16
   d4.^\upprall   c8                                     | % 16
   c4 ~  c16[ d( ees d]  c[ bes! aes  g)]                | % 17
   f8[ d'] ~  d16[ ees( f ees]  d[ c b  a)]              | % 18
   g[( a b c]  d[ ees f d]  c[ b c  b)]                  | % 19
   g'4   ~  g16[ f ees d] c4 ~                           | % 20
   c16[ bes a g]  a8[ f] ees'4 ~                         | % 21
   ees16[ des c des]  ees[ ges f ees]  des[ c bes aes!]  | % 22
   g!8[ bes'] ~  bes16[ aes( g f]  ees[ des c  bes)]     | % 23
   aes8[ c ees g] aes4 ~                                 | % 24
   aes16[ g f ees]  des[ bes aes'8] g4   ~               | % 25
   g16[ f ees des]  c[   aes ges'8] f4   ~               | % 26
   f16[ ees des c]  bes[ aes g aes] bes4 ~               | % 27
   bes16[ aes g f]  e[ f g aes]  bes[ c des bes]         | % 28
   c[ bes aes g]  aes8[ f] des'4 ~                       | % 29
   des16[ c bes a]  bes8[ g] e'4 ~                       | % 30
   e16[ f g aes]  bes8[ g16 e]  des!8[ c]                | % 31
   bes16[( aes g aes]  bes[ des c bes]  aes[ g f  e)]    | % 32
   % c'8.[^\mordent\turn des16] g,4.^\downprall f8 f2.^\fermata
   c'8.^\markup { \musicglyph #"scripts.mordent"
   \hspace #2.0 \musicglyph #"scripts.turn" } des16
   g,4.^\downprall f8                                    | % 33
   f2.^\fermata                                          | % 34
   \bar "|."
}

voiceTwo =
\relative c, {
   \clef "bass"
   
   f8[   f'] ~  f16[ g(   aes g  ]  f[ ees des  c)]      | % 1
   bes8[ g'] ~  g16[ aes!( bes aes]  g[ f   e    d)]     | % 2
   c[( d e f]  g[ aes bes g]  f[ e f  e)]                | % 3
   f4 r16  c[ d e]  f[ g aes bes]                        | % 4
   c[     bes aes g]  aes8[ f]                des'4 ~    | % 5
   des16[ c   bes a]  bes8[ g] \clef "treble" e'4   ~    | % 6
   e16[ f g aes]  bes8[ g16 e]  des!8[ c] \clef "bass"   | % 7
   bes16[( aes g  aes)]  bes[( des c bes]  aes[ g f  e)] | % 8
   aes8[ f   ] ~  f16[   g( aes  g]  f[ ees d  c)]       | % 9
   b8[   aes'] ~  aes16[ g( f  ees)]  d[( c  b  a)]      | % 10
   g[ a b c]  d[ ees f d]  c[ b c b]                     | % 11
   ees8[ c'  ] ~  c16[   d( ees d]  c[ bes a    g)]      | % 12
   fis8[ ees'] ~  ees16[ d( c bes]  a[ g   fis  e)]      | % 13
   d[( e fis g]  a[ bes c a]  g[ fis g  fis)]            | % 14
   g[ a b   c]  d[ ees f   d]  ees[  c  d   ees]         | % 15
   f[ g aes f]  g[ d ees f]  g,[ f' ees d]               | % 16
   ees[ f,( ees  d)]  ees8[ c] aes'4 ~                   | % 17
   aes16[ g( f  e)]  f8[ d] b'4 ~                        | % 18
   b16[ c d ees]  f8[ d16 b]  aes!8[ g]                  | % 19
   f16[ ees d ees]  f[ aes g f]  ees[ d c bes]           | % 20
   a8[ c'] ~  c16[ bes a g]  f[ ees des! c]              | % 21
   bes8[ des f a] bes4 ~                                 | % 22
   bes16[ aes! g f]  g8[ ees] des'4 ~                    | % 23
   des16[ c bes c]  des[ f ees des]  c[ bes aes g]       | % 24
   f8[ f']      ~  f16[   ees des c  ]  bes[ aes g bes]  | % 25
   ees,8[ ees'] ~  ees16[ des c   bes]  aes[ ges f aes]  | % 26
   des,8[ des'] ~  des16[ c(  bes aes]  g[ f e  g)]      | % 27
   c,4 ~  c16[ d e f]  g[ aes bes g]                     | % 28
   aes[ bes c8] ~ c16[ bes( aes g]  f[ es des  c)]       | % 29
   bes[ c des8] ~  des16[ c bes aes]  g[ f e d]          | % 30
   c[ d e f]  g[ aes bes g]  f[ e f e]                   | % 31
   f4 r16  c'[ d e]  f[ e f g]                           | % 32
   aes[ g aes bes]  c8[ bes c c,]                        | % 33
   f,2._\fermata                                         | % 34
   \bar "|."
}

\score {
   \context GrandStaff <<
      \context Staff = "one" <<
         \voiceOne
         \global
      >>
      \context Staff = "two" <<
         \voiceTwo
         \global
      >>
   >>
   
   \layout{ }
   
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 94 4)
      }
    }


}

%{
   changes by Urs Metzger, 2005/12/25
   version 2.6.0 => 2.6.4
   voicetwo, bar 15: e => ees (3 times)
%}

