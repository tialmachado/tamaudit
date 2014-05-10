# Tamaudit - IN PROGRESS

## Audits activerecord models like a boss


Audit activerecord models like a boss. Tested in rails 4 and ruby 2.0.0.

This project is heavily based in Espinita gem (https://github.com/continuum/espinita).



## Installation

In your gemfile

    gem "tamaudit"

In console

    $ rake tamaudit:install:migrations
    $ rake db:migrate

## Usage

    class Post < ActiveRecord::Base
      auditable
    end

    @post.create(title: "an awesome blog post" )

Tamaudit will create an audit by default on creation , edition and destroy:

    @post.audits.size #=> 1

Tamaudit provides options to include or exclude columns to trigger the creation of audit.

    class Post < ActiveRecord::Base
      auditable only: [:title] # except: [:some_column]
    end

And lets you declare the callbacks you want for audit creation:

    class Post < ActiveRecord::Base
      auditable on: [:create]  # on: [:create, :update]
    end

You can find the audits records easily:

    @post.audits.first #=>  #<Tamaudit::Audit id: 1, auditable_id: 1, auditable_type: "Post", user_id: 1, user_type: "User", audited_changes: {"title"=>[nil, "MyString"], "created_at"=>[nil, 2013-10-30 15:50:14 UTC], "updated_at"=>[nil, 2013-10-30 15:50:14 UTC], "id"=>[nil, 1]}

Tamaudit will save the model changes in a serialized column called audited_changes:

    @post.audits.first.audited_changes #=> {"title"=>[nil, "MyString"], "created_at"=>[nil, 2013-10-30 15:50:14 UTC], "updated_at"=>[nil, 2013-10-30 15:50:14 UTC], "id"=>[nil, 1]}

Tamaudit will detect the current user when records saved from rails controllers. By default Tamaudit uses current_user method but you can change it:

    Tamaudit.current_user_method = :authenticated_user
