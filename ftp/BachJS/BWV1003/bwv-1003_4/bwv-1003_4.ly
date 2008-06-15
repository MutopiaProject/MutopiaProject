\version "2.11.48"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Sonata II BWV 1003"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "4. Allegro"
        mutopiatitle = "BWV 1003 Allegro"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1003"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/15-1457"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melody = \relative a' {
	\repeat volta 2 { %begin repeated section
		a16 [ c e a ] e [ d c b] a16_\markup { piano } [ c e a ] e [ d c b ] | % 1
		a16_\markup { forte } [ (c32 d e16) e, ] a [ c e gis, ] a16_\markup { piano } [ (c32 d e16) e, ] a [ c e gis, ]  | % 2
		a16_\markup { forte }  [ b32 c d16 c32 b ] c16 [ d32 e f16 e32 d ] e16 [ a f d ] e [ d c b ]  | % 3
		a16_\markup { piano } [ b32 c d16 c32 b ] c16 [ d32 e f16 e32 d ] e16 [ a f d ] e [ d c b ] | % 4
		a16_\markup { forte }  [ c e a ] c [ e, c a ] gis [ b e gis ] b [ d, c b ]  | % 5
		a16_\markup { piano } [ c e a ] c [ e, c a ] gis [ b e gis ] b [ d, c b ] | % 6
		a16_\markup { forte }  [ c e g ] f [ c b a ] g [ b d f ] e [ b a g ] | % 7
		f16 [ a c e ] d [ c b a ] gis [ e' b gis ] e [ f d e ] | % 8
		cis16 [ a' e' g, ] f [ d f c ] b [ g' d' f, ] e [ c e b ] | % 9
		a16 [ f' c' e, ] d [ b d a ] gis [ e' b' d, ] c [ a d b ] | % 10
		e16 [ c a c ] e [ a c e, ] dis [ c' b a ] fis' [ a, g fis ] | % 11
		e16 [ b g b ] e [ g b d, ] cis [ b' a g ] e' [ g fis e ] | % 12
		dis16 [ a fis a ] dis [ fis a c, ] b [ fis dis fis ] b [ dis fis a ] | % 13
		g16 [ b32 (a) g16 fis ] e [ c' a, (b32 c) ] d,16 [ a''32 (g fis16) e ] d [ b' g, (a32 b) ] | % 14
		c,16 [ g''32 (fis e16) d ] c [ a'32 (g fis16) e ] dis [ fis32 (dis b16) a ] g [ e' fis, d' ] | % 15
		e,16 [ d'32 (b g16) f ] e [ c' d, b' ] c, [ b'32 (g e16) d ] c [ a' b, g' ] | % 16
		a,16 [ b32 c d16 c32 b ] c16 [ d32 e f16 e32 d ] e16 [ fis32 g a16 g32 fis ] g16 [ a32 b c16 b32 a ] | % 17
		fis'16 [ (c dis,) c' ] b [ a g fis ] g [ a b c ] <b, fis'>8. \trill [ e16 ] | % 18
		e16 [ cis32 (d e16) a ] fis [ dis32 (e fis16) b ] g [ e32 (fis g16) c ] a [ fis32 (g a16) d ] | %19
		b16 [ g b dis ] e [ g b d, ] c [ a c e ] f [ a c e, ] | % 20
		b16 [ dis fis b ] fis [ (e dis cis) ] b [ dis fis a ] fis [ (e dis cis) ] | % 21
		b16 [ dis e g ] e [ (d c b) ] a [ b c fis ] c [ (b a g) ] | % 22
		fis16 [ g a c ] a [ (g fis e) ] dis [ fis a c ] b [ (a g fis) ] | % 23
		g16 [ b32 (g e16) b ] fis' [ a e' dis ] e2 | % 24
	} %end repeated section
	
	
	\repeat volta 2 { %begin repeated section
		e,16 [ e' g b ] g [ e dis e ] e,16_\markup { piano }  [ e' g b ] g [ e dis e ] | %25
		e,16_\markup { forte } [ g32 (a b16) b, ] e [ g b dis, ] e16_\markup { piano }  [ g32 (a b16) b, ] e [ g b dis, ] | % 26
		e16_\markup { forte }   [ fis32 g a16 g32 fis ] g16 [ a32 b c16 b32 a ] b16 [ g32 a b16 cis32 dis ] e16 [ b32 (a g16) fis ]  | % 27
		e16_\markup { piano }  [ fis32 g a16 g32 fis ] g16 [ a32 b c16 b32 a ] b16 [ g32  a b16 cis32 dis ] e16 [ b32 (a g16) fis ]| % 28
		e16_\markup { forte }   [ g b e ] g [ b g e ] dis [ fis dis b ] fis [ a g fis ]  | % 29
		e16_\markup { piano }  [ g b e ] g [ b g e ] dis [ fis dis b ] fis  [ a g fis ] | % 30
		e16_\markup { forte }   [ g b d ] c [ g fis e ] d [ fis a c ] b [ fis e d ] | % 31
		c16 [ e g b ] a [ g fis e ] dis [ b' fis dis ] b [ c a b ] | % 32
		g16 [ e'32 (fis g16) b ] e [ fis d e ] c [ e32 (d c16) b ] a [ b g a ] | % 33
		fis16 [ d32 (e fis16) a ] d [ e c d ] b [ g32 (a b16) d ] g [ a fis g ] | % 34
		e16 [ g e b ] c [ e, g c ] d [ g d a ] b [ d, g b ] | % 35
		c16 [ g' c, a ] d, [ fis'32 (g a16) c, ] b [ g' d b ] g [ a f g ] | % 36
		e16 [ c' g' bes, ] a [ f a e ] d [ b' f' a, ] g [ e g d ] | % 37
		c16 [ a' e' g, ] f [ e f c ] b [ g' d' f, ] e [ c f d ] | % 38
		g16 [ (e c) e ] g [ e a f ] bes [ (g e) g ] bes [ g c g ] | % 39
		a16 [ f a c ] f [ d a' c, ] b [ g b d ] g [ e b' d, ] | % 40
		c16 [ a c e ] a [ f c' e, ] d [ b d g ] b [ g d' f, ] | % 41
		e16 [ g32 f e16 f32 g ] a16 [ b,32 c d16 e32 f ] g16 [ a,32 b c16 d32 e ] f16 [ g,32 a b16 c32 d ] | % 42
		e16 [ c,32 d e16 f32 g ] a16 [ f d' f, ] g, [( f' b) d ] c [ (b) a (g) ] | % 43
		f16 [ (e32 d e16) c' ] g, [ (d' c') b ] c [ e32 (c g16 f) ] e [ g32 (e c16) bes ] | % 44
		a16 [ (g' cis) g ] cis [ g e' g, ] f [ d'32 (a f16) e ] d [ a'32 (f d16) c ] | %45
		b16 [ (a' dis) a ] dis [ a fis' a, ] gis [ e'32 (b gis16 fis) ] e [ b'32 (gis e16) d ] | % 46
		c32 [ (e' d c) b16 (c32 d) ] c16 [ (b32 a) gis16 (a32 b) ] cis, [ (a' g f) e16 (f32 g) ] f16 [ (e32 d) cis16 (d32 e) ] | % 47
		d16 [ f'32 (e d16) c ] b [ d g, (a32 b) ] c,16 [ e'32 (d c16) b ] a [ c f, (g32 a) ] | % 48
		b,16 [ d'32 (c b16) a ] gis [ d' b' d, ] c [ a32 (b c16) f ] b, [ g32 (a b16) e ] | % 49
		a,16 [ f32 (g a16) cis ] d [ b32 (c d16) f ] gis [ e32 (fis gis16) b ] d [ (b32 gis) e16 (gis32 b) ] | % 50
		c16 [ e32 (c a16) g ] f [ d' e, c' ] d, [ c'32 (a f16) e ] d [ b' c, a' ] | % 51
		b,16 [ f'32 (d b16) a ] gis [ d' fis, d' ] e, [ gis b d ] f [ (e32 d c16) b ] | % 52
		c16 [ gis a dis, ] e [ c'32 (b a16) gis ] a [ f32 (g a16) f ] e [ d c b ] | % 53
		c32 [ (e fis gis a16) e ] d [ c b a ] b32 [ (c d e f16) e ] d [ b' f' a, ] | % 54
		gis32 [ (a b c d16) c ] b [ (gis'32 a b16) d, ] c32 [ (e fis gis a16) c, ] e, [ b' a' gis ] | % 55
		a,16_\markup { piano }  [ (cis) g' (e) ] a, [ (d) fis (d) ] gis, [ (d') f (d) ] g, [ (cis) e (cis) ] | % 56
		fis,16 [ (a) e' (a,) ] f [ (d') a' (d,) ] e, [ (d' b') a ] gis [ fis e d ] | % 57
		c16 [ e32 (c a16) e ] b' [ d a' gis ] a,,2 \bar "|." % 58
		
	} %end repeated section
}


% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key a \minor \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
