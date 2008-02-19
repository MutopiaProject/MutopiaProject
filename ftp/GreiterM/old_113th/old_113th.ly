\header {
	title = "Old 113th"
	composer = "Matthaus Greiter (1500-1552), 1525"
	mutopiatitle = "Old 113th (hymntune)"
	mutopiacomposer = "GreiterM"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1525"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1285"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key d \major d'2 d'4 e' fis' d' fis' g' a'2 a' g'4 fis' e' d' fis' gis' a'2 b' a'4 g' fis' d' e' e' d'1 d''2 d''4 d'' cis'' a' b' b' a'2 d'' d''4 d'' cis'' a' b' b' a'2 d' e'4 fis' g' fis' e' e' d'1  \bar "|." } }
Alto = { { \key d \major a2 b4 cis' d' d' d' d' cis'2 d' d'4 d' cis' b a d' cis'2 d' cis'4 b a d' d' cis' d'1 fis'2 fis'4 d' e' d' d' g' fis'2 fis' fis'8 g' a' e' e'4 cis' fis' e'8 d' cis'2 d' cis'4 d' d' d' d' cis' d'1  \bar "|." } }
Tenor = { { \key d \major fis2 fis4 a a a a d e2 fis g4 a a fis fis d e2 g e4 d8 e fis4 fis b a8 g fis1 a2 a4 a a d' d' d' d'2 a a4 a8 b a4. a8 a4 gis a2 fis a4 a b b b a8 g fis1  \bar "|." } }
Bass = { { \key d \major d2 b,4 a, d fis d b, a,2 d b,4 d a, b, d b, a,2 g, a,4 b,8 cis d4 b, g, a, d1 d2 d4 fis a fis g g, d2 d d8 e fis gis a4. fis8 d4 e a,2 b, a,4 d g, b, g, a, d1  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 63 4 ) } }
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
%T:Old 113th
%M:4/4
%L:1/4
%C:Matthaus Greiter (1500-1552), 1525
%Q:1/4=63
%F:old_113th.abc
%N:Public domain
%G:888.888
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Chalice=20 Title=I'll Praise my Maker
%V:1
%D4D2E2F2D2F2G2A4A4G2F2E2D2F2^G2A4B4A2=G2F2D2E2E2D8d4d2d2c2A2B2B2A4d4d2d2c2A2B2B2A4D4E2F2G2F2E2E2D8
%V:2
%A,4B,2C2D2D2D2D2C4D4D2D2C2B,2A,2D2C4D4C2B,2A,2D2D2C2D8F4F2D2E2D2D2G2F4F4F1G1A1E1E2C2F2E1D1C4D4C2D2D2D2D2C2D8
%V:3
%F,4F,2A,2A,2A,2A,2D,2E,4F,4G,2A,2A,2F,2F,2D,2E,4G,4E,2D,1E,1F,2F,2B,2A,1G,1F,8A,4A,2A,2A,2D2D2D2D4A,4A,2A,1B,1A,3A,1A,2^G,2A,4F,4A,2A,2B,2B,2B,2A,1=G,1F,8
%V:4
%D,4B,,2A,,2D,2F,2D,2B,,2A,,4D,4B,,2D,2A,,2B,,2D,2B,,2A,,4G,,4A,,2B,,1C,1D,2B,,2G,,2A,,2D,8D,4D,2F,2A,2F,2G,2G,,2D,4D,4D,1E,1F,1^G,1A,3F,1D,2E,2A,,4B,,4A,,2D,2G,,2B,,2G,,2A,,2D,8
%D,4B,,2A,,2D,2F,2D,2B,,2A,,4D,4B,,2D,2A,,2B,,2D,2B,,2A,,4G,,4A,,2B,,1C,1D,2B,,2G,,2A,,2D,8D,4D,2F,2A,2F,2G,2G,,2D,4D,4D,1E,1F,1^G,1A,3F,1D,2E,2A,,4B,,4A,,2D,2G,,2B,,2G,,2A,,2D,8
