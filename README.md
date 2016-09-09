# discog-get

Download mp3 tracks from youtube using discog release as source.

## dependencies

Mac:

	brew install youtube-dl ffmpeg

 Ubuntu:

 	sudo apt-get install ffmpeg

	sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
	sudo chmod a+rx /usr/local/bin/youtube-dl

## installation


    gem install discog-get

## usage

	disget release-id

Example:

https://www.discogs.com/Shadow-Child-Shadow-Child-EP/release/3579913

	disget 3579913

## development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/arubinofaux/discog-get. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## license

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
