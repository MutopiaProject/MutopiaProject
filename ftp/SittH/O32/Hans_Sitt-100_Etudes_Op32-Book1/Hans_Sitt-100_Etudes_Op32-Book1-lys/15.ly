% -*- coding: utf-8 -*-
\version "2.12.3"

quinze = \relative f'{
	\set Staff.midiInstrument = "violin"
	\time 6/8
	\key f \major
	\clef treble
%1
  | f8-. \downbow ^ \markup { \hspace #-5 \raise #-16.0 \fontsize #-1 \bold "Moderato" } a-.-0 c-. d32 \upbow (c d c) b!8-. c-. \noBreak
  | a'-. \downbow f-. c-. d32 \upbow (c d c) b!8-. c-.  \noBreak
  | e,-. g-. c-. d32 (c d c) b!8-. c-. \break \noPageBreak
%2
  | bes'-. g-. e-.-0 d32 (c d c) b!8-. c-.  \noBreak
  | a-.-0 c-. f-. g32 (f g f) e8-. f-.  \noBreak
  | b,!-. d-. g-. a32 (g a g) fis8-. g-. \break  \noPageBreak
%3
  | c,-. e-.-0 g-. bes32 (a bes a) g8-. f-.  \noBreak
  | g32 (f g f) e8-.-4 d-. c32 (bes c bes) a8-.-4 g-.  \noBreak
  | f-. a-.-0 c-. d32 (c d c) b!8-. c-. \break \noPageBreak
%4
  |  a'-. f-. c-. d32 (c d c) b!8-. c-.  \noBreak
  | b!-. d-. g-. a32 (g a g) fis8-. g-.  \noBreak
  | e-.-0 g-. e-.-4 d32 (c d c) b!8-. c-. \pageBreak 
%5
  | a-.-0 a'-. f-. e32-4 (d e d) cis8-. d-.  \noBreak
  | e-.-4 c!-. g-. g32 (f g f) e8-. d-. \noBreak
  | e-. g-. c-. d32 (c d c) b!8-. c-. \break \noPageBreak
%6
  | g-. e-. g-. c,4.  \noBreak
  | c8-. \downbow e-. g-. a32 \downbow (g a g) fis8-. g-. \noBreak
  | e'-.-4 c-. g-. a32 (g a g) fis8-. g-. \break \noPageBreak
%7
  |  a-.-0 cis-. e-.-0 a32 (g a g) fis8-. g-. \noBreak
  | a8-. g-. e-.-0 cis-. a-.-4 e-.  \noBreak
  | d-. f-. a-.-0 e'32-4 (d e d) cis8-. d-. \break \noPageBreak
%8
  | f-. d-. a-. g32 (f g f) e8-. f-. \noBreak
  | fis-. a-. b!-. e32-4 (dis e dis) cis8-. d-. \noBreak
  | b'!-. a-. fis-. dis-. b!-. fis-. \break \noPageBreak
%9
  | e-. \downbow g-. b!-. e-.-0 fis-. g-.  \noBreak
  | a32 (g a g) fis8-. g-. b!32 (a b a) g8-. fis-.  \noBreak
  | g-. g,-. b!-. e-. fis-. g-. \break \noPageBreak
%10
  | a32 (g a g) fis8-. g-. b!32 (a b a) g8-. fis-.  \noBreak
  | bes32 (a bes a) g8-. fis-. e32-4 (d e d) c8-. b!-.  \noBreak
  | bes'32 (a bes a) g8-. fis-. e32-4 (d e d) c8-. b!-. \break \noPageBreak
%11
  | bes'32 (a bes a) g8-. f!-. e32-4 (d e d) c8-. bes-.  \noBreak
  | bes'32 (a bes a) g8-. f!-. e32-4 (d e d) c8-. bes-.  \noBreak
  | bes'32 \downbow (a bes a) g8-. \upbow g32 \downbow (f g f) e8-.-0 \upbow e32-4 (d e d) c8-. \upbow \break \noPageBreak
%12
  | e32-4 (d e d) c8-. c32 (bes c bes) a8-.-0 a32-4 (g a g) f8-.  \noBreak
  | e-. \downbow g-. c,-. d32-4 (c d c) b!8-. c-.  \noBreak
  | e-. c'-. c,-. d32-4 (c d c) b!8-. c-.  \break \noPageBreak
%13
  | f-.  a-.-0 c-. d32 (c d c) b!8-. c-.  \noBreak
  | a'-. f-. c-. d32 (c d c) b!8-. c-.  \noBreak
  | e,-. g-. c-. d32-4 (c d c) b!8-. c-.   \noBreak
  | bes'-. g-. c,-. d32-4 (c d c) b!8-. c-.  \break \noPageBreak
%14
  | a-. c-. f-. g32-4 (f g f) e8-. f-.   \noBreak
  | b,!-. d-. g-. a32-4 (g a g) fis8-. g-.   \noBreak
  | c,-. e-.-0 g-. bes8-. bes32 (a bes a) g8-.  \pageBreak
%15
  | g32 (f g f) e8-.-0 e32-4 (d e d) c8-. bes-. g-.  \noBreak
  | f-. a-.-0 c-. d32 (c d c) b!8-. c-.  \noBreak
  | ees-. c-. a-.-0 f32 (ees f ees) d8-. ees-. \break \noPageBreak
%16
  | d-. f-. bes-. c32 (bes c bes) a8-. bes'-.  \noBreak
  | f-. d-. b!-. c32 (b c b) a8-. b-.  \noBreak
  | c8-. f-. a-. bes32 (a bes a) g8-. f-. \break \noPageBreak
%17
  | c-. e-.-0 g-. a32 (g a g) f8-. e-.  \noBreak
  | f-. a-. f-. c-. a-. f'-.  \noBreak
  | f,4. (f8) r r  \bar "|."  \noPageBreak
}

