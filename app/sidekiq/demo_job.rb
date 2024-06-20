class DemoJob
  include Sidekiq::Job

  def perform(*args)
    Demo.new.run!
  end
end
