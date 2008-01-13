\header {
	title = "Lauda Anima"
	composer = "John Goss (1800-1880), 1869"
	mutopiatitle = "Lauda Anima (hymntune)"
	mutopiacomposer = "GossJ"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1869"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1254"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 2/4  { \key d \major a'4 a' a' a' d'' cis'' b'2 a' g'4 fis' b' a' fis' g' e'2 fis'4 fis' fis'4. fis'8 b'4 a' a' gis' a' b' cis''4. d''8 fis'4 gis' a'2 d''4 cis''8 cis'' b'4 a' d'' cis'' b' a' b' a' g' e' d' cis' d'2  \bar "|." } }
Alto = { { \key d \major d'4 d' cis' cis' d' a' a' g' fis'2 d'4 d' d' cis' d' b cis'2 cis'4 e' d'4. cis'8 b4 b d' d' cis' e' e'4. d'8 d'4 d' cis'2 d'4. d'8 d'4 cis' d' e'8 fis' g'4 g' fis' e' d' b a a a2  \bar "|." } }
Tenor = { { \key d \major fis4 fis g g a a b cis' d'2 d'4 a g e d e a g fis cis d4. e8 fis4 b b b a gis a4. a8 b4 b a2 a4. a8 g4 g fis e8 d e4 a d' cis' b g fis e8 fis fis2  \bar "|." } }
Bass = { { \key d \major d4 d e e fis fis g2 d b,4 d g, a, b, e a,2 ais,4 ais, b,4. cis8 d4 dis e f fis e a4. fis8 d4 e a,4. ( a,8 ) fis4. fis,8 g,4 a, b,4. b,8 cis4 cis d e8 fis g4 g, a, a, d2  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 115 4 ) } }
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
%T:Lauda Anima
%M:2/4
%L:1/8
%C:John Goss (1800-1880), 1869
%Q:1/4=115
%F:lauda_anima.abc
%N:Public domain
%G:87.87.87
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Chalice=23, Title=Praise, My Soul, the God of Heaven
%V:1
%A4A4A4A4d4c4B8A8G4F4B4A4F4G4E7F4F4F6F2B4A4A4^G4A4B4c6d2F4^G4A7d4c2c2B4A4d4c4B4A4B4A4G4E4D4C4D8
%V:2
%D4D4C4C4D4A4A4G4F8D4D4D4C4D4B,4C7C4E4D6C2B,4B,4D4D4C4E4E6D2D4D4C7D6D2D4C4D4E2F2=G4G4F4E4D4B,4A,4A,4A,8
%V:3
%F,4F,4G,4G,4A,4A,4B,4C4D8D4A,4G,4E,4D,4E,4A,4G,4F,4C,4D,6E,2F,4B,4B,4B,4A,4^G,4A,6A,2B,4B,4A,7A,6A,2=G,4G,4F,4E,2D,2E,4A,4D4C4B,4G,4F,4E,2F,2F,8
%V:4
%D,4D,4E,4E,4F,4F,4G,8D,8B,,4D,4G,,4A,,4B,,4E,4A,,7^A,,4^A,,4B,,6C,2D,4^D,4E,4=F,4^F,4E,4A,6F,2=D,4E,4=A,,6-A,,2F,6F,,2G,,4A,,4B,,6B,,2C,4C,4D,4E,2F,2G,4G,,4A,,4A,,4D,8
%D,4D,4E,4E,4F,4F,4G,8D,8B,,4D,4G,,4A,,4B,,4E,4A,,7^A,,4^A,,4B,,6C,2D,4^D,4E,4=F,4^F,4E,4A,6F,2=D,4E,4=A,,6-A,,2F,6F,,2G,,4A,,4B,,6B,,2C,4C,4D,4E,2F,2G,4G,,4A,,4A,,4D,8
