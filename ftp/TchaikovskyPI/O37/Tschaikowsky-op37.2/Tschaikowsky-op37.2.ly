\version "2.10.0"
%#(ly:set-option 'point-and-click #f)
\header {
  filename = "Tschaikowsky-op37,2.ly"
  title = \markup {
"Февраль. Маслянница"}
  subtitle = "Februar: Carneval"
  opus = "op. 37,2"
  composer = "Петр И. Чайковский"
 mutopiatitle = "The Seasons: February"
 mutopiacomposer = "TchaikovskyPI"
 mutopiaopus = "O 37,2"
 mutopiainstrument = "Piano"
 source = "Rob. Forberg, Leipzig"
 year = "1897"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Till Rettig"
 lastupdated = "2008/April/3"

 footer = "Mutopia-2008/04/21-1398"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
\paper {
 print-page-number = ##t
 %ragged-last-bottom=##f
 system-count= #27
 page-limit-inter-system-space = ##t
 page-limit-inter-system-space-factor = 1.1
 %between-system-space = #0.1
}

u = { \change Staff = upper  \stemDown \slurDown }
m = { \change Staff = lower \stemUp  \slurUp   }
%sdown = {\stemUp \slurDown }
%sup = {\stemUp \slurUp }
smid = {\stemDown \slurDown }
sneutral = {\oneVoice}
sup = {\voiceOne}
sdown = {\voiceTwo}
mBreak = { }
stemExtend = \once \override Stem #'length = #21
noFlag = \once \override Stem #'flag-style = #'no-flag
connekt = \once \override Stem #'cross-staff  = ##t 
tempoalign = {  \once \override Score.RehearsalMark #'self-alignment-X = #left
       \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
       }

%Oberes System
%Oberstimme: Oben
%Teil A
initupper = \relative c''{
        \clef treble
        \tempoalign
        \key d \major \mark \markup{\bold "Allegro giusto."}
        \time 2/4 
}


uppera = \relative c''{\sup
    a'4 e a e 
    \sneutral d16-. e-. d-. e-. fis8-. fis-. |
    \sup e8 g e4
    a e \mBreak
    a e
    \sneutral d16-. e-. d-. e-. fis8-. fis-. |
    <d e>16-. fis g a bes8-> r
    r16 <des,, es>[ r <des es>] c8^>_( <es c'>) \mBreak
	r16 <es f>[ r <es f>] d8^>_( <f d'>) |
	\sup
	d8_( <f g d'>) es_( <g es'>)
	f_( <b g'>) es,_( <g es'>)
	\sneutral
	r16 <f g>[ r <f g>] e8_(^> <g e'>) |
	r16 <g a>[ r <g a>] \sup f8^>_( <a f'>) \mBreak
	e8_( <g a e'>) f( <a f'>) |
	g( <cis a'>) f,( <a f'>)
	e8( <g a e'>) f( <a f'>)
	a( <fis' b>) g,( <b g'>) |
	fis( <a b fis'>) g( <b g'>) \mBreak
	b( <gis' cis>) a,( <cis a'>) |
	c( <a' d>) b,( <d b'>)
	c( <a' d>) b,( <d b'>)
	\sneutral e'16-. d-. bes-. a-. g8-. r |
	%Ab hier Teil B/D
}

%Erste Schlussvariante
upperb= \relative c''{
    \sneutral e,16-. d-. bes-. a-. g8-. r \mBreak
    r4 <d' e>-> ~
    <d e>8 <cis e a>^> <d a' d>^> r \bar "||"
    fis'16-. e-. d-. cis-. b8->( cis)
    \sup cis,^>( <fis ais>) d^>( <fis b>)
    cis16( cis' g b) d,( d' fis, b) \mBreak
    g16( g' b, e) fis,( fis' b, d)
    \sneutral
    fis-. e-. d-. cis-. b8^>( cis)
    \sup
    cis,8^>( <fis ais>) d^>( <fis b>)
    cis16( cis' g b) d,( d' fis, b) 
    g16( g' b, e) fis,( fis' b, d) \mBreak
    \sneutral
    r8 <d, b>4 <d b>8 ~
    <d b>8 <d b>4 <d b>8
    b'16-. ais-. a-. gis-. fisis8 g(
    cis) b^>( dis,)-. e-. |
    r8 <cis e>4 <cis e>8 ~ \mBreak
    <cis e>8 <cis e>4 <cis e>8
    cis'16-. c-. b!-. ais-. gisis8-. a^>( |
    d) cis^>( eis,-.) fis-. |
    b16-. cis-. d-. e-. fis8-. \noBeam <g d b g>^>
    \sup eis,8^> eis' fis,^> fis' \mBreak
    \sneutral b,16-. cis-. d-. e-. fis8-. \noBeam <g d b g>^>
    \sup eis,8^> eis' fis,^> fis'
    \sneutral d16-. e-. fis-. g-. a8-. \noBeam <bes f d bes>^> 
    \sup gis,^> gis' a,^> a' |
    \sneutral d,16-. e-. fis-. g-. a8-. \noBeam <bes f d bes>^> \mBreak
    \sup gis,8^> gis' a,^> a' 
    gis,8^> gis' a,^> a' 
    bes,^> bes' e,,^> e'
    g,^> g' bes,,^> bes'
    d,^> d' a,^> a' |
    \sneutral
    \clef bass r4 dis,,16( e gis a) \mBreak
    %Ende S. 9
    \clef treble r4 dis16( e gis a)
    \sup r4 dis16( e gis a)
    r4 dis16( e gis a)
    %Ab hier Teil A
        }


%Mittelteil
upperc = \relative c'{
    \sneutral e16-. d-. bes-. a-. g8 r
    r4 <d' e>^> ~ 
    <d e>8 <cis e a>^>[ <d a' d>^>] r 
    \bar "|:" %\mark \markup{\bold "L'istesso tempo."}
    s4*0^\markup{\bold "L’istessto tempo."}
    \sup <d' d'>2_>
    <c c'>2_>
    <a a'>8.^>( <bes bes'>16) s4
    \sneutral <a e bes>4^>( <f a,>8) r8
    r8 <c a> \sup f[( e
    d e] f4) \mBreak
    \sneutral
    <f a c>8^> r8 <c bes>4 ~ (
    <c bes> <c! a>8-.) r8
    r8 d([ <a' cis> d)]
    r d,([ <bes' cis> d)]
    r e,([ <b' dis> e)]
    r e,([ <a cis dis> e')]
    \bar ":|" \mBreak
    \sup <f f'>2_>
    <g, g'>_>
    <c c'>8.^> <b b'>16 s4
    <f f'>8.( <e e'>16 d'8) \sneutral r
    \sup
    r8 d,( g[ fis 
    e fis] g) \sneutral r \mBreak
    \sup r d'( g[ fis
    e fis] g) \sneutral r
    \sup <g g'>2_>
    <a, a'>_>
    <d d'>8.^> <cis cis'>16 s4
    <g g'>8.^> <fis fis'>16 s8 \sneutral r \mBreak
    \sup r8 d( g[ fis 
    e fis] g) r
    r e'( a[ gis
    fis gis] a) \sneutral r
    r16 e([ a e')] <d, e gis>4
    r16 c([ e a)] <b, d e>4 \mBreak
    %Ende S. 11
    r16 e([ a e')] <d, e gis>4
    r16 c([ e a)] <b, d e>4
    a'16( e' fis e) gis,( e' fis e)
    b( e fis e) cis( e fis e)
    a,,16( e' fis e) gis,( e' fis e) \mBreak
    \sup
    b( e fis e) cis( e fis e) |
    a,( cis d cis) r a([ cis a])
    r e[( a e)] cis( e fis e)
    \m a,( cis d cis) r a([ cis a)]
    r e([ a e)] r cis([ e cis)] \mBreak
    r cis([ e cis]) r cis([ e cis])
    r cis([ e cis]) r cis([ e cis])
    r4 dis16( e gis a)
    \sneutral
    \u r4 dis16( e gis a)
    \sup
    \m r4 dis16( e gis a) \mBreak
    \u r4 dis16( e gis a)
    %Ab hier Teil A
}

%Coda/zweite Schlussvariante
upperd = \relative c'' {
    \sneutral e16-. d-. bes-. a-. g8-. r
    e16-. d-. bes-. a-. \m \sup g8-. r \mBreak
    e16-. d-. bes-. a-. g8-. \sneutral r
    \u R2 R2
    \clef bass <d' e d' e> ~
    <d e d' e>
    R \mBreak
    R
    \clef treble <d' e d' e> ~
    <d e d' e>
    <d' e d' e> ~
    <d e d' e>
    R2^\fermataMarkup
    g8-. g-. g16( a bes g)
    gis8-. a-. <d fis, d>-.-> r8\fermata
    \bar "|."
    %Fine
}

%Oberstimme: Unten
%Teil A
middlea = \relative c''{\sdown
    <fis d>8( a,) <d bes>( e,) |
    <fis' d>8( a,) <d bes>( e,) |
    s2
    <g d'>4 cis8( a)
    <fis' d>8( a,) <d bes>( e,) | \mBreak
    <fis' d>8( a,) <d bes>( e,) |
    s2
    s2
    s2 \mBreak
    s4 d
    d es
    f es
    s4 e
    s f \mBreak
    e f
    g f
    e f 
    a g 
    fis g \mBreak
    b a 
    c b 
    c b
    s2
    %Ab hier TeilB/D
}

%Erste Schlussvariante
middleb = \relative c' {\sdown
    s2
    s
    s
    s
    cis4 d
    cis d
    g fis
    s2
    cis4 d
    cis d
    g fis \mBreak
    s2*9
    eis4 fis
    s2
    eis4 fis
    s2
    gis4 a
    s2 \mBreak
    gis4 a
    gis a
    bes e,
    g bes,
    d a
    s2 \mBreak
    %Ende S.9
    s2*3
    %Ab hier Teil A
}

%Teil B
middlec = \relative c'' {
    s2*3
    \sdown \slurUp fis4( g)
    e( f)
    f <f g g,>
    s2
    \slurDown
    s4 bes,,4 ~
    bes a \mBreak
    s2*6 \mBreak
    \sdown \slurUp cis''4( d)
    dis,( e) \slurDown
    gis( \stemUp <a a,>) \stemDown
    cis,( \stemUp <d d,>8) s \stemDown
    r4 c,~
    c <d bes>8 s \mBreak
    r4 c' ~ 
    c <d bes>8 s
    \slurUp
    dis'4( e)
    eis,( fis)
    \slurDown
    ais( \stemUp <b b,>4)
    \stemDown dis,4( \stemUp <e e,>8) s \mBreak
    \stemDown r4 d,~ d <e c>8 s
    r4 d' ~
    d <e c>8 s
    s2*2
    %Ende S. 11
    s2*16
    %Ab hier Teil A
}

%Zweite Schlussvariante
middled = \relative c' {
}

%Unteres System:
%Unterstimme: oben
initlower = {
        \clef bass
        \key d \major
        \time 2/4
}
%Erster Teil
lowera = \relative c' {
    \sup a8( d) bes( d)
    a( d) bes( d)
    \sneutral \clef treble <c d fis a>2->
    \clef bass bes16-. a-. g-. fis-. e8( a)
    \sup
    a( d) bes( d) \mBreak
    a( d) bes( d) 
    \sneutral
    \clef treble <c d fis a>2->
    <bes d>16-. r bes-. a-. g8-.^> r
    \sup
    \clef bass es8( bes') as4-> \mBreak
    f8( c') bes4^>
    g4 g
    g g
    g8( d') c4^>
    a8( e') d4^>
    a8( cis) a4
    a a
    a a 
    b b 
    b b \mBreak
    cis cis 
    d d 
    d d 
    \sneutral \clef treble <g bes d>8 r8 e'16-. d-. bes-. a-. |
    %Ab hier Teil B/D
}
	
%Erste Schlussvariante
lowerb = \relative c'' {\sneutral
    g8 r \clef bass e,16-. d-. bes-. a-. \mBreak
    g8-. g-. gis16( a bes gis)
    a8-. <a g'>^>[ <d fis>^>] r \bar "||"
    \sneutral r4 <b' d fis>8 r
    fis16-. e-. d-. cis-. b8-. r
    \sup b'4 b
    b b
    \sneutral r4 <b d fis>8 r
    fis16-. e-. d-. cis-. b8-. r
    \sup b'4 b
    b b \mBreak
    \sneutral b,16-. cis-. d-. e-. eis8-. fis^>(
    a-.) gis^>( g) fis-. |
    \sup r8 <b d>4 <b d>8
    r <gis b e>8 r <e a cis>
    \sneutral cis16-. d-. e-. fis-. g8-. gis^>( \mBreak
    b) ais^>( a)-. gis-.
    \sup r8 <cis e>4 <cis e>8 |
    e,( <ais cis fis>) d,( <fis b d>)
    \sneutral b,16-. cis-. d-. e-. fis8-. \noBeam <g d b g>^>
    \sup eis,^>( eis') fis,^>( fis') \mBreak
    \sneutral b,16-. cis-. d-. e-. fis8-. \noBeam <g d b g>^>
    \sup eis,^>( eis') fis,^>( fis') 
    \sneutral d16-. e-. fis-. g-. a8-. \noBeam <bes f d bes>^>
    \sup gis,^>( gis') a,^>( a')
    \sneutral d,16-. e-. fis-. g-. a8-. \noBeam <bes f d bes>^> \mBreak
    \sup gis,^>( gis') a,^>( a')
    gis,^>( gis') a,^>( a')
    bes,^>( bes') e,,^>( e')
    g,^>( g') bes,,^>( bes')
    d,^>( d') a,^>( a')
    \sneutral gis16( a bis cis) r4
    %Ende S. 9
    gis'16( a bis cis) r4
    \u gis'16( a bis cis) r4
    gis'16( a bis cis) r4
    %Ab hier Teil A
    \m
}

%Mittelteil
lowerc = \relative c'' {\sneutral
    g8 r \clef bass e,16-. d-. bes-. a-.
    g8-. g-. gis16( a bes gis)
    a8-. <a g'>->[ <d fis>->] r
    \bar "|:" \sup
    <bes bes'>2_>
    <c c'>_>
    \sneutral <cis a' cis>4->( <d bes' d>)
    <c g'>->( <c f,>8) r
    <f, f,> r <f c' g'>4( ~
    <f c' g'> <f c' f>) \mBreak
    r8 c'(_\markup{\italic marcato} f[ e
    d e] f) r
    a( d, f,) r
    bes'( d, g,) r
    b'( e, gis,) r
    cis'( e, a,) r
    \bar ":|" \mBreak
    \sup <a a'>4->( <bes bes'>)
    <b b'>->( <c c'>)
    c'2->
    \clef treble \sneutral a4->( bes8) r
    \clef bass \sup bes4( a ~ 
    a g8) \sneutral r \mBreak
    \clef treble \sup bes'4( a ~
    a g8) \sneutral r
    \clef bass \sup <b, b,>4(-> <c c,>)
    <cis cis,>(-> <d d,>)
    \clef treble <fis fis,>->( <g g,>)
    \sneutral b,->( c8) r \mBreak
    \clef bass \sup c4( b ~
    b a8) \sneutral r
    \clef treble \sup c'4( b ~
    b a8) \sneutral r
    \sup c4->( b)
    a->( gis) \mBreak
    %Ende S. 11
    c4->( b)
    a->( gis)
    r8 cis-.[ d-.] r
    r gis,-.[ a-.] r
    r \clef bass cis,-.[ d-.] r \mBreak
    r gis,-.[ a-.] s |
    s2
    s
    s
    s \mBreak
    s
    s
    s
    s
    s \mBreak
    s 
    \voiceOne \clef bass
    %Ab hier Teil A
}

lowerd = \relative c'' {\sneutral
    g8-. r e16-. d-. bes-. a-. 
    g8-. r \sdown \clef bass e16-. d-. bes-. a-. \mBreak
    g8-. r e16-. d-. bes-. a-.
    \sneutral
    g8-. g-. g16( a bes g)
    a8-. a-. bes->( g)
    r4 <g g'>(\<
    <a a'> <bes bes'>)\!
    g'8-. g-. g16( a bes a) \mBreak
    a8-. a-. bes->( g)
    r4 <g g'>(\<
    <a a'> <bes bes'>)\!
    \clef treble r4 <g' g'>(\<
    <a a'> <bes bes'>)\!
    R2^\fermataMarkup
    \clef bass g,8-. g g16( a bes g)
    gis8-. a-. <d a d,>-.-> r8\fermata
    \bar "|."
    %Fine
}


%Unteres System:
%Unterstimme: unten
bassa = \relative c {
    \sdown <d fis>4 <d g>
    <d fis> <d g>
    s2
    s2
    <d fis>4 <d g>
    <d fis> <d g>
    s2
    s2
    <es g,>4 as8( <es as>) \mBreak
    <f a,>4 bes8( <f bes,>)
    <g b,>8( b) <g c,>( c)
    <g d>( d') <g, c,>( c)
    <g b,>4 c8( <g c,>)
    cis,4 d'8( <a d,>) \mBreak
    <a cis,>4 <a d,>8( d)
    <a e>( e') <a, d,>( d)
    <a cis,>( cis) <a d,>( d)
    <b dis,>( dis) <b e,>( e)
    <b dis,>( dis) <b e,>( e) \mBreak
    <cis eis,>( eis) <cis fis,>( fis)
    <d fis,>( fis) <d g,>( g)
    <d fis,>( fis) <d g,>( g)
    s2
    %Ab hier Teil B/D
}

bassb = \relative c' {
    \sdown s2*5
    g8( b,) fis'( b,) \mBreak
    <e g>( b) <d fis>( b)
    s2
    s
    g'8( b,) fis'( b,)
    <e g>( b) <d fis>( b) \mBreak
    s2
    s
    f'4( e 
    d cis)
    s2 \mBreak
    s
    g'4( fis e d)
    s2
    eis,4 fis \mBreak
    s2
    eis4 fis
    s2
    gis4 a
    s2 \mBreak
    gis4 a
    gis a
    bes e,
    g bes,
    d  a
    s2 |
    %Ende S. 9
    s2*3
    %Ab hier Teil A
}

bassc = \relative c {
    \sdown
    s2*3
    \slurUp fis4( g)
    gis( a)
    s2*10 \mBreak
    f2
    g
    \slurUp <e e'>4( <f f'>)
    s2
    R
    d4 ~ <d g,>8 s \mBreak
    R2 \slurDown 
    d'4 ~ <d g,>8 s
    g,2
    a
    d
    s \mBreak
    R2
    e,4 ~ <e a,>8 s
    R2
    e'4 ~ <e a,>8 s
    r4 r8 <e a,>-.
    r4 r8 <e a,>-.
    %Ende S. 11
    \sdown r4 r8 <e a,>
    r4 r8 <e a,>
    a, r r e'-.[
    a,-.] r r e'-.[
    a,-.] r r e-.[ \mBreak
    a,-.] r r cis' \set followVoice = ##t 
    \u fis4_>( f8-.) e-.
    \set followVoice = ##f
    d-. cis-. \m \sneutral a,-. cis 
    \sdown fis4_>( f8-.) e-.
    d-. cis-. b-. a-. \mBreak
    gis-.[ a-. b-. a-.]
    gis-.[ a-. b-. a-.]
    gis16( a bis cis) r4
    gis'16( a bis cis) r4
    \clef treble gis'16( a bis cis) r4 \mBreak
    gis'16( a bis cis) \sneutral r4
    %Ab hier Teil A
    \sdown \clef bass
    <d,,, fis>4 <d g>
    <d fis> <d g>
    s2
    s2
    <d fis>4 <d g>
    <d fis> <d g>
    s2
    s2
    <es g,>4 as8( <es as>) \mBreak
    <f a,>4 bes8( <f bes,>)
    <g b,>8( b) <g c,>( c)
    <g d>( d') <g, c,>( c)
    <g b,>4 c8( <g c,>)
    cis,4 d'8( <a d,>) \mBreak
    <a cis,>4 <a d,>8( d)
    <a e>( e') <a, d,>( d)
    <a cis,>( cis) <a d,>( d)
    <b dis,>( dis) <b e,>( e)
    <b dis,>( dis) <b e,>( e) \mBreak
    <cis eis,>( eis) <cis fis,>( fis)
    <d fis,>( fis) <d g,>( g)
    <d fis,>( fis) <d g,>( g)
    s2
    %Ab hier Schlussteil 
    s2*16 \bar "|."
}

%Dynamic-Linie
%Teil 1
dynamica = {
    s2\f
    s2*5
    s2\<
    s4 s4\ff
    s8_\markup{\italic "cresc."} s8 _\markup{\italic "poco"} s4
    s8_\markup{\italic "a poco"} s4.
    s8 s8\< s4
    s8\sf s8\> s8 s8\!
    s2\p
    s8 s8_\markup{\italic "cresc."} s4
    s4 s\<
    s4\sf s8\> s8\!
    s8\< s8_\markup{\italic "sempre cresc."} s8 s8\!
    s8\sf s8\> s8 s8\!
    s2\f
    s\sf
    s\sf
    s\sf
    s\ff
    %Teil B/C
}

%Mittelteil Teil
dynamicb = {
    s2
    s
    s
    s\f
    s
    s8\p s8.\< s16\! s8
    s8\sf s\> s4\!
    s2\f
    s
    s8\p s\< s4\!
    s8\sf s8\> s4\!
    s2\p
    s
    s-\markup{\italic "cresc."}
    s
    s\p
    s
    s-\markup{\italic "cresc."}
    s
    s\f
    s
    s
    s
    s2*8
    s2\p-\markup{\italic "brillant"}
    s4 s-\markup{\italic "cresc."}
    s8\< s4 s8\!
    s2\ff
}

%Nach Teil eins in die Coda
dynamicc = {
	%Fine
	s2
	s
	s
	s2\f
	s
	s
	s
	s\p
	s
	s\sfp
	s
	s\<
	s-\markup{\italic "cresc."}
	s
	s16\! s16\f s4.
	s2\f
	s
	s
	s
	s\p
	s
	s
	s
	s\f
	s
	s
	s
	s\p
	s
	s
	s
	s\p
	s
	s
	s
	s\p
	s
	s
	s
	s\mf
	s
	s4 s-\markup{\italic "dim."}
	s2
	s\p
	s
	s4-\markup{\italic "cresc."} s4-\markup{\italic "brillante"}
	s2
	s\<\f
	s\ff
	s4\f s4
	s2
	s
	s
	s
	s
	s\<
	s4 s\ff
	s2\p
	s4-\markup{\italic "cresc."} s4-\markup{\italic "poco"}
	s4-\markup{\italic "a"} s-\markup{\italic "poco"}
	s8\sf s\> s4
	s2\p
	s-\markup{\italic "cresc."}
	s\<
	s4\sf\> s4
    s8\< s8_\markup{\italic "sempre cresc."} s8 s8
    s8\sf\> s4.
    s2\f\<
    s\sf\>%mbreak
    s\sf\<
    s\sf\>
    s\ff
    s
    s
    s
    s\>
    s
    s\mf
    s
    s\p
    s
    s\p
    s
    s\pp
    s
    s
    s\fff
    s
}


\score {
        \new PianoStaff <<
	\set PianoStaff.instrumentName = "Piano"
        \new Staff = "upper"  <<
              \new Voice =
                "oben" { \voiceOne {\initupper \uppera \upperb   \uppera  \upperc \uppera \upperd}  }
              \new Voice =
                "unten" { \voiceTwo {\middlea \middleb  \middlea \middlec \middlea} }
	% \new Voice = "Dynamics" { \voiceFour { \dynamica \dynamicb \dynamica \dynamicc } }
	    >>
	\new Dynamics = "dynamics" { \dynamica \dynamicb \dynamica \dynamicc }
	\new Staff = "lower" << 
	    \new Voice = "obena" \voiceOne {\initlower \lowera \lowerb  \lowera \lowerc \voiceOne \lowera \lowerd}
	    \new Voice = "untena" \voiceTwo {\bassa \bassb \bassa \bassc }
        >>
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
           
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
           \override DynamicLineSpanner #'Y-offset = #0
           pedalSustainStrings = #'("Ped." "*Ped." "*")
           pedalUnaCordaStrings = #'("una corda" "" "tre corde")
           
           \consists "Piano_pedal_engraver"
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
           
           %\override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           
           \consists "Skip_event_swallow_translator"
           
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }



     }
     
