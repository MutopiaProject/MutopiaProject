\version "2.18.2"

\header {
  title = "Greensleeves"
  composer = \markup { \fill-line { \pad-to-box #'(0 . 0) #'(0 . 5) { "Traditional; 16th Century English melody" }}}
  mutopiatitle = "Greensleeves (hymntune)"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Voice (SATB)"
  license = "Public Domain"
  date = ""
  maintainer = "Steve Dunlop"
  maintainerWeb = "http://www.nerstrand.net"
  maintainerEmail = "music@nerstrand.net"
  style = "Hymn"
  source = "www.cyberhymnal.org"

 footer = "Mutopia-2014/03/30-1247"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

% #(set-default-paper-size "letter")

Soprano = { \time 6/8 \partial 8  { \key g \major e'8 g'4 a'8 b'8. c''16 b'8 a'4 fis'8 d'8. e'16 fis'8 g'4 e'8 e'8. dis'16 e'8 fis'4. b4 e'8 g'4 a'8 b'8. c''16 b'8 a'4 fis'8 d'8. e'16 fis'8 g'8. fis'16 e'8 dis'8. cis'16 dis'8 e'4. e'4 r8 d''4. d''8. cis''16 b'8 a'4 fis'8 d'8. e'16 fis'8 g'4 e'8 e'8. dis'16 e'8 fis'4 dis'8 b4 r8 d''4. d''8. c''16 b'8 a'4 fis'8 d'8. ( e'16 ) fis'8 g'8. fis'16 e'8 dis'8. cis'16 dis'8 e'4. e'4 s8  \bar "|." } }
Alto = { { \key g \major b8 e'4 d'8 d'8. c''16 g'8 fis'4 d'8 d'8. e'16 c'8 b4 b8 a8. dis'16 e'8 dis'4. b4 b8 e'4 d'8 d'8. c''16 g'8 fis'4 d'8 d'8. e'16 c'8 b8. fis'16 c'8 b8. cis'16 b8 b4. b4 r8 fis'4. b'8. a'16 g'8 fis'4 d'8 d'8. e'16 c'8 b4 b8 a8. dis'16 e'8 dis'4 b8 b4 r8 fis'4. b'8. a'16 g'8 fis'4 d'8 d'4 c'8 b8. fis'16 c'8 b8. cis'16 b8 b4. b4 s8  \bar "|." } }
Tenor = { { \key g \major g8 b4 a8 g4 b8 d' d' a fis4 a8 g4 g8 a4 e8 b4. b4 g8 b4 a8 g4 b8 d'4 a8 fis4 a8 g4 a8 fis4 fis8 g4. g4 r8 b4. d'4 d'8 d'4 a8 fis4 a8 g4 g8 a4 e8 b4 fis8 b4 r8 b4. d'4 d'8 d'4 a8 fis4 a8 g4 a8 fis4 fis8 g4. g4 s8  \bar "|." } }
Bass = { { \key g \major e8 e4 fis8 g4 g8 d4 d8 d4 dis8 e4 e8 c4 c8 b,4. b,4 e8 e4 fis8 g4 g8 d d d d4 fis8 e4 a,8 b,4 b,8 e4. e4 r8 b4. g4 g8 d4 d8 d4 dis8 e4 e8 c4 c8 b,4 b,8 b,4 r8 b4. g4 g8 d d d d4 dis8 e4 a,8 b,4 b,8 e4. e4 s8  \bar "|." } }


\score {
  \context GrandStaff \with {
    \override StaffGrouper.staff-staff-spacing.basic-distance = #11
  }
  <<
    \context Staff = upper <<
      \set Staff.printPartCombineTexts = ##f
      \partcombine
      {   \accidentalStyle modern-cautionary \Soprano }
      { \Alto}
    >>
    \context Staff = lower <<
      \set Staff.printPartCombineTexts = ##f
      \clef bass
      \partcombine
      {  \accidentalStyle modern-cautionary \Tenor }
      { \Bass }
    >>
  >>
  \midi { }
  \layout {
    \context {
      \Score
      % defaults
      % (shortest-duration-space . 2.0)
      % (spacing-increment . 1.2)
      % (base-shortest-duration . ,(ly:make-moment 1/8))
      % tighter spacing
      \override SpacingSpanner.shortest-duration-space = #2.8
      \override SpacingSpanner.spacing-increment = #0.6
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
      \remove "Bar_number_engraver"
    }
  }
}
\paper {
  first-page-number = 2
  print-first-page-number = ##t
  top-markup-spacing #'padding = #10
  markup-system-spacing #'padding = #7
  system-system-spacing #'basic-distance = #14
}

% -- ABC Source file follows --
%X:1
%T:Greensleeves
%M:6/8
%L:1/8
%C:Traditional; 16th Century English melody
%Q:1/4=70
%F:greensleeves.abc
%N:Public domain
%G
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Partial=8 Title=What Child is This
%V:1
%E2G4A2B3c1B2A4F2D3E1F2G4E2E3^D1E2F6B,4E2G4A2B3c1B2A4F2D3E1F2G3F1E2^D3^C1^D2E6E4z2d6d3^c1B2A4F2D3E1F2G4E2E3^D1E2F4^D2B,4z2d6d3=c1B2A4F2D3-E1F2G3F1E2^D3^C1^D2E6E4
%V:2
%B,2E4D2D3c1G2F4D2D3E1C2B,4B,2A,3^D1E2^D6B,4B,2E4=D2D3c1G2F4D2D3E1C2B,3F1C2B,3^C1B,2B,6B,4z2F6B3A1G2F4=D2D3E1=C2B,4B,2A,3^D1E2^D4B,2B,4z2F6B3A1G2F4=D2D4C2B,3F1C2B,3^C1B,2B,6B,4
%V:3
%G,2B,4A,2G,4B,2=D2-D2A,2F,4A,2G,4G,2A,4E,2B,6B,4G,2B,4A,2G,4B,2D4A,2F,4A,2G,4A,2F,4F,2G,6G,4z2B,6D4D2D4A,2F,4A,2G,4G,2A,4E,2B,4F,2B,4z2B,6D4D2D4A,2F,4A,2G,4A,2F,4F,2G,6G,4
%V:4
%E,2E,4F,2G,4G,2D,4D,2D,4^D,2E,4E,2C,4C,2B,,6B,,4E,2E,4F,2G,4G,2=D,2-D,2D,2D,4F,2E,4A,,2B,,4B,,2E,6E,4z2B,6G,4G,2D,4D,2D,4^D,2E,4E,2C,4C,2B,,4B,,2B,,4z2B,6G,4G,2=D,2-D,2D,2D,4^D,2E,4A,,2B,,4B,,2E,6E,4
%E,2E,4F,2G,4G,2D,4D,2D,4^D,2E,4E,2C,4C,2B,,6B,,4E,2E,4F,2G,4G,2=D,2-D,2D,2D,4F,2E,4A,,2B,,4B,,2E,6E,4z2B,6G,4G,2D,4D,2D,4^D,2E,4E,2C,4C,2B,,4B,,2B,,4z2B,6G,4G,2=D,2-D,2D,2D,4^D,2E,4A,,2B,,4B,,2E,6E,4
