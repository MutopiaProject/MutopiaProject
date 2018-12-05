% -*- coding: utf-8 -*-
\version "2.12.3"

dezessete = \relative a{
	\set Staff.midiInstrument = "violin"
	\time 2/4
	\key a \major
	\clef treble
%1
  | a16 \mf \downbow ^ \markup { \hspace #-5 \raise #-7.0 \fontsize #-1 \bold "Allegro" } cis e a-4 cis, e a-0 cis  \noBreak
  | e, gis b e-4 gis, b e-0 gis   \noBreak
  | a, cis e-0 a gis a b a   \noBreak
  | e (a) e d cis (e) cis a \break  \noPageBreak
%2
  | e gis b e-4 gis, b e-0 gis   \noBreak
  | b, dis fis b a fis b a   \noBreak
  | gis a b a gis fis e d   \noBreak
  | b (e-4) b a-0 gis (fis) e d-0 \break  \noPageBreak
%3
  | cis-> (e) a cis e-4-> (cis) a e   \noBreak
  | d a'-0 e a-0 fis a-0 d, a'-0   \noBreak
  | e-> (gis) b e-0 gis-> (e-0) b gis   \noBreak
  | a e'-0 b e-0 cis e-0 a, e'-0 \break \noPageBreak
%4
  | b(e-0) gis b a (gis) fis e   \noBreak
  | b' a gis fis e dis cis b   \noBreak
  | e-4 dis cis b cis b cis dis   \noBreak
  | e-4 b gis a-0 b gis fis e \break \noPageBreak
%5
  | e (gis) fis a-4 gis (b) a-0 cis   \noBreak
  | b (d) cis e-4 d (fis) e-0 gis   \noBreak
  | a e-0 cis a-0 e'-4 cis a-0 e   \noBreak
  | cis' a-0 e cis e a-0 cis e-4 \break \noPageBreak
%6
  | e, (gis) fis a-4 gis (b) a-0 cis   \noBreak
  | b (d) cis e-4 d (fis) e-0 gis   \noBreak
  | cis, a' e-0 cis a-0 e'-4 cis a    \noBreak
  | e cis' a-0 e cis a'-4 e d \break \noPageBreak
%7
  | cis (e) d-0 fis e (g!) fis a-4   \noBreak
  | g! (b) a-0 cis b (d) cis e-4   \noBreak
  | d a' fis d a-0 fis' d a   \noBreak
  | fis d' a-0 fis d a'-4 fis e \break \noPageBreak
%8
  | dis (fis) e gis fis (a-4) gis b    \noBreak
  | a-0 (cis) b dis cis (e-4) dis fis  \noBreak
  | e-0 b' gis fis e fis d cis   \noBreak
  | b d b gis fis e d-0 b \break \noPageBreak
%9
  | a c! e a-4 c, e a-0 c!   \noBreak
  | e, gis b e-4 gis, b e-0 gis   \noBreak
  | a,-0 c! e-0 a gis a b a   \noBreak
  | e (a) e d c! (e-4) c a-0 \pageBreak
%10
  | d, f! a d f, a d f!   \noBreak
  | a, cis e a g! e a g   \noBreak
  | f! g! a g f e-0 d bes   \noBreak
  | a-0 (d) a g! f! (e) d c! \break \noPageBreak
%11
  | b-> (d) g! b d-> (b) g d-0   \noBreak
  | g,! g'! d-0 g e g f! g   \noBreak
  | e-> (g!) c! e-0 g!-> (e) c g   \noBreak
  | e c'! g! c f,! c' e, c' \break \noPageBreak
%12
  | cis,-> (e) a-0 cis e-4-> (cis) a e   \noBreak
  | cis a'-4 e a-0 f! a-0 g! a-0   \noBreak
  | f!-> (a) d f! a-> (f) d a   \noBreak
  | f! d' a d g, d' f, d' \break \noPageBreak
%13
  | dis fis a g! fis g fis e   \noBreak
  | dis c! b c d! c b a-0  \noBreak
  | fis a-0 c! b a g! fis e   \noBreak
  | dis a'-0 e a-0 fis a-0 dis, a'-0 \break \noPageBreak
%14
  | e (gis) b e-4 gis, b e-0 gis   \noBreak
  | a (e-0) c! a e'-4 c a e   \noBreak
  | gis (fis) e fis gis (a-4) b cis   \noBreak
  | d (b) gis e fis (e) d-0 b \break \noPageBreak
%15
  | a cis e a-4 cis, e a-0 cis   \noBreak
  | e, gis b e-4 gis, b e-0 gis   \noBreak
  | a, cis e-0 a gis a b a   \noBreak
  | e (a) e d cis (e) cis a \break \noPageBreak
%16
  | e gis b e-4 gis, b e-0 gis   \noBreak
  | b, dis fis b a fis b a    \noBreak
  | gis a b a gis fis e d  \noBreak
  | b (e-0) b a gis (fis) e d \break \noPageBreak
%17
  | cis-> (e) a cis e-4-> (cis) a g!   \noBreak
  | e a-0 fis a-0 g! a-0 e a-0   \noBreak
  | fis-> (a) d fis a-> (fis) d a-0   \noBreak
  | fis d' a-0 d fis, dis' a-0 dis \break \noPageBreak
%18
  | e-0 a e d cis e-4 cis a-0   \noBreak
  | b e-4 b a-0 gis b gis e   \noBreak
  | a, cis e a-4 cis, e a-0 cis   \noBreak
  | e, gis b e-0 gis b gis e \break \noPageBreak
%19
  | a e-0 cis a-0 e'-4 cis a-0 fis   \noBreak
  | e e'-4 d b gis e fis gis  \noBreak
  | a-0 a' e-0 cis a e'-4 cis a   \noBreak
  | e cis' a-0 e cis a'-4 e cis   \noBreak
  | a8 r <e' cis' a'>\downbow r   \noBreak
  | a, \downbow r r4  \bar "|."  \pageBreak
}

