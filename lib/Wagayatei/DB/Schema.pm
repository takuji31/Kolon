#XXX GENERATED BY generate_schema.pl
package  Wagayatei::DB::Schema;
use Chiffon::Core;

use Teng::Schema::Declare;
use Time::Piece::MySQL;

    table{
        name 'genre';
        pk 'id';
        columns qw(
            created_at
            updated_at
            name
            label
            id
        );
        inflate qr/_at$/ => sub {
            Time::Piece->from_mysql_datetime(shift);
        };
        deflate qr/_at$/ => sub {
            shift->mysql_datetime;
        };
        row_class 'Wagayatei::Model::Genre';
    };
    table{
        name 'pc';
        pk 'id';
        columns qw(
            profile
            status
            name
            rid
            created_at
            updated_at
            id
            user_id
            main_fg
            rank
        );
        inflate qr/_at$/ => sub {
            Time::Piece->from_mysql_datetime(shift);
        };
        deflate qr/_at$/ => sub {
            shift->mysql_datetime;
        };
        row_class 'Wagayatei::Model::Pc';
    };
    table{
        name 'pc_skill';
        pk 'id';
        columns qw(
            skill_id
            rid
            created_at
            updated_at
            pc_id
            id
            rank
        );
        inflate qr/_at$/ => sub {
            Time::Piece->from_mysql_datetime(shift);
        };
        deflate qr/_at$/ => sub {
            shift->mysql_datetime;
        };
        row_class 'Wagayatei::Model::PcSkill';
    };
    table{
        name 'skill';
        pk 'id';
        columns qw(
            min
            max
            name
            rid
            type_data
            genre_id
            created_at
            updated_at
            id
        );
        inflate qr/_at$/ => sub {
            Time::Piece->from_mysql_datetime(shift);
        };
        deflate qr/_at$/ => sub {
            shift->mysql_datetime;
        };
        row_class 'Wagayatei::Model::Skill';
    };
    table{
        name 'user';
        pk 'id';
        columns qw(
            status
            twitter_id
            name
            uuid
            token_secret
            created_at
            updated_at
            id
            token
            screen_name
        );
        inflate qr/_at$/ => sub {
            Time::Piece->from_mysql_datetime(shift);
        };
        deflate qr/_at$/ => sub {
            shift->mysql_datetime;
        };
        row_class 'Wagayatei::Model::User';
    };

1;
