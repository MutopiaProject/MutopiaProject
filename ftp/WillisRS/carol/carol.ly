\header {
	title = "Carol"
	composer = "Richard Storrs Willis (1819-1900), 1850"
	mutopiatitle = "Carol (hymntune)"
	mutopiacomposer = "WillisRS"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1850"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1231"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 6/8 \partial 8  { \key bes \major f'8 d''4 a'8 c'' bes' g' f'4 g'8 f'4 f'8 g' a' bes' bes' c'' d'' c''4. ( c''4 ) f'8 d''4 a'8 c'' bes' g' f'4 g'8 f'4 f'8 g'4 g'8 a' g' f' bes'4. ( bes'4 ) d''8 d''4 d'8 d' e' fis' g' g' a' bes'4 d''8 c'' bes' a' g' a' g' f'4. ( f'4 ) f'8 d''4 a'8 c'' bes' g' f'4 g'8 f'4 f'8 g'4 g'8 a' g' f' bes'4. ( bes'4 ) s8  \bar "|." } }
Alto = { { \key bes \major d'8 d'4 d'8 ees'4 ees'8 d'4 ees'8 d'4 d'8 ees'4 ees'8 e'4 e'8 f'4. ( f'4 ) d'8 d'4 d'8 ees' ees' ees' d'4 ees'8 d'4 f'8 ees'4 ees'8 ees'4 ees'8 d'4. ( d'4 ) d'8 d'4 d'8 d' d' d' d'4 d'8 d'4 d'8 d'4 f'8 e'4 e'8 f'4. ( f'4 ) ees'8 d'4 d'8 ees'4 ees'8 d'4 ees'8 d'4 f'8 ees'4 ees'8 ees'4 ees'8 d'4. ( d'4 ) s8  \bar "|." } }
Tenor = { { \key bes \major f8 f4 fis8 g4 a8 bes4 f8 f4 bes8 bes4 bes8 bes4 bes8 a4. ( a4 ) f8 f4 fis8 g4 a8 bes4 f8 f4 bes8 bes4 c'8 c' bes a bes4. ( bes4 ) d8 d4 fis8 fis g a g4 fis8 g4 g8 a d' c' bes c' bes a4. ( a4 ) a8 f4 fis8 g4 a8 bes4 f8 f4 bes8 bes4 c'8 c' bes a bes4. ( bes4 ) s8  \bar "|." } }
Bass = { { \key bes \major bes,8 bes,4 bes,8 bes,4 bes,8 bes,4 a,8 bes,4 bes,8 ees f g g4 c8 f4. ( f4 ) bes,8 bes,4 bes,8 bes,4 bes,8 bes,4 a,8 bes,4 d8 ees4 c8 f4 f8 bes,4. ( bes,4 ) d8 d4 d8 d4 c8 bes,4 d8 g4 bes,8 c4 c8 c4 c8 f4. ( f4 ) f8 bes,4 bes,8 bes,4 bes,8 bes,4 a,8 bes,4 d8 ees4 c8 f4 f8 bes,4. ( bes,4 ) s8  \bar "|." } }


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
%T:Carol
%M:6/8
%L:1/8
%C:Richard Storrs Willis (1819-1900), 1850
%Q:1/4=85
%F:carol.abc
%N:Public domain
%G:CMD
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Bb
%I:Partial=8 Title=It Came Upon the Midnight Clear
%V:1
%F2d4A2c2B2G2F4G2F4F2G2A2B2B2c2d2c6-c4F2d4A2c2B2G2F4G2F4F2G4G2A2G2F2B6-B4d2d4D2D2=E2^F2=G2-G2A2B4d2c2B2A2G2A2G2F6-F4F2d4A2c2B2G2F4G2F4F2G4G2A2G2F2B6-B4
%V:2
%D2D4D2E4E2D4E2D4D2E4E2=E4=E2F6-F4D2D4D2_E2-E2E2D4E2D4F2E4E2E4E2D6-D4D2D4D2D2D2D2D4D2D4D2D4F2=E4=E2F6-F4_E2D4D2E4E2D4E2D4F2E4E2E4E2D6-D4
%V:3
%F,2F,4^F,2=G,4A,2B,4F,2F,4B,2B,4B,2B,4B,2A,6-A,4F,2F,4^F,2=G,4A,2B,4F,2F,4B,2B,4C2C2B,2A,2B,6-B,4D,2D,4^F,2^F,2=G,2-A,2G,4^F,2=G,4G,2A,2D2C2B,2C2B,2A,6-A,4A,2F,4^F,2=G,4A,2B,4F,2F,4B,2B,4C2C2B,2A,2B,6-B,4
%V:4
%B,,2B,,4B,,2B,,4B,,2B,,4A,,2B,,4B,,2E,2F,2G,2G,4C,2F,6-F,4B,,2B,,4B,,2B,,4B,,2B,,4A,,2B,,4D,2E,4C,2F,4F,2B,,6-B,,4D,2D,4D,2D,4C,2B,,4D,2=G,4B,,2C,4C,2C,4C,2F,6-F,4F,2B,,4B,,2B,,4B,,2B,,4A,,2B,,4D,2E,4C,2F,4F,2B,,6-B,,4
%B,,2B,,4B,,2B,,4B,,2B,,4A,,2B,,4B,,2E,2F,2G,2G,4C,2F,6-F,4B,,2B,,4B,,2B,,4B,,2B,,4A,,2B,,4D,2E,4C,2F,4F,2B,,6-B,,4D,2D,4D,2D,4C,2B,,4D,2=G,4B,,2C,4C,2C,4C,2F,6-F,4F,2B,,4B,,2B,,4B,,2B,,4A,,2B,,4D,2E,4C,2F,4F,2B,,6-B,,4
