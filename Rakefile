# frozen_string_literal: true
require 'cucumber'
require 'cucumber/rake/task'

Dir.glob('rake_tasks/*.rake').each { |r| load r }

desc 'Executar os testes selecionando o browser (chrome|firefox), e.g.: single_run_acceptance[chrome,@login]'
task :single_run_acceptance, :browser, :tags do |_, args|

  begin
    result = run_rake_task('run_acceptance', args[:browser], args[:tags])

  rescue StandardError => e
    puts "#{e.class}: #{e.message}"
  end

  raise 'Os testes do cucumber falharam' unless result
end

