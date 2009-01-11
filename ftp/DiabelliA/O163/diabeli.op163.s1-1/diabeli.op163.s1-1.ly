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

 footer = "Mutopia-2008/10/09-1564"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

primoDynamics =  {
    s1\f s1 s1 s1
    s1 s1 s1 s8\> s4 s4 s4 s8\! s1\p s8\> s8 s8\! s8 s2
    s1 s8\> s8 s8\! s8 s2 s1 s1
    s8\< s4 s4 s4 s8\! s1\f s4\p s4-\markup{\italic{dolce}} s2 s1 s1
    \setTextCresc
    s1 s1\< s1 s1 s1\!
    \setHairpinCresc
    s1\f s1 s1 s4 s8 s8\p s4 s4
    s1 s4-\markup{\italic{cresc.}} s8 s8\< s4 s8 s8\! s1\f s1
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
	<c-1 e-3 g-5>2 <c e g>4 <c e g>4
	<d-2 f-4 g-5>4.(\arpeggio f8 d4) r
	<d f g>2 <d f g>4 <d f g>
	<c-1 e-3 g-5>4.( e8 c4) r

	<c-1 f-4>2-^ <c e>-^
	<< { d4.(-2 e8 d4) } \\ {c2-1 c4} >> r4
	<c-1 ees-3>2( d4) c
	g'1-5
	r8 c,(-1 e-3 f)-4 g-5-. g-. g-. g-.
	g4.(-5 f8 d4) r

	r8 d(-2 e f) g-. g-. g-. g-.
	g4.(-5 e8 c4) r
	r8 c(-1 e-3 f) e( c dis e)
	r d-2-. d-. d-. d( e d4)

	%

	r8 ees-3-. ees-. ees-. ees( d) d(-2 c)
	g'4-5 g8. g16 g4 g4
	g4.( f8 ees4) ees
	f4.(-4 g8 f4) r
	f4.(-4 ees8 d4) d

	ees4.(-3 f8 ees4) r
	ees4.( f8 ees4) ees
	ees4.( f8 ees2)
	ees4.-3 ees8 ees8( f16 ees d8 ees)
	f4.(-4 g8 f4) r

	%

	g4.(-5 f8 d4)-2 r
	f4.(-4 ees8 c4)-1 r
	ees4.(-3 f16 ees) d4 c
	d-2 r8 d d4( e8 fis)

	g4-5 r8 d(-2 e d e fis)
	g-5-. d-2-. fis-4-. d-. g-. d-. fis-. d-.
	g4-5 g8. g16 g4 g
	\partial 4*3 g2. \fermata

	%

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

	<c-5 e-3 g-1>2 <c e g>4 <c e g>4
	<d-4 f-2 g-1>4.(\arpeggio f8 d4) r
	<d f g>2 <d f g>4 <d f g>
	<c-1 e-3 g-5>4.( e8 c4) r


	<c-5 f-2>2-^ <c e>-^
	<< { d4.(-4 e8 d4) } \\ {c2-5 c4} >> r4
	<c-5 ees-3>2( d4) c
	g'1-1
	<c,-5 e-3 g-1>1
	<d-4 f g>1
	<d-4 f g>1
	<c-5 e g>1
	<c-5 f-2>2 <c-5 e-3>2
	<c-5 d-4>1

	%

	<c-5 ees-3>2 ees8( d) d(-4 c)
	g'4-1 g8. g16 g4 g
	g4.( f8 ees4) ees
	f4.(-2 g8 f4) r
	f4.(-2 ees8 d4) d


	ees4.(-3 f8 ees4) r
	ees4.( f8 ees4) ees
	ees4.( f8 ees2)
	ees4.-3 ees8 ees8( f16 ees d8 ees)
	f4.(-2 g8 f4) r

	%

	g4.(-1 f8 d4)-4 r
	f4.(-2 ees8 c4)-5 r
	ees4.(-3 f16 ees) d4 c
	d-4 r8 d d4( e8 fis)

	g4-1 r8 d(-4 e d e fis)
	g-1-. d-4-. fis-2-. d-. g-. d-. fis-. d-.
	g4-1 g8. g16 g4 g
	\partial 4*3 g2. \fermata

	%

	\bar "|."

    }
}

secondoDynamics =  {
    s1\f s1 s1 s1 s1 s1 % first line
    s1 s8\> s4 s4 s4 s8\! s1\p s1 % second line
    s1 s1 s1 s1 % Third line
    s8\< s4 s4 s4 s8\! s1\f s1\p s1 % Fourth line
    s1 s1 \setTextCresc s8\< s8 s2 s4 % line 5
    s1 s1 s1 \! % line 6
    s1\f s1 s1 s4 s4\p s2 % line 7
    s1 \setHairpinCresc s4-\markup{\italic{cresc.}} s8\< s8 s4 s8 s8\! s1\f  s1 % line 8
}

secondoUp =  {
    \time 4/4
    \clef bass
    \key c \major
    \relative c' {
	#(set-accidental-style 'modern)
	\set fingeringOrientations = #'(left)

	% First line

	<g c-2 e-4>4. <g c e>8 <g c e>4 <g c e>
	<g d'-3 f-5>2~<g d' f>8.[ g16-1 b8.-2 d16]-3
	<g, d'-3 f-5>4. <g d' f>8 <g d' f>4 <g d' f>
	<g c-2 e-4>2~<g c e>8.[ g16-1 bes8.-2 c16]-3
	r8. <f, c'-3 f-5>16 <f c' f>4 r8. <g c-3 e-5>16 <g c e>4
	r8. <a-1 c-3 d-4>16[ <a c d>8. <a c d>16] <a c d>8.[ <a c d>16 <a c d>8. <a c d>16]

	% Second line
    \clef treble
    r8. <a c-3>16[ <a c>8. <a c>16] <a-1 d-4>8.[ <a d>16 <a-1 ees'-5>8. <a ees'>16]
    <b-2 d-4>8.[ g16 <d'-4 f-5>8. g,16] <c-3 e-5>8.[ g16 <b-2 d-4>8. g16]
    r16 g[(-1 c-2 e]-4 g[-5 e-4 c-2 g]-1 g'[ e c g] g'[ e c g])
    r16 g[(-1 d'-2 f]-4 g[-5 f-4 d-2 g,]-1 g'[ f d g,] g'[ f d g,])

    % Third line
    r16 g[( d' f] g[ f d g,] g'[ f d g,] g'[ f d g,])
    r16 g[(-1 c-2 e]-4 g[-5 e-4 c-2 g]-1 g'[ e c g] g'[ e c g])
    r16 f[(-1 c'-3 f]-5 c[ f, c' f]) r g,[(-1 c-3 e]-5 c[ g c e])
    r16 a,[(-1 c-3 f]-4 c[-3 a c d] c[ a c d] c[ a c d])

    % line 4
    r16 a[( c-2 a] c[ a c a] c[ a d-3 a] d[ a ees'-4 a,])
    <b-2 d-3>4 <g g'>8. <g g'>16 <g g'>4 <g g'>4
    r16 a[(-1 bes-2 a]-1 ees'[-4 bes g bes] g[ bes ees bes] g[ bes ees bes])
    r16 aes[(-1 bes-2 aes]-1 f'[-5 bes, aes bes] aes[ bes f' bes,] aes[ bes f' bes,])

    % line 5
    r16 aes[(-1 bes-2 aes]-1 d[-4 bes aes bes] aes[ bes d bes] aes[ bes d bes])
    r16 g[(-1 bes-2 g] ees'[-4 bes g bes] g[ bes ees bes] g[ bes ees bes])
    r16 g[( bes g] ees'[ bes g bes] g[ bes ees bes] g[ bes ees bes])
    \clef bass

    % line 6
    r16 ees,[(-1 aes-2 ees']-5 aes,[ ees aes ees'] aes,[ ees aes ees'] aes,[ ees aes ees'])
    r16 ees,[(   aes   ees']   aes,[ ees aes ees'] aes,[ ees aes ees'] aes,[ ees aes ees'])
    d[(-4 f,-1 bes-2 d]-4 bes[ f bes d] bes[ f bes d] bes[ f bes d])
    \clef treble

    % line 7
    b[(-1 f'-4 g-5 f-4]  b,[ f' g f] b,[ f' g f] b,[ f' g f])
    c[(-1 ees-3 g-5 ees]-3 c[ ees g ees] c[ ees g ees] c[ ees g ees])
    a,[(-1 c-2 fis-4 c]-2 a[ c fis c] a[ c fis c] a[ c fis c])
    b([-1 d-2 g-5 d]-2 b[ d g d] c[-1 d-2 fis-4 d] c[ d fis d])

    % line 8
    b[( d-2 g-5 d] b[ d g d] c[ d-2 fis-4 d] c[ d fis d])
    b[( d-2 g-5 d]) c[( d-2 fis-4 d]) b[( d g d]) c[( d fis d])
    b[( d g d]) g,[(-1 d'-3 f-5 d]) g,[( cis-2 e-4 cis]) g[( c-2 ees-4 c])
	\partial 4*3 <b-1 d-3 f-5>2. \fermata

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

	% First line

	<c g'-2 c>4. <c g' c>8 <c g' c>4 <c g' c>
	<b g' b>2~<b g' b>8.[ <g g'>16 <b b'>8. <d d'>16]
	<b g' b>4. <b g' b>8 <b g' b>4 <b g' b>
	<bes g' bes>2~<bes g' bes>8.[ <g g'>16 <bes bes'>8. <c c'>16]
	<a a'>4.. <a a'>16 <g g'>4.. <g g'>16
	<f f'>1

	% Second line
    <fis-4 fis'>~
    <fis fis'>8 r g'-2 r g-1 r g-2 r
    <c, c'>1
    <b b'>1

    % Third line
    <b b'>1
    <bes bes'>
    <a a'>2 <g g'>
    <f f'>1

    % line 4
    <fis-4 fis'>~
    <fis fis'>4 r4 r2
    <ees' ees'>4 r <ees ees'> r
    <d d'> r <d d'> r

    % line 5
    <bes bes'>4 r <bes bes'> r
    <ees ees'> r <ees ees'> r
    <des des'>2 <des des'>

    % line 6
    <c c'>2 <c c'>
    <ces ces'> <ces ces'>4 <ces ces'>
    <bes bes'>2 <bes bes'>4 r

    % line 7
    <g g'>2 <g g'>4 <g g'>
    <g g'>2 <g g'>4 <g g'>
    <g g'>2 <g g'>4 <g g'>
    <g g'>4.( <b b'>8 <d d'>2)
 
    % line 8
    <g, g'>4.( <b b'>8 <d d'>2)
    <g, g'>8 r <d' d'> r <g, g'> r <d' d'> r
    <g, g'> r <g g'> r <g g'> r <g g'> r
	\partial 4*3      \repeat "tremolo" 8 { g32 g'32 }     g,4\fermata

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
	    title = "JUGENDFREUDEN."
	    subtitle = "Sechs Sonatinen."
	    subsubtitle = "I"
	    composer = "Anton Diabelli"
	    opus = "Op 163"

		piece = "Andante."
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

		piece = "Andante."
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


