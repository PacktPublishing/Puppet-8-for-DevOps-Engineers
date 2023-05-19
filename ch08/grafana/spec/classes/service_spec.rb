# frozen_string_literal: true

require 'spec_helper'

describe 'grafana::service' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let :pre_condition do
        'include grafana,grafana::install,grafana::config'
      end

      it { is_expected.to compile }
      it { dump_catalog }
    end
  end
end
