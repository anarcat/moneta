# Generated by generate-specs
require 'helper'

describe_moneta "adapter_mongo_with_default_expires" do
  def log
    @log ||= File.open(File.join(make_tempdir, 'adapter_mongo_with_default_expires.log'), 'a')
  end

  def features
    [:create, :expires, :increment]
  end

  def new_store
    Moneta::Adapters::Mongo.new(:expires => 1)
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'create'
  it_should_behave_like 'create_expires'
  it_should_behave_like 'default_expires'
  it_should_behave_like 'expires'
  it_should_behave_like 'features'
  it_should_behave_like 'increment'
  it_should_behave_like 'multiprocess'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'persist_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
end
