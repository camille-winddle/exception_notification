module ExceptionNotifier
  module BacktraceCleaner

    def clean_backtrace(exception)
      if defined?(Rails) && Rails.respond_to?(:backtrace_cleaner)
        Rails.backtrace_cleaner.clean(exception.backtrace, :silent)
      else
        exception.backtrace
      end
    end

  end
end
