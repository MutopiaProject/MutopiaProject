% Max Reger Sonatas for anaccompanied violin,
% #1, 3rd movement.
% Carl M. Bolstad, 10/7/2007

\relative {
  \time 3/4
  \key d \minor
  \set Staff.midiInstrument = "violin"

<< { 
	\once \override TextScript #'padding = #-2
	<f'='' d'>4-.^\markup { \hspace #-6 { \column { { \bold { \line { Prestissimo assai. } } } arco } } }
	r <e a>-.^\markup { arco } 
   }
  \\
   { 
	r4\ff <d,=' a'>-._\markup { \center-align { pizz. } } r 
   }
>>

% measure 2 **********************************************************************************	
<< {
	<f'='' d'>-.
	r
	\once \override TextScript #'extra-offset = #'(-4 . -4)
	<a f'>8(^\markup { arco } <g e'>)
   }
   \\
   {
	r4
	<a,=' d,>4-._\markup { \center-align { pizz. } }
	r
   }
>>

% measure 3 **********************************************************************************	
<< {
	<f' d'>4-.
	r
	\once \override TextScript #'extra-offset = #'(-4 . -4)
	<e c'>8(^\markup { arco } <g bf>) |
   }
   \\
   {
	r4
	<a, d,>-._\markup { \center-align { pizz. } }
	r4 |
   }
>>

% measure 4 **********************************************************************************	
<< {
	<f' a>4-. r
   }
   \\
   {
	r4
	<a, d,>-._\markup { \center-align { pizz. } }
   }
>>

\once \override TextScript #'extra-offset = #'(0 . -1)
a,=8( ^\markup { arco } \p \< cs)

% measure 5 **********************************************************************************	
d8( e f) <fs c>-. <g bf,>-. <a d,>-. \!

% measure 6 **********************************************************************************	
<bf g>8(\< <c a> <d bf>) g-. <e c>-. <fs a,>-. \! |

% measure 7 **********************************************************************************	
<< {
	\once \override Staff.Hairpin #'extra-offset = #'(0 . 1)
	<g bf,>4-.^\< r <d a>-.^\markup { arco } |
	<g bf,>-.\! r <bf d,>8(^\markup { arco } <a c,>) |
	\set hairpinToBarline = ##f
	<g bf,>4-. r 
	\once \override TextScript #'extra-offset = #'(-1.5 . 0)
		<f a,>8(^\markup { arco } <ef c>)^\> |
	<d bf>4-.\! r
	\set hairpinToBarline = ##t
   }
   \\
   {
	r4\ff <d,=' g,>-._\markup { \center-align { pizz. } } r |
	r4 <d=' g,>-._\markup { \center-align { pizz. } } r |
	r4 <d=' g,>-._\markup { \center-align { pizz. } } r |
	r4 <d=' g,>-._\markup { \center-align { pizz. } }
   }
>>

% measure 10 2/3 **********************************************************************************	
g='8( ^\markup { arco } \p \< d)
e( fs g) <a c,>-. <bf d,>-. <c e,>-. \!

% measure 12 **********************************************************************************	
<a=' f>8( \< gs a) <a cs>-. <b d>-. <cs e>-. |
<d f>( cs d) <e cs>-. <fs d>-. <a fs>-. |
<bf g>( cs d) ef-. <e g,>-. <fs a,>-. \! |
g,,,=8.( \ff g'16_0 <d bf'' bf'>4-.) r |
r r <c g' bf e>-. \p ^\markup { \center-align { pizz. } } |
<f a f'>-. r r \bar ":|:" |

% measure 18 **********************************************************************************	
d4->( \ff ^\markup { arco } <a' f' d'>) a,-.->
d->( <a' f' f'>) f8( e)
d4->( <a' f' d'>) c,8( bf) |
a4->( <f' d' a'>) d''='''8( \mf a) |
<bf d, g, g,>(\arpeggio \> a g) f-. e-. d-. \! |

% measure 23 **********************************************************************************	
<e g, c,>(\arpeggio \> d c) bf-. a-. g-. \! |
<a f>( \p \< gs a) <c a>-. <b gs>-. <c a>-. |
a( gs a) <c a'>-. <b gs'>-. <c a'>-. |
<e c'>( <ds b'> <e c'>) a'='''-. gs-. a-. \! |

% measure 27 **********************************************************************************	
<fs a,>( \ff g <e g,>) f-. <d f,>-. e-. |
<c e,>( \> d <bf d,>) g-. <e c>-. g-. |
<bf d,>( c <a c,>) f-. <d bf>-. f-. |
<a c,>( bf <g bf,>) e-. <cs a>-. e-. \! |
<f d>( \p <e a,> <f d>) <e a,>-. <d f,>-. <e a,>-. |

% measure 32 **********************************************************************************	
<d f,>-. \< a,-. <e' cs'>-. a,-. <f' d'>-. a,-. |
<fs' ds'>-. a,-. <g' e'>-. a,-. <a' f'?>-. a,-. |
<bf' g'>-. a,-. <a' f'>-. a-. <e' cs'>-. \! a,-. \ff |
d'='''( \pp f, a,) d,-. \< e'-. a-. |
d( f, a,) \! d,-. <a'' f'>-. <g e'>-. |

% measure 37 **********************************************************************************	
d'='''( f, a,) d,-. <e' c'>-. \> <g bf>-. |
<f a>( e d) \! a-. d,-. cs-.  |
d( \< e f) <fs c>-. <g bf,>-. <a d,>-. |
<bf g>( c d) <g bf,>-. <fs a,>-. <a c,>-. \! |
g( \f bf, ef,->) bf'-. \< g'-. bf,-. |

% measure 42 **********************************************************************************	
d,->( bf' g') a,-. c,-. a'-. |
g'( g, bf,->) g'-. d'-. g,-. \! |
a,->( \ff f' gs,->) f'-. \< d'-. b'-. \! |
\once \override TextScript #'extra-offset = #'(-3 . -2.25)
d(_\markup { \italic { sempre } } e f) \ff a,,='( bf) a,( |
a') cs,( d4-.) r_\markup { \italic Fine. } \bar ":|:"

%%%%%%%%%%%%% Different Section (Bb major) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% measure 47 **********************************************************************************	
\key bf \major
<<
  {
	<f d'>2(^\markup { \bold { Un poco meno mosso. } } <g ef'>4)
	<ef c'>2( <f d'>4)
	<d bf'>2( f4)
  }
  \\
  {
	\once \override TextScript #'extra-offset = #'(0.7 . 0.8)
	bf,=2_\markup { \italic \tiny espress. } \p \< r4
	bf2 \! r4
	bf2\> r4 \!
  }
>>

% measure 50 **********************************************************************************	
g'='4(\< <a ef> <bf d,>8 <c ef,>) \! |


% measure 51 **********************************************************************************	
<<
  {
	<f,=' d'>2( <g ef'>4) | <af f'>2( <g e'>4) | 
	<gf ef'>2( <f d'>4)   | <ef c'>2( <d bf'>4) |
  }
  \\
  {
	bf=2 \< r4 \! | bf2 r4 | a2 r4 | bf2 r4 |
  }
>>

	\set hairpinToBarline = ##f
<c a'>2( \> <bf e>4) | <a f'>2-- \! r4 \bar ":|:"

% measure 57 **********************************************************************************	
<<
  {
	<a'=' f'>2( <bf g'>4) | 
	<g e'>2( <a f'>4) |
	<f d'>2( <f a>4) |
	<f d'>4( <a e'> <d f>)
	<bf g'>2( <c a'>4)
	<a f'>2( <b g'>4)
  }
  \\
  {
	d,='2 r4
	d2 r4
	d2 \> r4
	\set hairpinToBarline = ##f
	s2. \<
	d2 \! r4
	d2 \f r4
  }
>>

% measure 63 **********************************************************************************	
<c'='' ef>2( \> <a c>4) \!

% measure 64 **********************************************************************************	
<<
  {
	<f d'>2( <g ef'>4)
	<ef c'>2( <f d'>4)
	<d bf'>2( f4)
	g='4( <a ef> <bf d,>8 <c ef,>) |
	<f,=' d'>2( <g ef'>4) | <af f'>2( <g e'>4) | 
	<gf ef'>2( <f d'>4)   | <ef c'>2( <d bf'>4) |
  }
  \\
  {
	bf=2 \p \< r4 \!
	bf2 r4
	bf2\> r4 \!
	\set hairpinToBarline = ##f
	s2. \<
	bf=2 r4 | bf2 \! r4 | a2 r4 \> | bf2 r4 \! |
  }
>>


% measure 72 **********************************************************************************	
<<
  {
	<bf'=' g'>2( <g ef'>4)
  }
  \\
  {
	ef='2 \pp s4
  }
>>

% measure 73 **********************************************************************************	
<f d'>2( <ef c'>4) \>
\once \override TextScript #'extra-offset = #'(0 . -1)
<bf d bf'>2-- \! _\markup { \italic { D.C. al Fine. } } r4
\bar ":|" \key f \major
}
