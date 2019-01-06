% -*- coding: utf-8 -*-
\version "2.12.3"

dezoito = \relative d'{
	\set Staff.midiInstrument = "violin"
	\time 4/4
	\key d \major
	\clef treble

%1
  | d16 \downbow ^ \markup { \hspace #-5 \raise #-7.0 \fontsize #-1 \bold "Moderato" } (fis e g fis a-4 g b) a-0 \upbow ( cis b d cis e-4 d fis)     \noBreak
  |  e-0 (g fis a g b a g) fis (g a b a8. fis16) \break  \noPageBreak
%2
  | b (g a fis g e-0 fis d) e-4 (cis d b cis a-0 b g)    \noBreak
  | a-4 (fis g e fis d-0 e cis) d-4 (b cis d cis8. a16) \break \noPageBreak
%3
  | a (cis b d-4 cis e d-0 fis) e (gis fis a-4 gis b a-0 cis)    \noBreak
  | b (d cis e-4 d fis e-0 gis) fis (a gis b a8. a,16) \break \noPageBreak
%4
  | g' (b a fis e-0 g fis d) cis (e-4 d b a-0 cis b g)    \noBreak
  | fis (a-4 g e d-0 fis e cis) d-4 (a b cis d4-4)  \break \noPageBreak
%5
  | d16 \downbow (fis a-4 fis a fis a fis) d (fis a fis d fis a fis)    \noBreak
  | a (cis e-4 cis e cis e cis) a (cis e cis a cis e cis)  \break \noPageBreak
%6
  | d, (fis a-4 fis a fis a fis) e (fis gis a-0 b cis e-4 d)    \noBreak
  | cis (a b cis d e-0 fis gis) a (e-0 cis b a4)  \break \noPageBreak
%7
  | a16 (cis e-4 cis e cis e cis) a (cis e cis a cis e cis)    \noBreak
  | e (g b g b g b g) e (g b g e g b g)  \break \noPageBreak
%8
  | a, (cis e-4 cis e cis e cis) a (e'-4 d cis b a g e)    \noBreak
  | fis (d e fis g a b cis) d (a-0 fis e d4)  \break \noPageBreak
%9
  | d16 (a'-4 g a-4 fis a-4 e a-4) d, ( e fis g a b cis d)    \noBreak
  | a (e'-4 d e-4 cis e-4 b e-4) a, ( b cis d e-0 fis g a)  \break \noPageBreak
%10
  | fis (a g a fis a e-0 a) fis (g a g fis e d c!)    \noBreak
  | b (c! d e-4 d c b a) g (d-0 b a g4)  \pageBreak
%11
  | g16 (d'-4 c! d-4 b d-4 a d-4) g, ( a b c d-0 e fis g)    \noBreak
  | d16 (a'-4 g a-4 fis a-4 e a-4) d, ( e fis g a b c! d)  \break \noPageBreak
%12
  | b (d cis d b d a d) e, (fis gis a-0 b cis d e-4)    \noBreak
  | a, (b cis d e-4 d cis b) a-4 (e cis b a4)  \break \noPageBreak
%13
  | a16 \downbow (cis b d-4 cis e d-0 fis) e (g fis a-4 g b a-0 cis)    \noBreak
  | d (e fis g b a g fis) e (fis g a g fis e fis)  \break \noPageBreak
%14
  | g (b a  fis e-0 g fis d) cis (e-4 d b a-0 cis b g)    \noBreak
  | fis (d e fis g a-0 b cis) d (e-4 d b a fis e d)  \break \noPageBreak
%15
  | g (b d b d b d b e-4 d e d e d e d)    \noBreak
  | gis, (b d b d b d b e-4 d e d e d e d)  \break \noPageBreak
%16
  | a (d fis a b a b a b a b a b a g fis)    \noBreak
  | e-4 (d e d e d cis b a-4 g a g a g fis e)  \break \noPageBreak
%17
  | d (fis e g fis a-4 g b) a-0 (cis b d cis e-4 d fis)    \noBreak
  | g (b a fis e-0 g fis d) cis (d e-4 cis b a-0 g e)  \break \noPageBreak
%18
  | d (fis e g fis a-4 g b) a-0 (cis b d cis e-4 d fis)    \noBreak
  | g (a b a g fis e d) cis (b a g fis e d cis)  \break \noPageBreak
%19
  | d-4 (a b cis d-0 fis e g) fis (a-4 g b a-0 b cis e-4)    \noBreak
  | d (a b cis d fis e-0 g) fis (a g b a g e-0 cis)     \noBreak
  | d4 r <d, a' fis'>\downbow r    \noBreak
  | d \downbow r r2  \bar "|."  \pageBreak
}
