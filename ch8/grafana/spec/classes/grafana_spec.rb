# frozen_string_literal: true

require 'spec_helper'

describe 'grafana' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      # $sensitive = Puppet::Pops::Types::PSensitiveType::Sensitive.new('password')
      let(:facts) { os_facts }
      #      let(:params) { { 'port' => 8081, 'service_enabled' => true, 'grafana_password' => sensitive('value'), 'file_options' => { 'name' => '/etc/woof' }, } }

      it { is_expected.to compile }
      it { dump_catalog }
    end
  end
end
