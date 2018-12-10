% -*- coding: utf-8 -*-
\version "2.12.3"

cinco = \relative c''{
	\set Staff.midiInstrument = "violin"
	\time 4/4
	\key c \major
	\clef treble
%1
  | c8 \downbow d c b c g a-4 f  \noBreak
  | e f g a b c d c  \noBreak
  | a b c d e-0 f g a   \noBreak
  | g a g f g e-0 f g  \break
%2
  | f e d c b d g f  \noBreak
  | e d c b a c e-4 d   \noBreak
  | c d b c a b c d   \noBreak
  | b c a b g a-0 b d  \break
%3
  | c d c b c g a-4 f   \noBreak
  | e f g a b c d c    \noBreak
  | a b c d e-0 f g a   \noBreak
  | g a g f g e f g  \break
%4
  | fis g e fis d e-4 c d   \noBreak
  | b d g fis e d c b   \noBreak
  | a e'-4 d c b a-0 g fis    \noBreak
  | g d e fis g a-0 b d  \break
%5
  | f d e-0 f e c d e   \noBreak
  | d c b a b d e-0 f   \noBreak
  | g e f g f d e-0 f   \noBreak
  | e d c b c e-0 g a  \break
%6
  | bes g e-0 c bes g e c'   \noBreak
  | a-0 f a-0 bes c a c f   \noBreak
  | a fis d c a-0 fis d d'   \noBreak
  | b c d c b g a-0 b   \break
%7
  | c d c b c g a-4 f  \noBreak
  | e f g a-0 b c d c   \noBreak
  | a b c d e-0 f g a   \noBreak
  | g a g e-0 d c b c  \break 
%8
  | a b a g f a-0 d c  \noBreak
  | b c b a-0 g b e-4 d    \noBreak
  | c d c b a c f e   \noBreak
  | d e-4 d c b d g f  \break
%9
  | e-0 g a g f e d c   \noBreak
  | a f' a g f e d c   \noBreak
  | b c d e-0 f a g b,   \noBreak
  | c g a-0 b c4 r \bar "|."  \pageBreak
}
