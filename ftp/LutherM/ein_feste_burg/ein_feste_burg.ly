\header {
	title = "Ein' Feste Burg"
	composer = "Martin Luther (1483-1546), ca. 1529"
	mutopiatitle = "Ein' Feste Burg (hymntune)"
	mutopiacomposer = "LutherM"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1529"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1237"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  { \key c \major c''4 c'' c'' g'8 a' b'4 c''8 b' a'4 g' c'' b' a' g' a' f'8 e' d'4 c' c'' c'' c'' g'8 a' b'4 c''8 b' a'4 g' c'' b' a' g' a' f'8 e' d'4 c' c' g' a' g' fis' g'2. c'4 g' g' a' b' c''2. b'4 c'' b' a' a' g'2. a'4 a' g' a' f' e'2. c''4 b' a' g' a' f'8 e' d'4 c' s4  \bar "|." } }
Alto = { { \key c \major e'4 c' e' d' g' e' fis' g' e' e' c' c' c' a b c' e' c' e' d' e' c' d'8 c' b4 c' e' c' c' c' a b c' c' e' e' d' d'8 c' b2. c'4 d' e' c' d' c'2. e'4 e' e' e' d'8 c' b2. c'4 f' e' e' d' b2. c'4 e' c' e' e' a b c' s4  \bar "|." } }
Tenor = { { \key c \major g4 g g b b a d'8 c' b4 a g f e e f g e g g g b g e fis g e g f e e f g8 f e4 e g c' b a g2. e4 g g f f e2. b4 a gis a fis g2. c'4 c' b a a gis2. a4 g a c' c' f g8 f e4 s4  \bar "|." } }
Bass = { { \key c \major c4 e c g d a d g a e f c a, d g, c c e c g e a, d g, a, e f c a, d g, c c c a, b,8 c d4 g,2. c4 b, c f d a,2. gis,4 a, b, c d g,2. f,4 a, c cis d e2. a,4 e f c a, d g, c s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 112 4 ) } }
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
%T:Ein' Feste Burg
%M:4/4
%L:1/8
%C:Martin Luther (1483-1546), ca. 1529
%Q:1/4=112
%F:ein_feste_burg.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:C
%I:Chalic=65 Partial=4 Title=A Mighty Fortress
%V:1
%c4c4c4G2A2B4c2B2A4G4c4B4A4G4A4=F2E2D4C4c4c4c4G2A2B4c2B2A4G4c4B4A4G4A4F2E2D4C4C4G4A4G4^F4G12C4G4G4A4B4c11B4c4B4A4A4G12A4A4G4A4F4E11c4B4A4G4A4F2E2D4C4
%V:2
%E4C4E4D4G4E4^F4G4E4E4C4C4C4A,4B,4C4E4C4E4D4E4C4D2C2B,4C4E4C4C4C4A,4B,4C4C4E4E4D4D2C2B,12C4D4E4C4D4C11E4E4E4E4D2C2B,12C4=F4E4E4D4B,11C4E4C4E4E4A,4B,4C4
%V:3
%G,4G,4G,4B,4B,4A,4D2C2B,4A,4G,4F,4E,4E,4F,4G,4E,4G,4G,4G,4B,4G,4E,4^F,4G,4E,4G,4=F,4E,4E,4F,4G,2F,2E,4E,4G,4C4B,4A,4G,12E,4G,4G,4F,4F,4E,11B,4A,4^G,4A,4^F,4=G,12C4C4B,4A,4A,4^G,11A,4=G,4A,4C4C4F,4G,2F,2E,4
%V:4
%C,4E,4C,4G,4D,4A,4D,4G,4A,4E,4F,4C,4A,,4D,4G,,4C,4C,4E,4C,4G,4E,4A,,4D,4G,,4A,,4E,4=F,4C,4A,,4D,4G,,4C,4C,4C,4A,,4B,,2C,2D,4G,,12C,4B,,4C,4F,4D,4A,,11^G,,4A,,4B,,4C,4D,4=G,,12F,,4A,,4C,4^C,4D,4E,11A,,4E,4=F,4=C,4A,,4D,4G,,4C,4
%C,4E,4C,4G,4D,4A,4D,4G,4A,4E,4F,4C,4A,,4D,4G,,4C,4C,4E,4C,4G,4E,4A,,4D,4G,,4A,,4E,4=F,4C,4A,,4D,4G,,4C,4C,4C,4A,,4B,,2C,2D,4G,,12C,4B,,4C,4F,4D,4A,,11^G,,4A,,4B,,4C,4D,4=G,,12F,,4A,,4C,4^C,4D,4E,11A,,4E,4=F,4=C,4A,,4D,4G,,4C,4
