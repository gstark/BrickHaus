RELATING TABLES:  has_many_through

db —> schema.rb

to relate players & teams together
rails generate model roster team_id:integer player_id:integer
—> just sets up integer
     or
rails generate model roster team:references player:references
—> creates table reference with foreign_key: true & belong_to relationships

player.rb
  has_many :rosters, dependent :delete_all
  has_many :teams, through :rosters

teams.rb
  has_many :rosters, dependent: :delete_all
  has_many :players, through: :rosters

*** dependent :delete_all removes the associated rosters if team? is deleted so it’s not there & ignored but still there taking up space

rake db:migrate

roster = team.rosters.build  —> creates it for you
roster.player = player —> fills in player_id


so can call team.players  &  player.teams  &  it will list them!


can search: rails guide has_many through  (most apps will have this)


in code example (in views —> players —> __form.html.erb
<div class="form-group field”>
<!-- field name collection value display —>
    <%= f.collection_check_boxes(:team_ids, Team.all, :id, :name) do |team| %>
          <%= team.label { team.check_box } %>
    <% end %>
</div>

change players_controller def player_params
to include team_ids: []  <— team_ids is an array


edit:  show.html.erb
<p>Teams:</p>
<% @player.teams.each do |team| %>
    <p><%= team.name %></p>
<% end %>

####################################################################

# Make it so only user who created it can update / change a feature:

rails generate migration AddUserIdToPlayers  —> makes .rb file in db migrate folder

def change
  add_column :players, :user_id, :integer
end

every user id

in Player.rb  —> in class Player:
belongs_to :user

when make new player —>


players_contoller
def create .. add this in def create method:
@player.user_id = current_user.id

.. actually!  because we put “belongs_to” we can put
@player.user = current_user


players_show page:
<!-- If there is a user associated to this player —>
<% if @player.user %>
  <p> Created by: <%= @player.user.name %> </p>
<% end %>

In show.html.erb  & in index.html.erb (because edit link is there also)
<% if @player.user == current_user %>      <— put before    link_to ‘Edit’   … do same for delete
<% end %>

players_contoller.rb
def edit
   if @player.user != current_user
      redirect_to players_path
   end
end

also on players update & players destroy
… could do
redirect_to players_path, notice: “Nope, not authorized”

or before_action :authenticate, only: [:edit, :update, :destroy]


change before_action :authorize!  to :authenticate!
—> in application controller also


authenticate = are you really who you say you are?
authorize = are you able to do this action?


CHANGE ABOVE CODE IN PLACES TO THIS!
player.rb —> in class Player
def authorized?(user_whos_asking)
    user ==  user_whos_asking                    (can use “user” because has belongs_to :user)
end

index page:

<% if player.authorized?(current_user) %>

in destroy
<% unless player.authorized?(current_user) %>

show.html change to if…. 

####################################################################
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
