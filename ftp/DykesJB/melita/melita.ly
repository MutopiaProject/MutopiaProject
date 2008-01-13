\header {
	title = "Melita"
	composer = "John Bacchus Dykes (1823-1876), 1861"
	mutopiatitle = "Melita (hymntune)"
	mutopiacomposer = "DykesJB"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1861"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1260"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  { \key c \major c'4 e'4. e'8 g'4 g' a' a' g' g' c'' d'' b' g' g' fis' g' d' f'4. f'8 e'4 e' g'4. g'8 fis'4 b' g' fis'8 fis' e'4 ( a'8 ) a' g'4 fis' e' e' e'4. e'8 f'4 f' fis'4. fis'8 g'4 g' g' a' g' e' d'4. c'8 c'4 s4  \bar "|." } }
Alto = { { \key c \major c'4 c'4. c'8 e'4 e' f' f' e' g' g'4. fis'8 g'4. e'8 d'4 d' d' b d'4. d'8 c'4 c' e'4. e'8 d'4 fis' e'4. dis'8 e'4. fis'8 e'4 dis' e' b ais4. ais8 a4 c' c'4. c'8 b4 f' e' d' e' c' b4. c'8 c'4 s4  \bar "|." } }
Tenor = { { \key c \major e4 g4. g8 c'4 c'8 b a b c' d' e'4 d' c' a b d'8 c' a4 a b g g4. g8 g4 g a4. a8 a4 b b a b c' b b g g g4. g8 f4 ( a ) a4. a8 g4 d' c' c' c' g f4. e8 e4 s4  \bar "|." } }
Bass = { { \key c \major c4 c4. c8 c4 c8 c f g a b c'4 b a d g b,8 c d4 d g g b,4. b,8 c4 c cis4. cis8 d4 dis e fis g a b b, e e c4. c8 f4 f d4. d8 g4 b, c fis, g, g, g,4. c8 c4 s4  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 111 4 ) } }
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
%T:Melita
%M:4/4
%L:1/8
%C:John Bacchus Dykes (1823-1876), 1861
%Q:1/4=111
%F:melita.abc
%N:Public domain
%G:88.88.88
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:C
%I:Partial=4 Chalice=85 Title=Eternal Father, Strong to Save
%V:1
%C4  E6E2G4G4        A4A4G4G4          c4d4B4G4         G4^F4G4D4=F6F2E4E4G6G2^F4B4G4^F2^F2E4-A2A2G4^F4E4E4E6E2=F4F4^F6^F2G4G4G4A4G4E4D6C2C4
%V:2
%C4  C6C2E4E4        F4F4E4G4          G6^F2G6E2        D4D4D4B,4D6D2C4C4E6E2D4^F4E6^D2E6^F2E4^D4E4B,4^A,6^A,2=A,4C4C6C2B,4=F4E4=D4E4C4B,6C2C4
%V:3
%E,4 G,6G,2C4C2B,2   A,2B,2C2D2E4D4    C4A,4B,4D2C2     A,4A,4B,4G,4G,6G,2G,4G,4A,6A,2A,4B,4B,4A,4B,4C4B,4B,4G,4G,4G,6G,2=F,4-A,4A,6A,2G,4D4C4C4C4G,4F,6E,2E,4
%V:4
%C,4 C,6C,2C,4C,2C,2 F,2G,2A,2B,2C4B,4 A,4D,4G,4B,,2C,2 D,4D,4G,4G,4B,,6B,,2C,4C,4^C,6^C,2D,4^D,4E,4^F,4G,4A,4B,4B,,4E,4E,4=C,6C,2F,4F,4=D,6D,2G,4B,,4C,4^F,,4G,,4G,,4G,,6C,2C,4
%C,4 C,6C,2C,4C,2C,2 F,2G,2A,2B,2C4B,4 A,4D,4G,4B,,2C,2 D,4D,4G,4G,4B,,6B,,2C,4C,4^C,6^C,2D,4^D,4E,4^F,4G,4A,4B,4B,,4E,4E,4=C,6C,2F,4F,4=D,6D,2G,4B,,4C,4^F,,4G,,4G,,4G,,6C,2C,4
