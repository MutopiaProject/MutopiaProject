\header {
	title = "Wie schoen leuchtet"
	composer = "Philipp Nicolai, 1599"
	mutopiatitle = "Wie schoen leuchtet (hymntune)"
	mutopiacomposer = "NicolaiP"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1599"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1304"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key ees \major ees'4 bes' g' ees' bes' c''8 c'' bes'2 bes'8 c'' d'' ees'' d'' c''4 c'' bes'2 bes'8 c''4 bes' aes'8 g' f'4 ees'2 ees'4 bes' g' ees' bes' c''8 c'' bes'2 bes'8 c'' d'' ees'' d'' c''4 c'' bes'2 bes'8 c''4 bes' aes'8 g' f'4 ees'2 bes'4 g' bes' g' g'8 g' f' f' g' g' f' f' g' g' f'4 ees'2 ees''4 bes' c'' bes' aes'8 g' f'4 ees'1  \bar "|." } }
Alto = { { \key ees \major bes4 bes bes c' f' g'8 f' d'2 ees'8 ees' f' g' f' f'4 f' d'2 ees'8 ees'4 ees' c'8 bes bes4 bes2 bes4 bes bes c' f' g'8 f' d'2 ees'8 ees' f' g' f' f'4 f' d'2 ees'8 ees'4 ees' c'8 bes bes4 bes2 d'4 ees' f' ees' bes8 ees' ees' d' bes ees' ees' d' ees' ees' d'4 ees'2 ees'4 ees' ees' d' ees'8 ees' ees' d' bes1  \bar "|." } }
Tenor = { { \key ees \major g4 f g g bes bes8 a bes2 g8 g bes bes bes bes4 a bes2 g8 aes4 bes ees8 ees ees d g2 g4 f g g bes bes8 a bes2 g8 g bes bes bes bes4 a bes2 g8 aes4 bes ees8 ees ees d g2 bes4 bes bes bes ees8 bes bes f ees bes bes bes bes bes bes4 g2 g4 bes aes f c'8 bes bes4 g1  \bar "|." } }
Bass = { { \key ees \major ees4 d ees c d ees8 f bes,2 ees8 c bes, ees bes, f4 f bes,2 ees8 aes,4 g, aes,8 ees, bes,4 ees,2 ees4 d ees c d ees8 f bes,2 ees8 c bes, ees bes, f4 f bes,2 ees8 aes,4 g, aes,8 ees, bes,4 ees,2 g4 ees d ees ees8 ees, bes, bes, ees ees, bes, bes, ees g, bes,4 ees,2 c4 g, aes, bes, c8 ees bes,4 ees,1  \bar "|." } }


  \score {
    \context GrandStaff <<
      \context Staff = upper <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        {   #(set-accidental-style 'modern-cautionary) \Soprano }
        { \Alto}
      >>  
      \context Staff = lower <<
        \set Staff.printPartCombineTexts = ##f
        \clef bass
        \partcombine	{  #(set-accidental-style 'modern-cautionary) \Tenor }
        { \Bass }
      >>  
    >>
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 120 4 ) } }
\layout {
  between-system-space = 1\mm
  \context {
    \Score
    % defaults
    % (shortest-duration-space . 2.0)
    % (spacing-increment . 1.2)
    % (base-shortest-duration . ,(ly:make-moment 1 8))
    % tighter spacing
    \override SpacingSpanner #'shortest-duration-space = #2.8
    \override SpacingSpanner #'spacing-increment = #0.6
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
    \remove "Bar_number_engraver"
  }
  \context { \Staff 
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
  }
  }
}
\paper {  first-page-number = 2
  print-first-page-number = ##t }
% -- ABC Source file follows --
%X:1
%T:Wie schoen leuchtet
%M:4/4
%L:1/8
%C:Philipp Nicolai, 1599
%Q:1/4=120
%F:wie_schon_leuchtet.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:0,0
%V:1
%E4B4G4E4B4c2c2B8B2c2d2e2d2c4c4B8B2c4B4A2G2F4E8E4B4G4E4B4c2c2B8B2c2d2e2d2c4c4B8B2c4B4A2G2F4E8B4G4B4G4G2G2F2F2G2G2F2F2G2G2F4E8e4B4c4B4A2G2F4E16
%V:2
%B,4B,4B,4C4F4G2F2D8E2E2F2G2F2F4F4D8E2E4E4C2B,2B,4B,8B,4B,4B,4C4F4G2F2D8E2E2F2G2F2F4F4D8E2E4E4C2B,2B,4B,8D4E4F4E4B,2E2E2D2B,2E2E2D2E2E2D4E8E4E4E4D4E2E2E2D2B,16
%V:2
%G,4F,4G,4G,4B,4B,2=A,2B,8G,2G,2B,2B,2B,2B,4=A,4B,8G,2_A,4B,4E,2E,2E,2D,2G,8G,4F,4G,4G,4B,4B,2=A,2B,8G,2G,2B,2B,2B,2B,4=A,4B,8G,2_A,4B,4E,2E,2E,2D,2G,8B,4B,4B,4B,4E,2B,2B,2F,2E,2B,2B,2B,2B,2B,2B,4G,8G,4B,4A,4F,4C2B,2B,4G,16
%V:4
%E,4D,4E,4C,4D,4E,2F,2B,,8E,2C,2B,,2E,2B,,2F,4F,4B,,8E,2A,,4G,,4A,,2E,,2B,,4E,,8E,4D,4E,4C,4D,4E,2F,2B,,8E,2C,2B,,2E,2B,,2F,4F,4B,,8E,2A,,4G,,4A,,2E,,2B,,4E,,8G,4E,4D,4E,4E,2E,,2B,,2B,,2E,2E,,2B,,2B,,2E,2G,,2B,,4E,,8C,4G,,4A,,4B,,4C,2E,2B,,4E,,16
%E,4D,4E,4C,4D,4E,2F,2B,,8E,2C,2B,,2E,2B,,2F,4F,4B,,8E,2A,,4G,,4A,,2E,,2B,,4E,,8E,4D,4E,4C,4D,4E,2F,2B,,8E,2C,2B,,2E,2B,,2F,4F,4B,,8E,2A,,4G,,4A,,2E,,2B,,4E,,8G,4E,4D,4E,4E,2E,,2B,,2B,,2E,2E,,2B,,2B,,2E,2G,,2B,,4E,,8C,4G,,4A,,4B,,4C,2E,2B,,4E,,16
