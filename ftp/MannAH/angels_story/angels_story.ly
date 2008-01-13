\header {
	title = "Angel's Story"
	composer = "Arthur Henry Mann (1850-1929), 1881"
	mutopiatitle = "Angel's Story (hymntune)"
	mutopiacomposer = "MannAH"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1881"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1222"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  \transpose g f { \key g \major b'4 b'4. b'8 a'4 g' g'2 fis'4 d' c''4. c''8 b'4 a' b'2. b'4 d''4. d''8 c''4 b' b'2 c''4 b' a'4. g'8 fis'4 g' a'2. ais'4 b'4. b'8 a'4 g' g'2 fis'4 d' c''4. c''8 b'4 a' b'2. b'4 e''4. d''8 c''4 b' d''2 c''4 e' g'4. fis'8 e'4 fis' g'2. s4  \bar "|." } }
Alto = { \transpose g f { \key g \major d'4 d'4. d'8 c'4 b8 d' d'2 d'4 d' d' fis'8 fis' g'4 d' d'2. g'4 gis'4. gis'8 a'4 e' e'2 e'4 e' e'4. cis'8 cis'4 cis' d'2. c'4 b d'8 d' c'4 b8 d' d'2 d'4 d' d' fis'8 fis' g'4 d' d'2. g'4 gis'4. gis'8 a'4 e' e'2 e'4 c' d'4. c'8 c'4 c' b2. s4  \bar "|." } }
Tenor = { \transpose g f { \key g \major g4 d e fis g b2 a4 fis fis a8 a g4 c' b2. b4 b4. b8 e'4 d' d'2 c'4 d' cis'4. b8 a4 g g2 fis4 fis g d8 e fis4 fis b2 a4 fis fis a8 a g4 c' b2. b4 b4. b8 e'4 d' b2 c'4 a b4. a8 g4 a g2. s4  \bar "|." } }
Bass = { \transpose g f { \key g \major g,4 g, g, g, g,8 b, d2 d4 d d4. d8 e4 fis g2. g4 e4. e8 fis4 gis gis2 a4 a a,4. a,8 a,4 a, d2. d4 g, g, g, g,8 b, d2 d4 d d4. d8 e4 fis g2. g4 e4. e8 fis4 gis gis2 a4 a, d4. d8 d4 d g,2. s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 84 4 ) } }
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
%T:Angel's Story
%M:4/4
%L:1/8
%C:Arthur Henry Mann (1850-1929), 1881
%Q:1/4=84
%F:angels_story.abc
%N:Public domain
%G:76.76D
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Partial=4 Transpose=-2 Chalice=612 Celebration=676 Title=O Jesus I Have Promised
%V:1
%B4B6B2A4G4G8F4D4c6c2B4A4B11B4d6d2c4B4B8c4B4A6=G2F4G4A11^A4B6B2=A4G4G8F4D4c6c2B4A4B11B4e6d2c4B4d8c4E4=G6F2E4F4G12
%V:2
%D4D6D2C4B,2D2D8D4D4D4F2-F2G4D4D11G4^G6^G2A4E4E8E4E4E6^C2^C4^C4D11=C4B,4D2-D2C4B,2D2D8D4D4D4F2-F2G4D4D11G4^G6^G2A4E4E8E4C4D6C2C4C4B,12
%V:3
%G,4D,4E,4F,4G,4B,8A,4F,4F,4A,2-A,2G,4C4B,11B,4B,6B,2E4D4D8C4D4^C6B,2A,4=G,4G,8F,4F,4G,4D,2E,2F,4F,4B,8A,4F,4F,4A,2-A,2G,4=C4B,11B,4B,6B,2E4D4B,8C4A,4B,6A,2=G,4A,4G,12
%V:4
%G,,4G,,4G,,4G,,4G,,2B,,2D,8D,4D,4D,6D,2E,4F,4G,11G,4E,6E,2F,4^G,4^G,8A,4A,4A,,6A,,2A,,4A,,4D,11D,4G,,4G,,4G,,4G,,2B,,2D,8D,4D,4D,6D,2E,4F,4G,11G,4E,6E,2F,4^G,4^G,8A,4A,,4D,6D,2D,4D,4G,,12
%G,,4G,,4G,,4G,,4G,,2B,,2D,8D,4D,4D,6D,2E,4F,4G,11G,4E,6E,2F,4^G,4^G,8A,4A,4A,,6A,,2A,,4A,,4D,11D,4G,,4G,,4G,,4G,,2B,,2D,8D,4D,4D,6D,2E,4F,4G,11G,4E,6E,2F,4^G,4^G,8A,4A,,4D,6D,2D,4D,4G,,12
