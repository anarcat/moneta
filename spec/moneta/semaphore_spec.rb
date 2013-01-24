# Generated by generate-specs
require 'helper'

describe_moneta "semaphore" do
  def log
    @log ||= File.open(File.join(make_tempdir, 'semaphore.log'), 'a')
  end

  def features
    []
  end

  def new_store
    Moneta.new(:Memory, :logger => {:out => log})
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'

  it 'should have #lock' do
    mutex = Moneta::Semaphore.new(store, 'semaphore')
    mutex.lock.should be_true
    mutex.locked?.should be_true
    expect do
     mutex.lock
    end.to raise_error(RuntimeError)
    expect do
     mutex.try_lock
    end.to raise_error(RuntimeError)
    mutex.unlock.should be_nil
    mutex.locked?.should be_false
  end

  it 'should have #enter' do
    mutex = Moneta::Semaphore.new(store, 'semaphore')
    mutex.enter.should be_true
    mutex.locked?.should be_true
    expect do
     mutex.enter
    end.to raise_error(RuntimeError)
    expect do
     mutex.try_enter
    end.to raise_error(RuntimeError)
    mutex.leave.should be_nil
    mutex.locked?.should be_false
  end

  it 'should lock with #lock' do
    a = Moneta::Semaphore.new(store, 'semaphore')
    b = Moneta::Semaphore.new(store, 'semaphore')
    a.lock.should be_true
    b.try_lock.should be_false
    a.unlock.should be_nil
  end

  it 'should have lock timeout' do
    a = Moneta::Semaphore.new(store, 'semaphore')
    b = Moneta::Semaphore.new(store, 'semaphore')
    a.lock.should be_true
    b.lock(1).should be_false
    a.unlock.should be_nil
  end

  it 'should count concurrent accesses' do
    a = Moneta::Semaphore.new(store, 'semaphore', 2)
    b = Moneta::Semaphore.new(store, 'semaphore', 2)
    c = Moneta::Semaphore.new(store, 'semaphore', 2)
    a.synchronize do
      a.locked?.should be_true
      b.synchronize do
        b.locked?.should be_true
        c.try_lock.should be_false
      end
    end
  end

  it 'should have #synchronize' do
    semaphore = Moneta::Semaphore.new(store, 'semaphore')
    semaphore.synchronize do
      semaphore.locked?.should be_true
    end
    semaphore.locked?.should be_false
  end

end
