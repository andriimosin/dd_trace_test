# Sample rate is between 0 (nothing sampled) to 1 (everything sampled).
sampler = Datadog::RateSampler.new(1)

Datadog.configure do |c|
  # This will activate auto-instrumentation for Rails
  c.use :rails, analytics_enabled: true, controller_service: true
  c.tracer.sampler = sampler
end