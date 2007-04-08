\version "2.7.40"
%#(ly:set-option 'point-and-click #t)

\header {
  filename = "Tschaikowsky-op37,8.ly"
  title = "Август: Жатва"
  subtitle = "August: Harvest time"
  opus = "op. 37,8"
  composer = "Петр И. Чайковский"
 mutopiatitle = "The Seasons: August"
 mutopiacomposer = "TchaikovskyPI"
 mutopiaopus = "O 37,8"
 mutopiainstrument = "Piano"
 source = "Rob. Forberg, Leipzig"
 year = "1897"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Till Rettig"
 lastupdated = "2006/August/11"
 footer = "Mutopia-2006/08/21-803"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
\paper {
 print-page-number = ##t
 ragged-last-bottom=##t
}

u = { \change Staff = upper  \stemDown \slurDown }
m = { \change Staff = lower \stemUp  \slurUp   }


%Oberstimme: Teil A
upperaa = \relative c''{
        \clef treble
        \key b \minor
        \time 6/8
        \partial 4.
        r8^\markup {\large \bold "Allegro vivace"} <b fis>( eis,)
}

uppera = \relative c''{
 	<b fis>4( <ais e>8) r <g d>( cis,)
        <g' d>4( <fis cis>8) r <fis c>( b,)
         <fis' c>4( <e b>8) r <e ais,> r
        <d ais>[ r <cis ais>] b r r |
        r8 <d b' d>-.[ <e b' d>-.] <f b d>-. r r
        r <fis b, gis>-.[ <e cis ais>-.] <d b>-. r r
        r8 <d b' d>-.[ <d' b e,>-.] <d b f>-. r r
        r <fis, b, gis>-.[ <e cis ais>-.] <d b>-. <b' fis>[( eis,])
%zweites Mal Teil a
        <b' fis>4( <ais e>8) r <g d>( cis,)
        <g' d>4( <fis cis>8) r <fis c>( b,)
        <fis' c>4( <e b>8) r <e ais,> r
        <d ais>[ r <cis ais>] b r r |
%zweites Mal Teil b
        r8 <d b' d>-.[ <e b' d>-.] <f b d>-. r r
        r <fis b, gis>-.[ <e cis ais>-.] <d b>-. r r
        r8 <d b' d>-. <d' b e,>-. <d b eis,>4 <eis, b' cis>8~
        <eis cis' b> <eis' b cis>4( <ais, cis fis>8-.) <fis' b>[( eis])
%Sequenzierung a-Teil
        <fis b>4( <e ais>8) r <d g>( cis)
        <d g>4( <cis fis>8) r <c fis>( b <fis' c>) <c fis,>[( eis,] <c' fis,>) <e, c>[( b]
        <c e>) r <fis, a dis>-. <g b e>-. <b'' e>[( ais])
        <b e>4( <a dis>8) r <g c>( fis)
        <g c>4( <fis b>8) r <f b>( e
        <f b>) <f b,>[( ais,] <b f'>) <f ais>8[( e]
%Stakkato-Stretta
        <f ais>) r <b, d gis>-. <c a'>-.  <c a'>4(
        <d gis b> <c a' c>8^.) r <c a'>4(
        <d gis b,>4 <a' c, a>8^.) r <e c'>4(
        <d' b f> <e, c' e>8^.) r <c' e,>4(
        <d, f b>4 <c e c'>8^.) r <g' e'>4(
        <a dis fis> <g e' g>8^.) r <b g'>4(
        <c fis a>4 <b g' b>8^.) r <d b'>4(
        <e ais cis>4 <d b' d>8^.) r <fis d'>4(
        <g cis e>4 <fis d' fis>8^.)  \slurNeutral r <fis d' fis>4
        <fis d' fis>4 <fis d' fis>4 <fis e' fis>4
        <fis e' fis>4 <fis e' fis>4 <e fis ais,>
        <e fis ais,> <e fis ais,> <e, fis ais,>
        <e fis ais,> <e fis ais,>8~ <e fis ais,> <fis b>[( eis)]
%Reprise
        <b' fis>4( <ais e>8) r <g d>(<fis cis>)
        <g d>4( <fis cis>8) r <fis c>( b,)
         <fis' c>4( <e b>8) r <e ais,> r
        <d ais>[ r <cis ais>] b r r |
        r8 <d b' d>-.[ <e b' d>-.] <f b d>-. r r
        r <fis b, gis>-.[ <e cis ais>-.] <d b>-. r r
        r8 <d b' d>-.[ <d' b e,>-.] <d b f>-. r r
        r <gis,, b fis'>-. <ais cis e>-. <b d>-. r r
        r <a e' a>-. <a e' g>-. <a d fis>-. r r
        r <cis gis' cis>-. <cis gis' b>-. <cis fis ais>-. <<{fis'( e}\\ {cis4(}>>
        << {d8) fis( e d) fis( e}\\{b8) cis4( b8) cis4(}>>
        << {d8) fis-. d-.}\\ {b8) cis-. b-.}>> <g! b e g!>4.
         %ab hier dann die wilden Sechzehntel
	s2. r8 r16  s s s r8 r \clef violin <e b g>-. s2. r8 r16  s s s r8 r \clef violin <b' g e b>-. | r8 r s s4. |
	%Stakkato-Achtel-Oktaven
	 s8 \stemUp  <g'' g,>^.[ <e e,>^.] <fis fis,>^. <d d,>^. <e e,>^. |
	<cis cis,>^. <d d,>^. <ais ais,>^. <b b,>^. <fis fis,>^. <g g,>^. <e e,>-. <fis fis,>-. <d d,>-. <e e,>-. <cis cis,>-. <d d,>-. | <ais ais,>-. <b b,>-. <fis fis,>-. <g g,>4 <ais e cis>8-. |
	<b fis d>-. r r r <cis b cis,>-. <cis b d,>-. | <cis b e,>-. r r r <fis, b, gis>-. <fis cis ais>-.
	<fis d b>-. r r r <cis' b cis,>-. <cis b d,>-. <cis b e,>-. r r r <fis, b, gis>-. <fis cis ais>-.
	<fis d b>-. <b fis d>-.[ <ais fis d>-.] <b fis d>-. <d b fis>-. <cis b fis>-. <d b fis>-. <fis d b>-. <eis d b>-. <fis d b>-. <b fis d>-. <ais fis d>-.
}

%Erste Schlussvariante
upperb= \relative c''{
        %\clef treble
        %\key b \minor
        %\time 6/8
	<b' fis d>-. <d b fis>-. <cis b fis>-. <d b fis>-. <fis d b>-. <eis d b>-. | <fis d b>-. 
	#(set-octavation 1)
	<b fis d>-.[ <ais fis d>-.] <b fis d>-. <b fis d>-. <ais fis d>-. <b fis d>-.
	#(set-octavation 0)
	r r <b, fis d>-. r r <b, fis d>-. r r \m <b, fis d>^. s s  \bar "||"
	
        }


%Mittelteil
upperc = \relative c''{
        %\clef treble
        %\key b \minor
        %\time 6/8
<<{d4.^\markup{\large \italic "tranquillo"}\( ( cis) b4( a8) a4.\) 
b4.\( ( a) g4( fis8) fis4.\) a4.\( ( d,) fis4( e8) e4.\) 
fis4.\( ( b,) d4( cis8) cis4.\) } \\ {
fis2.~ fis2. e es d4. d d2. b4. b bes2. }>>
%\break
<a' d, a>2. \clef bass <a, fis> \clef treble
<d' b d,> <e, b> <e' e,> <a, dis> <a' e a,>4. <cis, a> <<{cis4( b8) a4.}\\{gis4. a}>>
<<{e'4.\(( a,) b4( a8) a4.\) <b a>2. <ais fisis>4.( <b gis>) gis'\(( cis,) d4( cis8) cis4.\) <d c>2. <cis ais>4.( <d b>) b'4.\(( e,) dis4( e8) e4.\) cis'4.\(( fis,) eis4( fis8) fis4.\) b,2.~ b d4.\(( g,) d'4( cis8) cis4.\) 
}\\{g2. fis s s b a s s d cis e d gis,~ gis g4. g g2.}>>
<<{d'4.\(( cis) b4( a8) a4.\) b4.\(( a) g4( fis8) fis4.\) a\(( d,) fis4( e8) e4.\) fis\(( b,) d4( cis8) cis4.\)
<a' d, a>2. <d, a fis> <d' g, d> <b eis, b> <a fis a,> <e b> <cis g> <d fis,>
b'4.\(( ais) g4( fis8) fis4.\) d'( cis) <b fis>( ais)  b'4.\(( ais) g4( fis8) fis4.\) d'( cis) <b fis>( ais) b4( ais8) ais4. 
}\\{fis,2.~ fis e es d4. d d2. b4. b bes2. s s s s s s s s 
fis'2. cis <fis e> d4.( fis) fis'2. cis <fis e> d4.( fis) e2. 
}>>
R2. <<{b4( ais8) ais4.}\\{e2.}>> R2. R r4. r8  \stemUp <b' fis>8( eis,)
}

%Coda/zweite Schlussvariante
upperd = \relative c'' {
<b' fis d>-. <d b fis>-.[ <cis b fis>-.] <d b fis>-. <fis d b>-.[ <eis d b>-.] | <fis d b>-. 
	#(set-octavation 1)
	<b fis d>-.[ <ais fis d>-.] <b fis d>-. <b fis d>-.[ <ais fis d>-.] <b fis d>-.
	#(set-octavation 0)
	r r <b, fis d>-. r r <b, fis d>-. r r \m <b, fis d>^. s s \change Staff = "upper"
<b' fis d b>8-. r r <b' fis d b>-. r r b,,2.\fermata \bar "|."
}



%Linke Hand:
%Erster Teil
        loweraa= {
        \clef bass
        \key b \minor
        \time 6/8
        \partial 4.
         <<{r8 d'( cis') }\\{ r4.}>>
}

	lowera = {
        <<{d'4( cis'8) r b( ais)}\\{r8 b, r b, r r}>>
         <<{b4( ais8) r a( gis)}\\ {r b, r b, r r}>>
         <<{a4( gis8) r g r}\\ { r b, r b, r b,}>>
         <<{fis8[ r e]}\\{r8 b, r}>> <d b,> eis-.[ fis-.]
         g4.->(\stemUp g,8) a,-. g,-.
         fis,4.->( b,8-.) \stemDown eis-.[ fis-.]
         g4.->(\stemUp g,8) a,-. g,-.
         fis,4.->( b,8-.) \stemNeutral d'[ cis']
         <<{d'4( cis'8) r b( ais)}\\{r8 b, r b, r r}>>
        <<{b4( ais8) r a( gis)}\\ {r b, r b, r r}>>
        <<{a4( gis8) r g r}\\ { r b, r b, r b,}>>
        <<{fis8[ r e]}\\{r8 b, r}>> <d b,> eis-.[ fis-.]
         g4.->( g,8) a,-. g,-.
        \stemUp fis,4.->( b,8-.)\stemNeutral eis-.[ fis-.]
        g4.->( g8) gis4
        cis'( gis'8) fis' \clef violin \relative c'' d8[( cis''])
        <<{d''4( cis''8) r b'( ais')}\\{d''8 fis' cis'' fis'4.~}>>
        <<{b'4( ais'8) r}\\{fis'8 fis'4 fis'8}>> <e' a'>4~
        <e' a'>8 <a e'>4~ <a e'>8 \clef bass <fis a>4~
        <fis a>8 c-. b,-. e-. \clef violin g''[( fis''])
        <<{g''4( fis''8) r e''( dis'')}\\{g''8 b' fis'' b'4.~}>>
        <<{e''4( dis''8) r}\\{b'8 b'4 b'8}>> <d'' a'>4~->
        <d'' a'>8 <a' d'>4~-> <a' d'>8 <d' b>4~->
        <d' b>8 \clef bass f-.[ e-.] \stemUp a,-.[ f-. e-.]
        a,-.[ f-. e-.] a,-.[ f-. e-.]
        a,-.[ f-. e-.] \stemDown a,-.[ a-. aes-.]
        c-.[ a-. as-.] c-.[ a-. as-.]
        c-.[ a-. as-.] c-.[ c'-. b-.]
        e-. c'-. b-. e-.[ e'-. ees'-.]
        g-. e'-. ees'-. g-.[ g'-. fis'-.]
        b-. g'-. fis'-. \clef violin \stemUp b-.[ b'-. ais'-.]
        d'-. b'-. ais'-. d'-.[ ais'->( d'])
        ais'->( d') ais'->( d'[) ais'->( cis')]
        ais'->( cis') ais'->( cis') cis'->( fis)
        cis'->( fis) cis'->( fis) \clef bass cis->[( fis,])
        cis->( fis,) cis->( fis,) \stemNeutral d'([ cis'])%Reprise Teil A
        <<{d'4( cis'8) r b( ais)}\\{r8 b, r b, r r}>>
         <<{b4( ais8) r a( gis)}\\ {r b, r b, r r}>>
         <<{a4( gis8) r g r}\\ { r b, r b, r b,}>>
         <<{fis8[ r e]}\\{r8 b, r}>> <d b,> eis-.[ fis-.]
         g4.->(\stemUp g,8) a,-. g,-.
         fis,4.->( b,8) \stemDown eis-.[ fis-.]
         g4.->(\stemUp g,8) a,-. g,-.
         fis,4.->( b,8) e-. d-. \stemNeutral
         cis4.->( d8) gis-. fis-.
         eis4.->( fis8)  <ais fis'>4(
         <gis fis'>8) <ais fis'>4( <gis fis'>8) <ais fis'>4(
         <gis fis'>8) <ais fis'>-. <b fis'>-. <e b e'>4.
         %Ab hier die wilden Sechzentel
	%\autochange
	<<{ e16( g b cis'  \u %\change Staff = upper 
	e'16 g' e'' cis'' b' g' e' 
	\m %\change Staff = lower 
	cis') | b16[( g e )] \u \clef bass cis[( b, g,] ) \m e,8( cis ) r8 } \\ e4 s4 s4 s4 s4 s8 s8>>
	<<{e16( b cis' e' \u  g' b' g'' e'' cis'' b' g' \m e') | cis'[( b g]) \u \clef bass  e[( cis b,]) \m g,8( cis) r | fis,16[(\( b, d fis])  \change Staff = upper \stemUp \slurUp b16( d') fis'[( b' d'' fis'' b'' d''']) fis'''8\)}
	\\ {e4 s4 s  | s2. | fis,4 r8 \m fis16( b \u d' fis' b' d'') fis''8} >> <<{\u <e'' e'>8_. <cis''cis'>_. <d'' d'>_. <b' b>_. <cis'' cis'>_. |} \\ { s4 s4.}>>
	\u <ais' ais>8_. <b' b>_. <fis' fis>-. <g' g>_. \change Staff = lower <d' d>_. <e' e>_. | <cis' cis>-. <d' d>-. <b b,>-. <cis' cis>-. <ais ais,>-. <b b,>-. | <fis fis,>-. <g g,>-. <d d,>-. <e e,>4 <fis fis,>8-. |
	\stemUp b,8-. \stemDown e-.[ fis-.] g4.->~ g8 \stemUp a,-.[ g,-.] fis,4.->( \stemDown b,8-.) e-. fis-. g4.->~ g8 \stemUp a,-.[ g,-.] fis,4.->( \stemNeutral 
	b,8-.) <b fis d>-.[ <ais fis d>-.] <b fis d>-. <d' b fis>-.[ <cis' b fis>-.] <d' b fis>-. <fis' d' b>-.[ <eis' d' b>-.] <fis' d' b>-. \clef treble 
	<b' fis' d'>-.[ <ais' fis' d'>-.]
	}

%Erste Schlussvariante
lowerb = {
<b' fis' d'>8-. <d'' b' fis'>-.[ <cis'' b' fis'>-.] <d'' b' fis'>-. <fis'' d'' b'>-.[ <eis'' d'' b'>-.] <fis'' d'' b'>-. <b'' fis'' d'' b'>-.[ <ais'' fis'' d'' b'>-.] <b'' fis'' d'' b'>-. <b'' fis'' d'' b'>-.[ <ais'' fis'' d'' b'>-.] <b'' fis'' d'' b'>-.  r r <b' fis' b>-. r r \clef bass \break
<b fis b,>-. r r \stemDown < b, fis, b,,>_.  r r \bar "||"
}

%Mittelteil
lowerc = {\stemNeutral
<<{a2.~ a a~ a fis( gis) d( e) | a,4.\( b, cis4( d8) d4.\) e\( fis fisis4( gis8) gis4.\) gis\( a b4( c'8) c'4.\) cis'!\( fis'4( e'8) d'4.( cis') \) | a2.~ a | fis'4.\( ( b) cis'4( b8) b4.\) cis'2.~ cis' | 
}\\{d2.~ d cis( c) b,~ b, gis,( g,!) fis, a, gis, d cis fis e e4.( a) | cis2.\( d dis2. e eis fis\)}>>
<<{a'4.\( ( d') e'4( d'8) d'4.\) e'2.~ e' fis'~ fis' fis'4.\( ( b) fis'4( e'8) e'4.\)
}\\{ fis2.\( g gis a ais b\) e~ e 
}>>
<<{e2.~ e a~ a a~ a fis2.( gis) d( e) 
a,4.( b,) b,4( c8) c4. ais,( b,) cis4( d8) d4. d( dis) a4( g8) g4. fis4( e8) e4. bes,4( a,8) a,4.
d'4.( cis') b( ais) gis( ais) b4( cis'8) cis'4. \clef treble
d''4.( cis'') b'( ais') gis'\(( ais') b'4( cis''8) cis''4.\) cis''2. s \clef bass
cis' s s s
}\\{bes,2.( a,) d~ d cis( c) b,~ b, gis,( g,!) 
	%\break %setzt schlechtere Varianten in der Reprise
	fis, a, g, gis, fis, g, a, d, fis~ fis fis~ fis fis'~ fis' fis'~ fis' g'4.( fis') \stemUp g'4( fis'8) fis'4. \stemDown g4.( fis) g4( fis8) fis4. g4( fis8) fis4. g4( fis8) fis  \stemUp d'([ cis')]
}>> 
}

%Coda/ zweite Schlussvariante
lowerd = {
<b' fis' d'>8-. <d'' b' fis'>-.[ <cis'' b' fis'>-.] <d'' b' fis'>-. <fis'' d'' b'>-.[ <eis'' d'' b'>-.] <fis'' d'' b'>-. <b'' fis'' d'' b'>-.[ <ais'' fis'' d'' b'>-.] <b'' fis'' d'' b'>-. <b'' fis'' d'' b'>-.[ <ais'' fis'' d'' b'>-.] <b'' fis'' d'' b'>-.  r r <b' fis' b>-. r r \clef bass 
<b fis b,>-. r r \stemDown <b, fis, b,,>_. r r
<fis d b,>8-. r r <d' b fis b,>-. r r \stemUp <b, b,,>2.\fermata \bar "|."
}

%Dynamic-Linie
%Auftakt
dynamicaa = {\partial 4.
s4.\p
}

%Teil 1
dynamica = {
s2. s s s s\f s\p s\f s4.\p s8 s4\p | s2. s s s s\f s\p s\f s4. s8 s4\p
%Thema 1 zweites Mal
s2. s2 s4\f s2. s2 s4\p | s2. s2 s4\f s2. s2 s4\mf s2. s2. s2. s s\f s s s4. s\f s2. s s s2 s4\p
%Thema Reprise
s2. s s s s\f s\p s\f s\p s s s s4. s\f |
%Die wilden Sechzehntel
s2.\mf s s\f s s\ff s s s s s4.\mf s\f s s\p | s s\f s s\p s8 s8-\markup{\italic "cresc."} s2 | s2. s\f s s\ff s 
%Doppelstrich
}

%Mittelteil Teil
dynamicb = {
s2.\p s s s s s s s s-\markup{\italic marcato} s-\markup{\italic {poco cresc.}}
s s s s s\mf s^\markup{\italic "espr."} s-\markup{\dynamic p \italic "espress."} s s |
s s s s\p s s^\markup{\italic "cresc."} s4. s^\markup{\italic "stringendo" } s2. s\f s4. s^\markup{\italic "dim."} s2. s\p s^\markup{\italic "rit."} \break s-\markup{\dynamic p \italic "a tempo"} s2. s s s s s s s-\markup{\italic "poco cresc."} s2. s s s-\markup{\dynamic mf \italic " espr."} s2. s-\markup{\italic "dim"} s s\p s s s s\p s s s s\pp s s s-\markup{\italic "rit."} s s4-\markup{\italic "a tempo"} s4 s4\p
}

dynamicc = {
s2. s
}


\score {
        \new PianoStaff <<
	\set PianoStaff.instrument = "Piano"
        \new Staff = "upper" {\upperaa \uppera \upperb \upperc \uppera  \upperd}
	 \new Dynamics = "dynamics" {\dynamicaa \dynamica \dynamicb \dynamica \dynamicc}
	\new Staff = "lower" {\loweraa \lowera \lowerb \lowerc \lowera  \lowerd}
        >>
%\midi {\tempo 8 .=144 }
%\layout {}
\layout {
         \context {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
           %pedalSustainStrings = #'("Ped." "*Ped." "*")
           %pedalUnaCordaStrings = #'("una corda" "" "tre corde")
     
          % \consists "Piano_pedal_engraver"
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #1
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #6
         }
       }
     }
    
