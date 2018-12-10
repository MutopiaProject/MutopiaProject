% -*- coding: utf-8 -*-
\version "2.12.3"

dois = \relative g{
	\set Staff.midiInstrument = "violin"
	\time 4/4
	\key g \major
	\clef treble
%1
  | g2 \downbow ^\markup { \hspace #-5 \fontsize #-1 \bold "Moderato"} g'8 \upbow (fis e d) \noBreak
  | e2 a8-4 (g fis e) \noBreak
  | fis2 d'8 (c b a-0) \noBreak
  | c (b a b) d (c b a) \noBreak
  | b2 e8-4 (d c b) \break \noPageBreak

%2
  | d (c b a-0) a2-4 \noBreak
  | g4 (a8-0 b) d (cis b cis) \noBreak
  | d2 d,-0 \noBreak
  | d \downbow  d'8 (c b a) \noBreak
  | b (c d e-4) d2 \noBreak
  | a2-0 d8 (c b a) \break \noPageBreak

%3
  | b (d e-0 fis) g (fis g a) \noBreak
  | b2 e,8-0 (fis g b) \noBreak
  | a4 (g8 fis) e4-4 (a,-0) \noBreak
  | a'2 d,8 (e fis a) \noBreak
  | g4 (fis8 e-0) <g, \harmonic d'>4 (g) \noBreak
  | a4.-0 (b8) cis (d e fis) \break \noPageBreak

%4
  | g4. (b8) a (g fis e-0) \noBreak
  | e-4 (d  cis b ) a-4 (g fis e) \noBreak
  | g (fis e d) d2  \noBreak
  | g4 \downbow (g,) a8 (b c d-0)  \noBreak
  | \override Slur #'positions = #'(2.0 . 1.0)  e4 (e'-4) d8 (c b a-0)  \noBreak
  | d4 (d,) e8 (fis g a-0) \break \noPageBreak

%5
  |  \override Slur #'positions = #'(1.0 . 1.0) b4 (c8 d) e-0 (fis g a) \noBreak
  | b4. (a8) a (g fis e)  \noBreak
  | g2 fis  \noBreak
  | e4.-4 (c8) a (c b a-0)  \noBreak
  | a2-4 g  \noBreak
  | b4. (a8-0) a-4 (g fis e) \noBreak
  | d2-4 cis \break \noPageBreak

%6
  | a8 (b cis d-0) e (fis g a-4)  \noBreak
  | g2 fis  \noBreak
  | d8 (e fis g) a2-4 \noBreak
  | d,8 (fis g a) b2  \noBreak
  |  \override Slur #'positions = #'(1.0 . 1.0) a8-0 (b c d) e4.-4 (c8)  \noBreak
  | b (c d e) fis (g a g) \break \noPageBreak

%7
  | d (e-0 fis g) a2  \noBreak
  | d,8 (fis g a) b2 \noBreak
  | a8 (b a g) fis (e d c) \noBreak
  | d (e-4 d c) b (a-0 g fis)  \noBreak
  | g (a-0 b c) d2 \noBreak
  | \override Slur #'positions = #'(0.0 . 1.0) g,8 (b c d) e2-4 \break \noPageBreak

%8
  | d8 (c b a-0) g4. (f!8)  \noBreak
  | f! (e a-4 g) f (e d c)  \noBreak
  | g (a b c) d2-4 \noBreak
  | g,8 (b c d-0) e2 \noBreak
  | d8 (e fis g) a-0 (b c d)  \noBreak
  | e-4 (d c b) d (c b a) \break \noPageBreak

%9
  | g4 (g,) a8 (b c d-0)  \noBreak
  |\override Slur #'positions = #'(1.0 . 0.0) e4 (e'-4) d8 (c b a-0)  \noBreak
  | d, (e fis g) a-0 (b c d)  \noBreak
  | c  (b e-4 d) c (b a g)  \noBreak
  | g4 (g,) a8 (b c d-0)  \noBreak
  | e4 (e'-4) d8 (c b a-0) \break \noPageBreak

%10
  | d,4. (e8) fis (g a b) \noBreak
  | a (b c d) e-0 ( fis g a)  \noBreak
  | b (a g fis) a (g fis e-0) \noBreak
  | e-4 (d c b) d (c b a-0) \noBreak
  | c4. (b8) a-4 (g fis e)  \noBreak
  | g (fis e d-0) d-4 (c b a)  \noBreak
  | g1 \fermata \bar "|." \pageBreak
}



