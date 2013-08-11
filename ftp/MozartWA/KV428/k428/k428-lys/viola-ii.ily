\version "2.16.0"

violaSecondMov =  \relative as {
    \key as \major
    \clef alto

    \noTupletBracket

    \repeat volta 2 {
	 as4.(\p   bes)\sf
	| \stemUp \slurDown  as4(\p 
           c8) \slurNeutral bes4.( \stemNeutral
	| as  g)
	| f4.(  fes8) es4_\cresc
	|  f!8[( g  as)]   as[(\f  g)]  r
	| as'4.(\p  es') ~
	| es8(  des4) c8(  bes4)
	|  a8[( bes as]  g[ as  ges)]
	|  f4.(_\cresc   g!16.[ as32 bes8  as)]

% 10
	| r  es[\f es] es4 r8
	| r  bes[(\p  es)]  e[(  f)] r
	| r  f,[(  d')]  d[(  es!)] r
	| r  f[(  es)] es4(_\cresc  c8)
	| c4. bes4\f bes'8(\p
	|  ces4.) ~ ces4 bes8(
	|  ces4.) ~ ces4 bes8(
	|  ces4.)(_\cresc  bes)
	|  as8[(\f g  f)] es4 r8
	| r8  bes[(\p as]  g4.)

% 20
	| r8  bes[( as]  g4.)
	| es'2._\cresc ~
	| es8\p r r bes r r
	| c4.(\sf  bes) ~
	|  bes8[(\p d  es)] ~  es16.[(  c32)] bes4
	| c'4.(\sf  bes)
	| bes8 r r r4 r8
	| c,4\f r8 r4 r8
	| r4 es8 r es r
	| es r r r4 r8

% 30
	| g,4.(  bes)
	| << <bes g'>2. { s4.  s4._\cresc } >>
	| \set doubleSlurs = ##t <c as'>4.( <bes f'>)
	| <bes g'>2.\p_\cresc
	| <c as'>4.( <bes f'>) \set doubleSlurs = ##f
	| <bes g'>8[\p <es, bes'> <es bes'>] <es bes'> r r
    }

    \repeat volta 2 {
        |  es'8[(\p g bes]  d,[ f  bes)]
	|  c,[( es  as)]  bes,[( des!  f)]
	|  c[( f  as)]  c,[( e  g)]
	| f,4.(  c') ~

% 40
	| c8(_\cresc  bes4) ~ bes8(  as4)
	| R2.
	|  f4.(\mf   c')
	|  des4.(\f  c)
	| bes4(  c8) des4(  as'8)
	|  as[( bes g]  as) r r
	|  f8[(\p as ces]   es,[ as  ces)]
	|  d,[( f  bes)] r4 r8
	|  es,[( ges bes]  des,[ fes  beses)]
	|  c,[( es  as)] r4 r8

% 50
	| << { as4.(  g!) } { s8 s4_\cresc } >>
	| as4.(  es) ~
	| es(\f  f)
	|  bes,8[(\p g es]  d[ f  as)]
	| g r r r4 r8
	| es4.(\f ~  es8[ g  bes)]
	|  as4.(\p   bes)\sf
	| \stemUp \slurDown  as4(\p 
           c8) \slurNeutral bes4.( \stemNeutral
	| as  g)
	| f4.(  fes8) es4_\cresc

% 60
	|  f!8[( g  as)]   as[(\f  g)]  r
	| as'4.(\p  es') ~
	| es8(  des4) c8(  bes4)
	|  a8[( bes as]  g[ as  ges)]
	|  f4.(_\cresc   g!16.[ as32 bes8  as)]
	| r  es[\f es] es4 r8
	| r   es,[(\p   as)]  a[(  bes)] r
	| r  es,[(  bes')]  g[(  as!)] r
	| r  as[(  ges)]  ges[(  f)] r
	| r  bes[(  as)]  as[(  g!)] c\sf ~

% 70
	| c4\p  es8\sf ~ es4\p as,8\sf ~ 
	|  as[(\p des  f)] es4 es8
	|  d8.[ es16 f8]  f[(  es)] es\f
	| f4.  f8[(  es)] r
	| r   g,[(\p  as]  a[  bes)] r
	| r  g[( as]  a[  bes)] r
	| r   g[(_\cresc  as]  a[ bes  c)]
	|  f[(\f es  des)] c4.\fp ~
	| c8 r r r4 r8
	| r  es,[( des]  c4.) ~

% 80
	|  c8[ es( des]  c4.)
	| as''2._\cresc ~
	| as8\p r r es r r
	| f4.(\sf  es) ~
	|  es8[(\p g  as)] ~  as16.[(  f32)] es4
	| as4.(\sf  es') ~
	| es8 r r r4 r8
	| f,4\p r8 r4 r8
	| r4 as8 r as r
	| r as r r as, r

% 90
	| R2.
	| es4.(  des)
	| c <es c'>_\cresc
	| << des'2. \\ {f,4.(  es) } >>
	| <es c'>4.\p <c' es>_\cresc
	| << { \voiceTwo des4. ~ des( | \oneVoice c8)[\p as-. as-.] as-. }
	      \new Voice { \voiceOne s4. es'4. ~ | \once
	        \override Stem #'transparent = ##t \once
	        \override Flag #'transparent = ##t es8 }
	  >> r8 r
    }
}
