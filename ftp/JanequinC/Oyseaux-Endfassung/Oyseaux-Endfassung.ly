\version "2.7.40"
\include "deutsch.ly"
\header {
  filename =  "Oyseaux.ly"
  title = "Le Chant des Oyseaux"
  subtitle =	"Reveilles vous"
 opus = "(Attaignant 1529(?) )"
  composer = "Clement Ianequin"
  source = "Les Maîtres Musiciens de la Renaissance Française"
editor = "M. Henry Expert"
publisher = "Alphonse Leduc, Paris"
year = "1898"
mutopiatitle = "Le Chant des Oyseaux"
mutopiacomposer = "JanequinC"
 mutopiainstrument = "Voice, (SATB)"
 source = "Leduc 1898"
 copyright = "Public Domain"
 maintainer = "Till Rettig"
 lastupdated = "2006/November/16"
 mutopiainstrument = "Choir"
 style = "Renaissance"
 footer = "Mutopia-2006/12/01-796"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
%#(set-default-paper-size "letter")
%#(set-default-paper-size "a4")
#(set-global-staff-size 19.5)
\paper {%besonders viel Noten auf dem Papier
  %#(set-paper-size "a4")
 % annotate-spacing = ##t %Um die Maße anzeigen zu lassen
 % left-margin = 1.5\cm
  print-page-number = ##t
  between-system-padding = #1
  ragged-bottom=##f
  ragged-last-bottom=##t
}
global = {
  \set Score.skipBars = ##t
	#(set-accidental-style 'forget)
%bmolle = ^\markup{\tiny\flat}
%bdurum = ^\markup{\tiny\flat}
%ficta = ^\markup{\tiny\sharp}
\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2) %kleiner Systemabstand
%{
  % incipit
 % \once \override Score.SystemStartBracket #'transparent = ##t
  \override Score.SpacingSpanner #'spacing-increment = #1.0 % tight spacing
%  \key f \major
 % \time 2/2
 % \once \override Staff.TimeSignature #'style = #'neomensural
  %\override Voice.NoteHead #'style = #'neomensural
  %\override Voice.Rest #'style = #'neomensural
  %\set Staff.printKeyCancellation = ##f %Das vielleicht doch wieder anschalten?
 % \cadenzaOn % turn off bar lines
  %\skip 1*10
 % \once \override Staff.BarLine #'transparent = ##f
  %\bar "||"
 % \skip 1*1 % need this extra \skip such that clef change comes
            % after bar line
 % \bar ""
%}

  % main
  \revert Score.SpacingSpanner #'spacing-increment % CHECK: no effect?
  %\cadenzaOff % turn bar lines on again
  %\once \override Staff.Clef #'full-size-change = ##t
 % \set Staff.forceClef = ##t
  %\key g \minor
  \time 2/2
	\set Score.measureLength = #(ly:make-moment 4 2)
\override Voice.NoteHead #'style = #'baroque
  %\override Voice.NoteHead #'style = #'default
  %\override Voice.Rest #'style = #'default

  % FIXME: setting printKeyCancellation back to #t must not
  % occur in the first bar after the incipit.  Dto. for forceClef.
  % Therefore, we need an extra \skip.
 % \skip 1*1
  %\set Staff.printKeyCancellation = ##t
  %\set Staff.forceClef = ##f
 \skip 1*20
\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) %ab S. 2 wieder größerer Abstand
  \skip 1*12 % 
\once \override Staff.BarLine #'transparent = ##f
	\bar "||"
\skip 1*76
	\once \override Staff.BarLine #'transparent = ##f
	\bar "||"
\skip 1*92
	\once \override Staff.BarLine #'transparent = ##f
	\bar "||"
\break
\skip 1*116
	\once \override Staff.BarLine #'transparent = ##f
	\bar "||"
\break
\skip 1*98
	\break
%\skip 1*110
	%\once \override Staff.BarLine #'transparent = ##f
	%\bar ""
%\skip 1*2

\skip 1*12
  % let finis bar go through all staves
\once  \override Staff.BarLine #'transparent = ##f

  % finis bar
  \bar "|."
}

discantusNotes = {
  \relative c'' {
    \set Staff.instrument = "Superius  "
	\set Staff.midiInstrument = "choir aahs"
	\key d \minor
    % main
    \clef "treble"
    R\breve |
    R\breve |
    r1 d2  d4 d |
    d2 d e^\markup{ \tiny \musicglyph #"accidentals.M2"  } %hier ein Erniedrigungszeichen
	   d4 (c) |
    b2 c d2. d4 |
	c2 b a1 |  g b2 b4 b | %Ende Seite 1
	b2 r2 r1 | r1 d2 d4 d d2 d e^\markup{ \tiny \musicglyph #"accidentals.M2" } d4 (c) b2 c d2. d4 | c2 b2 a1( | \[ g1 b1 \] | a2 g2. f8 e f2) |
	%\once \override NoteHead #'transparent = ##t g\breve |
	g\longa |
	%\bar "| |"
	R\breve 
	%Ende Seite 2
	R\breve R R | b2. b4 a2 d d c d1 | R\breve | b2. b4 a2 d d c d1 |
	%Ende S. 3
	r2 a c2. c4 | b2 a g (a2.  g4 g1 f2 ) | g\breve | R | R | r2 a2 c2. b4 a g a2 b4 c b a 
	%Ende S. 4
	g4 f8 f\noBeam g4 b a2 r4 d4 | c2. b4 a2 r4 d | c2. b4 a2 r4 d | c2. b4 a g a2 | b4 c b a g f8 f\noBeam g4 b | a2 r4 a a a a a |
	%Ende S. 5
	b2 a4 (g) f1 | r1 d'2 d4 d | d 2 d e^\markup{\tiny\musicglyph #"accidentals.M2"} d4 (c) | b2 c d2. d4 | c2 b a1 | g b2 b4 b b2 r r1 | r d2 d4 d |
	%Ende S. 6
	d2 d e^\markup{\tiny\musicglyph #"accidentals.M2"} d4 (c) b2 c d2. d4 | c2 b a1( | \[ g b \] | a2 g2. f8 e f2) | g\longa 
	%Doppelstrich
	R\breve R R
	%Ende S.7
	R | b2. b4 a2 d d c d1 | R\breve | b2. b4 a2 d d c d1 | r2 a c2. c4 b2 a g (a2.  g4 g1 f2 )
	%Ende S. 8
	g1 r2 e'2 | d2. c4 b c d e | f1 d2 r2 | d r d r d r d c4 d | e c d2 d2 c4 d |
	%Ende S. 9
	e c d1 c2 ~ (| c4) c8 c\noBeam a4 c8 c\noBeam a1 | R\breve r1 d4 d d d d2 r d4 d d d | d2 f2. e4 d e 
	%Ende S. 10
	f2 r r d2.  c4 b c d2 
	%f2 ~( | f4)
	f2.
	 e4 d e f2 d4 e f f d e^\markup{\tiny\musicglyph #"accidentals.M2"} c b d e^\markup{\tiny\musicglyph #"accidentals.0"} | f2 f c4 c d2 | d4 d d b c d d d |
	%Ende S. 11
	d d d d d d8 d\noBeam d4 d | d d8 d\noBeam d2 r1 | r d2 d4 d | d2 d e^\markup{\tiny\musicglyph #"accidentals.M2"} d4 c b2 c d2. d4 c2 b a1 | g b2 b4 b |
	%Ende S. 12
	b2 r r1 | r d2 d4 d | d2 d e^\markup{\tiny\musicglyph #"accidentals.M2"} d4 c b2 c d2. d4 c2 b a1 (| \[ g1 b1 \] a2 g2. f8 e f2 ) | g\longa
	%Doppelstrich
	R\breve 
	%Ende S. 13
	R\breve R R | b2. b4 a2 d d c d1 | R\breve b2. b4 a2 d d c d1 |
	%Ende S. 14
	r2 a c2. c4 b2 a g 
	%(a2 ~ a4
	(a2.
	 g4 g1 f2) | g\breve | f'4 f f f f f f f |
	%Ende S. 15
	e\breve e4 e e e e e e e | e e e e e e e e | c1 r1 |
	%ende S. 16
	c\breve r4 c c c c c c c c2 c1 r2 | c\breve d1 d |
	%Ende S. 17
	d1 d d d | f4 f f f f f f f f f f f f f f f | f f e f e f e f |
	%Ende S. 18
	e e e e e e e2 | R\breve R | d4 d d d d d d d | d d d d d d d d |
	%Ende S. 19
	d d d2 d1 | e2 e e e | e4 e e e e e e e | e2 c2. c4 c c |
	%Ende S. 20
	c2 c2. c4 c c | c2 c2. c4 c c | c2 c2. c4 c c | c2 c2. c4 c c | c2 c2. c4 c c |
	%Ende S. 21
	c2 c1. | R\breve r1 e2 d4 d | d2 d e^\markup{\tiny\flat} d4( c) | b2 c d2. d4 c2 b a1 | g b2 b4 b |
	%Ende S. 22
	b2 r2 r1 | r1 d2 d4 d | d2 d e^\markup{\tiny\flat} d4 (c) b2 c d2. d4 c2 b a1( | \[ g1 b \] | a2 g2. f8 e f2) | g\longa
	%Doppelstrich Ende S. 23
	R\breve R R R b2. b4 a2 d | d c d1 | R\breve b2. b4 a2 d |
	%Ende S. 24
	d2 c d1 | r2 a c2. c4 b2 a g 
	%(a ~ a4  
	(a2.
	g4 g1 f2) | g1 r2 d' b1 r2 d2 | b1 r2 d2 | b1 b2 g | r1 r2 d'
	%Ende S. 25
	b1 b2 g | r1 r2 d' b1 b2 g | r1 b2 f | b g r b f1 b2 g | r2 b f1 b2 g1 r4 g |
	%Ende S. 26
	f2 b4 b g2 r4 g f2 b4 b g2 r4 g | f2 b4 b g2 r2 | d'2 d4 d d d d d | d d d d c b d2 ~ (d4 c b a b1) |
	%Ende S. 27
	a1 a2 a4 a f f f f f1 | R\breve r1 r4 d'4 d d | d d d d d d d d | c b d2. (c4 b a |
	%Ende S. 28
	b1 a1 ~ a2 g4 f e2. d4) | e\breve R\breve r1 d'2 d4 d | d2 d e^\markup{\tiny\flat} d4 (c) | b2 c d2. d4 | c2 b a1 |
	%Ende S. 29
	g1 b2 b4 b b2 r2 r1 | r d2 d4 d | d2 d e^\markup{\tiny\flat} d4 (c) b2 c d2. d4 | c2 b a1 (| \[g1 b \] a2 g2. f8 e f2 ) g\longa
	%Finis
  }
}

discantusLyrics = \lyricmode {

  % main
  Re -- veil -- lez 
  vous, cueurs en -- dor -- 
  mis, Le dieu d'a -- 
  mours vous son --
  ne, re -- vei -- lez
%Ende Seite 1
  vous, Re -- veil -- lez vous, cueurs en -- dor -- mis, Le dieu d'a -- mours vous son -- ne. 
	%Ende Seite 2
	A ce pre -- mier iour de may Pour vous me -- tre hors d'e -- smay 
	%Ende S. 3
	De -- stou -- pez voz o -- reil -- les. Et fa -- ri -- ra -- ri -- ron, fa -- ri -- ra -- ri -- ron, fe -- re -- ly, io -- ly, io -- ly, io -- ly, io -- ly, io -- ly, et fa -- ri -- ra -- ri -- ron, fa -- ri -- ra -- ri -- ron, fe -- re -- ly io -- ly. Vous se -- rez tous en 
	%Ende S. 5
	ioy -- e __ mis, Vous se -- rez tous en ioy -- e __ mis, Car la sai -- son est bon -- ne. Vous se -- rez tous, vous se -- rez
	%Ende S. 6
	tous en ioy -- e __ mis, Car la sai -- son est bon -- ne.
	%Ende S. 7
	Vous or -- rez, á mon ad -- vis, Que fe -- ra le roy mau -- vis D'u -- ne voix au -- ten -- ti -- 
	%Ende S. 8
	que: Ti, ti, ti, ti, ti, ti, py -- ti, chou, chou, chou, chou, chou -- thi, thou -- y, thou -- y, thou -- y, thou --
	%Ende S. 9
	y, chou -- thi. Toy __ que dy tu, que dy tu. Le pe -- tit mi -- gnon, le pe -- tit mi -- gnon. Sain -- cte te -- ste 
	%Ende S. 10
	Dieu! sain -- cte te -- ste Dieu! sain -- cte te -- ste Dieu! Il est temps, temps, d'a -- ler boi -- re, il est temps, temps. Au ser -- mon, ma mai -- stresse. A saint Tro -- tin Voir
	%Ende S. 11
	saint Ro -- bin, Mon -- strer le te -- tin, Le doulx mu -- se -- quin! Ri -- re et gau -- dir c'est mon de -- vis, Cha -- cun s'i ha -- ban -- don -- ne. Rire et gau --
	%Ende S. 12
	dir, ri -- re et gau -- dir c'est mon de -- vis, Cha -- cun s'i ha -- ban -- don -- ne.
	%Ende S.s 13
	Ros -- si -- gnol du boys io -- ly, Pour vous met -- tre hor d'en -- nuy 
	%Ende S. 14
	Vo -- stre gor -- ge iar -- gon -- ne: Frian, frian, frian, frian, frian, frian, frian, frian,
	%Ende S. 15
	teo, tu, tu, tu, tu, tu, tu, tu, tu, co -- qui, co -- qui, co -- qui, co -- qui, tu.
	%Ende S. 16
	oy oy ty oy ty oy ty oy ty, trr, tu, huit, huit, 
	%Ende S. 17
	huit, huit, huit, huit, teo teo teo teo teo teo teo teo teo, frian, frian, frian, frian, frian, frian, frian, frian, ty -- cun, ty -- cun, ty -- cun, tur -- ry, tur -- ry tur -- ry  qui -- by.
	tu, tu, tu, tu, tu, fou -- quet fou -- quet fi, ti, fi, ti, frian, frian, frian,
	%Ende S. 19
	frian, fi ti, trr, huit, huit, huit, huit, tar, tar, tar, tar, tar, tar, tar, tar, tar, trr, oy ti, oy
	%Ende S. 20
	ti, trr, tu -- ri, tur -- ri, qrr, qui bi, qui -- bi, frr, fi ti, fi ti, frr fou -- quet, fou -- quet, frr, frian, frian, frian,
	%Ende S. 21
	frian, trr. Fui -- ez, re -- gretz, pleurs et sou -- ci, Car la sai -- son l'or -- don -- ne, fui -- ez, re -- gretz, fui -- ez, re -- gretz, pleurs et sou -- ci, car la sai -- son l'or -- don -- ne.
	%ende S. 23
	Ar -- rie -- re, mai -- stre co -- qu, Cha -- cun vous est
	%Ende S. 24
	mal te -- nu, Car vous n'e -- stes qu'un trai -- stre. Co --qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- co -- qu, co -- cu, co -- co -- qu, co -- cu, co -- co -- qu. Par tra -- i -- son, en cha -- cun nid, Pon -- dez sans qu'on vous son -- ne, par trai -- i -- son, en cha -- cun nid, par tra -- i -- son, en cha -- cun nid, pon -- dez sans qu'on vous son -- ne. Re -- veil -- lez vous, cueurs en -- dor -- mis, Le dieu d'a -- mours vous son -- ne, re -- veil -- lez vous, re -- veil -- lez vous, cueurs en -- dor -- mis, Le dieu d'a -- morus vous son -- ne. 
	%Ende S. 30
}

altusNotes = {
  \relative c'' {
    \set Staff.instrument = "Contratenor  "
	\set Staff.midiInstrument = "choir aahs"
	\key d \minor
    % main
    \clef "treble"
     a2 a4 a a2 a| b a4 (g) f2. (g8 a | g2) a b a4 (g) |  f1 r2 f | g a b2. b4 | a2 (g1 f2) | g\breve |%Ende Seite 1
	r1 a2 a4 a | g2 a b a4 (g) | f1 r2 f2 | g a b2. b4 | a2 (g1 f2 | \[ g1 a \] | \[ e d) \]  | d\longa |
	%Doppelstrich
	R\breve
	%Ende S. 2
	R f2. f4 e2 a2 | a g a c | g2. g4 f2 f | e1 d | f2. f4 e2 a a g a1 | r2 e g2. g4
	%Ende S. 3
	f2 f e1( | d4 e f d e2 f) | d1 r2 d d4 d d d e1 | R\breve | r1 r2 c | f2. f4 e d e2 | f4 g f e d c8 c\noBeam d4 f |
	%Ende S. 4
	e4 d d d8 e\noBeam f4 f e d | a'2 r d,8 d\noBeam d\noBeam d\noBeam f4 g | a2 r d,8 d\noBeam d\noBeam d\noBeam f4 g | a2 r d, d | r2 r4 f d d8 d\noBeam d4 e | f\breve |
	%Ende S. 5
	r1 a2 a4 a | g2 a b a4 (g) | f1 r2 f g a b2. b4 | a2 (g1 f2) g\breve | r1 a2 a4 a | g2 a b a4 (g) |
	%Ende S. 6
	f1 r2 f | g a b2. b4 | a2 (g1 f2 \[g1 f1\] \[e1 d)\] | d\longa
	%Doppelstrich
	R\breve R f2. f4 e2 a |
	%Ende S. 7
	a2 g a e g2. g4 f2 f | e1 d | f2. f4 e2 a a g a1 | r2 e g2. g4 f2 f e1( | d4 e f d e2 f) | d1 r2 a' |
	%Ende S. 8
	b2. b4 a2 g f r4 f g a b g | a2. f4 g a b g | a2. f4 g a b g | a\breve r2 f2 f4 g a b | 
	%Ende S. 9
	a2 f f4 g a b | a2 r4 c, d c f2. f8 f\noBeam f4 f8 f\noBeam a2. a8 a\noBeam | g4 g g g b2. b4 b b b b b2 b4 b | b b b b a a b2 |
	%Ende S. 10
	r2 b2. a4 g a b2 b g f8 g\noBeam a\noBeam b | a2 b4 b b b8 b\noBeam b4 b | b b b b a b g b | a2 r4 a a a b b | a f a b8 b\noBeam a4 f b b |
	%Ende S. 11
	a4 a a2 a4 a a a | b2 a4 (g) f2. (g8 a\noBeam | g2) a b a4 (g) | f1 r2 f2 g a b2. b4 | a2 (g1 f2) g\breve |
	%Ende S. 12
	r1 a2 a4 a g2 a b a4 (g) | f1 r2 f | g a b2. b4 | a2 (g1 f2 \[ g1 f \] | \[ e d) \] d\longa
	%Doppelstrich
	R\breve 
	%Ende S. 13
	R\breve f2. f4 e2 a a g a e | g2. g4 f2 f | e1 d | f2. f4 e2 a a g a1 | r2 e g2. g4
	%Ende S. 14
	f2 f e1( | d4 e f d e2 f2) | d\breve | d4 d d d d d d d | d d d d d2 r4 a' |
	%Ende S. 15
	g4 a g a g2 r4 a | g a g a g2 r4 a8 a\noBeam | g4 a8 a\noBeam g4 a8 a\noBeam g4 g8 g\noBeam g4 g | a1 a1 ~( | a1) 
	%a ~ (a)
	a\breve
	 a1 ~(| a) 
	%a\breve 
	%a ~( | a)
	a\breve
	 r4 a8 a\noBeam f4 a8 a\noBeam | f\breve 
	%Ende S. 17
	b4 b b b b b b b | b b b b b b b b | a a a a a2 r2 | r4 b a b a b a b | a2 a2. a8 a\noBeam g4 a8 a\noBeam
	%Ende S. 18
	g1 r 1 | fes\breve^\markup{ "[sic]"} | f\breve | f4 f f f f f f f | f f f f f f f f |
	%Ende S. 19	
	f2 f1 g2 ~ ( g4) g g g g a g a | g g g g g a g a | g g8 g\noBeam a4 a a2 
	%a2 ~( |
	a2.
	%Ende S. 20
	%a4) 
	a4 a a a2 a2 ~ ( a4 ) a a a a2 
	%a2 ~ (a4) 
	a2.
	a4 a a a2 
	%a2 ~ (a4) 
	a2.
	a4 a a a2 a2 ~ (a4) a a a a2 
	%a2 ~
	a2.
	%Ende S. 21
	%(a4) 
	a4 a a a2 a | b2 a4 (g) f2. (g8 f | g2) a b a4 (g) | f1 r2 f2 | g a b2. b4 a2 (g1 f2) | g\breve|
	%Ende S. 22
	r1 a2 a4 a | g2 a b a4 (g) | f1 r2 f2 | g a b2. b4 | a2 (g1 f2 | \[ g1 f \] e d ) | d\longa
	%Doppelstrich Ende S. 23
	R\breve R f2. f4 e2 a2 | a g a e g2. g4 f2 f | e1 d | f2. f4 e2 a a g a1 |
	%Ende S. 24
	r2 e g2. g4 | f2 f e1( | d4 e f d e2 f )| d1 r2 d | b1 b'2 f | r1 b2 f | r1 b2 f | r2 g f2. e4^\markup{\tiny\flat} d1 b'2 f |
	%Ende S. 25
	r2 g f2. es4 | d1 b'2 f | r g f2. es4 | d d b d b1 | r2 g'2 f2. d4 | d d b2 r g' | f2. d4 d d b2 | r2 e^\markup{\tiny\flat} b r |
	%Ende S. 26
	d4 d b d b2 r | d4 d b d b2 r | d4 d b d b2 r | f'4 f d f f2 r | b2 b4 b a g f e | d2 g g g 
	%Ende S. 27
	f2. e4 f2 f | r d2 d4 d d d | d d d2 r1 | R\breve | a'2 a4 a a a a a | a a a a g f 
	%a2 (~
	a2.
	%Ende S. 28
	%a4
	 (g4 f e f1) | e1 r1 | a2 a4 a a2 a | b a4 (g) f2. (g8 f g4) f (g a ) b2 a4 (g) | f1 r2 f | g a b2. b4 | a2 (g1 f2 )|
	%Ende S. 29
	g\breve | r1 a2 a4 a | g2 a b a4 (g) | f1 r2 f2 | g a b2. b4 | a2 (g1 f2 \[g1 f \] \[e d )\]  | d\longa
	%Finis
    %\once \override NoteHead #'transparent = ##t g1 |
    %g\breve |
  }
}

altusLyrics = \lyricmode {

  % main
  Re -- veil -- lez vous, cueurs  en -- dor -- mis, __ cueurs en -- dor -- mis, Le  dieu d'a -- mours vous son -- ne,
  %Ende Seite 1
	Re -- veil -- lez vous, cueurs en -- dor -- mis, Le dieu d'a -- mours vous son -- ne.
	%Ende Seite 2
	A ce pre -- mier iour de may Oi -- seaulx fe -- ront mer -- veil -- les, Pour vous met -- tre hors d'e -- smay De -- stou -- pez
	%Ende S. 3
	voz o -- reil -- les. Et fa -- ri -- ra -- ri -- ron, Et fa -- ri -- ra -- ri -- ron, fa -- ri -- ra -- ri -- ron, fe -- re -- ly io -- ly, io -- ly, fe -- re -- ly, io -- ly, io -- ly, fe -- re -- ly io -- ly, io -- ly, fe -- re -- ly io -- ly, io -- ly, io -- ly, io -- ly fe -- re -- ly io -- ly.
	%Ende S. 5
	Vous se -- rez tous en ioy -- e __ mis, Car la sa -- son est bon -- ne. Vous se -- rez tous en ioy -- e __ mis, Car la say -- son est bon -- ne. Vous or -- rez, à 
	%Ende S. 7
	mon ad -- vis, U -- ne doul -- ce mu -- si -- que Que fe -- ra le roy mau -- vis D'u -- ne voix au -- ten -- ti -- que: Ty, ty, py -- ty, py -- ty, chou -- ty thou -- y, thou -- y, chou -- ty, thou -- y, thou -- y, chou -- ty, thou -- y, thou -- y, chou -- ty, thou -- y, thou --
	%Ende S. 9
	y, chou -- ti, thou -- y, thou -- y. Tu di, tu di, Le pe -- tit san -- son -- net, le pe -- tit mi -- gnon, pe -- ti -- te, le  pe -- tit mi -- gnon. Qu'est là bas, pas -- se, pas -- se, vil -- lain!
	%Ende S. 10
	Sain -- cte te -- ste Dieu! Quio, quio, le pe -- tit mi -- gnon, Tost, tost, tost, au ser -- mon, Le pe -- tit san -- son -- net, din, dan, din, dan. Sus, ma dame, à la mes -- se Sain -- cte Ca -- quet -- te Qui ca --
	%Ende S. 11
	quet -- te. Ri -- re_et gau -- dir c'est mon de -- vis, __ c'est mon de -- vis, Cha -- cun s'y ha -- ban -- don -- ne.
	%Ende S. 12
	Ri -- re_et gau -- dir c'est mon de -- vis, Cha -- cun s'i ha -- ban -- don -- ne.
	%Ende S. 13
	Ros -- si -- gnol du goys io -- ly, A qui la voix re -- son -- ne, Pour vous met -- tre hors d'en -- nuy Vo -- stre gor --
	%Ende S. 14
	ge iar -- gon -- ne: Frian, frian, frian, frian, frian, frian, frian, frian, frian, frian, frian, frian, frian,  ti --
	%Ende S. 15
	cun, ti -- cun, ti -- cun, ti -- cun, ti -- cun, ti -- cun, qui la -- ra, qui la -- ra, qui la -- ra, fe -- re -- li fy, fy, tu, tu, tu, tu, qui la -- ra, qui la -- ra, 
	%Ende S. 17
	te -- o, te -- o, te -- o, te -- o, te -- o, te -- o, te -- o, te -- o, te -- o, te -- o, tar, oy ty, oy ty, oy ty, oy ty, trr, qui la -- ra qui la --
	%Ende S. 18
	ra, tu, tu, tu fou -- quet, fou -- quet, fi, ti, fi, ti, frian, frian, frian, frian, tur -- ri, tur --
	%Ende S. 19
	ri, tu, tu, tu, tu, tu, tu, oy ti, oy ti tur -- ri, tur -- ri, ti -- cun, ti -- cun, fe -- re -- li fi, fi, frr,
	%Ende S. 20
	oy ti, oy ti, trr, tur -- ri tur -- ri vrr, fi -- ti, fi -- ti, frr, fou -- quet, fou -- quet frr, frian, frian, frian, frian, frr, 
	%Ende S. 21
	Fin -- nez, re -- gretz, pleurs et sou -- ci, __ pleurs et sou -- cy, Car la sai -- son l'or -- don -- ne.
	%Ende S. 22
	Fi -- nez, re -- grets, pleurs et sou -- cy, car la sai -- son l'or -- don -- ne.
	%Doppelstrich, Ende S. 23
	Ar -- rie -- re, mai -- stre co -- qu, Sor -- tez de no cha -- pi -- tre, Cha -- cun vous est mal te -- nu, 
	%Ende S. 24
	Car vous n'e -- stes q'un trai -- stre. Co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu,
	%Ende S. 25
	co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu,
	%Ende S. 26
	co -- co -- qu, co -- qu, co -- co -- qu, co -- qu, co -- co -- qu, co -- qu, co -- co -- qu, co -- qu, Par tra -- i -- son, en cha -- cun nid, Pon -- dez sans
	%Ende S. 27
	qu'on vous son -- ne, Par tra -- i -- son, en cha -- cun nid, par tra -- y -- son, en cha -- cun nid, pon -- dez sans qu'on vous son -- ne. Re -- veil -- lez vous, cueurs en -- dor -- mis, __ cueurs __ en -- dor -- mis, Le dieu d'a -- mours vous son -- ne, Re -- veil -- lez vous, cueurs en -- dor -- mis, Le dieu d'a -- mours vous son -- ne.
	%Ende S. 30
}

tenorNotes = {
  \relative c' {
    \set Staff.instrument = "Tenor  "
	\set Staff.midiInstrument = "choir aahs"
	\key d  \minor
    % main
    \clef "treble_8"
    R\breve d2 d4 d d2 d | e^\markup{ \tiny \musicglyph #"accidentals.M2"  } d4 (c) b1 | r2 b c d e^\markup{\tiny\musicglyph #"accidentals.M2"  } c b4 (c d e^\markup{ \tiny \musicglyph #"accidentals.0"  } f2 g d2. f4 | es1) d1|
	%Ende Seite 1
	d2 d4 d d2 d | e^\markup{ \tiny \flat } d4 (c) b1 | r2 b c d | e^\markup{ \tiny \musicglyph #"accidentals.M2"  } c b (f'2.  e4^\markup{ \tiny \musicglyph #"accidentals.0" } d c d1) | b2 c d2. d4 | c2 b a1 | g\longa |
	%Doppelstrich
	r1 b2. b4 |
	%Ende Seite 2
	a2 d d c | d a c2. c4 b2 b a1 | g r1 | r b2. b4 a2 d d c d d f f | e r b2. b4
	%Ende S. 3
	a2 d d c | d a c2. c4 | b2 b a1 | g2 g c2. b4 | a g a2 b4 c b a | g f8 f\noBeam g4 b a1 | r1 r2 a2 d2. c4 b a g f8 f\noBeam
	%Ende S.4
	g4 a b g c r r2 | e8 d\noBeam e\noBeam f\noBeam e4 d f2 r | e8 d\noBeam e\noBeam f\noBeam e4 d f2 r | e8 d\noBeam e\noBeam f\noBeam e4 d f2. e4 | d c d d8 d\noBeam b4 a b g | d'\breve |
	%Ende S. 5
	d2 d4 d d2 d | e^\markup{\tiny\musicglyph #"accidentals.M2"} d4 (c) b1 | r2 b c d e^\markup{\tiny\musicglyph #"accidentals.M2"} c b4 (c d e^\markup{\tiny\musicglyph #"accidentals.0"} f2 g d2. f4 | e1^\markup{\tiny\musicglyph #"accidentals.M2"} ) d1 | d2 d4 d d2 d | e^\markup{\tiny\musicglyph #"accidentals.M2"} d4 (c) b1
	%Ende S. 6
	r2 b c d e^\markup{\tiny\musicglyph #"accidentals.M2"} c b( f'2.  e4 d c d1) | b2 c d2. d4 c2 b2 a1 | g\longa
	%Doppelstrich
	r1 b2. b4 a2 d d c | d a c2. c4 |
	%Ende S. 7
	b2 b a1 g r r b2. b4 | a2 d d c | d d f f | e r2 b2. b4 a2 d d c d a c2. c4 | b2 b a1 |
	%Ende S. 8
	g2 d' c2. b4 a1 r2 g | d'2. d4 b c d e | f2 d b4 c d e | f\breve | e2 d4 e f d e2 |
	%Ende S. 9
	e2 d4 e f d e e | f1. r4 c4 | d d8 d\noBeam b4 d8 d\noBeam 
	b1 ~ ( | b1)  
	%b\breve 
	r2 f'4 f | f f f2 r f2. e4 d e f c g'2 |
	%Ende S. 10
	d\breve r2 g,4 a b g a2 | d4 e f2 d4 e f2 r4 f2 f4 f d d d | d d d e f2 f | f d4 e^\markup{\tiny\musicglyph #"accidentals.M2"} c b d e^\markup{\tiny\musicglyph #"accidentals.0"} |
	%Ende S. 11
	f2 f f1 | d2 d4 d d2 d | e^\markup{\tiny\musicglyph #"accidentals.M2"} d4 (c) b1 | r2 b c d | e^\markup{\tiny\musicglyph #"accidentals.M2"} c b4 (c d e^\markup{\tiny\musicglyph #"accidentals.0"} | f2 g d2. f4 | e1^\markup{\tiny\musicglyph #"accidentals.M2"}) d |
	%Ende S. 12
	d2 d4 d d2 d | e^\markup{\tiny\musicglyph #"accidentals.M2"} d4 (c) b1 | r2 b c d e^\markup{\tiny\musicglyph #"accidentals.M2"} c b (f'2. e4 d c d1) | b2 c d2. d4 c2 b a1 | g\longa
	%Doppelstrich
	r1 b2. b4
	%Ende S. 13
	a2 d d c | d a c2. c4 | b2 b a4 (g a2) | g1 r | r1 b2. b4 a2 d d c d d f f | e r b2. b4
	%Ende S. 14
	a2 d d c d a c2. c4 | b2 b a1 g2 b4 b b b b b | b2. b8 b\noBeam b4 b8 b\noBeam b2 |
	%Ende S. 15
	c4 c c c c c c c | c2 c1 
	%c2 ~ (c) 
	c1
	c1 c2 | r4 f f f f f f f |
	%Ende S. 16
	f f f f f2 r4 f8 f\noBeam e4 f8 f\noBeam e4 f8 f\noBeam e2. f8 f\noBeam | e4 f8 f\noBeam e4 f8 f\noBeam e2 f4 e | f e f e f c2 a4 | b2 r4 b b1 |
	%Ende S. 17
	r4 g' g g g g g g | g2 g1 r2 | d1 d | d d | r r2 r4 a |
	%Ende S. 18
	c2 c c c4 c8 c\noBeam a2 r4 b a b a b | a2 r4 a a a a a | b2 r4 b b2 r2 | r b b b |
	%Ende S. 19
	b2 b b4 b8 b\noBeam g4 b8 b\noBeam  | g2 c2. c4 c c | c c c c c c c c | c c8 c\noBeam a2 f'2. f4 |
	%Ende S. 20
	f4 f f2 f2. f4 f f f2 f2. f4 | f f f2 f2. f4 f f f2 f2. f4 | f f f2 f2. f4 |
	%Ende S. 21
	f f f2 f2. c4 | d2 d4 d d2 d | e^\markup{\tiny\flat} d4 (c) b1 | r2 b c d e^\markup{\tiny\flat} c b4 (c d e^\markup{\tiny\natural} f2 g2 d2. f4 | es1) d |
	%Ende S. 22
	d2 d4 d d2 d | e^\markup{\tiny\flat} d4 (c) b1 | r2 b c d | e^\markup{\tiny\flat} c b 
	%(f'2  ~ f4 
	(f'2.
	e4 d c d1 )| b2 c d2. d4 c2 b a1 | g\longa
	%Doppelstrich Ende S. 23
	r1 b2. b4 a2 d d c | d a c2. c4 | b2 b a1 | g r r b2. b4 | a2 d d c d d f f | 
	%Ende S. 24
	e2 r b2. b4 a2 d d c | d a c2. c4 | b2 b a1 | g2 d' b1 | r2 e^\markup{\tiny\flat} b1 | r2 d b1 r2 e^\markup{\tiny\flat} b1 | r2 d2 b1 |
	%ende S. 25
	r2 e^\markup{\tiny\flat} b1 r2 d b1 | r2 e^\markup{\tiny\flat} 
	%b1 ~ (b)
	b\breve
	 r2 d | b1 d2 
	%b2 ~ (b)
	b1
	 d2 b1 | d2 b1 d2 b r r4 b b g |
	%Ende S. 26
	b f g c, r b' b g | b f g c, r b' b g | b f g d r b' b g | b f g d b' b g b | g1 r | R\breve 
	%Ende S. 27
	d'2 d4 d d d d d | d1 r f2 f4 f f f f f | f f f f e d 
	g2 ~ (g4) 
	%g2.
	f4 f2 f f | e d d d4 d |
	%Ende S. 28
	d2 d d d | 
	%cis\breve (~ cis\breve)
	cis\longa
	 | d2 d4 d d2 d | e^\markup{\tiny\flat} d4 (c) b1 | r2 b c d | e^\markup{\tiny\flat} c b4 (c d e^\markup{\tiny\natural} | f2 g d2. f4 |
	%Ende S. 29
	es1) d | d2 d4 d d2 d | e^\markup{\tiny\flat} d4 (c) b1 | r2 b c d | e^\markup{\tiny\flat} c b 
	%(f' ~ f4 
	(f'2.
	e4 d c d1) | b2 c d2. d4 | c2 b a1 | g\longa
	%Finis
    %\once \override NoteHead #'transparent = ##t e'1 |
    %d'\breve |
  }
}

tenorLyrics = \lyricmode {
%	\with {
   %        \override SeparationItem #'padding = #0.0
           % Otherwise lyrics are so far apart that hyphens don't disappear
      %   }
  % main
  Re -- veil -- lez vous, cueurs en -- dor -- mis, Le dieu d'a -- mours vous son -- ne,
	%Ende Seite 1
	Re -- veil -- lez vous, cuers en -- dor -- mis, Le dieu d'a -- mours vous son -- ne, le dieu d'a -- mours vous son -- ne. 
	%Doppelstrich
	A ce 
	%Ende Seite 2
	pre -- mier iour de may Oy -- seaulx fe -- ront mer -- veil -- les, Pour vous met -- tre hors d'e -- smay De -- stou -- pez voz, pour vous met -- tre hors d'e smay de -- stou -- pez voz o -- reil -- les. Et fa -- ri -- ra -- ri -- ron, fa -- ri -- ra -- ri -- ron, fe -- re -- ly io -- ly Et fa -- ri -- ra -- ri -- ron, fe -- re -- ly, io -- ly, io -- ly, fe -- re -- ly -- re -- ly io -- ly, fe -- re -- ly -- re -- ly io -- ly, fe -- re -- li -- re -- ly io -- ly, fe -- re -- ly -- re -- ly io -- ly, io -- ly, io -- ly. 
	%Ende S. 5
	Vous se -- rez tous en ioy -- e __ mis, Car la sai -- son est bon -- ne. Vous se -- rez tous en ioy -- e __ mis, Car la sai -- son est bon -- ne, car la sai -- son est bon -- ne. Vous or -- rez, à mon ad -- vis, U -- ne doul -- 
	%Ende S. 7
	ce mu -- si -- que Que fe -- ra le roy mau -- vis, Le mer -- le_aus -- si, L'e -- stour -- nel se -- ra par -- my, D'u -- ne voix au -- ten -- ti -- que: Ti, ti, pi -- ti, ti, ti, ti, ti, ti, ti, pi -- ti, ti, ti, ti, ti, pi -- ti. chou -- thi, thou -- y, thou -- y, 
	%Ende S. 9
	chou -- thi thou -- y, thou -- y, thou -- y. Tu di, que di tu, que di tu. __ Le pe -- tit mi -- gnon. Sain -- cte te -- ste Dieu! pe -- ti -- 
	%Ende S. 10
	te. Le pe -- tit mi -- gnon, il est temps, il est temps. Guil -- le -- met -- te, Co -- li -- net -- te, Il est temps, temps, temps d'al -- ler boy -- re, il est
	%Ende S. 11
	temps, temps, temps. Ri -- re_et gau -- dir c'est mon de -- vis, Cha -- cun s'i ha -- ban -- don -- ne.
	%Ende S. 12
	Ri -- re_et gau -- dir c'est mon  de -- vis, Cha -- cun s'i ha -- ban -- don -- ne, cha -- cun s'i ha -- ban -- don -- ne. Ros -- si --
	%Ende S. 13
	gnol du boys io -- ly, A qui la voix re -- son -- ne, Pour vous met -- tre hors d'en -- nuy Vo -- stre gor -- ge, pour vous
	%Ende S. 14
	met -- tre hors d'en -- nuy vo -- stre gor -- ge iar -- gon -- ne: Tar, tar, tar, tar, tar, tar, tu, ve -- le -- cy, ve -- le -- cy, 
	%ende S. 16
	Frian, frian, frian, frian, frian, frian, frian, frian, tu, tu, tu, tu, tu, co -- qui, co -- qui, co -- qui, co -- qui, fi ti, fi ti, qui la -- ra, qui la -- ra, qui la -- ra, qui la -- ra, qui la -- ra, qui la -- ra, ti -- cun, ti -- cun, ti -- cun, ti -- cun, ti -- cun, co -- qui, 
	%Ende S. 17
	oy ti, oy ti, oy ti, oy ti, tu, tu, tu, tu, tu, et huit, huit, huit, huit, qui la -- ra, ti -- cun, ti -- cun, ti -- cun, co -- qui, co -- qui, co -- qui, co -- qui, huit, huit, huit, 
	%Ende S. 19
	huit, huit, huit, qui la -- ra, qui la -- ra, fi, fi, fi, tur -- ri, tur -- ri, qui -- bi, qui -- bi, qui -- bi, qui la -- ra, trr, tar,
	%Ende S. 20
	tar, tar, tar, trr, tur -- ri, tur -- ri, qrr, qui -- bi, qui -- bi, vrr, fi ti, fi ti, frr, fou -- quet, fou -- quet, frr, frian,
	%Ende S. 21
	frian, frian, frian, frr. Et fui -- ez, re -- gretz, pleurs et sou -- ci, Car la sai -- son l'or -- don -- ne. 
	%Ende S. 22
	Fi -- nez, re -- gretz, pleurs et sou -- cy, car la sai -- son l'or -- don -- ne, car la sai --son l'or -- don -- ne.
	%Doppelstrich Ende S. 23
	Ar -- rie -- re, mai -- stre co -- qu, Sor -- tez de no cha -- pi -- tre, Cha -- cun vous est mal te -- nu, Car vous n'e -- stes, cha -- cun vous est mal te -- nu, Car vous n'e -- stes q'un trai -- stre. Co -- qu, co -- qu, co -- qu, co -- qu, co -- qu,
	%Ende S. 25
	co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- co -- qu, 
	%Ende S. 26
	co -- qu, co -- qu, co -- co -- qu, co -- qu, co -- qu, co -- co -- qu, co -- qu, co -- qu, co -- co -- qu, co -- qu, co -- qu, co -- co -- qu, co -- qu.
	%ende S. 27
	Par tra -- i -- son, en cha -- cun nid, Par tra -- y -- son, en cha -- cun nid, pon -- dez sans qu'on vous son -- ne, sans qu'on vous son -- ne. Re -- veil -- lez
	%Ende S. 28
	vous, cueurs en -- dor -- miz, Re -- veil -- lez vous, cueurs en -- dor -- miz, Le dieu d'a -- mours vous son -- ne. Re -- veil -- lez vous, cueurs en -- dor -- miz, Le dieu d'a -- mours vous son -- ne, Le dieu d'a -- mours vous son -- ne.
	%Finis
}

bassusNotes = {
  \relative c' {
    \set Staff.instrument = "Bassus  "
	\set Staff.midiInstrument = "choir aahs"
	\key d \minor	
    % main
    \clef "bass"
    R\breve R\breve R\breve R\breve R\breve R\breve | g2 g4 g g2 g |
	%Ende Seite 1
	b2 a4 (g) f1 | r2 f g2. a4 | b1 r1 | r1 r2 b,2 | f' g d d es2. e4^\markup{ \tiny \musicglyph #"accidentals.M2"  } d2 b2 | c1 (d1) | g\longa
	%Doppelstrich
	b2. a4 g2 g |
	%Ende Seite 2
	f2 (e4 d e2) e d1 r  | r f2 c'2.  b4 b c d1 | a r | d,2. d4 a'2 a b b f2. d4 | a'2 a g g |
	%Ende S. 3
	\[d1( a')\] | d, r2 f | g2. g4 d2 d | g1 c, | f2. e4 d c d f | es d c b f' f8 f\noBeam f4 f | d1 r | R\breve 
	%Ende S. 4
	r4 d g g f d8 d\noBeam a'4 b | a2 r2 r4 d, a' b a2 r r4 d, a'4 b | a2 r2 r2 d, | g4 a8 a\noBeam g4 f g d g g | d\longa
	%Ende S. 5
	R\breve R R R | g2 g4 g g2 g | b a4 (g) f1 | r2 f g2. a4 |
	%Ende S. 6
	b1 r r r2 b, | f' g d d | e2.^\markup{\tiny\musicglyph #"accidentals.M2"} e4^\markup{\tiny\musicglyph #"accidentals.M2"} d2 b | \[c1 (d) \] | g\longa
	%Doppelstrich
	b2. a4 g2 g | f (e4 d e2) e | d1 r |
	%Ende S. 7
	r1 f2 c'2. b4 b c d1 | a r d,2. d4 a'2 a | b b f2. d4 | a'2 a g g | \[ d1 (a'1) \] d, r2 f | g2. g4 d2 d |
	%Ende S. 8
	\[ g1 (c,) \] d r | d4 d d d  g2 g | d4 d d d g2. g8 g\noBeam | d2. e4 f g a2. a4 b2. b8 b\noBeam a2. a4 b2. b4 a a8 a\noBeam | f1 r4 f8 f\noBeam d4 f8 f\noBeam | d2. d8 d\noBeam es2 e4^\markup{\tiny\musicglyph #"accidentals.M2"} e^\markup{\tiny\musicglyph #"accidentals.M2"} | e2^\markup{\tiny\musicglyph #"accidentals.M2"} e4^\markup{\tiny\musicglyph #"accidentals.M2"} e^\markup{\tiny\musicglyph #"accidentals.M2"} 
	%b1 ~ (b\breve ~ b1) r1 |
	b\longa r1
	%Ende S. 10
	b'2. a4 g a b2  | g4 g g g g g d2 | r2 b'2 b4 b b b | b b b b f g g g | d1 r2 b'4 c d d8 d\noBeam b4 g a( b) g g8 g\noBeam |
	%Ende S. 11
	d4 d8 d\noBeam d4 d8 d\noBeam d2. d4 | g2 f b2. a4 g2 f g1 | R\breve R\breve R\breve | g2 g4 g g2 g |
	%Ende S. 12
	b2 a4 (g) f1 | r2 f2 g2. a4 b1 r | r r2 b, f'2 g d d | e2.^\markup{\tiny\musicglyph #"accidentals.M2"} e4^\markup{\tiny\musicglyph #"accidentals.M2"} d2 b | \[ c1 (d) \] | g\longa
	%Doppelstrich
	b2. a4 g2 g |
	%Ende S. 13
	f2 (e4 d  e2) e d1 r | r f2 
	%c'2 
	%~ (c4)
	c'2.
	 b4 b c d1 | a1 r | d,2. d4 a'2 a | b b f2. d4 | a'2 a g g |
	%Ende S. 14
	\[ d1 (a') \] | d, r2 f | g g d d | g\breve d |
	%Ende S. 15
	R\breve R R f\breve |
	%Ende S. 16
	f4 f f f f f f f | a\breve r4 a a a a a a a a a8 a\noBeam f4 a8 a\noBeam f1 | R\breve
	%Ende S. 17
	g\breve g R R R 
	%Ende S. 18
	c,4 c c c c c c c | d d d d d d d d | d d d d d2 r | b\breve b
	%Ende S. 19
	R\breve | c4 c c c c c8 c\noBeam c4 c8 c\noBeam | c2 c c c | c f4 f f f f2 |
	%Ende S. 20
	f2. f4 f f f2 | f2. f4 f f f2 | f2. f4 f f f2 | f2. f4 f f f2 | f2. f4 f f f f |
	%Ende S. 21
	f f f f f f f  a8 a\noBeam | g4 g8 g\noBeam f4 g8 g\noBeam d2 r | R\breve R R R g2 g4 g g2 g
	%Ende S. 22
	b2 a4 (g) f1 | r2 f g2. a4 b1 r | r r2 b,2 | f'2 g d d | e2.^\markup{\tiny\flat} e4^\markup{\tiny\flat} d2 b | \[c1( d) \] g\longa
	%Doppelstrich
	%Ende S. 23
	b2. a4 g2 g f (e4 d e2) e d1 r | r f2
	 %c' ~ (c4)
	c'2.
	 b4 b c d1 | a r | d,2. d4 a'2 a b b f2. d4 |
	%Ende S. 24
	a'2 a g g \[ d1 a' \] d, r2 f | g g d d | g1 g2 r | R\breve R | g2 es r e^\markup{\tiny\flat} b1 r 
	%Ende S. 25
	g'2 es r es b1 r g'2 es r es | b1 r2 b' | g4 g es es b1 | r2 b' g4 g es es b1 r2 b' | g r e4^\markup{\tiny\flat} e^\markup{\tiny\flat} b e^\markup{\tiny\flat}
	%Ende S. 26
	b1 e4^\markup{\tiny\flat} e^\markup{\tiny\flat} b e^\markup{\tiny\flat} | b1 e4^\markup{\tiny\flat} e^\markup{\tiny\flat} b e^\markup{\tiny\flat} b1 e4^\markup{\tiny\flat} e^\markup{\tiny\flat} b e^\markup{\tiny\flat} | b\breve R\breve R 
	%Ende S. 27
	R b'2 b4 b b b b b | b b b b a g
	 %b2 ~ (b4
	b2.
	 (a4 g f g1 | d2. c4 d e f g | a2 d, g2. f4 |
	%Ende s. 28
	g1) d | a'2 a4 a a2 a | a a a2. a4 | g2 f b2. a4 | g2 f g1 R\breve R R 
	%Ende S. 29
	g2 g4 g g2 g b a4 (g) f1 | r2 f g2. a4 | b1 r \break  r r2 b, f' g d d  e2.^\markup{\tiny\flat} e4^\markup{\tiny\flat} d2 b | \[ c1 (d) \] | g\longa
	%Finis
  }
}

bassusLyrics = \lyricmode {
%\set Staff.midiInstrument = "choir aahs"
  % main
  Re -- veil --lez vous, cuers |
	%Ende Seite 1
	en -- dor -- mis, cueurs en -- dor -- mis, cueurs en -- dor -- mis, Le dieu d'a -- mours vous son -- ne. 
	%Doppelstrich
	A ce pre -- mier
	%Ende Seite 2
	iour __ de may Oy -- seaux fe -- ront mer -- veil -- lez, Pour vous met -- tre hors d'e -- smay De -- stou -- pez voz o -- reil -- les, de -- stou -- pez voz o -- reil -- les. Fa -- ri -- ra -- ri -- ron, et  fa -- ri -- ra -- ri -- ron, fe -- re -- ly io -- ly 
	%Ende S. 4
	io -- ly, io -- ly, fe -- re -- ly io -- ly, io -- ly, io -- ly, io -- ly, io -- ly, io -- ly, fe -- re -- ly io -- ly, io -- ly, io -- ly. 
	%Ende S. 5
	Vous se -- rez tous en ioy -- e __ mis, en joy -- e mis, en joy -- e mis, Car la sai -- son est bon -- ne. Vous or -- rez, à mon __ da -- vis,
	%Ende S. 7
	U -- ne doul -- ce mu -- si -- que Que fe -- ra  le roy mau -- vis D'u -- ne voix au -- ten -- ti -- que, d'u -- ne voix au -- ten -- ti -- que: Ti, thou -- y, thou -- y, chou -- ti, thou -- y, thou -- y, Que di tu, ti, ti pi ti, tu di, Que di tu, 
	%Ende S. 9
	tu di, tu di, que di tu, que di tu, que di tu. Le pe -- tit san -- son -- net de Pa -- ris. __ 
	%Ende S. 10
	Sain -- cte te -- ste Dieu! Qu'est là bas pas -- se, vil -- lain. San -- son -- net de Pa -- ris, Sai -- ge, cour -- toys et bien a -- pris, Il est temps, que die tu, il est temps, que di 
	%Ende S. 11
	tu, san -- son -- net de Pa -- ris. Ri -- re_et gau -- dir c'est mon de -- vis, Ri -- re_et gau -- dir c'est
	%Ende S. 12
	mon de -- vis, c'est mon de -- vis, c'est mon de -- vis, Cha -- cun s'i ha -- ban -- don -- ne.
	%Doppelstrich
	Ros -- si -- gnol du
	%Ende S. 13
	boys __ io -- li, A qui la voix re -- son -- ne, Pour vous met -- tre hors d'en -- nuy Vo -- stre gor -- ge iar -- gon -- ne, vo -- stre gor -- ge iar -- gon -- ne:
	%Ende S. 15
	teo, frian, frian, frian frian, tar, tar, tar, tar, tu, tur -- ry, tur -- ry, tur -- ry, tur -- ry, qui la -- ra, qui la -- ra.
	%Ende S. 17
	tu, tu, quio, quio, quio, quio, quio, quio, quio, quio, tar, tar, tar, tar tar, fou -- quet, fou -- quet, qui -- bi, qui -- bi, tu, tu, 
	%Ende S. 19
	quio, quio, quio, quio, quio, ve -- le -- ci, ve -- li -- ci, huit, huit, huit, huit, tar, tar, tar, tar, tar,
	%Ende S. 20
	trr, tur -- ri, tur -- ri, qrr, qui -- bi, qui -- bi, vrr, fi ti, fi ti, frr, fou -- quet, fou -- quet, frr, frian, frian, frian, frian, co -- qui, co -- qui, co -- qui, qui -- bi, qui la -- ra, qui la -- ra, qui la -- ra. Fui -- ez, re -- gretz, pleurs
	%Ende S. 22
	et sou -- cy, pleurs et sou -- cy, pleurs et sou -- cy, car la sai -- son l'or -- don -- ne. 
	%Ende S. 23
	Ar -- rie -- re, mai -- stre __ co -- qu, Sor -- tez de no cha -- pi -- tre, Cha -- cun vous est mal te -- nu, Car
	%Ende S. 24
	vous n'e -- stes q'un trai -- stre, car vous n'e -- stes q'un trai -- stre. Co -- qu, co -- qu,
	%Ende S. 25
	co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co -- qu, co - co -- qu, co --
	%Ende S. 26
	qu, co -- co -- qu, co -- qu, co -- co -- qu, co -- qu, co -- co -- qu, co -- qu.
	%Ende S. 27
	Par tra -- i -- son, en cha -- cun nid, Pon -- dez sans qu'on vous son -- 
	%Ende S. 28
	ne. Re -- veil -- lez vous, cueurs en -- dor -- miz, cueurs en -- dor -- miz, re -- veil -- lez vous,
	%Ende S. 29
	Re -- veil -- lez vous, cueurs en -- dor -- miz, cueurs en -- dor -- miz, cueurs en -- dor -- miz, Le dieu d'a -- mours vous son -- ne.
	%Finis
}

\score {
  \context StaffGroup = choirStaff <<
	%#(set-accidental-style 'forget)
	% \override Score.SpacingSpanner #'spacing-increment = #1.0
    \context Voice =
      discantusNotes << \global \discantusNotes >>
    \context Lyrics =
      discantusLyrics \lyricsto discantusNotes { \discantusLyrics }
    \context Voice =
      altusNotes << \global \altusNotes >>
    \context Lyrics =
      altusLyrics \lyricsto altusNotes { \altusLyrics }
    \context Voice =
      tenorNotes << \global \tenorNotes >>
    \context Lyrics =
      tenorLyrics \lyricsto tenorNotes { \tenorLyrics }
    \context Voice =
      bassusNotes << \global \bassusNotes >>
    \context Lyrics =
      bassusLyrics \lyricsto bassusNotes { \bassusLyrics }
  >>
  \midi{\tempo 1=60}
  \layout {
	indent = 2.0\cm
    \context {
      \Score
      \override BarLine #'transparent = ##t
      %\remove "System_start_delimiter_engraver"
    }
    \context {%Damit die Ligaturen in Klammern nicht als Bindebögen angezeigt werden
      \Voice
	\consists Ambitus_engraver
	\consists Ligature_bracket_engraver
      \override Slur #'transparent = ##t
    }
	%\context {
	%\Lyrics
	% fontSize = #-2	
	%}
  }
}


