\header {
	title = "Jesus, meine Zuversicht"
	composer = "Johann Cruger, 1653"
	mutopiatitle = "Jesus, meine Zuversicht (hymntune)"
	mutopiacomposer = "CrugerJ"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1653"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1219"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 2/4  { \key c \major g'4 e' a'8 b' c''8. c''16 b'2 a'4 c'' a'8 g' f' e' d'4 c' g' e' a'8 b' c''8. c''16 b'2 a'4 c'' a'8 g' f' e' d'4 c' e' fis' g'8 a' a' gis' a'4 b'8 c'' d'' e'' d'' d'' c''2  \bar "|." } }
Alto = { { \key c \major e'4 c' c'8 f' e'8. d'16 d'2 d'4 e' f'8 d' c' c' c' b c'4 e' c' c'8 f' e'8. d'16 d'2 d'4 e' f'8 d' c' c' c' b c'4 c' d' d'8 e' f' e' e'4 e'8 e' g' g' a' g' e'2  \bar "|." } }
Tenor = { { \key c \major c'4 g f8 g g8. fis16 g2 f4 g c'8 b a g g4 e c' g f8 g g8. fis16 g2 f4 g c'8 b a g g4 e g c' b8 a d' b cis'4 gis8 a b c' c' b g2  \bar "|." } }
Bass = { { \key c \major c4 c f8 d c8. a,16 g,2 d4 c f,8 g, a, c g,4 c c e f8 d c8. ais,16 g,2 d4 c f,8 g, a, c g,4 c c a, b,8 cis d e a,4 e8 a g c f g c2  \bar "|." } }


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
%T:Jesus, meine Zuversicht
%M:2/4
%L:1/8
%C:Johann Cruger, 1653
%Q:1/4=60
%F:Jesus_meine_zuversicht.abc
%N:Public domain
%G:78.78.77
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:C
%I:Title=Jesus Lives and So Shall I
%V:1
%G4E4A2B2c3c1B8A4c4A2G2F2E2D4C4G4E4A2B2c3c1B8A4c4A2G2F2E2D4C4E4^F4G2A2A2^G2A4B2c2d2e2d2d2c8
%V:2
%E4C4C2F2E3D1D8D4E4F2D2C2C2C2B,2C4E4C4C2F2E3D1D8D4E4F2D2C2C2C2B,2C4C4D4D2E2=F2E2E4E2E2=G2G2A2G2E8
%V:3
%C4G,4F,2G,2G,3^F,1G,8=F,4G,4C2B,2A,2G,2G,4E,4C4G,4F,2G,2G,3^F,1G,8=F,4G,4C2B,2A,2G,2G,4E,4G,4C4B,2A,2D2B,2^C4^G,2A,2B,2=C2C2B,2G,8
%V:4
%C,4C,4F,2D,2C,3A,,1G,,8D,4C,4F,,2G,,2A,,2C,2G,,4C,4C,4E,4F,2D,2C,3^A,,1G,,8D,4C,4F,,2G,,2=A,,2C,2G,,4C,4C,4A,,4B,,2^C,2D,2E,2A,,4E,2A,2=G,2=C,2F,2G,2C,8
%C,4C,4F,2D,2C,3A,,1G,,8D,4C,4F,,2G,,2A,,2C,2G,,4C,4C,4E,4F,2D,2C,3^A,,1G,,8D,4C,4F,,2G,,2=A,,2C,2G,,4C,4C,4A,,4B,,2^C,2D,2E,2A,,4E,2A,2=G,2=C,2F,2G,2C,8
