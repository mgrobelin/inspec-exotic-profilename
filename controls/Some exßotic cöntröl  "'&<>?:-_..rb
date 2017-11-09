# encoding: utf-8

title 'Some exßotic cöntröl "\'#<>&?:-_.'

control 'Some exßotic cöntröl "\'#<>&?:-_.' do
    impact 1.0
    title 'Some exßotic title "\'#<>&?:-_.'
    desc 'Some exßotic title "\'#<>&?:-_.'
    describe command('true') do
      its('stdout') { should eq '' }
      its('stderr') { should eq '' }
      its('exit_status') { should eq 0 }
    end
end
