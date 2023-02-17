#stdout - default exit
#stdin - default entrance
#stderr - default error

describe 'Output' do
  it { expect {puts "Ruby"}.to output.to_stdout }
  it { expect {print "Ruby"}.to output("Ruby").to_stdout }
  it { expect {print "Ruby"}.to output(/Ruby/).to_stdout } # Also works with regex!


  it { expect {warn "Ruby"}.to output.to_stderr }
  it { expect {warn "Ruby"}.to output("Ruby\n").to_stderr }
  it { expect {warn "Ruby"}.to output(/Ruby/).to_stderr } # Also works with regex!
end