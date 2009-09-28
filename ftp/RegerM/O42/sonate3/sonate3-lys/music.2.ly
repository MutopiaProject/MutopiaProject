\version "2.12.2"
  \relative { 
    \time 3/4
    \key g \major
    \set Staff.midiInstrument = "trumpet"

%% This entire movement is in 2-part polyphony (implied by the word 'Canon' in the
%% movement title), so I have decided to set the entire top part first in this file,
%% then the entire bottom part.

\tempo \markup { Andante semplice \normal-text \italic \tiny { (Canon) } }
{
% top part:
<<
  {
    \partial 4 r4 |
    g''=''8.( fs16) e4 fs |
    g8([ fs)] e( d) cs4 |
    d8( c!) b4 cs8( e) |

%%%%% measure 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    d8( ds) e4 f8( e)  |
    ds4 e8([ d)] c r |
    a'8.( g16) f8([ fs)] g( gs) |
    a([ e)] f( fs) g4 |

%%%%% measure 8 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    e f(\startTrillSpan \grace { e16[ f)]\stopTrillSpan } d4 |
    \pitchedTrill e\startTrillSpan f fs\stopTrillSpan g8( gs) |
    a4 b8( a) g4 |
    r4 \times 2/3 { d'8([ c b)] } \times 2/3 { bf([ a g)] } |

%%%%% measure 12 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    fs4 g8*2/3( f d) e4 |
    f8*2/3( e f) ds4 e |
    a,8.( g16) fs4 g16( d' g f) |

%%%%% measure 15 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    e( ds e g) f8( e) d16( e f c) |
    b8( gs16 a) g8.( fs16) e8( d) |
    c16( ds' e fs) ds8( cs16 ds) e4 |

%%%%% measure 18 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \afterGrace c4(\startTrillSpan { b16[ c])\stopTrillSpan } d4 r |
    g8.( fs16) e4 fs |
    g8( fs) e([ d)] cs4 |
    d8( c) b4 a8.( g16) |
    g4.\fermata r8 \bar "|."

  }
  \\
  {
    % 2nd part:
    \partial 4 d'=''8.(_\markup { \dynamic p \italic espress. } c16) |
    b4\< c\! d8( c) |
    b( a) g4 
    	\once \override Hairpin #'to-barline = ##f 
    	a8(\> g) |
    fs4 \! g8([ b)] a(\< as) |

%%%%% measure 4 again %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    b4*1/2 s8\! c8( b) a4 |
    b8([\> a)] gs\! r e'8.(_\markup { \italic meno \dynamic p } d16)\< |
    c8( cs) d([ ds)]\! e( b) |
    c( cs) \once \override Hairpin #'to-barline = ##f 
        d4\> b |

%%%%% measure 8 again %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \once \override TrillSpanner #'extra-offset = #'(0 . -11.5)
    \afterGrace c4(\<\startTrillSpan { b16[ c)]\stopTrillSpan } a4*1/2 s8\! 
    \once \override TrillSpanner #'extra-offset = #'(0 . -9)
       b4*3/4\startTrillSpan
    	s16 | 
    c4\stopTrillSpan  d8( ds) e4\> |
    fs8( e) d4*1/2 s8\! r4\pp |
    \times 2/3 { a'8([ g fs)]\< } f8*2/3[( e d)] cs4 |

%%%%% measure 12 again %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    d8*2/3(\! c a) b4 c8*2/3( b c) |
    a4*2/3 s8*2/3\> b4*1/2 s8\! e,8.( d16) |
    cs4*3/4

%%%%%%%% The following is to make the 'written-out' crescendo:
\set crescendoText = \markup { \italic { crescendo } }  %% sets words for the cresc.
\set crescendoSpanner = #'text
\override DynamicTextSpanner #'style = #'dashed-line		    %% stretches it out with dashes.

    s16\< d16( a' d c) b( a b d) |

%%%%% measure 15 again %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    c8([ b)] a16( b c g) f8( d16 e) |
    d8.([ c16)] b8( a) g16(\ff as' \crescHairpin b\< c) |
%    \once \override Stem #'length = 16   % I'm trying to avoid the collision 
    	% with the low C in other part.
	% It's not working.
	% What I'll do instead is remove the beam with the A.
        a8(\noBeam g16 a)\! b4 
    \once \override TrillSpanner #'extra-offset = #'(0 . -11)
        \afterGrace gs(_\startTrillSpan { fs16[ gs)]\stopTrillSpan } |

%%%%% measure 18 again %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    a4\> r\p d8.(\< c16) |
    b4*3/4 s16\! c4 d8( c) |
    b( a) g4 a8( g) |
    fs4 g8([\> d)] c8.( b16) |
    b4.\pp r8
  }
>>
}
}
