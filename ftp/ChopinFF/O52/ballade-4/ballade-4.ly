\version "2.1.0"
\include "english.ly"
#(ly:set-point-and-click 'line)
%% CVS  $Revision: 1.12 $

\header {
  title =       "Ballade number 4"
  opus =        "Op. 52"
  composer =    "F. Chopin"
  enteredby =   "bjk"
  instrument =  "Pianoforte"
  mutopiatitle = "Chopin Ballade number 4"
  mutopiacomposer = "ChopinFF"
  mutopiaopus = "O52"
  mutopiainstrument = "Piano"
  date = "1842"
  source = "Joseffy Edition"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Bruce J Keeler"
  maintainerEmail = "bruce@gridpoint.com"
  lastupdated = "2004/March/20"
  
  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/03/20-422"
}

andante = \markup { "" \raise #3.5 \bold \large { Andante con moto } }

bc = \clef bass
tc = \clef violin
st = \staccato
piuf = \markup { \italic "pi\\`u" \dynamic "f" }
semprepiuf = \markup { \italic "sempre pi\\`u" \dynamic "f" }
rf = #(make-dynamic-script "rf")
ls = { \translator Staff = bass \stemUp }
us = { \translator Staff = treble \stemDown }
trillSpanner = {
    \property Voice.TextSpanner \override #'style         = #'trill
    \property Voice.TextSpanner \override #'extra-offset  = #'(0 . 2.5)
    \property Voice.TextSpanner \override #'edge-height   = #'(0 . 0)
    \property Voice.TextSpanner \override #'edge-text     = #(cons (make-musicglyph-markup "scripts-trill")  "")
}
invisnext = { 
    \once \property Voice.Stem     \override #'transparent = ##t 
    \once \property Voice.NoteHead \override #'transparent = ##t
}

pd = \sustainDown
pu = \sustainUp

topPart = \notes \relative c'' {
    \tc

    << 
	{ 
	    \voiceOne
	    \phrasingSlurUp
	    \dynamicUp
	    %% 1
	    < g g' >8\( ^\andante < g g' > < g g' >       < g g' > < g g' > < g g' >
            < g g' >8\< < g g' > < g g' >\!               < g g' >\> < f f' > < e e' >\! \break
            < e e' >8 < d d' > < c c' >                   e'4.\accent \)
            < e, g' >8\arpeggio \( < g g' > < g g' >      < g g' > <f f'> <e e'> \break
            %% 5
            < e e' >8 ( < d d' > < c c' >                 e'4.\accent )
            < e, e' >8 < d d' > < c c' >                  e'4.\accent \) ~
            e4. ~                                         e4\fermata
        } \\
        {
	    \voiceTwo
	    %% 1
            s4 s8                                  g,16 c g c g c
            g16 < bf c > g < bf c > g < bf c >     g < a c > f < a c > e < a c > 
            e16 < g b > d < g b > c, g'            e < g c > e < f c' > e < g c >
            e16 c' g <bf c> g <bf c>               g <a c> f <a c> e <a c>
	    %% 5
            e16 < g b > d < g b > c, g'            e < g c > e < f c' > e < g c >
            e16 < g b > d < g b > c, g'            e < g c > e < f c' > e < g c >
            e16 <f c'> e <g c> e <f c' ~ >         <e c'>4
        }
    >>

                                                             c'8 ~ \( \break
    %% 8
    c8 df b ~                       b c f
    e8 bf                           df4 c8 f
    e8 bf df \)                     r c16 ( df c df
    ef8 ) ef ( ef                   ef df16 c bf c \break
    af8 ) r r                       r4 r8
    %% 13		            
    r8 ef' ( af                     g df ff ~
    ff ef af                        g df ff )
    r8 ef16 ( f ef f                gf8 ) gf ( gf
    gf8 f16 c ef df                 bf8 ) r8 r
    %% 17	            
    r8 df16 ( ef df ef              f8 ) f ( f
    f ef16 bf df c                  a8 ) c[ ( f]
    e8 bf                           df4 c8 f
    e8 bf df )                      r c16 ( df c df
    ef8 ) ef ( ef                   ef f16 c ef df
    bf4.                            g4 ) r8
    %% 23			            
    r8 c ( f                        e bf df ~
    df8 c f ~                       f16 e bf c ef df )
    r8 c16 ( df c df                ef8 ) ef ( ef
    ef8 df16 c bf c                 af8 ) r r
    %% 27
    r4 r8                           r8 ef' ( af
    g8 df                           ff4  ef8 af ~
    af16 g df ef gf ff )            r8 ( ef16 f ef f
    gf8 ) gf ( gf                   gf f16 c ef df
    %% 31
    bf8 ) r8 r8                     r8 df16 ( ef df ef
    f8 ) f ( f                      f  ef16 bf df c
    a8 ) c[ ( f]                    e bf df ~
    df c f ~                        f16 e bf c ef df )
    r8 c16 ( df c df                ef8 ) ef ( ef
    ef f16 c ef df                  bf4 ) r8
    %% 37			            
    R2.			            
    r4 r8                           <gf bf gf'>4 \( <gf bf gf'>8
    <gf bf gf'>2. ~	            
    <gf bf gf'>4.                   <gf bf gf'>4 <gf bf gf'>8
    <gf bf gf'>4.                   <f af f'>4. \)
    %% 42			            
    <ff af ff'>4. \(                <ff af ff'>4 <ff af ff'>8
    <ff af ff'>2. ~	            
    <ff af ff'>4.                   <ff af ff'>4 <ff af ff'>8
    <ff af ff'>4.                   << { < ef ef'>4. } \\ { af8 bf cf } >>
    % 46			            
    d,8\st \) d'16[_"mezza voce" ( ef d ef]      f8 ) f ( f
    f8 gf16 f ef af,                cf'4. )
    r8 d,16 ( ef d ef               f8 ) f ( f
    f8 gf16 f ef a,                 c'!4. )
    %% 50
    << {
	\phrasingSlurUp
	bf4. \(                                                g \trill
        bf8 af16 ef af gf                                      gf8 f4 \)
        af8 \accent \( gf16 df gf f                            f8 ef16 f af gf
        a,8\st \) << { c16[ \( df c df] ef4 } \\ \new Voice { \voiceThree a,4 ~ a4 } >>  <bf df>8
        <bf df>8\st \) <bf df>16[ \( <c ef> <bf df> <c ef>]    <bf ff'>4 <bf ef>8
        <bf ef>8\st \)
    } \\ {
	\phrasingSlurDown
        %% 50
	s4.                                      df4.
	df8 c4                                   ef8 \( df16 af df c
        c8 bf4 \)                                bf8 \( c16 df bf c
        ef,8\st \) gf4 ~                         gf8 f4
	f8 g!4 ~                                 g8 gf4
	gf8\st
    } >>
                ef'16[ \( f ef f]                gf8 \) gf \( gf
    %% 56
    gf4.^"ten." ~                                gf8 f16 c ef df
    bf4.                                         g!8 \) r8 r  \break

    << {
	\phrasingSlurUp
	%% 58
	r8 c \( <c f>\arpeggio                              e bf df ~
        df8 c <c f>\arpeggio                                e bf df      \break
        <c c,>8\arpeggio \) <af c>16 \( <bf df> <af c> <bf df>   
                                         <ef ef,>8\accent <ef ef,>\accent <ef ef,>\accent
        <ef df,>8\arpeggio df16 c bf c                      af8 \) r8 r8
	r4 r8                                               <c c,> <c ef>[ \( <c ef af>]
        %% 63
        g'8 df ff ~ \)                                      <ff ef,> ef \( <ef af>
        g8 df ff \)            << r \\ \new Voice { ef,8 } >> ef'16 \( f ef f
        <gf gf,>8\accent <gf gf,>\accent <gf ef>\accent     <gf ef,>\arpeggio \> f16 \! c ef df
        bf4 ~ bf16 <a c>                                    <bf df>8 \) df16 \( ef df ef
        <f f,>8\accent <f df>\accent <f df>\accent          f ef16 bf df c
        a16 \) r16 <a c c,>8 \( <a f f'>                    <bf e e,> <bf e,> <df e,>\arpeggio
        <a f c>16\st \) r16 <c a' c>8 <f a f'>              <e bf' e> <e bf'> <e df'>\arpeggio
    } \\ \relative c'' {
	%% 58
        r16 af af g g\arpeggio f                 <bf df> af g f e bf'
        bf16 af af g g\arpeggio f                <bf df> <af c> g <f af> <e g> <f bf>
        \once \property Voice.NoteColumn \override #'force-hshift = #1.9
        <g bf>16 <f af> f8 ff                    <af c>16 bf bf af af g
        \once \property Voice.NoteColumn \override #'force-hshift = #1.9
        g16 f f g f g                            f ( ef ) ef ( d ) d ( df )
        \phrasingSlurDown
	df16 c c \( f! ef <df g bf>              bf' ef, \) ef bf' bf af
        %% 63
	<df ff>16 <c ef> <bf df> <af c> <g bf> <bf df>    
    		               \property Voice.Beam \override #'positions = #'(-5 . -5)
                                                           df c c <bf df> <bf df> <af c>
                               \property Voice.Beam \revert #'positions
	<df ff>16 <c ef> <bf df> <af c> <g bf> <bf df>     <af c> <bf df> c df c df
	ef16 f ef df c bf                                  a4 a8
        f16 ef df gf f ef                                  df f bf c bf c
        df16 c bf af gf f                                  gf df' c gf ef e
        f16 s16 s4                                         s8 bf, a16\arpeggio \>  bf \!
        s4.                                                s8 bf'16 ( a ) a\arpeggio ( bf )
    } >>
    %% 70
    <df bf' df>16[ ( <c a' c>] ) <c a' c>[ ( <df bf' df> <ef c' ef> <f df' f>]
                       <gf ef' gf>8\accent^"piu rit." ) <gf ef' gf>8\accent <gf ef' gf>8\accent
    <gf ef' gf>8\st\accent \bc <gf,, cf ef>[ ( <gf bf ef>]
                                 <gf bf ef> <ef bff' gf'> <gf bff gf'> )
    %% 72
    df'16.[^"a tempo" \( <cf bff ef,>32] \tc ff!16 <ef cf! ff!> af <gf ef cf>
                                 af \) <gf eff cf> \( gf <f eff cf> bff <af f df>
    df16 \) <af ff df> \( af <g ef df> cf <bf g ff>
                                 ef \) <bf gf ef> \( bf <a f ef> df <c a gf>
    %74
    gf'16 \) <f ef a,> \( bf <a f ef> df <c a f>        f <ef c a>
    #(set-octavation 1)
                 gf <f ef c> g <f ef c>
    %75
    gf16 <f ef c> g <f ef c> gf <f ef c>    g <f ef c> gf <f ef c> g <f ef c>
    e16_"leggiermente" f f' fs, f' g,       gs a d c bf g
    #(set-octavation 0)
    f16 d ef g f ef                         c a bf d c bf
    g16 f d ef g f                          ef c a bf d c
    bf16 g f d ef g                         f ef c a c g
    %% 80
    \phrasingSlurUp
    f4 ~ \)   <f a d>8 \(                   <d' bf>4 <d a>8
    <d bf>4 <d bf'>8                        << d4. \\ { bf4 gs8 } >>
    <cs a>4 \) <cs a'>8 \(                  <cs a>4 <c fs,>8
    <bf g>4 <ef c g>8                       <d bf f>4 <c a f>8
    <d bf f>8 \) r8 <d f d'>^"dolce" \(     <c d fs d'>4.
    %% 85
    <d g bf>4 <bf ef g>8                  \grace { 
    		                    \property Voice.Beam \override #'positions = #'(1 . 3.25)
                                                    bf16[ ( ef~ a] 
    		                    \property Voice.Beam \revert #'positions
                                                                   } <bf, ef g>4 ) \tieUp <a ef' f>8 ~
    <bf d f>8 \) \tieBoth r8 <d f d'> (     <d bf'>4 ) <g bf g'>8 ~ \(
    <g bf g'>8 <bf f'> <bf e>               <af bf f'>4. ~ \)
    <af bf f'>4 <bf af d,>8 \(              << bf4. \\ { <af d,>4 <g ef>8 } >>
    <ef g bf>4 \) <ef g ef'>8 \(            <ef g ef'>4 <c ef g>8
    %% 90
    <c ef g>4 <bf d bf'>8                   <bf d bf'>4 <bf e c'>8 \)
    << { <ef f>2. ~ <d f>4 <d d'>8 } \\ 
       { bf8 \ls a \us d c \ls g \us a \ls g f4 } >> 
                                            <d' d'>4 \( <d bf'>8
    <d bf'>4 <d g>8                         \grace { 
    		                    \property Voice.Beam \override #'positions = #'(1 . 3.25)
                                                     bf16[ ( ef~ a] 
    		                    \property Voice.Beam \revert #'positions
                                                                     } <bf, ef g>4 ) <ef f>8
    <d f>4 \) <fs d'>8 (                    <g bf>4 ) <g bf g'>8 ~ \( 
    %% 95
    <g bf g'>8 <f bf f'> <e bf' e>          <f bf f'>4. ~ \)
    <f bf f'>4 << { \phrasingSlurUp bf8 \( bf4. ~ bf4 \) } \\ { <af d,>8 <af d,>4 <g ef>8 <g ef>4 } >>
               <g ef'>8 \(                  <g ef'>4. ~
    <g ef'>4 <g c,>8                        <bf d, bf>4 <c e, bf>8
    <c ef,! a,>4\arpeggio <bf d, bf>8       <bf d, bf>4 \) 
    << { \phrasingSlurUp
                                                            d,8\accent ~ \(
    %% 100
        d16 ef d a' fs ef \)                d \( ef d bf' g ef \)
    } \\ {
                                                            s8
        c4.                                 bf4.
    } >>
    %% 101
    fs16 \( ef' d fs c' d                  fs[ c' c a'\st \) r <g bf,>] \(
    a,16 fs' <ef g,> fs, d' <c ef,>        d, bf' <a c,> ef c' <bf d,>
    c,16[ a' <bf d,> <fs a,> <a c,> \) r32 <g bf,>32 (
                                           <g bf,>16]\st )
    << { \phrasingSlurUp
                                                          fs,16\st fs( f) f( e~) \(
        %% 104
        e16 f e b' gs f \)                 e \( f e c' a f \)
    } \\ {
                                                          s16 s4
        d4.                                c4.
    } >>
    %% 105
    gs16 \( f' e gs d' e                   gs[ d' d b'\st \) r <a c,>] \(
    c,16 a' <gs b,> a, f' <e gs,>          f, d' <c e,> <b d,> <d f,> <c e,>
    d,16 b' <c e,> <gs b,> <b d,> <a c,>~  <a c,> <a c,>8\accent^"rit." <a c,>\accent <a c,>16\accent ~ \)
    <a c,>16^"a tempo" \( <bf! d,>8 <a c,> <c ef,!>16~ <c ef,> <bf d,>8 <fs c>16 <g bf,> <bf d,>~
    <bf d,>16 <a c,>8 <bf d,>16 <fs a,> <a c,>~
                                     <a c,> <g bf,> \acciaccatura a <g bf,> <fs a,>8 <g bf,>16 ~ \)
    %% 110
    <g bf,>16 \( <af! c,>8 <g bf,> <bf df,!>16~  <bf df,> <af c,>8 <e bf>16 <f af,> <af c,> ~
    <af c,>16 <g bf,>8 <af c,>16 <e g,> <g bf,>   
                                  <g bf,> <f af,> \acciaccatura g <f af,> <e g,>8 <f af,>16 \)
    <f af,>16^\markup { "" \raise #3.0 \italic { dolce leggiero } } \( <gf bf,>8^"ten." <f af,>16 <ef gf,> <gf bf,>
                                             <f af,> <gf bf,> <f af,> <c gf> <df f,> <f af,>
    <ef g,!>16 <f af,> <ef g,> f <df f,> ef  <c ef,> df <bf df,> c <af c,> \) r
    <f'' af,>16 \( <gf bf,>8^"ten." <f af,>16 <ef gf,> <gf bf,>
                                             <f af,> <gf bf,> <f af,> <c gf> <df f,> <f af,>
    %% 115
    <ef g,!>16 <f af,> <ef g,> f <df f,> ef  <c ef,> df <bf df,> c <af c,> \) f' \(
    <ef g,!>16 f <ef g,> f <df f,> ef        <c ef,> df <bf df,> c <af c,> \) r
    #(set-octavation 1)
    <ef'' g,!>16 \( f <ef g,> f <df f,> ef   <c ef,> df <bf df,> c <af c,> bf
    <g bf,>16 af <f af,> g <ef g,> f     #(set-octavation 0)
                                             <df f,> ef <c ef,> df <bf df,> c
    <af c,>16 bf <g bf,> af <f af,> g        <ef g,> f <df f,> ef <c ef,> df \)
    << {
	\phrasingSlurUp
	\trillSpanner
        %% 120
        bf4.\startTextSpan \(               a16 bf\stopTextSpan c bf df g,
        af!4. \)                            af8 g!16 \( af g af
        bff8 af gf                          ff! ~ ff16 ef \acciaccatura gf! ff ef
        af4 \) af8~ \(                      af8 g16 af g af
        cf16 bff bff af af gf               ff ( ef ) cf' ( bf ) ff' ( ef ) \)
        %% 125
        <af ef>8 \( <af ef> <af ef>         <af ef> <g ef> <ef bf>
        <gf ef>8 <gf ef> <gf ef>     << gf4. \) \\ \new Voice { \voiceThree ef8 ( eff ) df } >>
        <gf c,>8 \( <gf c,> <gf! c,>        <gf c,> <f c> c
        <e b>8^"ritard." <e b>\arpeggio <e b>\arpeggio      e4 b8~
        b16[ a]\) <e' e,>8 \( <e e,>        <e e,> <d d,> <cs cs,>
        %% 130
        <cs cs,>8 <b b,> <a a,>             cs4. \)
        e8\arpeggio \( <e e,> <e e,>  <e e,> <d d,> <cs cs,> \dynamicUp
        <cs cs,>8 <b b,> <a a,> \<          cs4.\arpeggio \! \)
        <cs cs,>8 <b b,> <a a,>             cs4.
        \property Voice.Tie \override #'extra-offset = #'(0 . 2.5)
        cs4. ~                              cs4.\fermata
    } \\ {
        %% 120
	df,2.
        c16 ef bf ef c ef                   df ff ef gf df ff
        df16 \> ef df ff gf, df' \!         g, df' g, df' g, df'
        c16 ef bf ef c ef                   af, df af gf' af, ff'
        df16 ef df ff gf, df'               g, df' df g g df'
        %% 125
        df16 c! c bf c af                   bf af bf f g ef
        bf'16 a c gf bf gf                  bf gf bf gf bf gf
        bff16 af af g! af ef                af g! af e f c
        e16 ds fs\arpeggio b, e\arpeggio b  b' \> e, b' ds,! b' d, \!
        cs16 g' e <g a> e <g a>             e <fs a> d <fs a> cs! <fs a>
        %% 130
        cs16 <e gs> b <e gs> a, e'          cs <e a> cs <d a'> cs <e a>
        cs16\arpeggio <g' a> e <g a> e <g a>   e <fs a> d <fs a> cs <fs a>
        cs16 gs' b, <cs gs'> a <cs fs>      gs\arpeggio <es' gs> cs <es gs> cs <es gs>
        cs16 <e gs> b <e gs> a, e'
        << \new Voice {
	    \voiceTwo
                                            cs <e a> cs <d a'> cs <e a> \break
            cs16 d cs e cs d                <cs a'>4.
        } \\ \new Voice \relative c' {
	    \voiceOne \tieDown
                                            s4 s16 \invisnext a'16 ~
	    \voiceThree \tieDown
	    a16 a8 a8 a16 ~               \voiceTwo  \invisnext a4. 
        } \\ \new Voice \relative c' {
                                            s4.
            s4.                             \invisnext cs8 ~
	   \property Voice.TupletBracket \override #'bracket-visibility = ##f
	   \property Voice.TupletBracket \override #'number-visibility = ##f
           \property Staff.fontSize = #-1
	   \property Voice.Stem \override #'length = #5.5
	   \property Voice.Beam \override #'thickness = #0.384
	   \property Voice.Beam \override #'space-function = #(lambda (beam mult) (* 0.8 (Beam::space_function beam mult)))
	   \times 2/21 {
	       cs16[_"dolciss." \( e a cs e a]
	       cs[ a' cs, 
               \acciaccatura {
		   \once\property Voice.Slur \override #'extra-offset = #'( 0 . 8 )
		   \once\property Voice.NoteHead \override #'font-relative-size = #-2
		   \once\property Voice.Stem \override #'font-relative-size = #-2
		   e16
	       }
	       d cs a e 
               \acciaccatura {
		   \once\property Voice.Slur \override #'extra-offset = #'( 0 . 6 )
		   \once\property Voice.NoteHead \override #'font-relative-size = #-2
		   \once\property Voice.Stem \override #'font-relative-size = #-2
		   g16
		}
		f e a cs, 
               \acciaccatura {
		   \once\property Voice.Slur \override #'extra-offset = #'( 0 . 5 )
		   \once\property Voice.NoteHead \override #'font-relative-size = #-2
		   \once\property Voice.Stem \override #'font-relative-size = #-2
		   e16
		}
                d cs a e 
               \acciaccatura {
		   \once\property Voice.Slur \override #'extra-offset = #'( 0 . 3 )
		   \once\property Voice.NoteHead \override #'font-relative-size = #-2
		   \once\property Voice.Stem \override #'font-relative-size = #-2
		   g16
		}
                f_"rallent." e a e 
               \acciaccatura {
		   \once\property Voice.NoteHead \override #'font-relative-size = #-2
		   \once\property Voice.Stem \override #'font-relative-size = #-2
		   \once\property Voice.Slur \override #'extra-offset = #'( 0 . 3 )
		   g16
		}
		f e a e 
               \acciaccatura {
		   \once\property Voice.NoteHead \override #'font-relative-size = #-2
		   \once\property Voice.Stem \override #'font-relative-size = #-2
		   \once\property Voice.Slur \override #'extra-offset = #'( 0 . 3 )
		   g16
		}
                f]
               e8 a4\fermata \> \) ~ a8[ ( bf gs] \! )
	   }
	   \property Staff.fontSize\unset
        } >>
    } >>

    \break
    %% 135
    a'8^"legato" \( bf d                        cs g bf
    a bf d                                     cs g bf \)
    << \new Voice {
	\voiceOne
	\phrasingSlurUp
        r8 a16 \( bf a bf                      c8 c c
        c\arpeggio bf16 a g a                  <f a,>8 \) r r
        \stemUp
        r4 r8                                  c' \( df f
        %% 140
        \stemDown e bf df \)       \stemUp     r8 c16 \( df c df
        ef8 ef ef                              ef\arpeggio df16 c bf c
        <af c,>8 \) r8 r8                      r4 r8
        ef'8 \( ff af                          g df ff \)
        r8 ef16 \( ff ef ff                    gf8 gf gf
        %% 145
        gf f16 c ef df                         bf8 \) r r
    } \\ \relative c'' \new Voice {
	\voiceTwo
        s4 g8                                  c, d f
        bf,\arpeggio d <bf e>                  s4.
        s2.
        %% 140
        s4.                                    s4 bf'8 (
        ef,8 ) f af                            df,\arpeggio f <df g>
	\phrasingSlurDown
        s4.                                    ef8 \( ff af
        g8 af cf                               bf bff af \)
	s4 df8                                 gf, cf bf
        %% 145
        a4.                                    bf8 s4
    } \\ \relative c' \new Voice {
	\voiceThree
	s2.
	f4 s8                                  s4.
        s2.
	s2.
	s4.
                                               af4 s8
    } >>
    %% 146
    r8 df16 \( ef df ef                         f8 \) f \( f
    f8 ef16 bf df c                             a8 \) c[ \( f]
    e8 bf df \)                                 r c \( f ~
    f16 e bf c ef df \)                         r8 c16 \( df c df
    %% 150
    ef8 \) ef \( ef                             ef f16 c ef df
    bf4.                                        g!4 \) r8
    r8 c \( f ~                                 \times 6/8 { f16 e a, bf b c ef df \) }
    \times 6/8 { r16 c \( df b c af' g f \) }   
                                 f (  e) \times 4/7 { r16 a, \( bf b c ef df \) }
    r8 \times 4/6 { c16 \( df c b c df }  
                                         \times 6/10 { d ef c' g bf! af c, df d ef \) }
    %% 155
    \times 6/10 { e16 \( g f ef c ef df f, g ef } af8 \) r8 r8
    r4 r8                                       r8 ef' \( af ~
    \property Staff.tupletSpannerDuration = #(ly:make-moment 3 24)
    \property Staff.autoBeamSettings \override #'(end 1 24 6 8) = #(ly:make-moment 3 24)
    \times 2/3 { af16 g b, c df d ef gf ff \) } r16 ef \( \times 2/3 { f d ef c' bf a }
    \property Staff.TupletBracket \override #'number-visibility = ##f
    \times 2/3 { af16 g b, c df d ef gf ff \) } r8 \times 2/3 { ef16 \( f ef d ef f }
    \times 2/3 { gf16 gf' f ff ef df c bf a     gf f! e ef df b c ef df }
    %% 160
    \property Staff.TupletBracket \override #'number-visibility = ##t
    \times 2/3 { c16 bf \) r16 } r8 r8          r8 \times 2/3 { df16 \( ef df c df ef }
    \property Staff.TupletBracket \override #'number-visibility = ##f
    \property Staff.TupletBracket \override #'bracket-visibility = ##f
    \trillSpanner
    \times 2/3 { f16 f' c ef df af f ef df }    
                   cf16.\startTextSpan bf32\stopTextSpan \times 2/3 { c16 df ef  a, c bf \) }
    \times 2/3 { a \( c e gf f a c f, f'        e c ef df bf g e df bf \) }
    \times 2/3 { a \( c e gf f a c #(set-octavation 1)
                                    f f'        e c ef df bf g #(set-octavation 0)
                                                                             e df bf \) }
    \times 2/3 { a16 \( c ef f af! gf ef c a!   gf ef c a bf b c df bf }
    %% 165
    \times 2/3 { a16 c ef f a gf ef c a!        gf ef c a bf b c df bf \) }
    \times 2/3 { a16 \( bf b c df bf a bf b     c df bf a bf b c df bf \) }
    \times 2/3 { a16 \( c ef f c' af g gf f     ff ef d df c cf \bc bf a af }
    \times 2/3 { g16 gf f ff ef d df c cf       bf a af g gf f ff ef eff \) } \tc
    << \new Voice \relative c'' {
	\voiceOne \stemBoth \phrasingSlurUp
	r4^"a tempo" <f af, f>8 \(              <f af, f>4.
        <df f,>4 <bf f>8                        <bf gf c,>4 af8
        \voiceOne \stemUp \slurUp
        af4 \)  <f' af,>8 (                     <df af>4 )
    } \\ \new Voice \relative c'' {
	\voiceTwo
	s2.
	s2.
	gf8 f ef                                df4
    } \\ \new Voice \relative c'' {
	\voiceOne
	s2.
	s2.
	s4  \invisnext <f af, ef>8\arpeggio
    } >>
                                                                   <bf'''' df, cf>8 \(
    <bf df, cf>8 <af df, cf> <g df cf>          <af df, cf>4. \)
    \acciaccatura f,8 <f cf' af'>4\arpeggio \( <f cf' df>8   <f cf' df>4. ~ \)
    <f cf' df>4.                                <gf cf df>4 ( <gf bf gf'>8 )
    %% 175
    << \relative c''' {
	\voiceOne \phrasingSlurUp
	\times 2/3 { gf8 \( s bf, s c s df s gf s f s f s ef s c[ bf] }
	<bf bf,>8[ <af af,>] \)
    } \\ \relative c''' {
	\voiceTwo
	#(override-auto-beam-setting '(end 1 24 6 8) 3 24 )
	\times 2/3 {
	    gf16 gf, bf bf, bf' ef, gf bf, c'   gf bf df, df' gf, bf gf gf' bf,
	    df16 gf, f' bf, df gf, f' af, c     gf ef' af, c ef, c' gf bf c,
	}
	f4
    } >>
    << {
	\stemDown \phrasingSlurUp
                            <f' af f'>8 \(         <f af f'>4  <df  af' df>8
        <df f df'>8 f, <df' bf'>    \stemUp        <gf bf>4 <ef af>8 \)
    } \\ \relative c'' {
                            s8                     s4.
        s4.                                        c8 bf af
    } >>
    << <af, f' af>4 \\ { ef'8 ( df ) } >> <f af f'>8 (  
                                                   <df af' df>4 ) <g df' bf'>8\arpeggio \(
    %% 180
    <bf ef bf'>8 <af ef' af> <g ef' g>             <af ef' af>4 \) <af af,>8 \(
    <af ef af,>4 <df, af>8 \)          
    << { 
                                                   df4 \( <df gf>8
        \stemDown <f df cf f,>4 \)
    } \\ \relative c'' {
                                                   af8 g gf
        s4
    } >>
           \relative c''  <cf df f cf'>8 \(        <cf df gf cf>4 <bf df bf'>8
    <bf df ef bf'>4 \)
    << \relative c'' {
        	        <ef df bf ef,>8 \(         <ef c ef,>4 <af ef>8
        <af af,>8[ <g g,>] \)
    } \\ \relative c'' {
	                s8                         bf8 bff af
        <df ef>4
    } >> \relative c''
                          <df ef g df'>8 \(        <df ef af df>4 <c ef af c>8 \)
    %% 185
    <c gf' c>8 \( <bf df gf bf> <gf df' gf>        <df gf df'> <bf df bf'>8. <af df af'>16
    \phrasingSlurUp
    <af df af'>4   <gf df' gf>8 ~ \)               <gf df' gf>8 <f df' f>8. \( <gf df' gf>16
    <g! df' f g!>4 <g f' g>8                       <af f' af>4 <a f' a>8
    <c f c'>4 <bf f' bf>8 \)                       <df! g df'!>8 \( <b g' b> <c g' c>
    <ef af ef'>4 <df af' df>8 \)                   r8
    << \relative c' {
        \voiceOne \phrasingSlurUp
        	                                       <ds c' ds>8 \( <e c' e>
        \stemDown <f f'>8 <bf df bf'> <af f' af>   <gf c af'>4  <gf c gf'>8
        <f df' f>8 \)  
    } \\ \relative c'' {
	\voiceTwo \stemUp
	                                               s4
        \times 2/3 { c16[ ef df] }
    } >>
    \relative c'
    %% 191
    \times 2/3 { 
	      r16 f \( af f' f af                   f'\accent af, f f af, f f af, f
        f'16\st\accent \) f,^\semprepiuf \( a f' f a f' f a     f'\accent a, f f a, f f a, f
        f'16\st\accent \) f, \( bf f' f bf f' f bf  f'\accent bf, f f bf, f f bf, f
        g'!16\st\accent \) f, \( b g' f b g' f b    g'\accent b, f g b, f g b, f \)
    }
    \property Staff.TupletBracket \override #'bracket-visibility = ##f
    <af c f af>8\st \ls \times 2/3 { r16 c, \( f af b c \us f af b c f af b c f }
    \stemBoth \property Voice.autoBeaming = ##f
    af8\st \) <f,, af df f>\st <df af' df>\st      <gf df' gf>\st <e g c e>\st <c' g' c>\st
    \property Voice.autoBeaming = ##t
    <c f c'>\st \ls \times 2/3 { r16 c,, \( f af b c \us f af b c f af b c f }
    \stemBoth \property Voice.autoBeaming = ##f
    af8\st \) <f,, af df f>\st <f, af df f>\st^"stretto" <gf df' gf>\st <g c e>\st <c g' c>\st
    <c f c'>8\st <d f b d>\st <ds fs b ds>\st     <fs as cs fs>\st <b fs' b>\st <gs b es gs>\st
    %% 200
    <as cs fs as>8\st <cs es gs cs>\st <fs cs' fs>\st <e g cs e>\st <f c' f>\st <df! f g df'!>\st
    \property Voice.autoBeaming = ##t
    <c! f g c!>8\st r r                             c,^"ritard." ( df f )
    <g e c g>8\st <g d b g f>\st  <g e c g>\st      r4 r8\fermata
    <c g' c>2.^"a tempo" \(
    <f, g b d g>2.
    %% 205
    <e g bf! e>2.
    <d f d'>2.
    <e c g>2. ~
    <e c g>2. ~
    <e c g>2. ~
    %% 210
    <e c g>4 \) r8                                  r4 r8

    \times 2/3 { af,16 \( <c af'> f g, <af b> f df' <c bf> g'  
                                               c, <f bf> af g a, <bf f'> df <c bf> g' \) }
    << \new Voice \relative c'' {
	\voiceOne \phrasingSlurUp
	\times 2/3 { s16 af4 \( af16 } af16.[ df32] ~  
                                              \times 2/3 { df16 c b bf a af ~ af g c \) }
    } \\ \new Voice \relative c' \times 2/3 {
	\voiceTwo
	af16 ef' df \acciaccatura ef df c g' g f r    df f df f df f bf, e c
    } >>
    \times 2/3 { af16 \( <c af'> f g, <af b> f df' <c bf> g'  
                                               c, <f bf> af g a, <bf f'> df <c bf> g' \) }
    << \new Voice \relative c''' {
	\voiceOne \phrasingSlurUp
	\times 2/3 { s16 af4 \( af16 } af16.[ df32] ~  
                                              \times 2/3 { df16 c b bf a af ~ af g c \) }
    } \\ \new Voice \relative c'' \times 2/3 {
	\voiceTwo
	af16 ef' df \acciaccatura ef df c g' g f r    df f df f df f bf, e c
    } >>
    %% 215
    << \new Voice \relative c''' {
	\voiceOne
	af8 s s                                gf s s
    } \\ \new Voice \relative c'' \times 2/3 {
        \voiceTwo
	<b d>16 \( <c ef> <cs e>  <d f> <ds fs> <e g>  <f af> <e g> <bf' df> \)
	<a, c> \( <bf df> <b d>   <c ef> <cs e> <d f>  <ef gf> <d f> <af' cf> \)
    } >>
    << \new Voice \relative c'' {
	\voiceOne
	e8
    } \\ \new Voice \relative c'' \times 2/3 {
        \voiceTwo
	<g bf>16 \( <gs b> <a c>  <bf df> <b d> <c ef>  <cs e> <d f> <ds fs>
        <e g> <fs a> <e g>        <ds fs> <e g> <fs a>  <g bf> <af c> <bf df> \)
    } >>
    << \new Voice \relative c''' \times 2/3 {
	\voiceOne \phrasingSlurUp
	\invisnext c16 \( s8  c16 ef df  af c bf \)
                                   c, \( <bf' g> <af f>  af, <g' ef> <f df>  g, <c e> bf \)
    } \\ \new Voice \relative c''' \times 2/3 {
        \voiceTwo
	<c af>16 <ef g> <df f> c[ s bf] af[ s g]   c,8[ s16 af8 s16 g16 s bf]
    } >>
    %% 218
    << \new Voice \relative c'' {
	\voiceOne \phrasingSlurUp \slurDown
	\times 2/3 { bf16 \( <e g> f~  f ef df~  df c bf }  af8[ g]~ <g e>16.[\) <c ef,>32]( \(
        <f, d>16.) <bf df,>32( <ef, c>16.) <af c,>32( <d, b>16.) <g bf,>32(
                            <c, a>16.) <f af,>32(  <f df g,>8) <e c g> \bc
	<ef! c>8 <df bf>4                              c4 \)
    } \\ \new Voice \relative c'' {
        \voiceTwo
	\times 2/3 { bf16[ s af] f'[ s bf,] af[ s g]}  f4 s8
        s2.
        f,4       ef16. f32                            <bf g>8[ <af f>]
    } >>
                                                                         <f,, af f'>8 \(
    %% 221
    <f g f'>8 <ef a> <f bf>                            <g bf c> <af c af'> <bf c e>
    <af c f>8 <gf c ef> <f bf df>                      <f af c>4 <e bf' c>8 \) \tc
    \times 2/3 {
	<gs f'>16 \( a <c gf'>  <d a'> ef <g c>  <gs ef'!> a <c gf'>
                       <d a'> ef <gf c>
        #(set-octavation 1)
                                          <gs ef'> a <c gf'> <d a'> ef <gf c>
    }
    <a ef'>8\st \) #(set-octavation 0)
    << \new Voice \relative c' {
	\voiceOne \phrasingSlurUp
	      <a c a'>8[ \( <bf f' bf>]     <df f bf df>\accent <c e bf' c> \) <e bf e,>
    } \\ \new Voice \relative c' {
	\voiceTwo
	\property Voice.Beam \override #'positions = #'(-7 . -6)	
	\times 2/3 { ef16 f gf }
    } >>
    %% 225
    \times 2/3 {
	<gs,,, f'>16 \( a <c gf'>  <d a'> ef <g c>  <gs ef'!> a <c gf'>
                       <d a'> ef <gf c>
        #(set-octavation 1)
                                          <gs ef'> a <c gf'> <d a'> ef <gf c>
    }
    <a ef' f>8\st \) #(set-octavation 0)
    << \new Voice \relative c'' {
	\voiceOne \phrasingSlurUp
	      <a c a'>8[ \( <bf f' bf>]     <df f bf df>\accent <c e bf' c> \) <e bf e,>
    } \\ \new Voice \relative c'' {
	\voiceFour
	\property Voice.Beam \override #'positions = #'(-4 . -3)	
	\times 2/3 { ef16 f gf }
    } >>
    %% 227
    <f,, af f'>8\st \bc
    \relative c \times 2/3 {
	      df16 \( c f           af f bf        af e g   af g c \tc df c af'
        g16 b, c   df c f           af f bf        af e g   af g c     df c g'
        f16\st \)  b,,\( c  df c f  af f bf        af e g   af g c     df c af'
        %% 230
        g16 b, c   df c f           af f bf        af e g   af g c     df c g'
        f16\st \) #(set-octavation 1)
            f' e   ef df c          bf af g        f e ef   df c bf    af g f
	#(set-octavation 0)
        af'16 g f  ef df c          bf af g        f ef df  c bf af    g f df
        c16 \( f af   c  f af   #(set-octavation 1)
                                    c  f af        df c af  f bf af    f c g'
        #(set-octavation 0)
        f16 c af   df c af          f bf af        f c  g'  f c  af    df c af
        %% 235
        f16 bf af  f  c g'          f c  af    \bc df c af  f bf af    f c g'
        f16 c  af  df c af          f df' c        af f df' c af f     df' c af
    }
    f,,8\st \) r8 r8                   \tc         <f'' af df f>8\st r8 r8
    <df' f g df'>8\st r8 r8                        <e, c bf g>8\st r8 r8

    <f c af f>2.\fermata
    \bar "|."
}

dynamics = \notes {
    \property Voice.TupletBracket \override #'bracket-visibility = ##f
    \property Voice.TupletBracket \override #'number-visibility = ##f

    %% 1
    s2. \p
    s2.
    s4. s4 \< s16 s16 \!
    s2. _"poco cresc."
    s4. s4._\markup { "" \raise #1.0 { dim. e rit. } }
    s2.
    s2.
    %% 8
    s2. _"mezza voce"
    s2.
    s2.
    s2.
    s8 s8 \< s8 s8 \> s8 s8 \!
    %% 13
    s8 s8 \mf s8 s4.
    s2.
    s8 s4 \< s4 s8 \!
    s4. \> s4. \!
    %% 17
    s8 s4 \mp \< s4 s8 \!
    s4. \> s4. \!
    s2.
    s2 s4 \<
    s4 s8 \! s4. \>
    s4 s8 \! s4.
    %% 23
    s2. ^"mezza voce"
    s2.
    s8 s4 \< s4 s8 \!
    s8 \> s8. s16 \! s8 s8 \< s8
    %% 27
    s4 s8 \! s8 s8 \mf s8
    s2.
    s4. s8 s8 \< s8
    s4 s8 \! s8 \> s8 s16 s16 \!
    %% 31
    s2 s8 \mp \< s8
    s4 s8 \! s8 \> s8 s16 s16 \!
    s8 s8 \p s2
    s8 \< s2 s16 s16 \!
    s8 s8 \< s8 s4 s8 \!
    s8 \> s8 s16 s16 \! s8^"dim." s4
    %% 37
    s2.
    s8 s8 \pp s2
    s2.
    s2.
    s2.
    %% 42
    s2.
    s2.
    s4. s4. \<
    s4. \! s4 s8 \>
    %% 46
    s8 s2 \< s8 \!
    s4 \> s16 s16 \! s4.
    s8 s2 \< s8 \!
    s4 \> s16 s16 \! s4.
    %% 50
    s8 s4^"cresc." s4.
    s2.
    s2.
    s8 s4 \< s8 \! s4 \>
    s8 \! s4 \< s8 \! s4 \>
    s8 \! s4 \< s4.
    s4 \! s8 s8 s4 \>
    s4. s8 \! s4
    %% 58
    s8 \p s8-"cresc. poco a poco" s8 s4.
    s2.
    s2.
    s2.
    s4. s4. \f
    %% 63
    s4. s4._"cresc."
    s2.
    s4. s4 \> s8 \!
    s4 \< s8 s8 \! s4^\piuf
    s2.
    %% 68
    s8 s4 \< s8 \! s4
    s4.^\piuf s8^"rit." s8 \< s16 s16 \!
    s4. s4 s8 \rf
    s2.
    %% 72
    s8 \fp s16 \< s8 s16 \! s16 \> s16 \! s16 \< s8 s16 \!
    s16 \> s16 \! s16 \< s8 s16 \! s16 \> s16 \! s16 \< s8 s16 \!
    s2._"dim. e accel."
    s16 \< s4 s16 \! s16 \> s4 s16 \!
    s8 \> s2 s8
    s2.
    s2 \! s4
    s2.
    %% 80
    s4 s8 \p \> s4 s8 \!
    s2.
    s4 s8 \< s4.
    s4 \! s8 \> s4.
    s8 \! s8 s8 \< s4. \>
    %% 85
    s4 \! s8 s4.
    s2.
    s4. \< s4. \>
    s4 \! s8 s4.
    s4. s4 s8 \<
    %% 90
    s4. s4 s8 \!
    s2.
    s4. s4._"poco cresc."
    s2.
    s2.
    %% 95
    s4. s4. \f
    s4 \> s8 s4 s8 \!
    s2.
    s4 s8 \p \< s4 s8 \!
    s4 \> s8 s4 \! s8
    %% 100
    s2._"poco cresc."
    s2 \< s8 s16 s16 \!
    s2 \> s8 s16 s16 \!
    s4. \< s8 \! s4_"cresc."
    s2.
    %% 105
    s2 \< s8 s16 s16 \!
    s2 \> s8 s16 s16 \!
    s4. \p s8. s8. \<
    s8. \! s8.^"poco cresc." s4.
    s8. s8.^"dim." s4.
    %% 110
    s8. s8.^"poco cresc." s4.
    s4. s4.^"dim."
    s8 \< s8 \> s8 s16 \! s16 s4
    s2.
    s8 \< s8 \> s8 s16 \! s16 s4
    %% 115
    s16 \> s4. s16 \! s16 s16 \> s16 s16 \!
    s2.
    s2. \f
    s2.
    s2.
    %% 120
    s4. \< s16 \! s16 \> s4
    s4 \p s16 \< s4. s16 \!
    s2.
    s2._"cresc."
    s2.
    %% 125
    s2. \f
    s2.
    s2.
    s2._"dim."
    s2.
    %% 130
    s2.
    s2.
    s4. s4._"dim."
    s8. s4._"smorz. e poco rit." s8.
    s4. s4. \pp
    %% 135

    s2.
    s2.
    s2.
    s4. \> s4. \!
    s2.
    %% 140
    s4. s4 s8 \< |
    s4 s8 \! s4. \> |
    s4. \! s4._"poco cresc." |
    s2. |
    s4. \< s4 s8 \! |
    %% 145
    s4. \> s4. \! |
    s8 s4 \< s4 s8 \! |
    s4. \> s4. \! |
    s2. |
    s16 \< s4 s16 \! s8 s16 \< s8 s16 |
    %% 150
    s4 s8 \! s4. \> |
    s4. s4. \! |
    s2. \p |
    \times 6/8 { s16 s4. \< s16 \! } s16 \> s16 \! \times 4/7 { s16 s16 \> s4 s16 \! } |
    s8 s4 \< s4 s16 s16 \! |
    %% 155
    s2. |
    s4. s8 s16 \< s8 s16 \! |
    s8 s4 \> s16 \! s16 \< s4 |
    s4. \> s8 \! s4 \< |
    s4. \> s4 s16 s16 \! |
    %% 160
    s4. s8 \< s4 |
    s4 s16 s16 \! s8. \> s8. \! |
    s4 \< s16 s16 \! s8 \> s16 s16 \! s8 |
    s2.^"poco accel."
    s4. \rf \times 2/3 { s8. s8 \< s16 \! s8 \> s16 \! } |
    %% 165
    s4. \times 2/3 { s8. s8 \< s16 \! s8 \> s16 \! } |
    s2._"dim." |
    s8 \< s4 \> s4. |
    s4.^"poco rit." s4 s16 s16 \! |
    s2. \p |
    %% 170
    s2. |
    s8 s4 \< s4 s8 \! |
    s2 \> s4 \! |
    s2.^"dolce" |
    s4. s4 \< s8 \! |
    %% 175
    s2. |
    s2. |
    s8 \> s8 \! s8 \f s4. |
    s2. |
    s2. |
    %% 180
    s2. |
    s4. s4. \< |
    s4. \!  s4 \> s8 \! | 
    s4. s4. \< |
    s4. \!  s4 \> s8 \! |
    %% 185
    s4. \> s4 s16 s16 \! |
    s4. \mf s8 s4 \< |
    s4 \! s8_"cresc." s4. |
    s2. |
    s2. |
    %% 190
    s2. |
    s8 \fz s4 \< s4 \> s8 \! |
    s4. \< s4. \> |
    s4. \< s4. \> |
    s4. \< s4. \> |
    %% 195
    s8 \fz s8 \ff \< s8 s4. |
    s2. \fz |
    s8 s4 \< s4. |
    s4 \! s8 \< s4. |
    s2. |
    %% 200
    s4. s4 s8 \! |
    s2. |
    s2. \fff |
    s2. \pp |
    s2. |
    %% 205
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    %% 210
    s2. |
    \times 2/3 {
	s8. \f s16 \< s4 s16 \! s8. s16 \> s4 s16 \! |
	s16 s8 \< s4. s4. \> s8 s16 \! |
	s16 s8 \< s4. s4. \> s8 s16 \! |
	s16 s8 \< s4. s4. \> s8 s16 \! |
        %% 215
        s16 \fz \< s16*7 s16 \! s16 \fz \< s16*7 s16 \! |
        s16 \fz \< s16*7 s16 \! s16 \< s16*7 s16 \! | 
        s16 \> s16*13 s16 \! s8 \< s16 \! |
        s8. s4. \> s4. \! s8 \< s16 \! |
        s8. s4._"cresc." s8. s4. |
        %% 220
        s8*9^\semprepiuf |
        s2. \< s4. \! |
        s16 \> s16*8 s16 \! s2 |
        s16 \ff \< s16*16 s16 \!
        s8.\fz s8 \> s16 \! s8. s4. \> s8. \! |
        %% 225
        s16 \fz \< s16*16 s16 \!
        s8.\fz s8 \> s16 \! s8. s4. \> s8. \! |
	s8. \fz s8.^"cresc." s2. |
        s8*9 |
        s8*9 |
        %% 230
        s8*9 |
        s8*9 \ff |
        s8*9 |
        s2 \< s16 \! s16*9 |
        s8*9 |
        %% 235
        s8*9 |
        s8*9 |
        s8*9 |
        s8*9 |
        s8*9 |
     }
}

lowerPart = \notes \relative c' {
    \property Staff.NoteCollision \set #'merge-differently-dotted = ##t
    \bc

    \phrasingSlurUp
    %% 1
    r4 r8                                    e\> e d
    d8 c\! r                                 f,,16 ( c'' a c d, c' )
    g,16 ( g' < f b > g e g                  c, g' c a g ) r
    c,,16\st ( g'' c d e8 )                  f,,16 ( c'' a c d, c' )
    g,16 ( g' < f b > g e g                  c, g' c a g ) r
    %% !!! Make phrasing work here?
    %% 6
    g,16  g' < f b > g e g                   c, g' c a g c,
    << { s8. c8. ~ \invisnext c4 } \\ { c'16 a g c, c' a <c, g'>4^\fermata  } >> r8
    %% 8
    r4 r8                                    f,\st \tc <c'' f af>[ ( <af c f>] ) \bc
    f\st \tc <df' e g>[ ( <bf df e>] ) \bc   f,\st \tc <c'' f af>[ <af c f>] \bc
    f\st \tc <df' e g>[ <bf df e>] \bc   f\st \tc <c' f af>[ <af c f>] \bc
    ef8\st <c' af'> ef,\st                   ef,\st <df'' ef g>[ <g, df' ef>]
    af,8\st <af' c ef>[ ( <ef af c>]         <af c f> <af c ef> <ef af c> )
    %% 13
    af,,8\st \tc <ef''' af c>[ <c ef af>] \bc    af\st \tc <ff' g bf>[ <df ff g>] \bc
    af,8\st \tc <ef'' af c>[ <c ef af>] \bc      af\st \tc <ff' g bf>[ <bf, df g>] \bc
    af,8\st \tc <ef'' af c>[ <c ef af>] \bc      ef,,\st \tc <ef'' gf bf>[ <bf ef gf>] \bc
    f,8\st \tc <ef'' f a>[ <a, ef' f>] \bc       bf,\st <bf' df f>[ <f bf df>]
    %% 17
    gf,8\st <bf' df gf>[ <gf bf df>]             df,\st <af'' df f>[ <f af df>]
    ef,8\st <bf'' c gf'>[ <gf bf ef>]            f,\st \tc <c'' f a>[ <a c f>] \bc
    f8\st \tc <df' e g>[ <bf df e>] \bc          f,\st \tc <c'' f a>[ <a c f>] \bc
    f8\st \tc <df' e g>[ <bf df e>] \bc          f,\st \tc <c'' ef gf>[ <gf bf ef>] \bc
    f8\st \tc <ef' gf bf>[ <c ef gf>] \bc        f,,\st \tc <ef'' a>[ <a, ef' f>] \bc
    bf,8\st <bf' df f>[ <f bf df>]               c\st <bf' c e>[ <g bf c>]
    %% 23
    f,8\st <c'' f af>[ <af c f>]                 f\st <df' e g>[ <bf df e>]
    f,8\st <c'' f af>[ <af c f>]                 f\st <df' e g>[ <bf df e>]
    f8\st <af c af'> ff\st                       ef\st <c' af'> ef,\st
    ef,8\st <df'' g>[ <ef, g df'>]               af,\st <af' c ef>[ ( <ef af c>] )
    %% 27
    af,8\st <af' c ff>[ ( <ff af c>] )           af,,\st \tc <ef''' af c>[ <c ef af>] \bc
    af8\st \tc <ff' g bf>[ <df ff g>] \bc        af,\st \tc <ef'' af c>[ <c ef af>] \bc
    af8\st \tc <ff' g bf>[ <bf, df g>] \bc       af,\st \tc <ef'' af c>[ <c ef af>] \bc
    ef,,8\st \tc <ef'' gf bf>[ <bf ef gf>] \bc   f,\st \tc <ef'' a>[ <a, ef' f>] \bc
    %% 31
    bf,8\st <bf' df f>[ <f bf df>]               gf,\st <bf' df gf>[ <gf bf df>]
    df,8\st <af'' df f>[ <f af df>]              ef,\st <bf'' c gf'>[ <gf bf ef>]
    f,8\st \tc <c'' f a>[ <a c f>] \bc           f\st \tc <df' e g>[ <bf df e>] \bc
    f,8\st \tc <c'' f a>[ <a c f>] \bc           f\st \tc <df' e g>[ <bf df e>] \bc
    f,8\st \tc <c'' ef gf>[ <gf bf ef>] \bc      f\st \tc <ef'gf bf>[ <c ef gf>] \bc
    f,,8\st \tc <ef'' a>[ <a, ef' f>] \bc        bf,\st <bf' df f>[ ( <f bf df>]
    %% 37
    <bf df gf>8 \> <bf df f> \! <f bf df>        <df f bf> ) <bf bf,>[ ( <af af,>]
    <gf gf,>8 ) <df df'>[_"legato" ( <gf gf'>]   <bf bf'> <ef ef'> <bf bf'>
    <df df'>8 <ef ef'> <bf bf'>                  <df df'> <af af'> <bf bf'>
    <gf gf'>8 ) <ef ef'>[ ( <bf bf'>]            <df df'> <af af'> <bf bf'>
    <gf gf'>8 ) <ef'' ef'>[ ( <bf bf'>]          <df df'> <af af'> <bf bf'>
    %% 42
    <cf cf'>8 ) <cf, cf'>[ ( <ff ff'>]           <af af'> <df df'> <af af'>
    <cf cf'>8 <df df'> <af af'>                  <cf cf'> <gf gf'> <af af'>
    <ff ff'>8 ) <df df'>[ ( <af af'>]            <cf cf'> <gf gf'> <af af'>
    <ff ff'>8 ) <df'' df'>[ ( <af af'>]          <cf cf'> <bf bf'> <af af'>
    %% 46
    <bf bf,>\st ) <af' d>[ <d af'>]              r8 <af d af'> <f af d>
    cf8\st <af' ef' af>[ <f af ef'>]             f,\st <af' ef' af>[ <f af ef'>]
    bf,\st  <af' d>[ <d af'>]                    b,\st <af' ef' af>[ <f af ef'>]
    c8\st <a' ef' a>[ <f a ef'>]                 f,\st <a' ef' a>[ <f a ef'>]
    %% 50
    bf,8\st <bf' d af'>[ <f bf d>]               ef,\st <bf'' df g>[ <ef, bf' df>]
    af,8\st <af' ef' gf>[ <ef af c>]             df,\st <af'' df f>[ <f af df>]
    gf,8\st <bf' df f>[ <gf bf df>]              c,,\st <gf'' ef'> r8
    f,8\st ef''16[ \( f, ef' df]                 c4 bf8
    bf8\st \) ff'16 \( f, ff' ef                 df4 c8
    c8\st \) r8 r                                r4 r8
    r4 r8                                        f,,\st <ef'' a>[ <a, ef f>]
    bf,8\st <bf' df f>[ <f bf df>]               c\st <bf' c e>[ <e, bf' c>]

    %% 58
    f,8\st <f' af c>[ <af c af'>]                <f, df' g>\arpeggio <f' bf df>[ <bf df g>]
    <f f,>8\st <f af c>[ <af c af'>]             <f, c' g'>\arpeggio <f' bf df>[ <bf df g>]
    << {
	%% 60
        s4.                                           r16 df df ( c ) c ( bf )
        \stemDown s16 ef,16 ( bf' ef df ef \stemUp    df ) ( c ) c ( b ) b ( af )
	af8.  s8.                                     s4.
    } \\ {
	%% 60
        <c, f,>8[ <c f af c>] <ff ff,> (              <ef ef,>\st ) ef[ ef]
        ef,8\st s4                                    af'8. ( f16 ) f ( ff )
        \phrasingSlurUp
        ff16 ( ef ) ef <df df,> \( <c c,> <bf bf,>    \stemBoth <af af,>8\st \) <ef' af c>[ <ef af c ef>]
    } >>
    %% 63
    <af, ff' bf>8\arpeggio <ff' g bf df>[\arpeggio <g bf df ff>]
                                                      <af, af,> <ef' af c>[ <ef af c ef>]
    <af, ff' bf>8\arpeggio <ff' g bf df>[ <g bf df ff>]
                                                      <af, af,> <ef' af c ef>[ <af c af'>]
    %% 65
    <ef bf ef,>8\arpeggio <ef gf bf c>[ <bf' c ef gf>] f,16\st 
    << {
                                                     s8. f'8\arpeggio
        s16
    } \\ {
        \phrasingSlurDown  \slurUp                   f[ \( c' ef gf\arpeggio ( f] )
        <bf, df>16 \)
    } >>
    \phrasingSlurDown
                 gf[ \( f <ef ef,> <df df,> <c c,>]  <bf bf,>8\st \) <f' bf df>[ <bf df f>]
    \phrasingSlurBoth
    <df, af df,>8\arpeggio <f af df>[ <af df af'>]    <ef ef,>[ <gf bf ef>] <gf gf,> (
    <f f,>16\st ) <gf' gf,>[ \( \> <f f,> <e e,> <ef ef,> <c c,>] \!
                                       <df df,> <bf bf,> <g g,> <gf gf,> <df df,> <gf, gf,>
    <f f,>16\st \) <gf'' gf,>[ \( \> <f f,> <e e,> <ef ef,> <c c,>] \!
                                       <df df,> <bf bf,> <g g,> <gf gf,> <df df,> <gf, gf,> \)
    <e e,>16[ <f f,>] <gf'' gf,>[ \( <f f,> <ef ef,> <df df,>]
                                       <c c,> <bf bf,> <a a,> <gf gf,> <ef ef,> <c c,>
    <a a,>8\st\accent \) <a a,>[ ( <bf bf,>] )        <bf bf,> ( <cf cf,> <ef, ef,> )
    %% 72
    <gf gf,>8\st r16 gf' ( cf bff )                   <af, af,>8\st r16 af' ( df cf )
    <bf, bf,>8\st r16 bf' ( ef df )                   <c,! c,!>8\st r16 c'! ( f! ef )
    <f,, f,>8\st r16 \tc c''' ( f ef                  f,8\st ) r16 a' \( c, a'
    f,16 a' c, a' f, a'                               c,  a' f, a' c, a'
    ef8\st \) r8 r8                                   r4 r8
    R2.
    \bc r4 r8                                         r8 c,16 \( d f ef
    d16 bf a f g bf                                   a g ef c ef8 ~
    %% 80
    ef16 d c bf f8 \)                                 <f' bf,>4 \( <f f,>8
    <f bf,>4 <f f,>8                                  <f bf,>4 <e e,>8
    <e a,>4 \) <e e,>8 \(                             <e a,>4 d,8
    <g d'>4 c,8                                       f4 f8
    <bf bf,>8 \) r8 <bf f' bf> \(                     <a d a'>4. ~
    %% 85
    <g d' bf'>4 c8                                    c4 <f f,>8
    <bf, bf,>\8\st \) r8 <bf f' bf>                   <bf f' bf>4 <bf' cs e>8 ~ \(
    <bf cs e>8 <bf d f> <bf cs g'>                    <bf d f>4 \) <bf, bf,>8\st
    <bf bf,>8\st r8 <bf bf'> \(                       <bf bf'>4 <ef bf'>8
    <ef bf'>4 \) <c c'>8 \(                           <c c'>4 <c g'>8
    %% 90
    <c g'>4 \) <g g'>8 \(                             <g g'>4 c8 \)
    \phrasingSlurDown 
    <c f,>2. \( 
    \stemDown bf4. \) \stemBoth \phrasingSlurBoth     <bf f'>4 \( <bf fs'>8
    <bf fs'>4 <bf g'>8                                <c g'>4 <c a'>8
    <d a'>4 \)  <d a' c>8 (                           <ef g bf>4 ) <e bf' cs>8 ~ \(
    %% 95
    <e bf' cs>8 <f bf d> <g bf cs>                    <af bf d>4 \) <bf, bf,>8\st
    <bf bf,>8\st r8 <bf f' bf> \(                     <bf f' bf>4 <ef bf'>8
    <ef bf'>4 \) <ef bf'>8 \(                         <ef bf'>4. ~
    <ef bf'>4 ef8                                     <g g,>4 c,8
    f,4 bf,8                                          <bf' f'>4 \) 
    << {
                                                                   d8 ~
       d16 ( ef d4 ~ )                                d16 ( ef d4 )
      %% 100
    } \\ {
                                                                   s8
       fs,4.                                          g4.
    } >>
    %% 101
    a8 ( c' ) r                                       r4 r8
    d,,8\st d'[ ( a'                                  c fs] ) r
    g,,8\st d'[ ( d'16 fs]                            g\st )
    << { \phrasingSlurUp
                                                              fs,16\st fs( f) f \( e~
        e16 f e4~ \)                                  e16 ( f e4 )
    } \\ {
                                                              s16 s4
        gs,4.                                         a4.
    } >>
    %% 105
    b8 ( d' ) r                                       r4 r8
    e,,8\st e'[ ( b'                                  d gs] ) r
    a,,,8\st a'16[ ( e' a e']                         a8 )
    << { \phrasingSlurUp
                                                            s4
        d,2.
        s8 d4. \(                                     s4
        c2. \)
        s8 c4.                                        s4
    } \\ { 
                                                            e8 \( ef
        d4 \)   fs,8 (                               g a bf16 d,
        d,8\st ) d''[ <c fs>]                        g d' df
        c4 e,8 (                                     f g af16 c,
        c,8\st ) c''[ <bf e>] \(                     f c' <af f'> \)
    } >> 
    %% 112
    af,8\st af'[\trill ( c,]                df\st ) af'[\trill ( \grace { g16[ af] }  df8]\st )
    ef,,8\st ef'[ ( <g ef'>] )                       af,\st ef'[ ( <af ef'>16] ) r16
    af,8\st \tc af''[\trill ( c,]           df\st ) af'[\trill ( \grace { g16[ af] }  df8]\st )
    %% 115
    \bc ef,,8\st \tc ef'[ ( <g ef'>] )               af,\st ef'[ ( <af ef'>8] ) 
    \bc ef,8\st \tc ef'[ ( <g ef'>] )                af,\st ef'[ ( <af ef'>16]\accent ) r16
    \bc ef,,8\st ef'[ \( <g df' ef>]                 \tc <bf df g> <ef g df'> <g df' ef>
    <df' g>8 \) r r                                   r4 r8 \bc
    << {
        \stemDown
        r8 df,4\accent ~                             df4 ef,8~ \(
        \stemUp
        %% 120
        ef8 e f                                      fs g ef
        af \) ef \( gf                               ff c df
        gf,8 af a                                    bf \) d,16 \( ef d ef
        <af af,>8\st \) <ef' ef,>[ \( <gf gf,>]      <ff ff,> <c c,> <df df,>
        <g, g,>8 <af af,> <a a,>                     <bf! bf,!> \) <ef, ef,> <ef' ef,>
        %% 125
        %% This part switches to the other voice at this point
        \phrasingSlurUp
        s4.                                          r8 bf'\st bf\accent ~ \(
        bf8 a16 \< bf a bf \!                        ef4. \)
        <af,, af,>8\st <ef' ef,>\st <af af,> ~       af af\st af\accent
        \phrasingSlurDown
        gs8 \( fss16 gs fss gs                       \stemDown gs'4. \)
    } \\ \relative c {
        s2.
        %% 120
        af2.
        af4.                                         s4.
        s2.
        s2.
        s2.
        %% 125
        %% part from other voice enters here
        \stemUp
        <af af,>8 <ef' ef,> <ef af,>_"ten." ~ \stemDown     <ef af,>4. ~
        <ef af,>4.                                   s4.        
        s4 \invisnext af,8 ~                         af4.
        gs4.                                         s4.
    } >>
    \phrasingSlurDown \stemUp
    a,,,16\st \( e'' a b cs8 \)                       d,,16\st \( a'' fs a b, a' \)
    %% 130
    e,16 \( e' <gs d> e cs e \)                       << a,4. \\ { a16 \( e' a fs e8 \) } >>
    a,,16\st \( a' e' b' cs8 \)                       d,,16\st \( a'' fs a fs, cs' \)
    es,16 \( cs' gs' cs, fs, cs'\)                    cs, \( gs' gs' cs, cs'8 \)
    e,,16 \( e' <gs d> e cs e                         a, e' a fs e a, \)
    << \new Voice {
	\voiceOne
	\tieDown
        s8. a8. ~                                     <a e'>4.\fermata ~
    } \\ \relative c \new Voice {
	\voiceTwo
        a'16 fs e a, a' fs                            s4.
    } \\ \new Voice \relative c {
	\voiceOne
	s4. \invisnext e8 ~
	\property Voice.TupletBracket \override #'bracket-visibility = ##f
	\property Voice.TupletBracket \override #'number-visibility = ##f
	\property Staff.fontSize = #-1
	\property Voice.Stem \override #'length = #5.5
	\property Voice.Beam \override #'thickness = #0.384
	\property Voice.Beam \override #'space-function = #(lambda (beam mult) (* 0.8 (Beam::space_function beam mult)))
	\stemDown
	\times 2/21 {
            e16[ \( a cs \tc e a cs] 
            e[ a e f e cs a d cs a e f! e cs! a d \bc cs e, a, d'! cs e, a, d' ] 
            cs4.\fermata \) r4 r8
	}
	\property Staff.fontSize\unset
    } >>
    %% 135

    << \relative c' {
	\voiceTwo
        r4 r8                                 a \( bf d
        cs g bf                               a bf d
        \phrasingSlurDown \tieUp
        df! c! bf ~ \)                        bf \( a d,
        g g, c                                f, \) r8 r8
        \phrasingSlurUp
        \stemDown \us c''8 \( df f            e \ls \stemUp bf df
        %% 140
        \stemDown c8 df f                     e ef df ~ \)
        df8 c f,                              bf bf, ef
        af,8 r r
    } \\ \relative c {
	\voiceOne \phrasingSlurUp
	s2. s2. s2.
	s4 c8 ~ \(                            c df! f
        e bf df                     \stemDown c \) r r
        %% 140
        s2.
        s4.                         \stemUp   s4 ef8 ~ \(
        ef8 ff af                   \stemDown g df ff
        ef8 \) r
    } >>
    \stemBoth  \tc d'8 \(                     ef ff af
    g!8 gf ff                                 ef <eff gf> <df ff!>
    <ef! c!>8 f,! f'! \)          \bc         bf,,[ ( <f' df'>] ) af,!\st
    %% 146
    gf8\st <df' gf bf>[ <gf bf df>]           df,8\st <f' af df>[ <af df f>]
    ef,8\st <ef' bf' c>[ <bf' c gf'>]         f,8\st \tc <c'' f a>[ <a c f>] \bc
    f8\st \tc <df' e g>[ <bf df e>]       \bc f,8\st \tc <c'' f a>[ <a c f>] \bc
    f8\st \tc <df' e g>[ <bf df e>]       \bc f,8\st \tc <c'' ef gf>[ <gf bf ef>] \bc
    %% 150
    f8\st \tc <ef' gf bf>[ <c ef gf>]     \bc f,,8\st \tc <ef'' a>[ <a, ef' f>] \bc
    bf,8\st <bf' df f>[ <f bf df>]            c\st <bf' c e>[ <g bf c>]
    \phrasingSlurBoth
    f,16 \( c' af' f c' af' \)                f,, \( df' g e bf' g' \)
    f,,16 \( c' af' f c' af' \)               f,, \( df' g e bf' g' \)
    f,,16 ( c' af' ) ff, ( c' af' )           ef, \( c' af' ef c' af' \)
    %% 155
    ef,,16 \( df' g ef df' bf' \)             af,, \( ef' c' ef, c' af' \)
    af,,16 \( ff' c' ff, c' af' \)            af,,, \( ef'' c' ef, c' af' \)
    af,,16 \( ff' df' \tc bf g'! df' \) \bc   af,, \( ef' c' \tc af ef' c' \) \bc
    af,,16 \( ff' df' \tc bf g'! df' \) \bc   af,, \( ef' c' \tc af ef' c' \) \bc
    ef,,,16 \( bf' gf' ef bf' gf' \)          f,, \( c' a' f ef' a \)
    %% 160
    bf,,,16 \( f' df' bf f' df' \)            gf,, \( df' bf' gf df' bf' \)
    df,,,16 \( af' f' df af' f' \)            ef,, \( cf' gf' \) e, \( df' g \)
    f,16 \( c'! a' f c' a' \)                 f,, \( df'  bf' e, df' g \)
    f,,16 \( c' a' f c' a' \)            \tc  f, \( df' bf' e, df' g \)
    \property Staff.tupletSpannerDuration = #(ly:make-moment 3 24)
    \property Staff.autoBeamSettings \override #'(end 1 24 6 8) = #(ly:make-moment 3 24)
    <c, f,>8 r r \bc                          r \times 2/3 { c,16 \( df d ef e df }
    %% 165
    <c f>8 <f, ef'!> \) r                     r \times 2/3 { c16 \( df d ef e df \) }
    <f c f,>8 <e df> ( <f c> )                <e df> ( <f c> ) <e! df> (
    <ef! c f,>8 ) r r                         r4 r8
    R2.
    \property Staff.TupletBracket \override #'bracket-visibility = ##f
    \times 2/3 { df,16\st_"leggiero" \( af' bf c df ef f gf af  bf af bf c[ df ef } f8] \)
    \property Staff.TupletBracket \override #'number-visibility = ##f
    %% 170
    \times 2/3 { df,,16 \( af' bf c df ef f gf af        bf af c df[ ef f } gf8] \) 
    \times 2/3 { df,,16 \( af' bf c df ef f gf af        bf af bf cf[ df ef } f8] \)
    \times 2/3 { df,,16 \( af' df f af df af f' df       af af' f df af f df af af' \) }
    \times 2/3 { df,,16 \( af' df af' df, af df af' df   af df, af' df af' df, af df, af' }
    \times 2/3 { df16 af df, af df af' df, af df, \) } 
                                        gf,\st df' \( \times 2/3 { df' gf, df bf' gf df \) }
    %% 175
    ef16 \( bf' ef gf ef bf \)                           ef, \( bf' ef bf' ef, bf \)
    af16 \( ef' gf df' gf, ef \)                         af, \( ef' gf c gf af, \)
    \times 2/3 { df,16\fz \< \( af' bf c df ef f gf af   bf af bf c[ df ef } f8] \) \!
    \times 2/3 { df,,16 \< \( af' bf c df ef f gf af     bf af c df[ ef f } gf8] \) \!
    \times 2/3 { df,,16 \( af' bf c df ef f gf af        bf af bf c[ df ef } ff8] \)
    %% 180
    \times 2/3 { c,,16 \( c' ef af ef af \tc c ef af     ef ef' af, ef c af \bc ef c af \) }
    cf,8\st \times 2/3 { cf'16 \( df f ef' f, df \)      bf \( df gf ef' gf, df df' gf, df \) }
    \times 2/3 {
	af16 \( df f c' f, df df' f, df \)               gf, \( df' gf ef' gf, df ff' gf, df \)
        g,!16 \( df' ef a ef df bf' ef, bf \)            af! \( ef' af f' af, ef ef' af, ef \)
        bf16 \( ef g d' g, ef ef' g, ef \)               af, \( ef' af ef' af, ef af' ef af, \)
    }
    %% 185
    \times 2/3 { bf,16 \( df gf bf gf df df' gf, df \) } 
                                  bf,\accent \( gf' \times 2/3 { df' gf, df' gf, df' gf, \) }
    bf,16\accent \( gf' \times 2/3 { df' gf, df' gf, df' gf, \) }
                                  bf,\accent \( gf' \times 2/3 { df' gf, df' gf, df' gf, \) }
    bf,16\accent \( f' \times 2/3 { df' f, df' f, df' f, \) }
    << \relative c, {
        c8
    } \\ \relative c, {
        c16 \( f \times 2/3 { c' \< df d ef e f \! \) }
    } >>
    << \relative c, {
        df!8
    } \\ \relative c, {
        df16 \( bf' \times 2/3 { c \< df d ef e f \! \) }
    } >>
    << \relative c, {
        e8
    } \\ \relative c, {
        e16 \( c' \times 2/3 { d! \< ef e f fs g \! \) }
    } >>
    << \relative c, {
        f8
    } \\ \relative c, {
        f16 \( df' \times 2/3 { ef e f fs g af \) }
    } >>
    << \relative c {
        g8
    } \\ \relative c {
        g16 \( ef' \times 2/3 { f fs g af a bf \) }
    } >>
    \relative c
    %% 190
    \times 2/3 { af16 \( f' af df af f' df af f \)   af,, \( af' ef' c' af gf' c, af ef \) }
    df16.[ \( af'32] \times 2/3 { df16 df af' \tc df df af'  
                                          df\accent af df, \bc df af df, df af df, \) }
    df16.[ \( a'32] \times 2/3 { df16 df a' \tc df df a'  
                                          df\accent a df, \bc df a df, df a df, \) }
    df16.[ \( bf'32] \times 2/3 { df16 df bf' \tc df df bf'
                                          df\accent bf df, \bc df bf df, df bf df, \) }
    df16.[ \( g32] \times 2/3 { df'16 df g \tc df' df g
                                          df'\accent g, df \bc df g, df df g, df \) }
    %% 195    
    \phrasingSlurDown
    <c c'>8\st \stemDown c16.[ \( f32] \times 2/3 { af16 b c \stemBoth f af b \tc c f af b c f }
    \property Voice.autoBeaming = ##f
    af8\st \) \bc <df,,, af' df>\st <cf f af cf>\st <bf df gf bf>\st <c g' c>\st <bf e g bf>\st
    \property Voice.autoBeaming = ##t
    <af f' af>8\st \stemDown c,16.[ \( f32] \times 2/3 { af16 b c \stemBoth f af b \tc c f af b c f }
    \property Voice.autoBeaming = ##f
    af8\st \) \bc <df,,, af' df>\st <cf cf,>\st      <bf bf,>\st <c c,>\st <bf bf,>\st
    <af af,>8\st <g g,>\st <fs fs,>\st               <e e,>\st <ds ds,>\st <d' d,>
    %% 200
    <cs cs,>8\st <b b,>\st <as as,>\st               <a a,>\st <af af,>\st <bf bf,>\st
    \property Voice.autoBeaming = ##t
    <c! c,!>8\st r8 r8                               c8 ( df f )
    <c c,>8\st <g g,>\st <c, c,>\st                  r4 r8\fermata
    <c' g' e'>2.
    <c g' d'>2.
    %% 205
    <c g' c>2.
    <c g' bf>2.
    <c c,>2. ~
    <c c,>2. ~
    <c c,>2. ~
    %% 210
    <c c,>4 r8                                       r4 r8

    f,,8\st \times 2/3 { df''16 df, g c, e' c        af' c, f, } df' df, \times 2/3 { c e' c }
    \property Voice.Hairpin \override #'extra-offset = #'(0 . -3)
    \times 2/3 { f,16 f' af, ef gf' af, df, f' af,   g \(\<  af a bf b c df \>  c \! \) r }
    f,8 \times 2/3 { df''16 df, g c, e' c            af' c, f, } df' df, \times 2/3 { c e' c }
    \times 2/3 { f,16 f' af, ef gf' af, df, f' af,   g \(\< af a bf b c df \> c \! \) r }
    \property Voice.Hairpin \revert #'extra-offset
    %% 215
    \times 2/3 {
        f,16  af' d,   b  af' d,   e,  g'  df        ef, gf' c,   a  gf' c,   d,  f'  cf
        df,16 e'  bf   g  e'  bf   c,  e'  bf        b,  e'  b    g  e' b     bf, e' c
	af,16 f'' c    af f'  c    bf, f'' df        c,  f'  c    af f'  c    c,  e'  c
     }
    << \relative c {
	df4   bf8
    } \\ \relative c \times 2/3 {
	df16  df' af   f  df' af   bf, df' g,        c,  c'( df   c  b   c    g   c   a)
    } >>
    \times 2/3 {
	bf16\accent f g af\accent ef f g\accent d e  f\accent c df bf\accent a bf c\accent b c
        %% 220
        a16 gs a    bf c af     g af f               e f g      f g ef      df ef c
        bf16 c df   c f ef      df ef f              e f g      f bf af     g af bf
        af16 bf c   a gs a      bf c df              c af f     df c df     c af' g
    }
    <f c'>16. ef32  gf'16. a32 \tc c16. ef32         gf16. a32  c16. ef32   gf16. a32
    c8\st \bc \times 2/3 { <gf,, gf,>16 <f f,> <ef ef,>  <df df,>( <c c,>) <bf bf,>
                 <af af,>( <g g,>) <g g,>  <g g,>( <c, c,>) <c c,>  <df df,>( <c c,>) <c c,> }
    %% 225
    <f f,>16. ef'32  gf16. a32 \tc c16. ef32         gf16. a32  c16. ef32   gf16. a32
    c8\st \bc \times 2/3 { <gf, gf,>16 <f f,> <ef ef,>  <df df,>( <c c,>) <bf bf,>
                 <af af,>( <g g,>) <g g,>  <g g,>( <c, c,>) <c c,>  <df df,>( <c c,>) <c c,> }

    \times 2/3 { f,,16 c' af' } r8 r8               c,16 \( g' e' e, c' bf' \)
    f,16 \( c' af' af, f' c' \)                     c, \( bf' e e, c' bf' \)
    f,,16 \( c' af' af, f' c' \)                    c, \( bf' e e, c' bf' \) \tc
    %% 230
    f,16 \( c' af' af, f' c' \)                     c, \( bf' e e, c' bf' \)
    <f  c af f>8\st <f df af f>4\accent             <f c af f>8\st <f df af f>4\accent \bc
    <f, c af f>8\st <f df af f>4\accent             <f c af f>8\st <f df af f>4\accent \bc
    <af, c, f,>8\st\arpeggio r8 r8
    \times 2/3 \relative c''' {
                                         \tc df16\accent \( c af   f bf af    f c g'
        f16 c af   df c af          f bf af        f c  g'  f c  af    df c af \bc
        %% 235
        f16 bf af  f  c g'          f c  af        df c af  f bf af    f c g'
        f16 c  af  df c af          f df' c        af f df' c af f     df' c af
    }
    f,,8\st \) r8 r8                               <df'' df,>8\st r8 r8
    <bf bf,>8\st r8 r8                             <c c,>8\st r8 r8
    <f, f,>2.\fermata
    \bar "|."
}

pedal = \notes {
%% TODO
}

\score {
    \notes \context PianoStaff <<
	\property PianoStaff.connectArpeggios = ##t
	\context Staff = treble <<
	    \key f \minor
	    \time 6/8
	    \topPart
	>>
	\context Dynamics=dynamics \dynamics
	\context Staff = bass <<
	    \key f \minor
	    \time 6/8
	    \clef bass
	    \lowerPart
	>>
%	\context Dynamics=pedal \pedal
    >>
    \paper {
	\translator {
	    \type "Engraver_group_engraver"
	    \name Dynamics
	    \consists "Output_property_engraver"
	    
	    minimumVerticalExtent = #'(-1 . 1)
	    pedalSustainStrings = #'("Ped." "*Ped." "*")
	    pedalUnaCordaStrings = #'("una corda" "" "tre corde")
	    
	    \consists "Piano_pedal_engraver"
	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"
	    TextScript \override #'font-relative-size = #1
	    TextScript \override #'font-shape = #'italic
	    DynamicText \override #'extra-offset = #'(0 . 2.5)
	    Hairpin \override #'extra-offset = #'(0 . 2.5)
	    
	    \consists "Skip_event_swallow_translator"
	    
	    \consistsend "Axis_group_engraver"
	}


	\translator {
	    \PianoStaffContext
	    \accepts Dynamics
	    TextScript \override #'font-shape = #'italic
	    VerticalAlignment \override #'forced-distance = #8
	
	}

%        linewidth = 18.0 \cm
        \translator { 
	    \ScoreContext
	    SpacingSpanner \override #'spacing-increment = #1.0
	    SpacingSpanner \override #'base-shortest-duration = #(ly:make-moment 1 24)
	    SpacingSpanner \override #'shortest-duration-space = #1.9       
        }
    }  
    \midi {     
	\translator {
	    \type "Performer_group_performer"
	    \name Dynamics
	    \consists "Piano_pedal_performer"
	    \consists "Span_dynamic_performer"
	    \consists "Dynamic_performer"
	}
	\translator {
	    \PianoStaffContext
	    \accepts Dynamics
	}
    }  

}

