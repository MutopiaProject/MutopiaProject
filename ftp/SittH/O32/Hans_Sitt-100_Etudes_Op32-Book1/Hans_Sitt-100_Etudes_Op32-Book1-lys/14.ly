% -*- coding: utf-8 -*-
\version "2.12.3"

quatorze = \relative g''{
	\set Staff.midiInstrument = "violin"
	\time 4/4
	\key g \major
	\clef treble
%1
  | d2 \downbow ^ \markup { \hspace #-5 \fontsize #-1 \bold "Allegro moderato" } c16 \upbow (d c d c d c b) \noBreak
  | e2 d16 (e d e d e d c) \noBreak
  | c2 b16 (c b c b c b a) \break \noPageBreak
%2
  | d2 c16 (d c d c d c b)   \noBreak
  | a2 e'16 (d e d e d c d )   \noBreak
  | b2 e16 (d e d e d c d ) \break \noPageBreak
%3
  | fis2 a16 (g a g a g fis e)   \noBreak
  | g (fis g fis g fis g fis) e (d e d e d cis d)   \noBreak
  | c2  c16 (d c d c d c b)  \break \noPageBreak
%4
  | e2 a16 (g a g a g fis e)   \noBreak
  | a,2 b16 (c b c b c b a)  \noBreak
  | d2  g16 (fis g fis g fis g a) \break \noPageBreak
%5
  | b2 d,16 (cis d cis d cis b cis)   \noBreak
  | a'2 e16 (d e d e d cis d)   \noBreak
  | a2-0 a16-4 (g a g a g fis g )  \break \noPageBreak
%6
  | g (fis g fis g fis e fis) d2   \noBreak
  | d'16 (c d c d c b c) a'4 (b16 a b a)   \noBreak
  | c, (b c b c b a b) g'4 (a16 g a g)  \break \noPageBreak
%7
  | b (a b a b a g fis) a (g a g a g fis g)   \noBreak
  | e-4 (d e d e d cis d) d,2   \noBreak
  | d'16 (c d c d c b c) a4 (e'16 d e d) \break \noPageBreak
%8
  | c (b c b c b a b) g4 (e'16-4 d e d)   \noBreak
  | a4 \downbow a'16 \upbow (g a g a g a g a g fis g)   \noBreak
  | g (fis g fis g fis g fis) e-4 (d e d e d e d) \break \noPageBreak
%9
  | d4 \downbow c16 \upbow (d c d c d c d c d c b)   \noBreak
  | e4-4 a16 (g a g a g a g a g fis e)   \noBreak
  | c4 b16 (c b c b c b c b c b a) \break \noPageBreak
%10
  | d4 g16 (fis g fis g fis g fis g fis g a)  \noBreak
  |  b4 a16 (g a g a g a g a g fis g)   \noBreak
  | e4-0 d16 (c d c d c d c d c b c) \break \noPageBreak
%11
  | a'4 g16 ( fis g fis g fis g fis g fis e fis )   \noBreak
  | d4 c16 (b c b c b c b c b a b)   \noBreak
  | g'4 e16-4 (d e d e d e d e d c d) \pageBreak
%12
  | e4-4 d16 (c d c d c d c d c b c)   \noBreak
  | e-4 (d e d e d e d e d e d  e d e d)   \noBreak
  | g, (fis g fis g fis g fis g fis g fis g fis e fis ) \break \noPageBreak
%13
  | g2 \downbow a16-4 \upbow (g a g a g fis g)   \noBreak
  | b2 g16 (f! g f g f e f) \noBreak
  |e2 d'16 (c d c d c b c)   \break \noPageBreak
%14
  | d,2 e'16-4 (d e d e d cis d)   \noBreak
  |  b2 a16-4 (g a g a g fis g)   \noBreak
  | g,2 g'16 (f! g f g f e f)   \break \noPageBreak
%15
  | g,2 f'!16 (e f e f e d e) \noBreak
  | fis2 d16-4 (c d c d c b c)   \noBreak
  | b2 c16 (b c b c b a b)   \break \noPageBreak
%16
  | d2-0 a'16-4 (g a g a g fis g) \noBreak
  | b2 e16-4 (d e d e d cis d)   \noBreak
  | g2 a16 (g a g a g fis g)    \break \noPageBreak
%17
  | b2 e,16-4 (d e d e d cis d)   \noBreak
  | g2 <d, b'> \upbow   \noBreak
  | g,1\downbow \bar "|."   \noPageBreak
}

