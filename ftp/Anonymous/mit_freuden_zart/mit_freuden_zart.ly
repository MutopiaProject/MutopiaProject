\header {
	title = "Mit Freuden Zart"
	composer = "Anonymous, 1556"
	mutopiatitle = "Mit Freuden Zart (hymntune)"
	mutopiacomposer = "Anonymous"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1556"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1262"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/2 \partial 2  { \key d \major d'2 fis'4 g' a'2 d'' cis''4 b' a'2 b'4. a'8 g'4 fis' e'2 fis'4 g' e'2 d'\fermata  d' fis'4 g' a'2 d'' cis''4 b' a'2 b'4. a'8 g'4 fis' e'2 fis'4 g' e'2 d'\fermata  d'' cis''4 b' a'2 d'' cis''4 b' a'2 a' d'4 e' fis'2 d' fis'4 gis' a'2 a' b'4 g' e'2 fis'4 g' e'2 d' s2  \bar "|." } }
Alto = { { \key d \major a2 d'4 cis' d'2 d' d'4 d' d'2 dis' e'4 d' cis'2 d' d'4 cis' d'2 a d'4 cis' d'2 d' d'4 d' d'2 dis' e'4 d' cis'2 d' d'4 cis' d'2 fis' fis'4 f' cis'2 d' e'4 e' e'2 cis' d'4 cis' d'2 a d'4 d' cis'2 d' d'4 d' cis'2 d' d'4 cis' d'2 s2  \bar "|." } }
Tenor = { { \key d \major fis2 a4 a fis2 a a4 g fis2 fis4 b b a a2 a4 b a4. g8 fis2 fis a4 a fis2 a a4 g g2 fis4 b b a a2 a4 b a4. g8 fis2 b a4 gis fis2 fis a4 gis cis'2 a a4 g a2 fis b4 b a2 d'4 c' b2 a a4 b a4. g8 fis2 s2  \bar "|." } }
Bass = { { \key d \major d2 d4 e fis2 fis, g,4 b, d c b,2 e4 fis8 g a4 ( g ) fis e a ( a, ) d2\fermata  d d4 e fis2 fis, g,4 b, d c b,2 e4 fis8 g a4 ( g ) fis e a ( a, ) d2\fermata  b, cis4 cis fis2 b, cis4 e a2 a4 ( g ) fis e d2 d4 cis b, e a ( g ) fis2 g4 fis a ( g ) fis e a ( a, ) d2 s2  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 85 4 ) } }
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
%T:Mit Freuden Zart
%M:3/2
%L:1/4
%C:Anonymous, 1556
%Q:1/4=85
%F:mit_freuden_zart.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Partial=2 Chalice=6 Title=Sing Praise to God
%V:1
%D4F2G2A4d4c2B2A4B3A1G2F2E4F2G2E4HD4D4F2G2A4d4c2B2A4B3A1G2F2E4F2G2E4HD4d4c2B2A4d4c2B2A4A4D2E2^F4D4F2^G2A4A4B2=G2E4F2G2E4D4
%V:2
%A,4D2C2D4D4D2D2D4^D4E2=D2C4D4D2C2D4A,4D2C2D4D4D2D2D4^D4E2=D2C4D4D2C2D4F4F2=F2C4D4E2E2E4C4D2C2D4A,4D2D2C4D4D2D2C4D4D2C2D4
%V:3
%F,4A,2A,2F,4A,4A,2G,2F,4F,2B,2B,2A,2A,4A,2B,2A,3G,1F,4F,4A,2A,2F,4A,4A,2G,2G,4F,2B,2B,2A,2A,4A,2B,2A,3G,1F,4B,4A,2^G,2F,4F,4A,2^G,2C4A,4A,2G,2A,4F,4B,2B,2A,4D2=C2B,4A,4A,2B,2A,3G,1F,4
%V:4
%D,4D,2E,2F,4F,,4G,,2B,,2D,2=C,2B,,4E,2F,1G,1A,2-G,2F,2E,2A,2-A,,2HD,4D,4D,2E,2F,4F,,4G,,2B,,2D,2=C,2B,,4E,2F,1G,1A,2-G,2F,2E,2A,2-A,,2HD,4B,,4^C,2C,2F,4B,,4C,2E,2A,4A,2-=G,2F,2E,2D,4D,2C,2B,,2E,2A,2-G,2F,4G,2F,2A,2-G,2F,2E,2A,2-A,,2D,4
%D,4D,2E,2F,4F,,4G,,2B,,2D,2=C,2B,,4E,2F,1G,1A,2-G,2F,2E,2A,2-A,,2HD,4D,4D,2E,2F,4F,,4G,,2B,,2D,2=C,2B,,4E,2F,1G,1A,2-G,2F,2E,2A,2-A,,2HD,4B,,4^C,2C,2F,4B,,4C,2E,2A,4A,2-=G,2F,2E,2D,4D,2C,2B,,2E,2A,2-G,2F,4G,2F,2A,2-G,2F,2E,2A,2-A,,2D,4
