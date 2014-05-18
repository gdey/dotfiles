# This is the setup for the perl files.

echo "Setting up Perl"

if [ -d ~/perl5/bin ]; then
   PATH=$PATH:~/perl5/bin 
   if [ -z "$PERL5LIB" ] 
   then
      PERL5LIB=$PERL5LIB:~/perl5/lib/perl5
   else
      PERL5LIB=~/perl5/lib/perl5
   fi
   export PATH
   export PERL5LIB
#   alias cpanm='~/perl5/bin/cpanm --local-lib=~/perl5 '
fi
