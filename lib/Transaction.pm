package Transaction;

our $VERSION = 1.0;

use AnyEvent;
use AnyEvent::Log;

$AnyEvent::Log::FILTER->level ("info");

my %ACTIONS = (
    select => '$statement',
    set => '$statement',
    delete_key => '$statement',
    create_key => '$statement'
);

my $LOG_FILE_DEFAULT = '/tmp/history.log';

sub new
{
    my $class = shift;
    my $self->{log_file} = shift || $LOG_FILE_DEFAULT;
    bless $self, $class;
    return $self;
}

sub run
{
    my ($self) = @_;
}

sub commit
{
    my ($self) = @_;
}

sub rollback
{
    my ($self) = @_;
}

sub select
{
    my ($self) = @_;
}

sub set
{
    my ($self) = @_;
}

sub delete_key
{
    my ($self) = @_;
}

sub create_key
{
    my ($self) = @_;
}

sub parse_args
{
    my $string = shift;
    $string =~ s/^\s+|\s+$//g;
}

sub string_to_struct
{
    my $string = shift;
    $string =~ s/^\s+|\s+$//g;
    my $obj = { map { my ( $key, $val ) = split /\s*:\s*/, $_; $key => $val } split /\s*;\s*/, $string };
    return $obj;
}

1;
