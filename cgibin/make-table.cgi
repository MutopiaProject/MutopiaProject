#!/usr/bin/perl -T
#
# make-table.cgi
# Version 0.0.18
# Last updated 28/Jul/2005
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

open(FTPB,"../ftpbase.dat");
chomp ($ftpbase = <FTPB>);
close(FTPB);

open(CACHE,"../datafiles/musiccache.dat");
$baseref = "../ftp/";

$noMatches = 1;

# Dump out the guff for the beginning of the html output

print "Content-type:text/html\n\n";
print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
print "<!DOCTYPE html\n";
print "     PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n";
print "    \"DTD/xhtml1-transitional.dtd\">\n";
print "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n\n";

print "<head><title>Music Listing - with";
if ($FORM{preview} == 0) { print "out"; }
print " preview images</title>\n";
print "<meta content=\"text/html; charset=utf-8\" ";
print "http-equiv=\"Content-Type\" />\n</head>\n\n";
print "<body bgcolor=\"#ffffff\">\n\n";
print "<center><h2>Music Listing - with";
if ($FORM{preview} == 0) { print "out"; }
print " preview images</h2></center>\n\n";
print "<table align=\"center\" border=\"0\" width=\"100%\" ";
print "cellpadding=\"0\" cellspacing=\"25\">\n";

# Set $earliesttime to the earliest (unix) time that a piece of music
# can have been changed

if ($FORM{recent} == 1) {
 if ($FORM{timelength} eq "") {
  $earliesttime = time;
 } elsif ($FORM{timeunit} eq "week") {
  $earliesttime = time - ( ($FORM{timelength}) * 604800 );
 } elsif ($FORM{timeunit} eq "day") {
  $earliesttime = time - ( ($FORM{timelength}) * 86400 );
 }
} else {
 $earliesttime = 0;
}

# Skip the cache header

chomp ($headerlength = <CACHE>);
seek CACHE, $headerlength, 0;

# Now go through the list of music, get the details of each one which
# matches the criteria selected from the initial table (eg. composer)
# and produce the contents of the table...

until (eof CACHE) {
 chomp ($checkline = <CACHE>);
 if ($checkline ne "**********") { print "ERROR in the datafile - rebuild cache"; }
 chomp ($idno = <CACHE>);
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
 chomp ($instrument = <CACHE>);
 chomp ($date = <CACHE>);
 chomp ($style = <CACHE>);
 chomp ($metre = <CACHE>);
 chomp ($arranger = <CACHE>);
 chomp ($source = <CACHE>);
 chomp ($copyright = <CACHE>);
 chomp ($id = <CACHE>);
 chomp ($maintainer = <CACHE>);
 chomp ($maintaineremail = <CACHE>);
 chomp ($maintainerweb = <CACHE>);
 chomp ($extrainfo = <CACHE>);
 chomp ($lilypondversion = <CACHE>);
 chomp ($collections = <CACHE>);
 
 # Does the composer match?
 if ( ($FORM{Composer} eq "") or ($midrif =~ /^$FORM{Composer}\//) ) {

  # Parse id field to get $update as the unix time that the music was last changed
  $upyear = substr $id,8,4;
  $upmonth = substr $id,13,2;
  $upday = substr $id,16,2;
  $update = mktime(59,59,23,$upday,$upmonth-1,$upyear-1900);
  
  # Check if we're searching. If so, check the piece matches
  $FORM{searchingfor} =~ tr/a-z/A-Z/;
  if ($FORM{searchingfor} eq "") { $go = 1 }
  elsif ((uc($title . $composer . $opus . $lyricist . $instrument . $date . $style . $metre . $arranger . $source . $copyright . $id . $maintainer . $maintaineremail . $maintainerweb . $extrainfo . $lilypondversion . $collections)) =~ /$FORM{searchingfor}/) { $go = 1 }
  else { $go = 0 }
  
  # Check lilypond version in file is ok, and parse if it is
  $okToCheckVersion = 1;
  if ($lilypondversion =~ /^([0-9])\.([0-9])\.([0-9]+)/) {
   $maj = $1;
   $min = $2;
   $tin = $3;
  } else {
   $okToCheckVersion = 0;
  }
  
  # Check the LilyPond version is correct
  if (($okToCheckVersion == 1) and ($FORM{lilyv} == 1) and ($go == 1)) {
   # Parse $FORM{lilyversion}
   if ($FORM{lilyversion} =~ /^([0-9])\.([0-9])\.([0-9]+)$/) {
    if (($maj != $1) or ($min != $2) or ($tin != $3)) { $go = 0; }
   } elsif ($FORM{lilyversion} =~ /^([0-9])\.([0-9])$/) {
    if (($maj != $1) or ($min != $2)) { $go = 0; }
   } elsif ($FORM{lilyversion} =~ /^([0-9])$/) {
    if ($maj != $1) { $go = 0; }
   } # else garbage in this field
  }

  # Munge for harp / harpsichord problem
  if (($go == 1) and ($FORM{Instrument} eq "Harp")
  and ($instrument =~ /Harpsichord/))
  { $go = 0; }
  
  # Do the instrument, style, ID, recency and collections match?
  if ( ($go == 1)
  and ( ($FORM{Instrument} eq "") or ($instrument =~ /$FORM{Instrument}/) )
  and ( ($FORM{Style} eq "") or ($style eq $FORM{Style}) )
  and ( ($FORM{id} eq "") or ($id =~ /-$FORM{id}$/) )
  and ( ($FORM{collection} eq "") or ($collections =~ /(^|,)$FORM{collection}(,|$)/) )
  and ($update > $earliesttime) ) {
   $noMatches = 0;
   
   print "<tr><td>\n<table align=\"center\" border=\"1\" width=\"100%\" ";
   print "bgcolor=\"#fffee8\" cellpadding=\"3\" cellspacing=\"0\">\n<tr>\n";
   if ($FORM{preview} == 1) {
    print "<td colspan=\"4\" align=\"center\" bgcolor=\"#ffffff\">";
    print "<img src=\"$baseref$midrif$musicnm/$pngfile\" ";
    print "height=\"$pngheight\" width=\"$pngwidth\" alt=\"Preview image\" />";
    print "</td></tr>\n<tr>\n";
   }
   print "<td>$title</td>\n";
   if ( ($composer eq "Anonymous") or ($composer eq "Traditional") ) { print "<td>$composer</td>\n"; }
   else { print "<td>by $composer</td>\n"; }
   if ($opus ne "") { print "<td>$opus</td>\n"; }
   else { print "<td>&nbsp;</td>\n"; }
   if ($lyricist eq "n/a") { print "<td><i>n/a</i></td>\n"; }
   elsif ($lyricist ne "") { print "<td>$lyricist</td>\n"; }
   else { print "<td>&nbsp;</td>\n"; }
   print "</tr><tr>\n";
   print "<td>for $instrument</td>\n";
   if ($date ne "") { print "<td>$date</td>\n"; }
   else { print "<td>&nbsp;</td>\n"; }
   print "<td>$style</td>\n";
   if ($arranger eq "n/a") { print "<td><i>n/a</i></td>\n"; }
   else { print "<td>$arranger</td>\n"; }
   print "</tr><tr>\n";
   if ($source ne "") { print "<td>$source</td>\n"; }
   else { print "<td>&nbsp;</td>\n"; }
   if ($copyright eq "Public Domain") { print "<td><a href=\"../legal.html#publicdomain\">Public Domain</a></td>\n"; }
   elsif ($copyright eq "MutopiaBSD") { print "<td><a href=\"../legal.html#mutopiabsd\">MutopiaBSD</a></td>\n"; }
   elsif ($copyright eq "Creative Commons Attribution-ShareAlike") {
    print "<td><a href=\"../legal.html#ccasa\">";
    print "Creative Commons Attribution-ShareAlike</a></td>\n";
   }
   elsif ($copyright eq "Creative Commons Attribution-ShareAlike 2.0") {
    print "<td><a href=\"../legal.html#ccasa\">";
    print "Creative Commons Attribution-ShareAlike 2.0</a></td>\n";
   }
   elsif ($copyright eq "Creative Commons Attribution-ShareAlike 2.5") {
    print "<td><a href=\"../legal.html#ccasa\">";
    print "Creative Commons Attribution-ShareAlike 2.5</a></td>\n";
   }
   elsif ($copyright eq "Creative Commons Attribution 2.5") {
    print "<td><a href=\"../legal.html#cca\">";
    print "Creative Commons Attribution 2.5</a></td>\n";
   }
   else { print "<td>&nbsp;</td>\n"; }
   print "<td><a href=\"piece-info.cgi?";
   print "id=$idno\">More Information</a></td>\n";
   print "<td>$upyear/$upmonth/$upday</td>\n";
   print "</tr><tr>\n";

   # Several .ly files in a zip, or just one?
   if ($lyfile =~ /\.zip$/) {
    print "<td bgcolor=\"#cdeef4\">Download: <a href=\"";
    print "$baseref$midrif$musicnm/$lyfile\">.ly files (zipped)</a></td>\n"
   } else {
    print "<td>Download: <a href=\"";
    print "$baseref$midrif$musicnm/$lyfile\">.ly file</a></td>\n";
   }

   # Several .mid files in a zip, or just one?
   if ($midfile =~ /\.zip$/) {
    print "<td bgcolor=\"#cdeef4\"><a href=\"";
    print "$baseref$midrif$musicnm/$midfile\">.mid files (zipped)</a></td>\n";
   } else {
    print "<td><a href=\"";
    print "$baseref$midrif$musicnm/$midfile\">.mid file</a></td>\n";
   }

   print "<td><a href=\"";
   print "$baseref$midrif$musicnm/$pngfile\">Preview image</a></td>\n";
   print "<td><a href=\"ftp://ibiblio.org/pub/multimedia/mutopia/$midrif$musicnm/\">Appropriate FTP area</a></td>\n</tr><tr>\n";

   # Several ps/pdf files in a zip, or just one?
   if ($a4psfile =~ /\.zip$/) {
    print "<td bgcolor=\"#cdeef4\"><a href=\"";
    print "$baseref$midrif$musicnm/$a4psfile\">A4 .ps files (zipped)</a></td>\n";
    print "<td bgcolor=\"#cdeef4\"><a href=\"";
    print "$baseref$midrif$musicnm/$a4pdffile\">A4 .pdf files (zipped)</a></td>\n";
    print "<td bgcolor=\"#cdeef4\"><a href=\"";
    print "$baseref$midrif$musicnm/$letpsfile\">Letter .ps files (zipped)</a></td>\n";
    print "<td bgcolor=\"#cdeef4\"><a href=\"";
    print "$baseref$midrif$musicnm/$letpdffile\">Letter .pdf files (zipped)</a></td>\n";
   }
   else {
    # Are the pdf files still gzipped? (this will be removed soon)
    if ($a4pdffile =~ /\.gz$/) {
     print "<td bgcolor=\"#f7dcdc\"><a href=\"";
     print "$baseref$midrif$musicnm/$a4psfile\">A4 .ps file (gzipped)</a></td>\n";
     print "<td bgcolor=\"#f7dcdc\"><a href=\"";
     print "$baseref$midrif$musicnm/$a4pdffile\">A4 .pdf file (gzipped)</a></td>\n";
     print "<td bgcolor=\"#f7dcdc\"><a href=\"";
     print "$baseref$midrif$musicnm/$letpsfile\">Letter .ps file (gzipped)</a></td>\n";
     print "<td bgcolor=\"#f7dcdc\"><a href=\"";
     print "$baseref$midrif$musicnm/$letpdffile\">Letter .pdf file (gzipped)</a></td>\n";
    }
    else {
     print "<td><a href=\"";
     print "$baseref$midrif$musicnm/$a4psfile\">A4 .ps file (gzipped)</a></td>\n";
     print "<td><a href=\"";
     print "$baseref$midrif$musicnm/$a4pdffile\">A4 .pdf file</a></td>\n";
     print "<td><a href=\"";
     print "$baseref$midrif$musicnm/$letpsfile\">Letter .ps file (gzipped)</a></td>\n";
     print "<td><a href=\"";
     print "$baseref$midrif$musicnm/$letpdffile\">Letter .pdf file</a></td>\n";
    }
   }
   print "</tr>\n</table>\n</tr></td>\n";
  }
 }
}
close(CACHE);

print "</table>\n\n";

if ($noMatches == 1) {
 print "<p>Sorry, no matches were found for your search criteria.</p>\n\n";
}

print "<hr /><br />\n";
print "<center><p><a href=\"../advsearch.html\">Return to the advanced search page</a><br /><br />\n";
print "<a href=\"../index.html\">Return to the Mutopia home page</a></p></center>\n";
print "</body>\n</html>\n";
