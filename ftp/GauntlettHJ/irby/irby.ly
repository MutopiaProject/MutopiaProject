\header {
	title = "Irby"
	composer = "Henry J. Gauntlett (1805-1876), 1858"
	mutopiatitle = "Irby (hymntune)"
	mutopiacomposer = "GauntlettHJ"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1858"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1252"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key g \major d'4 fis' g'4. g'8 g' fis' g' a' a'4 g' g' b' d''4. b'8 b' a' g' fis' g'2 d'4 fis' g'4. g'8 g' fis' g' a' a'4 g' g' b' d''4. b'8 b' a' g' fis' g'2 e''4 e'' d''4. g'8 c''4 c'' b'2 e''4 e'' d''4. b'8 b' a' g' fis' g'2  \bar "|." } }
Alto = { { \key g \major d'4 c' d'4. d'8 d'4 d'8 fis' fis'4 g' d' g' g'4. g'8 e'4 d' d'2 d'4 c' d'4. d'8 cis'4 cis' d'8 c' b4 d' g' g'4. g'8 e'4 d' d'2 g'4 g' g'8 fis' g' g' g'4 fis' g'2 e'8 fis' g' a' d' fis' g' d' e'4 d' d'2  \bar "|." } }
Tenor = { { \key g \major b4 a g4. b8 b a b c' c'4 b b g g4. d'8 d' c' b a <<g2 b >>b4 a g4. b8 g4 g fis g b g g4. d'8 d' c' b a <<g2 b >>c'4 c' b8 c' d' b a4 d' d'2 c'4 c' c'8 a b d' d' c' b a b2  \bar "|." } }
Bass = { { \key g \major g,4 a, b,4. g,8 d4 d d g g e b,4. g,8 c4 d g,2 g,4 a, b,4. g,8 e4 a, d g g e b,4. g,8 c4 d g,2 c8 d e fis g a b g d4 d g2 c8 d e fis g4. g8 c4 d g,2  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 105 4 ) } }
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
%T:Irby
%M:4/4
%L:1/8
%C:Henry J. Gauntlett (1805-1876), 1858
%Q:1/4=105
%F:irby.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Title=Once in Royal David's City
%V:1
%D4F4G6G2G2F2G2A2A4G4G4B4d6B2B2A2G2F2G7D4F4G6G2G2F2G2A2A4G4G4B4d6B2B2A2G2F2G7e4e4d6G2c4c4B8e4e4d6B2B2A2G2F2G8
%V:2
%D4C4D6D2D4D2F2F4G4D4G4G6G2E4D4D7D4C4D6D2^C4^C4D2=C2-B,4D4G4G6G2E4D4D7G4G4G2F2G2G2G4F4G8E2F2G2A2D2F2G2D2E4D4D8
%V:3
%B,4A,4G,6B,2B,2A,2B,2C2C4B,4B,4G,4G,6D2D2C2B,2A,2 [G,7B,7] B,4A,4G,6B,2G,4G,4F,4G,4B,4G,4G,6D2D2C2B,2A,2 [G,7B,7] C4C4B,2C2D2B,2A,4D4D8C4C4C2A,2B,2D2D2C2B,2A,2B,8
%V:4
%G,,4A,,4B,,6G,,2D,4D,4D,4G,4G,4E,4B,,6G,,2C,4D,4G,,7G,,4A,,4B,,6G,,2E,4A,,4D,4G,4G,4E,4B,,6G,,2C,4D,4G,,7C,2D,2E,2F,2G,2A,2B,2G,2D,4D,4G,8C,2D,2E,2F,2G,6G,2C,4D,4G,,8
%G,,4A,,4B,,6G,,2D,4D,4D,4G,4G,4E,4B,,6G,,2C,4D,4G,,7G,,4A,,4B,,6G,,2E,4A,,4D,4G,4G,4E,4B,,6G,,2C,4D,4G,,7C,2D,2E,2F,2G,2A,2B,2G,2D,4D,4G,8C,2D,2E,2F,2G,6G,2C,4D,4G,,8
