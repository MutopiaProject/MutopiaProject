\header {
	title = "Crusader's Hymn"
	composer = "Traditional; Silesian folk song arr. Richard S. Willis (1819-1900), 1850"
	mutopiatitle = "Crusader's Hymn (hymntune)"
	mutopiacomposer = "Traditional"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1850"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1234"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 2/2  { \key f \major f'2 f'4 f' g' e' f'2 a'4. a'8 a'4 a' bes' g' a'2 c'' f''4 d'' c''2 bes'4 a' bes'2 a' g'1 c''2 d''4 c'' c'' a' bes'2 bes' c''4 bes' bes' g' a' a' a' a' c'' bes' a'2 g' f'1  \bar "|." } }
Alto = { { \key f \major c'2 c'4 c' d' c' c'2 f'4. f'8 f'4 ges' g' e' f'2 f' f'4 f' f'2 g'4 f' e'2 f' e'1 f'2 f'4 f' ges'2 g' d' d'4 d' e'2 f'4 f' f' f' f' f' f'2 e' f'1  \bar "|." } }
Tenor = { { \key f \major a2 a4 a bes g a2 c'4. c'8 d'4 d' d' c' c'2 a d'4 bes a2 c' c' c' c'1 c'2 bes4 a a2 g g ges4 g g2 f4 c' c' d' ees' d' c'2 c'4 bes a1  \bar "|." } }
Bass = { { \key f \major f2 f4 f bes, c f2 f4. e8 d4 c bes, c f2 f bes,4 d f2 e4 f g2 f c1 a,2 bes,4 c d2 g g, a,4 bes, c2 f4 f e d a, bes, c2 c f1  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 58 4 ) } }
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
%T:Crusader's Hymn
%M:2/2
%L:1/4
%C:Traditional; Silesian folk song arr. Richard S. Willis (1819-1900), 1850
%Q:1/4=58
%F:crusaders_hymn.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:F
%I:Chalice=97 Title=Fairest Lord Jesus
%V:1
%F4F2F2G2E2F4A3A1A2A2B2G2A4c4f2d2c4B2A2B4A4G8c4d2c2c2A2B4B4c2B2B2G2A2A2A2A2c2B2A4G4F8
%V:2
%C4C2C2D2C2C4F3F1F2_G2=G2E2F4F4F2F2F4G2F2E4F4E8F4F2F2_G4=G4D4D2D2E4F2F2F2F2F2F2F4E4F8
%V:3
%A,4A,2A,2B,2G,2A,4C3C1D2D2D2C2C4A,4D2B,2A,4C4C4C4C8C4B,2A,2A,4G,4G,4_G,2=G,2G,4F,2C2C2D2_E2D2C4C2B,2A,8
%V:4
%F,4F,2F,2B,,2C,2F,4F,3E,1D,2C,2B,,2C,2F,4F,4B,,2D,2F,4E,2F,2G,4F,4C,8A,,4B,,2C,2D,4G,4G,,4A,,2B,,2C,4F,2F,2E,2D,2A,,2B,,2C,4C,4F,8
%F,4F,2F,2B,,2C,2F,4F,3E,1D,2C,2B,,2C,2F,4F,4B,,2D,2F,4E,2F,2G,4F,4C,8A,,4B,,2C,2D,4G,4G,,4A,,2B,,2C,4F,2F,2E,2D,2A,,2B,,2C,4C,4F,8
