\header {
	title = "Antioch"
	composer = "George Frederick Handel & Lowell Mason (1792-1872)"
	mutopiatitle = "Antioch (hymntune)"
	mutopiacomposer = "HandelGF"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1223"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 2/4  { \key d \major d''4 cis''8. b'16 a'4. g'8 fis'4 e' d'4. a'8 b'4. b'8 cis''4. cis''8 d''4. d''8 d'' cis'' b' a' a'8. g'16 a'8 d'' d'' cis'' b' a' a'8. g'16 fis'8 fis' fis' fis' fis' fis'16 g' a'4. g'16 fis' e'8 e' e' e'16 fis' g'4. fis'16 e' d'8 d''4 b'8 a'8. g'16 fis'8 g' fis'4 e' d'2  \bar "|." } }
Alto = { { \key d \major fis'4 a'8. g'16 fis'4. e'8 d'4 cis' d'4. a'8 g'4. g'8 e'4. e'8 fis'4. fis'8 fis' a' g' fis' fis'8. e'16 fis'8 fis' fis' a' g' fis' fis'8. e'16 d'8 d' d' d' d' d'16 e' fis'4. e'16 d' cis'8 cis' cis' cis'16 d' e'4. d'16 cis' d'8 fis'4 g'8 fis'8. e'16 d'8 e' d'4 cis' d'2  \bar "|." } }
Tenor = { { \key d \major d'4 d'8. d'16 d'4. b8 a4. a,8 fis4. d'8 d'4. d'8 a4. a8 a4. a8 a4 d' d' a8 a a4 d' d' a8 r2 a8 a a a a a2 a8 a a a fis a4 d'8 d'4. b8 a4 a8 g fis2  \bar "|." } }
Bass = { { \key d \major d4 d8. d16 d4. g,8 a,2 d4. fis8 g4. g8 a4. a8 d4. d8 d4 d d4. d8 d4 d d4. r2 d8 d d d d a4. ( a, ) a,8 a, d4. d8 d4. g,8 a,4 a, d2  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 95 4 ) } }
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
%T:Antioch
%M:2/4
%L:1/8
%C:George Frederick Handel & Lowell Mason (1792-1872)
%Q:1/4=95
%F:antioch.abc
%N:Public domain
%G:CM with repeat
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Title=Joy to the World
%V:1
%d4c3B1A6G2F4E4D6A2B6B2c6c2d6d2d2c2B2A2A3G1A2d2d2c2B2A2A3G1F2F2F2F2F2F1G1A6G1F1E2E2E2E1F1G6F1E1D2d4B2A3G1F2G2F4E4D8
%V:2
%F4A3G1F6E2D4C4D6A2G6G2E6E2F6F2F2A2G2F2F3E1F2F2F2A2G2F2F3E1D2D2D2D2D2D1E1F6E1D1C2C2C2C1D1E6D1C1D2F4G2F3E1D2E2D4C4D8
%V:3
%D4D3D1D6B,2A,6A,,2F,6D2D6D2A,6A,2A,6A,2A,4D4D4A,2A,2A,4D4D4A,2z8A,2A,2A,2A,2A,2A,8A,2-A,2-A,2A,2F,2A,4D2D6B,2A,4A,2G,2F,8
%V:4
%D,4D,3D,1D,6G,,2A,,8D,6F,2G,6G,2A,6A,2D,6D,2D,4D,4D,6D,2D,4D,4D,6z8D,2D,2D,2D,2D,2A,6-A,,6A,,2-A,,2D,6D,2D,6G,,2A,,4A,,4D,8
%D,4D,3D,1D,6G,,2A,,8D,6F,2G,6G,2A,6A,2D,6D,2D,4D,4D,6D,2D,4D,4D,6z8D,2D,2D,2D,2D,2A,6-A,,6A,,2-A,,2D,6D,2D,6G,,2A,,4A,,4D,8
