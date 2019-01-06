% -*- coding: utf-8 -*-
\version "2.12.3"

vinte = \relative d'{
	\set Staff.midiInstrument = "violin"
	\time 6/8
	\key d \major
	\clef treble

%1
  | d16_0  \downbow ^ \markup { \hspace #-5 \raise #-7.0 \fontsize #-1 \bold "Moderato" } (fis a-0 b a-0 fis) d (g b cis b g)   \noBreak
  | d (fis a-0 b a-0 fis) a-0 (b cis d e-0 fis)  \noBreak
  | a, (cis e fis e cis) a (d fis g fis d) \break  \noPageBreak   
%2
  | a (cis e-0 g b a) g (fis e d cis b)   \noBreak
  | a (a' b a g fis) e (fis g fis e d)   \noBreak
  | b (d e d cis b) a (b cis b a g)  \break  \noPageBreak 
%3
  | fis (e d e fis g) a-0 (b cis d e fis)  \noBreak
  | g (a g e-0 cis e-4) cis (e-4 cis a-0 g e)  \noBreak
  | d16-0  \downbow (fis a-0 b a-0 fis) d (g b cis b g) \break  \noPageBreak 
%4
  | d (fis a-0 b a-0 fis) a-0 (b cis d e-0 fis)  \noBreak
  | a, (cis e fis e cis) a (d fis g fis d)  \noBreak
  | a (cis e-0 g b a) g (fis e d cis b) \break \noPageBreak   
%5
  | a (a' bes a g f!) e (f g f e d)  \noBreak
  | bes (d e-4 d c! bes) a (bes c bes a g)  \noBreak
  | a-4 (g f! g a-0 bes) c! (d e f! g a)  \break \noPageBreak  
%6
  | g (a bes g e-0 g) e (g e c! bes g)  \noBreak
  | f! (a-0 c! d c a-0) f (bes c d c bes)  \noBreak
  | f! (a c! d c a) c (d e-0 f! g a)  \break  \noPageBreak  
%7
  | bes (g e-0 c! e-0 g) bes (a f! c f a)  \noBreak
  | bes (a g f! e f) g (f e d c! bes)  \noBreak
  | f! (a-0 c! d c a-0) f (bes c d c bes) \break \noPageBreak   
%8
  | f! (a c! d c a) c (d e-0 f! g a)  \noBreak
  | bes (g e-0 cis! e-0 g) bes (a f! d f a)  \noBreak
  | bes (a g f! e f) g (e-0 cis! a-0 g e)  \break \noPageBreak
%9
  | d (f! a-0 bes a f) d (e f g a-0 d)  \noBreak
  | g, (bes d ees d bes) ees (d c! bes a g)  \noBreak
  | e (gis b c! b gis) e (fis gis a-0 b e) \pageBreak
%10
  | gis, (b d e-4 d b) d (e-0 fis gis a b)\noBreak
  | a, (cis e-0 fis e-0 cis) a (d fis g fis d)\noBreak
  | a (e'-0 g a g e) b' (a g fis e d) \break \noPageBreak
%11
  | cis (e-0 fis e cis a) d (fis g fis d a)\noBreak
  | e' (g a g e-0 a,) b (a-0 g fis e d-0)\noBreak
  | a (b cis b cis d) e (fis g fis g a) \break \noPageBreak
%12
  | b (cis d cis d e) fis (g a g a b) \noBreak
  | a (g fis e a g) fis (e d cis b a) \noBreak
  | d (cis b a d cis) b (a g fis e fis) \break \noPageBreak
%13
  | d (fis a-0 b a-0 fis) d (g b cis b g) \noBreak
  | d-0 (fis a-0 b a-0 fis) a-0 (b cis d e-0 fis) \noBreak
  | a, (cis e fis e cis) a (d fis g fis d)  \break \noPageBreak
%14
  | a (cis e g b a) g (fis e d cis b) \noBreak
  | a (a' b a g fis) e (fis g fis e d) \noBreak
  | b (d e d cis b) a (b cis b a g)  \break     \noPageBreak
%15
  | fis (e d e fis g) a-0 (b cis d e fis) \noBreak
  | g (fis e fis g fis) e (fis g b a g) \noBreak
  | fis (a b a g fis) e (fis g fis e d)  \break     \noPageBreak
%16
  | b (d e d cis b) a (b cis b a g) \noBreak
  | fis (g a-0 b cis d) cis (d e fis g a) \noBreak
  | b (a g fis e fis) g (e cis a-0 b cis)  \break \noPageBreak
%17
  | d (fis a b a fis) d (g a b a g) \noBreak
  | d (fis g a g fis) g (e cis a g e) \noBreak
  | d (fis a b a fis) d (g a b a g)  \break \noPageBreak 
%18
  | d (fis g a-4 g fis) g (e cis a b cis) \noBreak
  | d4 r8 <d a' fis'>4 \downbow r8 \noBreak
  | d4 \downbow r8 r4 r8 \bar "|."  
}
