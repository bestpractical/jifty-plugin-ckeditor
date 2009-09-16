use strict;
use warnings;

package Jifty::Plugin::CKEditor;
use base qw/Jifty::Plugin/;

our $VERSION = '0.01';

=head1 NAME

Jifty::Plugin::CKEditor - CKEditor for Jifty textarea

=head1 SYNOPSIS

In etc/config.yml

    Plugins:
      - CKEditor: {}

If you use CompressCSSandJS, remember to skip ckeditor.js because
ckeditor doesn't work with compressed js:

    CompressedCSSandJS:
      skipped_js: 
        - 'ckeditor/ckeditor.js'

In your Model instead of 

   render_as 'teaxterea';

use

  render_as 'Jifty::Plugin::CKEditor::Textarea';


=head1 DESCRIPTION

CKEditor, simple WYSIWYG online editor usable in fragments

=head1 METHOD

=head2 init

load ckeditor.js on startup

=cut


sub init {
    my $self = shift;
    Jifty->web->javascript_libs(
        [ @{ Jifty->web->javascript_libs }, "ckeditor/ckeditor.js", ] );
}

=head1 AUTHORS

sunnavy  C<< <sunnavy@bestpractical.com> >>

=head1 LICENCE AND COPYRIGHT

Shipwright is Copyright 2007-2009 Best Practical Solutions, LLC.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

CKEditor is Copyright (c) 2003-2009, CKSource - Frederico Knabben. All rights reserved.

=cut

1;
