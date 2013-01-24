# Generated by generate-specs
require 'helper'

describe_moneta "pool" do
  def log
    @log ||= File.open(File.join(make_tempdir, 'pool.log'), 'a')
  end

  def features
    [:create, :increment]
  end

  def new_store
    Moneta.build do
      use :Pool do
        adapter :File, :dir => File.join(make_tempdir, "pool")
      end
    end
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'create'
  it_should_behave_like 'features'
  it_should_behave_like 'increment'
  it_should_behave_like 'multiprocess'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'persist_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
end
