\header {
	title = "Open My Eyes"
	composer = "Clara H. Fiske Scott (1841-1897), 1895"
	mutopiatitle = "Open My Eyes (hymntune)"
	mutopiacomposer = "ScottCHF"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1895"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1287"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 6/8  { \key aes \major aes'8 g' f' ees'4 f'8 f'4 ees'8 ees'4. bes'8 g' f' ees'4 g'8 f'4 ees'8 ees'4. e'8 d' e' f'4 f'8 g' f' g' aes'4. f'8 g' aes' bes'4 g'8 g'4 f'8 ees'4. ( aes'8 ) g' f' ees'4 f'8 f'4 ees'8 ees'4. bes'8 g' f' ees'4 g'8 f'4 ees'8 ees'4. c''8 bes' aes' aes'4 aes'8 bes'4 aes'8 f'4. ees' bes'4 aes'8 aes'2.  \bar "|." } }
Alto = { { \key aes \major ees'8 ees' ees' ees'4 ees'8 des'4 des'8 des'4. des'8 des' des' des'4 des'8 c'4 c'8 c'4. c'8 c' c' c'4 c'8 c' c' e' f'4. d'8 d' d' d'4 d'8 d'4 d'8 ees'4. ees'8 ees' ees' ees'4 ees'8 des'4 des'8 des'4. des'8 des' des' des'4 des'8 c'4 c'8 c'4. ees'8 ees' ees' ges'4 ges'8 f'4 f'8 des'4. des' des'4 c'8 c'2.  \bar "|." } }
Tenor = { { \key aes \major c'8 c' c' c'4 aes8 g4 g8 g4. g8 bes aes g4 bes8 aes4 aes8 aes4. bes8 bes bes aes4 aes8 bes aes bes aes4. aes8 g f f4 bes8 bes4 aes8 g4. c'8 c' c' c'4 aes8 g4 g8 g4. g8 bes aes g4 bes8 aes4 aes8 aes4. aes8 g aes aes4 aes8 aes4 aes8 aes4. g g4 aes8 aes2.  \bar "|." } }
Bass = { { \key aes \major aes,8 aes, aes, aes,4 aes,8 bes,4 bes,8 bes,4. ees8 ees ees ees4 ees8 aes4 aes8 aes4. g8 g g f4 f8 e f c f4. bes,8 bes, bes, bes,4 bes,8 bes,4 bes,8 ees4 ( ees8 ) aes, aes, aes, aes,4 aes,8 bes,4 bes,8 bes,4. ees8 ees ees ees4 ees8 aes4 aes8 aes4. aes,8 bes, c c4 c8 des4 des8 des4. ees ees4 aes,8 aes,2.  \bar "|." } }


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
%T:Open My Eyes
%M:6/8
%L:1/8
%C:Clara H. Fiske Scott (1841-1897), 1895
%Q:1/4=100
%F:openeyes.abc
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Ab
%I:Chalice=586 Title=Open My Eyes, That I May See
%V:1
%A2G2F2E4F2F4E2E6B2G2F2E4G2F4E2E6=E2=D2=E2F4F2G2F2G2A6F2G2A2B4G2G4F2_E6-A2G2F2E4F2F4E2E6B2G2F2E4G2F4E2E6c2B2A2A4A2B4A2F6E6B4A2A12
%V:2
%E2E2E2E4E2D4D2D6D2D2D2D4D2C4C2C6C2C2C2C4C2C2C2=E2F6=D2=D2=D2=D4=D2=D4=D2E6E2E2E2E4E2_D4D2D6D2D2D2D4D2C4C2C6E2E2E2_G4_G2F4F2D6D6D4C2C12
%V:3
%C2C2C2C4A,2G,4G,2G,6G,2B,2A,2G,4B,2A,4A,2A,6B,2B,2B,2A,4A,2B,2A,2B,2A,6A,2G,2F,2F,4B,2B,4A,2G,6C2C2C2C4A,2G,4G,2G,6G,2B,2A,2G,4B,2A,4A,2A,6A,2G,2A,2A,4A,2A,4A,2A,6G,6G,4A,2A,12
%V:4
%A,,2A,,2A,,2A,,4A,,2B,,4B,,2B,,6E,2E,2E,2E,4E,2A,4A,2A,6G,2G,2G,2F,4F,2=E,2F,2C,2F,6B,,2B,,2B,,2B,,4B,,2B,,4B,,2_E,4-E,2A,,2A,,2A,,2A,,4A,,2B,,4B,,2B,,6E,2E,2E,2E,4E,2A,4A,2A,6A,,2B,,2C,2C,4C,2D,4D,2D,6E,6E,4A,,2A,,12
%A,,2A,,2A,,2A,,4A,,2B,,4B,,2B,,6E,2E,2E,2E,4E,2A,4A,2A,6G,2G,2G,2F,4F,2=E,2F,2C,2F,6B,,2B,,2B,,2B,,4B,,2B,,4B,,2_E,4-E,2A,,2A,,2A,,2A,,4A,,2B,,4B,,2B,,6E,2E,2E,2E,4E,2A,4A,2A,6A,,2B,,2C,2C,4C,2D,4D,2D,6E,6E,4A,,2A,,12
