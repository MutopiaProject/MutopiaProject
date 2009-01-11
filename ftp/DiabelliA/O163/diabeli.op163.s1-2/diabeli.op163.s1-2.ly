\version "2.10.10"
% $Revision: 1.4 $

\header {
    mutopiatitle = "Jugendfreuden - Sechs Sonatinen"
    mutopiacomposer = "DiabelliA"
    mutopiaopus = "Opus 163-1"
    mutopiainstrument = "Piano Duet"
    source = "Unknown"
    style = "Classical"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Alberto Simões"
    maintainerEmail = "ambs@cpan.org"
    maintainerWeb = "http://alfarrabio.di.uminho.pt/~albie"
    lastupdated = "2008/05/04"

 footer = "Mutopia-2008/10/09-1565"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

primoDynamics =  {
    % line 1
    s8\p s8-\markup{\italic{dolce}} s1 s8\> s8 s8\! s8 s2 s8\> s8 s8\! s8 s2 s8\> s8 s8\! s8 s2 s4\< s4 s4 s4\! 
    % line 2
    s4\> s4 s4\! s4 s4\< s2 s4\! s2\f s4 s4\p s1
    % line 3
    s1 s1\sf s1\sf s4\< s2 s4\! s8\f s8\> s8 s8\! s2
    % line 4
    s2\f s8\> s4 s8\! s1\p s1 s4\< s2 s4\! s4 s4\ff s4
    % line 5
    s16\p s16-\markup{\italic{dolce}} s8 s1 s8\> s4 s8\! s2 s1 s8\> s4 s8\! s2 s1
    % line 6
    s1 s2-\markup{\italic{cresc.}} s2 s1 s1\ff s1 
    % line 7
    s1 s2. s16\p s16-\markup{\italic{dolce}} s8 s1 s8\> s4 s8\! s2 s8\> s4 s8\! s2 s8\> s4 s8\! s2
    % line 8
	s8\< s4 s4 s4 s8\! s8\> s4 s4 s8\! s4 s8\> s4 s4 s4 s8\! s2\f s4 s4\p s1
	% line 9
	s1 s1\sf s1\sf s4\< s2 s4\! s8\f s8\> s8 s8\! s2
    % line 10
	s2\f s8\> s4 s8\! s1\p s1 s4-\markup{\italic{cresc.}} s8\< s4 s4 s8\! s4 s2\ff
}

primoUp =  {
    \time 4/4
    \clef treble
    \key c \major
    \relative c''' {
        \override Score.OttavaBracket   #'padding = #2
   	    #(set-octavation 1)
	    #(set-accidental-style 'modern)
	    \set fingeringOrientations = #'(left)

       \repeat volta 2 {
        %% line 1
	    \partial 4*1 e8([-3 f])-4
        g4.(-5 e8-3 c4)-1-. c-.
        d4.(-2 e8 d4) d8( e)
        g4.(-5 f8) e[(-3 f) d( e])
        c4.( d8 c4) c8[(-1 d16 e])
        f4-4-. f-. e-. d-.

        %% line 2
        g4(-5 \times 2/3 { f8 d e } c4) \times 2/3 { c8[(-1 d e] }
        \times 2/3 { f-4 g f } \times 2/3 {e d c} \times 2/3 {f-4 g f} \times 2/3 {e d c}
        e4)-2-. g-5-. r d8[-2 d]
        d[( e] d4) r d8[ d]

        %% line 3
        d8[( e] d4) r8 d[ d d]
        d16[( e d e]) d4 r8 d[ d d]
        d16[( e d e]) d4 r d8[-2 d]
        e4-. e-. e-. e-.
        e4. e8 e[( d) d-. d]-.

        %% line 4
        d4-2 e8[( fis16 g]) g8[( d) d-. d]-.
        d4 r8 g-.-5 fis[(-4 d])-2 r d-.
        d[( g]) r g-. fis[(-4 d]) r d-.
        d[(-2 g]) fis[(-4 e16 fis]) g8[( d]) fis[( e16 fis]
        \partial 4*3 g4) g g
      }
 
      % line 5
      \partial 4*1 g8[(-5 f])
      ees4.(-3 d8 ees4) ees
      f4.(-4 g8 f4) f8[( ees])
      d4.-2 d8 ees[( d c d])
      ees4.(-3 f8 g4) g8[ g]
      f4.(-4 g8 f4) f8[ f]

      % line 6
      ees4.(-3 f8 ees4) ees8[-. ees]-.
      d4-2 r8 d e4 r8 e
      f4.(-4 ees8) ees([ d) d( c])
      d4 r8 g-5 f[( ees d c])
      d4 r8 g-5 f[( ees d c])

      % line 7
      g'4(-5 ees8[-3 c])-1 g'4( ees8[ c]
      g'2.\fermata  e8[(-3 f])
      g4.(-5 e8-3 c4)-1-. c-.
      d4.( e8 d4) d8(-2 e)
      g4.(-5 f8) e[( f) d( e)]
      c4.(-1 d8 c4) c8([-1 d16 e)]

		% line 8
		f4-4-. f-. e-. d-.
		g(-5 \times 2/3 {f8 d e} c4) \times 2/3 {c8(-1 d e}
		\times 2/3 {f-4 g f} \times 2/3 {e d c} \times 2/3 {f-4 g f} \times 2/3 {e d c}
		d4)-2-. g-. r f8[(-4 e])
		d[( e] d4) r e8[(-3 d])

		% line 9
		c8[( d] c4) r8 g'[-5-. f-. e]-.
		d16[(-2 e d e]) d4 r8 f[-4-. e-. d]-.
        c16[(-1 d c d]) c4 r4 c8[(-1 d])
        e4-. e-. e-. e-.
		g4.(-5 f8) g[( f) e( d])

        % line 10
		d4(-2 c8[)-1 e]-3-. g[(-5 f d e])
        c4 r8 e-3-. f[( d]) r d-2-.
		e[( c]) r e-3-. f[( d]) r d-2-.
		e[-3-. c]-1-. g'[(-5 f16 d]) e8[-3-. c]-. g'[(-5 f16 d])
		\partial 4*3 c4-1 <c-1 e-3> c-.

		\bar "|."
   }
}

primoDown =  {
    \time 4/4
    \clef treble
    \key c \major
    \relative c'' {
	    #(set-accidental-style 'modern)
	    \set fingeringOrientations = #'(left)
       \repeat volta 2 {
        %% line 1
	    \partial 4*1 e8([-3 f])-2
        g4.(-1 e8-3 c4)-5-. c-.
        d4.(-4 e8 d4) d8( e)
        g4.(-1 f8) e[(-3 f) d( e])
        c4.( d8 c4) c8[(-5 d16 e])
        f4-2-. f-. e-. d-.

        %% line 2
        g4(-1 \times 2/3 { f8 d e } c4) \times 2/3 { c8[(-5 d e] }
        \times 2/3 { f-2 g f } \times 2/3 {e d c} \times 2/3 {f-2 g f} \times 2/3 {e d c}
        e4)-4-. g-1-. r d8[-4 d]
        d[( e] d4) r d8[ d]

        %% line 3
        d8[( e] d4) r8 d[ d d]
        d16[( e d e]) d4 r8 d[ d d]
        d16[( e d e]) d4 r d8[-4 d]
        e4-. e-. e-. e-.
        e4. e8 e[( d) d-. d]-.

        %% line 4
        d4-4 e8[( fis16 g]) g8[( d) d-. d]-.
        d4 r8 g-.-1 fis[(-2 d])-4 r d-.
        d[( g]) r g-. fis[(-2 d]) r d-.
        d[(-4 g]) fis[(-2 e16 fis]) g8[( d]) fis[( e16 fis]
        \partial 4*3 g4) g g
       }

      % line 5
      \partial 4*1 g8[(-1 f])
      ees4.(-3 d8 ees4) ees
      f4.(-2 g8 f4) f8[( ees])
      d4.-4 d8 ees[( d c d])
      ees4.(-3 f8 g4) g8[ g]
      f4.(-2 g8 f4) f8[ f]

      % line 6
      ees4.(-3 f8 ees4) ees8[-. ees]-.
      d4-4 r8 d e4 r8 e
      f4.(-2 ees8) ees([ d) d( c])
      d4 r8 g-1 f[( ees d c])
      d4 r8 g-1 f[( ees d c])

      % line 7
      g'4(-1 ees8[-3 c])-5 g'4( ees8[ c]
      g'2.\fermata  e8[(-3 f])
      g4.(-1 e8-3 c4)-5-. c-.
      d4.( e8 d4) d8(-4 e)
      g4.(-1 f8) e[( f) d( e)]
      c4.(-5 d8 c4) c8([-5 d16 e)]

		% line 8
		f4-2-. f-. e-. d-.
		g(-1 \times 2/3 {f8 d e} c4) \times 2/3 {c8(-5 d e}
		\times 2/3 {f-2 g f} \times 2/3 {e d c} \times 2/3 {f-2 g f} \times 2/3 {e d c}
		d4)-4-. g-. r f8[(-2 e])
		d[( e] d4) r e8[(-3 d])

		% line 9
		c8[( d] c4) r8 g'[-1-. f-. e]-.
		d16[(-4 e d e]) d4 r8 f[-2-. e-. d]-.
        c16[(-4 d c d]) c4 r4 c8[(-4 d])
        e4-. e-. e-. e-.
		g4.(-1 f8) g[( f) e( d])

        % line 10
		d4(-4 c8[)-5 e]-3-. g[(-1 f d e])
        c4 r8 e-3-. f[( d]) r d-4-.
		e[( c]) r e-3-. f[( d]) r d-4-.
		e[-3-. c]-5-. g'[(-1 f16 d]) e8[-3-. c]-. g'[(-1 f16 d])
		\partial 4*3 c4-5 <c-5 e-3> <c e>

		\bar "|."

    }
}

secondoDynamics =  {
    s4 s1\p s1 s1 s1 s8\< s8 s4 s4 s8 s8\!
    % line 2
    s8\> s8 s8 s8\! s2 s8\< s8 s2 s8 s8\! s1\f s1\p s1 s1
    % line 3
    s1 s8\< s8 s2 s4 s4 s2 s8 s8\! s2\f s8\> s8 s8 s8\!
    % line 4
    s1\p s1 s8\< s8 s4 s4 s8 s8\! s4 s4\ff s4
    % line 5
    s4 s1\p s1 s1 s1 s1 s1
	% line 6
	s2-\markup{\italic{cresc.}} s2 s1 s1\ff s1 
	% line 7
	s1 s1 s1\p s1 s1 s1
	% line 8
	s4\< s4 s4 s4\! s8\> s4 s8\! s2 s8\< s4 s4 s4 s8\! s1\f s1\p s1
	% line 9
	s1 s1 s4\< s2 s2 s2 s4\! s2\f s8\> s4 s8\!
	% line 10
	s1\p s1 s4-\markup{\italic{cresc.}} s8\< s4 s4 s8\! s4 s2\ff
}

secondoUp =  {
    \time 4/4
    \clef treble
    \key c \major
    \relative c' {
	   #(set-accidental-style 'modern)
	   \set fingeringOrientations = #'(left)

       \repeat volta 2 {
           \partial 4*1 r4
           <c-3 e-5>8[( g <c e> g]) <c e>[( g <c e> g])
           <d'-4 f-5>[( g, <d' f> g,]) <d' f>[( g, <d' f> g,])
           <b-2 f'-5>[( g <b f'> g]) <b f'>[( g <b f'> g])
           <c-3 e-5>[( g <c e> g]) <c e>[( g <bes-3 c-4> g])
           a[(-2 c-4 aes-2 c]-4 g[-1 c-5 fis,-2 c'])-2

           % line 2
           \clef bass
           <f,-1 b-4>[( g b g]) e[(-1 g-2 <e c'-5> g])
           d'[(-5 g,-1 c-3 g]) d'[(-4 g, c-3 g])
           b4-2-. <g-1 b-2 d-3 g-5> r2
           r8 \clef treble d'8[( fis-2 a]-4 c4-5-> fis,8) r
           r d[( g-3 a]-4 b4-> g8) r
           r d[( fis-2 a]-3 c16[-5-> b a g]-1 fis8)-2 r
           
           % line 3
           r8 d[( g-3 a] b16[-5-> a g fis] g8) r
           r8 <e-1 g-3> r <e g> r <d e gis-4> r <d e gis>
           r8 <c e a-5> r <cis e bes'-4> r <d a'-4> r <c-1 d-2 a'-5>
           r8 <b d-2 g-5> r <bes e-3 g-5> r <b d-2 g-5> r <c d fis-4>

           % line 4
           b16[(-1 d-2 g-5 d]-2 b[ d g d] c[-1 d-2 fis-4 d]-2 c[ d fis d])
           b[( d-2 g-5 d] b[ d g d] c[ d-2 fis-4 d] c[ d fis d])
           <b g'-5>[( d-2 b-1 d]-4 c[-3 d-4 a-1 d])-4 b[(-3 d b d] c[-4 d a-1 d])
           \partial 4*3 b4-2 <b-1 d-2 g-5> <b d g> 
       }

       	% line 5
       	\partial 4*1 r4
       	g8[(-1 bes-2 ees-4 bes]) g[( bes ees bes])
       	aes[(-1 bes-2 f'-5 bes,]) aes[( bes aes bes])
       	aes[( bes-2 f'-5 bes,]) aes([ bes f' bes,)]
       	g[(-1 bes-2 ees-4 bes]) ees[( bes g bes])
       	g[(-1 b-2 f'-5 b,]) g[( b g b])
		g[( c-2 ees-4 c])-2 g[( c g b])

		% line 6
		r8 <aes c d-3> r <aes c d> r <bes c e-4> r <bes c e>
		r <c-2 f-5> r <c f> r <c-1 d-2 fis-4> r <c d fis>
		b16[(-1 d-2 g-5 d] b[ d g d]) c[(-1 ees-3 g-5 ees]) c[( ees g ees])
		b[(-1 d-2 g-5 d] b[ d g d]) c[(-1 ees-3 g-5 ees]) c[( ees g ees])

		% line 7
		b[( d-2 g d]) c[( ees-3 g ees]) b[( d-2 g d]) c[( e-3 g e])
		<b-1 d-2 g-5>2.\fermata r4
		\clef bass
		<c-3 e-5>8[( g <c e> g]) <c e>[( g <c e> g])
        <d'-4 f-5>[( g, <d' f> g,]) <d' f>[( g, <d' f> g,])
		<b-2 f'-5>[( g <b f'> g]) <b f'>[( g <b f'> g])
		<c-3 e-5>[( g <c e> g]) <c e>[( g <bes-3 c-4> g])

		% line 8
		a[(-2 c-4 aes-2 c]-4 g[-1 c-5 fis,-2 c'])-5
        <f,-1 b-4>[( g b g]) e[(-1 g-2 <e c'-5> g])
		d'[(-5 g,-1 c-3 g]) d'[(-4 g, c-3 g])
		b4-2-. <g-1 b-2 d-3 g-5>-. r2
		r8 g[( b-2 d]-4 f4-> b,8) r
		r8 g[( c-3 d]-4 e4-> c8) r

		% line 9
		r8 g[( b-2 d]-3 f16[-5 e d c] b8) r
		r8 g[( c-3 d]-4 e16[-5 d c b] c8) r
		r8 <g c-3 e-5> r <g c e> r <a cis-2 e> r <a cis e>
		r8 <a d-3 f-5> r <a d f> r <a d f> r <a d f>
		r8 <g c-2 e-4> r <g c e> r <g b-2 f'-5> r <g b f'>

		% line 10
		g16[( c-2 e-4 g]) g,[( c e g]) g,[( d'-2 f-4 g]) g,[( d' f g])
		g,16[( c-2 e-4 g]) g,[( c e g]) g,[( d'-2 f-4 g]) g,[( d' f g])
		g,16[( c-2 e-4 g]) g,[( b-2 d-3 g]) g,[( c-2 e-4 g]) g,[( b-2 d-3 g])
		\partial 4*3 <g, c e-4>4 <g c e-4 g-5>-. <g c e-4>-.

		\bar "|."
    }	
}	

secondoDown =  {
    \time 4/4
    \clef bass   
    \key c \major
    \relative c, {
	  #(set-accidental-style 'modern)
	  \set fingeringOrientations = #'(left)

      \repeat volta 2 {
          \partial 4*1 r4
          c r c' r
          b, r b' r
          g, r g' r
          c, r c' r
          <c, c'>1

          % line 2
          <c c'>1
          <b b'>4-. <c c'>-. <b b'>-. <c c'>-.
          g'-2-. <g, g'>-. r2
          <a''-2 c-1>8[( d, <a' c> d,] <a' c>[ d, <a' c> d,])
          <g-3 b-1>[( d <g b> d] <g b>[ d <g b> d])
          <a'-2 c-1>8[( d, <a' c> d,] <a' c>[ d, <a' c> d,])         

          % line 3
          <g-3 b-1>[( d <g b> d] <g b>[ d <g b> d])
          c8-1 r c r b r b r
          a-1 r g r  fis r fis r
          g-2 r cis, r d-4 r d-5 r 

          % line 4
          g4.(-3 b8-2 d)-1-. r d,-. r
          g4.(-3 b8 d)-. r d,-. r
          g-3 r <d d'> r g r <d d'> r
          \partial 4*3 g4 <g, g'> <g g'>
      }

        	% line 5
        	\partial 4*1 r4
        	ees' r ees' r
			d, r d' r
			bes, r bes' r
			ees, r ees' r
			d, r d' r
			c, r c' r

		% line 6
		f,8-3 r f r g-2 r g r
		aes-1 r aes r <aes, aes'> r <aes aes'> r
		<g g'>2( c4)-3 ees-2
        <g, g'>2( c4)-3 ees-2

        % line 7
        <g, g'>4 <c-3 g'> <g g'> <c g'>
        <g g'>2.\fermata r4
        c4 r c' r
		b, r b' r
		g, r g' r
		c, r c' r

		% line 8
		<c, c'>1
		<c  c'>1
		<b b'>4-. <c c'>-. <b b'>-. <c c'>-.
		g'-2-. <g, g'>-. r2
		<d''-2 f-1>8[( g, <d' f> g,] <d' f>[ g, <d' f> g,])
		<c-2 e-1>[( g <c e> g] <c e>[ g <c e> g])

		% line 9
		<d'-2 f-1>[( g, <d' f> g,] <d' f>[ g, <d' f> g,])
		<c-2 e-1>[( g <c e> g] <c e>[ g <c e> g])
		bes8-3 r bes r a-4 r a-2 r
		d, r d r f-3 r f r
		g-2 r g r <g, g'> r <g g'> r

		% line 10
		c8 r c' r g, r g' r
		c, r c' r g, r g' r
		<c, c'> r <g g'> r <c c'> r <g g'> r
		\partial 4*3 <c c'>4 <c g' c> <c g' c>

		\bar "|."
    }
}

\paper {
	printallheaders=##t
}

\score{
    \context PianoStaff  <<
	\set PianoStaff.instrumentName = "Secondo     " 
	\context Staff = "up"   \secondoUp
	\context Dynamics = "dynamics" \secondoDynamics
	\context Staff = "down" \secondoDown
    >>
    \layout {
	\context {
	    \type "Engraver_group"
	    \name Dynamics
	    \consists "Output_property_engraver"
      
	    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
      
	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"
	    
	    \override TextScript #'font-size = #2
	    \override TextScript #'font-shape = #'italic
	    \override DynamicText #'extra-offset = #'(0 . 2.0)
	    \override Hairpin #'extra-offset = #'(0 . 2.0)
	    
	    \consists "Skip_event_swallow_translator"
	    
	    \consists "Axis_group_engraver"
	}
	\context {
	    \PianoStaff
	    \accepts Dynamics
	    \override VerticalAlignment #'forced-distance = #7
	}
    }

    \header {
		piece = "Allegro Moderato." 
	    title = "JUGENDFREUDEN."
	    subtitle = "Sechs Sonatinen."
	    subsubtitle = "I"
	    composer = "Anton Diabelli"
	    opus = "Op 163"
	}
}
  

\score{    
    \context PianoStaff <<
	\set PianoStaff.instrumentName = "Primo     " 
	\context Staff = "up"   \primoUp
	\context Dynamics = "dynamics" \primoDynamics
	\context Staff = "down" \primoDown
    >>

    \layout {
	\context {
	    \type "Engraver_group"
	    \name Dynamics
	    \consists "Output_property_engraver"
      
	    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
      
	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"
	    
	    \override TextScript #'font-size = #2
	    \override TextScript #'font-shape = #'italic
	    \override DynamicText #'extra-offset = #'(0 . 2.0)
	    \override Hairpin #'extra-offset = #'(0 . 2.0)
	    
	    \consists "Skip_event_swallow_translator"
	    
	    \consists "Axis_group_engraver"
	}
	\context {
	    \PianoStaff
	    \accepts Dynamics
	    \override VerticalAlignment #'forced-distance = #7
	}
    }
    \header { 
		breakbefore = ##t
	    title = "JUGENDFREUDEN."
	    subtitle = "Sechs Sonatinen."
	    subsubtitle = "I"
	    composer = "Anton Diabelli"
	    opus = "Op 163"
		piece = "Allegro Moderato."
	}
}



\score{
    \context PianoStaff  <<
	\context Staff = "up"   <<
	    \applyMusic #unfold-repeats \primoUp
	    \applyMusic #unfold-repeats \secondoUp
	>>
	\context Staff = "down" <<
	    \applyMusic #unfold-repeats \primoDown
	    \applyMusic #unfold-repeats \secondoDown
	>>
    >>
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }


}


