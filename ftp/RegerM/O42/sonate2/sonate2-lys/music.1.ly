\version "2.12.0"
  \relative { 
    \time 2/4
    \key a \major
%    \cbDivide
    \set Staff.midiInstrument = "soprano sax"

% This is to allow for the 1st & 2nd endings toward the middle of the piece:
\repeat volta 2 {
\partial 8*3 e'=''8(\p\<\upbow a) e16-. fs-.\! |
cs( b) cs-.\> d-. e8\! cs'([ \sf |
ds,])\< e16-. fs-. gs( b) e,-. gs-.\! |
cs,( \f ds) e-. b-. a( b) gs-. fs-. |
e8-. \> fs16( gs e8-.)\! \noBeam \p e'(\downbow

%%%%% measure 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a-.)\< e16( gs) a( b) cs( e) |
as,( cs) fs-. cs-. cs( d) e-. fs-. |
gs,( b) e-. b-. b( a) b-. cs-.\! |
ds,( \ff fs) cs-. ds-. b( ds) a-. b-. |

%%%%% measure 9 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gs(\> b) e,-. d-. cs( e) a-. c,-. |
b( e) gs-. b, a( cs) b-. a-.\! |
gs8-. \p r <gs'' e>8.( \downbow \ff <fss ds>16)\< |
<gs e>8-. <cs a>([ <b gs>)]\! \times 2/3 { <a fs>16( <gs es> <a fs>) } |
<a fs>8\> <gs e>16( <fs b,>\! <e gs,>8-.) \p r |

%%%%% measure 14 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<cs'=''' a>8.( \ff <bs gs>16 <cs a>8) <d fs,>-.-> |
<cs e,>-. \noBeam \times 2/3 { <b d,>16( <as cs,> <b d,>) } <cs e,>8-.\> <b d,>16*2/3([ <a cs,> <gs b,>)]\! |
<a cs,>8-. \p r <gs e>8.(\< \downbow \ff <fss ds>16 |
<gs e>8-.)\noBeam <a fs>-.\! <cs a>8.( <bs gs>16 |
<cs a>8-.) fs16-.[ \p ds-.] bs( ds) cs-. gs-. |
e(\< cs) bs-. ds-. cs( gs) e-. cs-.\!

%%%%% measure 20 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a'='8-. \mf gs-. \afterGrace fs4(\< \trill { es16[ fs)]\! } |
a8-. \f gs-. fs8.( e16) |
e8\>( ds16 fs b,8)\!

<<
   {
	\stemDown b'='8-.^\markup { \hspace #-3 \raise #0 \italic espress. } \p |
	\stemUp
	gs4.-- a16(^\> as) |
	b4.--\! e16( bs) |
	cs4.--^\< ds16(\! e) |

%%%%% measure 26 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	b4.--^\> gs'16(\! e) |
	bs8( cs) << { r8 e,='\rest } \\ { e='16([ gs] \stemUp fs'16 ds) \stemNeutral } >> |
	as='8( b) << { r8 e,='\rest } \\ { fs='16([ as] \stemUp b16 ds) \stemNeutral } >> |
	r8 b='16-. d-. r8 as16-. cs-.
   }
\\
   {
	s8^\< |
	r8 b,=16( ds\! e8) r |
	r e16( fs gs8) r |
	r e16( gs a8) r |

%%%%% measure 26 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	r e16( fs gs8) r\p |
	r16 fs( e ds) s4 |
	\stemDown r16 e( ds e) s4 \stemNeutral |
	es16(\> gs) r8 e16( fs) r8*1/2 s16 \!
   }
>>

%%%%% measure 30 (where it goes back to one part) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ds='16( \pp \< fs) b-. ds-. b,( fs') a,-. fs'-. \!

%%%%% measure 31 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gs,16.( \f bs32 ds gs bs ds) <e gs,>8.( \< <ds fs,>16) |
<ds fs,>8.( <cs e,>16) <a' cs,>8.( <gs b,>16) \! |
<gs b,>8( \ff <fss as,> <gs b,>-.)\noBeam e' \p |

<< { fs,8-. b-. ds,-. e16( b) | bs([ cs)] }
   \\ { fs=''16( \< e) ds( cs) b( a) \! gs8-. | a }
>>

cs,16-.( ds-. es-. fs-. gs-. a-.) |

%%%%% measure 36 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
as([ b)] b,-. e-. gs(\> a) fs-. gs-.\!
}  %% This is the closing bracket for the \repeat section.

%% First and second endings:
\alternative { 
  { e8*4-. \pp }
  { e8-.\noBeam \pp e'( \p a) e16-. d-. }
}

c16( b) c-. d-. e8-. c'16-.[ a-.] |
ef( \set crescendoText = \markup { \italic "poco a poco crescendo" }
\set crescendoSpanner = #'text
f)\< d-. ef-. c( d) bf-. c-. |

%%%%% measure 41 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d( e) f-. a-. bf( d) f-. d-. |
b( d) d-. a-. gs( b) gs-. fs-. |
e( gs) e-. d-. <e c>8.(\f <gs b,>16) |
\crescHairpin 
<e c>8-> a,,=64([b \< c e a c e gs)] <a f>8.-> \ff <bf g>16-> |

%%%%% measure 45 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<a f>8-> d,,='64([\< e f a d f a cs)]\! <d f,>8.-> <c e,>16-> |
<b d,>16( <c e,>) <b d,>( <a c,>)

%%%%% measure (middle of) 46 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

<<
  {
    <a c,>16([ <gs b,>)] e8~ |
    e c4-- b8([~ |
    b16 ds)] e([ b c a)] c([ a |

%%%%% measure 49 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    b gs)] b([ gs a fs)] a([ fs |
    g e)] g([ e fs e)] ds([ fs] |
    \stemDown as b) 
    \set crescendoText = \markup { \italic "crescendo" }
    \set crescendoSpanner = #'text
    as'(\< b c) b,,( c) <ds b'>( |
    <e c'>) <b'' ds,>( <c e,>) <cs e,>( <d f,>)\ff <cs, e,>( <d f,>)\> <cs' e,>( |

%%%%% measure 53 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    <d f,>) \crescHairpin e,-. \p \< <d' f,>-. d,-. <d' f,>-. g,,='( b d) |
    <e c'>-. d <e c'>-. c-. <e c'>-. fs,( a c) |
    <d b'>-. c-. <d b'>-. b-. <d b'>-. e,( gs b)\! \stemNeutral |
  }
  \\
  {
    e,='8 c'16([ \p b |
    a gs)] a([ g f e)] ds([ fs |
    gs fs)] e4 d8~ |

%%%%% measure 49 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    d c4_\markup { \italic sempre \dynamic p } b8~ |
    b as4 b8 |
    s8
    s8 s4 |
    s4 s8 s8
    s16 s s8 s4 |
    s2
    s4.. s16
  }
>>

%%%%% measure 56 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <c'='' a'>16-. \f css,( ds) <c' a'>( <b gs'>) ds,( e) <b' gs'>( |
  \set crescendoText = \markup { \italic "crescendo" }
  \set crescendoSpanner = #'text
  <bf g'>) \< bs,( cs) <bf' g'>( <a fs'>) cs,( d) <a' fs'>( |
  <af f'>) \ff	as,( b) <af' f'>( <g e'>) b,( c)\> e( |
  f) a-. d,-. b-.\!
  
%%%%% measure 59 (middle) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<<
  {
    a( b) e( gs) |
    r8 e'16( a) fs( a) e( a) |
  }
  \\
  {
    s8 \p \< cs,,='8 |
    a'16( b cs8*1/2) s16\! d8 cs |
  }
>>

%%%%% measure 61 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <d='' b'>16( \f a') gs-.\> fs-. <e gs>( fs) e-. d-.\! |
  cs(\p d) e8( \crescHairpin a)\< e16-. fs-.\! |
  cs( b) cs-.\> d-. e8-.\! cs'([ \sf |
  ds,])\< e16-. fs-. gs( b) e,-. fs-.\! |

%%%%% measure 65 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  cs( ds) e-. b-. a( b) gs-. fs-. |
  gs( b) e,-.\> d-. cs( e) a-. c,-. |
  b( e) gs-. e-. a,( cs) b-. a-. |
  gs8-.\p r <gs''='' e>8.(\downbow \ff \< <fss ds>16) |
 
%%%%% measure 69 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  <gs e>8-. <a cs>([\! <b gs>)] \times 2/3 { <a fs>16([ <gs es> <a fs>)] } |
  <a fs>8-.\> <gs e>16( <fs b,>\! <e gs,>8-.) \p r8 |
  <a cs>8.( \ff <gs bs>16 <a cs>8)\noBeam <fs d'>-.-> |
  <e cs'>-. \times 2/3 { <d b'>16([ <cs as'> <d b'>)] } <e cs'>8-. <d b'>16*2/3([\> <cs a'> <b gs'>)] |
  <cs a'>8-. \p r <e gs>8.( \ff \< <fss ds>16 |
   
%%%%% measure 74 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  <gs e>8-.)\noBeam <a fs>-. <cs a>8.(\! <bs gs>16 |
  <cs a>8-.) fs16-.[ \p ds-.] bs( ds) cs-. gs-. |
  e( cs) bs-. ds-. \crescHairpin cs(\< gs) e-. cs-. |
  a'8-. gs-. fs16( as)\! b-. cs-. |
  d8-. \f cs-. b8.( a16) |
   
%%%%% measure 79 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  a8(\> gs16 b e,8-.)\!

  <<
     {
        e'=''8^\markup { \italic espress. } |
	cs4.-- d16( ds) |
	e4.-- a16( es) |
	fs4.-- gs16( a) |
	e4.-- cs'16( a) |
   
%%%%% measure 84 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
        es8( fs) r gs, \rest |
	ds'8( e) r gs, \rest |
	r8 e'16-. g-. r8 ds16-. fs-. |
     }
  \\
     {
        s8\p \< |
	r8 e,='16( gs a8)\! r8 |
	r\> a16( b cs8)\! r |
	r\< a16( cs d8) r8*1/2 s16\! |
	r8 a16( b cs8) r |
   
%%%%% measure 84 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
	r16\> b( a gs)\! a([\< cs] \stemUp b' gs)\! |
	\stemDown r16 a,( gs a) b([ ds] \stemUp e gs) |
	\stemNeutral as,16( cs) r8\> a16( b) r8*1/2 s16\! |
      }
  >>

gs='16( \pp b) e-. gs-. e,(\< b') d,-. b'-. \! |
   
%%%%% measure 88 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
cs,16.([\< \f es32 gs cs es gs)] \! <a cs,>8.( <gs b,>16) |
<gs b,>8.( <fs a,>16) <fs d'>8.( \ff <e cs'>16) |
<e cs'>8(\> <ds bs'> <e cs'>-.)\! \noBeam a-. \p |
   
%%%%% measure 91 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

<<
    {
       b,8( e) gs,( a16 gs) |
       es([ fs)]
    }
    \\
    {
       b16(\< a gs fs) e( d cs8)\! |
       d
    }
>>

gs,16-.( as-. b-. cs-. d-. e-.) |
   
%%%%% measure 93 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
ds([ e)] gs,-. a-. cs(\> b) a-. b-.\! |
a8-. \noBeam \p e''( \f a)\< cs,16-. d-. |
e8-. a,16-.[ b cs8-.] e,16-.[ gs-. |
a8-.] \! cs,-._> b_>_( \ff <fs' d' b'>-.) |
e_>_( <d' gs>-.) a,_>_( <e' cs' a'>-.) \bar "|."
}
