class WelcomeController < ApplicationController
  def index

    @headers = ['EIN', 'Title', 'Name', 'Email', 'Company Name', 'Phone Number', 'City']

    @rows = 60.times.map do
      [
          Faker::Company.ein,
          Faker::Name.title,
          Faker::Name.name,
          Faker::Internet.email,
          Faker::Name.name,
          Faker::Number.number(10),
          Faker::Address.city
      ]
    end

  end
end
