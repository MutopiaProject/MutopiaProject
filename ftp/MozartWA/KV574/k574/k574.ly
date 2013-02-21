% Wolfgang Amadeus Mozart (1756-1791)
% Little Gigue in G Major for Piano K. 574
% ========================================
%
% To compile this file, you need Lilypond 2.4.2 or better.
% Use the following command:
%
%   lilypond -f ps k574.ly

\version "2.16.1"


#(set-global-staff-size 17)

\header {
    title = "Gigue in G Major"
    composer = "W. A. Mozart (1756­1791)"
    opus = "KV 574"
    meter = "Allegro."
        
    mutopiatitle = "Gigue in G Major"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV 574"
    mutopiainstrument = "Piano"
    date = "1789"
    source = "Breitkopf und Härtel edition (1880s)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    
 footer = "Mutopia-2013/02/21-239"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

voiceI = \new Voice = "one" \relative g'' {
    \voiceOne
    \repeat volta 2 {

        \partial 8
        d8 | % NOT d8-.
        b-. g-. g'( fis) cis-. d-. |
        f( e) gis,-. a-. c-. b-. |
        a-.[ r fis'(] e) d'-. cis-. |  % NOT e)-.
        e,( dis) a'-. g-. cis,-. d-. |
        r4 cis8( d) g-.( fis)-. |
        b,4 d8 c-. fis,-. g-. ~ |
        g a4 ~ a8 b4 ~ |
        b8 c4 ~ c8 d4 ~ |
        \oneVoice d8 b( e) b'-. cis,( fis) |
        cis'-. d,( g) d'-. e,-. a-. |
        fis-. d-. d'( cis) gis-. a-. |
        \voiceOne a4. a4. |
        <d, a'>4. <e a> |
        <es a> <d a'> |
        <es g> <e g>4 fis8 |
        b,!( e) cis-. d-. r8
    }

    \break

    \repeat volta 2 {
	\oneVoice

        r8 |
	r4 r8 r4 a8-. |
	\stemUp c!-. e-. e,( dis) g-. fis-. | % We use \stemUp to match the original edition
	r4 r8 r4 \stemNeutral b8-. |
	d!-. fis-. fis,( eis) a-. gis-. |
	b( ais) e'!-. dis-. a'!( gis) |
	d'!-. cis-. g!( fis) c'-. b-. |
	f!( e) d-. c-. g'-. b,-. |
	
	a-. e'-. g,-. fis( a) d-. |
	bes-. g-. g'( fis) cis-. d-. |
	f( e) gis,-. a-. c!-. a-. |
	e'( d) fis,-. g!-. d'-. bes-. |
	bes'( a) cis,-. \voiceOne d-. d'-. d-. |
	d4. d4. |
	<g, d'>4. <a d> |
	<as d> <g d'> |
	<as c> <a c>4 b!8 |
	e,!8-. a-. fis( g) b-. g( |
	fis) d'-. f,( e) c'-. <c, es>( |
	<b d>) b'-. <gis, d'>( <a cis>) a'-. <fis,! c'>( |
	<g! b>) g'-. dis,( \oneVoice e) g-. d( |
	cis) a'-. c,( b) g'-. e-. |
	c[-. a-.] <a' d fis-.>8 <b d g>4
    }
}


voiceII = \new Voice \relative g' {
    \repeat volta 2 {
	\voiceTwo

        \partial 8
        d8\rest |
        R2. |
        r4 r8 r4 g8 |
        fis-. d d'( cis) gis-. a-. |
        c( b) dis,-. e-. g!-. fis-. |
        s4 a8 a4. ~ |
        a8( gis) e ~ e-. es-. d-. |
        e4 eis8 fis4. |
        g4 gis8 a4 ais 8 |
        \context Voice = "one" b8 \change Staff = Down \voiceOne r8 b, e4 cis8 |
        fis4 d8 g4 e8 |
        fis8 r gis a r a |
        \change Staff = Up \voiceTwo fis-. d-. d'( cis) gis-. a-. |
        a4. a4. |
        a4. bes4. |
        bes4. a8( cis) d |
        r4 e,8 fis s8
    }

    \repeat volta 2 {
        s8 |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s4. r4 d'8 |
	b!-. g-. g'( fis) cis-. d-. |
	d4. d4. |
	d4. es4. |
	es4. d8( fis!) g-. |
	r4 a,8 b r <cis e>8( |
	d) r <b d>( c!) r fis,( |
	g) r f( e) r es( |
	d) s4 s4 s8 |
	s2. |
	s4 s8 s4
    }
}


voiceIII = \new Voice \relative g' {
    \repeat volta 2 {
        \partial 8
        r8 |
        R2. | R2. | R2. |
        r4 r8 r4 d8-. |
        b-. g-. g'( fis) cis-. d-. |
        f( e) gis,-. a-. c!-. b-. |
        c-. c,-. a-. d-. d'-. b-. |
        e-. e,-. c-. fis-. fis'-. d-. |
        g-. \clef violin \voiceTwo g,4 ~ g8 a4 ~ |
        a8 b4 ~ b8 cis4 |
        d8 r b a r4 |
        \clef bass \oneVoice r4 r8 r4 a8-. |
        f-. d-. d'( cis) gis-. a-. |
        c!-. fis,-. a-. bes,-. bes'-. g!-. |
        es-. g-. d-. cis-. a-. b!-. |
        g-. e-. a-. d,-. r
    }

    \repeat volta 2 {
        a''8-. |
	fis-. d-. d'( cis) gis-. a-. |
	r4 ais,8( b4) b'8-. |
	g!-. e-. e'( dis) ais-. b-. |
	r4 r8 r8 bis-. cis-. |
	g!( fis) ais-. b!-. f( e) |
	bes-. a!-. es'( d) as'-. g-. |
	b!( c!) d-. e4 d8 |
	c4 cis8 d4 r8 |
	<d, g bes>4 r8 <d fis a>4 r8 |
	<d gis b!>4 r8 <d a' c>4 r8 |
	<d fis a c>4 r8 <d g! bes>4 r8 |
	<d g a cis>4 r8 <d fis a d>8 r r |
	r4 r8 r4 d'8-. |
	bes-. g-. g'( fis) cis-. d-. |
	f-. b,-. d-. es,-. es'-. c!-. |
	as-. c-. g-. fis( d) e!-. |
	c-. a-. d-. <g, g'>4. |
	<g g'> <g g'> |
	<g g'> <g g'> |
	<g g'>8[ r <dis dis'>]( <e e'>) g'-. <d, d'>( |
	<cis cis'>)[ r <c c'>]( <b b'>) <g'-. g'> <e-. e'> |
	<c-. c'> <a-. a'> <d-. d'-.> <g, g'>4
    }
}


\score {
    \context PianoStaff <<
        \context Staff = Up <<
	    \set midiInstrument = #"acoustic grand"
	    \time 6/8 \key g\major
	    
	    \voiceI
	    \voiceII
	>>

	\context Staff = Down <<
	    \set midiInstrument = #"acoustic grand"

	    \time 6/8 \key g\major
	    \clef bass
	    
	    \voiceIII
	>>
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { 
	indent = 0\cm
    }
}
