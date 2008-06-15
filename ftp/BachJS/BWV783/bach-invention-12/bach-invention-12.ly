\header {
   title             = "Invention 12"
   composer          = "J. S. Bach (1685-1750)"
   opus              = "BWV 783"
   
   mutopiatitle      = "Invention 12"
   mutopiacomposer   = "BachJS"
   mutopiaopus       = "BWV 783"
   mutopiainstrument = "Harpsichord, Piano"
   source            = "Bach-Gesellschaft"
   style             = "Baroque"
   copyright         = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer        = "jeff covey"
   maintainerEmail   = "jeff.covey@pobox.com"
   maintainerWeb     = "http://pobox.com/~jeff.covey/"
   lastupdated       = "2006/09/05"
 footer = "Mutopia-2008/06/15-174"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\version "2.11.46"

global =  { \key a \major \time 12/8 }

voiceOne =
\relative c'' {
   a4^\mordent a8 a4^\mordent a8 b2.^\upmordent ~    | % 1
   b16 a gis a b cis
   d cis d fis e d
   cis a cis e a fis
   dis b dis fis a fis                               | % 2
   gis a gis fis e dis
   cis dis e dis cis b
   a cis e cis a cis
   fis, a cis a fis a                                | % 3
   dis,8 fis dis
   b16 dis fis a gis fis
   e gis b e b gis e4 r8                             | % 4
   e'4^\mordent e8 e4^\mordent e8
   e16 a e cis a cis
   e16 a e cis a cis                                 | % 5
   d4  d8 d4 d8
   d16 b' gis d b d
   gis b gis d b d                                   | % 6
   cis8 r r
   r16 d, fis a d cis
   b8 r r
   r16 cis, eis gis cis b                            | % 7
   a8 r r
   r16 b, d fis b a
   gis fis b a gis fis eis gis cis b a gis           | % 8
   fis8 \stemDown fis' \stemUp fis, \stemNeutral
   fis cis fis
   gis2.^\upmordent ~                                | % 9
   gis16 fis eis fis gis a
   b a b d cis b
   a fis a cis fis dis
   bis gis bis dis fis dis                           | % 10
   e fis e dis cis b
   a b cis b a gis
   fis a cis a fis a
   dis, fis a fis dis fis                            | % 11
   bis,8 dis fis a gis bis
   cis16 e gis e cis e
   gis e cis e gis e                                 | % 12
   cis e fis e cis e
   fis e cis e fis ais,
   b d fis d b d
   fis d b d fis d                                   | % 13
   b d e d b d
   e d b d e gis,
   a4^\mordent a8 a4^\mordent a8                     | % 14
   a16 dis b a fis a
   b dis b a fis a
   g4^\mordent g8 g4^\mordent g8                     | % 15
   g16 e' cis g e g
   cis e cis g e g
   fis8 r r
   r16 gis, b d gis fis                              | % 16
   e8 r r
   r16
   \change Staff = two \stemUp fis, a cis
   \change Staff = one \stemUp fis  e
   \stemNeutral
   d8 r r
   r16
   \change Staff = two \stemUp e, gis b
   \change Staff = one \stemUp e  d
   \stemNeutral                                      | % 17
   cis a cis e a e
   cis' a cis e a fis
   d fis a fis d fis
   b, d fis d b d                                    | % 18
   gis,8  b   d   fis(  e) b
   fis'(  e)   a,  e'(   d) gis,                     | % 19
   d'(    cis) e,
   fis16 gis a b cis d
   gis, e gis b e b
   gis' e b' gis e gis                               | % 20
   a8 e cis
   a16 d cis b e8 ~
   e16 fis cis8 b16 a
   a4.^\fermata                                      | % 21
   \bar "|."
}

voiceTwo =
\relative c' {
   \clef "bass"
   a16 b cis b a gis
   fis gis a gis fis e
   d fis a fis d fis
   b, d fis d b d                                    | % 1
   gis,8 b gis e fis gis a4 r8 r4.                   | % 2
   e'4^\mordent e8 e4^\mordent e8 fis2.^\upmordent ~ | % 3
   fis16 e dis e fis gis
   a gis a cis b  a
   gis e gis b e  b
   gis e gis b d! b                                  | % 4
   cis d e d cis b
   a b cis b a gis
   fis8 fis' cis a fis a                             | % 5
   b16 cis d cis b a
   gis a b a gis fis
   e8 b gis e4 r8                                    | % 6
   r16 a' cis e a gis
   fis8 r r
   r16 gis, b dis gis fis
   eis8 r r                                          | % 7
   r16 fis, a cis fis e
   d8 r r
   r16 b, d fis b a
   gis cis, eis gis cis b                            | % 8
   a b a gis fis e
   d e fis e d cis
   b d fis d b d
   gis, b d b gis b                                  | % 9
   eis,8 gis eis cis dis eis
   fis fis' dis gis fis gis                          | % 10
   cis,4 cis8 cis4 cis8 dis2. ~                      | % 11
   dis16 cis bis cis dis e
   fis e fis a gis fis
   e cis e gis cis gis
   e cis e gis cis b                                 | % 12
   ais fis ais cis fis cis
   ais fis ais cis fis e
   d b, d fis b fis
   d b d fis b a                                     | % 13
   gis e gis b e b
   gis e gis b e d
   cis d e d cis b
   a b cis b a gis                                   | % 14
   fis8 a dis ~ dis cis b
   e16 fis g fis e d
   cis d e d cis b                                   | % 15
   a8 e cis a4 r8
   r16 d fis a d cis b8 r r                          | % 16
   r16 cis, e gis    cis b a8   r r
   r16 b, d   fis b    a gis8 r r                    | % 17
   a,4^\mordent a8 a4^\mordent a8 b2.^\upmordent ~   | % 18
   b16 a gis a b cis
   d cis d fis e d
   cis b cis e d cis
   b a b d cis b                                     | % 19
   a gis a b cis a
   d4^\mordent d8 d2.^\upmordent                     | % 20
   cis16 d cis b a gis
   fis fis' e d cis b
   cis d e8 e,
   a4._\fermata                                      | % 21
   \bar "|."
}

\score {
   \context PianoStaff <<
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
      tempoWholesPerMinute = #(ly:make-moment 108 4)
      }
    }


}

%{
   changes by Urs Metzger, 2005/12/25
   version 2.6.0 => 2.6.4
   voicetwo, bar 17: a, cis e cis' => cis, e gis cis
   midi tempo 4 = 116 => 4 = 108
%}

