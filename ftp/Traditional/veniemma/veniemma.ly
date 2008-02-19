\header {
	title = "Veni Emmanuel"
	composer = "Traditional; 15th century French, arr. Thomas Helmore, 1856"
	mutopiatitle = "Veni Emmanuel (hymntune)"
	mutopiacomposer = "Traditional"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1856"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1300"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 8  { \key g \major e'8 g' b' b' b' a' c'' b' a' g'4. a'8 b' g' e' g' a' fis' e' d' e'4. a'8 a' e' e' fis' g'4 fis'8 e' d'4. g'8 a' b' b' b' a' c'' b' a' g'4. d''8 d''4. b'8 b'4. b'8 a' c'' b' a' g' a' b' g' e' g' a' fis' e' d' e' s8  \bar "|." } }
Alto = { { \key g \major e'8 e' b d' g' g'4. fis'8 d'4. d'8 d' d' c' d' e' c' b b b4. e'16 d' c'8 a e' dis' e' d' d' cis' d'4. b8 d' d' d' g' g'4. fis'8 g'4. g'8 fis'4. g'8 fis'4. g'8 g'4. fis'8 g' fis' g' d' c' d' e' c' b b b s8  \bar "|." } }
Tenor = { { \key g \major g8 b fis g d' e'4 d'8 c' b4. fis8 g g g b a4 g8 fis g4. a8 a c' b a g4 a8 g fis4. g8 fis fis g d' e'4 d'8 c' b4. b8 a4. e'8 d'4. d'8 e'4 d'8 c' b d' d' g g b a4 b,8 fis g s8  \bar "|." } }
Bass = { { \key g \major e8 e d c g, c a, b, d g4. d8 g, b, c b, c a, b, b, e4. c16 b, a,8 a g fis e b, a, a, d4. e8 d b, g, b, c a, b, d g,4. g8 d4. e8 b,4. g,8 c a, b, d e d g, b, c b, c a, b, b, e s8  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 56 4 ) } }
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
%T:Veni Emmanuel
%M:4/4
%L:1/8
%C:Traditional; 15th century French, arr. Thomas Helmore, 1856
%Q:1/4=56
%F:veniemma.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Partial=8
%V:1
%E2G2B2B2B2A2c2B2A2G6A2B2G2E2G2A2F2E2D2E6A2A2E2E2F2G4F2E2D6G2A2B2B2B2A2c2B2A2G6d2d6B2B6B2A2c2B2A2G2A2B2G2E2G2A2F2E2D2E2
%V:2
%E2E2B,2D2G2G6F2D6D2D2D2C2D2E2C2B,2B,2B,6E1D1C2A,2E2^D2E2=D2-D2^C2D6B,2D2D2D2G2G6F2G6G2F6G2F6G2G6F2G2F2G2D2=C2D2E2C2B,2B,2B,2
%V:3
%G,2B,2F,2G,2D2E4D2C2B,6F,2G,2G,2G,2B,2A,4G,2F,2G,6A,2A,2C2B,2A,2G,4A,2G,2F,6G,2F,2F,2G,2D2E4D2C2B,6B,2A,6E2D6D2E4D2C2B,2D2D2G,2G,2B,2A,4B,,2F,2G,2
%V:4
%E,2E,2D,2C,2G,,2C,2A,,2B,,2D,2G,6D,2G,,2B,,2C,2B,,2C,2A,,2B,,2B,,2E,6C,1B,,1A,,2A,2G,2F,2E,2B,,2A,,2A,,2D,6E,2D,2B,,2G,,2B,,2C,2A,,2B,,2D,2G,,6G,2D,6E,2B,,6G,,2C,2A,,2B,,2D,2E,2D,2G,,2B,,2C,2B,,2C,2A,,2B,,2B,,2E,2
%E,2E,2D,2C,2G,,2C,2A,,2B,,2D,2G,6D,2G,,2B,,2C,2B,,2C,2A,,2B,,2B,,2E,6C,1B,,1A,,2A,2G,2F,2E,2B,,2A,,2A,,2D,6E,2D,2B,,2G,,2B,,2C,2A,,2B,,2D,2G,,6G,2D,6E,2B,,6G,,2C,2A,,2B,,2D,2E,2D,2G,,2B,,2C,2B,,2C,2A,,2B,,2B,,2E,2
