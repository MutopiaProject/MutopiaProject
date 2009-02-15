\version "2.12.0"
% Max Reger Sonatas for anaccompanied violin,
% #2, 3rd movement.
% Carl M. Bolstad, 1/27/2009

\relative {
  \time 6/8
  \key a \major
  \set Staff.midiInstrument = "soprano sax"

\partial 8*3 << { e'=''8-. \upbow e-. e-. } \\ { e8-. \p \< ds-. d-. \! } >> |

\cbRefrain %% this is the first 7 measures, from the 'functions.ly' file

<d b'>16-.\ff e,-. <d' b'>-. fs,-. <d' b'>-. gs,-. <d' b'>-. gs,-.\> a-. b-. cs-. e-.\! |

%%%%% measure 9 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<a cs,>-.\p d,,-. <a'' cs,>-. e,-. <a' cs,>-. e,-. <a' cs,>-.\< fs,-. gs-. a-. b-. d-.\! |
<b gs'>-.\f cs,-. <b' gs'>-. ds,-. <b' gs'>-. es,-. <b' gs'>-. es,-.\> fs-. gs-. a-. cs-.\! |
<a fs'>-.\p b,-.\< ds-. e-. fs-. as-. b-. cs-. ds-. e-. fs-. fss-.\! |

%%%%% measure 12 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<e gs>8.(\ff b'16 <e, gs>8) gs,,32( a b cs ds e fs gs \times 4/6 { a b cs ds e fs) } |
<e gs>8.( b'16 <e, gs>8) <gs e'>-.\> <gs b>-. <e gs>-.\! |
<a, e' cs'>16(\p a') 

%% The following is to get the 'poco a poco .....' type of crescendo.
\set crescendoText = \markup { \italic { poco a poco crescendo } }
\set crescendoSpanner = #'text
\override DynamicTextSpanner #'style = #'dashed-line

e(\< a) cs-. a-. <e fs,>( a) cs( a) cs-. a-. |

%%%%% measure 15 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<ds, gs,>( gs) b( gs) b-. gs-. <d es,>( gs) b( gs) b-. gs-. |
<cs, fs,>( fs) a( fs) a-. fs-. <a b, ds,>( gs fs) e-. ds-. cs-. |

%%%%% measure 17 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b-. cs-. ds-. e-. fs-. fss-. <gs e>8.(\ff b16 <gs e>8) |  %% the ff is where the 'poco cres' ends

%% Time to undo the 'poco a poco ...' type cresendo.
\set crescendoSpanner = #'hairpin
\override DynamicTextSpanner #'style = #'hairpin

gs,,=32(\< a b cs ds e fs gs \times 4/6 { a b cs ds e fs)\! } <gs e>8.(\< b16 <gs e>8) |

%%%%% measure 19 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b8(\< e) \ottava #1 gs-.\! b->\sf gs(\p\< a) |
fs( gs) e-.\! e'(\sf \ottava #0 e,,) e'-.\p |
fs(\> ds) e-. cs( ds) b( |
e)-.\! e,,16-.\< fs-. gs-. a-. b-. cs-. ds-. e-. fs-. fss-.  |

%%%%% measure 23 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gs( a b) e( b' e)\ff a,,,,=8(\p <a' cs fs>-.) <ds fs, b,>-.\ff |
e(\< e') e,-. e'( e,)\! e''-.\sf |
e,,(\p\< e') e,( e')\sf <ds e,>-.\p\< <d e,>-. |
<cs e,>-. <c e,>-. <b e,>-.\! <a e>-. <gs e>-. <g e>-. |

%%%%% measure 27 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<fs e>-.\>^\markup { \italic { poco rit. } } <f e>-. e-.\!
  <<
    {
      e8-.^\markup { \italic { a tempo } } e-. e-. |
    }
    \\
    {
      e-.\p\< ds-. d-.\! |
    }
  >>

%% The next 7 measures are the same as the beginning, so use the function:
\cbRefrain

gs16( fs gs) a-. b-. bs-. cs(\ff a e) a-. e-. cs-. |

%%%%% measure 36 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a'(\> e cs) e-. cs-. a-. cs( a e) a-. e-. cs-.\! |
b(\<\pp d gs) cs,-. e-. a-. d,( fs b) e,-. gs-. cs-. |

%%%%% measure 38 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs,( a d) gs,-. b-. e-. cs( e cs) cs'-. a-. cs-. |
ds,( fs b) cs-. b-. a-. gs( e gs) b-. e-. b-.\!  %% finally that cresc. ends!

%%%%% measure 40 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<cs a>4->\ff <cs a>16( <a fs>) <a fs>4->\> <a fs>16( <fs a,>)\! |
<fs a,>8-. 

%% duplicated notes from here to measure 45:
\cbFortyOne

e'='''8-. <e, d gs,>( <b'\harmonic>-.) <e, d gs,>( <a\harmonic>-.) <e d gs,>-.\ff |
<a cs>4--\p <a cs>16(\< <fs a>) <fs a>4\! <fs a>16(\> <fs a,>) |

%%%%% measure 47 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<fs a,>8-.\! \cbFortyOne 

%%%%% measure 51 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
e'='''8-.\ff <e, d gs,>( \ottava #1 e''-.) \ottava #0
  <<
    {
      e,,-. e-.( e-.) |
    }
    \\
    {
      e-.\p\< ds-.( d-.) \! 
    }
  >>

\cbRefrain


%%%%% measure 59 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gs16( e fs) gs-. a-. as-. b( cs d) ds-. e-. e,-. \!
<a cs>8.(\ff e'16 <a, cs>8) cs,,32(\< d e fs gs a b cs \times 4/6 { d e fs gs a b)\! } |

%%%%% measure 61 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<a cs>8.(\ff e'16 <a, cs>8) <cs a'> <cs e>-.\> <a cs>-.\! |
<fs' a, d,>16(\p d) a(

%% The following is to get the 'poco a poco .....' type of crescendo.
\set crescendoText = \markup { \italic { poco a poco crescendo } }
\set crescendoSpanner = #'text
\override DynamicTextSpanner #'style = #'dashed-line

d)\< fs-. d-. <a b,>( d) fs( d) fs-. d-. |
<gs, cs,>( cs) e( cs) e-. cs-. <g as,>( cs) e( cs) e-. cs-. |

%%%%% measure 64 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<fs, b,>( b) d( b) d-. b-. <e, gs,>( b') d( b) d-. b-. |
<e, a,>( a) cs( a) cs-. a-. d(\ff cs b) a-.\> gs-. fs-.\! |

%% Time to undo the 'poco a poco ...' type cresendo.
\set crescendoSpanner = #'hairpin
\override DynamicTextSpanner #'style = #'hairpin

<<
  {
    e8-.\noBeam e-. e-. e-. e-. e-. |
    e-.
  }
  \\
  {
    r8\p ds-.\< d-. cs-.\! b-.\> a-. |
    gs-.\!
  }
>>



%%%%% measure 67 (except for the 1st 8th note) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
e16-.(\< fs-. gs-. a-. b-. cs-. d-. ds-. e-. es-.)\! |

<<
  {
    fs8-. fs-. fs-. gs-. gs-. gs-. |
    a-. a-. as-. b-. b-. b-. |
  }
  \\
  {
    fs16(\f\< e) d8-. cs-. b-. e-. d-. |
    cs-. fs-. e-. d-. g-. f-. |
  }
>>

%%%%% measure 70 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<e c'>8(\ff <g e'>-.) g,,-. <d'' b'>( <f d'>-.) g,,-. |
<e'' c'>8(\pp <g e'>-.) g,,-. <d'' b'>( <f d'>-.) g,,-. |
<e'' c'>(\ff <g e'>-.) g,,-.\p 

<<
  {
    g'-. fs-. f-. |
    e-. f-. g-. a-. gs-. g-. |
    f-. a-. as-. b-. as-. a-. |
    gs( b-.) fs'-.
  }
  \\
  {
    g,,=-.\< a-. b-. |
    c-. b-. bf-. a-. b-. cs-. |
    d-. cs-. c-. b-. cs-. ds-. |
    e(\! d-.) r 
  }
>>

<cs b' es>4->\ff fs'8-.\p |
b,16-.\< cs-. d-. e-. fs-. as-. b-. cs-. d-. e-. fs-. \ottava #1 b-.\! |
e8-.\ff \ottava #0

%%%%% measure 77 (after 1st 8th) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<<
  {
    e,,8-. d-. cs-. b-. a-. |
  }
  \\
  {
    e-.\< e-. e-. e-. e-.\! |
  }
>>

<a fs'>16-.\f d,(\> fs as b cs) <d d,>8-.\p <cs d,>-.\< <c d,>-. |
<b d,>-. <a d,>-. <gs d>-.\! <gs e'>16-.\f cs,(\> e gs a b)\! |

%%%%% measure 80 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<<
  {
    cs8-. b-. a-. d-. cs-. b-. |
    e-. d-. cs-. gs'-. fss-. gs-. |
    gs,( fss) gs-.
  }
  \\
  {
    cs,-.\p\< ds-. fs-. d-. e-. gs-. |
    e-. fs-. a-. gs-. a-. gs-.\! |
    gs,(\ff a) gs-.
  }
>>

gs''(\p fss) gs-. |

%% The following is very similar to part of \cbRefrain, but
%% it's enough different that I think I'll enter it manually.

<<
  {
    gs16( a gs fs e d) cs8-. cs-. cs-. |
    %% measure 84
    cs16( gs' b gs cs, b) a8-. gs'16( a) a,8-. |
    a( gs'16 a) a,8-. a( gs'16 a) a,8-. 
    a( gs'16 a) a,8-. a( gs'16 a) a,8-. 
  }
  \\
  {
    e'=''8-. r r cs-.\f a-. fs-. |
    %% measure 84
    es-. r\> r fs-.[\p\< r f-.] |
    e-.[ r ds-.] e-.[ r f-.] |
    fs!-.[ r f-.] e-.[ r ds-.]\! |
  }
>>


%%%%% measure 87 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<<
  { s8*6 |
    s8*3 e'=''16 s16*5 |
    s8*6 |
  }
  \\
  {
    <e, a>16^(\ff\< cs' e) a^. cs^. d^. 
       <e e,>^.\ffz <ds e,>^.\pp\< <d e,>^. <cs e,>^. <c e,>^. <b e,>^. |
       <bf e,>^. <a e>^. <gs e>^. <g e>^. <fs e>^. <f e>^. e\ffz <ds e>^.\pp\<
          <d e>^. <cs e>^. <c e>^. <b e>^. |
       <bf e>^. <a e'>^. <gs e'>^. <g e'>^. <fs e'>^. <f e'>^. 
          <e e'>^. <fs e'>^. <e e'>^. <fs e'>^.  <e e'>^. <fs e'>^.\! |
  }
>>


%%%%% measure 90 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<e e'>16-.\ffz\< a,-. cs-. e-. a-. cs,-. e-. a-. cs-. e-. e,-. a-. |
cs-. e-. a-. cs-. e,-. a-. cs-. a-. cs-. e-. a-. cs-.\! |
e8-.->\ffz r r <gs,,='' b, e,>-.\pp^\markup { pizz. } r r |
<a cs, e, a,>-. r r \bar "|."
}
