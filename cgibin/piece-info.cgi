#!/usr/bin/perl -T
#
# piece-info.cgi
# Version 0.0.20
# Last updated 08/Aug/2006
#
# Creates the table of music for Mutopia

use POSIX;

@pairs = split(/\&/,$ENV{'QUERY_STRING'});
foreach $pair (@pairs) {
 ($name, $value) = split(/=/,$pair);
 $value =~ tr/+/ /;
 $value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
 $FORM{$name} = $value;
}

# Grab the base reference, and open the cache file

open(CACHE, "../datafiles/musiccache.dat");

$baseref = "../ftp/";

# Find the music info corresponding to our ID number

chomp ($cacheoffset = <CACHE>);
$firstjump = 13 * $FORM{id} + 5;
seek CACHE, $firstjump, 0;
read CACHE, $secondjump, 7;

if (($secondjump eq "*******") or ($firstjump > $cacheoffset)) {
 $problem = 1;
} else {
 $problem = 0;
 seek CACHE, $cacheoffset + $secondjump, 0;
}

chomp ($id = <CACHE>);

if (($problem == 0) and ($id ne $FORM{id})) { $problem = 2 }

chomp ($midrif = <CACHE>);
chomp ($musicnm = <CACHE>);
chomp ($lyfile = <CACHE>);
chomp ($midfile = <CACHE>);
chomp ($a4psfile = <CACHE>);
chomp ($a4pdffile = <CACHE>);
chomp ($letpsfile = <CACHE>);
chomp ($letpdffile = <CACHE>);
chomp ($pngfile = <CACHE>);
chomp ($pngheight = <CACHE>);
chomp ($pngwidth = <CACHE>);
chomp ($title = <CACHE>);
chomp ($composer = <CACHE>);
chomp ($opus = <CACHE>);
chomp ($lyricist = <CACHE>);
chomp ($for = <CACHE>);           # May change when this field is sorted out
chomp ($date = <CACHE>);
chomp ($style = <CACHE>);
chomp ($metre = <CACHE>);
chomp ($arranger = <CACHE>);
chomp ($source = <CACHE>);
chomp ($licence = <CACHE>);
chomp ($id = <CACHE>);
chomp ($maintainer = <CACHE>);
chomp ($maintaineremail = <CACHE>);
chomp ($maintainerweb = <CACHE>);
chomp ($moreinfo = <CACHE>);
chomp ($lilypondversion = <CACHE>);
chomp ($collections = <CACHE>);
chomp ($printurl = <CACHE>);
close(CACHE);

if ($problem == 0) {

# Some of the variables now need checking and amending

if ($source eq "") { $source = "<i>Not known</i>"; }

if ($date eq "") { $date = "<i>Not known</i>"; }

#if ($lyricist eq "") {
# $lyricist = "<i>Not known</i>";
#} elsif ($lyricist eq "n/a") {
# $lyricist = "<i>Not applicable</i>";
#}

#if ($arranger eq "") {
# $arranger = "<i>Not known</i>";
#} elsif ($arranger eq "n/a") {
# $arranger = "<i>Not applicable</i>";
#}

$ccmetadata = "";
if ($licence eq "Public Domain") {
 $licence = "<a href=\"../legal.html#publicdomain\">Public Domain</a>\n &nbsp;&nbsp;&nbsp;" .
            "<a href=\"http://creativecommons.org/licenses/publicdomain/\">" .
            "<img src=\"../cc.primary.nrr.gif\" alt=\"CC: No rights reserved\" width=\"88\" " .
            "height=\"31\" border=\"0\" style=\"vertical-align: middle;\" /></a>";
 $ccmetadata = "<link rel=\"meta\" href=\"../cc-rdfs/pd.rdf\" type=\"application/rdf+xml\" />\n";
} elsif ($licence eq "MutopiaBSD") {
 $licence = "<a href=\"../legal.html#mutopiabsd\">MutopiaBSD</a>";
} elsif ($licence eq "Creative Commons Attribution-ShareAlike") {
 $licence = "<a href=\"../legal.html#ccasa\">" .
            "Creative Commons Attribution-ShareAlike</a>\n &nbsp;&nbsp;&nbsp;" .
            "<a href=\"http://creativecommons.org/licenses/by-sa/1.0/\">" .
            "<img src=\"../cc.primary.srr.gif\" alt=\"CC: Some rights reserved\" width=\"88\" " .
            "height=\"31\" border=\"0\" style=\"vertical-align: middle;\" /></a>";
 $ccmetadata = "<link rel=\"meta\" href=\"../cc-rdfs/asa.rdf\" type=\"application/rdf+xml\" />\n";
} elsif ($licence eq "Creative Commons Attribution-ShareAlike 2.0") {
 $licence = "<a href=\"../legal.html#ccasa\">" .
            "Creative Commons Attribution-ShareAlike 2.0</a>\n &nbsp;&nbsp;&nbsp;" .
            "<a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">" .
            "<img src=\"../cc.primary.srr.gif\" alt=\"CC: Some rights reserved\" width=\"88\" " .
            "height=\"31\" border=\"0\" style=\"vertical-align: middle;\" /></a>";
 $ccmetadata = "<link rel=\"meta\" href=\"../cc-rdfs/asa2.rdf\" type=\"application/rdf+xml\" />\n";
} elsif ($licence eq "Creative Commons Attribution-ShareAlike 2.5") {
 $licence = "<a href=\"../legal.html#ccasa\">" .
            "Creative Commons Attribution-ShareAlike 2.5</a>\n &nbsp;&nbsp;&nbsp;" .
            "<a href=\"http://creativecommons.org/licenses/by-sa/2.5/\">" .            "<img src=\"../cc.primary.srr.gif\" alt=\"CC: Some rights reserved\" width=\"88\" " .
            "height=\"31\" border=\"0\" style=\"vertical-align: middle;\" /></a>";
 $ccmetadata = "<link rel=\"meta\" href=\"../cc-rdfs/asa25.rdf\" type=\"application/rdf+xml\" />\n";
} elsif ($licence eq "Creative Commons Attribution 2.5") {
 $licence = "<a href=\"../legal.html#cca\">" .
            "Creative Commons Attribution 2.5</a>\n &nbsp;&nbsp;&nbsp;" .
            "<a href=\"http://creativecommons.org/licenses/by/2.5/\">" .            "<img src=\"../cc.primary.srr.gif\" alt=\"CC: Some rights reserved\" width=\"88\" " .
            "height=\"31\" border=\"0\" style=\"vertical-align: middle;\" /></a>";
 $ccmetadata = "<link rel=\"meta\" href=\"../cc-rdfs/a25.rdf\" type=\"application/rdf+xml\" />\n";
}

if ($lilypondversion eq "") {
 $software = "<i>Not known</i>";
} else {
 $software = "<a href=\"http://www.lilypond.org\">GNU LilyPond</a>, version $lilypondversion";
}

@collectionName;
@collectionKey;

for ($noOfCollections = 0; !($collections eq ""); $noOfCollections++) {
 if (index($collections,",") == -1) {
  $collectionKey[$noOfCollections] = $collections;
  $collections = "";
 } else {
  $collectionKey[$noOfCollections] = substr($collections,0,index($collections,","));
  $collections = substr($collections,index($collections,",") + 1);
 }
 
 open(COLLECTION, "../datafiles/collections.dat");
 do { chomp ($collectionData = <COLLECTION>) }
  until (($collectionData =~ /^$collectionKey[$noOfCollections]:/) or (eof COLLECTION));
 close(COLLECTION);
 
 $startOfTitle = index($collectionData,":") + 1;
 $lengthOfTitle = index($collectionData,":",$startOfTitle) - $startOfTitle;
 $collectionName[$noOfCollections] = substr($collectionData,$startOfTitle,$lengthOfTitle);
}

$upyear = substr $id,8,4;
$upmonth = substr $id,13,2;
$upday = substr $id,16,2;

my @month = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
my $month = $month[$upmonth-1];

# Now print the (x)html...

print "Content-type:text/html\n\n";
print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
print "<!DOCTYPE html\n";
print "     PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n";
print "    \"DTD/xhtml1-transitional.dtd\">\n";
print "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n\n";

if ( ($composer eq "Anonymous") or ($composer eq "Traditional") ) {
 print "<head><title>$title ($composer)</title>\n"; } else {
 print "<head><title>$title, by $composer</title>\n";
}

print "<meta content=\"text/html; charset=utf-8\" ";
print "http-equiv=\"Content-Type\" />\n";
print $ccmetadata;
print "</head>\n";

print "<body bgcolor=\"white\">\n";

print "<center>\n";
print "<h2>$title</h2>\n";

if ( ($composer eq "Anonymous") or ($composer eq "Traditional") ) {
 print "<h4>($composer)</h4>\n\n"; } else {
 print "<h4>by $composer</h4>\n\n";
}

print "<br /><br />\n\n";

print "<img src=\"$baseref$midrif$musicnm/$pngfile\" ";
print "height=\"$pngheight\" width=\"$pngwidth\" border=\"0\" ";
print "alt=\"Music preview\" />\n";

print "<br /><br />\n\n";

# Buy sheet music!
if ($printurl ne "") { print "<p><b>New!</b> <a href=\"$printurl\">Click to buy printed sheet music of this piece</a></p>"; }

# Main table:

print "<table align=\"center\" border=\"1\" width=\"90%\" bgcolor=\"#fffee8\" ";
print "cellpadding=\"5\" cellspacing=\"0\">\n";

print "<tr><td><b>Instrument(s):</b> $for</td>\n";
print "<td><b>Style:</b> $style</td></tr>\n";

if (($lyricist eq "") and ($arranger eq ""))
{} # Do nothing
elsif (($lyricist eq "<i>n/a</i>") and ($arranger eq "<i>n/a</i>"))
{} # Do nothing
else
{
 print "<tr><td>";
 if ($lyricist ne "") { print "<b>Lyricist(s):</b> $lyricist"; } else { print "&nbsp;"; }
 print "</td>\n";

 print "<td>";
 if ($arranger ne "") { print "<b>Arranger(s):</b> $arranger"; } else { print "&nbsp;"; }
 print "</td></tr>\n";
}

# Opus, meter, neither, or both?

if ($opus eq "") {
 if ($metre eq "") {
  print "<tr><td><b>Opus:</b> <i>Not known</i></td>\n";
 } else {
  print "<tr><td><b>Meter:</b> $metre</td>\n";
 }
} else {
 if ($metre eq "") {
  print "<tr><td><b>Opus:</b> $opus</td>\n";
 } else {
  print "<tr><td><b>Opus:</b> $opus, <b>Meter:</b> $metre</td>\n";
 }
}
print "<td><b>Date of composition:</b> $date</td></tr>\n";

print "<tr><td><b>Source:</b> $source</td>\n";
print "<td><b>Copyright:</b> $licence</td></tr>\n";

print "<tr><td><b>Last updated:</b> $upyear/$month/$upday</td>\n";
print "<td><b>Music ID Number:</b> $id</td></tr>\n";

print "<tr><td><b>Typeset using:</b> $software</td>\n";

if ($noOfCollections > 0) {
 print "<td><b>Part of the following collections:</b> ";
 for ($collection = 0; $collection < $noOfCollections; $collection++) {
  print "<a href=\"make-table.cgi?collection=" . $collectionKey[$collection] . "&amp;preview=1\">";
  print $collectionName[$collection] . "</a>";
  if ($collection < $noOfCollections - 1) { print ", " }
 }
 print "</td></tr>\n";
} else {
 print "<td> </td></tr>\n";
}
print "</table>\n\n";

print "<br /><br />\n\n";


# Downloads
print "<table align=\"center\" border=\"1\" width=\"90%\" bgcolor=\"#fefefe\" ";
print "cellpadding=\"5\" cellspacing=\"0\">\n";
print "<tr><td colspan=\"3\"><b>Download:</b></td></tr>\n";
print "<tr>\n";

# Several .ly files in a zip, or just one?
if ($lyfile =~ /\.ly$/) {
 print "<td><a href=\"$baseref$midrif$musicnm/$lyfile\">";
 print "LilyPond file</a></td>\n"
} else {
 print "<td><a href=\"$baseref$midrif$musicnm/$lyfile\">";
 print "LilyPond files (zipped)</a></td>\n";
}

# Several .mid files in a zip, or just one?
if ($midfile =~ /\.mid$/) {
 print "<td><a href=\"$baseref$midrif$musicnm/$midfile\">";
 print "MIDI file</a></td>\n"
} else {
 print "<td><a href=\"$baseref$midrif$musicnm/$midfile\">";
 print "MIDI files (zipped)</a></td>\n";
}

print "</tr>\n<tr>\n";

# Several pdf files in a zip, or just one?
if ($a4pdffile =~ /\.zip$/) {
 print "<td><a href=\"$baseref$midrif$musicnm/$a4pdffile\">";
 print "A4 PDF files (zipped)</a></td>\n";
 print "<td><a href=\"$baseref$midrif$musicnm/$letpdffile\">";
 print "Letter PDF files (zipped)</a></td>\n";
} else {
  print "<td><a href=\"$baseref$midrif$musicnm/$a4pdffile\">";
  print "A4 PDF file</a></td>\n";
  print "<td><a href=\"$baseref$midrif$musicnm/$letpdffile\">";
  print "Letter PDF file</a></td>\n";
}

print "</tr>\n</table>\n\n";

print "<br /><br />\n\n";

# Extra info (if applicable)
if ($moreinfo ne "") {
 print "<table align=\"center\" border=\"1\" width=\"90%\" bgcolor=\"#e8e8ff\" ";
 print "cellpadding=\"5\" cellspacing=\"0\">\n";
 print "<tr><td>$moreinfo</td></tr></table>\n\n";

 print "<br /><br />\n\n";
}

# Collection info (if applicable)
if ($noOfCollections > 0) {
 for ($collection = 0; $collection < $noOfCollections; $collection++) {
  if (-r "../collections/" . $collectionKey[$collection] . "/collection-info.dat") {
  print "<table align=\"center\" border=\"1\" width=\"90%\" bgcolor=\"#e8ffe8\" ";
  print "cellpadding=\"5\" cellspacing=\"0\">\n<tr><td>";
  
  print "<center><b>" . $collectionName[$collection] . "</b></center>";
  
  open(COLLECTIONDATA, "../collections/" . $collectionKey[$collection] . "/collection-info.dat");
  do {
   chomp ($collectionLine = <COLLECTIONDATA>);
   print $collectionLine . "\n";
  } until (eof COLLECTIONDATA);
  close(COLLECTION);
  
  print "</td></tr></table>\n\n";
  print "<br /><br />\n\n";
  }
 }
}

# Maintainer info
print "<table align=\"center\" border=\"1\" width=\"90%\" bgcolor=\"#ffe8e8\" ";
print "cellpadding=\"5\" cellspacing=\"0\">\n";
print "<tr>\n<td><b>Maintainer:</b> $maintainer</td>\n";
if ($maintaineremail =~ "\@") {
 $maintaineremail =~ s/\@/ (at) /;
 print "<td>$maintaineremail</td>\n";
}
elsif ($maintaineremail ne "") { print "<td>$maintaineremail</td>\n"; }
if ($maintainerweb ne "") { print "<td><a href=\"$maintainerweb\">$maintainerweb</a></td>\n"; }
print "</tr>\n</table>\n\n";

# Finish
print "</center></body>\n</html>\n";

} elsif ($problem == 1) {
 print "Content-type:text/html\n\n";
 print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
 print "<!DOCTYPE html\n";
 print "     PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n";
 print "    \"DTD/xhtml1-transitional.dtd\">\n";
 print "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n\n";
 
 print "<head><title>Mutopia Error</title></head>\n";
 print "<body bgcolor=\"#ffffff\">\n\n";
 print "<p>The piece you have requested information on does not ";
 print "seem to exist. If you followed a link, please inform the person whose ";
 print "link you followed.</p>\n\n</body></html>\n";
} elsif ($problem == 2) {
 print "Content-type:text/html\n\n";
 print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
 print "<!DOCTYPE html\n";
 print "     PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n";
 print "    \"DTD/xhtml1-transitional.dtd\">\n";
 print "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n\n";
 
 print "<head><title>Mutopia Error</title></head>\n";
 print "<body bgcolor=\"#ffffff\">\n\n";
 print "<p>Internal system error: Mutopia cache needs to be rebuilt.<\p>";
 print "\n\n</body></html>\n";

} else {
 print "Content-type:text/html\n\n";
 print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
 print "<!DOCTYPE html\n";
 print "     PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n";
 print "    \"DTD/xhtml1-transitional.dtd\">\n";
 print "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n\n";
 
 print "<head><title>Mutopia Error</title></head>\n";
 print "<body bgcolor=\"#ffffff\">\n\n";
 print "<p>Unknown internal system error<\p>";
 print "\n\n</body></html>\n";
}
