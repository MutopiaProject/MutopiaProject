%Typeset by Javier Ruiz-Alma

\relative c''' {
  | R1*4
  %5
  | g4-2\p ~ g32(\( f e d c16) b-.\) c( g'8.-4) ~ g32\( f( e-3 d c16) b-.-1\)
  | \tupletSpan 8 \tuplet 3/2 { c16--[ bes'( a)] c,-- a'( g) \hideTupletNumber \hideTupletBracket b,!--[ g'( f)] c-- f-3( e) d16( fis g)  }  g,8 r4 
  | R1*2
    \mbreak
  | e'4-4\p~ \tuplet 3/2 { e16[ c\( b] c e-1 a\) } a8\( d,-2^\scrTrillPar ~ \tuplet 3/2 { d16\)[ b-1\( a] b d-1 g\) }
    \setRestezSpanner
  %10
  | \tuplet 3/2 { g16\([\startTextSpan fis e] fis a c\) c[( b) a] g( fis e) } d4~ \tuplet 3/2 { d16[ fis-- a--] c( b a) }
    \mbreak
    \mark \default
  | \tuplet 3/2 { b16\([ d c] b\) a-- g-- f!( e f) } f8 ~ \tuplet 3/2 { f16[ g,-1-- a--] b( c d) e( g) c } e,8 ~
  | \tuplet 3/2 { e16[\stopTextSpan fis---1^\scrI_\scrIIPar g--] a( g a) c,-2([ b c)] } a'16.^\scrI c,32\downbow \tuplet 3/2 { c16(\upbow b a) } b8~ \tuplet 3/2 { b16[ d-- e-4--] fis!( g-1 a) }
    \mbreak
  | bes4\mf ~ \tuplet 3/2 { bes16 a-- g-- } aes8~ \tuplet 3/2 { aes16 g---2 fis--} g8-1~ \tuplet 3/2 { g16 f-- ees-- d([ cis d-1)] }
  | \tuplet 3/2 { c'16([ b a)] } b16. g32-2 fis8.\trill( g16-1) \tuplet 3/2 { g[(\< d g)] b( g b) d-4([ g,-1 b-1)] d( b\! d-1) }
  %15
  | g4\f r r2
  | R1
    \mbreak
  | \fingerLeft \posScriptB <bes,-2>\upbow\p\< ~ \tuplet 3/2 { bes16[\! a-3\( g] f \scriptUnderSlur e\open d\) cis\([\> bes a\open] g f e\)]\! f_\([ d f-1] a\)\< cis-- d---1  } f4\! ~
  | \tuplet 3/2 { f16\p[ g_2^\scrII\( a] bes a g\) f-3( e d) } e8~ \tuplet 3/2 { e16[ f-2\( g] a g f\) ees-3( d cis) } d8 ~
    \mbreak
  %20
  | \tuplet 3/2 { d16[ a'-3( g)] a,--\open\( g'-4( f)\) a,---2\([ f'( e)\)]  g,--\( e'( d)\) e\( gis \undo\scriptUnderSlur a\open\) } a,8\breathe  r4
    \mark \default
  | R1*2
  | f'4-3\p ~ \tuplet 3/2 { f16[ d^\scrII\( \fingerUnderSlur cis-1] d-2 f-1 bes\) } bes8\( e,^\scrTrillPar_2 ~ \tuplet 3/2 { e16\)[ \undo\fingerUnderSlur c-2\( b!] c \scriptUnderSlur e\open_1 a\)  }
    \mbreak
  | \tuplet 3/2 { \fingerNoPad a16_4_\scrII-3^\scrI\([ gis\startTextSpan fis] gis b-2 d\) d( c) b-- a\([ gis!-4 fis!\)] } e4~ \tuplet 3/2 { e16[ gis---1 b---2]  d( c b) }
  %25
  | \tuplet 3/2 { c16-2\([ e d] c\) b-- a-- g!\( fis g\) } g8 ~ \tuplet 3/2 { g16[ \stopTextSpan a,--\open b---1] cis( \fingerUnderSlur d-1 e) f( a) d-- } f,8 ~
    \mbreak
  | \tuplet 3/2 { f16[ \fingerNoPad gis---1^\scrI_2_\scrII a---2] b( a b) d,(_2 c d) } b'16._\scrI[ d,32] \tuplet 3/2 { \undo\fingerUnderSlur d16-3( c b) } c8 ~ \tuplet 3/2 { c16[ e--\open fis---1] gis!( a-1 b) }
  | c4 ~ \tuplet 3/2 { c16 b-- a-- } bes8 ~ \tuplet 3/2 { bes16 a---2 gis---1 } a8-1 ~ \tuplet 3/2 { a16[ g-- f!--] e( dis e) }
  | \tuplet 3/2 { d'16([ c b]) } c16. a32 b8.\trill_( a16) a4 r
    \mark
  | R1*1
    \mbreak
  %30
  | r2 \tuplet 3/2 { r16 <e,-1>\p\upbow\( d e[ a-2 b\)] c_\([ a gis] a\) c-- d-- }
  | ees1\< ~
  | \tuplet 3/2 { ees16\>[ d-3\( c] bes \undo\scriptUnderSlur a\open g\) fis\!\([ ees d\open] c bes a\) bes\([ g \fingerNoStaffPad bes-1] d\) fis!( g-1 bes)[ g_( bes] d) fis---1_\scrII g-- }
    \mbreak
  | aes1\< ~
  | \tuplet 3/2 { aes16\>[ g-4\( f!] ees d c\) b!\([ aes g\!] f ees d\) ees\([ c ees] g\) b-- c--\< } ees!4 ~
  %35
  | \tuplet 3/2 { ees16\![ f\p-2\( g] aes g f\) ees-3\( d c\) } d8~ \tuplet 3/2 { d16[ ees\(-2 f] g f ees\) des-3( c b!) } c8 ~
    \mbreak
  | \tuplet 3/2 { c16[ bes'( aes)] c,--\( aes'( g)\) b,!--\([ g'( f)\)] c--\( f-3( ees)\) d( fis g) } g,8 r4
  | R1*2
    \mark \undo \fingerNoStaffPad \revFingerNoStaffPad
  | a4-4\p ~ \tuplet 3/2 {  a16[ f\( e] f a-1 d\) } d8\(^[ g,^\scrTrillPar-2] ~ \tuplet 3/2 { g16\)[ e\(-1 d] e g-1 c\) }
    \mbreak
  %40
  | \tuplet 3/2 { c16\([ b a] b d f\) f[( e) d--] c( b a) } g4^~ \tuplet 3/2 { g16[ b-- d--] f( ees d)  }
  | ees4~ \tuplet 3/2 { ees16 d---3 c-- } des8 ~ \tuplet 3/2 { des16 c-- b!-- } c8-1 ~ \tuplet 3/2 { c16[ bes---4 aes--] g( fis g)-1 }
  | \tuplet 3/2 { f'!( e! d) } g16.[ c,32-1] d8.\trill( c16) c4 r4
  | R1
    \mbreak
  | r2 \tuplet 3/2 { \undo \hideTupletNumber \tupletUp r16\mf \posScriptC g[_3^\downbow\( a\open_\scrOpen] \posScriptD b c_1 d \hideTupletNumber e\) c\( d \scriptUnderSlur e\open_1[ f g\)] }
  %45
  | \tuplet 3/2 { a\(\f[ f g] a\) b---2_1 c-- d([ c b)] a-3_4( g f) g\([ e f] g\) \fingerNoStaffPad a---1_4 b-- c([ b a)] g(-4 f e) }
  | \tuplet 3/2 { f([ e d)] e-3( d c) } << { \stemDown \fingerNoStaffPad b8.-1\trill c16\upbow c2\downbow } \\ { s8 s8\> s4 s4\! } >>
  |\bar "|."
}
