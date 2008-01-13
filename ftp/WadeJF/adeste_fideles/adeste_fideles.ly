\header {
	title = "Adeste Fideles"
	composer = "John Francis Wade (1711-1786), circa 1743"
	mutopiatitle = "Adeste Fideles (hymntune)"
	mutopiacomposer = "WadeJF"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1743"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1220"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  { \key g \major g'4 g'2 d'4 g' a'2 d' b'4 a' b' c'' b'2 a'4 g' g'2 fis'4 e' fis' g' a' b' fis'2 e'4. d'8 d'1 d''2 c''4 b' c''2 b' a'4 b' g' a' fis'4. e'8 d'4 b' b' a' b' c'' b'2 a'4 b' b' a' b' c'' b'2 a'4 b' c'' b' a' g' fis'2 g'4 c'' b'2 a'4. g'8 g'2. s4  \bar "|." } }
Alto = { { \key g \major d'4 d'2 d'4 d' d'2 d' d'4 d' d' e' d'2 d'4 b b cis' d' cis' d'2 d'4 d' d'2 cis'4. d'8 d'1 d'2 e'8 fis' g'4 g' fis' g'2 d'4 d' e' e' d'2 d'4 b' b' a' b' c'' b'2 a'4 d' d' d' d' d' d'2 d'4 g' e'8 fis' g'4 d' d'8 cis' d'2 d'4 e' d'2 d'4. b8 b2. s4  \bar "|." } }
Tenor = { { \key g \major b4 b2 b4 b a2 a g4 a g g g2 fis4 g g2 a4 a a g fis e a2 g4. fis8 fis1 b2 c'4 d' c'2 d' a4 g b c' a4. g8 fis4 r r1 r2. g4 g fis g a g2 fis4 d' c' d' a a a2 g4 g g2 fis4. g8 g2. s4  \bar "|." } }
Bass = { { \key g \major g4 g2 b4 g fis2 fis g4 fis g c d2 d4 e e2 d4 a, d b, fis, g, a,2 a,4. d8 d1 b2 a4 g a2 g fis4 g e c d2 d4 r r1 r2. g4 g fis g a g2 fis4 g a g fis e d c b, c d2 d4. g,8 g,2. s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 55 4 ) } }
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
%T:Adeste Fideles
%M:4/4
%L:1/4
%C:John Francis Wade (1711-1786), circa 1743
%Q:1/4=55
%F:adeste_fideles.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Partial=4 Title=O Come, All Ye Faithful
%V:1
%G2G4D2G2A4D4B2A2B2c2B4A2G2G4F2E2F2G2A2B2F4E3D1D8d4c2B2c4B4A2B2G2A2F3E1D2B2B2A2B2c2B4A2B2B2A2B2c2B4A2B2c2B2A2G2F4G2c2B4A3G1G6
%V:2
%D2D4D2D2D4D4D2D2D2E2D4D2B,2B,2^C2D2^C2D4D2D2D4^C3D1D8D4E1F1G2G2F2G4D2D2E2E2D4D2B2B2A2B2c2B4A2D2D2D2D2D2D4D2G2E1F1G2D2D1^C1D4D2E2D4D3B,1B,6
%V:3
%B,2B,4B,2B,2A,4A,4G,2A,2G,2G,2G,4F,2G,2G,4A,2A,2A,2G,2F,2E,2A,4G,3F,1F,8B,4=C2D2C4D4A,2G,2B,2C2A,3G,1F,2z2z8z6G,2G,2F,2G,2A,2G,4F,2D2C2D2A,2A,2A,4G,2G,2G,4F,3G,1G,6
%V:4
%G,2G,4B,2G,2F,4F,4G,2F,2G,2C,2D,4D,2E,2E,4D,2A,,2D,2B,,2F,,2G,,2A,,4A,,3D,1D,8B,4A,2G,2A,4G,4F,2G,2E,2C,2D,4D,2z2z8z6G,2G,2F,2G,2A,2G,4F,2G,2A,2G,2F,2E,2D,2C,2B,,2C,2D,4D,3G,,1G,,6
%G,2G,4B,2G,2F,4F,4G,2F,2G,2C,2D,4D,2E,2E,4D,2A,,2D,2B,,2F,,2G,,2A,,4A,,3D,1D,8B,4A,2G,2A,4G,4F,2G,2E,2C,2D,4D,2z2z8z6G,2G,2F,2G,2A,2G,4F,2G,2A,2G,2F,2E,2D,2C,2B,,2C,2D,4D,3G,,1G,,6
