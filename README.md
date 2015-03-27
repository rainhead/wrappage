# Wrappage

Page objects for RSpec

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wrappage'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wrappage

## Usage

```ruby
class DiscussionsWrap < Wrappage::Base
  def start_discussion(title:, body:)
    fill_in "Title", with: title
    fill_in "Body", with: body
    click_on "Start Discussion"
  end

  matcher :have_discussion_titled do |title|
    expect(page).to have_css(".discussion-title", text: title)
  end
end

feature "Discussions" do
  scenario "Start a new discussion" do
    login_as user
    visit discussions_path
    title = "Favorite color"

    wrappage(:discussions) do
      start_discussion(
        title: title,
        body: "What is your favorite color?"
      )

      expect(page).to have_discussion_titled title
    end
  end
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/wrappage/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
