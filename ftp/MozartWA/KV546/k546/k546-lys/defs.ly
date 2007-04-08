\version "2.10.14"

staffinstvlI = \context Voice = vlI { \set Staff.instrumentName = \markup { "Violino I" \hspace #0.5 }}
staffinstvlII = \context Voice = vlII { \set Staff.instrumentName = \markup { "Violino II" \hspace #0.5 }}
staffinstvla = \context Voice = vla { \set Staff.instrumentName = \markup { "Viola" \hspace #0.5 }}
staffinstvlc = \context Voice = vlc { \set Staff.instrumentName = \markup { "Violoncello" \hspace #0.5 }}

stacc = \markup { \italic "staccato" }
fStacc = \markup { \line { \dynamic f \italic "staccato" } }

attacca = \markup { \italic "attacca" }

% aTempo = \markup { \italic "a tempo" }

% dimin = \markup { \italic "dim." }
% crescen = \markup { \italic "cresc." }

% ten = \markup { \italic "ten." }

% sforzp = \markup { \dynamic sf \dynamic p }
% sempreF = \markup { \line { \italic "sempre" \hspace #0.5 \dynamic f } }
% piuP = \markup { \line { \italic "più" \hspace #0.5 \dynamic p } }
% piuF = \markup { \line { \italic "più" \hspace #0.5 \dynamic f } }

% minHarp = \once \override Staff.Hairpin #'minimum-length = #3
