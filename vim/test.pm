#
#===============================================================================
#
#         FILE:  test.pm
#
#  DESCRIPTION:  
#
#        FILES:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:  Gautam Dey (gdey), gautam@tealium.com
#      COMPANY:  Tealium Inc.
#      VERSION:  1.0
#      CREATED:  01/21/2013 20:40:03
#     REVISION:  ---
#===============================================================================

use v5.12.0;
use warnings;
package test 1.0;
use Moose;

# remove all previously defined functions;
use namespace::clean -except => 'meta';

no Moose;
__PACKAGE__->meta->make_immutable;
1; # Need to return true.


