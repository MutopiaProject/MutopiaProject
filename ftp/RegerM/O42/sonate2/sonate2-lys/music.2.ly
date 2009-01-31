% Max Reger unaccompanied violin piece,
% Sonata II, 2nd movement.

\version "2.12.0"
\relative {

% measure 1 **********************************************************************************	
\time 3/8
\key a \major
  \set Staff.midiInstrument = "soprano sax"
  \set subdivideBeams = ##t
<a'=' fs>8.(\< \p ^\markup { \italic espress. } <gs cs,>16 <fs a,>8) \! |
<es gs,>4( <fs a,>8) |
<gs b,>8.( <a cs,>16 
	\override Hairpin #'to-barline = ##f
		<d, b>8)\> |
<fs a,>4(\! cs'8) |
<fs cs d,>8.--\< b,16_~ <b gs'>8 |
<e b cs,>8.-- a,16~ <a fs'>8 |
   
%%%%% measure 7 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
<a b, d'>8.-- \! gs16( <gs e'>8) |
<cs e, a,>4( <b d,>8) |
<a cs,>4( \> <gs es>8) \! |
<a fs>8.( \< <gs cs,>16 <fs a,>8) |
<es gs,>4( \afterGrace <fs as,>8)^(\trill\! { es16[ fs]) }
<d' fs, b,>8.( <b gs>16) <cs a a,>8-- |
   
%%%%% measure 13 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
<ds fs,>8(_\markup { \italic cresc. } <e gs,>) <fs a,>-- |
<<
   {
	gs=''8.( e16) ds8^- |
	cs4^- ds8^- |
	cs4^- fs8( |
	cs[ d)] e( |
	b[ cs]) d^- |
   
%%%%% measure 19 - top part %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
	cs8[( a]) gs16( fs) |
	es8[( gs]) 
    }

\\

    {
    	gs='4\f fs8_-\> |
	es4_- fs8_-\! |
	es4_- r8\p |
	r4 cs'=''8(\< gs[ a]) fs_-\! |
   
%%%%% measure 19 - bottom part %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
	e8[( fs]) bs,\> |
	cs s\pp
    }
>>

fs'=''8^-_\markup { \italic meno \dynamic p } |
cs[(\< d]) <d b'>^- |
<e cs'>^-\! <gs e'>8.( \f <gs d'>16) |
<e cs'>8( \> <fs a>) <d b'>( |
<e gs>) <cs a'>( <ds fs>) |
   
%%%%% measure 25 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
<bs gs'>([ <cs es>]) \pp \times 4/6 {<b, fs' d'>32( \ff fs'' b fs d b) } |
es,32( \< gs) cs-. d-. cs( es) fs-. gs-. a( gs)\! a-. b-. |
cs( fs cs b) a( fs cs a) gs( fs) cs( a) |
   
%%%%% measure 28 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
gs8.( \ff <ds' bs'>16) <bs' ds,>16( <e, cs'>) |
<<
   {
      <e=' cs'>16( <fs ds'>) <gs e'>( <fs ds'>) <fs ds'>( <e cs'>) |
   }
   \\
   {
      s8 \> bs= \noBeam cs8*1/2 s \! |   
   }
>>

% The next 5 or 6 lines are needed to create the turn with a sharp
% under it, and between the notes instead of above them:
% First, the setup:
\once \override TextScript #'avoid-slur = #'inside
\once \override TextScript #'outside-staff-priority = ##f
% Now here are the notes that this applies to, with the sharp symbol
% and the turn symbol both contained within a markup column:
<gs= e' b' b'>8(^\markup \tiny \override #'(baseline-skip . 1)
    { \halign #-2.3   % to place the stuff horizontally
    \center-column 
        { 
	\musicglyph #"scripts.turn"
	\sharp
      }
    }
    
% Whew!! Now for the rest of the measure:
    \ff d'''='''32) cs-. b-. a!-. gs( fs) e( \> d) |
    <d b>8([ <cs a>16 e)] \! <a, a,>16.( \< <e' cs'>32) \! |

%%%%% measure 32 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<d, a' fs' fs'>16.([ \ff a'''='''32)] gs32( fs) e-. d-. d( \> cs) d( e) |
d16([ cs)] \! cs( \< \p gs fs e) \! |
ds([ \> cs)] \! b(^\markup { \italic { poco rit. } } \< d \! a \> gs) \! |

%%%%% measure 35 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% The next 8 measures are the same as the first 8, almost exactly:
<a=' fs>8.(\< \p ^\markup { \italic { a tempo } } <gs cs,>16 <fs a,>8) |
<es gs,>4( \! <fs a,>8) |
<gs b,>8.( <a cs,>16 <d, b>8)\> |
<fs a,>4( cs'8) \! |
<fs cs d,>8.--\< b,16_~ <b gs'>8 \! |
<e b cs,>8.-- a,16~ <a fs'>8 |
   
%%%%% measure 41 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
<a b, d'>8.-- \> gs16( <gs e'>8) \! |
<cs e, a,>4-- <b d,>8-- \< |
<b d,>( \! <a cs,>) <fs a,>-- |
<a cs,>4( <gs b,>8) |
<gs b,>(^\markup { \italic { rit. } } \> <fs a,> <es gs,>) |
<fs a,>4.-- \pp \! \bar "|."
}
