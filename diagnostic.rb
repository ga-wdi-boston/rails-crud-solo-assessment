require 'csv'
# Diagnostic answers to:
# I made a huge mistake and started actually doing the actions
# rather than writing the answers.  I sucked up a huge amount
# of time doing that.  So sorry
# question 2:

# question 3:
require 'csv'

namespace :db do
  namespace :populate do
    desc 'Populate database with example data'
    task all: [:licensees]

    desc 'Populate database with licensees'
    task licensees: :environment do
      Licensee.transaction do
        CSV.foreach(Rails.root + 'data/licensees.csv',
                    headers: true) do |row|
                      licensee = row.to_hash
                      Licensee.create! licensee unless Licensee.exists? licensee
                    end
      end
    end
  end
end


# question 4:


# question 5:

# question 6:
