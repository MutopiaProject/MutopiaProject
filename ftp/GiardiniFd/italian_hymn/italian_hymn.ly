\header {
	title = "Italian Hymn"
	composer = "Felice de Giardini, 1769"
	mutopiatitle = "Italian Hymn (hymntune)"
	mutopiacomposer = "GiardiniFd"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1769"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1253"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4  { \key g \major d''8 b' g' a' g' fis' g'4. g'8 a' b' c''16 d'' c''8 b' a'4. d''8 b' g' d'4. a'8 b' c'' b'8. a'16 g'8 a' b' c'' b'8. a'16 g'8 g' b' d'' d''8. e''16 d''8 c'' b' a' g'4.  \bar "|." } }
Alto = { { \key g \major g'8 d' d' e' d' d' d'4. d'8 d' g' fis' a' g' fis'4. d''8 b' g' d'4. fis'8 g' a' g'8. fis'16 g'8 fis' g' a' g'8. fis'16 g'8 g' b' d'' g'8. g'16 g'8 a' g' fis' g'4.  \bar "|." } }
Tenor = { { \key g \major b8 d' d' c' b a b4. b8 d' d' d'4 d'8 d'4. d'8 b g d4. d'8 d' d' d'8. c'16 b8 d' d' d' d'8. c'16 b8 g b d' b8. c'16 b8 e' d' c' <<g4. b >> \bar "|." } }
Bass = { { \key g \major g8 g b, c d d g,4. g8 fis g a fis g d4. d'8 b g d4. d8 d d g8. g16 g8 d d d g8. g16 g8 g b d' g8. g16 g8 c d d g,4.  \bar "|." } }


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
%T:Italian Hymn
%M:3/4
%L:1/8
%C:Felice de Giardini, 1769
%Q:1/4=60
%F:italian_hymn.abc
%N:Public domain
%G:664.6664
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Chalice=27 Tranpose=-2 Title=Come, Thou Almighty King
%V:1
%d2B2G2A2G2F2G6G2A2B2c1d1c2B2A6d2B2G2D6A2B2c2B3A1G2A2B2c2B3A1G2G2B2d2d3e1d2c2B2A2G6
%V:2
%G2D2D2E2D2D2D6D2D2G2F2A2G2F6d2B2G2D6F2G2A2G3F1G2F2G2A2G3F1G2G2B2d2G3G1G2A2G2F2G6
%V:3
%B,2D2D2C2B,2A,2B,6B,2D2D2D4D2D6D2B,2G,2D,6D2D2D2D3C1B,2D2D2D2D3C1B,2G,2B,2D2B,3C1B,2E2D2C2 [G,6B,6]
%V:4
%G,2G,2B,,2C,2D,2D,2G,,6G,2F,2G,2A,2F,2G,2D,6D2B,2G,2D,6D,2D,2D,2G,3G,1G,2D,2D,2D,2G,3G,1G,2G,2B,2D2G,3G,1G,2C,2D,2D,2G,,6
%G,2G,2B,,2C,2D,2D,2G,,6G,2F,2G,2A,2F,2G,2D,6D2B,2G,2D,6D,2D,2D,2G,3G,1G,2D,2D,2D,2G,3G,1G,2G,2B,2D2G,3G,1G,2C,2D,2D,2G,,6
