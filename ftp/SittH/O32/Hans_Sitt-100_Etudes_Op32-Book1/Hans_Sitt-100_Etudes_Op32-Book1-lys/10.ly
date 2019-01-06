% -*- coding: utf-8 -*-
\version "2.12.3"

dez = \relative f'{
	\set Staff.midiInstrument = "violin"
	\time 2/4
	\key f \major
	\clef treble
%1
  | f16 \downbow ^ \markup { \hspace #-5 \raise #-14.0 \fontsize #-1 \bold "Allegro" }  (a) c c d (c) c c   \noBreak
  | a-0 (c) f f g (f) f f   \noBreak
  | bes, (d) f f g (f) f f   \noBreak
  | c (f) a a bes (a) a a \break  \noPageBreak
%2
  | bes (g) e-0 e g (e) c c   \noBreak
  | a' (f) c c f (c) a-0 a   \noBreak
  | c (a-0) f f e (f) f f   \noBreak
  | a-4 (g) g g g (c) c c  \break  \noPageBreak
%3
  | f, (a) c c d (c) c c   \noBreak
  | a-0 (c) f f g (f) f f   \noBreak
  | bes, (d) f f g (f) f f   \noBreak
  |  c (f) a a bes (a) a a \break  \noPageBreak
%4
  | a (g) e-0 e g (e) a,-0 a   \noBreak
  | a' (f) d d f (d) a-0 a   \noBreak
  | e'-0 (g) g g g (b,!) b b   \noBreak
  | b! (c) c c d (c) c c \break \noPageBreak
%5
  | e, (c') c c b! (c) c c   \noBreak
  | g' (c,) c c bes' (c,) c c   \noBreak
  | a' (e-0) e e e (f) f f   \noBreak
  | f (c) c c  b! (c) c c \break \noPageBreak
%6
  | e, (c') c c b! (c) c c   \noBreak
  | g' (c,) c c bes' (c,) c c   \noBreak
  | a' (e-0) e e e (f) f f   \noBreak
  | f (c) c c  d (c) c c \break \noPageBreak
%7
  | fis, (d') d d  cis (d) d d   \noBreak
  | fis (d) d d a' (d,) d d   \noBreak
  | bes' (fis) fis fis fis (g) g g   \noBreak
  | g (d) d d d (b!) b b \pageBreak
%8
  | b! (c) c c c (f) f f   \noBreak
  | f (e) e e e (g) g g   \noBreak
  | g (f) f f f (a) a a   \noBreak
  |  a (a,-0) a a  a-4 (a,) a a \break \noPageBreak
%9
  | d (a'-0) a a f (a) a a   \noBreak
  | e (a) a a g (a) a a   \noBreak
  | f (a) a a f' (a,) a a    \noBreak
  | e'-0 (a,) a a d (a) a a \break \noPageBreak
%10
  | e (a) a a  g (a) a a   \noBreak
  | f (a) a a d, (a') a a   \noBreak
  | cis, (e)  e e e (a-0) a a   \noBreak
  | a (cis) cis cis cis (e-0) e e \break \noPageBreak
%11
  | fis (a) a a a (c,) c c    \noBreak
  | c (ees) ees ees ees (d) d d   \noBreak
  | d (d,)  d d c' (d,) d d   \noBreak
  | bes' (d,) d d  d' (d,)  d d \break \noPageBreak
%12
  | e (d') d d e-4 (d) d d  \noBreak
  | gis (d) d d b'! (d,) d d   \noBreak
  | cis (a-0)  a a a' (a,) a a   \noBreak
  | f' (a,) a a a' (a,) a a  \break \noPageBreak
%13
  | g' (a,)  a a a' (a,) a a   \noBreak
  | f' (a,) a a a' (a,) a a   \noBreak
  | e' (a,) a a  a-4 (a-0) a a   \noBreak
  | f (a-0) a a  a-4 (a-0) a a  \break \noPageBreak
%12
  | g (a-0) a a a-4 (a-0) a a   \noBreak
  | gis (a-0) a a a-4 (a-0) a a   \noBreak
  | f (a) c c d (c) c c   \noBreak
  | a-0 (c) f f g (f) f f \break \noPageBreak
%13
  | bes, (d) f f g (f) f f   \noBreak
  | c (f) a a bes (a) a a   \noBreak
  | bes (g) e-0 e g (e) c c   \noBreak
  | a' (f)  c c f (c) a-0 a \break \noPageBreak
%14
  | e' (g) g g a (b,!) b b    \noBreak
  | b! (d) d d  d (c) c c   \noBreak
  |  f, (a) c c d (c) c c   \noBreak
  | fis, (a-0) d d ees (d) d d \break \noPageBreak
%15
  | g, (bes) d d ees (d) d d   \noBreak
  | bes (d) g g a (g) g g   \noBreak
  | a (f) f f f (d) d d   \noBreak
  | b! (c) c c c (e,) e e \break \noPageBreak
%16
  | f (a-0) c c a-0 (c) f f    \noBreak
  | d (f) bes bes bes (g) e-0 e   \noBreak
  | f (a) c, c c (f) a,-0 a   \noBreak
  | bes (d) f,  f e (g) c c \break \noPageBreak
%17
  | f, (a) c c d (c) c c   \noBreak
  | a (c) f f g (f) f f   \noBreak
  | a (f) c c d (c)  c c   \noBreak
  | f (c) a a  bes (a) a a   \noBreak
  | f4 r   \noBreak
  | <a f'> \downbow r   \noBreak
  | f  \downbow r  \bar "|." \pageBreak
}