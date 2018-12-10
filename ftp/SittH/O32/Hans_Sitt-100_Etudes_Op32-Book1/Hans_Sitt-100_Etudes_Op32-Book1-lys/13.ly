% -*- coding: utf-8 -*-
\version "2.12.3"

treze = \relative a{
	\set Staff.midiInstrument = "violin"
	\time 4/4
	\key a \minor
	\clef treble
%1
  | a4 \mf \downbow ^ \markup { \hspace #-5 \raise #-12.0 \fontsize #-1 \bold "Moderato" }  a'16-4 (g f e)  e4 e'16-4 (d c b)  \noBreak
  | a4-0 a'16 (g f e-0) f (e d c) d (c b a)  \noBreak
  | e4 e'16 (d c b) c4 d16 (c  b  a) \break \noPageBreak
%2
  | b4 e,16 (fis gis a) b (c d c) b (e-4 d b) \noBreak
  | c4 e16-4 ( d c b ) a4-0 a'16 ( g f e-0)  \noBreak
  | d4 a16 (g f e) d4 g16 (f e d)  \break \noPageBreak
%3
  | b'4 d16 (c b a) g4 g'16 (f e d)  \noBreak
  | c4 g16 (f e d) c4 f16 (e  d c )  \noBreak
  | b4 e16 (fis gis e) a4 d16 (c b a) \pageBreak
%4
  | b4 e16 (fis gis e) a4 b16 ( a gis a)  \noBreak
  | f4 a16 (g f e) d (c b a) g (f e d)   \noBreak
  | e4 a16 (gis fis gis) e4 e16 (d c b) \break \noPageBreak
%5
  | a4 a'16-4 (g f e)  e4 e'16-4 (d c b)  \noBreak
  | a4-0 a'16 (g f e-0) f (e d c) d (c b a)  \noBreak
  | b4 g16 (fis e d) d4 d'16 (c b a)  \break \noPageBreak
%6
  | g4 g'16 (f e d) e-4 (d c b) c (b a b)  \noBreak
  | c4 g'16 (f e d) e-4 (d c b) d (c b c)  \noBreak
  | a4-0 f16 (g a-0 bes) a (bes c d) c (d e-0 f) \break \noPageBreak
%7
  | d4 a'16 (g fis e-0) fis (e d cis) e-4 (d cis d)   \noBreak
  | b4 g16 (a b c) b (c d e) d (e f g) \noBreak
  | e4 g16 (f e d) c4 e16 (d c b) \break \noPageBreak
%8
  | a4-0 c16 (b a g) f4 a16 (g f e)  \noBreak
  | d4 a''16 (g f e) d4 f16 (e d c) \noBreak
  | b4 d16 (c b a) g4 b16 (a g f) \break \noPageBreak
%9
  | e4 b''16 (a gis fis) e4 e16 (d c b)  \noBreak
  | c4 e16 (d c b) a4 d16 (c b a)  \noBreak
  | e4 b'16 (a gis fis) e4 e16 (d c b) \break \noPageBreak
%10
  | c4 e16 ( d c b) a4 d16 ( c b a) \noBreak
  | e'4 e16 (fis gis fis) gis4 b16 (c d c) \noBreak
  | d4 e16-0 ( fis gis fis) gis4 b16 (a gis fis)  \break  \noPageBreak
%11
  | e4-0 b'16 (a gis fis) e4 f!16 (e d c) \noBreak
  |b4 b16 (a gis fis) e4 e16 (d c b) \noBreak
  | a4 a'16-4 (g f e)  e4 e'16-4 (d c b) \break  \noPageBreak
%12 
  | a4-0 a'16 (g f e-0) f (e d c) d (c b a)  \noBreak
  | e4 e'16 (d c b) c4 d16 (c  b  a) \noBreak
  | b4 e,16 (fis gis a) b (c d c) b (e-4 d b) \break  \noPageBreak
%13  
  | c4 e16-4 ( d c b ) a4-0 a'16 ( g f e-0)  \noBreak
  | f4 a16 (g f e) d (c b a) g (f e d) \noBreak 
  | b'4 d16 (c b a) g4 g'16 (f e d) \break  \noPageBreak
%14  
  | c4 g'16 (f e d) c (b a g) f (e d c) \noBreak
  | a'4 c16 (b a g) f4 f'16 (e d c)  \noBreak
  | b4 f'16 (e d c) b (a g f) e (d c b)  \break \noPageBreak
%13
  | gis'4 b16 (a gis fis) e4 e'16 ( d c b)  \noBreak
  | a4 e'16 (d c b) a (g f e) d (c b a)  \noBreak
  | d4 a'16 (g f e) d4 d'16 (c b a) \break \noPageBreak
%14
  | e4 d'16 (c b a) gis4 e'16 (d c b)  \noBreak
  | a4 a'16 (g f e) f (e d c) d (c b a)  \noBreak
  | a4 e16 (d c b) a4 r	 \bar "|."  \pageBreak
}

