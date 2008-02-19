\header {
	title = "Woodworth"
	composer = "William B. Bradbury, 1849"
	mutopiatitle = "Woodworth (hymntune)"
	mutopiacomposer = "BradburyWB"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1849"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1305"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 6/4 \partial 4  { \key d \major d'8 e' fis'2 fis'4 a'4. g'8 fis'4 e'4. fis'8 g'4 fis'2 a'4 a' e' fis' g'2 b'4 b'2 a'4 fis'2 d'8 e' fis'2 fis'4 a'4. g'8 fis'4 b'2 b'4 d''4. cis''8 b'4 a'2 a'4 a'4. g'8 fis'4 e'2. a' fis' ( fis'2 ) s4  \bar "|." } }
Alto = { { \key d \major d'8 e' d'2 d'4 fis'4. e'8 d'4 cis'4. d'8 e'4 d'2 fis'4 e'2 d'4 e'2 g'4 g'2 fis'4 d'2 d'8 e' d'2 d'4 fis'4. e'8 d'4 g'2 g'4 g'2 g'4 fis'2 fis'4 fis'4. e'8 d'4 cis'2. cis' d' ( d'2 ) s4  \bar "|." } }
Tenor = { { \key d \major fis8 g a2 a4 a2 a4 a2 a4 a2 d'4 cis'2 a4 a2 cis'4 d'2 d'4 a2 fis8 g a2 a4 a2 d'4 d'2 d'4 b4. cis'8 d'4 d'2 d'4 a2 a4 a2. a a ( a2 ) s4  \bar "|." } }
Bass = { { \key d \major d4 d2 d4 d2 d4 a,2 a,4 d2 d4 a2 a4 a2 a,4 d2 d4 d2 d4 d2 d4 d4. e8 fis4 g2 g4 g2 g4 d2 d4 d2 d4 a2. a, d ( d2 ) s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 60 4 ) } }
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
%T:Woodworth
%M:6/4
%L:1/4
%C:William B. Bradbury, 1849
%Q:1/4=60
%F:woodworth.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Partial=4 Chalice=339 Title=Just as I Am
%V:1
%D1E1F4F2A3G1F2E3F1G2F4A2A2E2F2G4B2B4A2F4D1E1F4F2A3G1F2B4B2d3c1B2A4A2A3G1F2E6A6F6-F4
%V:2
%D1E1D4D2F3E1D2C3D1E2D4F2E4D2E4G2G4F2D4D1E1D4D2F3E1D2G4G2G4G2F4F2F3E1D2C6C6D6-D4
%V:3
%F,1G,1A,4A,2A,4A,2A,4A,2A,4D2C4A,2A,4C2D4D2A,4F,1G,1A,4A,2A,4D2D4D2B,3C1D2D4D2A,4A,2A,6A,6A,6-A,4
%V:4
%D,2D,4D,2D,4D,2A,,4A,,2D,4D,2A,4A,2A,4A,,2D,4D,2D,4D,2D,4D,2D,3E,1F,2G,4G,2G,4G,2D,4D,2D,4D,2A,6A,,6D,6-D,4
%D,2D,4D,2D,4D,2A,,4A,,2D,4D,2A,4A,2A,4A,,2D,4D,2D,4D,2D,4D,2D,3E,1F,2G,4G,2G,4G,2D,4D,2D,4D,2A,6A,,6D,6-D,4
