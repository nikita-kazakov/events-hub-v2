



namespace :export do
  desc "Exports data for using in a seeds.rb."
  task :seeds_format => :environment do
    Registration.order(:id).all.each do |registration|
      puts "Registration.create(#{event.serializable_hash.
          delete_if {|key, value| ['created_at','updated_at'].
              include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end