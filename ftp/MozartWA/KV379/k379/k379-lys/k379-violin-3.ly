% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

violinPartIII = \relative b' {
    \key g \major
    \time 2/4
    %\override Hairpin #'minimum-length = #5
    \noTupletBracket

    \set tupletSpannerDuration = #(ly:make-moment 1 8)
    \override Score.RehearsalMark
    #'break-visibility = #begin-of-line-invisible

    \repeat volta 2 {
	b4(-\p a
	| g fis)
	| e2
	| a4(-\( d,8) d-\)-.
	| b'4( a)
	| g8.( fis16 e fis g e)
	| g(-\( fis) fis( e)-\) e(-\( d) d( cis)-\)
	| cis8( d) d4
    }

    \repeat volta 2 {
	| r4 r8 \lowerDynamics e16.(-\f d32)-.
	| c!8[ gis''(-\p a)] r
	| r4 r8 \lowerDynamics d,,16.(-\f c32)-.
	| b8[ fis''(-\p g!)] r
	| g,4( c8 e)
	| g,4( b8 d)
	| r4 r8 c16( a)
	| fis8( g) g r
    }

    \break

    % Var. I

    \repeat volta 2 {
	| R2*7
    }

    \alternative {
	{
	    | R2
	}
	{
	    | R2
	}
    }

    \repeat volta 2 {
	| R2*7
    }

    \alternative {
	{
	    | R2
	}
	{
	    | R2
	}
    }

    \bar "|."
    \break

    % Var. II

    \repeat volta 2 {
	| \times 2/3 { b16[( c d)] d[(-. d-. d])-. \noTupletNum
		       d[-. d-. d]-. d e fis }
	| \times 2/3 { \raiseScript g(-\prall fis g b[) a-. g]-. 
		       \raiseScript fis[(-\prall eis fis] a[) g-. fis]-. }
	| \times 2/3 { fis([ dis e!] d![ b c] b[ gis a] e'[) cis(-. g!])-. }
	| \times 2/3 { fis[( g a] g[)-\prall fis-. e]-. 
		       d[ d'(-\> cis] c[ b a])-\! }
	\once \override DynamicText #'transparent = ##t % For MIDI output
	| \times 2/3 { b[(-\p c d)] d[(-. d-. d])-. d[-. d-. d]-. d e fis }
	| \times 2/3 { g[( a b)] b[(-. b-. b])-. b[( gis a)] a[( fis g)] }
	| \times 2/3 { g[( eis fis)] fis[( dis e]) e[( cis d]) d[( b cis)] }
	| e4( d8) r
    }

    \repeat volta 2 {
	| R2
	| \times 2/3 { r16 gis[(-\p a] dis,[ fis e] 
		       b[ d c!] gis[ b a]) }
	| R2
	| \times 2/3 { r16 fis'[(-\p g!] cis,[ e d] a[ c b] fis[ a g]) }
	| \times 2/3 { e'[(-\< fis g]) g[-. g-. g]-. } 
	  g8*1/2(-\!-\trill \veryTiny \stemUp fis16*1/2[ g16*1/2]) \normalsize \stemNeutral r8
	\once \override DynamicText #'transparent = ##t % For MIDI output
	| \times 2/3 { b16[(-\<-\p a g]) g[-. g-. g]-. } 
	  g8*1/2(-\!-\trill \veryTiny \stemUp fis16*1/2[ g16*1/2]) \normalsize \stemNeutral r8
	| \times 2/3 { g16[(-\p dis e] g[) fis(-. e]-. d[-. e-. d])-.
		       \acciaccatura d16 c[-. b(-. a])-. }
	| a4( g8) r \tupletNum
    }

    \break

    % Var. III

    \repeat volta 2 {
	| g8[-.-\f b'( a d)]
	| e,,[-. g'( fis b)]
	| c,,[-. e'( a g)]
	| fis16( a32) r cis,16( e32) r d16-. c!( b a)
	| g8[-. b'( a d)]
	| e,,[ g' cis,, b'']
	| b16( a32) r a16( g32) r g16( fis32) r fis16( e32) r
	| d8 r r4
    }

    \repeat volta 2 {
	| <d, d'>8.\noBeam d'64( e f g a8) b8*1/2(-\trill 
	  \veryTiny \stemUp a16*1/2[ b16*1/2] \normalsize \stemNeutral
	| c8[) d-. e]-. r
	| <g,,, es' c'>8.\noBeam c'64( d es f g8) a8*1/2(-\trill
	  \veryTiny \stemUp g16*1/2[ a16*1/2] \normalsize \stemNeutral
	| b8[) c-. d]-. r
	| c,, g'[( c e)]
	| b, g''[( b d)]
	| d16( e,32) r c'16( a32) r a16( g32) r g16( fis32) r
	| g8 r r4
    }

    % Var. IV

    \key g \minor
    \break

    \repeat volta 2 {
	| r4 r8 d(-\f ~
	| d c4 bes8)
	| a8.( bes16) c8( cis)
	| d( bes \times 2/3 { a16)[ es(-. d]-. c![-. bes-. a])-. }
	| g4 r8 d''8-\( ~
	| d[( cis16.) e32]-.-\) e8[(-\( d16.) c32]-.-\)
	| bes8 f4 g16.(-\> e32)
	| d8-\! r r4
    }

    \repeat volta 2 {
	| R2
	\once \override DynamicText #'transparent = ##t % For MIDI output
	| es8(-\f d c bes
	| a) fis'4( es'8)
	| d( c) bes[( \times 2/3 { b16) c-. d]-. }
	| es[( c)] c8-. r16 g( c[ es])
	| d[( bes]) bes8-. r16 g( bes[ d])
	| \times 2/3 { es[(-\(-\> c a]) ~ a[( es c)]-\) } bes8( d16 c)-\!
	| bes4-\p r
    }

    \key g \major
    \break

    % Var. V

    \repeat volta 2 {
	| r16 \raiseText d^\markup { \italic "pizzicato" } g-\p b r d, fis a
	| r b, e g r d g b
	| r c, e a r cis, e a
	| r a, d fis d a d fis
	| r d g b r d, fis a
	| r cis, e a r e g a
	| r a b g r fis g e
	| r \repeat unfold 3 <a, g'> <a fis'>8 r
    }

    \repeat volta 2 {
	| r16 a-\f d f e e' gis,, d''
	| c8 r r4
	| r16 c,-\f es g d d' d, fis'
	| g8 r r4
	| r16 g,,-\p c e r g c e
	| r g,, b d r g b d
	| r e, c' a r g a fis
	| r \repeat unfold 3 <c d> <b d>8 r
    }

    \break

    % Thema

    \repeat volta 2 {
	| b'4(-\p^\markup { "arco" } a
	| g fis)
	| e2
	| a4(-\( d,8) d-.-\)
	| b'4( a)
	| g8.( fis16 e fis g e)
	| g(-\( fis) fis( e)-\) e(-\( d) d( cis)-\)
	| cis8( d) d4
    }

    \repeat volta 2 {
	| r4 r8 \lowerDynamics e16.(-\f d32)-.
	| c!8[ gis''(-\p a)] r
	| r4 r8 \lowerDynamics d,,16.(-\f c32)-.
	| b8[ fis''(-\p g!)] r
	| g,4( c8 e)
	| g,4( b8 d)
	| r4 r8 c16(-\p a)
    }

    \alternative {
	{
	    | fis8( g) g r
	}
	{
	    | g4 r8 b(-\f
	}
    }

    | a4) r8 a(
    | g4) r8 g16( f)
    | e8[ e'16( c]) c(-\prall b) b(-\prall a)
    | g4 r8 b(
    | a4) r8 a(
    | g4) r8 g16( f)
    | e8[ e'16( c]) c(-\prall b) b(-\prall a)
    | g8 r d'8.( e32 fis
    | g16) r e( c) b( d) c( a)
    | g8 r d'8.( e32 fis
    | g16) r e( c) b( d) c( a)
    | g8 r g'8.( a32 b)
    | c16( a) e8( ~ e16 g fis a)
    | g8 r g,8.( a32 b)
    | c16( a) e8( ~ e16 g fis a)
    | g8 r b-\p r
    | g r r4

    \mark \markup { \musicglyph #"scripts.ufermata" }
    \bar ":|"
}
