\header {
	title = "Marion"
	composer = "Arthur Henry Messiter (1834-1916), 1883"
	mutopiatitle = "Marion (hymntune)"
	mutopiacomposer = "MessiterAH"
	mutopiainstrument = "Voice (SATB)"
	copyright = "Public Domain"
	date = "1883"
	maintainer = "Steve Dunlop"
	maintainerWeb = "http://www.nerstrand.net"
	maintainerEmail = "music@nerstrand.net"
	style = "Hymn"
	source = "www.cyberhymnal.org"
	lastupdated = "2008/1/12"
 footer = "Mutopia-2008/01/13-1258"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\version "2.10.10"
% #(set-default-paper-size "letter")

Soprano = { \time 4/4 \partial 4  \transpose g f { \key g \major g'4 d'' b'8 a' g'4 a' b'2. b'4 b' g'8 a' b'4 cis'' d''2. d''4 e'' d''8 c'' b'4 b' b'8 a' gis' a' b'4 e' a' b' c'' b' a'2. d''4 d''2. d''4 d''2. d''4 c'' b'8 a' b'4 a' g'2. s4  \bar "|." } }
Alto = { \transpose g f { \key g \major d'4 d' fis' g' d' d'2. dis'4 e' e'8 fis' g'4 g' fis'2. f'4 e' e' e' e' e' dis' e' e' e' e' e' d' d'2. d'4 d'2. d'4 d'2. g'4 g' g' g' fis' g'2. s4  \bar "|." } }
Tenor = { \transpose g f { \key g \major b4 a d'8 c' b4 fis g2. a4 g b8 a g4 a a2. b4 c' b8 a a4 gis a b8 a gis4 gis a g g8 fis g4 fis2. r4 r fis8 g a2 r4 g8 a b4 b c' d'8 e' d'4 c' <<g2. b >>s4  \bar "|." } }
Bass = { \transpose g f { \key g \major g4 fis d e d g2. fis4 e g8 fis e4 e d2. g4 c c e e fis b, e d c b, a, b,8 c d2. r4 r d8 e fis2 r4 e8 fis g4 f e d8 c d4 d g,2. s4  \bar "|." } }


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
%T:Marion
%M:4/4
%L:1/8
%C:Arthur Henry Messiter (1834-1916), 1883
%Q:1/4=115
%F:marion.abc
%N:Public domain
%G:SM refrain
%S:From www.cyberhymnal.org and crosschecked against other sources
%K:G
%I:Chalice=15 Partial=4 Transpose=-2 Title=Rejoice, You Pure in Heart
%V:1
%G4d4B2A2G4A4B12B4B4G2A2B4^c4d11d4e4d2=c2-B4B4B2A2^G2A2B4E4A4B4c4B4A11d4d11d4d11d4c4B2A2B4A4G12
%V:2
%D4D4F4G4D4D12^D4E4E2F2G4G4F11=F4E4E4E4E4E4^D4E4E4E4E4E4=D4D11D4D11D4D11=G4G4G4G4^F4G12
%V:3
%B,4A,4D2C2B,4F,4G,12A,4G,4B,2A,2G,4A,4A,11B,4C4B,2A,2A,4^G,4A,4B,2A,2^G,4^G,4A,4=G,4G,2F,2G,4F,11z4z4F,2G,2A,7z4G,2A,2B,4B,4C4D2E2D4C4 [G,12B,12] 
%V:4
%G,4F,4D,4E,4D,4G,12F,4E,4G,2F,2E,4E,4D,11G,4C,4C,4E,4E,4F,4B,,4E,4D,4C,4B,,4A,,4B,,2C,2D,11z4z4D,2E,2F,7z4E,2F,2G,4=F,4E,4D,2C,2D,4D,4G,,12
%G,4F,4D,4E,4D,4G,12F,4E,4G,2F,2E,4E,4D,11G,4C,4C,4E,4E,4F,4B,,4E,4D,4C,4B,,4A,,4B,,2C,2D,11z4z4D,2E,2F,7z4E,2F,2G,4=F,4E,4D,2C,2D,4D,4G,,12
