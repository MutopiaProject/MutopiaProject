\header {
	title = "Ibstone"
	composer = "Maria Tiddeman (1837-1909), 1875"
	mutopiatitle = "Ibstone (hymntune)"
	mutopiacomposer = "TiddemanM"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1875"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1251"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/2  { \key d \major d'4 fis'8 g' a'4 e' fis'2 a'4 d''8 cis'' b'4 cis''8 b' a'2 a'4 a'8 g' fis'4 e' d'2 d'4 e'8 fis' g'4 fis'8 e' d'2  \bar "|." } }
Alto = { { \key d \major d'4 d'8 d' d'4 cis' d'2 fis'4 fis'8 e' fis'4 e'8 d' cis'2 cis'4 d'8 e' d'4 cis' d'2 d'4 d'8 d' d'4 cis' d'2  \bar "|." } }
Tenor = { { \key d \major fis4 d8 e fis4 a a2 a4 a8 a a4 gis a2 a4 a8 a a4 g fis2 a4 b8 a b4 a8 g fis2  \bar "|." } }
Bass = { { \key d \major d4 b,8 b, a,4 a, d2 d4 b,8 cis d4 e a,2 g4 fis8 cis d4 a, b,2 fis4 g8 fis e4 a, d2  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 75 4 ) } }
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
%T:Ibstone
%M:3/2
%L:1/8
%C:Maria Tiddeman (1837-1909), 1875
%Q:1/4=75
%F:ibstone.abc
%N:Public domain
%G:66.66
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Chalice=409 Title=I Hunger and I Thirst
%V:1
%D4F2G2A4E4F8A4d2c2B4c2B2A8A4A2G2F4E4D8D4E2F2G4F2E2D8
%V:2
%D4D2D2D4C4D8F4F2E2F4E2D2C8C4D2E2D4C4D8D4D2D2D4C4D8
%V:3
%F,4D,2E,2F,4A,4A,8A,4A,2A,2A,4^G,4A,8A,4A,2A,2A,4G,4F,8A,4B,2A,2B,4A,2G,2F,8
%V:4
%D,4B,,2B,,2A,,4A,,4D,8D,4B,,2C,2D,4E,4A,,8=G,4F,2C,2D,4A,,4B,,8F,4G,2F,2E,4A,,4D,8
%D,4B,,2B,,2A,,4A,,4D,8D,4B,,2C,2D,4E,4A,,8=G,4F,2C,2D,4A,,4B,,8F,4G,2F,2E,4A,,4D,8
