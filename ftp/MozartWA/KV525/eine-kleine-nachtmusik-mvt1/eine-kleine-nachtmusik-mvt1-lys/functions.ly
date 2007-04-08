\version "2.10.0"

%% Common music functions

%% Creates a staff with the supplied name and voice context
namedStaff = #(define-music-function (parser location name music) (string? ly:music?) #{
	\new Staff {
		\set Staff.instrumentName = #$name
		$music
	}
#})

%% Are we in a toplevel file?
%#(define istop (lambda (parser location) (let* (
#(define (istop parser location) (let* (
		(filename (car (ly:input-file-line-char-column location)))
		(output (ly:parser-output-name parser))
		(outlen (string-length output)))
	(or 
		(string=? filename output)
		(and
			(> (string-length filename) outlen)
			(char=? #\. (string-ref filename outlen))
			(string=? output (substring filename 0 outlen))
		)
	)
))

%% Returns the music expression only if this is the toplevel file
iftop = #(define-music-function (parser location music) (ly:music?)
	(if (istop parser location) music (make-music 'SequentialMusic 'void #t)))

%% Returns the music expression only if this is not the toplevel file
ifntop = #(define-music-function (parser location music) (ly:music?)
	(if (istop parser location) (make-music 'SequentialMusic 'void #t) music))

%% Tags the music expression with #'midi
ifmidi = #(define-music-function (parser location music) (ly:music?)
	#{ \tag #'midi $music #})

%% Filters out music tagged with #'midi
nomidi = #(define-music-function (parser location music) (ly:music?)
	#{ \removeWithTag #'midi $music #})

%% Tags the music expression with #'nmidi
ifnmidi = #(define-music-function (parser location music) (ly:music?)
	#{ \tag #'nmidi $music #})

%% Filters out music tagged with #'nmidi
withmidi = #(define-music-function (parser location music) (ly:music?)
	#{ \removeWithTag #'nmidi $music #})

%% Tags music expression A with #'nmidi and the music expression B with #'midi
%% ("Ifelse midi")
%% Note: A & B cannot be switched, because lilypond (2.11.4) fails with a
%% programming error: minimise_least_squares ():  Nothing to minimise
%% and the music from point onwards is not laid out correctly.
%% (might have something to do with the extra open slur in the midi-only part)
ifemidi = #(define-music-function (parser location musicA musicB) (ly:music? ly:music?)
	#{ \tag #'nmidi $musicA \tag #'midi $musicB #})
