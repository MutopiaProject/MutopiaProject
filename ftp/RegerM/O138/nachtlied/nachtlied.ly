\version "2.11.20"
\include "deutsch.ly"
\header {
title = "Nachtlied"
composer = "Max Reger"
poet = "Petrus Herbert"
mutopiacomposer = "RegerM"
opus = "Op. 138, Nr. 3"
copyright = "Creative Commons Attribution-ShareAlike 3.0"
source = "Edition Peters"
style = "Romantic"
maintainer = "Matthias Berndt"
maintainerEmail = "matthias_berndt@gmx.de" %{ PGP Fingerprint: 7644 305A 3BA8 EE48 0C82 C066 098E 9780 2F0D 7818 %}
instrument = "für fünfstimmigen Chor a cappella"
 footer = "Mutopia-2007/03/25-940"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
\score {
	{
	#(set-global-staff-size 18)
	\new ChoirStaff
	\tempo 4=60
		<<
			\new Voice="Sopran"
			{
				\relative
				{
				\set Staff.instrumentName = \markup {"Sopran" \hspace #1.0 ""}
				\key h \minor
				\partial 2*1
				\override Score.BarNumber #'padding = #2
				\set hairpinToBarline = ##f
				\dynamicUp
				fis2\pp e2. fis4 h2 a4 r cis\< fis,\! h a gis2\> fis4\pp r
				d'2\mf\< e4 (h) g2\! a4 h c c h cis d h a8\> (h gis4)
				a2\! r4 fis\p g h a g fis\< fis\! h8\melisma cis\melismaEnd d4 
				g,2\> fis4 h\pp\override TextSpanner #'bound-details #'left #'text =\markup { \small  rit. }
a\startTextSpan g\> fis4. (e8)\! d2\fermata\stopTextSpan h'^\markup{ \small \italic"a tempo" }\f cis h4 e
				cis d h cis8 ais fis4\> g\! gis\< a d d cis2 e4 e fis fis e2\startTextSpan\ff h\stopTextSpan 
					cis^\markup{ \small \italic"a tempo" }\p gis a4 gis e2 
				fis4 fis eis\< a h\! (cis) fis,fis g\startTextSpan h\> cis2\stopTextSpan
				cis4\fermata\p r h2^\markup{ \small \italic"a tempo" }\pp fis4 a g2 fis4 h\< cis cis8\! cis 
				e2\> dis4\! r e2\mf e4 d d2\> cis4\! r a\mp\< a h h 
				cis cis d e8 e \time 3/2 fis4\f h, cis d h\> h 
				\time 4/4 a2 fis4\! h\p a2\startTextSpan g\> fis2. (\afterGrace e4) (d8) d1\pp\fermata\stopTextSpan
				}
			}
			\new Lyrics="Sopran-Text" \lyricsto "Sopran"
			{
				Die Nacht ist kom -- men, drin wir ru -- hen sol -- len;
				Gott walts, Gott walts zu From -- men nach seim Wohl -- ge -- fal -- 
				len, daß wir uns le -- gen in seim Gleit und 
				Se -- gen, der Ruh zu pfle -- gen. Treib, Herr, von uns
				fern die un -- rei -- nen Gei -- ster, halt die Nacht -- wach gern,
				sei selbst un -- ser Schütz -- herr! Schirm beid, Leib und Seel,
				un -- ter dei -- ne Flü -- gel, send uns dein En -- 
				gel. Laß uns ein -- schla -- fen mit gu -- ten Ge --
				dan -- ken fröh -- lich auf  -- wa -- chen und von dir nicht
				wan -- ken, laß uns mit Züch -- ten un -- ser Tun und 
				Dich -- ten zu deim Preis rich -- ten.
			}
			\new Voice="Alt"
			{
				\relative
				{
				\set Staff.instrumentName = \markup {"Alt" \hspace #1.0 ""}
				\key h \minor
				\partial 2*1
				\set hairpinToBarline = ##f
				\dynamicUp
				d2\pp cis2. d4 d (e) fis r fis\< (fis)\! eis fis fis\> eis fis\pp r
				g2\mf\< g4 (fis) g (fis)\! e e e a a g a f fis\> (e)
				e2\! r4 dis\p e e e d e\< d\! d8\melisma e\melismaEnd fis4
				g\>(e) h d8\pp\melisma e\melismaEnd fis4 d\> d (cis)\! d2\fermata fis\f fis h4 a
				a a a g8 fis fis4\> d\! gis\< fis fis h fis2
				e4 h'fis gis gis\ff (a8 gis) fis2 gis\p dis cis4 dis4 cis2
				fis4 fis cis\< fis fis\! (eis) fis e d fis\> fis\melisma eis\melismaEnd
				fis4\fermata\p r fis2\pp fis4 fis g (e) dis h'\< h a8\! a
				a4\> (g) fis\! r c'2\mf c4 h h2\> a4\! r fis\mp\< fis fis g
				fis e a h8 g \time 3/2 fis4\f fis e a a\> g 
				\time 4/4 fis (e) dis\! d\p e (d2)\> cis4 d2 (cis2) d1\pp\fermata
				}
			}
			\new Lyrics="Alt-Text" \lyricsto "Alt"
			{
				Die Nacht  ist kom -- men, drin wir ru -- hen sol -- len;
				Gott walts, Gott walts zu From -- men nach seim Wohl -- ge -- fal -- 
				len, daß wir uns le -- gen in seim Gleit und 
				Se -- gen, der Ruh zu pfle -- gen. Treib, Herr, von uns
				fern die un -- rei -- nen Gei -- ster, halt die Nacht -- wach gern,
				sei selbst un -- ser Schütz -- herr! Schirm beid, Leib und Seel,
				un -- ter dei -- ne Flü -- gel, send uns dein En -- 
				gel. Laß uns ein -- schla -- fen mit gu -- ten Ge --
				dan -- ken fröh -- lich auf  -- wa -- chen und von dir nicht
				wan -- ken, laß uns mit Züch -- ten un -- ser Tun und 
				Dich -- ten zu deim Preis rich -- ten.
			}
			\new Voice="Tenor"
			{
				\relative
				{
				\set Staff.instrumentName = \markup {"Tenor" \hspace #1.0 ""}
				\key h \minor
				\partial 2*1
				\set hairpinToBarline = ##f
				\dynamicUp
				h'2\pp h2. h4 h (cis) d r cis\< d\! d cis d\> (cis) cis\pp r
				h2\mf\< e4 (d) h2\! a4 d c c f e d d c\> (cis8 d)
				cis2\! r4 h\p h h e h cis\< h\! d d
				d\> (cis) dis h\pp cis h\> h (a)\! a2\fermata fis'\f fis fis4 e
				e d d e8 cis8 cis4\> d\! d\< cis d gis cis,2
				h8 \melisma cis \melismaEnd d4 e dis  e2\ff dis cis\p h a4 h gis2
				fis4 h cis\< cis d\! (cis) cis cis h fis\> cis'2
				cis4\fermata\p r d2\pp cis4 d d (cis) h d\< g fis8\! fis
				h,2\> h4\! r g'2\mf g4 fis fis\> (e) e\! r d\mp\< e d d
				cis e d g8 d \time 3/2 cis4\f d e d d\> d
				\time 4/4 cis2 h4 h\p cis2 h\> d4 (h a2) a1\pp\fermata
				}
			}
			\new Lyrics="Tenor-Text" \lyricsto "Tenor"
			{
				Die Nacht ist kom -- men, drin wir ru -- hen sol -- len;
				Gott walts, Gott walts zu From -- men nach seim Wohl -- ge -- fal -- 
				len, daß wir uns le -- gen in seim Gleit und 
				Se -- gen, der Ruh zu pfle -- gen. Treib, Herr, von uns
				fern die un -- rei -- nen Gei -- ster, halt die Nacht -- wach gern,
				sei selbst un -- ser Schütz -- herr! Schirm beid, Leib und Seel,
				un -- ter dei -- ne Flü -- gel, send uns dein En -- 
				gel. Laß uns ein -- schla -- fen mit gu -- ten Ge --
				dan -- ken fröh -- lich auf  -- wa -- chen und von dir nicht
				wan -- ken, laß uns mit Züch -- ten un -- ser Tun und 
				Dich -- ten zu deim Preis rich -- ten.
			}
			\new Voice="Bass 1"
				{
				\relative
				{
				\set Staff.instrumentName = \markup {"Bass I" \hspace #1.0 ""}
				\clef bass
				\key h \minor
				\partial 2*1
				\set hairpinToBarline = ##f
				\dynamicUp
				fis,2\pp g2. fis4 g2 a4 r fis\< h\! h fis gis4.\> (h8) a4\pp r
				g2\mf\< g8 (a h4) e,2\! a4 gis a a d a a h c\> (e,)
				e2\! r4 h'8\p \melisma a \melismaEnd g4 g a h fis\< h\! h a
				h\> (cis) fis, g\pp fis g8\melisma h\>\melismaEnd h4 (fis8 g)\! fis2\fermata d'\f d d4 cis
				a h h ais8 ais ais4\> h\! h\< a8\melisma cis\melismaEnd cis4 h ais2
				h4 h cis dis cis2\ff h gis\p gis cis4 gis cis2
				a4 gis gis\< fis h2\! a4  fis h h\> gis2
				ais4\fermata\p r h2\pp a4 d8\melisma cis\melismaEnd h4 (ais) h h\< e a,8\! a
				h2\> h4\! r e2\mf e4 h h2\>cis4\! r a\mp\<a a g
				a h a d8 h \time 3/2 cis4\f h h a h\> g
				a (fis) fis g\p a2 (h4)\> g a (h e,8 fis g4)fis1\pp\fermata 
				}
			}
			\new Lyrics="Bass 1-Text" \lyricsto "Bass 1"
			{
				Die Nacht ist kom -- men, drin wir ru -- hen sol -- len;
				Gott walts, Gott walts zu From -- men nach seim Wohl -- ge -- fal -- 
				len, daß wir uns le -- gen in seim Gleit und 
				Se -- gen, der Ruh zu pfle -- gen. Treib, Herr, von uns
				fern die un -- rei -- nen Gei -- ster, halt die Nacht -- wach gern,
				sei selbst un -- ser Schütz -- herr! Schirm beid, Leib und Seel,
				un -- ter dei -- ne Flü -- gel, send uns dein En -- 
				gel. Laß uns ein -- schla -- fen mit gu -- ten Ge --
				dan -- ken fröh -- lich auf  -- wa -- chen und von dir nicht
				wan -- ken, laß uns mit Züch -- ten un -- ser Tun und 
				Dich -- ten zu deim Preis rich -- ten.
			}
			\new Voice="Bass 2"
			{
				\relative
				{
				\set Staff.instrumentName = \markup {"Bass II" \hspace #1.0 ""}
				\clef bass
				\key h \minor
				\partial 2*1
				\set hairpinToBarline = ##f
				\dynamicUp
				h,2\pp e2. h4 g2 d'4 r a\< h\! gis a h\> (cis) fis,\pp r
				g'2\mf\< c,4 (d) e (d)\! c h a f'8 (e) d4 e f d dis\> (e) 
				a,2\! r4 h\p e d cis h ais\< h\! g' fis
				e\> (ais,) h g\pp a h\> gis (a)\! d2\fermata h'\f a g4 g
				fis f e e8 e d4\> h\! eis\< fis h, eis fis2
				g4 gis ais his cis\ff (a) h2 e,\p gis fis4 h, cis2
				d4 d cis\< a gis2\! a4 ais h d\> cis2
				fis4\fermata\p r h,2\pp fis'4 d e2 h4 g'\< e fis8\! fis
				e2\> h4\! r c'2\mf a4 h g2\> a4\! r d,\mp\<cis h e
				a g fis h8 h \time 3/2 a4\f g g fis e\> e
				\time 4/4 a,2 h4 g'\p g (fis2)\> e4 fis, (gis a2) d1\pp\fermata
				}
			}
			\new Lyrics="Bass 2-Text" \lyricsto "Bass 2"
			{
				Die Nacht ist kom -- men, drin wir ru -- hen sol -- len;
				Gott walts, Gott walts zu From -- men nach seim Wohl -- ge -- fal -- 
				len, daß wir uns le -- gen in seim Gleit und 
				Se -- gen, der Ruh zu pfle -- gen. Treib, Herr, von uns
				fern die un -- rei -- nen Gei -- ster, halt die Nacht -- wach gern,
				sei selbst un -- ser Schütz -- herr! Schirm beid, Leib und Seel,
				un -- ter dei -- ne Flü -- gel, send uns dein En -- 
				gel. Laß uns ein -- schla -- fen mit gu -- ten Ge --
				dan -- ken fröh -- lich auf  -- wa -- chen und von dir nicht
				wan -- ken, laß uns mit Züch -- ten un -- ser Tun und 
				Dich -- ten zu deim Preis rich -- ten.
			}
		>>
	}
	\layout
	{
	
	}
	\midi {	}
}
