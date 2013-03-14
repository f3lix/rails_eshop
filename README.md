<h2>About</h2>
<ul>
<li>A simple eshop project created with Ruby on Rails.</li>
<li>Created by Felix Li < leegyao@gmail.com > </li>
</ul>
<h2>Build Status</h2>
[![Build Status](https://travis-ci.org/f3lix/rails_eshop.png)](https://travis-ci.org/f3lix/rails_eshop)
<h2>How to deploy</h2>
<ul>
<li><b>$ git clone https://github.com/f3lix/rails_eshop</b></li>
<li><b>$ cd rails_eshop</b></li>
<li>Modify <b>config/database.yml</b>, get your database online</li>
<li>Run <b>$ bundle install</b> to resolve dependencies</li>
<li>Run <b>$ bundle exec rake db:create</b> to create database defined in <b>config/database.yml</b></li>
<li>Run <b>$ bundle exec rake db:migrate</b> to run the migrations</li>
<li>Run <b>$ bundle exec rake db:seed</b> to feed your database with some test data</li>
<li>Run <b>$ bundle exec rake db:test:prepare</b> to make your database ready</li>
</ul>
<h2>How to run</h2>
<ul>
<li>Run <b>$ rails s</b> to start WEBrick on port 3000 by default</li>
</ul>
<h2>How to test</h2>
<ul>
<li>Run <b>$ bundle exec rake test</b> on your machine</li>
<li>Run <b>$ bundle exec rake spec</b> to run the repec test scropts</li>
<li>Or you can check build log per each commit through <b><a href="https://travis-ci.org/f3lix/rails_eshop/builds" target="_block">https://travis-ci.org/f3lix/rails_eshop/builds</a></b></li>
</ul>
<h2>Dev Env</h2>
<ul>
<li>Ruby 1.9.3</li>
<li>Rails 3.2.12</li>
<li>MySQL Community Server 5.5.24</li>
</ul>