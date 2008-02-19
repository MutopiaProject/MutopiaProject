\header {
	title = "St. Theodulph"
	composer = "Melchior Teschner (1584-1635), 1615"
	mutopiatitle = "St. Theodulph (hymntune)"
	mutopiacomposer = "TeschnerM"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1615"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/02/19-1294"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4  { \key bes \major bes4 f' f' g' a' bes'2 bes'4 d'' c'' bes' bes' a' bes'2. bes4 f' f' g' a' bes'2 bes'4 d'' c'' bes' bes' a' bes'2. bes'4 d'' d'' c'' bes' a' g' f' a' bes' a' g' g' f'2. f'4 d' f' g' f' f' ees' d' f' ees' d' c' c' bes2.  \bar "|." } }
Alto = { { \key bes \major bes4 c' bes bes ees' ees' d'8 c' d'4 f' f'8 ees' d'4 c' c' d'2. bes4 c' bes bes ees' ees' d'8 c' d'4 f' f'8 ees' d'4 c' c' d'2. d'4 f' g' g' e' f' e' c' f' d' f' f' e' f'2. c'4 bes bes bes bes c' a bes bes bes bes bes a bes2.  \bar "|." } }
Tenor = { { \key bes \major d4 f d ees f f2 f4 bes a bes g f f2. d4 f d ees f f2 f4 bes a bes a f f2. f4 bes8 a bes4 c' c' c' bes a d' bes c' d' c'8 bes a2. f4 f f ees d f2 f4 f g f f4. ees8 d2.  \bar "|." } }
Bass = { { \key bes \major bes,4 a, bes, ees c bes,2 bes,4 bes f g ees f bes,2. bes,4 a, bes, ees c bes,2 bes,4 bes f g f f bes,2. bes,4 bes8 a g f e4 c f c f d g, a, bes, c f,2. a,4 bes, d ees bes, a, f, bes, d ees bes, f,4. f,8 bes,2.  \bar "|." } }


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
\midi { \context { \Score tempWholesPerMinute = #(ly:make-moment 110 4 ) } }
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
%T:St. Theodulph
%M:4/4
%L:1/8
%C:Melchior Teschner (1584-1635), 1615
%Q:1/4=110
%F:st_theodulph.abc
%N:Public domain
%G:7 6 7 6 D (Iambic)
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:Bb
%I:0,0
%V:1
%B,4F4F4G4A4B8B4d4c4B4B4A4B11B,4F4F4G4A4B8B4d4c4B4B4A4B11B4d4d4c4B4A4G4F4A4B4A4G4G4F11F4D4F4G4F4F4_E4D4F4E4D4C4C4B,11
%V:2
%B,4C4B,4B,4E4E4D2C2D4F4F2E2D4C4C4D11B,4C4B,4B,4E4E4D2C2D4F4F2E2D4C4C4D11D4F4G4G4=E4F4=E4C4F4D4F4F4=E4F11C4B,4B,4B,4B,4C4A,4B,4B,4B,4B,4B,4A,4B,11
%V:3
%D,4F,4D,4E,4F,4F,8F,4B,4A,4B,4G,4F,4F,11D,4F,4D,4E,4F,4F,8F,4B,4A,4B,4A,4F,4F,11F,4B,2A,2B,4C4C4C4B,4A,4D4B,4C4D4C2B,2A,11F,4F,4F,4_E,4D,4F,8F,4F,4G,4F,4F,6E,2D,11
%V:4
%B,,4A,,4B,,4E,4C,4B,,8B,,4B,4F,4G,4E,4F,4B,,11B,,4A,,4B,,4E,4C,4B,,8B,,4B,4F,4G,4F,4F,4B,,11B,,4B,2A,2G,2F,2=E,4C,4F,4C,4F,4D,4G,,4A,,4B,,4C,4F,,11A,,4B,,4D,4_E,4B,,4A,,4F,,4B,,4D,4E,4B,,4F,,6F,,2B,,11
%B,,4A,,4B,,4E,4C,4B,,8B,,4B,4F,4G,4E,4F,4B,,11B,,4A,,4B,,4E,4C,4B,,8B,,4B,4F,4G,4F,4F,4B,,11B,,4B,2A,2G,2F,2=E,4C,4F,4C,4F,4D,4G,,4A,,4B,,4C,4F,,11A,,4B,,4D,4_E,4B,,4A,,4F,,4B,,4D,4E,4B,,4F,,6F,,2B,,11
