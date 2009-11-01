firstHornI = \relative f
{\key c \major
\clef treble
\time 4/4
#(set-accidental-style 'default)
\set Score.skipBars = ##t

%Page 1
\repeat volta 2 {
r2 e''8 \p [(d)] \noBeam d (c) 
r2 f8 \p [(e)] \noBeam e (d)
r2 g8 \p [(f)] \noBeam f (e) 
e4-. (e-. e-. e-.)
d1\espressivo
e2 \p (f4. d8) e4 r4 r2
R1*5
r4 r8 g,8-. \p b-. g-. b-. d-. 
f4 r d d
e r4 r2 

%Page 2
R1*2
g,8\f a16 b c d e fis g a b c d8 f,\p
e1
(e4) f8 e e (d c b)
d4 (c) fis (g a b8 a g fis e d)
c4 (b) r2
R1*5
r2 r4 g8. _\markup{\italic{dolce}} (b16)
d2 (cis8 d e d)
d1 \sfzp ~
d1 ~
d4 dis ( e a)
g2 (fis4) r4
R1
r4 g \p (fis c') 
c8 (b a g fis4 c') ~
c8 (b a g fis4 c')
c8 (b) a-. g-. fis-. e-. d-. c-.

%Page 3
b4 r r2
r8 b'-. a-. g-. fis-. e-. d-. c-.
b4 r4 r2
r8 b'-. a-. g-. fis-. e-. d-. c-.
b2 (f'2)
e1
ees
d
g
(g16) b, c d e fis g a b8-. b-. b-. b-.
b (a) g-. fis-. g (fis) e-. d-. 
e (d cis d cis d e c)
b4. (d8) d (c b a)
g4 r r2
R1*3
r8 g'4\f g8 fis-. d-. e-. fis-.
g4 r r2 
r8 g4\f g8 fis-. d-. e-. fis-.
g4 r4 r8 d-.\p e-. fis-. 
g4 r4 r8 d-.\p e-. fis-. 
g-. d-. e-. fis-. g-. d-. e-. fis-.
g4 r r8 d\f d d

%Page 4 
d4 r r2
R1 }

R1
g2.\p (f8 ees) 
ees4 (d2) d8 (ees)
f4-. (f-. f-. f-.)
fis (g) r2
R1*9
d4 r8 g (fis g a g)
fis4 r4 r2 
g4 r8 g (fis g a g)
fis2. fis4
(g) r4 r2
R1
g2 \(aes ~ 
aes4 g f fis\) 
g4 r4 r2
R1

%Page 5
g2 \(aes ~ 
aes4 g f fis\)
g4 r4 r8 g-. g (b,)
c4 r4 r8 g'-. g (c,)
d4 r4 r8 g-. g (d)
e4 r4 r8 g-. g (e)
f4 r8 g e4 r8 g
d4 r8 g8 c,4 r8 g'
b, g' (fis g) r\cresc g (fis g)
r g (fis g) r g (fis g)
r g (fis g a g f e)
d\p (e d e f e d c)
b4-. c-. d-. e-.
f2\fermata\sfz d4 r\fermata

r2 e8\p (d) d (c) 
r2 f8\p (e) e (d)
r2 g8 (f) f (e)
e4-. (e-. e-. e-.)
d1\espressivo
e2\p (f4. d8) 
e4 r4 r2
R1*6
g,8 a16 b c d e fis g a b c d8 f,

%Page 6
e4 r4 r2
c8 d16 e fis g a b c8 a g fis 
g4 r4 r2
R1*3
r2 r4 c,8. _\markup{\italic dolce}(e16)
g2 (fis8 g a g)
g1\sfzp
(g1)
(g4) (gis a f)
e2 (d4) r4
R1
r4 c\p (b f')
f8 (e d c b4 f')
(f8) ( e d c b4 f'4
e8) g-. f-. e-. d-. c-. b-. a-. 
g4 r4 r4 b
(c8) g'-. f-. e-. d-. c-. b-. a-.
g4 r r b
(c8) g-. a-. b-. c-. d-. e-. f-. 
g1 
f ~
f
e
d \<
ees
e4 \! \f r r2

%Page 7
r8 c d e f g a b 
c4 r r2
r8 c, d e f g a b
c (b) a-. g-. a (g) f-. e-.
a (g fis g fis g a f)
e4. (g8) g (f e d)
c4 r4 r2
R1*2
r8 g'4 g8 aes4 \sfz (f)
e r r f
e8 g4 g8 aes4 \sfz (f)
e r r f
e r r8 f-. f-. f-.
e4 r r8 f-. f-. f-.
e (f) f-. f-. e (f) f-. f-. 
e4 r r2
R1*1 
r2 a8\p (g) g (f) 
r2 f8\p (e) e (d)
r2 g8\p (f) f (e)
e (d) d (c) c4-. c4-.
cis2\sfzp (d4) r
e\pp r d r

%Page 8
c r g'8 (f) f (e) 
e (d) d (c) c4-. c-. 
g'2\sfz\> (f4) r
r e\p r d
c\f r d r 
e r d r 
c r c\ff c 
c r r2 \fermata \bar "|."
}


