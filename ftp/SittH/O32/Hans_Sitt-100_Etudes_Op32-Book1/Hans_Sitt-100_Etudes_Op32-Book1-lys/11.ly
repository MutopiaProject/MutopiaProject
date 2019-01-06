% -*- coding: utf-8 -*-
\version "2.12.3"

onze = \relative a{
	\set Staff.midiInstrument = "violin"
	\time 4/4
	\key a \major
	\clef treble
%1
  | a8-- \downbow ^\markup { \hspace #-5 \fontsize #-1 \bold "Moderato"} b16 cis d e fis gis a8---0 b16 cis d cis b a-0  \noBreak
  | gis (e) fis gis a-0 b cis dis e4 r  \noBreak
  | e,8-- \downbow fis16 gis a b cis d e8---0 fis16 gis a gis fis e-0 \break \noPageBreak
%2
  | cis (a) b cis d e-0 fis gis a4 r  \noBreak
  | d,,8-- \downbow e16 fis g! a b cis d e fis g! a4->  \noBreak
  | cis,,8-- d16 e fis gis! a b cis d e gis! a4-> \break \noPageBreak
%3
  | b8 \downbow a16 gis fis e dis! cis b8 \upbow dis16 cis b a gis fis  \noBreak
  | e (fis) gis a-0 b cis dis! e-4 e,2  \noBreak
  | c!8 \downbow d16-0 e f! g! a-0 b c! (b) a g f e d c \break \noPageBreak
%4
  | b (g!) a b c! d-0 e fis g!4 r \noBreak
  | g!8 \downbow a16 b c! d e-0 fis g! (f!) e d c b a g  \noBreak
  | e (c!) d-0 e f! g! a-0 b c!4 r \break \noPageBreak
%5
  | f,!8-- \downbow e16 f g! a-0 b c! d e f! g! a4-> \noBreak
  | e,8-- \downbow d16 e f! g! a-0 b c! d e-0 f! g!4->  \noBreak
  | f!8 e16-4 d c! b a-0 gis e'8-4 \upbow d16 c b a gis fis \break \noPageBreak
%6
  | gis (e) fis gis a-0 b cis dis e2 \noBreak
  | a,,8 \downbow b16 c! d e fis gis a8-0 \upbow b16 c! d c b a  \noBreak
  | gis (e) fis gis a-0 b cis d e4-4 r \break \noPageBreak
%7
  | e,8 \downbow fis16 gis a b cis d e8-0 b'16 a gis f! e d  \noBreak
  | c! (a) b c d e-0 fis gis  a4 r  \noBreak
  | f!8 \downbow a16 g! f e d c! b!8 \upbow d16 c b a g! f! \break \noPageBreak
%8
  | e8 g'!16 f! e d c b a8-0 c16 b a g! f e \noBreak
  | d8-0 f'!16 e d c! b a g!8 b16 a g f! e d  \noBreak
  |  c!8 e'16 d c! b a g! fis8 a16-4 g fis e d c \break \noPageBreak
%9
  | g! \downbow (c!) d-0 e f! g! a-0 b c! d e-0 f! g!4->   \noBreak
  | a16 (g!) f! e d c! b a g f! d b g!4-> \noBreak
  | g! 16 \downbow (c!) d-0 e f! g! a-0 b c! d e-0 f! g!4-> \break \noPageBreak
%10
  | f!16 (e) d c! b a gis fis! e gis b d e4-4->   \noBreak
  | a8 \downbow gis16 fis e d cis b a8-0 b16 cis d cis b a  \noBreak
  | e'8-4 dis16 cis b a gis fis e4 r \pageBreak
%11
  | e'8-4 \downbow d16 cis b a-4 gis fis e8 fis16 gis a gis fis e  \noBreak
  | a8 gis16 fis e d cis b a4 r \noBreak
  | a8 \downbow b16 cis d-0 e fis gis a-0 b cis d e4-4-> \break \noPageBreak
%12
  | a,,8 cis16 d-0 e fis g! a-0 b cis d e-0 fis4->  \noBreak
  | b,,8 cis16 dis-4 e fis gis a-0  b cis dis e-0 fis4-> \noBreak
  | b,,8 dis16-4 e fis gis a-0 b cis dis e-0 fis gis4-> \break \noPageBreak
%13
  | e,8 fis16 gis! a-0 b cis d! e-0 fis gis a b4->  \noBreak
  | cis,8 a'16 gis fis e d cis b8 d16 cis b a gis fis  \noBreak
  | e8 fis16 gis a b cis d e8-4 r <e, b' gis'>\downbow r \break \noPageBreak
%14
  | a,8 \downbow b16 cis d-0 e fis gis a-0 (b) cis d e-0 fis g! a \noBreak
  | fis8 d16 cis b a gis fis e (fis) gis fis e d cis b   \noBreak
  | a8 \downbow b16 cis d-0 e fis gis a-0 b cis d e-0 fis g! b  \break \noPageBreak
%15
  | a \upbow (b) a gis fis e d cis b a gis fis e d cis b \noBreak
  | a8 \downbow b 16 cis d-0 e fis gis a-0 b cis d e-0 fis gis a  \noBreak
  | a,,1  \bar "|."   \noPageBreak
}