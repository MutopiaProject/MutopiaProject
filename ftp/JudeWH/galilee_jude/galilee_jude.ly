\header {
	title = "Galilee"
	composer = "William H. Jude (1851-1922), 1874"
	mutopiatitle = "Galilee (hymntune)"
	mutopiacomposer = "JudeWH"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1874"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1245"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 3/2 \partial 2  { \key aes \major c''4 ees' bes'2 bes' bes'4 ees' aes'2 aes' aes'4 aes' aes'2. f'4 aes' bes' c''1 c''4 f' bes'2 bes' bes'4 ees' aes'2 aes' c''4 c'' des''2 f' c''4 bes' aes'2 s2  \bar "|." } }
Alto = { { \key aes \major c'4 c' des'2 des' des'4 des' c'2 c' ees'4 e' f'2. f'4 f' f' e'1 ees'4 ees' d'2 d' ees'4 des' c'2 c' ees'4 ees' des'2 des' des'4 des' c'2 s2  \bar "|." } }
Tenor = { { \key aes \major aes4 aes g2 g g4 bes aes2 aes aes4 aes aes2. aes4 f f g1 a4 c' bes2 aes g4 bes aes2 aes aes4 aes aes2 aes g4 g aes2 s2  \bar "|." } }
Bass = { { \key aes \major aes,4 aes, ees2 ees ees4 ees aes,2 aes, c4 c des2. des4 des des c1 f4 f bes,2 bes, ees4 ees aes,2 aes, ges4 ges f2 f ees4 ees aes,2 s2  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 100 4 ) } }
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
%T:Galilee
%M:3/2
%L:1/4
%C:William H. Jude (1851-1922), 1874
%Q:1/4=100
%F:galilee_jude.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Ab
%I:Chalice=337 Partial=2 Celebration=592 Title=Jesus Calls Us
%V:1
%c2E2B4B4B2E2A4A4A2A2A6F2A2B2c8c2F2B4B4B2E2A4A4c2c2d4F4c2B2A4
%V:2
%C2C2D4D4D2D2C4C4E2=E2F6F2F2F2=E8_E2E2=D4=D4E2_D2C4C4E2E2D4D4D2D2C4
%V:3
%A,2A,2G,4G,4G,2B,2A,4A,4A,2A,2A,6A,2F,2F,2G,8=A,2C2B,4_A,4G,2B,2A,4A,4A,2A,2A,4A,4=G,2G,2A,4
%V:4
%A,,2A,,2E,4E,4E,2E,2A,,4A,,4C,2C,2D,6D,2D,2D,2C,8F,2F,2B,,4B,,4E,2E,2A,,4A,,4_G,2_G,2F,4F,4E,2E,2A,,4
%A,,2A,,2E,4E,4E,2E,2A,,4A,,4C,2C,2D,6D,2D,2D,2C,8F,2F,2B,,4B,,4E,2E,2A,,4A,,4_G,2_G,2F,4F,4E,2E,2A,,4
