\header {
	title = "Nicaea"
	composer = "John Bacchus Dykes (1823-1876), 1861"
	mutopiatitle = "Nicaea (hymntune)"
	mutopiacomposer = "DykesJB"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1861"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1284"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key d \major d'4 d' fis' fis' a'2 a' b' b'4 b' a'2 fis'2 a'4. a'8 a'4 a' d''2 cis''4 a' e' a' b'4. a'8 a'2. ( a'4 ) d' d' fis' fis' a'2 a' b'4. b'8 b'4 b' a'2 a'2 d''2 a'4 a' b'2 fis' g'4 e' e'4. d'8 d'1  \bar "|." } }
Alto = { { \key d \major a4 a d' d' cis' e' d' cis' b cis' d' e' fis'2 d'2 e'4. e'8 fis'4 e' d' e' e' fis' e' cis' d'4. cis'8 cis'2. ( cis'4 ) a a d' d' cis' e' d' cis' b cis'8 cis' d'4 e' fis'2 d'2 d'2 d'4 d' d'2 d'4 cis' b b cis'4. d'8 d'1  \bar "|." } }
Tenor = { { \key d \major fis4 fis d d e g fis a g a b cis' d' a a2 a4 a a a fis gis a a cis' a gis4. a8 a2 g4. ( g8 ) fis4 fis d d e g fis a g a8 a b4 cis' d' a fis2 fis4 g a c' b2 a g4 g g4. fis8 fis1  \bar "|." } }
Bass = { { \key d \major d4 d b, b, a,2 d g, g4 g d2 d2 cis4 cis d cis b,2 cis4 d e e e4. a,8 a,2 ( a,2 ) d4 d b, b, a,2 d g,4. g,8 g4 g d2 d2 b,2 fis,4 fis, g,2 d g,4 g, a,4. d8 d1  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 110 4 ) } }
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
%T:Nicaea
%M:4/4
%L:1/8
%C:John Bacchus Dykes (1823-1876), 1861
%Q:1/4=110
%F:nicaea.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Chalice=4 Title=Holy Holy Holy
%V:1
%D4D4F4F4A8A8B8B4B4A8F7A6A2A4A4d8c4A4E4A4B6A2A12-A4D4D4F4F4A8A8B6B2B4B4A8A7d8A4A4B8F8G4E4E6D2D16
%V:2
%A,4A,4D4D4C4E4D4C4B,4C4D4E4F8D7E6E2F4E4D4E4E4F4E4C4D6C2C12-C4A,4A,4D4D4C4E4D4C4B,4C2C2D4E4F8D7D8D4D4D8D4C4B,4B,4C6D2D16
%V:3
%F,4F,4D,4D,4E,4G,4F,4A,4G,4A,4B,4C4D4A,4A,7A,4A,4A,4A,4F,4^G,4A,4A,4C4A,4^G,6A,2A,8=G,6-G,2F,4F,4D,4D,4E,4G,4F,4A,4G,4A,2A,2B,4C4D4A,4F,7F,4G,4A,4=C4B,8A,8G,4G,4G,6F,2F,16
%V:4
%D,4D,4B,,4B,,4A,,8D,8G,,8G,4G,4D,8D,7C,4C,4D,4C,4B,,8C,4D,4E,4E,4E,6A,,2A,,8-A,,7D,4D,4B,,4B,,4A,,8D,8G,,6G,,2G,4G,4D,8D,7B,,8F,,4F,,4G,,8D,8G,,4G,,4A,,6D,2D,16
%D,4D,4B,,4B,,4A,,8D,8G,,8G,4G,4D,8D,7C,4C,4D,4C,4B,,8C,4D,4E,4E,4E,6A,,2A,,8-A,,7D,4D,4B,,4B,,4A,,8D,8G,,6G,,2G,4G,4D,8D,7B,,8F,,4F,,4G,,8D,8G,,4G,,4A,,6D,2D,16
