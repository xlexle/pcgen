FactoryGirl.define do
  factory :fan do
    bearing "FDB"
    min_rpm 500
    max_rpm 1300
    starting_voltage 5
    max_amps "0.32"
    mtbf_hours 50000
    has_pwm false
    high_pressure false
    quiet true
    thickness_mm 25
  end
end
