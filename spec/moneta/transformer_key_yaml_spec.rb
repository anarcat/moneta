# Generated by generate-specs
require 'helper'

describe_moneta "transformer_key_yaml" do
  def log
    @log ||= File.open(File.join(make_tempdir, 'transformer_key_yaml.log'), 'a')
  end

  def features
    [:create, :increment]
  end

  def new_store
    Moneta.build do
      use :Transformer, :key => :yaml
      adapter :Memory
    end
  end

  def load_value(value)
    value
  end

  include_context 'setup_store'
  it_should_behave_like 'create'
  it_should_behave_like 'features'
  it_should_behave_like 'increment'
  it_should_behave_like 'null_objectkey_objectvalue'
  it_should_behave_like 'null_objectkey_stringvalue'
  it_should_behave_like 'null_objectkey_hashvalue'
  it_should_behave_like 'null_objectkey_booleanvalue'
  it_should_behave_like 'null_objectkey_nilvalue'
  it_should_behave_like 'null_objectkey_integervalue'
  it_should_behave_like 'null_stringkey_objectvalue'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'null_stringkey_hashvalue'
  it_should_behave_like 'null_stringkey_booleanvalue'
  it_should_behave_like 'null_stringkey_nilvalue'
  it_should_behave_like 'null_stringkey_integervalue'
  it_should_behave_like 'null_hashkey_objectvalue'
  it_should_behave_like 'null_hashkey_stringvalue'
  it_should_behave_like 'null_hashkey_hashvalue'
  it_should_behave_like 'null_hashkey_booleanvalue'
  it_should_behave_like 'null_hashkey_nilvalue'
  it_should_behave_like 'null_hashkey_integervalue'
  it_should_behave_like 'null_booleankey_objectvalue'
  it_should_behave_like 'null_booleankey_stringvalue'
  it_should_behave_like 'null_booleankey_hashvalue'
  it_should_behave_like 'null_booleankey_booleanvalue'
  it_should_behave_like 'null_booleankey_nilvalue'
  it_should_behave_like 'null_booleankey_integervalue'
  it_should_behave_like 'null_nilkey_objectvalue'
  it_should_behave_like 'null_nilkey_stringvalue'
  it_should_behave_like 'null_nilkey_hashvalue'
  it_should_behave_like 'null_nilkey_booleanvalue'
  it_should_behave_like 'null_nilkey_nilvalue'
  it_should_behave_like 'null_nilkey_integervalue'
  it_should_behave_like 'null_integerkey_objectvalue'
  it_should_behave_like 'null_integerkey_stringvalue'
  it_should_behave_like 'null_integerkey_hashvalue'
  it_should_behave_like 'null_integerkey_booleanvalue'
  it_should_behave_like 'null_integerkey_nilvalue'
  it_should_behave_like 'null_integerkey_integervalue'
  it_should_behave_like 'returnsame_objectkey_objectvalue'
  it_should_behave_like 'returnsame_objectkey_stringvalue'
  it_should_behave_like 'returnsame_objectkey_hashvalue'
  it_should_behave_like 'returnsame_stringkey_objectvalue'
  it_should_behave_like 'returnsame_stringkey_stringvalue'
  it_should_behave_like 'returnsame_stringkey_hashvalue'
  it_should_behave_like 'returnsame_hashkey_objectvalue'
  it_should_behave_like 'returnsame_hashkey_stringvalue'
  it_should_behave_like 'returnsame_hashkey_hashvalue'
  it_should_behave_like 'returnsame_booleankey_objectvalue'
  it_should_behave_like 'returnsame_booleankey_stringvalue'
  it_should_behave_like 'returnsame_booleankey_hashvalue'
  it_should_behave_like 'returnsame_nilkey_objectvalue'
  it_should_behave_like 'returnsame_nilkey_stringvalue'
  it_should_behave_like 'returnsame_nilkey_hashvalue'
  it_should_behave_like 'returnsame_integerkey_objectvalue'
  it_should_behave_like 'returnsame_integerkey_stringvalue'
  it_should_behave_like 'returnsame_integerkey_hashvalue'
  it_should_behave_like 'store_objectkey_objectvalue'
  it_should_behave_like 'store_objectkey_stringvalue'
  it_should_behave_like 'store_objectkey_hashvalue'
  it_should_behave_like 'store_objectkey_booleanvalue'
  it_should_behave_like 'store_objectkey_nilvalue'
  it_should_behave_like 'store_objectkey_integervalue'
  it_should_behave_like 'store_stringkey_objectvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_hashvalue'
  it_should_behave_like 'store_stringkey_booleanvalue'
  it_should_behave_like 'store_stringkey_nilvalue'
  it_should_behave_like 'store_stringkey_integervalue'
  it_should_behave_like 'store_hashkey_objectvalue'
  it_should_behave_like 'store_hashkey_stringvalue'
  it_should_behave_like 'store_hashkey_hashvalue'
  it_should_behave_like 'store_hashkey_booleanvalue'
  it_should_behave_like 'store_hashkey_nilvalue'
  it_should_behave_like 'store_hashkey_integervalue'
  it_should_behave_like 'store_booleankey_objectvalue'
  it_should_behave_like 'store_booleankey_stringvalue'
  it_should_behave_like 'store_booleankey_hashvalue'
  it_should_behave_like 'store_booleankey_booleanvalue'
  it_should_behave_like 'store_booleankey_nilvalue'
  it_should_behave_like 'store_booleankey_integervalue'
  it_should_behave_like 'store_nilkey_objectvalue'
  it_should_behave_like 'store_nilkey_stringvalue'
  it_should_behave_like 'store_nilkey_hashvalue'
  it_should_behave_like 'store_nilkey_booleanvalue'
  it_should_behave_like 'store_nilkey_nilvalue'
  it_should_behave_like 'store_nilkey_integervalue'
  it_should_behave_like 'store_integerkey_objectvalue'
  it_should_behave_like 'store_integerkey_stringvalue'
  it_should_behave_like 'store_integerkey_hashvalue'
  it_should_behave_like 'store_integerkey_booleanvalue'
  it_should_behave_like 'store_integerkey_nilvalue'
  it_should_behave_like 'store_integerkey_integervalue'
  it_should_behave_like 'transform_value'
  it 'compile transformer class' do
    store.should_not be_nil
    Moneta::Transformer::YamlKey.should_not be_nil
  end
end
