\header {
	title = "Es ist ein' Ros"
	composer = "Anonymous; 16th Century German arr. Michael Praetorius (1571-1621)"
	mutopiatitle = "Es ist ein' Ros (hymntune)"
	mutopiacomposer = "Anonymous"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = ""
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1240"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key f \major c''2 c''4 c'' d'' c'' c''2 a' bes' a'4 g' ( g' ) d' f'2 c'4 e' f'2 c'' c''4 c'' d'' c'' c''2 a' bes' a'4 g' ( g' ) d' f'2 c'4 e' f'2 a'4 g' e' f' d' c' ( c' ) c'' c'' c'' d'' c'' c''2 a' bes' a'4 g' f'2 e'4 f'2.  \bar "|." } }
Alto = { { \key f \major f'2 f'4 f' f' f' e'2 d' d' c' g'4 d' a c'2 e'4 c'2 a' a'4 f' f' f' e'2 d' d' c' g'4 d' a c'2 e'4 c'2 f'4 d' c' c' b c' ( c' ) e' g' f' f' f' e'2 d' d' f'4 d' c'2 c'4 c'2.  \bar "|." } }
Tenor = { { \key f \major a2 a4 a bes a g2 f f a4 c' bes a a c2 g4 a2 c' c'4 a bes a g2 f f a4 c' bes a2 c g4 a2 c'4 bes a a g e8 f g4 g g a bes a g2 fis g c'4 bes a2 g4 a2.  \bar "|." } }
Bass = { { \key f \major f2 f4 f bes f c2 d bes, f4 e d2 a4 c2 g4 f2 f f4 f bes f c2 d bes, f4 e d2 a4 c2 g4 f2 a4 g a f g c8 d e4 c e f bes, f c2 d g, a,4 bes, c2 c4 f2.  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 90 4 ) } }
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
%T:Es ist ein' Ros
%M:4/4
%L:1/8
%C:Anonymous; 16th Century German arr. Michael Praetorius (1571-1621)
%Q:1/4=90
%F:es_ist_ein_ros.mid
%N:Public domain
%G:
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:F
%I:Title=Lo, How a Rose
%V:1
%c8c4c4d4c4c8A8B8A4G4-G4D4F8C4E4F8c8c4c4d4c4c8A8B8A4G4-G4D4F8C4E4F8A4G4E4F4D4C4-C4c4c4c4d4c4c8A8B8A4G4F8E4F11
%V:2
%F8F4F4F4F4E8D8D8C8G4D4A,4C8E4C8A8A4F4F4F4E8D8D8C8G4D4A,4C8E4C8F4D4C4C4=B,4C4-C4E4G4F4F4F4E8D8D8F4D4C8C4C11
%V:4
%A,8A,4A,4_B,4A,4G,8F,8F,8A,4C4B,4A,4A,4C,8G,4A,8C8C4A,4B,4A,4G,8F,8F,8A,4C4B,4A,8C,8G,4A,8C4B,4A,4A,4G,4E,2F,2G,4G,4G,4A,4B,4A,4G,8^F,8=G,8C4B,4A,8G,4A,11
%V:4
%F,8F,4F,4_B,4F,4C,8D,8B,,8F,4E,4D,8A,4C,8G,4F,8F,8F,4F,4B,4F,4C,8D,8B,,8F,4E,4D,8A,4C,8G,4F,8A,4G,4A,4F,4G,4C,2D,2-E,4C,4E,4F,4B,,4F,4C,8D,8G,,8A,,4B,,4C,8C,4F,11
%F,8F,4F,4_B,4F,4C,8D,8B,,8F,4E,4D,8A,4C,8G,4F,8F,8F,4F,4B,4F,4C,8D,8B,,8F,4E,4D,8A,4C,8G,4F,8A,4G,4A,4F,4G,4C,2D,2-E,4C,4E,4F,4B,,4F,4C,8D,8G,,8A,,4B,,4C,8C,4F,11
