\header {
	title = "St. Agnes"
	composer = "John Bacchus Dykes (1823-1876), 1866"
	mutopiatitle = "St. Agnes (hymntune)"
	mutopiacomposer = "DykesJB"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1866"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1289"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4  { \key g \major b'4 b' b' a'2 b'4 c''2 fis'4 g'2. d'4 d' d' b'2 a'4 a'2. c''4 c'' b' a'2 g'4 fis'2 e'4 d'2. d'4 e' g' b'2 a'4 g'2.  \bar "|." } }
Alto = { { \key g \major e'4 d' d' e'2 d'4 c' e' d' d'2. d'4 d' d' d'2 cis'4 d'2. e'4 e' d' c'2 ( c'4 ) d'2 cis'4 d'2. d'4 d' d' c' b d' b2.  \bar "|." } }
Tenor = { { \key g \major b4 b g c'2 g4 a2 a4 b2. c'4 b a g2 g4 fis2. e4 fis gis a2 a4 a2 g4 fis2. g4 g g g2 fis4 g2.  \bar "|." } }
Bass = { { \key g \major g4 g b, c2 b,4 a,2 d4 g2. a4 g fis g2 e4 d2. a,4 a, a, a,2 a,4 d2 d4 d2 c4 b, c e d2 d4 g,2.  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 94 4 ) } }
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
%T:St. Agnes
%M:3/4
%L:1/4
%C:John Bacchus Dykes (1823-1876), 1866
%Q:1/4=94
%F:st_agnes.abc
%N:Public domain
%G:CM
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Chalice=102 Title=Jesus, the Very Thought of Thee
%V:1
%B2B2B2A4B2c4F2G6D2D2D2B4A2A6c2c2B2A4G2F4E2D6D2E2G2B4A2G6
%V:2
%E2D2D2E4D2C2E2D2D6D2D2D2D4^C2D6E2E2D2=C4-C2D4^C2D6D2D2D2=C2B,2D2B,6
%V:2
%B,2B,2G,2C4G,2A,4A,2B,6C2B,2A,2G,4G,2F,6E,2F,2^G,2A,4A,2A,4=G,2F,6G,2G,2G,2G,4F,2G,6
%V:4
%G,2G,2B,,2C,4B,,2A,,4D,2G,6A,2G,2F,2G,4E,2D,6A,,2A,,2A,,2A,,4A,,2D,4D,2D,4C,2B,,2C,2E,2D,4D,2G,,6
%G,2G,2B,,2C,4B,,2A,,4D,2G,6A,2G,2F,2G,4E,2D,6A,,2A,,2A,,2A,,4A,,2D,4D,2D,4C,2B,,2C,2E,2D,4D,2G,,6
