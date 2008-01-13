\header {
	title = "Brother James' Air Air"
	composer = "J. L. Macbeth Bain (1840?-1925)"
	mutopiatitle = "Brother James' Air Air (hymntune)"
	mutopiacomposer = "BainJLM"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1230"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/2 \partial 2  { \key d \major d'4 fis'8 a' d''4 a' b'8 d'' a'4 g' fis'8 d' d'4 cis' d'2 d'4 fis'8 a' d''4 a' b'8 d'' a'4 g' fis'8 d' d'4 cis' d'2 e'4 fis'8 d' d'4 e' fis'8 d' d'4 e' fis'8 a' d''4 d'' d''2 s2  \bar "|." } }
Alto = { { \key d \major d'4 d'8 cis' d'4 fis' a'8 g' fis'4 d'8 e' d' d' g4 a a2 d'4 d'8 d' fis'4 fis' d'8 fis' e'4 g' d'8 d' a4 a a2 cis'4 d'8 d' d'4 b8 cis' d' d' b4 cis' d'8 d' fis' g' a' g' fis'2 s2  \bar "|." } }
Tenor = { { \key d \major fis4 a8 g a4 d'8 cis' b g a4 b a8 fis e4 e fis2 fis4 a8 fis b4 cis' b8 b cis'4 d' d'8 b a4 g fis2 a4 a8 fis a4 g fis8 fis fis4 a a8 fis b4 b a2 s2  \bar "|." } }
Bass = { { \key d \major d4 d8 e fis4 d g,8 b, d4 b,8 cis d d e4 a, d2 d4 d8 cis b,4 fis g8 g a4 b a8 g fis4 e d2 a,4 d8 d fis4 e b,8 b, b,4 a, d8 d b,4 g, d2 s2  \bar "|." } }


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
%T:Brother James' Air Air
%M:3/2
%L:1/8
%C:J. L. Macbeth Bain (1840?-1925)
%Q:1/4=60
%F:brother_james_air.abc
%N:Public domain
%G:86.86.86
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Partial=2 Chalice=79 Title=God Is My Shepherd
%V:1
%D4F2A2d4A4B2d2A4G4F2D2D4C4D8D4F2A2d4A4B2d2A4G4F2D2D4C4D8E4F2D2D4E4F2D2D4E4F2A2d4d4d8
%V:2
%D4D2C2D4F4A2G2F4D2E2D2D2G,4A,4A,8D4D2D2F4F4D2F2E4G4D2D2A,4A,4A,8C4D2D2D4B,2C2D2D2B,4C4D2D2F2G2A2G2F8
%V:3
%F,4A,2G,2A,4D2C2B,2G,2A,4B,4A,2F,2E,4E,4F,8F,4A,2F,2B,4C4B,2B,2C4D4D2B,2A,4G,4F,8A,4A,2F,2A,4G,4F,2F,2F,4A,4A,2F,2B,4B,4A,8
%V:4
%D,4D,2E,2F,4D,4G,,2B,,2D,4B,,2C,2D,2D,2E,4A,,4D,8D,4D,2C,2B,,4F,4G,2G,2A,4B,4A,2G,2F,4E,4D,8A,,4D,2D,2F,4E,4B,,2B,,2B,,4A,,4D,2D,2B,,4G,,4D,8
%D,4D,2E,2F,4D,4G,,2B,,2D,4B,,2C,2D,2D,2E,4A,,4D,8D,4D,2C,2B,,4F,4G,2G,2A,4B,4A,2G,2F,4E,4D,8A,,4D,2D,2F,4E,4B,,2B,,2B,,4A,,4D,2D,2B,,4G,,4D,8
