## [Groves Secret Santa!](http://groves-santa.herokuapp.com)
This is a Rails app serving groves-santa.herokuapp.com, which is a very popular site for about an hour a year. The app knows about all the Groves pairings from 2015 onward, and will pair individuals who a) aren't in the same immediate family and b) haven't given to each other lately. (TODO: currently it won't match people who have ever given to each other; eventually, should change that to be something like not in the last 4 years). The main method of the app is `Individual::generate_pairs`.

Steps to take each fall before generating that year's pairs:

1) clone down this repo: `git clone https://github.com/gcampo88/santa.git`

2) open db/seeds.rb and add new PreviousPairs to reflect the previous year's giving

3) commit changes and push them up to master `git push origin master`

4) add the heroku as a remote `heroku git:remote -a groves-santa`

5) push your changes up to heroku `git push heroku master`

6) add the seeds to heroku `heroku run rake db:seed`

7) send whoever is Santa now the app website -- groves-santa.herokuapp.com -- to generate the pairs and let people know!
