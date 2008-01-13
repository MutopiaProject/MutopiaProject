\header {
	title = "Bradbury"
	composer = "William B. Bradbury (1816-1868), 1859"
	mutopiatitle = "Bradbury (hymntune)"
	mutopiacomposer = "BradburyWB"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1859"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1227"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key d \major fis'4 fis' fis'8 e' fis' g' a'4 ( d'' ) a' ( fis' ) e' fis' g'8 b' a' g' fis'1 fis'4 fis' fis'8 e' fis' g' a'4 ( d'' ) a' ( fis' ) e' fis' g'8 b' a' g' fis'1 a'8 a' b'4 d''2 cis''8 b' a'4 fis'2 fis'8 fis' e'4 b' a' g' fis'2. a'8 a' b'4 d''2 cis''8 b' a'4 d''2 d'8 e' fis'4 a' g' e' d'2.  \bar "|." } }
Alto = { { \key d \major d'4 d' d'8 cis' d' e' fis'2 fis'4 ( d' ) cis' d' e'8 g' fis' e' d'1 d'4 d' d'8 cis' d' e' fis'2 fis'4 ( d' ) cis' d' e'8 g' fis' e' d'1 fis'8 fis' g'4 b'2 a'8 g' fis'4 d'2 d'8 d' cis'4 g' fis' e' d'2. fis'8 fis' g'4 b'2 a'8 g' fis'4 fis'2 d'8 d' d'4 fis' e' cis' d'2.  \bar "|." } }
Tenor = { { \key d \major a4 a a8 a a a a2 d'4 ( a ) a a a8 a a a a1 a4 a a8 a a a a2 d'4 ( a ) a a a8 a a a a1 d'8 d' d'4 d'2 d'8 d' d'4 a2 a8 a a4 a a a a2. d'8 d' d'4 d'2 d'8 d' d'4 a2 fis8 g a4 a a g fis2.  \bar "|." } }
Bass = { { \key d \major d4 d d8 g fis e d2 d a,4 a, a,8 a, a, a, d1 d4 d d8 g fis e d2 d a,4 a, a,8 a, a, a, d1 d8 d g4 g2 g8 g d4 d2 d8 d a,4 a, a, a, d2. d8 d g4 g2 g8 g d4 d2 d8 d d4 d a, a, d2.  \bar "|." } }


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
%T:Bradbury
%M:4/4
%L:1/8
%C:William B. Bradbury (1816-1868), 1859
%Q:1/4=112
%F:bradbury.abc
%N:Public domain
%G:87.87D
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Chalice=558 Celebration=688 Title=Savior Like a Shepherd Lead Us
%V:1
%F4F4F2E2F2G2A4-d4A4-F4E4F4G2B2A2G2F16F4F4F2E2F2G2A4-d4A4-F4E4F4G2B2A2G2F16A2A2B4d8c2B2A4F8F2F2E4B4A4G4F12A2A2B4d8c2B2A4d8D2E2F4A4G4E4D12
%V:2
%D4D4D2C2D2E2F8F4-D4C4D4E2G2F2E2D16D4D4D2C2D2E2F8F4-D4C4D4E2G2F2E2D16F2F2G4B8A2G2F4D8D2D2C4G4F4E4D12F2F2G4B8A2G2F4F8D2D2D4F4E4C4D12
%V:3
%A,4A,4A,2A,2A,2A,2A,8D4-A,4A,4A,4A,2A,2A,2A,2A,16A,4A,4A,2A,2A,2A,2A,8D4-A,4A,4A,4A,2A,2A,2A,2A,16D2D2D4D8D2D2D4A,8A,2A,2A,4A,4A,4A,4A,12D2D2D4D8D2D2D4A,8F,2G,2A,4A,4A,4G,4F,12
%V:4
%D,4D,4D,2G,2F,2E,2D,8D,8A,,4A,,4A,,2A,,2A,,2A,,2D,16D,4D,4D,2G,2F,2E,2D,8D,8A,,4A,,4A,,2A,,2A,,2A,,2D,16D,2D,2G,4G,8G,2G,2D,4D,8D,2D,2A,,4A,,4A,,4A,,4D,12D,2D,2G,4G,8G,2G,2D,4D,8D,2D,2D,4D,4A,,4A,,4D,12
%D,4D,4D,2G,2F,2E,2D,8D,8A,,4A,,4A,,2A,,2A,,2A,,2D,16D,4D,4D,2G,2F,2E,2D,8D,8A,,4A,,4A,,2A,,2A,,2A,,2D,16D,2D,2G,4G,8G,2G,2D,4D,8D,2D,2A,,4A,,4A,,4A,,4D,12D,2D,2G,4G,8G,2G,2D,4D,8D,2D,2D,4D,4A,,4A,,4D,12
