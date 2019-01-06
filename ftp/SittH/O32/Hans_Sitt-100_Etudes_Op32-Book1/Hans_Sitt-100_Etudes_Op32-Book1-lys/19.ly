% -*- coding: utf-8 -*-
\version "2.12.3"

dezenove = \relative g{
	\set Staff.midiInstrument = "violin"
	\time 3/4
	\key g \major
	\clef treble
       
%1
  | g16  \downbow^ \markup { \hspace #-5 \raise #-7.0 \fontsize #-1 \bold "Moderato assai" } (a b c d-4 c b a g a b c)    \noBreak
  | d-0 ( e fis g a-4 g fis e d e fis g)    \noBreak
  | a-0 (b c d e-4 d c b a b c d)  \break  \noPageBreak
%2
  | b (c d c b c a b g4)    \noBreak
  | e16 (fis e fis g a-4 g a-0 b c d e)    \noBreak
  | d, (e d e fis g fis g a-0 b c d)\break \noPageBreak
%3
  | c (b a b c d c a-0 c b a g)    \noBreak
  | fis (g a-4 g fis g e fis d4)     \noBreak
  | d16 \downbow (e fis g a-4 g fis e d e fis g) \break \noPageBreak
%4
  | a-4 (g fis e d e fis g a-0 b c d)    \noBreak
  | b (c d e-4 d e c d b c a-0 c)    \noBreak
  | b (c d e-4 d c b a-0 g fis e d-0) \break \noPageBreak
%5
  | d (e fis g a-4 g fis e d e fis g)    \noBreak
  | a-4 (g fis e d e fis g a-0 b c d)    \noBreak
  | b (c d e-4 d c b a b c d e)  \break \noPageBreak
%6
  | d (c b a b c d e-0 fis g a g)    \noBreak
  | g (a b a g a fis g e fis d e-4)    \noBreak
  | cis (d e-4 d cis b a b cis d e-0 g) \break \noPageBreak
%7
  | fis (g a g fis g e fis d e-4 cis d)    \noBreak
  | b (cis d cis b a g a b cis d fis)     \noBreak
  | e-0 (fis g fis e fis d e-4 cis d b cis) \break \noPageBreak
%8
  | a (b cis b a b g a-4 fis g e fis)    \noBreak
  | d-0 (e fis g a-0 b cis d e-4 d cis b)    \noBreak
  | a (b cis b a g fis e d4) \break \noPageBreak
%9
  | d16 \downbow (e fis g a-4 g fis e d e fis g)    \noBreak
  | a-0 (b cis d e-4 d cis b a b cis d)    \noBreak
  | e-0 (fis g a b a g fis e fis g a) \break \noPageBreak
%10
  | fis (g a g fis g e fis d4)     \noBreak
  | b16 \downbow (cis b cis d e-4 d e-0 fis g a b)    \noBreak
  | a, (b a b cis d cis d e-0 fis g a)  \break \noPageBreak
%11
  | g ( fis e fis g a g e-0 g fis e-0 d)    \noBreak
  | cis (d e d cis d b cis a4)    \noBreak
  | a16 \downbow (b cis d e-4 d cis b a b cis d) \pageBreak
%12
  | e-4 (d cis b a b cis d e-0 fis g a)    \noBreak
  | fis (g a b  a b g a fis g e g ) \noBreak
  | fis (g a b a g fis e-0 d cis b a) \break \noPageBreak
%13
  | a (b cis d e-4 d cis b a b cis d)    \noBreak
  | e-4 (d cis b a g fis e d cis b a)    \noBreak
  | d-0 (e fis g a-0 d cis b a g fis e) \break \noPageBreak
%14
  | d (a' g fis e fis d e fis g a-0 b)     \noBreak
  | c (b a g fis g fis e d e fis g)    \noBreak
  | a-4 (g fis e d e fis g a-0 b c d) \break \noPageBreak
%15
  | e-0 (fis g a b a g fis e d c b)    \noBreak
  | e-4 (d c b a g fis e d e fis g)     \noBreak
  | a-4 (g fis e d e fis g a-4 g fis e) \break \noPageBreak
%16
  | d (e fis g a-0 b c d e-0 fis g a)    \noBreak
  | b (a g fis e fis g a g fis e d)    \noBreak
  | c (d e d c b a b c d e-0 g) \break \noPageBreak
%17
  | b (a g f! e d c b a g f! e)    \noBreak
  | d (e f! g a-4 g f e d e f g)    \noBreak
  | a-0 (b c d e d c b a b c d) \break \noPageBreak
%18
  | e-4 (d c b a b c b a g fis e)    \noBreak
  | d (e d e fis g fis g a-0 b c d)    \noBreak
  | e-4 (d c b a g fis e d c b a) \break \noPageBreak
%19
  | g (a b c d-4 c b a g a b c)    \noBreak
  | d-0 (e f! g a-4 g f e d e f g)    \noBreak
  | a-0 (b c d e-4 d c b a g fis e) \break \noPageBreak
%20
  | d (e fis e d e fis e d c b a)    \noBreak
  | g (a b c d-4 c b a g a b c)    \noBreak
  | d-0 (e f! g a-4 g f e d e f g) \break \noPageBreak
%21
  | a-0 (b c d e-4 d c b a g fis e)    \noBreak
  | d (e fis g a-0 b c d e-0 fis g a)    \noBreak
  | b (a g fis e d c b a b c d) \break \noPageBreak
%22
  | e (d c b a g fis e d c b a)    \noBreak
  | g2.~    \noBreak
  | g4 r2  \bar "|." \pageBreak
}
