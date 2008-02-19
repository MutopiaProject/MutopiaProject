\header {
	title = "St. Margaret"
	composer = "Albert Lister Peace (1844-1912), 1884"
	mutopiatitle = "St. Margaret (hymntune)"
	mutopiacomposer = "PeaceAL"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1884"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1293"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  { \key ees \major ees'4 ees'4. ees'8 ees' f' g' aes' aes'2 g'4 g' g'4. g'8 g' aes' bes' c'' ees''2 des''4 des'' c''4. c''8 c'' bes' aes' g' bes'2 aes'4 aes' aes'4. aes'8 aes' aes' g' f' ees'4. f'8 g'4 aes' c''2. g'4 aes'2. s4  \bar "|." } }
Alto = { { \key ees \major c'4 ees'4. ees'8 ees' ees' d' d' ees'2. ees'4 ees'4. ees'8 ees' ees' g' aes' bes'2. ees'4 ees'4. ees'8 e' e' e' e' f'2. c'4 d'4. d'8 d' d' d' d' c'4. ees'8 ees'4 ees' aes'2 g' aes'2. s4  \bar "|." } }
Tenor = { { \key ees \major aes4 c'4. c'8 c' c' aes aes c'2 bes4 bes des'4. des'8 des' ees' ees' ees' ees'2. bes4 c'4. c'8 c' c' c' c' c'2. aes4 f4. f8 f f g aes aes4. aes8 bes4 c' ees'2 des' c'2. s4  \bar "|." } }
Bass = { { \key ees \major aes,4 aes4. aes8 aes aes f f ees2. ees4 des'4. des'8 des' c' bes aes g2. g4 aes4. aes8 g g c c f2. f4 bes,4. bes,8 bes, bes, bes, bes, ees4. ees8 ees4 ees ees2 ees aes,2. s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 103 4 ) } }
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
%T:St. Margaret
%M:4/4
%L:1/8
%C:Albert Lister Peace (1844-1912), 1884
%Q:1/4=103
%F:st_margaret_peace.abc
%N:Public domain
%G:88.88.86
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Eb
%I:Chalice=540 Partial=4 Celebration=606 Title=O Love That Will Not Let Me Go
%V:1
%E4E6E2E2F2G2A2A8G4G4G6G2G2A2B2c2e8_d4_d4c6c2c2B2A2G2B8A4A4A6A2A2A2G2F2_E6F2G4A4c12G4A12
%V:2
%C4E6E2E2E2D2D2E12E4E6E2E2E2G2A2B11E4E6E2=E2=E2=E2=E2F12C4D6D2D2D2D2D2C6E2E4E4A8G8A12
%V:3
%A,4C6C2C2C2A,2A,2C8B,4B,4_D6_D2_D2E2E2E2E11B,4C6C2C2C2C2C2C12A,4F,6F,2F,2F,2G,2A,2A,6A,2B,4C4E8_D8C12
%V:4
%A,,4A,6A,2A,2A,2F,2F,2E,12E,4_D6_D2_D2C2B,2A,2G,11G,4A,6A,2G,2G,2C,2C,2F,12F,4B,,6B,,2B,,2B,,2B,,2B,,2 E,6 E,2E,4E,4E,8E,8A,,12
%A,,4A,6A,2A,2A,2F,2F,2E,12E,4_D6_D2_D2C2B,2A,2G,11G,4A,6A,2G,2G,2C,2C,2F,12F,4B,,6B,,2B,,2B,,2B,,2B,,2 E,6 E,2E,4E,4E,8E,8A,,12
