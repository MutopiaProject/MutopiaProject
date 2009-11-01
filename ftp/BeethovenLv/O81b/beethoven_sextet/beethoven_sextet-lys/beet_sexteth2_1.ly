secondHornI = \relative f
{\key c \major
\clef treble
\time 4/4
#(set-accidental-style 'default)
\set Score.skipBars = ##t
\set tupletSpannerDuration = #(ly:make-moment 1 4)

%Page 1
\repeat volta 2 {
r2 c''8\p [(g)] g (e)
r2 d'8\p [(c)] c (g)
r2 e'8\p [(d)] d (c)
c4-. (c-. c-. c-.)
c1\espressivo
(c2)\p d4. (g,8)
c4 r4 r2
R1*3
r4 r8 c,\f e c e g 
c4 r r2
R1
r2
g4\p g
g r4 r2

%Page 2
c16\f g' e c g e' c g e c' g e c g' e c
g 4 r r2
R1
r4 d''2\p (c4)
b r4 r2 
r4 c2 (b4)
a r4 r2
r2 d4\p d
g8 (fis) e-. d-. cis-. b-. a-. g-. 
fis4 r4 r2
R1*5
r4 g _\markup{\italic{dolce}} (fis c')
c8 (b a g fis4 c')
b4 g2 c4
(b2 a4) g8. (b16)
d2 (cis8 d e d)
d1\sfzp ~
d ~
d ~
d8 g-. fis-. e-. d-. c-. b-. a-.

%Page 3
g4 r4 r2
r8 g'-. fis-. e-. d-. c-. b-. a-.
g4 r r2
r8 g'-. fis-. e-. d-. c-. b-. a-.
g2 (d')
c1 ~
c
b
bes
b16 g a b c d e fis g8-. g-. g-. g-. 
g (fis) e-. dis-. e (d) c-. b-.
c (b ais b ais b c a)
g4. (b8) b (a g fis)
g4 r r2
R1*2
g8\f d'4 d8 ees4\sfz (c)
b r r c
b8 d4 d8 ees4\sfz (c)
b r r c
(b8) d-.\p [b-. g-.] c4 r 
r8 d-. b-. g-. c4 r8 c
b (c) c-. c-. b (c) c-. c-.
b4 r r8 c\f c c

%Page 4
b4 r4 r2
R1}

R1*4
r2 r4 g\p
ees'2. (d8 c)
c4 (b2) b8 (c)
d4-. (d-. d-. d-.)
d (ees) r2
c,1\sfzp ~
c ~
c ~
c2.
c'8\p (d)
ees4-. (ees-.) ees (fis,)
g r r2
c4\p r8 c (b c d c)
b4 r4 r2
R1
g,2 (aes ~
aes4 g f fis)
g r4 r2
R1
g2 (aes ~
aes4 g f fis)

%Page 5
g r4 r2
R1
g8 g' b g b g g, g'
g,8 a' c a c a g, a'
g,8 b' d b d b g, b'
g,8 c' e c e c g, c'
g,8 d'' f d g,, c' e c
g,8 b' d b g, a' c a
g,8 g' b g g,\cresc a' c a
g,8 b' d b g, c' e c
g,4\! r r2
r8 c'\p (b c d c b a)
g4-. a-. b-. c-. 
d2\sfz \fermata g4 r \fermata

r2 c,8\p (g) g (e)
r2 d'8\p (c) c  (g)
r2 e'8\p (d) d (c)
c4-. (c-. c-. c-.)
c1\espressivo
(c2)\p d4. (g,8)
c4 r4 r2
R1*4
c16\f g' e c g e' c g e c' g e c g' e c
g 4 r r2
R1

%Page 6
r4 r8 c\ff e c e g 
c2\sfzp c,
g'4 r r2
R1*5
r4 c\p_\markup{\italic dolce} (b f')
f8 (e d c b4 f')
e (c2 d4)
c2 (b4) c,8. (e16)
g2 (fis8 g a g)
g1\sfzp ~
g ~
g ~
g8 e'-. d-. c-. b-. a-. g-. f-. 
e4-. r r f
(e8) e'-. d-. c-. b-. a-. g-. f-.
e4 r r f
(e8) e-. f-. g-. a-. b-. c-. d-. 
e1
a,
d
g,
c4 c,2 \cresc c4 ~
c c'2  c8.\f c16
c16 c e c g g c g e e g e c c e c 

%Page 7
g4 r r2
c'16 c e c g g c g e e g e c c e c 
g4 r r2
r4 r8 e'' f (e) d-. c-. 
f (e dis e dis e f d)
c4. (e8) e (d c g)
e4 r r2
R1*3
r8 c'4 c8 b-. g-. a-. b-. 
c4 r r2
r8 c4 c8 b-. g-. a-. b-. 
c-. g-. e-. c-. g-. g'-. a-. b-. 
c-. g-. e-. c-. g-. g'-. a-. b-. 
c-. g-. a-. b-. c-. g-. a-. b-.
c4 r r2
R1 
r2 f8\p (e) e (d)
r2 d8\p (c) c (g)
r2 e'8\p (d) d (c)
c (g) g (e) e4-. e-. 
bes'2\sfzp (a4) r
c\pp r g r 

%Page 8
e r e'8 (d) d (c) 
c (g) g (e) e4-. e-.
g2\sfz\> (a4) r
r c\p r g 
\times 2/3 {c,8\f g' fis g e c g g' b d b g c, g' fis g e c g g' b d b g}
c4 r e,\ff e 
e r4 r2 \fermata \bar "|."

}


