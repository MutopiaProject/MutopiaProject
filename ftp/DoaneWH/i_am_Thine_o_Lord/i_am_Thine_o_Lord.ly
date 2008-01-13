\header {
	title = "I Am Thine"
	composer = "William Howard Doane (1832-1915), 1875"
	mutopiatitle = "I Am Thine (hymntune)"
	mutopiacomposer = "DoaneWH"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1875"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1250"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  \transpose ees d { \key aes \major c''8 des'' c''4 bes' bes' bes'8 c'' bes'4 aes' aes' aes'8 g' f'4 f' f' aes'8 f' ees'2. c''8 des'' c''4 bes' bes' bes'8 c'' bes'4 aes' aes' bes'8 c'' des''4 des'' g' g' aes'2. c''8 des'' ees''2 c'' bes'8 aes' g' f' ees'4 aes'8 g' f'4 aes' des'' c'' bes'2. c''8 des'' ees''4 ees'' c'' c'' bes'8 aes' g' f' des''4\fermata  c''8 bes' aes'4 aes' c''4. bes'8 aes'2. s4  \bar "|." } }
Alto = { \transpose ees d { \key aes \major ees'8 f' ees'4 des' des' des'8 ees' des'4 c' c' ees'8 ees' des'4 des' des' des' c'2. ees'8 f' ees'4 des' des' des'8 ees' des'4 c' c' des'8 ees' f'4 f' ees' ees' ees'2. ees'8 ees' aes'2 ees' f'8 f' ees' des' c'4 ees'8 ees' des'4 ees' ees' ees' ees'2. ees'8 ees' aes'4 aes' ees' ees' f'8 f' ees' des' f'4 f'8 f' ees'4 ees' ees'4. des'8 c'2. s4  \bar "|." } }
Tenor = { \transpose ees d { \key aes \major aes8 aes aes4 g g g8 g g4 aes aes aes8 aes aes4 aes aes f8 aes aes2. aes8 aes aes4 g g g8 g g4 aes aes aes8 aes aes4 bes bes des' c'2. aes8 bes c'2 aes aes8 aes aes aes aes4 aes8 aes aes4 aes g aes g2. aes8 bes c'4 c' aes aes aes8 aes aes aes aes4 ees'8 des' c'4 c' aes4. g8 aes2. s4  \bar "|." } }
Bass = { \transpose ees d { \key aes \major aes,8 aes, aes,4 ees ees ees8 ees ees4 aes, aes, c8 c des4 des des des aes,2. aes,8 aes, aes,4 ees ees ees8 ees ees4 aes, aes, aes,8 aes, des4 bes, ees ees aes,2. aes8 aes aes2 aes, des8 des des des aes,4 c8 c des4 c bes, aes, ees2. aes8 aes aes4 aes aes, aes, des8 des des des des4\fermata  des8 des ees4 ees ees4. ees8 aes,2. s4  \bar "|." } }


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
%T:I Am Thine
%M:4/4
%L:1/8
%C:William Howard Doane (1832-1915), 1875
%Q:1/4=115
%F:i_am_Thine_o_Lord.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Ab
%I:Partial=4 Transpose=-1 Celebration=552 Chalice=601 Title=I Am Thine, O Lord
%V:1
%c2d2c4B4B4B2c2B4A4A4A2G2F4F4F4A2F2E12c2d2c4B4B4B2c2B4A4A4B2c2d4d4G4G4A12c2d2e8c8B2A2G2F2E4A2G2F4A4d4c4B12c2d2e4e4c4c4B2A2G2F2Hd4c2B2A4A4c6B2A12
%V:2
%E2F2E4D4D4D2E2D4C4C4E2E2D4D4D4D4C12E2F2E4D4D4D2E2D4C4C4D2E2F4F4E4E4E12E2E2A8E8F2F2E2D2C4E2E2D4E4E4E4E12E2E2A4A4E4E4F2F2E2D2F4F2F2E4E4E6D2C12
%V:3
%A,2A,2A,4G,4G,4G,2G,2G,4A,4A,4A,2A,2A,4A,4A,4F,2A,2A,12A,2A,2A,4G,4G,4G,2G,2G,4A,4A,4A,2A,2A,4B,4B,4D4C12A,2B,2C8A,8A,2A,2A,2A,2A,4A,2A,2A,4A,4G,4A,4G,12A,2B,2C4C4A,4A,4A,2A,2A,2A,2A,4E2D2C4C4A,6G,2A,12
%V:4
%A,,2A,,2A,,4E,4E,4E,2E,2E,4A,,4A,,4C,2C,2D,4D,4D,4D,4A,,12A,,2A,,2A,,4E,4E,4E,2E,2E,4A,,4A,,4A,,2A,,2D,4B,,4E,4E,4A,,12A,2A,2A,8A,,8D,2D,2D,2D,2A,,4C,2C,2D,4C,4B,,4A,,4E,12A,2A,2A,4A,4A,,4A,,4D,2D,2D,2D,2HD,4D,2D,2E,4E,4E,6E,2A,,12
%A,,2A,,2A,,4E,4E,4E,2E,2E,4A,,4A,,4C,2C,2D,4D,4D,4D,4A,,12A,,2A,,2A,,4E,4E,4E,2E,2E,4A,,4A,,4A,,2A,,2D,4B,,4E,4E,4A,,12A,2A,2A,8A,,8D,2D,2D,2D,2A,,4C,2C,2D,4C,4B,,4A,,4E,12A,2A,2A,4A,4A,,4A,,4D,2D,2D,2D,2HD,4D,2D,2E,4E,4E,6E,2A,,12
