% -*- coding: utf-8 -*-
\version "2.12.3"

tres = \relative d'{
	\set Staff.midiInstrument = "violin"
	\time 3/4
	\key d \major
	\clef treble
%1
  |d4_0 \downbow ^\markup { \hspace #-5 \fontsize #-1 \bold "Moderato"} g8 (fis e d)  \noBreak
  | a'2-4 (g4)   \noBreak
  | fis8 (g a-0 b cis d) \noBreak
  | d (cis) e-4 d cis4 \noBreak
  | \bowH a_0 \downbow d8 (cis b a-0)  \noBreak
  | e'2-4 (d4)  \noBreak
  | cis8 (d e fis g a) \break \noPageBreak

%2
  | g (fis) a fis d4  \noBreak
  | \bowH fis \downbow b8 (a g fis)  \noBreak
  | e4-0 (a) a,-0  \noBreak
  | b e8-4 (d cis b)  \noBreak
  | \override Slur #'positions = #'(2.5 . 1.0) a4-0 (d) d,-0  \noBreak
  | \override Slur #'positions = #'(1.0 . 1.0) b'8 (cis d cis b a-0)  \noBreak
  | gis (fis e d-0 cis b) \break \noPageBreak

%3
  | a (cis) e a-0 cis e-0  \noBreak
  | \override Slur #'positions = #'(1.0 . 3.5) a2 (a,4-0)  \noBreak
  | \once \override TextScript #'script-priority = #-100 \bowH a8_4 \downbow (g) fis e fis g  \noBreak
  | \once \override TextScript #'script-priority = #-100  \override Slur #'positions = #'(1.0 . 1.0) a_0 \upbow (b) cis d e-4 cis  \noBreak
  | \bowH d \downbow (e-4) fis g a b  \noBreak
  | \bowXH a4 \upbow fis d  \noBreak
  | a8-4 (g fis e) fis g \break \noPageBreak

%4
  | a-0 (b cis d) e-4 cis  \noBreak
  | d (e-0 fis g) a b  \noBreak
  | a (g fis e-0) d a-0  \noBreak
  | \bowH c!2 \downbow ( b8 a-0)  \noBreak
  | e'4-4 (d c!)  \noBreak
  | b b'8 (a g fis)  \noBreak
  | a4 (g) e-0 \break \noPageBreak

%5
  | a,-0 a'8 (g fis e)   \noBreak
  | g4 (fis) d  \noBreak
  | g, b'8 (a g fis)  \noBreak
  | e (fis g fis e d)  \noBreak
  | cis (d e d cis b)  \noBreak
  | \bowH a \downbow (b a) \bowH g \upbow fis e  \noBreak
  | d4 \downbow g8 (fis e d) \break \noPageBreak

%6
  | a'4-4 (e) g  \noBreak
  | fis8 (g a-0 b cis d)  \noBreak
  | d (cis e-4 d cis4)  \noBreak
  | a d8 (cis b a) \noBreak
  | e'4-4 (b) d  \noBreak
  | cis8 (d e fis g a)  \noBreak
  | g (fis a g fis4)\break \noPageBreak

%7
  | fis \downbow a8 (g fis e-0)  \noBreak
  | d4 a8-4 (g fis e)  \noBreak
  | d4 d'8 (c! b a)  \noBreak
  | b4 (d) g  \noBreak
  | gis b8 (a gis fis)  \noBreak
  | e4-0 b8 (a-0 gis! fis)  \noBreak
  | e4 e'8-4 (d cis b) \break \noPageBreak

%8
  |cis4 (e-4) a  \noBreak
  | a,8 (b cis d) e4-4  \noBreak
  | cis8 (d e-0 fis) g4  \noBreak
  | fis8 (a b) a g fis  \noBreak
  | e (fis g) fis e d  \noBreak
  | cis4 e8-4 (d cis b)  \noBreak
  | a4 a'8 (g fis e) \break \noPageBreak

%9
  | fis (a g) fis e d  \noBreak
  | b (d cis) b a g  \noBreak
  | fis4 a8-4 (fis e d) \noBreak
  | e4 a8-4 (g fis e)  \noBreak
  | d4 g8 (fis e d)  \noBreak
  | a'4-4 (e) g \noBreak
  | fis a8 (b cis d) \break \noPageBreak

%10
  | e4-0 a8 (g fis e-0)  \noBreak
  | fis4 g8 (fis e d)  \noBreak
  | \override Slur #'positions = #'(3.8 . 1.0)  a4_0 (a') g  \noBreak
  | \override Slur #'positions = #'(1.0 . 1.0)   fis8 (a g fis) e-4 d  \noBreak
  | cis (b a g) fis e  \noBreak
  | d4-0 a'8-4 (g fis e)  \noBreak
  | d2.  \bar "|."  \pageBreak
}

