% -*- coding: utf-8 -*-
\version "2.12.3"

seis = \relative g {
	\set Staff.midiInstrument = "violin"
	\time 4/4
	\key g \major
	\clef treble

%1
  | \bowH g8^\markup { \hspace #-5 \raise #2 \fontsize #-1 \bold "Moderato"} \downbow _(g'-3) b, _(g') a, _(g') g, _(g')   \noBreak
  | a,8  _(g')  a, _(g') a, _(fis'-2) a, _(fis')  \noBreak
  | a,8 _(a'-4) c, _(a') b, _(a') a, _(a') \break \noPageBreak
%2
  | b,8 _(a') b, _(a') b, _(g'-3) b, _(g') \noBreak
  | b, _(g'-3) b _(g)  c _(g) b _(g) \noBreak
  | a8_0 _(g) a_0 _(g) fis _(d') fis, _(d') \noBreak
  | e,8 _(e') e, _(d') e, _(cis') g  _(a_0)  \break \noPageBreak
%3
  | fis8-2 (d'-3) a-4 (d) fis, (d') d, (d') \noBreak
  | d, (d') e (d,) d' (d,) c' (d,) \noBreak
  | b' (d,) d' (d,) c' (d,) b' (d,)   \noBreak
  | a' (d,) c' (d,) b' (d,) a' (d,) \break \noPageBreak
%4
  | b' (d,) c' (d,) e' (d,) d' (d,)  \noBreak
  | d (d') e (d,) d' (d,) c' (d,)  \noBreak
  | b' (d,) d' (d,) cis' (d,) b' (d,)  \noBreak
  | a' (fis') a, (a') a, (g') a, (e'-0)  \break \noPageBreak
%5
  | d (d,) c' (d,) a'-0 (d,) d' (d,)  \noBreak
  | g (g,) g' (b,) g' (a,) g' (g,)  \noBreak
  | g' (a,)  g' (a,) fis' (a-0) fis (a)  \noBreak
  | d, (d') d, (e') d, (d') d, (c')  \break \noPageBreak
%6
  | d, (c') d, (c') d, (b') d, (b') \noBreak
  | a (a,) a' (c,) a' (b,) a' (a,) \noBreak
  | a' (b,) a' (b,) gis' (b) gis (b)  \noBreak
  | e, (e') e, (b') e, (e') e, (d')  \break \noPageBreak
%7
  | e, (d') e, (d') e, (cis') e, (cis') \noBreak
  | d, (d') fis, (d') d, (d') fis, (a-0) \noBreak
  | b (a-4) b (a) b (gis) b (gis)  \noBreak
  | e (e') gis, (e') e, (e') gis, (b) \break \noPageBreak
%8
  | d (e-0) d (e-0) cis (e) cis (e)  \noBreak
  | a, (a') b (a,) a' (a,) g' (a,) \noBreak
  | fis' (a,) a' (a,) g' (a,) fis' (a,)  \noBreak
  | e' (a,) g' (a,) fis' (a,) e' (a,) \break \noPageBreak
%9
  | fis' (a,) g' (a,) gis' (a,) a' (a,)  \noBreak
  | a (a') b (a,) a' (a,) g' (a,) \noBreak
  | fis' (a,) a' (a,) g' (b,) e-0 (b) \noBreak
  |  a' (a,) a' (a,) g (a-0) e (cis') \break \noPageBreak 
%10
  | d (d,) a'-0 (d,) d' (d,) a'-0 (d,)  \noBreak
  | bes' (d,) d' (d,) cis' (d,) e' (d,)  \noBreak
  | d' (d,) a' (d,) d' (d,) c' (d,)  \noBreak
  |  bes' (d,) d' (d,) cis' (d,) e' (d,)  \pageBreak 
%11
  | d' (d,) e' (d,) cis' (d,) e' (d,)  \noBreak
  | d' (d,) c' (d,) a'-0 (d,) fis (c)  \noBreak
  | g (g') b, (g') a, (g') g, (g')  \noBreak
  | a, (g')  a, (g') a, (fis') a, (fis')  \break \noPageBreak
%12
  | a, (a') c, (a') b, (a') a, (a')  \noBreak
  | b, (a') b, (a') b, (g') b, (g') \noBreak
  | b, (g') b (g)  c (g) b (g) \noBreak
  | e' (g,) e' (g,) a-0 (g) a (g) \break \noPageBreak
%13
  | b (d,) d' (d,) c' (d,) a'-0 (d,)  \noBreak
  | g, (g') g, (a') g, (g') g, (f'!) \noBreak
  | g, (e') g, (g') g, (fis') g, (a')  \noBreak
  | g, (g') g, (a') g, (g') g, (f'!) \break \noPageBreak
%14
  | g, (e') g, (g') g, (fis') g, (a')  \noBreak
  | g, (g') b (g) g, (g') b, (g')  \noBreak
  | g, (g') b, (g') d (g) b, (g') \noBreak
  | g, (g') b (g) g, (g') b, (g')  \break \noPageBreak
%15
  | g, (g') b, (g') d (g) b, (g')  \noBreak
  | g, (g') b (g) d (b') d, (d')  \noBreak
  | d, (b') d, (d') d, (b') d, (d')  \noBreak
  | <g,, d' b' g'>4 r r2  \bar "|."  \break \noPageBreak
}
