#! /usr/bin/perl
# Copyleft 2010 Marti Cuquet
# http://sindominio.net/~nilvar/code/

use strict;
use Getopt::Long;

my $scriptname = "unqphys";
my $scriptdescription = "Remove dependencies from package qphys";
my $scriptversion = "1.0";
my $scriptdate = "2009-10-02";
my $scriptusage = "$scriptname file [-p path_to_package] [-f package_name]";

my $info = 0;
my $help = 0;
my $verbose = 0;
my $version = 0;

my $name = "qphys.sty";
my $number = 0;
my $path = "/usr/local/texlive/texmf-local/tex/latex/local/cuquet/";

GetOptions (
    "help|h" => \$help,
    "info" => \$info,
    "verbose|v" => \$verbose,
    "version" => \$version,
# Specific
    "package|f" => \$name,
    "path|p=s" => \$path
);

if ($info) {
    print "$scriptname - $scriptdescription\n";
    exit 0;
} elsif ($help) {
    print<<"HELP";
Usage: $scriptusage

Searches 'file' for commands appearing in 'package_name', comment line
containing '\\usepackage{package_name}' and adds definitions from
'package_name' to 'file'.

Defaults:
path to package: $path
package name:    $name
HELP
    exit 0;
} elsif ($version) {
    print "$scriptname $scriptversion\n";
    print "Last modified: $scriptdate\n";
    exit 0;
}

my $target = shift or die "Usage: $scriptusage\n";
my $tmpfile = ( ($target =~ /^\./) ? "" : "." ) . $target . ".swp";
$name =~ /^(.+)\.sty$/;
my $shortname = $1;

open (IF, "$target");
open (OF, ">$tmpfile");
while (<IF>) {
    if (s/^(.*usepackage.*$shortname.*)$/%$1/) {
        print OF;
        my @args = ("qphys2file", "$target");
        my @commands = `@args`;
        unless ($? == 0) {
            `rm $tmpfile`;
            die "$scriptname: @args failed: $?\n";
        }
        print OF @commands;
    } else {
        print OF;
    }
}
close IF;
close OF;

`mv "$tmpfile" "$target"`;

exit 0;
