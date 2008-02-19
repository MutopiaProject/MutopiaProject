\header {
	title = "Tryggare Kan Ingen Vara"
	composer = "Traditional; arr. O. Ahnfelt (1813-1882) "
	mutopiatitle = "Tryggare Kan Ingen Vara (hymntune)"
	mutopiacomposer = "Traditional"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1299"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/4 \partial 4  { \key d \major d'8 e' fis'4 fis' a'8 fis' fis'4 e' e'8 fis' g'4 b' a'8 g' g'4 fis' d'8 d' b'4 b' d''8 b' b'4 a' fis'8 a' a'4 g' cis'8 e' e'4 d' s4  \bar "|." } }
Alto = { { \key d \major d'8 d' d'4 d' d'8 d' d'4 cis' cis'8 d' cis'4 cis' d'8 e' e'4 d' d'8 d' d'4 g' g'8 g' g'4 fis' d'8 dis' e'4 e' cis'8 cis' cis'4 d' s4  \bar "|." } }
Tenor = { { \key d \major fis8 g a4 a a8 a a4 a a8 a a4 g fis8 a a4 a d'8 c' b4 d' d'8 d' d'4 d' a8 b b4 b a8 g g4 fis s4  \bar "|." } }
Bass = { { \key d \major d8 d d4 d fis8 d a,4 a, g8 fis e4 a, b,8 cis d4 d d8 d g4 g b8 g d4 d d8 b, e4 e a8 a, a,4 d s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 158 4 ) } }
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
%T:Tryggare Kan Ingen Vara
%M:3/4
%L:1/8
%C:Traditional; arr. O. Ahnfelt (1813-1882) 
%Q:1/4=158
%F:tryggare_kan_ingen_vara.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:D
%I:Chalice=213 Partial=4 Title=Children of the Heavenly Father
%V:1
%D2E2F4F4A2F2F4E4E2F2G4B4A2G2G4F4D2D2B4B4d2B2B4A4F2A2A4G4C2E2E4=D4
%V:2
%D2D2D4D4D2D2D4C4C2D2C4C4D2E2E4D4D2D2D4G4G2G2G4F4D2^D2E4E4C2C2C4D4
%V:2
%F,2G,2A,4A,4A,2A,2A,4A,4A,2A,2A,4G,4F,2A,2A,4A,4D2=C2B,4D4D2D2D4D4A,2B,2B,4B,4A,2G,2G,4F,4
%V:4
%D,2D,2D,4D,4F,2D,2A,,4A,,4G,2F,2E,4A,,4B,,2C,2D,4D,4D,2D,2G,4G,4B,2G,2D,4D,4D,2B,,2E,4E,4A,2A,,2A,,4D,4
%D,2D,2D,4D,4F,2D,2A,,4A,,4G,2F,2E,4A,,4B,,2C,2D,4D,4D,2D,2G,4G,4B,2G,2D,4D,4D,2B,,2E,4E,4A,2A,,2A,,4D,4
