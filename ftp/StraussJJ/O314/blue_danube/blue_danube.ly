\version "2.4.2"

% The Blue Danube Waltz
% Johann Strauss Jr.
% 
% typeset by Nikos Kouremenos <kourem AT gmail DOT com>
% source by Christian Mondrup Four Hand Piano reduction (Werner Icking Music Archive)
% also transposed to C major and some other changes. The main theme only (one page)
% so beginners will love me :)
% the 4hand full original can be downloaded from 
% http://icking-music-archive.org/ByComposer/J.Strauss.html
%
% This file was last updated on 2005-1-12.
%
% This music is part of the Mutopia project (http://www.MutopiaProject.org/).
% Copyright (c) The Mutopia Project and Nikos Kouremenos, 2005.
%
% This work is licensed under the Creative Commons Attribution-ShareAlike License 2.0.
% To view a copy of that license visit
% http://creativecommons.org/licenses/by-sa/2.0/ or send a letter to Creative Commons,
% 559 Nathan Abbott Way, Stanford, California 94305, USA.
% 

%%
%% MUSIC
%%


middleDynamics = {
    % the first piano is set in soprano eventhough centered
    % other dynamics that are not centered will be found in their voices
    
    \partial 1*4
    
    % bar 1
    s1*0 \mf s4
    
    % bar 2 - 16
    s2.*15
    
    % bar 17
    s4 s4_\markup { "cresc." } s4 |
    
    % bar 18 - 22
    s2.*5
    
    % bar 23
    s4_\markup { "cresc." } s2 |

    % bar 24
    s2.

    % bar 25
    s2 s4.\f


}

upper =  {
	\relative c' {
		\context Voice = "upper" {
			\clef treble
            
            % bar 1
            \partial 1*4
            \stemUp
            c4

            % bar 2
            \slurDown
            c( e g)
            
            % bar 3
            \stemNeutral
            g2 <e' g>4
            
            % bar 4
            <e g>2
            <c e>4
            
            % bar 5
            <c e>2
            c,4

            % bar 6
            c( e g)
            
            % bar 7
            g2 <f' g>4
            
            % bar 8
            <f g>2
            <b, f'>4
            
            % bar 9
            <b f'>2
            b,4
            
            % bar 10
            b( d a')
            
            % bar 11
            a2
            <f' a>4
            
            % bar 12
            <f a>2
            <b, f'>4
                        
            % bar 13
            <b f'>2
            b,4
            
            % bar 14
            b( d a')
            
            % bar 15
            a2
            <e' a>4
            
            % bar 16
            <e a>2
            <c e>4
            
            % bar 17
            <c e>2
            c,4

            % bar 18
            c( e g)
            
            % bar 19
            c2
            <g' c>4
            
            % bar 20
            <g c>2
            <e g>4
            
            % bar 21
            <e g>2
            c,4
            
            % bar 22
            c( e g)
            
            % bar 23
            c2
            <a' c>4
            
            % bar 24
            <a c>2
            <f a>4
            
            % bar 25
            <f a>2
            d,4
            
            % bar 26
            d( f a)
            
            % bar 27
            a2.~
            
            % bar 28
            a4
            fis( g)
            
            % bar 29
            e'2. ~
            
            % bar 30
            e4
            \stemDown \slurUp
            c( \stemUp e,)
            \stemNeutral
            \slurNeutral
            
            % bar 31
            e2( d4)
            
            % bar 32
            a'2( g4)
            
            % bar 33
            c,4.( c'8->) c4->
            
            % bar 34 (finish)
            c4-> r2 \bar "|."
		}
	}
}

lower =  {
	\relative c {
		\context Voice = "lower" {
			\clef bass
            \partial 1*4
            
            r4
            r2.
            
            % bar 3 - 6
            c4 \p <e g> <e g>
            
            c <e g> <e g>
            c <e g> <e g>
            c <e g> <e g>            

            % bar 7 - 14
            d <f g> <f g>
            d <f g> <f g>
            d <f g> <f g>
            d <f g> <f g>
            d <f g> <f g>
            d <f g> <f g>
            d <f g> <f g>
            d <f g> <f g>

            % bar 15 - 18
            c <e g> <e g>
            c <e g> <e g>
            c <e g> <e g>
            c <e g> <e g>
            
            % bar 19 - 22
            e <g c> <g c>
            e <g c> <g c>
            e <g c> <g c>
            e <g c> <g c>

            % bar 23 - 24
            f <a d> <a d>
            f <a d> <a d>
            
            % bar 25
            <f a d>2.
            
            % bar 26
            a4 f d
            
            % bar 27
            d <f g> <f g>
            
            % bar 28
            b, <f' g> <f g>
            
            % bar 29
            c <e g> <e g>
            
            % bar 30
            e <g c> <g c>
            
            % bar 31
            <f a c>2.
            
            % bar 32
            <d g b>2.
            
            % bar 33
            <c e g>2
            <c e g-> >4
            
            % bar 34 (finish)
            <c e g-> >
            r2
		}
	}
}

#(set-global-staff-size 22)

\header {
    title = "The Blue Danube Waltz"
    composer = "Johann Strauss Jr. (1825 - 1899)"
    
    mutopiatitle = "The Blue Danube Waltz"
    mutopiacomposer = "Johann Strauss Jr."
    mutopiaopus = "O 314"
    mutopiainstrument = "Piano"
    date = "1867"
    source = "Christian Mondrup"
    style = "Romantic"
    copyright = "Creative Commons Attribution-ShareAlike 2.0"
    maintainer = "Nikos Kouremenos"
    maintainerEmail = "kourem@gmail.com"
    maintainerWeb = "http://members.hellug.gr/nkour/"
    lastupdated = "2005/Jan/17"
    
    footer = "Mutopia-2005/01/17-519"
    tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& "+ \maintainer + " 2004.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

#(set-global-staff-size 24)
\score {
	\context PianoStaff <<
		#(set-accidental-style 'piano-cautionary)
		\set PianoStaff.instrument = "PIANO  "		
		\context Staff = "up" <<
			\time 3/4
			\key c \major
			\upper
		>>
        \context Dynamics=dynamics \middleDynamics
		\context Staff = "down" <<
			\time 3/4
			\key c \major
			\lower
		>>
	>>

	\layout {
        \context { 
           \type "Engraver_group_engraver"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           minimumVerticalExtent = #'(-1 . 1)
     
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
           
           \override SpacingSpanner #'shortest-duration-space = #10
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override TextScript #'extra-offset = #'(0 . 1.0)
           
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
        }
            \context {
                \PianoStaff
                \accepts Dynamics
                \override VerticalAlignment #'forced-distance = #7
         }
    }
	\midi { \tempo 4 = 150 
        \context {
           \type "Performer_group_performer"
           \name Dynamics
           \consists "Span_dynamic_performer"
           \consists "Dynamic_performer"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
        }
}
