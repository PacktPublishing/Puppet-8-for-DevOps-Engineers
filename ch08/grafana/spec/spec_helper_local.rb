RSpec.configure do |c| 
c.after(:suite) do 
    RSpec::puppet::Coverage.report! 
    end 
end 