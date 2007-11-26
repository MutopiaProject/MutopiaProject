\version "2.11.0"
#(ly:set-option 'point-and-click #f)
\header {
  filename = "Tschaikowsky-op37,1.ly"
  title = \markup {
"Январь. У камелька"}
  subtitle = "January. Before the chimney."
  opus = "op. 37,1"
  composer = "Петр И. Чайковский"
 mutopiatitle = "The Seasons: January"
 mutopiacomposer = "TchaikovskyPI"
 mutopiaopus = "O 37,1"
 mutopiainstrument = "Piano"
 source = "Rob. Forberg, Leipzig"
 year = "1897"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Till Rettig"
 lastupdated = "2006/November/24"
 footer = "Mutopia-2007/11/26-1171"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
\paper {
 print-page-number = ##t
 ragged-last-bottom=##f
 system-count = #24
}

u = { \change Staff = upper  \stemDown \slurDown }
m = { \change Staff = lower \stemUp  \slurUp   }
sdown = {\stemUp \slurDown }
sup = {\stemUp \slurUp }
smid = {\stemDown \slurDown }
mBreak = { }
stemExtend = \once \override Stem #'length = #21
noFlag = \once \override Stem #'flag-style = #'no-flag
connekt = \once \override Stem #'cross-staff  = ##t 

beaminga = {
#(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
#(override-auto-beam-setting '(end * * * *) 2 4 'Staff)
}

beamingb = {
#(revert-auto-beam-setting '(end * * * *) 1 4 'Staff)
#(revert-auto-beam-setting '(end * * * *) 2 4 'Staff)
#(override-auto-beam-setting '(end * * * *) 1 8 'Staff)
#(override-auto-beam-setting '(end * * * *) 3 4 'Staff)
}

beamingc = {
#(revert-auto-beam-setting '(end * * * *) 1 8 'Staff)
#(revert-auto-beam-setting '(end * * * *) 3 4 'Staff)
#(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
#(override-auto-beam-setting '(end * * * *) 2 4 'Staff)
}

%Oberstimme: Oben
%Teil A
upperaa = \relative c''{\stemUp
        \clef treble
        \key a \major
        \time 3/4
	fis,8^\markup { \large \bold "Moderato simplice ma espressivo"}
 	gis16( a) gis8( b) e,([ a)]
}

upperab = \relative c''{\stemUp
	\key a \major
	fis,8^\markup {\large \bold "Tempo I."} gis16( a) gis8( b) e,([ a)]
}

uppera = \relative c''{
	<gis b>-. <a cis>-. <e' b>4( <cis a>)
	cis8 d16( e) <fis cis>8([ cis]) <d b>4
        fis,8 gis16( a) cis8\( ais ~ ais b\) \mBreak
	fis8 gis16( a) gis8( b) e,( a)
	<gis b>-. <a cis>-. <e' b>4( <cis a>)
	cis8 dis16( e) gis,8\( cis b4\)
	cis8 dis16( e) gis,8\( cis b4\)
	cis8 dis16( e) gis8->\( e dis cis\) \mBreak
	<cis fis, dis>4\( <fis, dis> <e b>\)
	d'!8 cis16( b) fis8( a) gis4 
	\sdown <fis cis>8( <gis bis,>) <fis cis>8( <gis bis,>) <e b>4
	\sup d'8 cis16( b) fis8( a) gis4 \mBreak
	\sdown <fis cis>8( <gis bis,>) <fis cis>8( <gis bis,>) <e b>4
	<fes bes>8( <es c'>) <fes bes>8( <es c'>) <as es>4 %fes wird falsch realisiert
	<as d!>8( <e'! g,!>) <as, d>( <e' g,>) c4
	\sup d!16( f e8) d16( f e8) c4 \mBreak
	%Seite 4
	d16( f e8) d16( f e8) c4
	d8( <c e>) s2
	<e g,>8->( <dis fis,>) ais16( cis b8) <e g,>->( <dis fis,>) ais16( cis b8) ais16( cis b8) fis4 \mBreak
	%Reprise
	fis8 gis16( a) gis8( b) e,([ a)] |
	<gis b>-. <a cis>-. <e' b>4( <cis a>)
	cis8 d16( e) <fis cis>8([ cis]) <d b>4
        fis,8 gis16( a) cis8\( ais ~ ais b\) 
	fis8 gis16( a) gis8( b) e,( a) \mBreak
	<gis b>-. <a cis>-. <e' b>4( <cis a>)
}

%Erste Schlussvariante
upperb= \relative c''{\stemUp
	cis8 dis16( e) gis,8( cis b4)
	cis8 dis16( e) gis,8( cis b4) \bar "||"
        }


%Mittelteil
upperc = \relative c''{\stemUp 
        \key g \major
	e4->^\markup{\large \bold "Meno mosso" } d8( c b ais) \mBreak
	s2.^\markup{\italic "leggierissimo" }
	e'4-> d8( c b ais) 
	s2.
	e'4-> d8( c b ais) \mBreak
	s2.
	e'4-> d8( c b ais) 
	r8 e'8( d8 c b ais) 
	f'4-> bes,-> es-> \mBreak
	%Seite 5
	as,-> g8[\( as] c bes\)
	f'4-> bes,-> es->
	as-> d,-> g-> \mBreak
	b,4^\markup{\italic {poco riten.} }  s \stemDown <e, g>\arpeggio
	\stemUp b'4 s \times 2/3 {g'8\arpeggio\( e c\)}
	b4 s \stemDown <e, g>\mBreak
	\stemUp b'4\( ais8[ b]\) \grace {b16[\( c b ais b]\)} \times 2/3 {as'8\( g8. f16\)}
	f4\( \times 2/3 {e16[\)\( dis e g fis g]} \stemDown c8-.\) r\fermata
	\stemUp e,4-> d8\( c b ais\) \mBreak
	s2.
	e'4-> d8\( c b ais\) s2. \mBreak
	e'4-> d8\( c b ais\)
	r8 e'\( fis, gis a ais\)
	fis'4-> d-> dis->
	gis,-> s4 \stemDown <e fis>4
	%Seite 6
	fis'4-> d!-> dis->
	gis,-> s4 <e fis>4
	fis'\( d! dis\) \mBreak
	g,->\( fis\) \clef bass g,\(
	\stemUp fis8\)~ \times 2/3 {fis16[(\( eis fis]) } \stemDown g16[ gis a ais] b[ cis8 d16~]\)
	d8\( dis~ dis[ e] eis[ fis]\)
	R2.^\fermataMarkup \bar "||" \mBreak \clef treble
	%Teil 1 fängt wieder an
}

%Coda/zweite Schlussvariante
upperd = \relative c'' {\stemUp
	cis8 d16( e) fis8( cis) d4
	d8 e16( fis) gis8( dis) e4
	e8 fis16( gis) a8-.[( gis-. fis-. e-.]
	d!8) a4-> a'-> <dis,, bis' dis>8-.(
	<e cis' e>8-.) fis16( gis a8) e4.~
	e8 fis16( gis a8) e4.~
	e8 fis16( gis a4) r8  bis,8~ \( 
	 bis8  cis\)  d4.\( \m <d, gis>8\) \u
	s8 \clef bass s4 \clef treble s8 \stemUp a''4->~
	a4\( g8[ f e dis]\)
	s2 a''4->~
	a4\( g8[ f e dis]\)
	s2 #(set-octavation 1) s8 e''~
	e2.~
	e2.\fermata \bar "|."
}

%Oberstimme: Unten
%Teil A
middleaa = \relative c'{\stemDown
	r4 <b e> e~
}

middleab = \relative c'{\stemDown
	r4 <b e> e~
}

middlea = \relative c'{
	e e2
	r4 fis fis
	r dis( d) 
	r <e b> e~
	e e2
	r4 e( <fis dis>)
	<b e,> e,( <fis dis>)
	<b e,>8 r r4 r
	s2.
	r4 dis,( e)
	s2. 
	r4 dis( e)
	s2. s
	s2 <dis fis>8( <e g>)
	as( <c g>) as( <c g>) <dis, fis>( <e g!>)
	%Seite 2
	as( <c g>) as( <c g>) <dis, fis>( <e g!>)
	as([ g)] \sup <g' bes,>^>( <fis! a,!>) <f as,>^>( <e g,>)
	\smid s4 e,8( <fis dis>) s4
	e8( <fis dis>) e( <fis dis>) <cis ais>( b)
	%Reprise
	r4 <b e> e~
	e e2
	r4 fis fis
	r dis( d) 
	r <e b> e~
	e e2
}

%Erste Schlussvariante
middleb = \relative c' {\stemDown
	r4 e( <dis fis>)
	<e b'> e( <dis fis>)
}

%Teil B
middlec = \relative c' {\stemDown
	<e g>2.
	s2.
	<e g>2.
	s2.
	<e g>2.
	s2.
	<e g>2.
	r4 <e g>2
	s2.
	%Seite 5
	s4 r <d es>
	s2.
	s\mBreak
	%s4 r <e g>4
	r8 r16 s16 \m r4 <c, g' c>4\arpeggio
	\u r8 s \m r4 \u <g'' c>4\arpeggio
	r8 s r4 \m <c,, g' c>4\arpeggio \u
	r8 s r4 r 
	r8 s s2
	\stemDown <e' g>2. \mBreak
	s2.
	<e g>2.
	s2. \mBreak
	r4 <e g>2
	r4 \once \override NoteColumn #'force-hshift = #1 <e fis>2
	s2.
	s4 \m r4 \stemDown <b, fis' ais>4\arpeggio 
	%Seite 6
	s2.
	s4 \m r4 <b fis' ais>4\arpeggio \u
	s2. \mBreak
	s2.
	s2.
	s2.
	s2.
	%ab hier dann Teil middleab
}

%Zweite Schlussvariante
middled = \relative c' {\stemDown
r4 <fis cis'>4 <fis b>
	r <gis dis'> <gis cis>
	R2.
	s2.
	s4. <b,! d>4.\(
	<a cis>8\) r8 r8 <b d>4.\(
	<a cis>8\) r8 r <cis a>[ <a cis>] \stemUp \m \connekt \stemExtend \noFlag <dis, a'>8~
	\connekt \stemExtend  \noFlag <dis a'>8 \noBeam \connekt \stemExtend  \noFlag <e a>8 \connekt \stemExtend \noFlag  <fis gis>4. s8 \u
	s2 r4
	a2.->
	s2.
	a'2.-> 
	s2.
	<e'' a>4-.^\( <e a>-. <e a>-.\)
	<e a>2.
}


%Linke Hand:
%Erster Teil
        loweraa= \relative c {
        \clef bass
        \key a \major
        \time 3/4
        r4 <<{\stemUp
	 e2(
	e4) e2
	}\\{\stemDown
	d4( cis) 
	b8-. a-. gis4( a)
	}>>%two bars
}

lowerab = \relative c {
        \key a \major
        r4 <<{\stemUp
	 e2(
	e4) e2
	}\\{\stemDown
	d4( cis) 
	b8-. a-. gis4( a)
	}>>%two bars
}

lowera = \relative c {%\set followVoice = ##t
r <ais fis' cis'>4( <b fis' b>)
	r <b a'>( <e gis>)
	r4 <<{\stemUp
	 e2(
	e4) e2
	r4 r a8( b)
	gis4 r a8( b
	gis-.) 
	}\\{\stemDown
	d4( cis) 
	b8-. a-. gis4( a)
	r4  b2~ 
	b4 b2 ~
	b8
	}>> r8 r4 r %five bars
	<<{\stemUp \set followVoice = ##t fis'8[ gis16( a]) \u cis8[( b]) \m a([ gis)]
	e,16 e'-. fis-. gis-. a( b c8 ~ c b)
	e,2 a8( gis)
	}\\{ r4 b, e
	e,8 r e'2
	a,8( gis) a( gis) e'4
	}>>%three bars
	<<{\stemUp 
	e,16 e'-. fis-. gis-. a( b c8 ~ c b)
	e,2 a8( gis)
	}\\{%\global
	e,8 r e'2
	a,8( gis) a( gis) e'4
	}>>%two bars
	<<{as2 des8( c)
	c2 s4
	c2 s4
	}\\{des,8( c) des( c) as'4
	f8( e) f( e) \slurUp <c' as>( <g c,>) \slurDown
	f( g) f( g) \slurUp <c as>( <g c,>)
	}>>%three bars
	%Seite 4
	<<{c2 s4
	}\\{f,8( g) f( g) <c as>( <g c,>)
	}>>
	<c f,>( c,) <cis' a>->( d) <b g>->( c)
	<ais fis>->( b) 	<<{\stemUp \slurUp g([ fis)]}\\{r8 b,}>> <fis'[ ais]>->( b)
	<<{\stemUp \slurUp g([ fis)] g([ fis)]}\\{r8 b, r b}>> \slurDown e( dis)
	%Reprise
	r4 <<{\stemUp
	 e2(
	e4) e2
	}\\{\stemDown
	d4( cis) 
	b8-. a-. gis4( a)
	}>>%two bars
	r <ais fis' cis'>4( <b fis' b>)
	r <b a'>( <e gis>)
	r4 <<{\stemUp
	 e2(
	e4) e2
	}\\{\stemDown
	d4( cis) 
	b8-. a-. gis4( a)
	
	}>>  %two bars
}
	
%Erste Schlussvariante
lowerb = {
<<{	r4 r a8( b)
	gis4 r a8( b)
	}\\{r4  b,2~ 
	b,4 b,2 }>>
}

%Mittelteil
lowerc = \relative c {
\key g \major
<c g' c>2. \mBreak
\set tupletSpannerDuration = #(ly:make-moment 1 4)
\set subdivideBeams = ##t
\set Voice.beatLength = #(ly:make-moment 1 8)
%Der hat mich viel Zeit gekostet!Macht den Takt zu einem 6/8-Takt!War als Score, jetzt nur auf Voice beschränkt
\override Voice.TupletBracket #'bracket-visibility = ##f
\override Voice.TupletNumber #'transparent = ##f
\times 2/3 {\stemUp r16 e,[\( b' g' \u b e] a[ g e\) \m \clef violin ais\( b e] \u fis g b } e8\) \m 
\override Voice.TupletNumber #'transparent = ##t
\clef bass <c,,, g' c>2.
\times 2/3 {r16 e,16\( b' g' \u b e a[ g e \m c b g] c,[ b g]\)} e8-.
<c' g' c>2. \mBreak
\times 2/3 {\stemUp r16 e,[\( b' g' \u b e] a[ g e\) \m \clef violin ais\( b e] \u fis g b } e8\) \m
\clef bass <c,,, g' c>2.
r4 <c g' c>2
\times 2/3 {r16 des\( as' des \u f as\) \m r des,,\([ es bes' \u es g\)] \m  r c,, es c' \u es as} \m
 \mBreak
%Seite 5
	\times 2/3 {r16 bes,,\( f' bes \u des f\)}  \m r4 <es, g>
	\times 2/3 {r16 des\( as' des \u f as\) \m r des,,[\( es bes' \u es g\)] \m r c,,\( es c' \u es as\)} \m
	\times 2/3 {r16 f,\( c' f \u as c\) \m r f,,\([ g d' \u g b\)] \m r es,,\( g fes' \u g c\)} \m
	\override Voice.TupletNumber #'transparent = ##f
	\stemDown \times 2/3 {r16 des,,[\( g] des' \u b[ f']} \stemUp ais8[ b] e\arpeggio c\) \m
	\stemDown \times 2/3 {r16 des,,[\( g] des' \u b[ f']} \stemUp ais8[ b]\) \m <c,, g' e'>4\arpeggio
	\override Voice.TupletNumber #'transparent = ##t
	\stemDown \times 2/3 {r16 des[\( g] des' \u b[ f']} \stemUp ais8[ b] e[ c]\) \m
	\stemDown \times 2/3 {r16 des,,[\( g] des' \u b[ f']\)} \m r4 r \stemUp
	\stemNeutral \times 2/3 {r16 c,[\( g'] e'[ \u g c]\)} \m r4 r4\fermata
	\stemNeutral <c,, g' c>2. \mBreak
	\times 2/3 {\stemUp r16 e,[\( b' g' \u b e] a[ g e\) \m \clef violin ais\( b e] \u fis g b } e8\) \m 
	\clef bass \stemNeutral <c,,, g' c>2. 
	\times 2/3 {r16 e,16\( b' g' \u b e a[ g e \m c b g] c,[ b g]\)} \stemDown e8-.\stemNeutral
	r4 <c' g' c>2
	r4 <c fis c'>2
	\times 2/3 {r16 b\( g' dis' \u fis b\) \m r16 b,,[\( g' b \u d! g]\) \m r16 b,,\( g' b \u dis fis\) } \m
	\times 2/3 {r16 b,,[\( eis b' \u cis eis] } \stemUp ais8[ b] dis\arpeggio cis\) \m \mBreak
	%Seite 6
	\times 2/3 {r16 b,,\( g' dis' \u fis b\) \m r16 b,,[\( g' b \u d! g]\) \m r16 b,,\( g' b \u dis fis\) } \m
	\times 2/3 {r16 b,,[\( eis b' \u cis eis] } \stemUp ais8[ b] dis\arpeggio cis\) \m
	\times 2/3 {r16 b,,\( g' dis' \u fis b\) \m r16 b,,[\( g' b \u d! g]\) \m r16 b,,\( g' b \u dis fis\) } \m
	\times 2/3 {r16 b,,\( eis g \u b d\) \m r16 b,[\( g' b \u cisis dis]\) \m r16 b,,\( eis g \u b d\)} \m
	\times 2/3 {r16 b,[\( fis'] \stemDown dis'\) r r } r4 r4 
	R2.
	R2.^\fermataMarkup \bar "||" \mBreak
	%Den Dreivierteltakt wieder herstellen
	\set Voice.beatLength = #(ly:make-moment 1 4)
	%ab hier dann lowerab, Reprise
}

bassstimme = \relative c { \stemDown
            \override Voice.TupletBracket #'bracket-visibility = ##f
            \override Voice.TupletNumber #'transparent = ##t
            s2.*8
            %Takt 38
            \times 2/3 {s16 des8 s4 des8 s4 c8 s8. }
            s2.
            \times 2/3 {s16 des8 s4 des8 s4 c8 s8. }
            \times 2/3 {s16 f8 s4 f8 s4 es8 s8. }
            s2.*11
            %Takt 53
            \times 2/3 {s16 b8 s4 b8 s4 b8 s8. }
            \times 2/3 {s16 b8 } s2 s8
            \times 2/3 {s16 b8 s4 b8 s4 b8 s8. }
            \times 2/3 {s16 b8 } s2 s8
            \times 2/3 {s16 b8 s4 b8 s4 b8 s8. }
            \times 2/3 {s16 b8 s4 b8 s8. } s4
            s2.*3
            }

%Coda/ zweite Schlussvariante
lowerd = \relative c{
	r4 <ais fis' cis'>4\arpeggio ( <b fis' b>) \mBreak
	r <bis gis' dis'>\arpeggio ( <cis gis' cis>)
	R2.
	<<{\stemUp a'8 b16( cis) d8-.\( cis-. b-. a~ a\) r r a\( fisis gis\)}\\{\stemDown fis2 f4( e8) r r4 e4}>>
	%Zwei Takte
	e,8-. r <<{r \stemUp a'\( fisis gis\)}\\{r4 e}>> \mBreak
	e,8-. r r \stemDown fis'16\( f e8\) fis,16\( f
	e2\)\( e'4\)
	\override Voice.TupletBracket #'bracket-visibility = ##f
    \override Score.TupletNumber #'transparent = ##f
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \set Voice.beatLength = #(ly:make-moment 1 8)
    \set subdivideBeams = ##t
	\stemUp \times 2/3 { a,,16\( e' a \u cis e a\) \m dis,[\( e a \u bis cis e]\)} \m r4
	\stemDown <f, c>2.->
    \override Score.TupletNumber #'transparent = ##t
	\stemUp \times 2/3 {a,16\( e' a \u dis e a\) \m \clef treble dis,[\( e a \u bis cis e]\)} \m s4
	<f, c'>2.->
	\times 2/3 {r16 a,\( e' a \u cis dis fis[ e cis]\) \m a'[\( cis e \u gis a cis]\) } s8 \m
	<a,, cis>4-.\( <a cis>-. <a cis>-.\)
	<a cis>2._\fermata \bar "|."
}


%Dynamic-Linie
%Teil 1
dynamica = {s4\p s\< s
	s s s\!
	s2.
	s4\> s\!_\markup{\italic espress.} s
	s4\p s\< s 
	s s2\!
	s2._\markup{\italic {poco più} \dynamic f }
	s2.
	s4 s_\markup{\italic espr.} s
	s2.
	s4\p s2
	s2.\p
	s2.
	s
	s_\markup{\italic "poco cresc."}
	s
	s\f
	%Seite 4
	s
	s\mf
	s4 s s_\markup{\italic dim.}
	s2.
	s4\p\< s s
	s s s\!
	s2.
	s4\> s_\markup{\italic espr.} s\!
	s2.\p
	s2\< s4\!
	s2._\markup{\italic "poco più" \dynamic f}
	s4 s_\markup{\italic dim.} s
}

%Mittelteil Teil
dynamicb = {
s2._\markup{\dynamic p \italic "molto express."}
s
s\p
s\pp
s\p
s\pp
s\<
s2 s8 s8\!
s2.\mf
s\p
s\mf
s8_\markup{\italic cresc.} s8 s2
s2.\mf
s
s
s
s\p
s
s\pp
s\p
s \pp
s4 s2\<
s2 s8 s8\!
s2.\mf
s_\markup{\italic cresc. }
%Ende S. 5
s
s
s_\markup{\italic dim.}
s\p
s
s8\< s4_\markup{\italic riten.} s4 s8\!
s2.
}

%Nach Teil eins in die Coda
dynamicc = {
s4\<_\mf s2\>
	s2.
	s8 s8\p s2
	s8 s8\p s2
	%s8 s8\p s8 s8_\markup{\italic cresc. } s4_\markup {\italic "molto espr." \dynamic f}
	s8 s8\p s8 s8_\markup{\italic "cresc. molto espr." \dynamic f} s4
	s2 s4-\markup {\italic dim.}
	s8\ppp s8 s2
	s2.
s2.
	s8\ppp s8 s2
	s2.
	s2.\ppp
	s2.
	%Fine
}


\score {
        \new PianoStaff <<
	\set PianoStaff.instrumentName = "Piano"
	\set PianoStaff.connectArpeggios = ##t
        \new Staff = "upper"  <<
              \new Voice =
                "oben" { \voiceOne << {\beaminga \upperaa \uppera \upperb \beamingb \upperc \beamingc \upperab \uppera  \upperd}  >> }
              \new Voice =
                "unten" { \voiceTwo << {\beaminga \middleaa \middlea \middleb \middlec \middleab \middlea \middled} >> }
	 \new Voice = "Dynamics" { \voiceFour { \dynamica \dynamicb \dynamica \dynamicc } }
	    >>
	\new Staff = "lower" {\beaminga \loweraa \lowera \lowerb << \lowerc \bassstimme >> \lowerab \lowera  \lowerd}
        >>
\midi {
     \context {
       \Score
       tempoWholesPerMinute = #(ly:make-moment 72 4)
       }
	}

\layout {
         \context {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           
	   %\override VerticalAxisGroup #'minimum-Y-extent = #'(0.5 . 0.5)
	   %\override DynamicLineSpanner #'Y-offset = #0
                     
           %\consists "Script_engraver"
           %\consists "Dynamic_engraver"
           %\consists "Text_engraver"
     
           %\override TextScript #'font-size = #2
           %\override TextScript #'font-shape = #'italic
     
           %\consists "Skip_event_swallow_translator"
     
           %\consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAxisGroup
            #'keep-fixed-while-stretching = ##t
           %\override VerticalAlignment #'forced-distance = #6
         }  
        \context {
      \Score
      \override SpacingSpanner
               #'base-shortest-duration = #(ly:make-moment 1 8)
        \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
        %\override SpacingSpanner #'packed-spacing = ##t
    }
       }
     }
%{
\context PianoStaff \with { \override VerticalAxisGroup
#'keep-fixed-while-stretching = ##t }
%}
